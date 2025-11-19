@interface UIKeyboardInputMode
+ (UIKeyboardInputMode)keyboardInputModeWithIdentifier:(id)a3;
+ (id)_displayNameForMultilingualSet:(id)a3 forDisplayInLists:(BOOL)a4 usingDeviceLanguage:(BOOL)a5 context:(int64_t)a6;
+ (id)autofillSignupInputMode;
+ (id)canonicalLanguageIdentifierFromIdentifier:(id)a3;
+ (id)dictationInputMode;
+ (id)hardwareLayoutFromIdentifier:(id)a3;
+ (id)intlInputMode;
+ (id)multilingualSetsFromInputModeIdentifiers:(id)a3;
+ (id)softwareLayoutFromIdentifier:(id)a3;
- (BOOL)defaultLayoutIsASCIICapable;
- (BOOL)isAllowedForTraits:(id)a3;
- (BOOL)isDefaultRightToLeft;
- (BOOL)isDesiredForTraits:(id)a3 withExtended:(BOOL)a4;
- (BOOL)isEmojiInputMode;
- (BOOL)isEqual:(id)a3;
- (BOOL)isHandwritingInputMode;
- (BOOL)isMultilingual;
- (BOOL)isMultilingualOnly;
- (BOOL)isMultiscript;
- (BOOL)showSWLayoutWithHWKeyboard;
- (BOOL)showsTransliterationCandidates;
- (BOOL)supportsEmojiSearch;
- (NSArray)multilingualSet;
- (NSArray)multiscriptSet;
- (NSArray)normalizedIdentifierLevels;
- (NSLocale)locale;
- (NSString)automaticHardwareLayout;
- (NSString)defaultDictationLanguage;
- (NSString)dictationDisplayName;
- (NSString)dictationLanguage;
- (NSString)displayName;
- (NSString)identifierWithLayouts;
- (NSString)monolingualDisplayName;
- (UIKeyboardInputMode)initWithCoder:(id)a3;
- (UIKeyboardInputMode)initWithIdentifier:(id)a3;
- (double)languageIndicatorScale;
- (id)_fallbackIconLabel;
- (id)_iconLabelComponentsForMultilingualSet;
- (id)_iconLabelForMultilingualSet;
- (id)_iconLabelWithinMultiscriptSet;
- (id)_indicatorIconWithConfiguration:(id)a3;
- (id)cursorAccessoryIcon;
- (id)imageForInputModeLabel:(id)a3 secondaryIconLabel:(id)a4 artwork:(id)a5 withConfiguration:(id)a6;
- (id)indicatorIcon;
- (id)indicatorIconForSoftwareLayout;
- (id)indicatorTextIcon;
- (id)largeCursorAccessoryIcon;
- (id)multilingualInputModeIdentifiers;
- (id)multilingualSetFromInputModeIdentifiers:(id)a3;
- (id)multiscriptInputModeIdentifiers;
- (unint64_t)multilingualIndex;
- (unint64_t)multiscriptIndex;
- (void)_getIconLabel:(id *)a3 secondaryIconLabel:(id *)a4 artwork:(id *)a5;
- (void)_getIconLabel:(id *)a3 secondaryIconLabel:(id *)a4 artwork:(id *)a5 inputModes:(id)a6;
- (void)dealloc;
- (void)drawStringInRect:(id)a3 inRect:(CGRect)a4 useSmallFont:(BOOL)a5 useCondensedFont:(BOOL)a6 scale:(double)a7;
- (void)encodeWithCoder:(id)a3;
- (void)setCachedIcon:(id)a3;
- (void)setCurrentInputModeToActiveInputModeForMultilingualKeyboardForDictation;
- (void)setDictationLanguage:(id)a3;
- (void)setLastUsedDictationLanguage;
@end

@implementation UIKeyboardInputMode

- (BOOL)isEmojiInputMode
{
  v3 = [(UIKeyboardInputMode *)self primaryLanguage];
  if ([v3 isEqualToString:@"emoji"])
  {
    v4 = ![(UIKeyboardInputMode *)self isExtensionInputMode];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (NSString)identifierWithLayouts
{
  v3 = [(UIKeyboardInputMode *)self identifier];
  v4 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(v3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(UIKeyboardInputMode *)self identifier];
  }

  v7 = v6;

  return v7;
}

- (BOOL)showSWLayoutWithHWKeyboard
{
  v2 = [(UIKeyboardInputMode *)self hardwareLayout];
  if (v2)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v3 = [v4 isInOnenessSceneAndRTIEnabled] ^ 1;
  }

  return v3;
}

- (BOOL)isMultilingual
{
  v2 = [(UIKeyboardInputMode *)self multilingualInputModeIdentifiers];
  v3 = [v2 count] > 1;

  return v3;
}

- (id)multilingualInputModeIdentifiers
{
  v2 = [(UIKeyboardInputMode *)self identifier];
  v3 = [UIKeyboardInputModeController multilingualSetForInputModeIdentifier:v2];

  return v3;
}

+ (id)dictationInputMode
{
  if (qword_1ED498758 != -1)
  {
    dispatch_once(&qword_1ED498758, &__block_literal_global_1194);
  }

  v3 = qword_1ED498750;

  return v3;
}

void __41__UIKeyboardInputMode_dictationInputMode__block_invoke()
{
  v0 = [(UISpecializedInputMode *)[UIDictationInputMode alloc] initWithIdentifier:@"dictation"];
  v1 = qword_1ED498750;
  qword_1ED498750 = v0;
}

- (BOOL)isDefaultRightToLeft
{
  if (-[UIKeyboardInputMode isEmojiInputMode](self, "isEmojiInputMode") && (+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController, "sharedInputModeController"), v3 = objc_claimAutoreleasedReturnValue(), [v3 inputModeThatInvokeEmoji], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v5 = +[UIKeyboardInputModeController sharedInputModeController];
    v6 = [v5 inputModeThatInvokeEmoji];
    v7 = [v6 identifier];
    IsDefaultRightToLeft = UIKeyboardInputModeIsDefaultRightToLeft(v7);
  }

  else
  {
    v5 = [(UIKeyboardInputMode *)self identifier];
    IsDefaultRightToLeft = UIKeyboardInputModeIsDefaultRightToLeft(v5);
  }

  return IsDefaultRightToLeft;
}

- (BOOL)isHandwritingInputMode
{
  v2 = [(UIKeyboardInputMode *)self normalizedIdentifier];
  v3 = [v2 hasSuffix:@"HWR"];

  return v3;
}

- (BOOL)showsTransliterationCandidates
{
  if ([(UIKeyboardInputMode *)self isMultiscript])
  {
    return 1;
  }

  v4 = [(UIKeyboardInputMode *)self identifier];
  v5 = UIKeyboardShowsTransliterationCandidatesForInputMode();

  return v5;
}

- (NSLocale)locale
{
  v20 = *MEMORY[0x1E69E9840];
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_13;
  }

  v3 = [(UIKeyboardInputMode *)self multilingualInputModeIdentifiers];
  if ([v3 count] <= 1)
  {

LABEL_13:
    v12 = [(UIKeyboardInputMode *)self normalizedIdentifier];
    goto LABEL_14;
  }

  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = TIInputModeGetNormalizedIdentifier();
        [v4 addObject:{v10, v15}];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = [MEMORY[0x1E696AAE8] preferredLocalizationsFromArray:v4];
  v12 = [v11 firstObject];

  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_14:
  v13 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:{v12, v15}];

  return v13;
}

- (BOOL)isMultiscript
{
  v2 = [(UIKeyboardInputMode *)self multiscriptInputModeIdentifiers];
  v3 = [v2 count] > 1;

  return v3;
}

