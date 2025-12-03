@interface NSIndexSet(Additions)
- (__CFString)mf_commaSeparatedString;
@end

@implementation NSIndexSet(Additions)

- (__CFString)mf_commaSeparatedString
{
  if ([self count])
  {
    firstIndex = [self firstIndex];
    v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"%lu", firstIndex];
    v4 = [self indexGreaterThanIndex:firstIndex];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v4; i != 0x7FFFFFFFFFFFFFFFLL; i = [self indexGreaterThanIndex:i])
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