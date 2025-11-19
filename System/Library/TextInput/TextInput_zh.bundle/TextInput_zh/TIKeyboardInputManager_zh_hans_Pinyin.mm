@interface TIKeyboardInputManager_zh_hans_Pinyin
- (BOOL)usesComposingInput;
- (id)locale;
- (void)initImplementation;
@end

@implementation TIKeyboardInputManager_zh_hans_Pinyin

- (void)initImplementation
{
  v2 = *MEMORY[0x29EDC71A8];
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_zh_hans_Pinyin;
  return [(TIKeyboardInputManagerChinese *)&v4 initImplementationWithMode:@"Pinyin" andLanguage:v2];
}

- (id)locale
{
  v2 = [objc_alloc(MEMORY[0x29EDB8DE0]) initWithLocaleIdentifier:@"zh-Hans"];

  return v2;
}

- (BOOL)usesComposingInput
{
  v2 = [(TIKeyboardInputManagerBase *)self currentInputModeIdentifier];
  v3 = TIInputModeGetComponentsFromIdentifier();
  v4 = [v3 objectForKey:@"sw"];

  LOBYTE(v2) = [v4 isEqualToString:@"Pinyin-Simplified"];
  return v2;
}

@end