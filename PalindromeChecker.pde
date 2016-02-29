public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String reverse = "";
  for (int i=word.length()-1; i>=0 ;i--)
  {
    reverse = reverse+word.substring(i,i+1).replaceAll("[^a-zA-Z ]","").replaceAll(" ","").toLowerCase();
  }
  if (reverse.equals(word.replaceAll("[^a-zA-Z ]","").replaceAll(" ","").toLowerCase())) 
    return true;
  return false;
}

