@interface TIKeyboardInputManager
@end

@implementation TIKeyboardInputManager

uint64_t __55__TIKeyboardInputManager_ko_validUSetForAutocorrection__block_invoke()
{
  result = [MEMORY[0x29EDBA0F8] _characterSetWithPattern:@"[:Script=Hangul:]"];
  [TIKeyboardInputManager_ko validUSetForAutocorrection]::hangul_set = result;
  return result;
}

@end