@interface TIKeyboardInputManager_vi_VIQR
- (BOOL)allowsAutocorrectionForCurrentInputString;
- (id)wordCharacters;
@end

@implementation TIKeyboardInputManager_vi_VIQR

- (id)wordCharacters
{
  v2 = [TIKeyboardInputManager_vi_VIQR wordCharacters]::__wordCharacterSet;
  if (![TIKeyboardInputManager_vi_VIQR wordCharacters]::__wordCharacterSet)
  {
    v3 = [objc_alloc(MEMORY[0x29EDC70E0]) initWithBaseCharacterSet:10];
    v4 = [v3 copy];
    v5 = [TIKeyboardInputManager_vi_VIQR wordCharacters]::__wordCharacterSet;
    [TIKeyboardInputManager_vi_VIQR wordCharacters]::__wordCharacterSet = v4;

    v2 = [TIKeyboardInputManager_vi_VIQR wordCharacters]::__wordCharacterSet;
  }

  return v2;
}

- (BOOL)allowsAutocorrectionForCurrentInputString
{
  v8[4] = *MEMORY[0x29EDCA608];
  TIInputManager::input_string(v8, *(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]));
  v3 = KB::ns_string(v8, v2);
  KB::String::~String(v8);
  v4 = [MEMORY[0x29EDB9F50] TI_vietnameseVIQRSpecialsCharacterSet];
  v5 = [v3 rangeOfCharacterFromSet:v4] == 0x7FFFFFFFFFFFFFFFLL;

  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

@end