- (id)multiscriptInputModeIdentifiers
{
  v2 = [(UIKeyboardInputMode *)self identifier];
  v3 = [UIKeyboardInputModeController multilingualSetForInputModeIdentifier:v2];
  if ([v3 count])
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    v5 = [v3 objectAtIndexedSubscript:0];
    [v4 addObject:v5];

    if ([v3 count] >= 2)
    {
      v6 = 1;
      do
      {
        v7 = [v3 objectAtIndexedSubscript:v6];
        v8 = TIInputModeGetNormalizedIdentifier();

        v9 = _GetNormalizedIdentifiersForMultiscriptInputModes();
        v10 = [v9 containsObject:v8];

        if (v10)
        {
          v11 = [v3 objectAtIndexedSubscript:v6];
          [v4 addObject:v11];
        }

        ++v6;
      }

      while (v6 < [v3 count]);
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (NSString)dictationLanguage
{
  v2 = self;
  v68 = *MEMORY[0x1E69E9840];
  v3 = [(UIKeyboardInputMode *)self languageWithRegion];
  v4 = off_1E70EA000;
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  v6 = [(UIKeyboardInputMode *)v2 languageWithRegion];
  v7 = [v5 defaultDictationLanguages:v6];

  v8 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v9 = [v8 preferencesActions];
  v10 = [v9 valueForPreferenceKey:@"DictationLanguagesLastUsed"];

  v11 = [v10 objectForKey:@"LastUsedDictationLangauge"];
  v12 = &unk_1ED46F000;
  if ([v7 count])
  {
    v13 = [(UIKeyboardInputMode *)v2 languageWithRegion];
    v14 = [v10 objectForKey:v13];

    if (v14 && (+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController, "sharedInputModeController"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isDictationLanguageEnabled:v14], v15, (v16 & 1) != 0))
    {
      v3 = v14;
    }

    else
    {
      v55 = v2;
      v56 = v11;
      v57 = v10;
      v17 = +[UIKeyboardInputModeController sharedInputModeController];
      v18 = [v17 suggestedDictationLanguagesForDeviceLanguage];

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v62 objects:v67 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v63;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v63 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v62 + 1) + 8 * i);
            if (v24)
            {
              if ([v7 containsObject:*(*(&v62 + 1) + 8 * i)])
              {
                v25 = +[UIKeyboardInputModeController sharedInputModeController];
                v26 = [v25 isDictationLanguageEnabled:v24];

                if (v26)
                {
                  v28 = v24;

                  v27 = v19;
                  v14 = v28;
                  goto LABEL_18;
                }
              }
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v62 objects:v67 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v12 = &unk_1ED46F000;
      if (+[UIDictationUtilities _isUsingLargeFormatDictationUI])
      {
        [v7 firstObject];
        v14 = v27 = v14;
      }

      else
      {
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v27 = v7;
        v47 = [v27 countByEnumeratingWithState:&v58 objects:v66 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v59;
          while (2)
          {
            for (j = 0; j != v48; ++j)
            {
              if (*v59 != v49)
              {
                objc_enumerationMutation(v27);
              }

              v51 = *(*(&v58 + 1) + 8 * j);
              v52 = +[UIKeyboardInputModeController sharedInputModeController];
              v53 = [v52 isDictationLanguageEnabled:v51];

              if (v53)
              {
                v54 = v51;

                v14 = v54;
                goto LABEL_50;
              }
            }

            v48 = [v27 countByEnumeratingWithState:&v58 objects:v66 count:16];
            if (v48)
            {
              continue;
            }

            break;
          }

LABEL_50:
          v4 = off_1E70EA000;
LABEL_18:
          v12 = &unk_1ED46F000;
        }
      }

      v3 = v14;
      v11 = v56;
      v10 = v57;
      v2 = v55;
    }
  }

  if (![v12 + 3656 _isUsingLargeFormatDictationUI])
  {
    if ((!v3 || (-[__objc2_class sharedInputModeController](v4[13], "sharedInputModeController"), v37 = objc_claimAutoreleasedReturnValue(), v38 = [v37 isDictationLanguageEnabled:v3], v37, (v38 & 1) == 0)) && (v39 = v11, v3, (v3 = v39) == 0) || (-[__objc2_class sharedInputModeController](v4[13], "sharedInputModeController"), v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "isDictationLanguageEnabled:", v3), v40, (v41 & 1) == 0))
    {
      v43 = [(__objc2_class *)v4[13] sharedInputModeController];
      v44 = [v43 enabledDictationLanguages];
      v45 = [v44 firstObject];

      if (!v45)
      {
        v36 = [(UIKeyboardInputMode *)v2 languageWithRegion];
        v3 = 0;
        goto LABEL_36;
      }

      v42 = v45;
LABEL_35:
      v3 = v42;
      v36 = v42;
      goto LABEL_36;
    }

LABEL_32:
    v42 = v3;
    goto LABEL_35;
  }

  v29 = v4;
  if (v3)
  {
    v30 = [(__objc2_class *)v4[13] sharedInputModeController];
    v31 = [v30 isDictationLanguageEnabled:v3];

    if (v31)
    {
      goto LABEL_32;
    }
  }

  v32 = +[UIKeyboardImpl activeInstance];
  v33 = [v32 textInputTraits];

  if (UIKeyboardTypeSupportsDictationSpelling([v33 dictationKeyboardType]) || (objc_msgSend(v33, "isSecureTextEntry") & 1) != 0 || objc_msgSend(v33, "forceSpellingDictation"))
  {
    v34 = [(__objc2_class *)v29[13] sharedInputModeController];
    v35 = [v34 enabledDictationLanguages];
    v36 = [v35 firstObject];
  }

  else
  {
    v36 = 0;
  }

LABEL_36:

  return v36;
}

- (NSArray)normalizedIdentifierLevels
{
  v2 = [(UIKeyboardInputMode *)self identifier];
  v3 = TIInputModeGetComponentsFromIdentifier();

  v4 = TIInputModeGetNormalizedLevelsFromComponents();

  return v4;
}

+ (id)intlInputMode
{
  if (qword_1ED498738 != -1)
  {
    dispatch_once(&qword_1ED498738, &__block_literal_global_1186);
  }

  v3 = qword_1ED498730;

  return v3;
}

void __36__UIKeyboardInputMode_intlInputMode__block_invoke()
{
  v0 = [UIKeyboardInputMode alloc];
  v3 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(@"intl");
  v1 = [(UIKeyboardInputMode *)v0 initWithIdentifier:v3];
  v2 = qword_1ED498730;
  qword_1ED498730 = v1;
}

- (id)_iconLabelForMultilingualSet
{
  v2 = [(UIKeyboardInputMode *)self _iconLabelComponentsForMultilingualSet];
  v3 = [v2 componentsJoinedByString:@" "];

  return v3;
}

- (id)_iconLabelComponentsForMultilingualSet
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(UIKeyboardInputMode *)self normalizedIdentifier];
  IsTransliteration = TIInputModeIsTransliteration();

  if (IsTransliteration)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(UIKeyboardInputMode *)self multilingualSet];
    if ([v6 count] < 2)
    {
      v5 = 0;
    }

    else
    {
      v7 = [(UIKeyboardInputMode *)self multilingualInputModeIdentifiers];
      v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
      v18 = [MEMORY[0x1E695DF70] array];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v20 + 1) + 8 * i);
            v14 = [v13 normalizedIdentifier];
            v15 = TIInputModeIsTransliteration();

            if ((v15 & 1) == 0)
            {
              v19 = 0;
              [v13 _getIconLabel:&v19 secondaryIconLabel:0 artwork:0 inputModes:v7];
              v16 = v19;
              if ([v16 length])
              {
                [v5 addObject:v16];
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v10);
      }
    }
  }

  return v5;
}

