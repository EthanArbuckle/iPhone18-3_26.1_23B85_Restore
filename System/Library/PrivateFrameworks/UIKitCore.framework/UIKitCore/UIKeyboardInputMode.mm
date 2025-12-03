@interface UIKeyboardInputMode
+ (UIKeyboardInputMode)keyboardInputModeWithIdentifier:(id)identifier;
+ (id)_displayNameForMultilingualSet:(id)set forDisplayInLists:(BOOL)lists usingDeviceLanguage:(BOOL)language context:(int64_t)context;
+ (id)autofillSignupInputMode;
+ (id)canonicalLanguageIdentifierFromIdentifier:(id)identifier;
+ (id)dictationInputMode;
+ (id)hardwareLayoutFromIdentifier:(id)identifier;
+ (id)intlInputMode;
+ (id)multilingualSetsFromInputModeIdentifiers:(id)identifiers;
+ (id)softwareLayoutFromIdentifier:(id)identifier;
- (BOOL)defaultLayoutIsASCIICapable;
- (BOOL)isAllowedForTraits:(id)traits;
- (BOOL)isDefaultRightToLeft;
- (BOOL)isDesiredForTraits:(id)traits withExtended:(BOOL)extended;
- (BOOL)isEmojiInputMode;
- (BOOL)isEqual:(id)equal;
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
- (UIKeyboardInputMode)initWithCoder:(id)coder;
- (UIKeyboardInputMode)initWithIdentifier:(id)identifier;
- (double)languageIndicatorScale;
- (id)_fallbackIconLabel;
- (id)_iconLabelComponentsForMultilingualSet;
- (id)_iconLabelForMultilingualSet;
- (id)_iconLabelWithinMultiscriptSet;
- (id)_indicatorIconWithConfiguration:(id)configuration;
- (id)cursorAccessoryIcon;
- (id)imageForInputModeLabel:(id)label secondaryIconLabel:(id)iconLabel artwork:(id)artwork withConfiguration:(id)configuration;
- (id)indicatorIcon;
- (id)indicatorIconForSoftwareLayout;
- (id)indicatorTextIcon;
- (id)largeCursorAccessoryIcon;
- (id)multilingualInputModeIdentifiers;
- (id)multilingualSetFromInputModeIdentifiers:(id)identifiers;
- (id)multiscriptInputModeIdentifiers;
- (unint64_t)multilingualIndex;
- (unint64_t)multiscriptIndex;
- (void)_getIconLabel:(id *)label secondaryIconLabel:(id *)iconLabel artwork:(id *)artwork;
- (void)_getIconLabel:(id *)label secondaryIconLabel:(id *)iconLabel artwork:(id *)artwork inputModes:(id)modes;
- (void)dealloc;
- (void)drawStringInRect:(id)rect inRect:(CGRect)inRect useSmallFont:(BOOL)font useCondensedFont:(BOOL)condensedFont scale:(double)scale;
- (void)encodeWithCoder:(id)coder;
- (void)setCachedIcon:(id)icon;
- (void)setCurrentInputModeToActiveInputModeForMultilingualKeyboardForDictation;
- (void)setDictationLanguage:(id)language;
- (void)setLastUsedDictationLanguage;
@end

@implementation UIKeyboardInputMode

- (BOOL)isEmojiInputMode
{
  primaryLanguage = [(UIKeyboardInputMode *)self primaryLanguage];
  if ([primaryLanguage isEqualToString:@"emoji"])
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
  identifier = [(UIKeyboardInputMode *)self identifier];
  v4 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(identifier);
  v5 = v4;
  if (v4)
  {
    identifier2 = v4;
  }

  else
  {
    identifier2 = [(UIKeyboardInputMode *)self identifier];
  }

  v7 = identifier2;

  return v7;
}

- (BOOL)showSWLayoutWithHWKeyboard
{
  hardwareLayout = [(UIKeyboardInputMode *)self hardwareLayout];
  if (hardwareLayout)
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
  multilingualInputModeIdentifiers = [(UIKeyboardInputMode *)self multilingualInputModeIdentifiers];
  v3 = [multilingualInputModeIdentifiers count] > 1;

  return v3;
}

- (id)multilingualInputModeIdentifiers
{
  identifier = [(UIKeyboardInputMode *)self identifier];
  v3 = [UIKeyboardInputModeController multilingualSetForInputModeIdentifier:identifier];

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
    identifier2 = +[UIKeyboardInputModeController sharedInputModeController];
    inputModeThatInvokeEmoji = [identifier2 inputModeThatInvokeEmoji];
    identifier = [inputModeThatInvokeEmoji identifier];
    IsDefaultRightToLeft = UIKeyboardInputModeIsDefaultRightToLeft(identifier);
  }

  else
  {
    identifier2 = [(UIKeyboardInputMode *)self identifier];
    IsDefaultRightToLeft = UIKeyboardInputModeIsDefaultRightToLeft(identifier2);
  }

  return IsDefaultRightToLeft;
}

- (BOOL)isHandwritingInputMode
{
  normalizedIdentifier = [(UIKeyboardInputMode *)self normalizedIdentifier];
  v3 = [normalizedIdentifier hasSuffix:@"HWR"];

  return v3;
}

