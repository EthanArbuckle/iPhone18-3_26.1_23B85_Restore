@interface TIKeyboardInputManager_ko
- (BOOL)canHandleKeyHitTest;
- (BOOL)isUsingMultilingual;
- (BOOL)usesComposingInput;
- (Hangul2SetAutomata)batchConverter;
- (TIKeyboardInputManager_ko)initWithConfig:(id)config keyboardState:(id)state;
- (USet)validUSetForAutocorrection;
- (id)composeJamo:(id)jamo;
- (id)deleteFromInput:(unint64_t *)input;
- (id)geometryModelData;
- (id)internalStringToExternal:(id)external ignoreCompositionDisabled:(BOOL)disabled;
- (id)rawInputString;
- (unint64_t)additionalAnalysisOptions;
- (void)addInput:(id)input withContext:(id)context;
- (void)clearInput;
- (void)dealloc;
- (void)initImplementation;
- (void)insertSpaceBeforeInputWithContext:(id)context;
- (void)setInput:(id)input;
- (void)syncToLayoutState:(id)state;
@end

@implementation TIKeyboardInputManager_ko

- (TIKeyboardInputManager_ko)initWithConfig:(id)config keyboardState:(id)state
{
  configCopy = config;
  v14.receiver = self;
  v14.super_class = TIKeyboardInputManager_ko;
  v7 = [(TIKeyboardInputManagerMecabra *)&v14 initWithConfig:configCopy keyboardState:state];
  v8 = v7;
  if (v7)
  {
    v7->_deleteSyllable = 1;
    mEMORY[0x29EDC7280] = [MEMORY[0x29EDC7280] sharedWordSearchController];
    inputMode = [configCopy inputMode];
    v11 = [mEMORY[0x29EDC7280] wordSearchForInputMode:inputMode];
    wordSearch = v8->_wordSearch;
    v8->_wordSearch = v11;
  }

  return v8;
}

- (void)initImplementation
{
  if (!*(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]))
  {
    operator new();
  }

  return *(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]);
}

- (Hangul2SetAutomata)batchConverter
{
  result = self->_batchConverter;
  if (!result)
  {
    operator new();
  }

  return result;
}

- (void)syncToLayoutState:(id)state
{
  stateCopy = state;
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManager_ko;
  [(TIKeyboardInputManager_ko *)&v10 syncToLayoutState:stateCopy];
  softwareLayout = [stateCopy softwareLayout];
  v6 = [softwareLayout isEqualToString:@"Korean10Key"];

  if (v6)
  {
    *([(TIKeyboardInputManager_ko *)self batchConverter]+ 36) = 1;
    TIInputManager_ko::set_is_10key(*(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]), 1);
    wordSearch = [(TIKeyboardInputManager_ko *)self wordSearch];
    [wordSearch setTenKeyEnabled:1];
LABEL_5:

    goto LABEL_6;
  }

  softwareLayout2 = [stateCopy softwareLayout];
  v9 = [softwareLayout2 isEqualToString:@"Korean-With-QWERTY"];

  if (v9)
  {
    wordSearch = [(TIKeyboardInputManager_ko *)self wordSearch];
    [wordSearch setBilingualEnabled:1];
    goto LABEL_5;
  }

LABEL_6:
}

- (void)dealloc
{
  batchConverter = self->_batchConverter;
  if (batchConverter)
  {
    Hangul2SetAutomata::~Hangul2SetAutomata(batchConverter);
    MEMORY[0x29EDA3FF0]();
    self->_batchConverter = 0;
  }

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ko;
  [(TIKeyboardInputManagerMecabra *)&v4 dealloc];
}

- (id)composeJamo:(id)jamo
{
  jamoCopy = jamo;
  v5 = __composeJamo(jamoCopy, [(TIKeyboardInputManager_ko *)self batchConverter]);

  return v5;
}

- (BOOL)canHandleKeyHitTest
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManager_ko;
  canHandleKeyHitTest = [(TIKeyboardInputManager_ko *)&v5 canHandleKeyHitTest];
  if (canHandleKeyHitTest)
  {
    LOBYTE(canHandleKeyHitTest) = TIInputManager_ko::is_10key(*(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290])) ^ 1;
  }

  return canHandleKeyHitTest;
}

