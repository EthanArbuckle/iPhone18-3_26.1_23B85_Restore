@interface TIKeyboardInputManager_vi
+ (void)cleanupUnikey;
+ (void)setupUnikey;
- (BOOL)shouldDynamicallySwitchBetweenPrimaryAndSecondary;
- (TIKeyboardInputManager_vi)initWithConfig:(id)a3 keyboardState:(id)a4;
- (id)decomposeTelex:(id)a3;
- (id)deleteFromInput:(unint64_t *)a3;
- (id)externalStringToInternal:(id)a3 ignoreCompositionDisabled:(BOOL)a4 useReverseMap:(BOOL)a5;
- (id)internalStringToExternal:(id)a3 ignoreCompositionDisabled:(BOOL)a4;
- (unint64_t)deleteLengthForString:(id)a3;
- (unsigned)inputIndex;
- (unsigned)lexiconID;
- (void)acceptInput;
- (void)createTransliterator;
- (void)dealloc;
- (void)initImplementation;
- (void)updateChoseSecondaryOnBackspaceIntoWord;
- (void)updateUnikeyWithVietnameseType:(int)a3;
@end

@implementation TIKeyboardInputManager_vi

- (TIKeyboardInputManager_vi)initWithConfig:(id)a3 keyboardState:(id)a4
{
  v6 = a4;
  v7 = a3;
  +[TIKeyboardInputManager_vi setupUnikey];
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManager_vi;
  v8 = [(TIKeyboardInputManager_mul *)&v10 initWithConfig:v7 keyboardState:v6];

  if (v8)
  {
    (*(&v8->super.super.super.super.isa + *MEMORY[0x29EDC7290]))[737] = 0;
  }

  else
  {
    +[TIKeyboardInputManager_vi cleanupUnikey];
  }

  return v8;
}

- (void)initImplementation
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v7 = KB::ns_string(a2, v6);
  v9 = [WeakRetained internalStringToExternal:v7];

  KB::utf8_string(a3, v9, v8);
}

- (void)dealloc
{
  [objc_opt_class() cleanupUnikey];
  if (self->m_transliterator)
  {
    utrans_close();
    self->m_transliterator = 0;
  }

  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_vi;
  [(TIKeyboardInputManager_vi *)&v3 dealloc];
}

- (unsigned)lexiconID
{
  m_lexiconID = self->m_lexiconID;
  if (!m_lexiconID)
  {
    v4 = MEMORY[0x29EDBA070];
    v5 = [(TIKeyboardInputManagerBase *)self inputMode];
    v6 = [v5 locale];
    v7 = [v6 localeIdentifier];
    [v7 UTF8String];
    v8 = [v4 numberWithUnsignedInt:TILexiconIDForLocaleIdentifier()];
    v9 = self->m_lexiconID;
    self->m_lexiconID = v8;

    m_lexiconID = self->m_lexiconID;
  }

  return [(NSNumber *)m_lexiconID unsignedIntValue];
}

- (BOOL)shouldDynamicallySwitchBetweenPrimaryAndSecondary
{
  v3 = [(TIKeyboardInputManager_vi *)self keyboardState];
  v4 = [v3 autocorrectionEnabled];

  v5 = [MEMORY[0x29EDC70E8] sharedPreferencesController];
  v6 = [v5 BOOLForPreferenceKey:*MEMORY[0x29EDC7108]];

  return [(TIKeyboardInputManager_mul *)self isUsingMultilingual]& v4 & v6;
}

+ (void)setupUnikey
{
  v2 = a1;
  objc_sync_enter(v2);
  if (!__UnikeyRefCount++)
  {
    UnikeySetup();
    UnikeySetInputMethod();
    UnikeyGetOptions();
    UnikeySetOptions();
  }

  objc_sync_exit(v2);
}

+ (void)cleanupUnikey
{
  obj = a1;
  objc_sync_enter(obj);
  if (__UnikeyRefCount)
  {
    if (!--__UnikeyRefCount)
    {
      UnikeyCleanup();
    }
  }

  objc_sync_exit(obj);
}