- (NSArray)multilingualSet
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(UIKeyboardInputMode *)self identifier];
  v3 = [UIKeyboardInputModeController multilingualSetForInputModeIdentifier:v2];

  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:*(*(&v12 + 1) + 8 * i), v12];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)canonicalLanguageIdentifierFromIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = TIInputModeGetComponentsFromIdentifier();
    v5 = *MEMORY[0x1E695D9B0];
    v6 = [v4 objectForKey:*MEMORY[0x1E695D9B0]];
    v7 = *MEMORY[0x1E695D9E8];
    v8 = [v4 objectForKey:*MEMORY[0x1E695D9E8]];
    v9 = *MEMORY[0x1E695D978];
    v10 = [v4 objectForKey:*MEMORY[0x1E695D978]];
    v11 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v6, v5, 0}];
    v12 = v11;
    if (v8)
    {
      [v11 setObject:v8 forKey:v7];
    }

    if (v10)
    {
      [v12 setObject:v10 forKey:v9];
    }

    v13 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v12];
    v14 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)softwareLayoutFromIdentifier:(id)a3
{
  v3 = TIInputModeGetComponentsFromIdentifier();
  v4 = [v3 objectForKey:@"sw"];

  return v4;
}

+ (id)hardwareLayoutFromIdentifier:(id)a3
{
  v3 = a3;
  v4 = TIInputModeGetComponentsFromIdentifier();
  v5 = [v4 objectForKey:@"hw"];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(v3);

    v8 = TIInputModeGetComponentsFromIdentifier();

    v9 = [v8 objectForKey:@"hw"];
    if (v9)
    {
      v6 = v9;
    }

    else
    {
      v6 = @"US";
    }

    v3 = v7;
    v4 = v8;
  }

  return v6;
}

- (UIKeyboardInputMode)initWithIdentifier:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = UIKeyboardInputMode;
  v5 = [(UIKeyboardInputMode *)&v18 init];
  v6 = v5;
  if (!v4)
  {
    v16 = v5;
    v6 = 0;
    goto LABEL_7;
  }

  if (!v5)
  {
    v16 = 0;
    goto LABEL_7;
  }

  [(UIKeyboardInputMode *)v5 setIdentifier:v4];
  v7 = TIInputModeGetNormalizedIdentifier();
  [(UIKeyboardInputMode *)v6 setNormalizedIdentifier:v7];

  v8 = TIInputModeGetLanguageWithRegion();
  [(UIKeyboardInputMode *)v6 setLanguageWithRegion:v8];

  v9 = TIInputModeGetVariant();
  [(UIKeyboardInputMode *)v6 setVariant:v9];

  v10 = [UIKeyboardInputMode canonicalLanguageIdentifierFromIdentifier:v4];
  [(UIKeyboardInputMode *)v6 setPrimaryLanguage:v10];

  v11 = [UIKeyboardInputMode softwareLayoutFromIdentifier:v4];
  [(UIKeyboardInputMode *)v6 setSoftwareLayout:v11];

  v12 = +[UIKeyboardInputModeController sharedInputModeController];
  v13 = [v12 inputModesWithoutHardwareSupport];
  v14 = [(UIKeyboardInputMode *)v6 normalizedIdentifier];
  v15 = [v13 containsObject:v14];

  if ((v15 & 1) == 0)
  {
    v16 = [UIKeyboardInputMode hardwareLayoutFromIdentifier:v4];
    [(UIKeyboardInputMode *)v6 setHardwareLayout:v16];
LABEL_7:
  }

  return v6;
}

- (void)dealloc
{
  [(UIKeyboardInputMode *)self setIdentifier:0];
  [(UIKeyboardInputMode *)self setNormalizedIdentifier:0];
  primaryLanguage = self->_primaryLanguage;
  self->_primaryLanguage = 0;

  languageWithRegion = self->_languageWithRegion;
  self->_languageWithRegion = 0;

  multilingualLanguages = self->_multilingualLanguages;
  self->_multilingualLanguages = 0;

  [(UIKeyboardInputMode *)self setSoftwareLayout:0];
  [(UIKeyboardInputMode *)self setHardwareLayout:0];
  cachedIcon = self->_cachedIcon;
  if (cachedIcon)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 removeObserver:self name:*MEMORY[0x1E69D9908] object:0];

    cachedIcon = self->_cachedIcon;
  }

  self->_cachedIcon = 0;

  cachedSizeCategory = self->_cachedSizeCategory;
  self->_cachedSizeCategory = 0;

  v9.receiver = self;
  v9.super_class = UIKeyboardInputMode;
  [(UIKeyboardInputMode *)&v9 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(UIKeyboardInputMode *)self identifier];
      v7 = [(UIKeyboardInputMode *)v5 identifier];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(UIKeyboardInputMode *)self primaryLanguage];
        v9 = [(UIKeyboardInputMode *)v5 primaryLanguage];
        v10 = [v8 isEqualToString:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)setCachedIcon:(id)a3
{
  v9 = a3;
  cachedIcon = self->_cachedIcon;
  objc_storeStrong(&self->_cachedIcon, a3);
  v6 = self->_cachedIcon;
  if ((cachedIcon == 0) == (v6 != 0))
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = v7;
    if (v6)
    {
      [v7 addObserver:self selector:sel_preferencesControllerChanged_ name:*MEMORY[0x1E69D9908] object:0];
    }

    else
    {
      [v7 removeObserver:self name:*MEMORY[0x1E69D9908] object:0];
    }
  }
}

+ (UIKeyboardInputMode)keyboardInputModeWithIdentifier:(id)a3
{
  v4 = a3;
  if (qword_1ED498728 != -1)
  {
    dispatch_once(&qword_1ED498728, &__block_literal_global_1183);
  }

  v5 = [qword_1ED4986C0 objectForKey:v4];
  if (!v5)
  {
    if ([v4 isEqualToString:@"dictation"])
    {
      v6 = [a1 dictationInputMode];
    }

    else if ([v4 isEqualToString:@"autofillsignup"])
    {
      v6 = [a1 autofillSignupInputMode];
    }

    else
    {
      v7 = +[UIKeyboardInputModeController sharedInputModeController];
      v8 = [v7 identifierIsValidSystemInputMode:v4];

      if (v8)
      {
        v9 = UIKeyboardInputMode;
      }

      else
      {
        v9 = UIKeyboardExtensionInputMode;
      }

      v6 = [[v9 alloc] initWithIdentifier:v4];
    }

    v5 = v6;
    if (v6)
    {
      v10 = qword_1ED4986C0;
      v11 = [v6 identifier];
      [v10 setObject:v5 forKey:v11];
    }

    else
    {
      if (v4)
      {
        [qword_1ED4986C0 removeObjectForKey:v4];
      }

      v5 = 0;
    }
  }

  return v5;
}

void __55__UIKeyboardInputMode_keyboardInputModeWithIdentifier___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = qword_1ED4986C0;
  qword_1ED4986C0 = v0;
}

+ (id)autofillSignupInputMode
{
  if (qword_1ED498748 != -1)
  {
    dispatch_once(&qword_1ED498748, &__block_literal_global_1188);
  }

  v3 = qword_1ED498740;

  return v3;
}

