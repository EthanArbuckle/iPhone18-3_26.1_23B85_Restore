@interface TIKeyboardInputManager_ja_Kana
- (_NSRange)analysisStringRange;
- (id)geometryDataWithSubstitutedMultitapKeys:(id)keys;
- (id)geometryModelData;
- (id)keyboardConfigurationLayoutTag;
- (id)liveConversionTextInputManager;
- (id)validCharacterSetForAutocorrection;
- (void)_deleteFromInput;
- (void)addInput:(id)input withContext:(id)context;
- (void)buildFlickTables;
- (void)calculateGeometryForInput:(id)input;
- (void)deleteFromInputWithContext:(id)context;
- (void)resetWordSearchWithClass:(Class)class;
- (void)setInSplitKeyboardMode:(BOOL)mode;
- (void)syncToLayoutState:(id)state;
@end

@implementation TIKeyboardInputManager_ja_Kana

- (id)liveConversionTextInputManager
{
  if ([(TIKeyboardInputManager_ja_Kana *)self inHardwareKeyboardMode])
  {
    v3 = [TIKeyboardInputManagerLiveConversion_ja_Kana alloc];
    config = [(TIKeyboardInputManager_ja_Kana *)self config];
    keyboardState = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
    v6 = [(TIKeyboardInputManagerLiveConversion_ja *)v3 initWithConfig:config keyboardState:keyboardState];
  }

  else
  {
    v7 = [TIKeyboardInputManager_ja_Inline alloc];
    config = [(TIKeyboardInputManager_ja_Kana *)self config];
    keyboardState = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
    wordSearch = [(TIKeyboardInputManager_ja *)self wordSearch];
    v6 = [(TIKeyboardInputManager_ja_Inline *)v7 initWithConfig:config keyboardState:keyboardState wordSearch:wordSearch romajiMode:0];
  }

  return v6;
}

- (void)resetWordSearchWithClass:(Class)class
{
  if (__PAIR64__(self->_knowSplitMode, self->_knowHardwareMode) == 0x100000001 && *(&self->_knowSplitMode + 1))
  {
LABEL_5:
    if (([(TIWordSearch *)self->super._kbws isMemberOfClass:class]& 1) == 0)
    {
      v6 = [class alloc];
      inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
      v8 = [v6 initTIWordSearchWithInputMode:inputMode];
      kbws = self->super._kbws;
      self->super._kbws = v8;

      [(TIWordSearch *)self->super._kbws setShouldLearnAcceptedCandidate:self->super._shouldLearnAcceptedCandidate];
      [(TIWordSearch *)self->super._kbws setInsertKatakanaAtIndex:4];
    }

    v10 = self->super._kbws;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = self->super._kbws;
      knowInputMode = self->_knowInputMode;

      [(TIWordSearch *)v11 setFlickOnly:knowInputMode];
    }

    return;
  }

  keyboardState = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
  if ([keyboardState hardwareKeyboardMode])
  {
    knowSplitMode = self->_knowSplitMode;

    if (!knowSplitMode)
    {
      return;
    }

    goto LABEL_5;
  }
}

- (void)syncToLayoutState:(id)state
{
  stateCopy = state;
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManager_ja_Kana;
  [(TIKeyboardInputManager_ja *)&v10 syncToLayoutState:stateCopy];
  self->_knowInputMode = [stateCopy canMultitap] ^ 1;
  userInterfaceIdiom = [stateCopy userInterfaceIdiom];
  hasCandidateKey = 1;
  if (userInterfaceIdiom == 1)
  {
    hasCandidateKey = [stateCopy hasCandidateKey];
  }

  self->_isFlickOnly = hasCandidateKey;
  self->_knowHardwareMode = 1;
  *(&self->_knowSplitMode + 1) = 1;
  [(TIKeyboardInputManager_ja_Kana *)self setSupportsFlickAutocorrection:1];
  if (self->_isFlickOnly)
  {
    v7 = objc_opt_class();
  }

  else
  {
    v7 = 0;
  }

  keyboardState = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
  hardwareKeyboardMode = [keyboardState hardwareKeyboardMode];

  if (hardwareKeyboardMode)
  {
    v7 = objc_opt_class();
  }

  [(TIKeyboardInputManager_ja_Kana *)self resetWordSearchWithClass:v7];
  [(TIKeyboardInputManager_ja_Kana *)self buildFlickTables];
}

- (id)keyboardConfigurationLayoutTag
{
  if (self->_isFlickOnly && [(TIKeyboardInputManager_ja *)self inputCount:v2])
  {
    return @"VoicedSoundMarkAndSemiVoicedSoundMarkAndSmallVariation";
  }

  else
  {
    return @"Default";
  }
}