- (BOOL)showsTransliterationCandidates
{
  if ([(UIKeyboardInputMode *)self isMultiscript])
  {
    return 1;
  }

  identifier = [(UIKeyboardInputMode *)self identifier];
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

  multilingualInputModeIdentifiers = [(UIKeyboardInputMode *)self multilingualInputModeIdentifiers];
  if ([multilingualInputModeIdentifiers count] <= 1)
  {

LABEL_13:
    normalizedIdentifier = [(UIKeyboardInputMode *)self normalizedIdentifier];
    goto LABEL_14;
  }

  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(multilingualInputModeIdentifiers, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = multilingualInputModeIdentifiers;
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
  normalizedIdentifier = [v11 firstObject];

  if (!normalizedIdentifier)
  {
    goto LABEL_13;
  }

LABEL_14:
  v13 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:{normalizedIdentifier, v15}];

  return v13;
}

- (BOOL)isMultiscript
{
  multiscriptInputModeIdentifiers = [(UIKeyboardInputMode *)self multiscriptInputModeIdentifiers];
  v3 = [multiscriptInputModeIdentifiers count] > 1;

  return v3;
}

- (id)multiscriptInputModeIdentifiers
{
  identifier = [(UIKeyboardInputMode *)self identifier];
  v3 = [UIKeyboardInputModeController multilingualSetForInputModeIdentifier:identifier];
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
  selfCopy = self;
  v68 = *MEMORY[0x1E69E9840];
  languageWithRegion = [(UIKeyboardInputMode *)self languageWithRegion];
  v4 = off_1E70EA000;
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  languageWithRegion2 = [(UIKeyboardInputMode *)selfCopy languageWithRegion];
  v7 = [v5 defaultDictationLanguages:languageWithRegion2];

  v8 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v8 preferencesActions];
  v10 = [preferencesActions valueForPreferenceKey:@"DictationLanguagesLastUsed"];

  v11 = [v10 objectForKey:@"LastUsedDictationLangauge"];
  v12 = &unk_1ED46F000;
  if ([v7 count])
  {
    languageWithRegion3 = [(UIKeyboardInputMode *)selfCopy languageWithRegion];
    v14 = [v10 objectForKey:languageWithRegion3];

    if (v14 && (+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController, "sharedInputModeController"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isDictationLanguageEnabled:v14], v15, (v16 & 1) != 0))
    {
      languageWithRegion = v14;
    }

    else
    {
      v55 = selfCopy;
      v56 = v11;
      v57 = v10;
      v17 = +[UIKeyboardInputModeController sharedInputModeController];
      suggestedDictationLanguagesForDeviceLanguage = [v17 suggestedDictationLanguagesForDeviceLanguage];

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v19 = suggestedDictationLanguagesForDeviceLanguage;
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

      languageWithRegion = v14;
      v11 = v56;
      v10 = v57;
      selfCopy = v55;
    }
  }

  if (![v12 + 3656 _isUsingLargeFormatDictationUI])
  {
    if ((!languageWithRegion || (-[__objc2_class sharedInputModeController](v4[13], "sharedInputModeController"), v37 = objc_claimAutoreleasedReturnValue(), v38 = [v37 isDictationLanguageEnabled:languageWithRegion], v37, (v38 & 1) == 0)) && (v39 = v11, languageWithRegion, (languageWithRegion = v39) == 0) || (-[__objc2_class sharedInputModeController](v4[13], "sharedInputModeController"), v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "isDictationLanguageEnabled:", languageWithRegion), v40, (v41 & 1) == 0))
    {
      sharedInputModeController = [(__objc2_class *)v4[13] sharedInputModeController];
      enabledDictationLanguages = [sharedInputModeController enabledDictationLanguages];
      firstObject = [enabledDictationLanguages firstObject];

      if (!firstObject)
      {
        languageWithRegion4 = [(UIKeyboardInputMode *)selfCopy languageWithRegion];
        languageWithRegion = 0;
        goto LABEL_36;
      }

      v42 = firstObject;
LABEL_35:
      languageWithRegion = v42;
      languageWithRegion4 = v42;
      goto LABEL_36;
    }

LABEL_32:
    v42 = languageWithRegion;
    goto LABEL_35;
  }

  v29 = v4;
  if (languageWithRegion)
  {
    sharedInputModeController2 = [(__objc2_class *)v4[13] sharedInputModeController];
    v31 = [sharedInputModeController2 isDictationLanguageEnabled:languageWithRegion];

    if (v31)
    {
      goto LABEL_32;
    }
  }

  v32 = +[UIKeyboardImpl activeInstance];
  textInputTraits = [v32 textInputTraits];

  if (UIKeyboardTypeSupportsDictationSpelling([textInputTraits dictationKeyboardType]) || (objc_msgSend(textInputTraits, "isSecureTextEntry") & 1) != 0 || objc_msgSend(textInputTraits, "forceSpellingDictation"))
  {
    sharedInputModeController3 = [(__objc2_class *)v29[13] sharedInputModeController];
    enabledDictationLanguages2 = [sharedInputModeController3 enabledDictationLanguages];
    languageWithRegion4 = [enabledDictationLanguages2 firstObject];
  }

  else
  {
    languageWithRegion4 = 0;
  }

LABEL_36:

  return languageWithRegion4;
}

- (NSArray)normalizedIdentifierLevels
{
  identifier = [(UIKeyboardInputMode *)self identifier];
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
  _iconLabelComponentsForMultilingualSet = [(UIKeyboardInputMode *)self _iconLabelComponentsForMultilingualSet];
  v3 = [_iconLabelComponentsForMultilingualSet componentsJoinedByString:@" "];

  return v3;
}