- (void)createTransliterator
{
  v30[1] = *MEMORY[0x29EDCA608];
  v2 = TIBundleForInputMode();
  v3 = [v2 pathForResource:@"vi_TelexTransliterator" ofType:@"txt"];
  if (v3)
  {
    v30[0] = 0;
    v4 = [MEMORY[0x29EDBA0F8] stringWithContentsOfFile:v3 encoding:4 error:v30];
    v5 = v30[0];
    v6 = v5;
    if (!v4)
    {
      if (v5)
      {
        NSLog(&cfstr_ErrorOpeningTr.isa, v5);
      }

      v10 = 0;
      goto LABEL_29;
    }

    v7 = malloc_type_malloc(2 * [v4 length], 0x1000040BDFB0063uLL);
    v8 = [@"vi_TelexTransliterator" length];
    if (v7)
    {
      v9 = v8 < 1;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = 0;
      if (!v7)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v29 = 0;
      MEMORY[0x2A1C7C4A8](v8);
      [@"vi_TelexTransliterator" getCharacters:&v22 - ((v11 + 15) & 0x1FFFFFFF0) range:0];
      [v4 getCharacters:v7];
      v10 = utrans_openU();
      v12 = v29;
      if (v29 >= 1)
      {
        v13 = 32;
        if (v27 >= 1 && v26 <= 0)
        {
          v13 = v7[v27];
        }

        v23 = v13;
        v24 = v27;
        v14 = 8;
        v25 = &v22;
        do
        {
          if (!*(&v26 + v14))
          {
            break;
          }

          v14 += 2;
        }

        while (v14 != 40);
        v15 = [MEMORY[0x29EDBA0F8] stringWithCharacters:? length:?];
        v16 = &v29;
        v17 = 40;
        while (*(&v26 + v17))
        {
          v17 += 2;
          if (v17 == 72)
          {
            goto LABEL_26;
          }
        }

        v16 = (&v26 + v17);
LABEL_26:
        v18 = [MEMORY[0x29EDBA0F8] stringWithCharacters:v28 length:((v16 - v28) >> 1)];
        v19 = u_errorName(v12);
        NSLog(&cfstr_ParseErrorSFor.isa, v19, @"vi_TelexTransliterator", v26, v24, v15, v23, v18);
      }

      if (!v7)
      {
        goto LABEL_29;
      }
    }

    free(v7);
LABEL_29:

    goto LABEL_30;
  }

  NSLog(&cfstr_CanTFindTransl.isa);
  v10 = 0;
LABEL_30:

  v20 = *MEMORY[0x29EDCA608];
  return v10;
}

- (id)decomposeTelex:(id)a3
{
  v4 = a3;
  if (!self->m_transliterator)
  {
    self->m_transliterator = [(TIKeyboardInputManager_vi *)self createTransliterator];
  }

  v10 = [v4 length];
  v5 = malloc_type_malloc(6 * v10, 0x1000040BDFB0063uLL);
  if (v5)
  {
    v6 = v5;
    [v4 getCharacters:v5 range:{0, objc_msgSend(v4, "length")}];
    m_transliterator = self->m_transliterator;
    utrans_transUChars();
    v8 = [MEMORY[0x29EDBA0F8] stringWithCharacters:v6 length:v10];
    free(v6);
  }

  else
  {
    NSLog(&cfstr_CouldnTCreateU.isa);
    v8 = 0;
  }

  return v8;
}

- (id)externalStringToInternal:(id)a3 ignoreCompositionDisabled:(BOOL)a4 useReverseMap:(BOOL)a5
{
  v7 = a3;
  v8 = v7;
  if ([(TIKeyboardInputManager_vi *)self inputTypeSupportsDecomposition])
  {
    if (a4 || (v8 = v7, ![(TIKeyboardInputManager_vi *)self compositionDisabled]))
    {
      v8 = [(TIKeyboardInputManager_vi *)self decomposeTelex:v7];
    }
  }

  return v8;
}

- (id)internalStringToExternal:(id)a3 ignoreCompositionDisabled:(BOOL)a4
{
  v6 = a3;
  if (a4 || ![(TIKeyboardInputManager_vi *)self compositionDisabled])
  {
    v8 = [v6 length];
    v7 = [MEMORY[0x29EDBA050] stringWithCapacity:v8];
    UnikeyResetBuf();
    [(TIKeyboardInputManager_vi *)self updateUnikeyWithVietnameseType:[(TIKeyboardInputManager_vi *)self vietnameseType]];
    if (v8)
    {
      v9 = 0;
      v10 = MEMORY[0x29EDC72B0];
      v11 = MEMORY[0x29EDC72A0];
      v12 = MEMORY[0x29EDC72A8];
      do
      {
        v13 = [v6 characterAtIndex:v9];
        chars = v13;
        if ([(TIKeyboardInputManager_vi *)self canHandleCharacter:v13])
        {
          UnikeySetCapsState();
          UnikeyFilter();
          v14 = *v10;
          if (v14 | *v11)
          {
            if (v14)
            {
              v15 = *v11 < 1;
            }

            else
            {
              v15 = 1;
            }

            if (v15)
            {
              if (v14)
              {
                *(v12 + v14) = 0;
                v16 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v12];
                [(__CFString *)v7 appendString:v16];
              }
            }

            else
            {
              *(v12 + v14) = 0;
              if ([(__CFString *)v7 length]>= *v11)
              {
                v17 = [(__CFString *)v7 length]- *v11;
              }

              else
              {
                v17 = 0;
              }

              v18 = [(__CFString *)v7 length]- v17;
              v19 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v12];
              [(__CFString *)v7 replaceCharactersInRange:v17 withString:v18, v19];

              v10 = MEMORY[0x29EDC72B0];
            }
          }

          else
          {
            CFStringAppendCharacters(v7, &chars, 1);
          }
        }

        else
        {
          CFStringAppendCharacters(v7, &chars, 1);
          UnikeyResetBuf();
        }

        ++v9;
      }

      while (v8 != v9);
    }
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (void)acceptInput
{
  v2.receiver = self;
  v2.super_class = TIKeyboardInputManager_vi;
  [(TIKeyboardInputManager_vi *)&v2 acceptInput];
}

