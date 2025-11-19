@interface NSMutableString(SiriUIUtilities)
- (uint64_t)siriUIAppendStringWithCommaSeparation:()SiriUIUtilities;
@end

@implementation NSMutableString(SiriUIUtilities)

- (uint64_t)siriUIAppendStringWithCommaSeparation:()SiriUIUtilities
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v4 = [v4 length];
    v5 = v7;
    if (v4)
    {
      if ([a1 length])
      {
        [a1 appendString:{@", "}];
      }

      v4 = [a1 appendString:v7];
      v5 = v7;
    }
  }

  return MEMORY[0x2821F96F8](v4, v5);
}

@end