- (id)_iconLabelComponentsForMultilingualSet
{
  v25 = *MEMORY[0x1E69E9840];
  normalizedIdentifier = [(UIKeyboardInputMode *)self normalizedIdentifier];
  IsTransliteration = TIInputModeIsTransliteration();

  if (IsTransliteration)
  {
    v5 = 0;
  }

  else
  {
    multilingualSet = [(UIKeyboardInputMode *)self multilingualSet];
    if ([multilingualSet count] < 2)
    {
      v5 = 0;
    }

    else
    {
      multilingualInputModeIdentifiers = [(UIKeyboardInputMode *)self multilingualInputModeIdentifiers];
      v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(multilingualSet, "count")}];
      array = [MEMORY[0x1E695DF70] array];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v8 = multilingualSet;
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
            normalizedIdentifier2 = [v13 normalizedIdentifier];
            v15 = TIInputModeIsTransliteration();

            if ((v15 & 1) == 0)
            {
              v19 = 0;
              [v13 _getIconLabel:&v19 secondaryIconLabel:0 artwork:0 inputModes:multilingualInputModeIdentifiers];
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
  identifier = [(UIKeyboardInputMode *)self identifier];
  v3 = [UIKeyboardInputModeController multilingualSetForInputModeIdentifier:identifier];

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

+ (id)canonicalLanguageIdentifierFromIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
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

+ (id)softwareLayoutFromIdentifier:(id)identifier
{
  v3 = TIInputModeGetComponentsFromIdentifier();
  v4 = [v3 objectForKey:@"sw"];

  return v4;
}

+ (id)hardwareLayoutFromIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = TIInputModeGetComponentsFromIdentifier();
  v5 = [v4 objectForKey:@"hw"];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(identifierCopy);

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

    identifierCopy = v7;
    v4 = v8;
  }

  return v6;
}

- (UIKeyboardInputMode)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = UIKeyboardInputMode;
  v5 = [(UIKeyboardInputMode *)&v18 init];
  v6 = v5;
  if (!identifierCopy)
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

  [(UIKeyboardInputMode *)v5 setIdentifier:identifierCopy];
  v7 = TIInputModeGetNormalizedIdentifier();
  [(UIKeyboardInputMode *)v6 setNormalizedIdentifier:v7];

  v8 = TIInputModeGetLanguageWithRegion();
  [(UIKeyboardInputMode *)v6 setLanguageWithRegion:v8];

  v9 = TIInputModeGetVariant();
  [(UIKeyboardInputMode *)v6 setVariant:v9];

  v10 = [UIKeyboardInputMode canonicalLanguageIdentifierFromIdentifier:identifierCopy];
  [(UIKeyboardInputMode *)v6 setPrimaryLanguage:v10];

  v11 = [UIKeyboardInputMode softwareLayoutFromIdentifier:identifierCopy];
  [(UIKeyboardInputMode *)v6 setSoftwareLayout:v11];

  v12 = +[UIKeyboardInputModeController sharedInputModeController];
  inputModesWithoutHardwareSupport = [v12 inputModesWithoutHardwareSupport];
  normalizedIdentifier = [(UIKeyboardInputMode *)v6 normalizedIdentifier];
  v15 = [inputModesWithoutHardwareSupport containsObject:normalizedIdentifier];

  if ((v15 & 1) == 0)
  {
    v16 = [UIKeyboardInputMode hardwareLayoutFromIdentifier:identifierCopy];
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69D9908] object:0];

    cachedIcon = self->_cachedIcon;
  }

  self->_cachedIcon = 0;

  cachedSizeCategory = self->_cachedSizeCategory;
  self->_cachedSizeCategory = 0;

  v9.receiver = self;
  v9.super_class = UIKeyboardInputMode;
  [(UIKeyboardInputMode *)&v9 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(UIKeyboardInputMode *)self identifier];
      identifier2 = [(UIKeyboardInputMode *)v5 identifier];
      if ([identifier isEqualToString:identifier2])
      {
        primaryLanguage = [(UIKeyboardInputMode *)self primaryLanguage];
        primaryLanguage2 = [(UIKeyboardInputMode *)v5 primaryLanguage];
        v10 = [primaryLanguage isEqualToString:primaryLanguage2];
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

- (void)setCachedIcon:(id)icon
{
  iconCopy = icon;
  cachedIcon = self->_cachedIcon;
  objc_storeStrong(&self->_cachedIcon, icon);
  v6 = self->_cachedIcon;
  if ((cachedIcon == 0) == (v6 != 0))
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = defaultCenter;
    if (v6)
    {
      [defaultCenter addObserver:self selector:sel_preferencesControllerChanged_ name:*MEMORY[0x1E69D9908] object:0];
    }

    else
    {
      [defaultCenter removeObserver:self name:*MEMORY[0x1E69D9908] object:0];
    }
  }
}