- (void)setInSplitKeyboardMode:(BOOL)mode
{
  keyboardState = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
  layoutState = [keyboardState layoutState];
  v7 = [layoutState userInterfaceIdiom] != 1 || mode;
  self->_isFlickOnly = v7;

  if (self->_isFlickOnly && (-[TIKeyboardInputManager_ja_Kana keyboardState](self, "keyboardState"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 hardwareKeyboardMode], v8, !v9))
  {
    v10 = off_29F3788B0;
  }

  else
  {
    v10 = off_29F3788B8;
  }

  v11 = *v10;
  v12 = objc_opt_class();
  *(&self->_knowSplitMode + 1) = 1;

  [(TIKeyboardInputManager_ja_Kana *)self resetWordSearchWithClass:v12];
}

- (void)buildFlickTables
{
  selfCopy = self;
  v54 = *MEMORY[0x29EDCA608];
  if (self->_isFlickOnly)
  {
    v3 = &OBJC_IVAR___TIKeyboardInputManager_ja_Kana__kanaFlickDirectionMap_3x3;
  }

  else
  {
    v3 = &OBJC_IVAR___TIKeyboardInputManager_ja_Kana__kanaFlickDirectionMap_50on;
  }

  v4 = *(&self->super.super.super.super.super.super.isa + *v3);
  if (v4)
  {
    if (selfCopy->_isFlickOnly)
    {
      objc_storeStrong(&selfCopy->_kanaFlickDirectionMap_current, selfCopy->_kanaFlickDirectionMap_3x3);
      v5 = 952;
    }

    else
    {
      objc_storeStrong(&selfCopy->_kanaFlickDirectionMap_current, selfCopy->_kanaFlickDirectionMap_50on);
      v5 = 960;
    }

    objc_storeStrong(&selfCopy->_kanaFlickKeyMap_current, *(&selfCopy->super.super.super.super.super.super.isa + v5));
  }

  else
  {
    inputMode = [(TIKeyboardInputManagerBase *)selfCopy inputMode];
    normalizedIdentifier = [inputMode normalizedIdentifier];

    if (selfCopy->_isFlickOnly)
    {
      v8 = @"iPhone";
    }

    else
    {
      v8 = @"iPad";
    }

    v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Keyboard-%@-%@.plist", normalizedIdentifier, v8];
    v10 = TIBundlePathForInputMode();
    v11 = [v10 stringByAppendingPathComponent:v9];
    defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
    v13 = [defaultManager fileExistsAtPath:v11];

    if (v13)
    {
      v14 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithContentsOfFile:v11 options:1 error:0];
      if (v14)
      {
        v15 = [MEMORY[0x29EDBA0C0] propertyListWithData:v14 options:0 format:0 error:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v40 = v14;
          v41 = v11;
          v42 = v9;
          v43 = normalizedIdentifier;
          v47 = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@" "];
          if (selfCopy->_isFlickOnly)
          {
            v16 = 43;
          }

          else
          {
            v16 = 38;
          }

          v17 = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:v16];
          if (selfCopy->_isFlickOnly)
          {
            v18 = 11;
          }

          else
          {
            v18 = 30;
          }

          v45 = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:v18];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v39 = v15;
          v19 = v15;
          v20 = [v19 countByEnumeratingWithState:&v49 objects:v53 count:16];
          if (v20)
          {
            v21 = v20;
            v48 = *v50;
            v44 = selfCopy;
            v46 = v19;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v50 != v48)
                {
                  objc_enumerationMutation(v19);
                }

                v23 = *(*(&v49 + 1) + 8 * i);
                if ([v23 hasPrefix:@"Roman-Accent-"])
                {
                  v24 = [v23 characterAtIndex:{objc_msgSend(@"Roman-Accent-", "length")}];
                  v25 = v24;
                  v26 = !selfCopy->_isFlickOnly || v24 == 12289;
                  if (v26 || (v24 - 12353) <= 0x53u)
                  {
                    v27 = [v19 objectForKey:v23];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v28 = [v27 objectForKey:@"Strings"];
                      v29 = [v28 componentsSeparatedByCharactersInSet:v47];

                      if ([v29 count] == 5)
                      {
                        for (j = 1; j != 5; ++j)
                        {
                          v31 = [v29 objectAtIndexedSubscript:j];
                          if ([v31 length])
                          {
                            v32 = [MEMORY[0x29EDBA070] numberWithInteger:j];
                            [(NSDictionary *)v17 setObject:v32 forKey:v31];
                          }
                        }

                        v33 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:v25];
                        [(NSDictionary *)v45 setObject:v29 forKey:v33];

                        selfCopy = v44;
                      }

                      v19 = v46;
                    }
                  }
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v49 objects:v53 count:16];
            }

            while (v21);
          }

          if (selfCopy->_isFlickOnly)
          {
            [(TIKeyboardInputManager_ja_Kana *)selfCopy setKanaFlickDirectionMap_3x3:v17];
            v34 = v45;
            [(TIKeyboardInputManager_ja_Kana *)selfCopy setKanaFlickKeyMap_3x3:v45];
          }

          else
          {
            [(TIKeyboardInputManager_ja_Kana *)selfCopy setKanaFlickDirectionMap_50on:v17];
            v34 = v45;
            [(TIKeyboardInputManager_ja_Kana *)selfCopy setKanaFlickKeyMap_50on:v45];
          }

          normalizedIdentifier = v43;
          v4 = 0;
          v9 = v42;
          v15 = v39;
          kanaFlickDirectionMap_current = selfCopy->_kanaFlickDirectionMap_current;
          selfCopy->_kanaFlickDirectionMap_current = v17;
          v36 = v17;

          kanaFlickKeyMap_current = selfCopy->_kanaFlickKeyMap_current;
          selfCopy->_kanaFlickKeyMap_current = v34;

          v14 = v40;
          v11 = v41;
        }
      }
    }
  }

  v38 = *MEMORY[0x29EDCA608];
}

