@interface TICharacterSetDescription(JapaneseAdditions)
+ (id)kanaWordCharacters;
+ (id)romajiWordCharacters;
@end

@implementation TICharacterSetDescription(JapaneseAdditions)

+ (id)kanaWordCharacters
{
  v0 = kanaWordCharacters_wordCharacterSet;
  if (!kanaWordCharacters_wordCharacterSet)
  {
    v1 = [objc_alloc(MEMORY[0x29EDC6FD8]) initWithBaseCharacterSet:3];
    v2 = [v1 invertedSetDescription];
    v3 = kanaWordCharacters_wordCharacterSet;
    kanaWordCharacters_wordCharacterSet = v2;

    v0 = kanaWordCharacters_wordCharacterSet;
  }

  return v0;
}

+ (id)romajiWordCharacters
{
  v0 = romajiWordCharacters_wordCharacterSet;
  if (!romajiWordCharacters_wordCharacterSet)
  {
    v1 = [objc_alloc(MEMORY[0x29EDC70E0]) initWithBaseCharacterSet:3];
    [v1 removeCharactersInString:@" 　"];
    v2 = [v1 invertedSetDescription];
    v3 = romajiWordCharacters_wordCharacterSet;
    romajiWordCharacters_wordCharacterSet = v2;

    v0 = romajiWordCharacters_wordCharacterSet;
  }

  return v0;
}

@end