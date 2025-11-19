@interface NSIndexSet(Additions)
- (__CFString)mf_commaSeparatedString;
@end

@implementation NSIndexSet(Additions)

- (__CFString)mf_commaSeparatedString
{
  if ([a1 count])
  {
    v2 = [a1 firstIndex];
    v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"%lu", v2];
    v4 = [a1 indexGreaterThanIndex:v2];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v4; i != 0x7FFFFFFFFFFFFFFFLL; i = [a1 indexGreaterThanIndex:i])
      {
        [(__CFString *)v3 appendFormat:@", %lu", i];
      }
    }
  }

  else
  {
    v3 = &stru_288159858;
  }

  return v3;
}

@end