uint64_t __46__UIKeyboardInputMode_autofillSignupInputMode__block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = [[UISpecializedInputMode alloc] initWithIdentifier:@"autofillsignup"];
  v1 = qword_1ED498740;
  qword_1ED498740 = v0;

  v6[0] = 0;
  if (!qword_1ED498790)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SafariServicesLibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E710DF20;
    v8 = 0;
    qword_1ED498790 = _sl_dlopen();
  }

  if (!qword_1ED498790)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SafariServicesLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"UIKeyboardInputModeController.m" lineNumber:118 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v2 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v2);
  }

  return [qword_1ED498740 setViewControllerClass:NSClassFromString(&cfstr_Sfautomaticpas.isa)];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardInputMode *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(UIKeyboardInputMode *)self primaryLanguage];
  [v4 encodeObject:v6 forKey:@"primaryLanguage"];
}

- (UIKeyboardInputMode)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [(UIKeyboardInputMode *)self initWithIdentifier:v5];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryLanguage"];

  if (v7)
  {
    v8 = [(UIKeyboardInputMode *)v6 primaryLanguage];
    v9 = [v8 isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      [(UIKeyboardInputMode *)v6 setPrimaryLanguage:v7];
    }
  }

  return v6;
}

- (NSString)monolingualDisplayName
{
  v2 = [(UIKeyboardInputMode *)self identifier];
  v3 = UIKeyboardLocalizedInputModeName(v2);

  return v3;
}

+ (id)_displayNameForMultilingualSet:(id)a3 forDisplayInLists:(BOOL)a4 usingDeviceLanguage:(BOOL)a5 context:(int64_t)a6
{
  v44 = a4;
  v58 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v8 = +[UIKeyboardInputModeController sharedInputModeController];
  v9 = [v8 enabledInputModeIdentifiers];

  v10 = [v9 countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v53;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v53 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = TIInputModeGetLanguage();
        v15 = TIInputModeGetNormalizedIdentifier();
        v16 = [v7 objectForKeyedSubscript:v14];
        if (!v16)
        {
          v16 = [MEMORY[0x1E695DFA8] set];
          [v7 setObject:v16 forKeyedSubscript:v14];
        }

        [v16 addObject:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v11);
  }

  v17 = [v6 firstObject];
  v18 = [MEMORY[0x1E695DF58] preferredLanguages];
  v45 = v6;
  v19 = TIInputModeGetMultilingualSetFromInputModesWithPreferredLanguages();

  v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v19, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v21 = v19;
  v22 = [v21 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v49;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v49 != v24)
        {
          objc_enumerationMutation(v21);
        }

        if ((TIInputModeIsMultilingualOnly() & 1) == 0)
        {
          v26 = TIInputModeGetLanguage();
          v27 = [v7 objectForKeyedSubscript:v26];
          v28 = [v27 count];

          if (v28 >= 2)
          {
            v29 = TIInputModeGetLanguageWithRegion();

            v26 = v29;
          }

          v30 = MEMORY[0x1E695DF58];
          if (a5)
          {
            v31 = [MEMORY[0x1E695DF58] _deviceLanguage];
            v32 = [v30 localeWithLocaleIdentifier:v31];
          }

          else
          {
            v32 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v26];
          }

          v33 = [v32 localizedStringForLanguage:v26 context:a6];
          [v20 addObject:v33];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v23);
  }

  if (a5)
  {
    v34 = [MEMORY[0x1E695DF58] _deviceLanguage];
  }

  else
  {
    v35 = [v21 firstObject];
    v34 = TIInputModeGetLanguageWithRegion();
  }

  if (v44)
  {
    if ([v20 count] == 2)
    {
      v36 = MEMORY[0x1E696AEC0];
      v37 = _UILocalizedStringWithDefaultValueInLanguage(@"%@ & %@", v34, @"%@ & %@");
      v38 = [v20 objectAtIndexedSubscript:0];
      v39 = [v20 objectAtIndexedSubscript:1];
      v40 = [v36 localizedStringWithFormat:v37, v38, v39];

      goto LABEL_33;
    }

    v37 = _UILocalizedStringWithDefaultValueInLanguage(@", ", v34, @", ");
    v42 = [v20 componentsJoinedByString:v37];
  }

  else
  {
    v37 = objc_opt_new();
    v41 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v34];
    [v37 setLocale:v41];

    v42 = [v37 stringFromItems:v20];
  }

  v40 = v42;
LABEL_33:

  return v40;
}

- (NSString)displayName
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(UIKeyboardInputMode *)self multilingualInputModeIdentifiers];
    if ([v3 count] >= 2)
    {
      v4 = [objc_opt_class() _displayNameForMultilingualSet:v3 forDisplayInLists:1 usingDeviceLanguage:0 context:3];
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = [(UIKeyboardInputMode *)self monolingualDisplayName];
LABEL_6:
  v5 = v4;

  return v5;
}

- (BOOL)defaultLayoutIsASCIICapable
{
  v2 = [(UIKeyboardInputMode *)self identifier];
  IsASCIICapable = UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapable(v2);

  return IsASCIICapable;
}

- (NSString)automaticHardwareLayout
{
  v3 = [(UIKeyboardInputMode *)self hardwareLayout];
  if ([v3 isEqualToString:@"Automatic"])
  {
    v4 = +[UIKeyboardInputModeController sharedInputModeController];
    v5 = [v4 hardwareLayoutToUseForInputMode:self];

    if (v5)
    {
      v6 = v5;

      v3 = v6;
    }
  }

  return v3;
}

- (BOOL)supportsEmojiSearch
{
  if ([(UIKeyboardInputMode *)self isExtensionInputMode])
  {
    return 0;
  }

  v4 = MEMORY[0x1E695DF58];
  v5 = [(UIKeyboardInputMode *)self primaryLanguage];
  v6 = [v4 localeWithLocaleIdentifier:v5];

  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v7 = qword_1ED498798;
  v14 = qword_1ED498798;
  if (!qword_1ED498798)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getEMFEmojiSearchEngineClass_block_invoke;
    v10[3] = &unk_1E70F2F20;
    v10[4] = &v11;
    __getEMFEmojiSearchEngineClass_block_invoke(v10);
    v7 = v12[3];
  }

  v8 = v7;
  _Block_object_dispose(&v11, 8);
  v3 = [v7 isLocaleSupported:v6];

  return v3;
}

