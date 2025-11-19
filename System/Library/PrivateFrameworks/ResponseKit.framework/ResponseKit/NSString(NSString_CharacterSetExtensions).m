@interface NSString(NSString_CharacterSetExtensions)
- (BOOL)consistsOfCharactersFromSet:()NSString_CharacterSetExtensions options:;
@end

@implementation NSString(NSString_CharacterSetExtensions)

- (BOOL)consistsOfCharactersFromSet:()NSString_CharacterSetExtensions options:
{
  v6 = [a3 invertedSet];
  v7 = [a1 rangeOfCharacterFromSet:v6 options:a4] == 0x7FFFFFFFFFFFFFFFLL;

  return v7;
}

@end