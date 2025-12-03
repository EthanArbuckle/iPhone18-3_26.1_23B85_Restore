@interface NSMutableString(VisionCore)
- (void)VisionCore_appendPaddingCharacter:()VisionCore toMinimumLength:;
- (void)VisionCore_prependPaddingCharacter:()VisionCore toMinimumLength:;
@end

@implementation NSMutableString(VisionCore)

- (void)VisionCore_prependPaddingCharacter:()VisionCore toMinimumLength:
{
  v7 = [self length];
  if (a4 > v7)
  {
    v8 = _repeatedCharacterString(a3, a4 - v7);
    [self insertString:v8 atIndex:0];
  }
}

- (void)VisionCore_appendPaddingCharacter:()VisionCore toMinimumLength:
{
  v7 = [self length];
  if (a4 > v7)
  {
    v8 = _repeatedCharacterString(a3, a4 - v7);
    [self appendString:v8];
  }
}

@end