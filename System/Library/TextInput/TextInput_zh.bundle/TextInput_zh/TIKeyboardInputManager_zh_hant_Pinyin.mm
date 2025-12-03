@interface TIKeyboardInputManager_zh_hant_Pinyin
- (BOOL)usesComposingInput;
- (id)locale;
- (void)initImplementation;
@end

@implementation TIKeyboardInputManager_zh_hant_Pinyin

- (void)initImplementation
{
  v2 = *MEMORY[0x29EDC71B8];
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_zh_hant_Pinyin;
  return [(TIKeyboardInputManagerChinese *)&v4 initImplementationWithMode:@"Pinyin" andLanguage:v2];
}

- (id)locale
{
  v2 = [objc_alloc(MEMORY[0x29EDB8DE0]) initWithLocaleIdentifier:@"zh-Hant"];

  return v2;
}

- (BOOL)usesComposingInput
{
  currentInputModeIdentifier = [(TIKeyboardInputManagerBase *)self currentInputModeIdentifier];
  v3 = TIInputModeGetComponentsFromIdentifier();
  v4 = [v3 objectForKey:@"sw"];

  LOBYTE(currentInputModeIdentifier) = [v4 isEqualToString:@"Pinyin-Traditional"];
  return currentInputModeIdentifier;
}

@end