@interface TIKeyboardInputManager_vi_VNI
- (BOOL)allowsAutocorrectionForCurrentInputString;
@end

@implementation TIKeyboardInputManager_vi_VNI

- (BOOL)allowsAutocorrectionForCurrentInputString
{
  v8[4] = *MEMORY[0x29EDCA608];
  TIInputManager::input_string(v8, *(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]));
  v3 = KB::ns_string(v8, v2);
  KB::String::~String(v8);
  tI_vietnameseVNISpecialsCharacterSet = [MEMORY[0x29EDB9F50] TI_vietnameseVNISpecialsCharacterSet];
  v5 = [v3 rangeOfCharacterFromSet:tI_vietnameseVNISpecialsCharacterSet] == 0x7FFFFFFFFFFFFFFFLL;

  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

@end