- (unsigned)inputIndex
{
  if (self->m_useInternalIndex)
  {
    v4 = *(&self->super.super.super.super.isa + *MEMORY[0x29EDC7290]);
    if (v4)
    {
      return *(v4 + 96);
    }
  }

  v7 = v2;
  v8 = v3;
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManager_vi;
  return [(TIKeyboardInputManager_vi *)&v6 inputIndex];
}

- (unint64_t)deleteLengthForString:(id)a3
{
  v15[4] = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [v4 length];
  v6 = v5 != 0;
  v7 = *MEMORY[0x29EDC7290];
  TIInputManager::input_string(v15, *(&self->super.super.super.super.isa + v7));
  v9 = KB::ns_string(v15, v8);
  KB::String::~String(v15);
  v10 = (*(&self->super.super.super.super.isa + v7))[24];
  if (v10 >= v5 && [v9 length] >= v10)
  {
    v11 = [v9 substringWithRange:{v10 - v5, v5}];
    v12 = [v4 isEqualToString:v11];

    if (v12)
    {
      v6 = v5;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v6;
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
    v6 = [(TIKeyboardInputManager_vi *)self inputIndex];
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
      v30.super_class = TIKeyboardInputManager_vi;
      v10 = [(TIKeyboardInputManager_vi *)&v30 deleteFromInput:a3];
    }

    else
    {
      v29 = v8;
      TIInputManager::input_string(v31, *(&self->super.super.super.super.isa + v5));
      v12 = KB::ns_string(v31, v11);
      v13 = [(TIKeyboardInputManager_mul *)self internalStringToExternal:v12];

      KB::String::~String(v31);
      v14 = [v13 rangeOfComposedCharacterSequenceAtIndex:v8 - 1];
      v16 = [v13 substringWithRange:{v14, v15}];
      v17 = [(TIKeyboardInputManager_mul *)self externalStringToInternal:v16];
      v18 = [(TIKeyboardInputManager_vi *)self deleteLengthForString:v17];
      if (v18)
      {
        v19 = v18;
        v20 = 1;
        do
        {
          TIInputManager::delete_from_input(*(&self->super.super.super.super.isa + v5));
          if (v20 != 1)
          {
            TIInputManager::delete_from_favonius_stroke_history(*(&self->super.super.super.super.isa + v5));
          }
        }

        while (v19 > v20++);
      }

      TIInputManager::input_string(v31, *(&self->super.super.super.super.isa + v5));
      v23 = KB::ns_string(v31, v22);
      KB::String::~String(v31);
      v24 = [(TIKeyboardInputManager_mul *)self internalStringToExternal:v23];
      v25 = [v23 substringToIndex:(*(&self->super.super.super.super.isa + v5))[24]];
      v26 = [(TIKeyboardInputManager_mul *)self internalStringToExternal:v25];

      v10 = [(TIKeyboardInputManager_vi *)self suffixOfDesiredString:v26 toAppendToInputString:*(&self->super.super.super.super.isa + v9) withInputIndex:v29 afterDeletionCount:a3];
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

  v27 = *MEMORY[0x29EDCA608];

  return v10;
}

- (void)updateUnikeyWithVietnameseType:(int)a3
{
  if (a3 <= 3)
  {
    v3 = dword_29EA84830[a3];
    UnikeySetInputMethod();
  }
}

- (void)updateChoseSecondaryOnBackspaceIntoWord
{
  v7[4] = *MEMORY[0x29EDCA608];
  TIInputManager::input_string(v7, *(&self->super.super.super.super.isa + *MEMORY[0x29EDC7290]));
  v4 = KB::ns_string(v7, v3);
  KB::String::~String(v7);
  v5 = [(TIKeyboardInputManager_vi *)self internalStringToExternal:v4 ignoreCompositionDisabled:1];
  -[TIKeyboardInputManager_mul setChoseSecondary:](self, "setChoseSecondary:", [v5 isEqualToString:*(&self->super.super.super.super.isa + *MEMORY[0x29EDC7288])] ^ 1);

  v6 = *MEMORY[0x29EDCA608];
}

@end