- (BOOL)isAllowedForTraits:(id)a3
{
  v5 = a3;
  v6 = [(UIKeyboardInputMode *)self normalizedIdentifier];
  if (![(UIKeyboardInputMode *)self isEmojiInputMode])
  {
    v7 = 1;
    goto LABEL_6;
  }

  if ([v5 keyboardType] == 2 || objc_msgSend(v5, "keyboardType") == 123)
  {
    goto LABEL_4;
  }

  v13 = [v5 keyboardType];
  v7 = 0;
  if ((v13 > 0xB || ((1 << v13) & 0x930) == 0) && v13 != 127)
  {
    if ([v5 keyboardType] == 13)
    {
LABEL_4:
      v7 = 0;
      goto LABEL_6;
    }

    if (+[UIKeyboard isMajelEnabled](UIKeyboard, "isMajelEnabled") && [v5 forceFloatingKeyboard])
    {
      v3 = +[UIKeyboardImpl activeInstance];
      if (![v3 _shouldSuppressAssistantBar])
      {
        v7 = 0;
LABEL_46:

        goto LABEL_6;
      }

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    if (_UIApplicationIsStickerPickerService() && !+[UIKeyboard canShowEmojiKeyboardInsideStickerPickerService])
    {
      v7 = [v5 keyboardType] == 124;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v7 = 1;
      if (!v14)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_46;
  }

LABEL_6:
  if ([(UIKeyboardInputMode *)self isHandwritingInputMode])
  {
    if ([v5 disableHandwritingKeyboard])
    {
      goto LABEL_35;
    }

    v8 = +[UIKeyboardImpl activeInstance];
    v9 = [v8 _shouldSuppressSoftwareKeyboardByOneness];

    if ((v9 & 1) != 0 || !+[UIKeyboardVisualModeManager softwareKeyboardAllowedForActiveKeyboardSceneDelegate])
    {
      goto LABEL_35;
    }
  }

  else if (!v7)
  {
    goto LABEL_35;
  }

  if ([v5 isSecureTextEntry])
  {
    v10 = [(UIKeyboardInputMode *)self identifierWithLayouts];
    IsSecure = UIKeyboardLayoutDefaultTypeForInputModeIsSecure(v10);

    if (!IsSecure)
    {
      goto LABEL_35;
    }
  }

  if ([v5 isCarPlayIdiom] && !_UIKeyboardInputModeDefaultLayoutIsCarPlayEnabled(self) || (objc_msgSend(v5, "keyboardType") == 1 || objc_msgSend(v5, "keyboardType") == 11 || objc_msgSend(v5, "keyboardType") == 127) && !UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapableExtended(v6))
  {
    goto LABEL_35;
  }

  if ([v5 keyboardType] == 4)
  {
    v12 = +[UIDevice currentDevice];
    if ([v12 userInterfaceIdiom])
    {

      goto LABEL_33;
    }

    v15 = dyld_program_sdk_at_least();

    if ((v15 & 1) != 0 || UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapableExtended(v6))
    {
      goto LABEL_33;
    }

LABEL_35:
    v16 = 0;
    goto LABEL_36;
  }

LABEL_33:
  v16 = [v5 keyboardType] != 122 || -[UIKeyboardInputMode supportsEmojiSearch](self, "supportsEmojiSearch");
LABEL_36:

  return v16;
}

- (BOOL)isDesiredForTraits:(id)a3 withExtended:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UIKeyboardInputMode *)self normalizedIdentifier];
  if ([v6 isSecureTextEntry])
  {
    IsSecure = UIKeyboardLayoutDefaultTypeForInputModeIsSecure(v7);
  }

  else if ([v6 isCarPlayIdiom])
  {
    IsSecure = _UIKeyboardInputModeDefaultLayoutIsCarPlayEnabled(self);
  }

  else
  {
    if (!+[UITextInputTraits keyboardTypeRequiresASCIICapable:](UITextInputTraits, "keyboardTypeRequiresASCIICapable:", [v6 keyboardType]))
    {
      v9 = 1;
      goto LABEL_6;
    }

    if (v4)
    {
      IsSecure = UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapableExtended(v7);
    }

    else
    {
      IsSecure = UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapable(v7);
    }
  }

  v9 = IsSecure;
LABEL_6:

  return v9;
}

- (NSString)dictationDisplayName
{
  v3 = [(UIKeyboardInputMode *)self dictationLanguage];
  v4 = UIKeyboardLocalizedDictationDisplayName(v3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(UIKeyboardInputMode *)self extendedDisplayName];
  }

  v7 = v6;

  return v7;
}

- (NSString)defaultDictationLanguage
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(UIKeyboardInputMode *)self languageWithRegion];
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = [(UIKeyboardInputMode *)self languageWithRegion];
  v6 = [v4 defaultDictationLanguages:v5];

  if ([v6 count])
  {
    v7 = +[UIKeyboardInputModeController sharedInputModeController];
    v8 = [v7 suggestedDictationLanguagesForDeviceLanguage];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if (v14 && ([v6 containsObject:{*(*(&v17 + 1) + 8 * i), v17}] & 1) != 0)
          {
            v15 = v14;

            v3 = v9;
            goto LABEL_13;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v15 = [v6 firstObject];
LABEL_13:

    v3 = v15;
  }

  return v3;
}

- (void)setDictationLanguage:(id)a3
{
  v14 = a3;
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = [(UIKeyboardInputMode *)self languageWithRegion];
  v6 = [v4 defaultDictationLanguages:v5];

  if ([v6 containsObject:v14])
  {
    v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v8 = [v7 preferencesActions];
    v9 = [v8 valueForPreferenceKey:@"DictationLanguagesLastUsed"];
    v10 = [v9 mutableCopy];

    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v11 = [(UIKeyboardInputMode *)self languageWithRegion];
    [v10 setObject:v14 forKey:v11];

    v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v13 = [v12 preferencesActions];
    [v13 setLastUsedDictationLanguages:v10];
  }
}

- (void)setLastUsedDictationLanguage
{
  v2 = [(UIKeyboardInputMode *)self dictationLanguage];
  if (v2)
  {
    v9 = v2;
    v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v4 = [v3 preferencesActions];
    v5 = [v4 valueForPreferenceKey:@"DictationLanguagesLastUsed"];
    v6 = [v5 mutableCopy];

    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v6 setObject:v9 forKey:@"LastUsedDictationLangauge"];
    v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v8 = [v7 preferencesActions];
    [v8 setLastUsedDictationLanguages:v6];

    v2 = v9;
  }
}

- (id)indicatorIcon
{
  v3 = +[_UIKeyboardInputModeIconConfiguration defaultConfiguration];
  if (+[UIKeyboard isLanguageIndicatorEnabled])
  {
    [v3 setSize:{27.0, 20.0}];
  }

  [(UIKeyboardInputMode *)self languageIndicatorScale];
  v5 = v4;
  [v3 scaleFactor];
  [v3 setScaleFactor:v5 * v6];
  v7 = [(UIKeyboardInputMode *)self _indicatorIconWithConfiguration:v3];

  return v7;
}

- (id)indicatorIconForSoftwareLayout
{
  v3 = +[_UIKeyboardInputModeIconConfiguration defaultConfiguration];
  [v3 setSoftwareLayout:1];
  if (+[UIKeyboard isLanguageIndicatorEnabled])
  {
    [v3 setSize:{27.0, 20.0}];
  }

  [(UIKeyboardInputMode *)self languageIndicatorScale];
  v5 = v4;
  [v3 scaleFactor];
  [v3 setScaleFactor:v5 * v6];
  v7 = [(UIKeyboardInputMode *)self _indicatorIconWithConfiguration:v3];

  return v7;
}

- (id)indicatorTextIcon
{
  v3 = +[_UIKeyboardInputModeIconConfiguration defaultConfiguration];
  [v3 setBackground:0];
  [(UIKeyboardInputMode *)self languageIndicatorScale];
  v5 = v4;
  [v3 scaleFactor];
  [v3 setScaleFactor:v5 * v6];
  v7 = [(UIKeyboardInputMode *)self _indicatorIconWithConfiguration:v3];

  return v7;
}

- (id)cursorAccessoryIcon
{
  v3 = +[_UIKeyboardInputModeIconConfiguration defaultConfiguration];
  [v3 setBackground:0];
  +[_UICursorAccessoryView defaultItemSize];
  [v3 setSize:v4 + -6.0];
  [v3 setWeight:6];
  v5 = [(UIKeyboardInputMode *)self _indicatorIconWithConfiguration:v3];

  return v5;
}

- (id)largeCursorAccessoryIcon
{
  v3 = +[_UIKeyboardInputModeIconConfiguration defaultConfiguration];
  [v3 setBackground:0];
  +[_UICursorAccessoryView largeItemSize];
  [v3 setSize:v4 + -6.0];
  [v3 setWeight:6];
  v5 = [(UIKeyboardInputMode *)self _indicatorIconWithConfiguration:v3];

  return v5;
}

- (id)_iconLabelWithinMultiscriptSet
{
  v7 = 0;
  v3 = [(UIKeyboardInputMode *)self multiscriptInputModeIdentifiers];
  [(UIKeyboardInputMode *)self _getIconLabel:&v7 secondaryIconLabel:0 artwork:0 inputModes:v3];
  v4 = v7;
  v5 = v7;

  return v4;
}

