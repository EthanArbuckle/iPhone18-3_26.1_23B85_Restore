@interface TIKeyboardInputManager_pa
- (id)deleteFromInput:(unint64_t *)a3;
- (void)initImplementation;
- (void)syncToLayoutState:(id)a3;
@end

@implementation TIKeyboardInputManager_pa

- (void)initImplementation
{
  result = *(&self->super.super.super.super.isa + *MEMORY[0x29EDC7290]);
  if (!result)
  {
    operator new();
  }

  return result;
}

- (void)syncToLayoutState:(id)a3
{
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManager_pa;
  v4 = a3;
  [(TIKeyboardInputManagerIndic *)&v6 syncToLayoutState:v4];
  v5 = [v4 softwareLayout];

  -[TIKeyboardInputManager_pa setIsPhoneticLayout:](self, "setIsPhoneticLayout:", [v5 isEqualToString:@"Punjabi-Phonetic"]);
}

- (id)deleteFromInput:(unint64_t *)a3
{
  v31[4] = *MEMORY[0x29EDCA608];
  if (a3)
  {
    *a3 = 1;
  }

  v5 = *MEMORY[0x29EDC7290];
  if (*(&self->super.super.super.super.isa + v5))
  {
    v6 = [(TIKeyboardInputManager_pa *)self inputIndex];
    if (*(&self->super.super.super.super.isa + v5))
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7 || (v8 = v6, v9 = *MEMORY[0x29EDC7288], [*(&self->super.super.super.super.isa + v9) length] < v6))
    {
      v30.receiver = self;
      v30.super_class = TIKeyboardInputManager_pa;
      v10 = [(TIKeyboardInputManager_pa *)&v30 deleteFromInput:a3];
    }

    else
    {
      v11 = v8;
      TIInputManager::input_string(v31, *(&self->super.super.super.super.isa + v5));
      v13 = KB::ns_string(v31, v12);
      v14 = [(TIKeyboardInputManager_pa *)self internalStringToExternal:v13];

      KB::String::~String(v31);
      if ([v14 length] >= 2 && (v15 = v8 - 2, v8 >= 2) && (objc_msgSend(v14, "characterAtIndex:", v15) == 2637 || objc_msgSend(v14, "characterAtIndex:", v8 - 1) == 2620))
      {
        TIInputManager::delete_from_input(*(&self->super.super.super.super.isa + v5));
        TIInputManager::delete_from_input(*(&self->super.super.super.super.isa + v5));
        TIInputManager::delete_from_favonius_stroke_history(*(&self->super.super.super.super.isa + v5));
      }

      else if ([(TIKeyboardInputManager_pa *)self isPhoneticLayout])
      {
        if ([v14 length] >= 3 && v8 >= 3 && (objc_msgSend(v14, "characterAtIndex:", v8 - 2) == 2622 || objc_msgSend(v14, "characterAtIndex:", v8 - 2) == 2566) && objc_msgSend(v14, "characterAtIndex:", v8 - 1) == 2562)
        {
          v16 = *(&self->super.super.super.super.isa + v5);
          v17 = [(TIKeyboardInputManager_pa *)self externalStringToInternal:@"ਾਂ"];
          KB::utf8_string(v31, v17, v18);
          TIInputManager::delete_suffix_from_input();
          KB::String::~String(v31);
        }

        else
        {
          TIInputManager::delete_from_input(*(&self->super.super.super.super.isa + v5));
        }
      }

      else
      {
        v19 = [v14 characterAtIndex:v8 - 1];
        v20 = *(&self->super.super.super.super.isa + v5);
        KB::lower_character(v19, 0, v21);
        TIInputManager::delete_suffix_from_input();
        KB::String::~String(v31);
      }

      TIInputManager::input_string(v31, *(&self->super.super.super.super.isa + v5));
      v23 = KB::ns_string(v31, v22);
      v24 = [(TIKeyboardInputManager_pa *)self internalStringToExternal:v23];

      KB::String::~String(v31);
      TIInputManager::input_stem(v31, *(&self->super.super.super.super.isa + v5));
      v26 = KB::ns_string(v31, v25);
      v27 = [(TIKeyboardInputManager_pa *)self internalStringToExternal:v26];

      KB::String::~String(v31);
      v10 = [(TIKeyboardInputManager_pa *)self suffixOfDesiredString:v27 toAppendToInputString:*(&self->super.super.super.super.isa + v9) withInputIndex:v11 afterDeletionCount:a3];
      [*(&self->super.super.super.super.isa + v9) setString:v24];
      if (![v10 length])
      {

        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v28 = *MEMORY[0x29EDCA608];

  return v10;
}

@end