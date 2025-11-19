@interface TIKeyboardInputManager
@end

@implementation TIKeyboardInputManager

uint64_t __55__TIKeyboardInputManager_th_validUSetForAutocorrection__block_invoke()
{
  result = [MEMORY[0x29EDBA0F8] _characterSetWithPattern:@"[:Script=Thai:]"];
  [TIKeyboardInputManager_th validUSetForAutocorrection]::thai_alphabet_set = result;
  return result;
}

void __69__TIKeyboardInputManager_th_24Key_nearbyKeysForInput_isPopupVariant___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x29EDC71E8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 characterAtIndex:0];

  v7 = [v5 initWithCharacter:v6 logLikelihood:0.0];
  [v2 addObject:v7];
}

@end