@interface NSCharacterSet
@end

@implementation NSCharacterSet

void __59__NSCharacterSet_SCRCCharacterSetExtras__emojiCharacterSet__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&_block_invoke_emoji length:588];
  v0 = objc_alloc_init(MEMORY[0x277CCAB50]);
  v1 = emojiCharacterSet_EmojiCharacterSet;
  emojiCharacterSet_EmojiCharacterSet = v0;

  [emojiCharacterSet_EmojiCharacterSet addCharactersInString:v2];
  [emojiCharacterSet_EmojiCharacterSet addCharactersInRange:{127744, 1024}];
  [emojiCharacterSet_EmojiCharacterSet addCharactersInRange:{127378, 9}];
  [emojiCharacterSet_EmojiCharacterSet addCharactersInRange:{127344, 2}];
  [emojiCharacterSet_EmojiCharacterSet addCharactersInRange:{127358, 2}];
  [emojiCharacterSet_EmojiCharacterSet addCharactersInRange:{127490, 1}];
  [emojiCharacterSet_EmojiCharacterSet addCharactersInRange:{127543, 1}];
  [emojiCharacterSet_EmojiCharacterSet addCharactersInRange:{126980, 1}];
  [emojiCharacterSet_EmojiCharacterSet addCharactersInRange:{127514, 1}];
  [emojiCharacterSet_EmojiCharacterSet addCharactersInRange:{127535, 1}];
  [emojiCharacterSet_EmojiCharacterSet addCharactersInRange:{127183, 1}];
  [emojiCharacterSet_EmojiCharacterSet addCharactersInRange:{127374, 1}];
  [emojiCharacterSet_EmojiCharacterSet addCharactersInRange:{127377, 10}];
  [emojiCharacterSet_EmojiCharacterSet addCharactersInRange:{127489, 1}];
  [emojiCharacterSet_EmojiCharacterSet addCharactersInRange:{127538, 9}];
  [emojiCharacterSet_EmojiCharacterSet addCharactersInRange:{127568, 2}];
  [emojiCharacterSet_EmojiCharacterSet addCharactersInRange:{127462, 26}];
  [emojiCharacterSet_EmojiCharacterSet addCharactersInRange:{8419, 1}];
}

uint64_t __65__NSCharacterSet_SCRCCharacterSetExtras__modifierKeyCharacterSet__block_invoke()
{
  v0 = objc_opt_new();
  v1 = modifierKeyCharacterSet_modifierKeyCharacterSet;
  modifierKeyCharacterSet_modifierKeyCharacterSet = v0;

  v2 = modifierKeyCharacterSet_modifierKeyCharacterSet;

  return [v2 addCharactersInString:@"⇧⌃⌥⌘"];
}

@end