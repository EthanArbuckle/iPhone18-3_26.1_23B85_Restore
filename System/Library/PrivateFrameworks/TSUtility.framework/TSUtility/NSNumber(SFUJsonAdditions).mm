@interface NSNumber(SFUJsonAdditions)
- (uint64_t)appendJsonStringToString:()SFUJsonAdditions;
@end

@implementation NSNumber(SFUJsonAdditions)

- (uint64_t)appendJsonStringToString:()SFUJsonAdditions
{
  if (*[self objCType] == 99)
  {
    if ([self BOOLValue])
    {
      stringValue = @"true";
    }

    else
    {
      stringValue = @"false";
    }
  }

  else
  {
    stringValue = [self stringValue];
  }

  return [a3 appendString:stringValue];
}

@end