@interface TIKeyboardInputManager_yue_Hant_Phonetic
- (id)locale;
- (void)initImplementation;
@end

@implementation TIKeyboardInputManager_yue_Hant_Phonetic

- (void)initImplementation
{
  v2 = *MEMORY[0x29EDC71B0];
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_yue_Hant_Phonetic;
  return [(TIKeyboardInputManagerChinese *)&v4 initImplementationWithMode:@"Pinyin" andLanguage:v2];
}

- (id)locale
{
  v2 = [objc_alloc(MEMORY[0x29EDB8DE0]) initWithLocaleIdentifier:@"yue-Hant"];

  return v2;
}

@end