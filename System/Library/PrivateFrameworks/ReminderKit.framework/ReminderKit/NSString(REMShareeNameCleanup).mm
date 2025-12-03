@interface NSString(REMShareeNameCleanup)
- (void)rem_tidyFormattedNameString;
@end

@implementation NSString(REMShareeNameCleanup)

- (void)rem_tidyFormattedNameString
{
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end