- (id)_fallbackIconLabel
{
  v3 = [(UIKeyboardInputMode *)self identifier];
  v4 = UIKeyboardLocalizedString(@"UI-ABC", v3, 0, 0);
  v5 = [v4 _firstGrapheme];

  if ([v5 isEqual:@"A"])
  {

    v5 = 0;
  }

  v6 = [(UIKeyboardInputMode *)self primaryLanguage];
  [v6 cStringUsingEncoding:4];
  uscript_getCode();
  if (v14 != 25 && v14 != 8)
  {
    goto LABEL_4;
  }

  v8 = [(UIKeyboardInputMode *)self primaryLanguage];
  if ([v8 length] >= 3)
  {
    v9 = [v8 substringToIndex:2];

    v8 = v9;
  }

  v7 = [v8 uppercaseString];

  if (!v7)
  {
LABEL_4:
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v10 = [(UIKeyboardInputMode *)self identifier];
      v11 = UIKeyboardLocalizedInputModeName(v10);
      v7 = [v11 _firstGrapheme];
    }
  }

  v12 = v7;

  return v12;
}

- (void)_getIconLabel:(id *)a3 secondaryIconLabel:(id *)a4 artwork:(id *)a5
{
  v9 = UIKeyboardGetActiveUniqueInputModesForHardwareKeyboard();
  [(UIKeyboardInputMode *)self _getIconLabel:a3 secondaryIconLabel:a4 artwork:a5 inputModes:v9];
}

- (void)_getIconLabel:(id *)a3 secondaryIconLabel:(id *)a4 artwork:(id *)a5 inputModes:(id)a6
{
  v74 = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = [(UIKeyboardInputMode *)self identifier];
  v12 = UIKeyboardLocalizedObject(@"UI-IconLabel", v11, 0, 0, 0);
  v13 = UIKeyboardLocalizedObject(@"UI-IconLabelScript", v11, 0, 0, 0);
  v14 = UIKeyboardLocalizedObject(@"UI-IconLabelLanguage", v11, 0, 0, 0);
  v62 = v14;
  v15 = UIKeyboardLocalizedObject(@"UI-IconLabelLanguageVariant", v11, 0, 0, 0);
  v58 = UIKeyboardLocalizedObject(@"UI-IconArtworkShort", v11, 0, 0, 0);
  v59 = UIKeyboardLocalizedObject(@"UI-IconArtworkFull", v11, 0, 0, 0);
  v63 = v13;
  if (v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14 == 0;
  }

  v60 = v15;
  v17 = v16 && v15 == 0;
  v49 = self;
  if (v17)
  {
    goto LABEL_32;
  }

  v48 = a3;
  v50 = v12;
  v52 = a4;
  v54 = a5;
  v56 = v10;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v18 = v10;
  v19 = [v18 countByEnumeratingWithState:&v68 objects:v73 count:16];
  if (v19)
  {
    v20 = v19;
    v61 = 0;
    v21 = 0;
    v22 = *v69;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v69 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v68 + 1) + 8 * i);
        if (([v11 isEqualToString:{v24, v48}] & 1) == 0)
        {
          v25 = v11;
          v26 = UIKeyboardLocalizedObject(@"UI-IconLabelScript", v24, 0, 0, 0);
          v27 = UIKeyboardLocalizedObject(@"UI-IconLabelLanguage", v24, 0, 0, 0);
          v28 = [v63 isEqualToString:v26];
          if ([v62 isEqualToString:v27])
          {
            v29 = UIKeyboardLocalizedObject(@"UI-IconLabelLanguageVariant", v24, 0, 0, 0);
            v61 |= [v60 isEqualToString:v29] ^ 1;
          }

          v21 |= v28;

          v11 = v25;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v68 objects:v73 count:16];
    }

    while (v20);
  }

  else
  {
    LOBYTE(v61) = 0;
    v21 = 0;
  }

  if ((v21 & 1) == 0 && v63)
  {
    v12 = v63;

    v30 = 0;
    v31 = 0;
    a5 = v54;
    v10 = v56;
    a4 = v52;
    a3 = v48;
LABEL_33:
    v33 = v58;
    goto LABEL_34;
  }

  a4 = v52;
  a5 = v54;
  v12 = v50;
  a3 = v48;
  if (v59)
  {
    v30 = v59;
    v31 = 0;
    v10 = v56;
    goto LABEL_33;
  }

  v10 = v56;
  if ((v61 & 1) == 0)
  {
    if (v62)
    {
      v34 = v62;

      v30 = 0;
      v31 = 0;
      v12 = v34;
      goto LABEL_33;
    }

LABEL_32:
    v30 = 0;
    v31 = 0;
    goto LABEL_33;
  }

  if (v62)
  {
    v32 = v62;

    v12 = v32;
  }

  v33 = v58;
  v31 = v60;
  v30 = 0;
LABEL_34:
  if (v33)
  {
    v35 = v33;

    if (v59)
    {
      v36 = a3;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v37 = v10;
      v38 = [v37 countByEnumeratingWithState:&v64 objects:v72 count:16];
      if (v38)
      {
        v39 = v38;
        v51 = v12;
        v53 = a4;
        v55 = a5;
        v57 = v10;
        v40 = *v65;
        while (2)
        {
          for (j = 0; j != v39; ++j)
          {
            if (*v65 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v64 + 1) + 8 * j);
            if (([v11 isEqualToString:{v42, v48}] & 1) == 0)
            {
              v43 = UIKeyboardLocalizedObject(@"UI-IconArtworkShort", v42, 0, 0, 0);
              v44 = [v35 isEqualToString:v43];

              if (v44)
              {

                v37 = v35;
                v35 = v59;
                goto LABEL_48;
              }
            }
          }

          v39 = [v37 countByEnumeratingWithState:&v64 objects:v72 count:16];
          if (v39)
          {
            continue;
          }

          break;
        }

LABEL_48:
        a5 = v55;
        v10 = v57;
        v12 = v51;
        a4 = v53;
      }

      v30 = v35;
      a3 = v36;
    }

    else
    {
      v30 = v35;
    }

    v33 = v58;
  }

  if (!v12)
  {
    v12 = [(UIKeyboardInputMode *)v49 _fallbackIconLabel];
  }

  if (a3)
  {
    v45 = v12;
    *a3 = v12;
  }

  if (a4)
  {
    v46 = v31;
    *a4 = v31;
  }

  if (a5)
  {
    v47 = v30;
    *a5 = v30;
  }
}