- (BOOL)usesComposingInput
{
  currentInputModeIdentifier = [(TIKeyboardInputManagerBase *)self currentInputModeIdentifier];
  v4 = TIInputModeGetComponentsFromIdentifier();
  v5 = [v4 objectForKey:@"sw"];

  v6 = ([v5 isEqualToString:@"Korean"] & 1) != 0 || -[TIKeyboardInputManager_ko isUsingMultilingual](self, "isUsingMultilingual");
  return v6;
}

- (id)internalStringToExternal:(id)external ignoreCompositionDisabled:(BOOL)disabled
{
  externalCopy = external;
  if ([(TIKeyboardInputManager_ko *)self isUsingMultilingual]&& !disabled && [(TIKeyboardInputManager_mul *)self choseSecondary])
  {
    v10.receiver = self;
    v10.super_class = TIKeyboardInputManager_ko;
    v7 = [(TIKeyboardInputManager_mul *)&v10 internalStringToExternal:externalCopy ignoreCompositionDisabled:0];
  }

  else
  {
    v7 = [(TIKeyboardInputManager_ko *)self composeJamo:externalCopy];
  }

  v8 = v7;

  return v8;
}

- (void)clearInput
{
  self->_deleteSyllable = 1;
  v2.receiver = self;
  v2.super_class = TIKeyboardInputManager_ko;
  [(TIKeyboardInputManagerMecabra *)&v2 clearInput];
}

- (void)setInput:(id)input
{
  v24 = *MEMORY[0x29EDCA608];
  inputCopy = input;
  [(TIKeyboardInputManager_ko *)self clearInput];
  v22.receiver = self;
  v22.super_class = TIKeyboardInputManager_ko;
  [(TIKeyboardInputManager_mul *)&v22 setInput:inputCopy];
  if ([(TIKeyboardInputManager_ko *)self usesComposingInput])
  {
    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [composingInput removeAllInputs];

    v6 = [(TIKeyboardInputManager_mul *)self externalStringToInternal:inputCopy];
    if ([(TIKeyboardInputManager_ko *)self isUsingMultilingual])
    {
      keyLayoutMapAsNearbyKeys = [(TIKeyboardInputManager_mul *)self keyLayoutMapAsNearbyKeys];
    }

    else
    {
      keyLayoutMapAsNearbyKeys = 0;
    }

    v17 = v6;
    v8 = [v6 _asTypeInputsWithNearbyKeyMap:keyLayoutMapAsNearbyKeys];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    inputs = [v8 inputs];
    v10 = [inputs countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(inputs);
          }

          v14 = *(*(&v18 + 1) + 8 * v13);
          composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          [composingInput2 composeNew:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [inputs countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }
  }

  v16 = *MEMORY[0x29EDCA608];
}

- (id)rawInputString
{
  v6[4] = *MEMORY[0x29EDCA608];
  TIInputManager::input_string(v6, *(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]));
  v3 = KB::ns_string(v6, v2);
  KB::String::~String(v6);
  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

- (USet)validUSetForAutocorrection
{
  if ([TIKeyboardInputManager_ko validUSetForAutocorrection]::onceToken != -1)
  {
    [TIKeyboardInputManager_ko validUSetForAutocorrection];
  }

  return [TIKeyboardInputManager_ko validUSetForAutocorrection]::hangul_set;
}

- (id)geometryModelData
{
  v48 = *MEMORY[0x29EDCA608];
  if ([(TIKeyboardInputManager_ko *)self usesComposingInput])
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    inputs = [composingInput inputs];

    v33 = inputs;
    v5 = [inputs countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v43;
      v8 = 0x29EDC7000uLL;
      v30 = *v43;
      do
      {
        v9 = 0;
        v32 = v6;
        do
        {
          if (*v43 != v7)
          {
            objc_enumerationMutation(v33);
          }

          v10 = *(*(&v42 + 1) + 8 * v9);
          v11 = *(v8 + 504);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v10;
            nearbyKeys = [v12 nearbyKeys];
            v13 = [nearbyKeys count];
            v34 = &v29;
            v14 = &v29 - ((8 * v13 + 23) & 0xFFFFFFFFFFFFFFF0);
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v36 = v12;
            nearbyKeys2 = [v12 nearbyKeys];
            v16 = [nearbyKeys2 countByEnumeratingWithState:&v38 objects:v46 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = 0;
              v19 = *v39;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v39 != v19)
                  {
                    objc_enumerationMutation(nearbyKeys2);
                  }

                  v21 = *(*(&v38 + 1) + 8 * i);
                  if ([v21 character])
                  {
                    v22 = &v14[8 * v18];
                    *v22 = [v21 character];
                    [v21 logLikelihood];
                    *(v22 + 1) = v23;
                    ++v18;
                  }
                }

                v17 = [nearbyKeys2 countByEnumeratingWithState:&v38 objects:v46 count:16];
              }

              while (v17);
            }

            else
            {
              v18 = 0;
            }

            v24 = &v14[8 * v18];
            *v24 = 0;
            *(v24 + 1) = 0;
            v25 = [MEMORY[0x29EDB8DA0] dataWithBytes:v14 length:8 * v18 + 8];
            [array addObject:v25];

            v7 = v30;
            v8 = 0x29EDC7000;
            v6 = v32;
          }

          ++v9;
        }

        while (v9 != v6);
        v6 = [v33 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v37.receiver = self;
    v37.super_class = TIKeyboardInputManager_ko;
    array = [(TIKeyboardInputManagerMecabra *)&v37 geometryModelData];
  }

  v26 = *MEMORY[0x29EDCA608];
  v27 = array;

  return v27;
}