+ (UIKeyboardInputMode)keyboardInputModeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (qword_1ED498728 != -1)
  {
    dispatch_once(&qword_1ED498728, &__block_literal_global_1183);
  }

  v5 = [qword_1ED4986C0 objectForKey:identifierCopy];
  if (!v5)
  {
    if ([identifierCopy isEqualToString:@"dictation"])
    {
      dictationInputMode = [self dictationInputMode];
    }

    else if ([identifierCopy isEqualToString:@"autofillsignup"])
    {
      dictationInputMode = [self autofillSignupInputMode];
    }

    else
    {
      v7 = +[UIKeyboardInputModeController sharedInputModeController];
      v8 = [v7 identifierIsValidSystemInputMode:identifierCopy];

      if (v8)
      {
        v9 = UIKeyboardInputMode;
      }

      else
      {
        v9 = UIKeyboardExtensionInputMode;
      }

      dictationInputMode = [[v9 alloc] initWithIdentifier:identifierCopy];
    }

    v5 = dictationInputMode;
    if (dictationInputMode)
    {
      v10 = qword_1ED4986C0;
      identifier = [dictationInputMode identifier];
      [v10 setObject:v5 forKey:identifier];
    }

    else
    {
      if (identifierCopy)
      {
        [qword_1ED4986C0 removeObjectForKey:identifierCopy];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(UIKeyboardInputMode *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  primaryLanguage = [(UIKeyboardInputMode *)self primaryLanguage];
  [coderCopy encodeObject:primaryLanguage forKey:@"primaryLanguage"];
}

- (UIKeyboardInputMode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [(UIKeyboardInputMode *)self initWithIdentifier:v5];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryLanguage"];

  if (v7)
  {
    primaryLanguage = [(UIKeyboardInputMode *)v6 primaryLanguage];
    v9 = [primaryLanguage isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      [(UIKeyboardInputMode *)v6 setPrimaryLanguage:v7];
    }
  }

  return v6;
}

- (NSString)monolingualDisplayName
{
  identifier = [(UIKeyboardInputMode *)self identifier];
  v3 = UIKeyboardLocalizedInputModeName(identifier);

  return v3;
}

+ (id)_displayNameForMultilingualSet:(id)set forDisplayInLists:(BOOL)lists usingDeviceLanguage:(BOOL)language context:(int64_t)context
{
  listsCopy = lists;
  v58 = *MEMORY[0x1E69E9840];
  setCopy = set;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v8 = +[UIKeyboardInputModeController sharedInputModeController];
  enabledInputModeIdentifiers = [v8 enabledInputModeIdentifiers];

  v10 = [enabledInputModeIdentifiers countByEnumeratingWithState:&v52 objects:v57 count:16];
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
          objc_enumerationMutation(enabledInputModeIdentifiers);
        }

        v14 = TIInputModeGetLanguage();
        v15 = TIInputModeGetNormalizedIdentifier();
        v16 = [dictionary objectForKeyedSubscript:v14];
        if (!v16)
        {
          v16 = [MEMORY[0x1E695DFA8] set];
          [dictionary setObject:v16 forKeyedSubscript:v14];
        }

        [v16 addObject:v15];
      }

      v11 = [enabledInputModeIdentifiers countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v11);
  }

  firstObject = [setCopy firstObject];
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  v45 = setCopy;
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
          v27 = [dictionary objectForKeyedSubscript:v26];
          v28 = [v27 count];

          if (v28 >= 2)
          {
            v29 = TIInputModeGetLanguageWithRegion();

            v26 = v29;
          }

          v30 = MEMORY[0x1E695DF58];
          if (language)
          {
            _deviceLanguage = [MEMORY[0x1E695DF58] _deviceLanguage];
            v32 = [v30 localeWithLocaleIdentifier:_deviceLanguage];
          }

          else
          {
            v32 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v26];
          }

          v33 = [v32 localizedStringForLanguage:v26 context:context];
          [v20 addObject:v33];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v23);
  }

  if (language)
  {
    _deviceLanguage2 = [MEMORY[0x1E695DF58] _deviceLanguage];
  }

  else
  {
    firstObject2 = [v21 firstObject];
    _deviceLanguage2 = TIInputModeGetLanguageWithRegion();
  }

  if (listsCopy)
  {
    if ([v20 count] == 2)
    {
      v36 = MEMORY[0x1E696AEC0];
      v37 = _UILocalizedStringWithDefaultValueInLanguage(@"%@ & %@", _deviceLanguage2, @"%@ & %@");
      v38 = [v20 objectAtIndexedSubscript:0];
      v39 = [v20 objectAtIndexedSubscript:1];
      v40 = [v36 localizedStringWithFormat:v37, v38, v39];

      goto LABEL_33;
    }

    v37 = _UILocalizedStringWithDefaultValueInLanguage(@", ", _deviceLanguage2, @", ");
    v42 = [v20 componentsJoinedByString:v37];
  }

  else
  {
    v37 = objc_opt_new();
    v41 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:_deviceLanguage2];
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
    multilingualInputModeIdentifiers = [(UIKeyboardInputMode *)self multilingualInputModeIdentifiers];
    if ([multilingualInputModeIdentifiers count] >= 2)
    {
      monolingualDisplayName = [objc_opt_class() _displayNameForMultilingualSet:multilingualInputModeIdentifiers forDisplayInLists:1 usingDeviceLanguage:0 context:3];
      goto LABEL_6;
    }
  }

  else
  {
    multilingualInputModeIdentifiers = 0;
  }

  monolingualDisplayName = [(UIKeyboardInputMode *)self monolingualDisplayName];
LABEL_6:
  v5 = monolingualDisplayName;

  return v5;
}

- (BOOL)defaultLayoutIsASCIICapable
{
  identifier = [(UIKeyboardInputMode *)self identifier];
  IsASCIICapable = UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapable(identifier);

  return IsASCIICapable;
}

- (NSString)automaticHardwareLayout
{
  hardwareLayout = [(UIKeyboardInputMode *)self hardwareLayout];
  if ([hardwareLayout isEqualToString:@"Automatic"])
  {
    v4 = +[UIKeyboardInputModeController sharedInputModeController];
    v5 = [v4 hardwareLayoutToUseForInputMode:self];

    if (v5)
    {
      v6 = v5;

      hardwareLayout = v6;
    }
  }

  return hardwareLayout;
}

