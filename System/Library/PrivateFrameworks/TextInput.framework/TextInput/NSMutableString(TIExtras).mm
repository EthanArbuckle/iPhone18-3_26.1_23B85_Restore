@interface NSMutableString(TIExtras)
- (void)_removeCharactersFromSet:()TIExtras;
- (void)_removeOccurrencesOfCharacter:()TIExtras;
- (void)_replaceOccurrencesOfCharacter:()TIExtras withCharacter:;
@end

@implementation NSMutableString(TIExtras)

- (void)_removeOccurrencesOfCharacter:()TIExtras
{
  v2 = [MEMORY[0x1E696AEC0] _stringWithUnichar:?];
  [self replaceOccurrencesOfString:v2 withString:&stru_1EF56D550 options:2 range:{0, objc_msgSend(self, "length")}];
}

- (void)_replaceOccurrencesOfCharacter:()TIExtras withCharacter:
{
  v7 = [MEMORY[0x1E696AEC0] _stringWithUnichar:?];
  v6 = [MEMORY[0x1E696AEC0] _stringWithUnichar:a4];
  [self replaceOccurrencesOfString:v7 withString:v6 options:2 range:{0, objc_msgSend(self, "length")}];
}

- (void)_removeCharactersFromSet:()TIExtras
{
  if (a3)
  {
    v4 = result;
    result = [result rangeOfCharacterFromSet:a3 options:2 range:{0, objc_msgSend(result, "length")}];
    if (result != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = result;
      do
      {
        [v4 deleteCharactersInRange:{v6, v5}];
        result = [v4 rangeOfCharacterFromSet:a3 options:2 range:{v6, objc_msgSend(v4, "length") - v6}];
        v6 = result;
      }

      while (result != 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  return result;
}

@end