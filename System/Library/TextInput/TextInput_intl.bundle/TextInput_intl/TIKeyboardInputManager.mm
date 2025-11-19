@interface TIKeyboardInputManager
@end

@implementation TIKeyboardInputManager

uint64_t __45__TIKeyboardInputManager_intl_HWR_recognizer__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x29EDC0DF8]);
  v1 = [MEMORY[0x29EDB8DE0] localeWithLocaleIdentifier:@"en"];
  v2 = [v0 initWithMode:1 locale:v1];
  v3 = recognizer___recognizer;
  recognizer___recognizer = v2;

  v4 = recognizer___recognizer;

  return [v4 setMaxRecognitionResultCount:4];
}

@end