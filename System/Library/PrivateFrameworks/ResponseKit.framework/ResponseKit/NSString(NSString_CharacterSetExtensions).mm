@interface NSString(NSString_CharacterSetExtensions)
- (BOOL)consistsOfCharactersFromSet:()NSString_CharacterSetExtensions options:;
@end

@implementation NSString(NSString_CharacterSetExtensions)

- (BOOL)consistsOfCharactersFromSet:()NSString_CharacterSetExtensions options:
{
  invertedSet = [a3 invertedSet];
  v7 = [self rangeOfCharacterFromSet:invertedSet options:a4] == 0x7FFFFFFFFFFFFFFFLL;

  return v7;
}

@end