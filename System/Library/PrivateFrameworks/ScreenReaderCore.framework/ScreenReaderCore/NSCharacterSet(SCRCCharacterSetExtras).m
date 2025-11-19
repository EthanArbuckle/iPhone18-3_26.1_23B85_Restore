@interface NSCharacterSet(SCRCCharacterSetExtras)
+ (id)emojiCharacterSet;
+ (id)modifierKeyCharacterSet;
+ (id)passwordBulletCharacterSet;
+ (id)whitespaceNewlineAndSpecialCharacterSet;
+ (id)wordBreakCharacterSet;
@end

@implementation NSCharacterSet(SCRCCharacterSetExtras)

+ (id)whitespaceNewlineAndSpecialCharacterSet
{
  if (whitespaceNewlineAndSpecialCharacterSet_CharacterSet)
  {
    v0 = whitespaceNewlineAndSpecialCharacterSet_CharacterSet;
  }

  else
  {
    v1 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v2 = 65520;
    v3 = 15;
    do
    {
      [v1 appendFormat:@"%C", v2];
      v2 = (v2 + 1);
      --v3;
    }

    while (v3);
    v4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v5 = [v4 mutableCopy];

    [v5 addCharactersInString:v1];
    v6 = [v5 copy];
    v7 = whitespaceNewlineAndSpecialCharacterSet_CharacterSet;
    whitespaceNewlineAndSpecialCharacterSet_CharacterSet = v6;

    v0 = whitespaceNewlineAndSpecialCharacterSet_CharacterSet;
  }

  return v0;
}

+ (id)passwordBulletCharacterSet
{
  v0 = objc_opt_new();
  [v0 addCharactersInString:@"•"];
  [v0 addCharactersInString:@"⦁"];
  [v0 addCharactersInString:@""];

  return v0;
}

+ (id)wordBreakCharacterSet
{
  if (wordBreakCharacterSet_CharacterSetIncludesPunctuation)
  {
    v0 = wordBreakCharacterSet_CharacterSetIncludesPunctuation;
  }

  else
  {
    v1 = [MEMORY[0x277CCA900] whitespaceNewlineAndSpecialCharacterSet];
    v2 = [v1 mutableCopy];

    [v2 addCharactersInString:@"\x05"];
    v3 = [MEMORY[0x277CCA900] punctuationCharacterSet];
    [v2 formUnionWithCharacterSet:v3];
    v4 = [v2 copy];
    v5 = wordBreakCharacterSet_CharacterSetIncludesPunctuation;
    wordBreakCharacterSet_CharacterSetIncludesPunctuation = v4;

    v0 = wordBreakCharacterSet_CharacterSetIncludesPunctuation;
  }

  return v0;
}

+ (id)emojiCharacterSet
{
  if (emojiCharacterSet_onceToken != -1)
  {
    +[NSCharacterSet(SCRCCharacterSetExtras) emojiCharacterSet];
  }

  v1 = emojiCharacterSet_EmojiCharacterSet;

  return v1;
}

+ (id)modifierKeyCharacterSet
{
  if (modifierKeyCharacterSet_onceToken != -1)
  {
    +[NSCharacterSet(SCRCCharacterSetExtras) modifierKeyCharacterSet];
  }

  v1 = modifierKeyCharacterSet_modifierKeyCharacterSet;

  return v1;
}

@end