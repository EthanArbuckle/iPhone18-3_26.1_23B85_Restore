@interface NSString(TICandidateSorter)
- (__CFString)stringByConvertingKatakanaToHiragana;
@end

@implementation NSString(TICandidateSorter)

- (__CFString)stringByConvertingKatakanaToHiragana
{
  v1 = [self mutableCopy];
  CFStringTransform(v1, 0, *MEMORY[0x29EDB8FE0], 1u);

  return v1;
}

@end