- (void)calculateGeometryForInput:(id)input
{
  v85 = *MEMORY[0x29EDCA608];
  inputCopy = input;
  inputIndex = [(TIKeyboardInputManager_ja *)self inputIndex];
  string = [inputCopy string];
  v7 = [string characterAtIndex:0];

  kanaFlickDirectionMap_current = self->_kanaFlickDirectionMap_current;
  string2 = [inputCopy string];
  v10 = [(NSDictionary *)kanaFlickDirectionMap_current objectForKey:string2];
  integerValue = [v10 integerValue];

  if ((v7 - 12353) >= 0x54)
  {
    v14 = v7 != 12289 && integerValue == 0;
    v12 = !self->_isFlickOnly || v14;
  }

  else
  {
    v12 = 0;
  }

  v15 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x29EDC7290]);
  if (!(-858993459 * ((*(v15 + 16) - *(v15 + 8)) >> 3)))
  {
    goto LABEL_17;
  }

  v16 = *(v15 + 96);
  v17 = TIInputManager::keys_for_input(v15);
  if (!v17)
  {
    goto LABEL_17;
  }

  v18 = v17;
  keyboardState = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
  if ([keyboardState hardwareKeyboardMode])
  {

LABEL_17:
    [(TIKeyboardInputManagerMecabra *)self restoreGeometryForInput:inputCopy atIndex:inputIndex];
    goto LABEL_18;
  }

  v20 = [inputCopy isMultitap] | v12;

  if (v20)
  {
    goto LABEL_17;
  }

  v22 = MEMORY[0x29EDBA070];
  touchEvent = [inputCopy touchEvent];
  v24 = [v22 numberWithInteger:{objc_msgSend(touchEvent, "pathIndex")}];

  touchDownEvents = [(TIKeyboardInputManagerMecabra *)self touchDownEvents];
  v26 = [touchDownEvents objectForKey:v24];

  touchUpEvents = [(TIKeyboardInputManagerMecabra *)self touchUpEvents];
  v28 = [touchUpEvents objectForKey:v24];

  v29 = MEMORY[0x29EDB90B8];
  if (v26)
  {
    [v26 location];
    v31 = v30;
    v33 = v32;
    if (v28)
    {
LABEL_21:
      [v28 location];
      v36 = *v29;
      v37 = v29[1];
      goto LABEL_24;
    }
  }

  else
  {
    v31 = *MEMORY[0x29EDB90B8];
    v33 = *(MEMORY[0x29EDB90B8] + 8);
    if (v28)
    {
      goto LABEL_21;
    }
  }

  v36 = *v29;
  v37 = v29[1];
  v35 = v37;
  v34 = *v29;
