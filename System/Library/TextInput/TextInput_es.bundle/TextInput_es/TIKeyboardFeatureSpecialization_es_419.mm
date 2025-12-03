@interface TIKeyboardFeatureSpecialization_es_419
- (id)dictionaryInputMode;
@end

@implementation TIKeyboardFeatureSpecialization_es_419

- (id)dictionaryInputMode
{
  v3 = MEMORY[0x29EDC7220];
  v4 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"es_MX"];
  inputMode = [(TIKeyboardFeatureSpecialization *)self inputMode];
  isSiriMode = [inputMode isSiriMode];
  inputMode2 = [(TIKeyboardFeatureSpecialization *)self inputMode];
  originalIdentifier = [inputMode2 originalIdentifier];
  v9 = [v3 inputModeWithIdentifier:v4 isSiriMode:isSiriMode originalIdentifier:originalIdentifier];

  return v9;
}

@end