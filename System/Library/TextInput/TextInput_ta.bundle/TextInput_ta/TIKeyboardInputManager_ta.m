@interface TIKeyboardInputManager_ta
- (id)deleteFromInput:(unint64_t *)a3;
- (id)externalStringToInternal:(id)a3;
- (id)internalStringToExternal:(id)a3;
- (id)keyboardFeatureSpecialization;
- (void)closeTransliterators;
- (void)configureTransliterators;
- (void)dealloc;
- (void)initTransliteratorsWithID:(id)a3;
- (void)syncToLayoutState:(id)a3;
@end

@implementation TIKeyboardInputManager_ta

- (void)syncToLayoutState:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManager_ta;
  [(TIKeyboardInputManagerIndic *)&v8 syncToLayoutState:v4];
  if (![(TIKeyboardInputManagerIndic *)self alphabeticLayout])
  {
    v5 = [v4 softwareLayout];
    if ([v5 isEqualToString:@"QWERTY-Tamil"])
    {
      self->_isQWERTYLayout = 1;
    }

    else
    {
      v6 = [(TIKeyboardInputManager_ta *)self keyboardState];
      if ([v6 hardwareKeyboardMode])
      {
        v7 = [v4 hardwareLayout];
        self->_isQWERTYLayout = [v7 isEqualToString:@"Tamil99"] ^ 1;
      }

      else
      {
        self->_isQWERTYLayout = 0;
      }
    }

    [(TIKeyboardInputManager_ta *)self configureTransliterators];
  }
}

- (id)keyboardFeatureSpecialization
{
  v3 = [(TIKeyboardInputManagerIndic *)self alphabeticLayout];
  v4 = 0x29EDC7230;
  if (!v3)
  {
    v4 = &off_29F37BFF8;
  }

  v5 = *v4;
  v6 = objc_opt_class();
  tamilFeatureSpecialization = self->_tamilFeatureSpecialization;
  if (!tamilFeatureSpecialization)
  {
    v8 = [v6 alloc];
    v9 = [(TIKeyboardInputManagerBase *)self inputMode];
    v10 = [v8 initWithInputMode:v9];
    v11 = self->_tamilFeatureSpecialization;
    self->_tamilFeatureSpecialization = v10;

    v12 = [(TIKeyboardInputManager_ta *)self config];
    -[TIKeyboardFeatureSpecialization setUseRelaxedOVSPolicy:](self->_tamilFeatureSpecialization, "setUseRelaxedOVSPolicy:", [v12 allowRelaxedOVSPolicy]);

    v13 = [(TIKeyboardInputManager_ta *)self config];
    -[TIKeyboardFeatureSpecialization setSkipCandidateQualityFilter:](self->_tamilFeatureSpecialization, "setSkipCandidateQualityFilter:", [v13 skipCandidateQualityFilter]);

    tamilFeatureSpecialization = self->_tamilFeatureSpecialization;
  }

  return tamilFeatureSpecialization;
}

- (void)dealloc
{
  [(TIKeyboardInputManager_ta *)self closeTransliterators];
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_ta;
  [(TIKeyboardInputManager_ta *)&v3 dealloc];
}

- (void)closeTransliterators
{
  if (self->_internalToExternalTransliterator)
  {
    utrans_close();
    self->_internalToExternalTransliterator = 0;
  }

  if (self->_externalToInternalTransliterator)
  {
    utrans_close();
    self->_externalToInternalTransliterator = 0;
  }
}

- (void)configureTransliterators
{
  [(TIKeyboardInputManager_ta *)self closeTransliterators];
  if (self->_isQWERTYLayout)
  {
    v3 = @"AnjalTransliterator";
  }

  else
  {
    v3 = @"Tamil99Transliterator";
  }

  [(TIKeyboardInputManager_ta *)self initTransliteratorsWithID:v3];
}

- (void)initTransliteratorsWithID:(id)a3
{
  v17[1] = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = TIBundleForInputMode();
  v6 = [v5 pathForResource:v4 ofType:@"txt"];
  if (v6)
  {
    v17[0] = 0;
    v7 = [MEMORY[0x29EDBA0F8] stringWithContentsOfFile:v6 encoding:4 error:v17];
    v8 = v17[0];
    if (v7)
    {
      v9 = malloc_type_malloc(2 * [v7 length], 0x1000040BDFB0063uLL);
      v10 = [v4 length];
      if (v9)
      {
        v11 = v10 < 1;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        if (!v9)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v15[1] = v15;
        v16 = 0;
        MEMORY[0x2A1C7C4A8](v10);
        [v4 getCharacters:v15 - ((v12 + 15) & 0x1FFFFFFF0) range:0];
        [v7 getCharacters:v9];
        self->_internalToExternalTransliterator = utrans_openU();
        if (v16 <= 0)
        {
          self->_externalToInternalTransliterator = utrans_openU();
          if (v16 >= 1)
          {
            internalToExternalTransliterator = self->_internalToExternalTransliterator;
            utrans_close();
            self->_internalToExternalTransliterator = 0;
          }
        }
      }

      free(v9);
    }

LABEL_14:
  }

  v14 = *MEMORY[0x29EDCA608];
}

