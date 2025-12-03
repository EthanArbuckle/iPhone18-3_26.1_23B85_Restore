@interface SUICUtilities
+ (BOOL)emojiIsValid:(__EmojiTokenWrapper *)valid;
+ (id)_emojisToNotInclude;
+ (id)substringRangesContainingEmojiInString:(id)string;
@end

@implementation SUICUtilities

+ (id)substringRangesContainingEmojiInString:(id)string
{
  stringCopy = string;
  if (CEMStringContainsEmoji())
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__1;
    v10 = __Block_byref_object_dispose__1;
    array = [MEMORY[0x1E695DF70] array];
    [stringCopy length];
    CEMEnumerateEmojiTokensInStringWithBlock();
    v4 = v7[5];
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

void __56__SUICUtilities_substringRangesContainingEmojiInString___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 == 0x7FFFFFFFFFFFFFFFLL || a3 == 0x7FFFFFFFFFFFFFFFLL;
  if (!v4 && [*(a1 + 40) emojiIsValid:a2])
  {
    v8 = *(*(*(a1 + 32) + 8) + 40);
    v9 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];
    [v8 addObject:v9];
  }
}

+ (BOOL)emojiIsValid:(__EmojiTokenWrapper *)valid
{
  v4 = CEMEmojiTokenGetString();
  _emojisToNotInclude = [self _emojisToNotInclude];
  v6 = [_emojisToNotInclude containsObject:v4];

  return v6 ^ 1;
}

+ (id)_emojisToNotInclude
{
  if (_emojisToNotInclude_onceToken != -1)
  {
    +[SUICUtilities _emojisToNotInclude];
  }

  v3 = _emojisToNotInclude_emojis;

  return v3;
}

uint64_t __36__SUICUtilities__emojisToNotInclude__block_invoke()
{
  _emojisToNotInclude_emojis = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F43C7548];

  return MEMORY[0x1EEE66BB8]();
}

@end