- (double)languageIndicatorScale
{
  if (qword_1ED498768 != -1)
  {
    dispatch_once(&qword_1ED498768, &__block_literal_global_1221);
  }

  v2 = [UIApp preferredContentSizeCategory];
  v3 = [qword_1ED498760 objectForKeyedSubscript:v2];
  v4 = v3;
  if (v3)
  {
    [v3 floatValue];
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

void __45__UIKeyboardInputMode_languageIndicatorScale__block_invoke()
{
  v3[9] = *MEMORY[0x1E69E9840];
  v2[0] = @"UICTContentSizeCategoryL";
  v2[1] = @"UICTContentSizeCategoryXL";
  v3[0] = &unk_1EFE2E5C8;
  v3[1] = &unk_1EFE2E5D8;
  v2[2] = @"UICTContentSizeCategoryXXL";
  v2[3] = @"UICTContentSizeCategoryXXXL";
  v3[2] = &unk_1EFE2E5E8;
  v3[3] = &unk_1EFE2E5F8;
  v2[4] = @"UICTContentSizeCategoryAccessibilityM";
  v2[5] = @"UICTContentSizeCategoryAccessibilityL";
  v3[4] = &unk_1EFE2E608;
  v3[5] = &unk_1EFE2E618;
  v2[6] = @"UICTContentSizeCategoryAccessibilityXL";
  v2[7] = @"UICTContentSizeCategoryAccessibilityXXL";
  v3[6] = &unk_1EFE2E628;
  v3[7] = &unk_1EFE2E638;
  v2[8] = @"UICTContentSizeCategoryAccessibilityXXXL";
  v3[8] = &unk_1EFE2E648;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:9];
  v1 = qword_1ED498760;
  qword_1ED498760 = v0;
}

- (id)_indicatorIconWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 hash];
  if ([v4 background])
  {
    v6 = [(UIKeyboardInputMode *)self cachedIcon];
    if (v6 && [(UIKeyboardInputMode *)self cachedIconKey]== v5)
    {
      v7 = [(UIKeyboardInputMode *)self cachedSizeCategory];
      v8 = [UIApp preferredContentSizeCategory];
      v9 = [v7 isEqual:v8];

      if (v9)
      {
        v10 = [(UIKeyboardInputMode *)self cachedIcon];
        goto LABEL_24;
      }
    }

    else
    {
    }
  }

  v11 = [(UIKeyboardInputMode *)self identifier];
  v12 = [v11 hasPrefix:@"emoji"];

  if (v12)
  {
    v13 = +[UIKeyboard activeKeyboard];
    if ([v13 _lightStyleRenderConfig])
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    v15 = [UITraitCollection traitCollectionWithUserInterfaceStyle:v14];
    v16 = v15;
    if (v15)
    {
      v15 = [v15 imageConfiguration];
    }

    v17 = v15;

    v18 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleFootnote" scale:-1];
    v19 = [v17 configurationByApplyingConfiguration:v18];

    [v4 size];
    v21 = +[UIImageSymbolConfiguration configurationWithPointSize:weight:](UIImageSymbolConfiguration, "configurationWithPointSize:weight:", [v4 weight], v20);
    v22 = [v19 configurationByApplyingConfiguration:v21];

    v10 = [UIImage _systemImageNamed:@"face.grinning" withConfiguration:v22];
    goto LABEL_22;
  }

  if (![(UIKeyboardInputMode *)self isMultilingual]|| ([(UIKeyboardInputMode *)self identifier], v23 = objc_claimAutoreleasedReturnValue(), v24 = UIKeyboardShowsTransliterationCandidatesForInputMode(), v23, (v24 & 1) != 0))
  {
    v25 = 0;
LABEL_17:
    if ([v4 softwareLayout])
    {
      v26 = UIKeyboardActiveUserSelectableInputModes;
    }

    else
    {
      v26 = UIKeyboardGetActiveUniqueInputModesForHardwareKeyboard();
    }

    v27 = v26;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    [(UIKeyboardInputMode *)self _getIconLabel:&v35 secondaryIconLabel:&v34 artwork:&v33 inputModes:v26];
    v22 = v35;
    v28 = v34;

    v29 = v33;
    v25 = v28;
    goto LABEL_21;
  }

  v32 = [(UIKeyboardInputMode *)self _iconLabelComponentsForMultilingualSet];
  if ([v32 count] == 2)
  {
    v22 = [v32 objectAtIndexedSubscript:0];
    v25 = [v32 objectAtIndexedSubscript:1];

    if (!v22)
    {
      goto LABEL_17;
    }

    v29 = 0;
  }

  else
  {

    v25 = 0;
    v29 = 0;
    v22 = @"A";
  }

LABEL_21:
  v10 = [(UIKeyboardInputMode *)self imageForInputModeLabel:v22 secondaryIconLabel:v25 artwork:v29 withConfiguration:v4];

LABEL_22:
  if ([v4 background])
  {
    [(UIKeyboardInputMode *)self setCachedIcon:v10];
    [(UIKeyboardInputMode *)self setCachedIconKey:v5];
    v30 = [UIApp preferredContentSizeCategory];
    [(UIKeyboardInputMode *)self setCachedSizeCategory:v30];
  }

LABEL_24:

  return v10;
}

- (void)drawStringInRect:(id)a3 inRect:(CGRect)a4 useSmallFont:(BOOL)a5 useCondensedFont:(BOOL)a6 scale:(double)a7
{
  height = a4.size.height;
  width = a4.size.width;
  x = a4.origin.x;
  y = a4.origin.y;
  v10 = 12.0;
  if (a6)
  {
    v10 = 9.5;
  }

  if (a5)
  {
    v11 = 8.5;
  }

  else
  {
    v11 = v10;
  }

  if (a5)
  {
    v12 = off_1E70ECD08;
  }

  else
  {
    v12 = off_1E70ECD30;
  }

  v64[1] = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v13 = off_1E70ECCE8;
  }

  else
  {
    v13 = off_1E70ECCF8;
  }

  v55 = a3;
  UICeilToScale(v11 * a7, 2.0);
  v15 = v14;
  v16 = *v13;
  v63 = *off_1E70ECCC0;
  v61[0] = *off_1E70ECD38;
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:*v12];
  v61[1] = *off_1E70ECD00;
  v62[0] = v17;
  v54 = v16;
  v62[1] = v16;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:2];
  v64[0] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:1];
  v20 = [off_1E70ECC20 fontDescriptorWithFontAttributes:v19];

  v21 = 0;
  v22 = *off_1E70EC918;
  v51 = width;
  v23 = 5;
  while (1)
  {
    v24 = v21;
    v25 = [off_1E70ECC18 fontWithDescriptor:v20 size:v15];
    v26 = objc_alloc(MEMORY[0x1E696AD40]);
    v59 = v22;
    v60 = v25;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v21 = [v26 initWithString:v55 attributes:v27];

    [v21 size];
    v29 = v28 / (width * 1.2);
    v31 = v30 / (height * 1.2);
    if (v29 <= 1.0 && v31 <= 1.0)
    {
      break;
    }

    if (v29 < v31)
    {
      v29 = v31;
    }

    UICeilToScale(v15 / v29, 2.0);
    if (v15 + -0.5 >= v33)
    {
      v15 = v33;
    }

    else
    {
      v15 = v15 + -0.5;
    }

    if (!--v23)
    {
      goto LABEL_24;
    }
  }

LABEL_24:
  v34 = CTLineCreateWithAttributedString(v21);
  BoundsWithOptions = CTLineGetBoundsWithOptions(v34, 0x80uLL);
  v50 = BoundsWithOptions.size.width;
  v66 = CTLineGetBoundsWithOptions(v34, 8uLL);
  v49 = v66.origin.y;
  v35 = v66.size.height;
  memset(&v58, 0, sizeof(v58));
  CGAffineTransformMakeScale(&v58, 1.0, -1.0);
  v56 = v58;
  v36 = height;
  CGAffineTransformTranslate(&transform, &v56, 0.0, height);
  v58 = transform;
  v56 = transform;
  CGAffineTransformInvert(&transform, &v56);
  a = transform.a;
  b = transform.b;
  c = transform.c;
  d = transform.d;
  tx = transform.tx;
  ty = transform.ty;
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v44 = 0;
  }

  else
  {
    v44 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  v45 = x + (v51 - v50) * 0.5;
  v46 = y + v49 + (v36 + v35) * 0.5;
  v47 = ty + v45 * b + v46 * d;
  v48 = tx + v45 * a + v46 * c;
  CGContextSaveGState(v44);
  transform = v58;
  CGContextConcatCTM(v44, &transform);
  CGContextSetTextPosition(v44, v48, v47);
  CTLineDraw(v34, v44);
  CGContextRestoreGState(v44);
  CFRelease(v34);
}

