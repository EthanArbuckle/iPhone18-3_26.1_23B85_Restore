@interface TIKeyboardInputManager_ain
- (id)deleteComposedTextFromIndex:(unint64_t)index count:(unint64_t *)count;
@end

@implementation TIKeyboardInputManager_ain

- (id)deleteComposedTextFromIndex:(unint64_t)index count:(unint64_t *)count
{
  v18[4] = *MEMORY[0x29EDCA608];
  v6 = *MEMORY[0x29EDC7290];
  TIInputManager::input_string(v18, *(&self->super.super.super.isa + v6));
  v8 = KB::ns_string(v18, v7);
  v9 = [(TIKeyboardInputManager_ain *)self internalStringToExternal:v8];

  KB::String::~String(v18);
  v10 = index - 1;
  if (v10 <= [v9 length])
  {
    v11 = [v9 substringToIndex:v10];
    [*(&self->super.super.super.isa + *MEMORY[0x29EDC7288]) setString:v11];
    v12 = *(&self->super.super.super.isa + v6);
    keyboardFeatureSpecialization = [(TIKeyboardInputManager_ain *)self keyboardFeatureSpecialization];
    v14 = [keyboardFeatureSpecialization externalStringToInternal:v11 byConvertingEagerly:1];
    KB::utf8_string(v18, v14, v15);
    TIInputManager::set_input();
    KB::String::~String(v18);
  }

  v16 = *MEMORY[0x29EDCA608];
  return 0;
}

@end