LABEL_24:
  v38 = v34 - v31;
  v39 = v35 - v33;
  v40 = hypot(v34 - v31, v35 - v33);
  if (v33 == v37 && v31 == v36)
  {
    v42 = 0.0;
  }

  else
  {
    v42 = v40;
  }

  if (!integerValue && v42 > 0.0)
  {
    v40 = atan2(-v39, v38) * 180.0 / 3.14159265;
    if (v40 < 0.0)
    {
      v40 = v40 + 360.0;
    }

    if (v40 <= 45.0)
    {
      integerValue = 2;
    }

    else if (v40 <= 135.0)
    {
      integerValue = 1;
    }

    else if (v40 <= 225.0)
    {
      integerValue = 4;
    }

    else if (v40 <= 315.0)
    {
      integerValue = 3;
    }

    else
    {
      integerValue = 2;
    }
  }

  if ([inputCopy isFlick])
  {
    v43 = v42 + -26.0;
    if (v42 + -26.0 < 1.0)
    {
      v43 = 1.0;
    }

    v44 = v43 * v43 * -0.0002;
    goto LABEL_49;
  }

  v45 = 0.0;
  if (v42 > 0.0)
  {
    v44 = -5.0 / v42;
LABEL_49:
    v45 = v44;
  }

  v77 = v26;
  if (TI_IS_WILDCAT())
  {
    v46 = -3.0;
  }

  else
  {
    v46 = -2.0;
  }

  v47 = *v18;
  if (*v18)
  {
    v75 = v28;
    v76 = v24;
    v78 = 0;
    v48 = 0;
    v49 = v18[1];
    v50 = 8 * v47;
    while (*(*v49 + 32) >= v46)
    {
      v51 = *(*v49 + 8);
      v52 = *(v51 + 16);
      if (!v52)
      {
        v52 = v51 + 24;
      }

      v81 = v52;
      v82 = 0;
      v83 = *(v51 + 8);
      v84 = 0;
      KB::String::iterator::initialize(&v81);
      v53 = v84;
      if ((v84 - 12353) < 0x54 || v84 == 12289 && self->_isFlickOnly)
      {
        v54 = *(*v49 + 32);
        v55 = &v80[v48];
        *v55 = v84;
        v55[1] = v54;
        if (integerValue)
        {
          v56 = [(TIKeyboardInputManager_ja_Kana *)self flickKeyForBaseKey:v53 direction:integerValue];
          if (v56)
          {
            v57 = v56;
            isFlick = [inputCopy isFlick];
            if (v53 == 12289)
            {
              if (isFlick)
              {
                *v55 = v57;
              }
            }

            else
            {
              if (isFlick)
              {
                v55[1] = v45 + v54;
                v59 = v78;
                v79[4 * v78] = v57;
              }

              else
              {
                v59 = v78;
                v79[4 * v78] = v57;
                v54 = v45 + v54;
              }

              *&v79[4 * v59 + 2] = v54;
              ++v78;
            }
          }
        }

        if (++v48 == 10)
        {
          v48 = 10;
          break;
        }
      }

      v49 += 8;
      v50 -= 8;
      if (!v50)
      {
        break;
      }
    }

    v60 = v48;
    v47 = v78;
    v28 = v75;
    v24 = v76;
  }

  else
  {
    v60 = 0;
  }

  v61 = v80;
  v62 = &v80[v60];
  *v62 = 0;
  *(v62 + 1) = 0;
  v63 = v79;
  v64 = &v79[4 * v47];
  *v64 = 0;
  *(v64 + 1) = 0;
  [(TIKeyboardInputManagerMecabra *)self padGeometryForInput:inputCopy atIndex:inputIndex];
  geometryDataArray = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
  v66 = 0;
  v67 = 0;
  while (*v61)
  {
    v68 = v61[1];
    if (!*v63 || (v69 = v63[1], v68 > v69))
    {
      v70 = (&v81 + v66);
      *v70 = *v61;
      v70[1] = v68;
      v61 += 2;
      goto LABEL_84;
    }

LABEL_83:
    v71 = (&v81 + v66);
    *v71 = *v63;
    v71[1] = v69;
    v63 += 2;
LABEL_84:
    ++v67;
    v66 += 8;
  }

  if (*v63)
  {
    v69 = v63[1];
    goto LABEL_83;
  }

  v72 = &v81 + v67;
  *v72 = 0;
  *(v72 + 1) = 0;
  0x7FFFFFFF8 = [MEMORY[0x29EDB8DA0] dataWithBytes:&v81 length:(v66 + 8) & 0x7FFFFFFF8];
  v74 = inputIndex - 1;
  [geometryDataArray insertObject:0x7FFFFFFF8 atIndex:v74];

  if ([(TIKeyboardInputManager_ja_Kana *)self isTypologyEnabled])
  {
    [(TIKeyboardInputManagerMecabra *)self saveTouchDataForEvent:inputCopy atIndex:v74];
  }