- (void)addInput:(id)input withContext:(id)context
{
  v20[4] = *MEMORY[0x29EDCA608];
  inputCopy = input;
  contextCopy = context;
  string = [inputCopy string];
  self->_deleteSyllable = 0;
  if (![(TIKeyboardInputManager_ko *)self isUsingMultilingual])
  {
    [inputCopy setAutoshifted:0];
    [inputCopy setUppercase:0];
  }

  isMultitap = [inputCopy isMultitap];
  v10 = [string isEqualToString:@"ㆍ"];
  v11 = MEMORY[0x29EDC7290];
  if (!v10)
  {
    if (!isMultitap)
    {
      goto LABEL_12;
    }

    v16 = 1;
    goto LABEL_11;
  }

  TIInputManager::input_string(v20, *(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]));
  v13 = KB::ns_string(v20, v12);
  KB::String::~String(v20);
  v14 = [v13 hasSuffix:@"ㆍㆍ"];

  v15 = v14 | isMultitap;
  if (v14)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  if (v15)
  {
    do
    {
LABEL_11:
      [(TIKeyboardInputManagerMecabra *)self deleteFromInputWithContext:contextCopy];
      --v16;
    }

    while (v16);
  }

LABEL_12:
  v19.receiver = self;
  v19.super_class = TIKeyboardInputManager_ko;
  [(TIKeyboardInputManager_ko *)&v19 addInput:inputCopy withContext:contextCopy];
  v17 = *(&self->super.super.super.super.super.isa + *v11);
  if (v17 && -858993459 * ((*(v17 + 16) - *(v17 + 8)) >> 3))
  {
    [(TIKeyboardInputManagerMecabra *)self saveGeometryForInput:inputCopy atIndex:*(v17 + 96)];
  }

  if ([(TIKeyboardInputManager_ko *)self usesComposingInput]&& string && [(TIKeyboardInputManagerMecabra *)self stringEndsWord:string])
  {
    [(TIKeyboardInputManager_ko *)self clearInput];
  }

  v18 = *MEMORY[0x29EDCA608];
}

- (void)insertSpaceBeforeInputWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ko;
  [(TIKeyboardInputManager_ko *)&v4 insertSpaceBeforeInputWithContext:context];
  if ([(TIKeyboardInputManager_ko *)self usesComposingInput])
  {
    [(TIKeyboardInputManager_ko *)self clearInput];
  }
}

- (id)deleteFromInput:(unint64_t *)input
{
  v45[4] = *MEMORY[0x29EDCA608];
  if (!input)
  {
    if (!self->_deleteSyllable)
    {
      goto LABEL_8;
    }

LABEL_5:
    v43.receiver = self;
    v43.super_class = TIKeyboardInputManager_ko;
    v5 = [(TIKeyboardInputManager_ko *)&v43 deleteFromInput:input];
    if (![(TIKeyboardInputManager_ko *)self usesComposingInput])
    {
      goto LABEL_33;
    }

    wordSearch = [(TIKeyboardInputManager_ko *)self wordSearch];
    [wordSearch cancel];

    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [composingInput removeAllInputs];

    TIInputManager::input_stem(v45, *(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]));
    v9 = KB::ns_string(v45, v8);
    KB::String::~String(v45);
    if ([(TIKeyboardInputManager_ko *)self isUsingMultilingual])
    {
      keyLayoutMapAsNearbyKeys = [(TIKeyboardInputManager_mul *)self keyLayoutMapAsNearbyKeys];
    }

    else
    {
      keyLayoutMapAsNearbyKeys = 0;
    }

    [v9 _asTypeInputsWithNearbyKeyMap:keyLayoutMapAsNearbyKeys];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = v42 = 0u;
    inputs = [v38 inputs];
    v28 = [inputs countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v40;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v40 != v30)
          {
            objc_enumerationMutation(inputs);
          }

          v32 = *(*(&v39 + 1) + 8 * i);
          composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          [composingInput2 composeNew:v32];
        }

        v29 = [inputs countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v29);
    }

    composingInput3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v34ComposingInput = [composingInput3 composingInput];

    if (!v34ComposingInput)
    {
      [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
    }

    goto LABEL_32;
  }

  *input = 0;
  if (self->_deleteSyllable)
  {
    goto LABEL_5;
  }

  *input = 1;
