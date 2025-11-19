@interface TIKeyboardInputManager_ja_Kana
- (_NSRange)analysisStringRange;
- (id)geometryDataWithSubstitutedMultitapKeys:(id)a3;
- (id)geometryModelData;
- (id)keyboardConfigurationLayoutTag;
- (id)liveConversionTextInputManager;
- (id)validCharacterSetForAutocorrection;
- (void)_deleteFromInput;
- (void)addInput:(id)a3 withContext:(id)a4;
- (void)buildFlickTables;
- (void)calculateGeometryForInput:(id)a3;
- (void)deleteFromInputWithContext:(id)a3;
- (void)resetWordSearchWithClass:(Class)a3;
- (void)setInSplitKeyboardMode:(BOOL)a3;
- (void)syncToLayoutState:(id)a3;
@end

@implementation TIKeyboardInputManager_ja_Kana

- (id)liveConversionTextInputManager
{
  if ([(TIKeyboardInputManager_ja_Kana *)self inHardwareKeyboardMode])
  {
    v3 = [TIKeyboardInputManagerLiveConversion_ja_Kana alloc];
    v4 = [(TIKeyboardInputManager_ja_Kana *)self config];
    v5 = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
    v6 = [(TIKeyboardInputManagerLiveConversion_ja *)v3 initWithConfig:v4 keyboardState:v5];
  }

  else
  {
    v7 = [TIKeyboardInputManager_ja_Inline alloc];
    v4 = [(TIKeyboardInputManager_ja_Kana *)self config];
    v5 = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
    v8 = [(TIKeyboardInputManager_ja *)self wordSearch];
    v6 = [(TIKeyboardInputManager_ja_Inline *)v7 initWithConfig:v4 keyboardState:v5 wordSearch:v8 romajiMode:0];
  }

  return v6;
}

- (void)resetWordSearchWithClass:(Class)a3
{
  if (__PAIR64__(self->_knowSplitMode, self->_knowHardwareMode) == 0x100000001 && *(&self->_knowSplitMode + 1))
  {
LABEL_5:
    if (([(TIWordSearch *)self->super._kbws isMemberOfClass:a3]& 1) == 0)
    {
      v6 = [a3 alloc];
      v7 = [(TIKeyboardInputManagerBase *)self inputMode];
      v8 = [v6 initTIWordSearchWithInputMode:v7];
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

  v13 = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
  if ([v13 hardwareKeyboardMode])
  {
    knowSplitMode = self->_knowSplitMode;

    if (!knowSplitMode)
    {
      return;
    }

    goto LABEL_5;
  }
}

- (void)syncToLayoutState:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManager_ja_Kana;
  [(TIKeyboardInputManager_ja *)&v10 syncToLayoutState:v4];
  self->_knowInputMode = [v4 canMultitap] ^ 1;
  v5 = [v4 userInterfaceIdiom];
  v6 = 1;
  if (v5 == 1)
  {
    v6 = [v4 hasCandidateKey];
  }

  self->_isFlickOnly = v6;
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

  v8 = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
  v9 = [v8 hardwareKeyboardMode];

  if (v9)
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

- (void)setInSplitKeyboardMode:(BOOL)a3
{
  v5 = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
  v6 = [v5 layoutState];
  v7 = [v6 userInterfaceIdiom] != 1 || a3;
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
  v2 = self;
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
    if (v2->_isFlickOnly)
    {
      objc_storeStrong(&v2->_kanaFlickDirectionMap_current, v2->_kanaFlickDirectionMap_3x3);
      v5 = 952;
    }

    else
    {
      objc_storeStrong(&v2->_kanaFlickDirectionMap_current, v2->_kanaFlickDirectionMap_50on);
      v5 = 960;
    }

    objc_storeStrong(&v2->_kanaFlickKeyMap_current, *(&v2->super.super.super.super.super.super.isa + v5));
  }

  else
  {
    v6 = [(TIKeyboardInputManagerBase *)v2 inputMode];
    v7 = [v6 normalizedIdentifier];

    if (v2->_isFlickOnly)
    {
      v8 = @"iPhone";
    }

    else
    {
      v8 = @"iPad";
    }

    v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Keyboard-%@-%@.plist", v7, v8];
    v10 = TIBundlePathForInputMode();
    v11 = [v10 stringByAppendingPathComponent:v9];
    v12 = [MEMORY[0x29EDB9FB8] defaultManager];
    v13 = [v12 fileExistsAtPath:v11];

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
          v43 = v7;
          v47 = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@" "];
          if (v2->_isFlickOnly)
          {
            v16 = 43;
          }

          else
          {
            v16 = 38;
          }

          v17 = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:v16];
          if (v2->_isFlickOnly)
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
            v44 = v2;
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
                  v26 = !v2->_isFlickOnly || v24 == 12289;
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

                        v2 = v44;
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

          if (v2->_isFlickOnly)
          {
            [(TIKeyboardInputManager_ja_Kana *)v2 setKanaFlickDirectionMap_3x3:v17];
            v34 = v45;
            [(TIKeyboardInputManager_ja_Kana *)v2 setKanaFlickKeyMap_3x3:v45];
          }

          else
          {
            [(TIKeyboardInputManager_ja_Kana *)v2 setKanaFlickDirectionMap_50on:v17];
            v34 = v45;
            [(TIKeyboardInputManager_ja_Kana *)v2 setKanaFlickKeyMap_50on:v45];
          }

          v7 = v43;
          v4 = 0;
          v9 = v42;
          v15 = v39;
          kanaFlickDirectionMap_current = v2->_kanaFlickDirectionMap_current;
          v2->_kanaFlickDirectionMap_current = v17;
          v36 = v17;

          kanaFlickKeyMap_current = v2->_kanaFlickKeyMap_current;
          v2->_kanaFlickKeyMap_current = v34;

          v14 = v40;
          v11 = v41;
        }
      }
    }
  }

  v38 = *MEMORY[0x29EDCA608];
}