- (id)externalStringToInternal:(id)a3
{
  v4 = a3;
  if ([(TIKeyboardInputManagerIndic *)self alphabeticLayout])
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManager_ta;
    v5 = [(TIKeyboardInputManager_ta *)&v8 externalStringToInternal:v4];
  }

  else
  {
    v5 = Transliterate(v4, self->_externalToInternalTransliterator);
  }

  v6 = v5;

  return v6;
}

- (id)internalStringToExternal:(id)a3
{
  v4 = a3;
  if ([(TIKeyboardInputManagerIndic *)self alphabeticLayout])
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManager_ta;
    v5 = [(TIKeyboardInputManager_ta *)&v8 internalStringToExternal:v4];
  }

  else
  {
    v5 = Transliterate(v4, self->_internalToExternalTransliterator);
  }

  v6 = v5;

  return v6;
}

- (id)deleteFromInput:(unint64_t *)a3
{
  v32[4] = *MEMORY[0x29EDCA608];
  if ([(TIKeyboardInputManagerIndic *)self alphabeticLayout])
  {
    v31.receiver = self;
    v31.super_class = TIKeyboardInputManager_ta;
    [(TIKeyboardInputManager_ta *)&v31 deleteFromInput:a3];
    v11 = LABEL_11:;
    goto LABEL_12;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v6 = [(TIKeyboardInputManager_ta *)self inputIndex];
  v7 = *MEMORY[0x29EDC7290];
  if (*(&self->super.super.super.super.isa + v7))
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || (v9 = v6, v10 = *MEMORY[0x29EDC7288], [*(&self->super.super.super.super.isa + v10) length] < v6))
  {
    v30.receiver = self;
    v30.super_class = TIKeyboardInputManager_ta;
    [(TIKeyboardInputManager_ta *)&v30 deleteFromInput:a3];
    goto LABEL_11;
  }

  v27 = v9;
  v28 = a2;
  v29 = v9;
  v14 = [*(&self->super.super.super.super.isa + v10) substringToIndex:?];
  v15 = 0;
  v11 = 0;
  v16 = *(&self->super.super.super.super.isa + v7);
  do
  {
    TIInputManager::delete_from_input(v16);
    if (v15)
    {
      TIInputManager::delete_from_favonius_stroke_history(*(&self->super.super.super.super.isa + v7));
    }

    TIInputManager::input_string(v32, *(&self->super.super.super.super.isa + v7));
    v18 = KB::ns_string(v32, v17);
    KB::String::~String(v32);
    v19 = [v18 substringToIndex:(*(&self->super.super.super.super.isa + v7))[24]];
    v20 = [(TIKeyboardInputManager_ta *)self internalStringToExternal:v19];

    if (v20 && (v21 = [v14 length], v21 > objc_msgSend(v20, "length")) && objc_msgSend(v14, "hasPrefix:", v20))
    {
      v22 = [(TIKeyboardInputManager_ta *)self suffixOfDesiredString:v20 toAppendToInputString:*(&self->super.super.super.super.isa + v10) withInputIndex:v29 afterDeletionCount:a3];

      v23 = [(TIKeyboardInputManager_ta *)self internalStringToExternal:v18];
      [*(&self->super.super.super.super.isa + v10) setString:v23];

      v24 = 1;
      v11 = v22;
    }

    else
    {
      v24 = 0;
    }

    v16 = *(&self->super.super.super.super.isa + v7);
    v25 = *(v16 + 24);
    if (v24)
    {
      break;
    }

    v15 = 1;
  }

  while (v25);
  if ((v24 & 1) == 0)
  {
    if (v25)
    {
      [(TIKeyboardInputManager_ta *)(&self->super.super.super.super.isa + v10) deleteFromInput:v28, self, v27];
    }

    v26 = [(TIKeyboardInputManager_ta *)self suffixOfDesiredString:&stru_2A252CFB8 toAppendToInputString:*(&self->super.super.super.super.isa + v10) withInputIndex:v29 afterDeletionCount:a3];

    v11 = v26;
  }

LABEL_12:
  v12 = *MEMORY[0x29EDCA608];

  return v11;
}

- (void)deleteFromInput:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x29EDB9F28] currentHandler];
  [v8 handleFailureInMethod:a2 object:a3 file:@"TIKeyboardInputManager_ta.mm" lineNumber:286 description:{@"Wrong deletion for Tamil input %@ from index %d", *a1, a4}];
}

@end