- (BOOL)supportsEmojiSearch
{
  if ([(UIKeyboardInputMode *)self isExtensionInputMode])
  {
    return 0;
  }

  v4 = MEMORY[0x1E695DF58];
  primaryLanguage = [(UIKeyboardInputMode *)self primaryLanguage];
  v6 = [v4 localeWithLocaleIdentifier:primaryLanguage];

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

- (BOOL)isAllowedForTraits:(id)traits
{
  traitsCopy = traits;
  normalizedIdentifier = [(UIKeyboardInputMode *)self normalizedIdentifier];
  if (![(UIKeyboardInputMode *)self isEmojiInputMode])
  {
    v7 = 1;
    goto LABEL_6;
  }

  if ([traitsCopy keyboardType] == 2 || objc_msgSend(traitsCopy, "keyboardType") == 123)
  {
    goto LABEL_4;
  }

  keyboardType = [traitsCopy keyboardType];
  v7 = 0;
  if ((keyboardType > 0xB || ((1 << keyboardType) & 0x930) == 0) && keyboardType != 127)
  {
    if ([traitsCopy keyboardType] == 13)
    {
LABEL_4:
      v7 = 0;
      goto LABEL_6;
    }

    if (+[UIKeyboard isMajelEnabled](UIKeyboard, "isMajelEnabled") && [traitsCopy forceFloatingKeyboard])
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
      v7 = [traitsCopy keyboardType] == 124;
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
    if ([traitsCopy disableHandwritingKeyboard])
    {
      goto LABEL_35;
    }

    v8 = +[UIKeyboardImpl activeInstance];
    _shouldSuppressSoftwareKeyboardByOneness = [v8 _shouldSuppressSoftwareKeyboardByOneness];

    if ((_shouldSuppressSoftwareKeyboardByOneness & 1) != 0 || !+[UIKeyboardVisualModeManager softwareKeyboardAllowedForActiveKeyboardSceneDelegate])
    {
      goto LABEL_35;
    }
  }

  else if (!v7)
  {
    goto LABEL_35;
  }

  if ([traitsCopy isSecureTextEntry])
  {
    identifierWithLayouts = [(UIKeyboardInputMode *)self identifierWithLayouts];
    IsSecure = UIKeyboardLayoutDefaultTypeForInputModeIsSecure(identifierWithLayouts);

    if (!IsSecure)
    {
      goto LABEL_35;
    }
  }

  if ([traitsCopy isCarPlayIdiom] && !_UIKeyboardInputModeDefaultLayoutIsCarPlayEnabled(self) || (objc_msgSend(traitsCopy, "keyboardType") == 1 || objc_msgSend(traitsCopy, "keyboardType") == 11 || objc_msgSend(traitsCopy, "keyboardType") == 127) && !UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapableExtended(normalizedIdentifier))
  {
    goto LABEL_35;
  }

  if ([traitsCopy keyboardType] == 4)
  {
    v12 = +[UIDevice currentDevice];
    if ([v12 userInterfaceIdiom])
    {

      goto LABEL_33;
    }

    v15 = dyld_program_sdk_at_least();

    if ((v15 & 1) != 0 || UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapableExtended(normalizedIdentifier))
    {
      goto LABEL_33;
    }

LABEL_35:
    v16 = 0;
    goto LABEL_36;
  }

LABEL_33:
  v16 = [traitsCopy keyboardType] != 122 || -[UIKeyboardInputMode supportsEmojiSearch](self, "supportsEmojiSearch");
LABEL_36:

  return v16;
}

- (BOOL)isDesiredForTraits:(id)traits withExtended:(BOOL)extended
{
  extendedCopy = extended;
  traitsCopy = traits;
  normalizedIdentifier = [(UIKeyboardInputMode *)self normalizedIdentifier];
  if ([traitsCopy isSecureTextEntry])
  {
    IsSecure = UIKeyboardLayoutDefaultTypeForInputModeIsSecure(normalizedIdentifier);
  }

  else if ([traitsCopy isCarPlayIdiom])
  {
    IsSecure = _UIKeyboardInputModeDefaultLayoutIsCarPlayEnabled(self);
  }

  else
  {
    if (!+[UITextInputTraits keyboardTypeRequiresASCIICapable:](UITextInputTraits, "keyboardTypeRequiresASCIICapable:", [traitsCopy keyboardType]))
    {
      v9 = 1;
      goto LABEL_6;
    }

    if (extendedCopy)
    {
      IsSecure = UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapableExtended(normalizedIdentifier);
    }

    else
    {
      IsSecure = UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapable(normalizedIdentifier);
    }
  }

  v9 = IsSecure;
LABEL_6:

  return v9;
}

- (NSString)dictationDisplayName
{
  dictationLanguage = [(UIKeyboardInputMode *)self dictationLanguage];
  v4 = UIKeyboardLocalizedDictationDisplayName(dictationLanguage);
  v5 = v4;
  if (v4)
  {
    extendedDisplayName = v4;
  }

  else
  {
    extendedDisplayName = [(UIKeyboardInputMode *)self extendedDisplayName];
  }

  v7 = extendedDisplayName;

  return v7;
}

- (NSString)defaultDictationLanguage
{
  v22 = *MEMORY[0x1E69E9840];
  languageWithRegion = [(UIKeyboardInputMode *)self languageWithRegion];
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  languageWithRegion2 = [(UIKeyboardInputMode *)self languageWithRegion];
  v6 = [v4 defaultDictationLanguages:languageWithRegion2];

  if ([v6 count])
  {
    v7 = +[UIKeyboardInputModeController sharedInputModeController];
    suggestedDictationLanguagesForDeviceLanguage = [v7 suggestedDictationLanguagesForDeviceLanguage];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = suggestedDictationLanguagesForDeviceLanguage;
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
            firstObject = v14;

            languageWithRegion = v9;
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

    firstObject = [v6 firstObject];
LABEL_13:

    languageWithRegion = firstObject;
  }

  return languageWithRegion;
}

- (void)setDictationLanguage:(id)language
{
  languageCopy = language;
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  languageWithRegion = [(UIKeyboardInputMode *)self languageWithRegion];
  v6 = [v4 defaultDictationLanguages:languageWithRegion];

  if ([v6 containsObject:languageCopy])
  {
    v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v7 preferencesActions];
    v9 = [preferencesActions valueForPreferenceKey:@"DictationLanguagesLastUsed"];
    v10 = [v9 mutableCopy];

    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    languageWithRegion2 = [(UIKeyboardInputMode *)self languageWithRegion];
    [v10 setObject:languageCopy forKey:languageWithRegion2];

    v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions2 = [v12 preferencesActions];
    [preferencesActions2 setLastUsedDictationLanguages:v10];
  }
}