LABEL_8:
  v11 = *MEMORY[0x29EDC7290];
  if (!*(&self->super.super.super.super.super.isa + v11))
  {
    v5 = 0;
    goto LABEL_33;
  }

  inputIndex = [(TIKeyboardInputManager_ko *)self inputIndex];
  TIInputManager::delete_from_input(*(&self->super.super.super.super.super.isa + v11));
  TIInputManager::input_string(v45, *(&self->super.super.super.super.super.isa + v11));
  keyLayoutMapAsNearbyKeys = KB::ns_string(v45, v13);
  KB::String::~String(v45);
  v14 = (*(&self->super.super.super.super.super.isa + v11))[24];
  if ([(TIKeyboardInputManager_ko *)self usesComposingInput])
  {
    wordSearch2 = [(TIKeyboardInputManager_ko *)self wordSearch];
    [wordSearch2 cancel];

    composingInput4 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [composingInput4 removeComposingInput];

    composingInput5 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v17ComposingInput = [composingInput5 composingInput];

    if (!v17ComposingInput)
    {
      [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
    }

    if (![(TIKeyboardInputManager_ko *)self isUsingMultilingual])
    {
      composingInput6 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      asInlineText = [composingInput6 asInlineText];

      composingInput7 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      LODWORD(composingInput6) = [composingInput7 asInlineTextCursorIndex];

      v14 = composingInput6;
      keyLayoutMapAsNearbyKeys = asInlineText;
    }
  }

  v22 = *MEMORY[0x29EDC7288];
  if (*(&self->super.super.super.super.super.isa + v22))
  {
    v23 = [(TIKeyboardInputManager_mul *)self internalStringToExternal:keyLayoutMapAsNearbyKeys];
    v24 = [keyLayoutMapAsNearbyKeys substringToIndex:{objc_msgSend(keyLayoutMapAsNearbyKeys, "_indexFromStartingIndex:byIncrementingComposedCharacterSequenceCount:", 0, v14)}];
    v25 = [(TIKeyboardInputManager_mul *)self internalStringToExternal:v24];

    v26 = [(TIKeyboardInputManager_ko *)self suffixOfDesiredString:v25 toAppendToInputString:*(&self->super.super.super.super.super.isa + v22) withInputIndex:inputIndex afterDeletionCount:input];
    [*(&self->super.super.super.super.super.isa + v22) setString:v23];
    if (![v26 length])
    {

      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  v9 = v26;
  v5 = v9;
LABEL_32:

LABEL_33:
  v36 = *MEMORY[0x29EDCA608];

  return v5;
}

- (unint64_t)additionalAnalysisOptions
{
  wordSearch = [(TIKeyboardInputManager_ko *)self wordSearch];
  if ([wordSearch tenKeyEnabled])
  {
    v3 = 2105344;
  }

  else
  {
    v3 = 0x200000;
  }

  if ([wordSearch bilingualEnabled])
  {
    v3 &= 0x2000u;
  }

  return v3;
}

- (BOOL)isUsingMultilingual
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  currentInputModeIdentifier = [(TIKeyboardInputManagerBase *)self currentInputModeIdentifier];
  v4 = TIInputModeGetComponentsFromIdentifier();
  v5 = [v4 objectForKey:@"sw"];

  if ([v5 isEqualToString:@"Korean-With-QWERTY"])
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManager_ko;
    isUsingMultilingual = [(TIKeyboardInputManager_mul *)&v8 isUsingMultilingual];
  }

  else
  {
    isUsingMultilingual = 0;
  }

  return isUsingMultilingual;
}

@end