LABEL_18:
  v21 = *MEMORY[0x29EDCA608];
}

- (id)validCharacterSetForAutocorrection
{
  if ([TIKeyboardInputManager_ja_Kana validCharacterSetForAutocorrection]::__onceToken != -1)
  {
    [TIKeyboardInputManager_ja_Kana validCharacterSetForAutocorrection];
  }

  v3 = [TIKeyboardInputManager_ja_Kana validCharacterSetForAutocorrection]::__validCharSet;

  return v3;
}

- (id)geometryDataWithSubstitutedMultitapKeys:(id)keys
{
  v13[21] = *MEMORY[0x29EDCA608];
  keysCopy = keys;
  v4 = [keysCopy length];
  [keysCopy getBytes:v13 length:v4];
  v5 = (v4 >> 3) - 1;
  if (v5 >= 1)
  {
    v6 = v13;
    do
    {
      v7 = GetMultitapSequenceTable();
      v8 = [MEMORY[0x29EDBA0F8] stringWithCharacters:v6 length:1];
      v9 = [v7 objectForKey:v8];

      if ([v9 length])
      {
        *v6 = [v9 characterAtIndex:0];
      }

      v6 += 4;
      --v5;
    }

    while (v5);
  }

  v10 = [MEMORY[0x29EDB8DA0] dataWithBytes:v13 length:v4];

  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

- (void)addInput:(id)input withContext:(id)context
{
  v109 = *MEMORY[0x29EDCA608];
  inputCopy = input;
  contextCopy = context;
  string = [inputCopy string];
  v9 = string;
  if (string && [(__CFString *)string length])
  {
    if (!-[TIKeyboardInputManager_ja flickUsed](self, "flickUsed") && [inputCopy isFlick])
    {
      [(TIKeyboardInputManager_ja *)self setFlickUsed:1];
    }

    inputIndex = [(TIKeyboardInputManager_ja *)self inputIndex];
    if (([(TIKeyboardInputManager_ja_Kana *)self inHardwareKeyboardMode]& 1) != 0)
    {
      isPopupVariant = 0;
    }

    else
    {
      isPopupVariant = [inputCopy isPopupVariant];
    }

    v12 = [(TIKeyboardInputManager_ja *)self stringByConvertingPunctuationForInput:v9 isLockedInput:isPopupVariant];

    v13 = *MEMORY[0x29EDC72E0];
    if ([(__CFString *)v12 isEqualToString:*MEMORY[0x29EDC72E0]])
    {
      if (self->_isFlickOnly && inputIndex)
      {
        v14 = @"゛";
      }

      else
      {
        v14 = *MEMORY[0x29EDC72D0];
      }

      v12 = v14;
    }

    v15 = [(__CFString *)v12 characterAtIndex:0];
    rawInputString = [(TIKeyboardInputManager_ja *)self rawInputString];
    v17 = 0;
    v105 = 0;
    if ([inputCopy isMultitap])
    {
      if (inputIndex)
      {
        v97 = v12;
        v98 = rawInputString;
        v103 = contextCopy;
        inputString = [(TIKeyboardInputManager_ja *)self inputString];
        v100 = inputIndex;
        v19 = inputIndex - 1;
        v20 = [inputString characterAtIndex:inputIndex - 1];

        v108[0] = v20;
        v21 = [MEMORY[0x29EDBA0F8] stringWithCharacters:v108 length:1];
        v22 = GetMultitapSequenceTable();
        v23 = [v22 objectForKey:v21];
        string2 = [inputCopy string];
        v25 = [v23 isEqualToString:string2];

        if (v25)
        {
          geometryDataArray = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
          v105 = [geometryDataArray objectAtIndex:v19];

          if ([(TIKeyboardInputManager_ja_Kana *)self isTypologyEnabled])
          {
            touchDataArray = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
            v17 = [touchDataArray objectAtIndex:v19];
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
          v105 = 0;
        }

        contextCopy = v103;
        v12 = v97;

        rawInputString = v98;
        inputIndex = v100;
      }

      else
      {
        v17 = 0;
        v105 = 0;
      }

      [(TIKeyboardInputManager_ja_Kana *)self _deleteFromInput];
    }

    if (v15 == 8616)
    {
      if (inputIndex)
      {
        v104 = v17;
        inputString2 = [(TIKeyboardInputManager_ja *)self inputString];
        v101 = inputIndex;
        v28 = [inputString2 characterAtIndex:inputIndex - 1];
        v108[0] = v28;
        uppercaseLetterCharacterSet = [MEMORY[0x29EDB9F50] uppercaseLetterCharacterSet];
        LODWORD(v28) = [uppercaseLetterCharacterSet characterIsMember:v28];

        if (v28)
        {
          v30 = [MEMORY[0x29EDBA0F8] stringWithCharacters:v108 length:1];
          lowercaseString = [v30 lowercaseString];
        }

        else
        {
          lowercaseLetterCharacterSet = [MEMORY[0x29EDB9F50] lowercaseLetterCharacterSet];
          v51 = [lowercaseLetterCharacterSet characterIsMember:v108[0]];

          if (!v51)
          {
            goto LABEL_49;
          }

          v30 = [MEMORY[0x29EDBA0F8] stringWithCharacters:v108 length:1];
          lowercaseString = [v30 uppercaseString];
        }

        if (lowercaseString)
        {
          v52 = [(__CFString *)v12 stringByReplacingCharactersInRange:0 withString:1, lowercaseString];

          keyboardState = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
          inputForMarkedText = [keyboardState inputForMarkedText];

          if (!inputForMarkedText)
          {
            [contextCopy deleteBackward:1];
          }

          [(TIKeyboardInputManager_ja_Kana *)self _deleteFromInput];

          v49 = 0;
          v12 = v52;
          inputIndex = v101;
          goto LABEL_98;
        }

LABEL_49:

        v49 = 0;
        goto LABEL_50;
      }

LABEL_59:
      v49 = 0;
      goto LABEL_60;
    }

    v104 = v17;
    if (v15 != 12443)
    {
      if (v15 != 12444 || (-[TIKeyboardInputManager_ja_Kana keyboardState](self, "keyboardState"), v43 = objc_claimAutoreleasedReturnValue(), v44 = [v43 hardwareKeyboardMode], v43, !v44))
      {
        if (self->_isFlickOnly || ![(__CFString *)v12 isEqualToString:@"｢"])
        {
          v55 = inputIndex;
          if ([(TIKeyboardInputManager_ja *)self inputCount])
          {
            v56 = *MEMORY[0x29EDC72D8];
            if (-[__CFString isEqualToString:](v12, "isEqualToString:", *MEMORY[0x29EDC72D8]) & 1) != 0 || (-[__CFString isEqualToString:](v12, "isEqualToString:", v13) & 1) != 0 || (v57 = *MEMORY[0x29EDC72D0], (-[__CFString isEqualToString:](v12, "isEqualToString:", *MEMORY[0x29EDC72D0])) || ([rawInputString isEqualToString:v56] & 1) != 0 || (objc_msgSend(rawInputString, "isEqualToString:", v13) & 1) != 0 || objc_msgSend(rawInputString, "isEqualToString:", v57))
            {
              v17 = v104;
              if (([(__CFString *)v12 isEqualToString:rawInputString]& 1) == 0)
              {
                [(TIKeyboardInputManager_ja_Kana *)self acceptCurrentCandidateWithContext:contextCopy];
                v49 = 0;
                inputIndex = v55;
LABEL_99:
                v48 = v105;
                goto LABEL_100;
              }

              goto LABEL_59;
            }
          }

          [(TIKeyboardInputManager_ja_Kana *)self acceptCurrentCandidateIfSelectedWithContext:contextCopy];
          v49 = 0;
          inputIndex = v55;
        }

        else
        {

          if (inputIndex)
          {
            v45 = contextCopy;
            inputString3 = [(TIKeyboardInputManager_ja *)self inputString];
            v47 = [inputString3 characterAtIndex:inputIndex - 1];

            v48 = v105;
            if (v47 == 12301)
            {
              [(TIKeyboardInputManager_ja_Kana *)self _deleteFromInput];
            }

            else if (v47 == 12300)
            {
              [(TIKeyboardInputManager_ja_Kana *)self _deleteFromInput];
              v49 = 0;
              v12 = @"」";
LABEL_124:
              contextCopy = v45;
LABEL_96:
              v17 = v104;
LABEL_100:
              [(TIKeyboardInputManager_ja *)self setIsEmojiFacemarkMode:0];
              [(TIKeyboardInputManager_ja *)self setFilterCandidatesUsingInputIndex:0];
              [inputCopy setString:v12];
              v106.receiver = self;
              v106.super_class = TIKeyboardInputManager_ja_Kana;
              [(TIKeyboardInputManager_ja_Kana *)&v106 addInput:inputCopy withContext:contextCopy];
              if (![(TIKeyboardInputManager_ja_Kana *)self supportsFlickAutocorrection]|| ([(__CFString *)v12 isEqualToString:*MEMORY[0x29EDC72D0]]& 1) != 0)
              {
                goto LABEL_102;
              }

              if (v49 && v48)
              {
                v104 = v17;
                v80 = inputIndex;
                geometryDataArray2 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
                v82 = v48;
                v83 = [v82 length];
                v105 = v82;
                [v82 getBytes:v108 length:v83];
                v84 = (v83 >> 3) - 1;
                if (v84 >= 1)
                {
                  v85 = v108;
                  do
                  {
                    v86 = *v85;
                    if ((v86 - 12353) <= 0x53)
                    {
                      v87 = Kana_variant_map[v86 - 12353];
                      if (v87)
                      {
                        *v85 = v87;
                      }
                    }

                    v85 += 4;
                    --v84;
                  }

                  while (v84);
                }

                v88 = [MEMORY[0x29EDB8DA0] dataWithBytes:v108 length:v83];

                v89 = v80 - 1;
                [geometryDataArray2 insertObject:v88 atIndex:v80 - 1];

                if ([(TIKeyboardInputManager_ja_Kana *)self isTypologyEnabled])
                {
                  v17 = v104;
                  if (v104)
                  {
                    touchDataArray2 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
                    v91 = touchDataArray2;
                    v92 = v104;
                    v93 = v89;
LABEL_120:
                    [touchDataArray2 insertObject:v92 atIndex:v93];

                    goto LABEL_60;
                  }

                  goto LABEL_60;
                }
              }

              else
              {
                if (![inputCopy isMultitap] || !v48)
                {
                  [(TIKeyboardInputManager_ja_Kana *)self calculateGeometryForInput:inputCopy];
                  goto LABEL_102;
                }

                v104 = v17;
                geometryDataArray3 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
                v105 = v48;
                v95 = [(TIKeyboardInputManager_ja_Kana *)self geometryDataWithSubstitutedMultitapKeys:v48];
                v96 = inputIndex - 1;
                [geometryDataArray3 insertObject:v95 atIndex:v96];

                if ([(TIKeyboardInputManager_ja_Kana *)self isTypologyEnabled])
                {
                  v17 = v104;
                  if (v104)
                  {
                    touchDataArray2 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
                    v91 = touchDataArray2;
                    v92 = v104;
                    v93 = v96;
                    goto LABEL_120;
                  }

LABEL_60:
                  v48 = v105;
LABEL_102:

                  v9 = v12;
                  goto LABEL_103;
                }
              }

LABEL_50:
              v17 = v104;
              goto LABEL_60;
            }

            v49 = 0;
            v12 = @"「";
            goto LABEL_124;
          }

          v49 = 0;
          v12 = @"「";
        }

LABEL_98:
        v17 = v104;
        goto LABEL_99;
      }
    }

    if (!inputIndex)
    {
      v58 = inputIndex;
      v49 = 0;
      v48 = v105;
LABEL_92:
      keyboardState2 = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
      hardwareKeyboardMode = [keyboardState2 hardwareKeyboardMode];

      if (!v49 && (hardwareKeyboardMode & 1) == 0)
      {
        v49 = 0;
        v17 = v104;
        goto LABEL_102;
      }

      inputIndex = v58;
      goto LABEL_96;
    }

    inputString4 = [(TIKeyboardInputManager_ja *)self inputString];
    keyboardState3 = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
    hardwareKeyboardMode2 = [keyboardState3 hardwareKeyboardMode];

    v102 = inputString4;
    if (!hardwareKeyboardMode2)
    {
      v108[0] = 0;
      v59 = [inputString4 characterAtIndex:inputIndex - 1];
      v107 = v59;
      if ((v59 - 12353) > 0x53)
      {
        v49 = 0;
        v48 = v105;
      }

      else
      {
        v108[0] = Kana_variant_map[v59 - 12353];
        v48 = v105;
        if (v108[0])
        {
          v49 = [MEMORY[0x29EDBA0F8] stringWithCharacters:v108 length:1];
        }

        else
        {
          v49 = 0;
        }
      }

      if (![(TIKeyboardInputManager_ja_Kana *)self supportsFlickAutocorrection])
      {
        goto LABEL_82;
      }

      v63 = [MEMORY[0x29EDBA0F8] stringWithCharacters:&v107 length:1];
      if (!v108[0])
      {
        if (v107 == 12289 || v107 - 12353 < 0x54 || ([(NSDictionary *)self->_kanaFlickDirectionMap_current objectForKey:v63], v64 = objc_claimAutoreleasedReturnValue(), v64, v64))
        {
          v65 = v63;

          v49 = v65;
        }
      }

LABEL_81:
      v48 = v105;
LABEL_82:
      if (v49)
      {
        if ([(TIKeyboardInputManager_ja_Kana *)self supportsFlickAutocorrection])
        {
          geometryDataArray4 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
          v67 = [geometryDataArray4 count];

          if (v67 >= inputIndex)
          {
            geometryDataArray5 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
            v69 = [geometryDataArray5 objectAtIndex:inputIndex - 1];
            v70 = v48;
            v48 = v69;

            if ([(TIKeyboardInputManager_ja_Kana *)self isTypologyEnabled])
            {
              touchDataArray3 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
              v72 = [touchDataArray3 objectAtIndex:inputIndex - 1];

              v104 = v72;
            }
          }
        }

        v73 = [(__CFString *)v12 stringByReplacingCharactersInRange:0 withString:1, v49];
        v74 = v12;
        v12 = v73;

        keyboardState4 = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
        inputForMarkedText2 = [keyboardState4 inputForMarkedText];

        if (!inputForMarkedText2)
        {
          [contextCopy deleteBackward:1];
        }

        v58 = inputIndex;
        [(TIKeyboardInputManager_ja_Kana *)self _deleteFromInput];
      }

      else
      {
        v58 = inputIndex;
      }

      goto LABEL_92;
    }

    v35 = inputIndex;
    v36 = [inputString4 substringWithRange:{inputIndex - 1, 1}];
    if (v15 == 12443)
    {
      v37 = [@"うかきくけこさしすせそたちつてとはひふへほ" rangeOfString:v36];
      v39 = v38;

      if (v37 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v40 = @"ゔがぎぐげござじずぜぞだぢづでどばびぶべぼ";
        v41 = v37;
        v42 = v39;
LABEL_71:
        v49 = [(__CFString *)v40 substringWithRange:v41, v42];
        goto LABEL_72;
      }
    }

    else
    {
      v60 = [@"はひふへほ" rangeOfString:v36];
      v62 = v61;

      if (v60 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v40 = @"ぱぴぷぺぽ";
        v41 = v60;
        v42 = v62;
        goto LABEL_71;
      }
    }

    v49 = 0;
LABEL_72:
    inputIndex = v35;
    goto LABEL_81;
  }

LABEL_103:

  v79 = *MEMORY[0x29EDCA608];
}

- (void)_deleteFromInput
{
  if ([(TIKeyboardInputManager_ja_Kana *)self supportsFlickAutocorrection])
  {
    inputIndex = [(TIKeyboardInputManager_ja *)self inputIndex];
    if (inputIndex)
    {
      v4 = inputIndex;
      geometryDataArray = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
      v6 = [geometryDataArray count];

      if (v6 >= v4)
      {
        geometryDataArray2 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
        v8 = v4 - 1;
        [geometryDataArray2 removeObjectAtIndex:v8];

        if ([(TIKeyboardInputManager_ja_Kana *)self isTypologyEnabled])
        {
          touchDataArray = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
          [touchDataArray removeObjectAtIndex:v8];
        }
      }
    }

    [(TIWordSearch *)self->super._kbws clearCache];
  }

  v10.receiver = self;
  v10.super_class = TIKeyboardInputManager_ja_Kana;
  [(TIKeyboardInputManager_ja *)&v10 _deleteFromInput];
}

- (void)deleteFromInputWithContext:(id)context
{
  kbws = self->super._kbws;
  contextCopy = context;
  [(TIWordSearch *)kbws clearCache];
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManager_ja_Kana;
  [(TIKeyboardInputManagerMecabra *)&v6 deleteFromInputWithContext:contextCopy];
}

- (id)geometryModelData
{
  if ([(TIKeyboardInputManager_ja_Kana *)self supportsFlickAutocorrection])
  {
    v5.receiver = self;
    v5.super_class = TIKeyboardInputManager_ja_Kana;
    geometryModelData = [(TIKeyboardInputManager_ja *)&v5 geometryModelData];
  }

  else
  {
    geometryModelData = 0;
  }

  return geometryModelData;
}

- (_NSRange)analysisStringRange
{
  inputIndex = [(TIKeyboardInputManager_ja *)self inputIndex];
  if (inputIndex)
  {
    v4 = inputIndex;
  }

  else
  {
    rawInputString = [(TIKeyboardInputManager_ja *)self rawInputString];
    v4 = [rawInputString length];
  }

  v6 = 0;
  v7 = v4;
  result.length = v7;
  result.location = v6;
  return result;
}

@end