- (void)setLastUsedDictationLanguage
{
  dictationLanguage = [(UIKeyboardInputMode *)self dictationLanguage];
  if (dictationLanguage)
  {
    v9 = dictationLanguage;
    v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v3 preferencesActions];
    v5 = [preferencesActions valueForPreferenceKey:@"DictationLanguagesLastUsed"];
    v6 = [v5 mutableCopy];

    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v6 setObject:v9 forKey:@"LastUsedDictationLangauge"];
    v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions2 = [v7 preferencesActions];
    [preferencesActions2 setLastUsedDictationLanguages:v6];

    dictationLanguage = v9;
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
  multiscriptInputModeIdentifiers = [(UIKeyboardInputMode *)self multiscriptInputModeIdentifiers];
  [(UIKeyboardInputMode *)self _getIconLabel:&v7 secondaryIconLabel:0 artwork:0 inputModes:multiscriptInputModeIdentifiers];
  v4 = v7;
  v5 = v7;

  return v4;
}

- (id)_fallbackIconLabel
{
  identifier = [(UIKeyboardInputMode *)self identifier];
  v4 = UIKeyboardLocalizedString(@"UI-ABC", identifier, 0, 0);
  _firstGrapheme = [v4 _firstGrapheme];

  if ([_firstGrapheme isEqual:@"A"])
  {

    _firstGrapheme = 0;
  }

  primaryLanguage = [(UIKeyboardInputMode *)self primaryLanguage];
  [primaryLanguage cStringUsingEncoding:4];
  uscript_getCode();
  if (v14 != 25 && v14 != 8)
  {
    goto LABEL_4;
  }

  primaryLanguage2 = [(UIKeyboardInputMode *)self primaryLanguage];
  if ([primaryLanguage2 length] >= 3)
  {
    v9 = [primaryLanguage2 substringToIndex:2];

    primaryLanguage2 = v9;
  }

  uppercaseString = [primaryLanguage2 uppercaseString];

  if (!uppercaseString)
  {
LABEL_4:
    if (_firstGrapheme)
    {
      uppercaseString = _firstGrapheme;
    }

    else
    {
      identifier2 = [(UIKeyboardInputMode *)self identifier];
      v11 = UIKeyboardLocalizedInputModeName(identifier2);
      uppercaseString = [v11 _firstGrapheme];
    }
  }

  v12 = uppercaseString;

  return v12;
}

- (void)_getIconLabel:(id *)label secondaryIconLabel:(id *)iconLabel artwork:(id *)artwork
{
  v9 = UIKeyboardGetActiveUniqueInputModesForHardwareKeyboard();
  [(UIKeyboardInputMode *)self _getIconLabel:label secondaryIconLabel:iconLabel artwork:artwork inputModes:v9];
}

- (void)_getIconLabel:(id *)label secondaryIconLabel:(id *)iconLabel artwork:(id *)artwork inputModes:(id)modes
{
  v74 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  identifier = [(UIKeyboardInputMode *)self identifier];
  _fallbackIconLabel = UIKeyboardLocalizedObject(@"UI-IconLabel", identifier, 0, 0, 0);
  v13 = UIKeyboardLocalizedObject(@"UI-IconLabelScript", identifier, 0, 0, 0);
  v14 = UIKeyboardLocalizedObject(@"UI-IconLabelLanguage", identifier, 0, 0, 0);
  v62 = v14;
  v15 = UIKeyboardLocalizedObject(@"UI-IconLabelLanguageVariant", identifier, 0, 0, 0);
  v58 = UIKeyboardLocalizedObject(@"UI-IconArtworkShort", identifier, 0, 0, 0);
  v59 = UIKeyboardLocalizedObject(@"UI-IconArtworkFull", identifier, 0, 0, 0);
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
  selfCopy = self;
  if (v17)
  {
    goto LABEL_32;
  }

  labelCopy = label;
  v50 = _fallbackIconLabel;
  iconLabelCopy = iconLabel;
  artworkCopy = artwork;
  v56 = modesCopy;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v18 = modesCopy;
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
        if (([identifier isEqualToString:{v24, labelCopy}] & 1) == 0)
        {
          v25 = identifier;
          v26 = UIKeyboardLocalizedObject(@"UI-IconLabelScript", v24, 0, 0, 0);
          v27 = UIKeyboardLocalizedObject(@"UI-IconLabelLanguage", v24, 0, 0, 0);
          v28 = [v63 isEqualToString:v26];
          if ([v62 isEqualToString:v27])
          {
            v29 = UIKeyboardLocalizedObject(@"UI-IconLabelLanguageVariant", v24, 0, 0, 0);
            v61 |= [v60 isEqualToString:v29] ^ 1;
          }

          v21 |= v28;

          identifier = v25;
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
    _fallbackIconLabel = v63;

    v30 = 0;
    v31 = 0;
    artwork = artworkCopy;
    modesCopy = v56;
    iconLabel = iconLabelCopy;
    label = labelCopy;
LABEL_33:
    v33 = v58;
    goto LABEL_34;
  }

  iconLabel = iconLabelCopy;
  artwork = artworkCopy;
  _fallbackIconLabel = v50;
  label = labelCopy;
  if (v59)
  {
    v30 = v59;
    v31 = 0;
    modesCopy = v56;
    goto LABEL_33;
  }

  modesCopy = v56;
  if ((v61 & 1) == 0)
  {
    if (v62)
    {
      v34 = v62;

      v30 = 0;
      v31 = 0;
      _fallbackIconLabel = v34;
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

    _fallbackIconLabel = v32;
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
      labelCopy2 = label;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v37 = modesCopy;
      v38 = [v37 countByEnumeratingWithState:&v64 objects:v72 count:16];
      if (v38)
      {
        v39 = v38;
        v51 = _fallbackIconLabel;
        iconLabelCopy2 = iconLabel;
        artworkCopy2 = artwork;
        v57 = modesCopy;
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
            if (([identifier isEqualToString:{v42, labelCopy}] & 1) == 0)
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
        artwork = artworkCopy2;
        modesCopy = v57;
        _fallbackIconLabel = v51;
        iconLabel = iconLabelCopy2;
      }

      v30 = v35;
      label = labelCopy2;
    }

    else
    {
      v30 = v35;
    }

    v33 = v58;
  }

  if (!_fallbackIconLabel)
  {
    _fallbackIconLabel = [(UIKeyboardInputMode *)selfCopy _fallbackIconLabel];
  }

  if (label)
  {
    v45 = _fallbackIconLabel;
    *label = _fallbackIconLabel;
  }

  if (iconLabel)
  {
    v46 = v31;
    *iconLabel = v31;
  }

  if (artwork)
  {
    v47 = v30;
    *artwork = v30;
  }
}