- (id)imageForInputModeLabel:(id)a3 secondaryIconLabel:(id)a4 artwork:(id)a5 withConfiguration:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(UIKeyboardInputMode *)self identifier];
  v15 = UIKeyboardLocalizedObject(@"UI-IconLabelLanguageUsesCondensedFont", v14, 0, 0, 0);

  [v13 scaleFactor];
  v17 = v16;
  [v13 size];
  v19 = ceil(v17 * v18);
  [v13 size];
  v21 = ceil(v17 * v20);
  if (+[UIKeyboard isLanguageIndicatorEnabled]&& getTUIKeyboardInputModeIconRendererClass_0())
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x2050000000;
    v22 = getTUIKeyboardInputModeIconRendererConfigurationClass_softClass_0;
    v51 = getTUIKeyboardInputModeIconRendererConfigurationClass_softClass_0;
    if (!getTUIKeyboardInputModeIconRendererConfigurationClass_softClass_0)
    {
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __getTUIKeyboardInputModeIconRendererConfigurationClass_block_invoke_0;
      v47[3] = &unk_1E70F2F20;
      v47[4] = &v48;
      __getTUIKeyboardInputModeIconRendererConfigurationClass_block_invoke_0(v47);
      v22 = v49[3];
    }

    v23 = v22;
    _Block_object_dispose(&v48, 8);
    v24 = objc_alloc_init(v22);
    [v24 setSize:{v19, v21}];
    +[_UICursorAccessoryView baseFontSize];
    [v24 setBaseFontSize:?];
    [v24 setStyle:{objc_msgSend(v13, "background")}];
    if (objc_opt_respondsToSelector())
    {
      v25 = [(UIKeyboardInputMode *)self languageWithRegion];
      [v24 setLanguage:v25];
    }

    if (objc_opt_respondsToSelector())
    {
      [v24 setArtwork:v12];
    }

    if ([(UIKeyboardInputMode *)self isMultilingual])
    {
      [v24 setDetailLabelAlpha:1.0];
    }

    v26 = objc_alloc_init(getTUIKeyboardInputModeIconRendererClass_0());
    v27 = [v26 imageForPrimaryLabel:v10 secondaryLabel:v11 withConfiguration:v24];
    v28 = [v27 imageWithRenderingMode:2];
  }

  else
  {
    v29 = ceil(v17 * 0.0);
    v30 = v29 + v29;
    _UIGraphicsBeginImageContextWithOptions(0, 0, v19, v21, 2.0);
    GetContextStack(0);
    v31 = v19 - (v29 + v29);
    v32 = v21 - (v29 + v29);
    CGContextClear();
    if ([v13 background])
    {
      v53.origin.x = v29;
      v53.origin.y = v29;
      v53.size.width = v31;
      v53.size.height = v21 - v30;
      v54 = CGRectInset(v53, v17 * 1.5 * 0.5, v17 * 1.5 * 0.5);
      v33 = [UIBezierPath _continuousRoundedRectBezierPath:-1 withRoundedCorners:16 cornerRadius:v54.origin.x segments:v54.origin.y, v54.size.width, v54.size.height, v17 * 5.0, v17 * 5.0];
      v34 = +[UIColor blackColor];
      [v34 setStroke];

      [v33 setLineWidth:v17 * 1.5];
      [v33 stroke];
    }

    else
    {
      v33 = +[UIColor whiteColor];
      [v33 setFill];
    }

    if (v11)
    {
      v35 = v32 * 0.5 + -1.0;
      v36 = v31 + -2.0;
      v37 = v32 - (v35 + 1.0);
      [(UIKeyboardInputMode *)self drawStringInRect:v10 inRect:1 useSmallFont:v15 != 0 useCondensedFont:v29 + 1.0 scale:v29 + 1.0, v36, v37, v17];
      v38 = v29 + v35;
      v39 = self;
      v40 = v11;
      v41 = v29 + 1.0;
      v42 = v36;
      v43 = v37;
      v44 = 1;
      v45 = 0;
    }

    else
    {
      v55.origin.x = v29;
      v55.origin.y = v29;
      v55.size.width = v31;
      v55.size.height = v21 - v30;
      *&v41 = CGRectInset(v55, 2.0, 2.0);
      v39 = self;
      v40 = v10;
      v44 = 0;
      v45 = v15 != 0;
    }

    [(UIKeyboardInputMode *)v39 drawStringInRect:v40 inRect:v44 useSmallFont:v45 useCondensedFont:v41 scale:v38, v42, v43, v17];
    v24 = _UIGraphicsGetImageFromCurrentImageContext(0);
    UIGraphicsEndImageContext();
    v28 = [v24 imageWithRenderingMode:2];
  }

  return v28;
}

- (BOOL)isMultilingualOnly
{
  v2 = [(UIKeyboardInputMode *)self identifier];
  IsMultilingualOnly = TIInputModeIsMultilingualOnly();

  return IsMultilingualOnly;
}

- (unint64_t)multilingualIndex
{
  v3 = [(UIKeyboardInputMode *)self multilingualInputModeIdentifiers];
  v4 = [(UIKeyboardInputMode *)self identifier];
  v5 = [v3 indexOfObject:v4];

  return v5;
}

- (unint64_t)multiscriptIndex
{
  v3 = [(UIKeyboardInputMode *)self multiscriptInputModeIdentifiers];
  v4 = [(UIKeyboardInputMode *)self identifier];
  v5 = [v3 indexOfObject:v4];

  return v5;
}

- (id)multilingualSetFromInputModeIdentifiers:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIKeyboardInputMode *)self identifier];
  v6 = TIInputModeGetMultilingualSetFromInputModes();

  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:*(*(&v15 + 1) + 8 * i), v15];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (NSArray)multiscriptSet
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [(UIKeyboardInputMode *)self multiscriptInputModeIdentifiers];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v16;
    v9 = MEMORY[0x1E69E9C10];
    *&v6 = 136315394;
    v14 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v11, v14, v15];
        if (v12)
        {
          [v3 addObject:v12];
        }

        else if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          *buf = v14;
          v20 = "[UIKeyboardInputMode multiscriptSet]";
          v21 = 2112;
          v22 = v11;
          _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "%s: nil UIKeyboardInputMode for '%@'", buf, 0x16u);
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v7);
  }

  return v3;
}

+ (id)multilingualSetsFromInputModeIdentifiers:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v18 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v20;
    v10 = MEMORY[0x1E69E9C10];
    *&v7 = 136315394;
    v17 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v12, v17];
        if (v13)
        {
          if (([v4 containsObject:v13] & 1) == 0)
          {
            v14 = [v13 multilingualSetFromInputModeIdentifiers:v5];
            if ([v14 count])
            {
              v15 = [v14 firstObject];
              [v18 addObject:v15];

              [v4 addObjectsFromArray:v14];
            }

            else
            {
              [v18 addObject:v13];
              [v4 addObject:v13];
            }
          }
        }

        else if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          *buf = v17;
          v24 = "+[UIKeyboardInputMode multilingualSetsFromInputModeIdentifiers:]";
          v25 = 2112;
          v26 = v12;
          _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "%s: nil UIKeyboardInputMode for '%@'", buf, 0x16u);
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v8);
  }

  return v18;
}

- (void)setCurrentInputModeToActiveInputModeForMultilingualKeyboardForDictation
{
  if ([(UIKeyboardInputMode *)self isMultilingual])
  {
    v3 = [(UIKeyboardInputMode *)self multilingualLanguages];
    v4 = [(UIKeyboardInputMode *)self primaryLanguage];
    [UIDictationUtilities setActiveMultilingualKeyboardDictationMappings:v3 activeDictationlanguage:v4];

    v5 = +[UIKeyboardImpl activeInstance];
    [v5 setSuppressUpdateInputMode:1];
  }
}

@end