- (void)calculateGeometryForInput:(id)a3
{
  v85 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [(TIKeyboardInputManager_ja *)self inputIndex];
  v6 = [v4 string];
  v7 = [v6 characterAtIndex:0];

  kanaFlickDirectionMap_current = self->_kanaFlickDirectionMap_current;
  v9 = [v4 string];
  v10 = [(NSDictionary *)kanaFlickDirectionMap_current objectForKey:v9];
  v11 = [v10 integerValue];

  if ((v7 - 12353) >= 0x54)
  {
    v14 = v7 != 12289 && v11 == 0;
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
  v19 = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
  if ([v19 hardwareKeyboardMode])
  {

LABEL_17:
    [(TIKeyboardInputManagerMecabra *)self restoreGeometryForInput:v4 atIndex:v5];
    goto LABEL_18;
  }

  v20 = [v4 isMultitap] | v12;

  if (v20)
  {
    goto LABEL_17;
  }

  v22 = MEMORY[0x29EDBA070];
  v23 = [v4 touchEvent];
  v24 = [v22 numberWithInteger:{objc_msgSend(v23, "pathIndex")}];

  v25 = [(TIKeyboardInputManagerMecabra *)self touchDownEvents];
  v26 = [v25 objectForKey:v24];

  v27 = [(TIKeyboardInputManagerMecabra *)self touchUpEvents];
  v28 = [v27 objectForKey:v24];

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

  if (!v11 && v42 > 0.0)
  {
    v40 = atan2(-v39, v38) * 180.0 / 3.14159265;
    if (v40 < 0.0)
    {
      v40 = v40 + 360.0;
    }

    if (v40 <= 45.0)
    {
      v11 = 2;
    }

    else if (v40 <= 135.0)
    {
      v11 = 1;
    }

    else if (v40 <= 225.0)
    {
      v11 = 4;
    }

    else if (v40 <= 315.0)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }
  }

  if ([v4 isFlick])
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
        if (v11)
        {
          v56 = [(TIKeyboardInputManager_ja_Kana *)self flickKeyForBaseKey:v53 direction:v11];
          if (v56)
          {
            v57 = v56;
            v58 = [v4 isFlick];
            if (v53 == 12289)
            {
              if (v58)
              {
                *v55 = v57;
              }
            }

            else
            {
              if (v58)
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
  [(TIKeyboardInputManagerMecabra *)self padGeometryForInput:v4 atIndex:v5];
  v65 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
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
  v73 = [MEMORY[0x29EDB8DA0] dataWithBytes:&v81 length:(v66 + 8) & 0x7FFFFFFF8];
  v74 = v5 - 1;
  [v65 insertObject:v73 atIndex:v74];

  if ([(TIKeyboardInputManager_ja_Kana *)self isTypologyEnabled])
  {
    [(TIKeyboardInputManagerMecabra *)self saveTouchDataForEvent:v4 atIndex:v74];
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

- (id)geometryDataWithSubstitutedMultitapKeys:(id)a3
{
  v13[21] = *MEMORY[0x29EDCA608];
  v3 = a3;
  v4 = [v3 length];
  [v3 getBytes:v13 length:v4];
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

- (void)addInput:(id)a3 withContext:(id)a4
{
  v109 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  v8 = [v6 string];
  v9 = v8;
  if (v8 && [(__CFString *)v8 length])
  {
    if (!-[TIKeyboardInputManager_ja flickUsed](self, "flickUsed") && [v6 isFlick])
    {
      [(TIKeyboardInputManager_ja *)self setFlickUsed:1];
    }

    v10 = [(TIKeyboardInputManager_ja *)self inputIndex];
    if (([(TIKeyboardInputManager_ja_Kana *)self inHardwareKeyboardMode]& 1) != 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = [v6 isPopupVariant];
    }

    v12 = [(TIKeyboardInputManager_ja *)self stringByConvertingPunctuationForInput:v9 isLockedInput:v11];

    v13 = *MEMORY[0x29EDC72E0];
    if ([(__CFString *)v12 isEqualToString:*MEMORY[0x29EDC72E0]])
    {
      if (self->_isFlickOnly && v10)
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
    v16 = [(TIKeyboardInputManager_ja *)self rawInputString];
    v17 = 0;
    v105 = 0;
    if ([v6 isMultitap])
    {
      if (v10)
      {
        v97 = v12;
        v98 = v16;
        v103 = v7;
        v18 = [(TIKeyboardInputManager_ja *)self inputString];
        v100 = v10;
        v19 = v10 - 1;
        v20 = [v18 characterAtIndex:v10 - 1];

        v108[0] = v20;
        v21 = [MEMORY[0x29EDBA0F8] stringWithCharacters:v108 length:1];
        v22 = GetMultitapSequenceTable();
        v23 = [v22 objectForKey:v21];
        v24 = [v6 string];
        v25 = [v23 isEqualToString:v24];

        if (v25)
        {
          v26 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
          v105 = [v26 objectAtIndex:v19];

          if ([(TIKeyboardInputManager_ja_Kana *)self isTypologyEnabled])
          {
            v27 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
            v17 = [v27 objectAtIndex:v19];
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

        v7 = v103;
        v12 = v97;

        v16 = v98;
        v10 = v100;
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
      if (v10)
      {
        v104 = v17;
        v99 = [(TIKeyboardInputManager_ja *)self inputString];
        v101 = v10;
        v28 = [v99 characterAtIndex:v10 - 1];
        v108[0] = v28;
        v29 = [MEMORY[0x29EDB9F50] uppercaseLetterCharacterSet];
        LODWORD(v28) = [v29 characterIsMember:v28];

        if (v28)
        {
          v30 = [MEMORY[0x29EDBA0F8] stringWithCharacters:v108 length:1];
          v31 = [v30 lowercaseString];
        }

        else
        {
          v50 = [MEMORY[0x29EDB9F50] lowercaseLetterCharacterSet];
          v51 = [v50 characterIsMember:v108[0]];

          if (!v51)
          {
            goto LABEL_49;
          }

          v30 = [MEMORY[0x29EDBA0F8] stringWithCharacters:v108 length:1];
          v31 = [v30 uppercaseString];
        }

        if (v31)
        {
          v52 = [(__CFString *)v12 stringByReplacingCharactersInRange:0 withString:1, v31];

          v53 = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
          v54 = [v53 inputForMarkedText];

          if (!v54)
          {
            [v7 deleteBackward:1];
          }

          [(TIKeyboardInputManager_ja_Kana *)self _deleteFromInput];

          v49 = 0;
          v12 = v52;
          v10 = v101;
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
          v55 = v10;
          if ([(TIKeyboardInputManager_ja *)self inputCount])
          {
            v56 = *MEMORY[0x29EDC72D8];
            if (-[__CFString isEqualToString:](v12, "isEqualToString:", *MEMORY[0x29EDC72D8]) & 1) != 0 || (-[__CFString isEqualToString:](v12, "isEqualToString:", v13) & 1) != 0 || (v57 = *MEMORY[0x29EDC72D0], (-[__CFString isEqualToString:](v12, "isEqualToString:", *MEMORY[0x29EDC72D0])) || ([v16 isEqualToString:v56] & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", v13) & 1) != 0 || objc_msgSend(v16, "isEqualToString:", v57))
            {
              v17 = v104;
              if (([(__CFString *)v12 isEqualToString:v16]& 1) == 0)
              {
                [(TIKeyboardInputManager_ja_Kana *)self acceptCurrentCandidateWithContext:v7];
                v49 = 0;
                v10 = v55;
LABEL_99:
                v48 = v105;
                goto LABEL_100;
              }

              goto LABEL_59;
            }
          }

          [(TIKeyboardInputManager_ja_Kana *)self acceptCurrentCandidateIfSelectedWithContext:v7];
          v49 = 0;
          v10 = v55;
        }

        else
        {

          if (v10)
          {
            v45 = v7;
            v46 = [(TIKeyboardInputManager_ja *)self inputString];
            v47 = [v46 characterAtIndex:v10 - 1];

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
              v7 = v45;
LABEL_96:
              v17 = v104;
LABEL_100:
              [(TIKeyboardInputManager_ja *)self setIsEmojiFacemarkMode:0];
              [(TIKeyboardInputManager_ja *)self setFilterCandidatesUsingInputIndex:0];
              [v6 setString:v12];
              v106.receiver = self;
              v106.super_class = TIKeyboardInputManager_ja_Kana;
              [(TIKeyboardInputManager_ja_Kana *)&v106 addInput:v6 withContext:v7];
              if (![(TIKeyboardInputManager_ja_Kana *)self supportsFlickAutocorrection]|| ([(__CFString *)v12 isEqualToString:*MEMORY[0x29EDC72D0]]& 1) != 0)
              {
                goto LABEL_102;
              }

              if (v49 && v48)
              {
                v104 = v17;
                v80 = v10;
                v81 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
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
                [v81 insertObject:v88 atIndex:v80 - 1];

                if ([(TIKeyboardInputManager_ja_Kana *)self isTypologyEnabled])
                {
                  v17 = v104;
                  if (v104)
                  {
                    v90 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
                    v91 = v90;
                    v92 = v104;
                    v93 = v89;
LABEL_120:
                    [v90 insertObject:v92 atIndex:v93];

                    goto LABEL_60;
                  }

                  goto LABEL_60;
                }
              }

              else
              {
                if (![v6 isMultitap] || !v48)
                {
                  [(TIKeyboardInputManager_ja_Kana *)self calculateGeometryForInput:v6];
                  goto LABEL_102;
                }

                v104 = v17;
                v94 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
                v105 = v48;
                v95 = [(TIKeyboardInputManager_ja_Kana *)self geometryDataWithSubstitutedMultitapKeys:v48];
                v96 = v10 - 1;
                [v94 insertObject:v95 atIndex:v96];

                if ([(TIKeyboardInputManager_ja_Kana *)self isTypologyEnabled])
                {
                  v17 = v104;
                  if (v104)
                  {
                    v90 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
                    v91 = v90;
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

    if (!v10)
    {
      v58 = v10;
      v49 = 0;
      v48 = v105;
LABEL_92:
      v77 = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
      v78 = [v77 hardwareKeyboardMode];

      if (!v49 && (v78 & 1) == 0)
      {
        v49 = 0;
        v17 = v104;
        goto LABEL_102;
      }

      v10 = v58;
      goto LABEL_96;
    }

    v32 = [(TIKeyboardInputManager_ja *)self inputString];
    v33 = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
    v34 = [v33 hardwareKeyboardMode];

    v102 = v32;
    if (!v34)
    {
      v108[0] = 0;
      v59 = [v32 characterAtIndex:v10 - 1];
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
          v66 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
          v67 = [v66 count];

          if (v67 >= v10)
          {
            v68 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
            v69 = [v68 objectAtIndex:v10 - 1];
            v70 = v48;
            v48 = v69;

            if ([(TIKeyboardInputManager_ja_Kana *)self isTypologyEnabled])
            {
              v71 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
              v72 = [v71 objectAtIndex:v10 - 1];

              v104 = v72;
            }
          }
        }

        v73 = [(__CFString *)v12 stringByReplacingCharactersInRange:0 withString:1, v49];
        v74 = v12;
        v12 = v73;

        v75 = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
        v76 = [v75 inputForMarkedText];

        if (!v76)
        {
          [v7 deleteBackward:1];
        }

        v58 = v10;
        [(TIKeyboardInputManager_ja_Kana *)self _deleteFromInput];
      }

      else
      {
        v58 = v10;
      }

      goto LABEL_92;
    }

    v35 = v10;
    v36 = [v32 substringWithRange:{v10 - 1, 1}];
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
    v10 = v35;
    goto LABEL_81;
  }

LABEL_103:

  v79 = *MEMORY[0x29EDCA608];
}

- (void)_deleteFromInput
{
  if ([(TIKeyboardInputManager_ja_Kana *)self supportsFlickAutocorrection])
  {
    v3 = [(TIKeyboardInputManager_ja *)self inputIndex];
    if (v3)
    {
      v4 = v3;
      v5 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
      v6 = [v5 count];

      if (v6 >= v4)
      {
        v7 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
        v8 = v4 - 1;
        [v7 removeObjectAtIndex:v8];

        if ([(TIKeyboardInputManager_ja_Kana *)self isTypologyEnabled])
        {
          v9 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
          [v9 removeObjectAtIndex:v8];
        }
      }
    }

    [(TIWordSearch *)self->super._kbws clearCache];
  }

  v10.receiver = self;
  v10.super_class = TIKeyboardInputManager_ja_Kana;
  [(TIKeyboardInputManager_ja *)&v10 _deleteFromInput];
}

- (void)deleteFromInputWithContext:(id)a3
{
  kbws = self->super._kbws;
  v5 = a3;
  [(TIWordSearch *)kbws clearCache];
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManager_ja_Kana;
  [(TIKeyboardInputManagerMecabra *)&v6 deleteFromInputWithContext:v5];
}

- (id)geometryModelData
{
  if ([(TIKeyboardInputManager_ja_Kana *)self supportsFlickAutocorrection])
  {
    v5.receiver = self;
    v5.super_class = TIKeyboardInputManager_ja_Kana;
    v3 = [(TIKeyboardInputManager_ja *)&v5 geometryModelData];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_NSRange)analysisStringRange
{
  v3 = [(TIKeyboardInputManager_ja *)self inputIndex];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [(TIKeyboardInputManager_ja *)self rawInputString];
    v4 = [v5 length];
  }

  v6 = 0;
  v7 = v4;
  result.length = v7;
  result.location = v6;
  return result;
}

@end