- (double)languageIndicatorScale
{
  if (qword_1ED498768 != -1)
  {
    dispatch_once(&qword_1ED498768, &__block_literal_global_1221);
  }

  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  v3 = [qword_1ED498760 objectForKeyedSubscript:preferredContentSizeCategory];
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

- (id)_indicatorIconWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [configurationCopy hash];
  if ([configurationCopy background])
  {
    cachedIcon = [(UIKeyboardInputMode *)self cachedIcon];
    if (cachedIcon && [(UIKeyboardInputMode *)self cachedIconKey]== v5)
    {
      cachedSizeCategory = [(UIKeyboardInputMode *)self cachedSizeCategory];
      preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
      v9 = [cachedSizeCategory isEqual:preferredContentSizeCategory];

      if (v9)
      {
        cachedIcon2 = [(UIKeyboardInputMode *)self cachedIcon];
        goto LABEL_24;
      }
    }

    else
    {
    }
  }

  identifier = [(UIKeyboardInputMode *)self identifier];
  v12 = [identifier hasPrefix:@"emoji"];

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

    imageConfiguration = [UITraitCollection traitCollectionWithUserInterfaceStyle:v14];
    v16 = imageConfiguration;
    if (imageConfiguration)
    {
      imageConfiguration = [imageConfiguration imageConfiguration];
    }

    v17 = imageConfiguration;

    v18 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleFootnote" scale:-1];
    v19 = [v17 configurationByApplyingConfiguration:v18];

    [configurationCopy size];
    v21 = +[UIImageSymbolConfiguration configurationWithPointSize:weight:](UIImageSymbolConfiguration, "configurationWithPointSize:weight:", [configurationCopy weight], v20);
    v22 = [v19 configurationByApplyingConfiguration:v21];

    cachedIcon2 = [UIImage _systemImageNamed:@"face.grinning" withConfiguration:v22];
    goto LABEL_22;
  }

  if (![(UIKeyboardInputMode *)self isMultilingual]|| ([(UIKeyboardInputMode *)self identifier], v23 = objc_claimAutoreleasedReturnValue(), v24 = UIKeyboardShowsTransliterationCandidatesForInputMode(), v23, (v24 & 1) != 0))
  {
    v25 = 0;
LABEL_17:
    if ([configurationCopy softwareLayout])
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

  _iconLabelComponentsForMultilingualSet = [(UIKeyboardInputMode *)self _iconLabelComponentsForMultilingualSet];
  if ([_iconLabelComponentsForMultilingualSet count] == 2)
  {
    v22 = [_iconLabelComponentsForMultilingualSet objectAtIndexedSubscript:0];
    v25 = [_iconLabelComponentsForMultilingualSet objectAtIndexedSubscript:1];

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
  cachedIcon2 = [(UIKeyboardInputMode *)self imageForInputModeLabel:v22 secondaryIconLabel:v25 artwork:v29 withConfiguration:configurationCopy];

LABEL_22:
  if ([configurationCopy background])
  {
    [(UIKeyboardInputMode *)self setCachedIcon:cachedIcon2];
    [(UIKeyboardInputMode *)self setCachedIconKey:v5];
    preferredContentSizeCategory2 = [UIApp preferredContentSizeCategory];
    [(UIKeyboardInputMode *)self setCachedSizeCategory:preferredContentSizeCategory2];
  }

LABEL_24:

  return cachedIcon2;
}

- (void)drawStringInRect:(id)rect inRect:(CGRect)inRect useSmallFont:(BOOL)font useCondensedFont:(BOOL)condensedFont scale:(double)scale
{
  height = inRect.size.height;
  width = inRect.size.width;
  x = inRect.origin.x;
  y = inRect.origin.y;
  v10 = 12.0;
  if (condensedFont)
  {
    v10 = 9.5;
  }

  if (font)
  {
    v11 = 8.5;
  }

  else
  {
    v11 = v10;
  }

  if (font)
  {
    v12 = off_1E70ECD08;
  }

  else
  {
    v12 = off_1E70ECD30;
  }

  v64[1] = *MEMORY[0x1E69E9840];
  if (condensedFont)
  {
    v13 = off_1E70ECCE8;
  }

  else
  {
    v13 = off_1E70ECCF8;
  }

  rectCopy = rect;
  UICeilToScale(v11 * scale, 2.0);
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
    v21 = [v26 initWithString:rectCopy attributes:v27];

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

- (id)imageForInputModeLabel:(id)label secondaryIconLabel:(id)iconLabel artwork:(id)artwork withConfiguration:(id)configuration
{
  labelCopy = label;
  iconLabelCopy = iconLabel;
  artworkCopy = artwork;
  configurationCopy = configuration;
  identifier = [(UIKeyboardInputMode *)self identifier];
  v15 = UIKeyboardLocalizedObject(@"UI-IconLabelLanguageUsesCondensedFont", identifier, 0, 0, 0);

  [configurationCopy scaleFactor];
  v17 = v16;
  [configurationCopy size];
  v19 = ceil(v17 * v18);
  [configurationCopy size];
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
    [v24 setStyle:{objc_msgSend(configurationCopy, "background")}];
    if (objc_opt_respondsToSelector())
    {
      languageWithRegion = [(UIKeyboardInputMode *)self languageWithRegion];
      [v24 setLanguage:languageWithRegion];
    }

    if (objc_opt_respondsToSelector())
    {
      [v24 setArtwork:artworkCopy];
    }

    if ([(UIKeyboardInputMode *)self isMultilingual])
    {
      [v24 setDetailLabelAlpha:1.0];
    }

    v26 = objc_alloc_init(getTUIKeyboardInputModeIconRendererClass_0());
    v27 = [v26 imageForPrimaryLabel:labelCopy secondaryLabel:iconLabelCopy withConfiguration:v24];
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
    if ([configurationCopy background])
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

    if (iconLabelCopy)
    {
      v35 = v32 * 0.5 + -1.0;
      v36 = v31 + -2.0;
      v37 = v32 - (v35 + 1.0);
      [(UIKeyboardInputMode *)self drawStringInRect:labelCopy inRect:1 useSmallFont:v15 != 0 useCondensedFont:v29 + 1.0 scale:v29 + 1.0, v36, v37, v17];
      v38 = v29 + v35;
      selfCopy2 = self;
      v40 = iconLabelCopy;
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
      selfCopy2 = self;
      v40 = labelCopy;
      v44 = 0;
      v45 = v15 != 0;
    }

    [(UIKeyboardInputMode *)selfCopy2 drawStringInRect:v40 inRect:v44 useSmallFont:v45 useCondensedFont:v41 scale:v38, v42, v43, v17];
    v24 = _UIGraphicsGetImageFromCurrentImageContext(0);
    UIGraphicsEndImageContext();
    v28 = [v24 imageWithRenderingMode:2];
  }

  return v28;
}

- (BOOL)isMultilingualOnly
{
  identifier = [(UIKeyboardInputMode *)self identifier];
  IsMultilingualOnly = TIInputModeIsMultilingualOnly();

  return IsMultilingualOnly;
}

- (unint64_t)multilingualIndex
{
  multilingualInputModeIdentifiers = [(UIKeyboardInputMode *)self multilingualInputModeIdentifiers];
  identifier = [(UIKeyboardInputMode *)self identifier];
  v5 = [multilingualInputModeIdentifiers indexOfObject:identifier];

  return v5;
}

- (unint64_t)multiscriptIndex
{
  multiscriptInputModeIdentifiers = [(UIKeyboardInputMode *)self multiscriptInputModeIdentifiers];
  identifier = [(UIKeyboardInputMode *)self identifier];
  v5 = [multiscriptInputModeIdentifiers indexOfObject:identifier];

  return v5;
}

- (id)multilingualSetFromInputModeIdentifiers:(id)identifiers
{
  v20 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  identifier = [(UIKeyboardInputMode *)self identifier];
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
  multiscriptInputModeIdentifiers = [(UIKeyboardInputMode *)self multiscriptInputModeIdentifiers];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(multiscriptInputModeIdentifiers, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = multiscriptInputModeIdentifiers;
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

+ (id)multilingualSetsFromInputModeIdentifiers:(id)identifiers
{
  v28 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = identifiersCopy;
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
          if (([array2 containsObject:v13] & 1) == 0)
          {
            v14 = [v13 multilingualSetFromInputModeIdentifiers:v5];
            if ([v14 count])
            {
              firstObject = [v14 firstObject];
              [array addObject:firstObject];

              [array2 addObjectsFromArray:v14];
            }

            else
            {
              [array addObject:v13];
              [array2 addObject:v13];
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

  return array;
}

- (void)setCurrentInputModeToActiveInputModeForMultilingualKeyboardForDictation
{
  if ([(UIKeyboardInputMode *)self isMultilingual])
  {
    multilingualLanguages = [(UIKeyboardInputMode *)self multilingualLanguages];
    primaryLanguage = [(UIKeyboardInputMode *)self primaryLanguage];
    [UIDictationUtilities setActiveMultilingualKeyboardDictationMappings:multilingualLanguages activeDictationlanguage:primaryLanguage];

    v5 = +[UIKeyboardImpl activeInstance];
    [v5 setSuppressUpdateInputMode:1];
  }
}

@end