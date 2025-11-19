@interface NSValue(TYArabicCharacter)
+ (id)valueWithTYArabicCharacter:()TYArabicCharacter;
- (uint64_t)arabicCharacterValue;
@end

@implementation NSValue(TYArabicCharacter)

+ (id)valueWithTYArabicCharacter:()TYArabicCharacter
{
  v5 = a3;
  v3 = [a1 valueWithBytes:&v5 objCType:"{?=SSSS}"];

  return v3;
}

- (uint64_t)arabicCharacterValue
{
  v2 = 0;
  [a1 getValue:&v2];
  return v2;
}

@end