@interface NSCharacterSet
@end

@implementation NSCharacterSet

void __71__NSCharacterSet_SafariCoreExtras__safari_lockRelatedEmojiCharacterSet__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD48]);
  [v0 addCharactersInRange:{128271, 5}];
  [v0 addCharactersInString:@""];
  v1 = safari_lockRelatedEmojiCharacterSet_emojiRelatedToLocks;
  safari_lockRelatedEmojiCharacterSet_emojiRelatedToLocks = v0;
}

void __65__NSCharacterSet_SafariCoreExtras__safari_asciiDigitCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithRange:{48, 10}];
  v1 = safari_asciiDigitCharacterSet_asciiDigitCharacterSet;
  safari_asciiDigitCharacterSet_asciiDigitCharacterSet = v0;
}

uint64_t __75__NSCharacterSet_SafariCoreExtras__safari_whitespaceAndNewlineCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v1 = [v0 mutableCopy];
  v2 = safari_whitespaceAndNewlineCharacterSet_whitespaceAndNewlineCharacterSet;
  safari_whitespaceAndNewlineCharacterSet_whitespaceAndNewlineCharacterSet = v1;

  v3 = safari_whitespaceAndNewlineCharacterSet_whitespaceAndNewlineCharacterSet;

  return [v3 addCharactersInString:@"\uFFFC"];
}

@end