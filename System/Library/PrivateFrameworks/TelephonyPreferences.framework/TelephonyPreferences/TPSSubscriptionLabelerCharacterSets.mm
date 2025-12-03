@interface TPSSubscriptionLabelerCharacterSets
+ (USet)_characterSetFromPattern:(id)pattern;
- (TPSSubscriptionLabelerCharacterSets)init;
- (void)dealloc;
@end

@implementation TPSSubscriptionLabelerCharacterSets

+ (USet)_characterSetFromPattern:(id)pattern
{
  if (!pattern)
  {
    return 0;
  }

  v3 = [TPSSubscriptionLabeler _resultWithAllCharacters:&__block_literal_global_6 string:pattern];
  pointerValue = [v3 pointerValue];

  return pointerValue;
}

id __64__TPSSubscriptionLabelerCharacterSets__characterSetFromPattern___block_invoke()
{
  v0 = [MEMORY[0x277CCAE60] valueWithPointer:uset_openPattern()];

  return v0;
}

- (TPSSubscriptionLabelerCharacterSets)init
{
  v4.receiver = self;
  v4.super_class = TPSSubscriptionLabelerCharacterSets;
  v2 = [(TPSSubscriptionLabelerCharacterSets *)&v4 init];
  if (v2)
  {
    v2->_CJK = [objc_opt_class() _characterSetFromPattern:@"[[:Hani:][:Hiragana:][[:scx=Kana:]][:Bopomofo:][ˉˊˇˋ˙][:Hangul:][()（）]]"];
  }

  return v2;
}

- (void)dealloc
{
  CJK = self->_CJK;
  uset_close();
  v4.receiver = self;
  v4.super_class = TPSSubscriptionLabelerCharacterSets;
  [(TPSSubscriptionLabelerCharacterSets *)&v4 dealloc];
}

@end