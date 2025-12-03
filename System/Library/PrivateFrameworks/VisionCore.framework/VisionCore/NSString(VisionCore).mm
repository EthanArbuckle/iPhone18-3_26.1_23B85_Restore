@interface NSString(VisionCore)
- (id)VisionCore_stringAppendedWithPaddingCharacter:()VisionCore toMinimumLength:;
- (id)VisionCore_stringPrependedWithPaddingCharacter:()VisionCore toMinimumLength:;
@end

@implementation NSString(VisionCore)

- (id)VisionCore_stringPrependedWithPaddingCharacter:()VisionCore toMinimumLength:
{
  v7 = [self length];
  if (a4 <= v7)
  {
    selfCopy = self;
  }

  else
  {
    v8 = _repeatedCharacterString(a3, a4 - v7);
    selfCopy = [v8 stringByAppendingString:self];
  }

  return selfCopy;
}

- (id)VisionCore_stringAppendedWithPaddingCharacter:()VisionCore toMinimumLength:
{
  v7 = [self length];
  if (a4 <= v7)
  {
    selfCopy = self;
  }

  else
  {
    v8 = _repeatedCharacterString(a3, a4 - v7);
    selfCopy = [self stringByAppendingString:v8];
  }

  return selfCopy;
}

@end