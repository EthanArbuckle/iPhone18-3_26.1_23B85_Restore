@interface TIInputMode
- (BOOL)deletesByComposedCharacterSequence;
- (BOOL)doesComposeText;
- (BOOL)doesSupportInlineCompletion;
- (BOOL)isEqual:(id)a3;
- (BOOL)preferredModelLocaleIsMultilingual;
- (BOOL)spaceAutocorrectionEnabled;
- (BOOL)supportsMultilingualKeyboard;
- (BOOL)supportsPrediction;
- (BOOL)typedStringLMRankingEnabled;
- (BOOL)wantsMultilingualUnionOVS;
- (Class)inputManagerClass;
- (Class)keyboardFeatureSpecializationClass;
- (Class)keyboardFeatureSpecializationClassFromInputModeProperties;
- (Class)multilingualInputManagerClass;
- (NSArray)additionalConfiguredLatinLanguages;
- (NSArray)allAccentKeyStrings;
- (NSDictionary)compositionMap;
- (NSDictionary)layoutTags;
- (NSDictionary)reverseCompositionMap;
- (NSLocale)locale;
- (NSString)autocorrectionLocaleIdentifier;
- (NSString)clauseDelimitingCharacters;
- (NSString)languageWithRegion;
- (NSString)nonstopPunctuationCharacters;
- (NSString)preferredModelLocaleIdentifier;
- (NSString)replacementForDoubleSpace;
- (NSString)sentenceDelimitingCharacters;
- (NSString)sentencePrefixingCharacters;
- (NSString)sentenceTrailingCharacters;
- (NSString)spaceDeletingCharacters;
- (NSString)variant;
- (NSString)wordMedialPunctuationCharacters;
- (TIInputMode)initWithNormalizedIdentifier:(id)a3 isSiriMode:(BOOL)a4;
- (id)description;
- (id)preferredMultilingualLanguageModelLocale;
- (unint64_t)hash;
- (void)setQuickTypeKeyboardFeatureSpecializationClass;
@end

@implementation TIInputMode

- (Class)multilingualInputManagerClass
{
  multilingualInputManagerClass = self->_multilingualInputManagerClass;
  if (!multilingualInputManagerClass)
  {
    v4 = [(TIInputMode *)self normalizedIdentifier];
    v5 = TIGetInputModeProperties();

    v6 = [v5 objectForKey:*MEMORY[0x277D6F760]];
    v7 = [v6 BOOLValue];

    if (v7 && ([(objc_class *)[(TIInputMode *)self inputManagerClass] isSubclassOfClass:objc_opt_class()]& 1) == 0)
    {
      v8 = objc_opt_class();
    }

    else
    {
      v8 = [(TIInputMode *)self inputManagerClass];
    }

    self->_multilingualInputManagerClass = v8;

    multilingualInputManagerClass = self->_multilingualInputManagerClass;
  }

  return multilingualInputManagerClass;
}

- (NSString)languageWithRegion
{
  languageWithRegion = self->_languageWithRegion;
  if (!languageWithRegion)
  {
    v4 = [(TIInputMode *)self normalizedIdentifier];
    v5 = TIInputModeGetLanguageWithRegion();
    v6 = [v5 copy];
    v7 = self->_languageWithRegion;
    self->_languageWithRegion = v6;

    languageWithRegion = self->_languageWithRegion;
  }

  return languageWithRegion;
}

- (unint64_t)hash
{
  v3 = [(TIInputMode *)self normalizedIdentifier];
  v4 = [v3 hash];

  v5 = [(TIInputMode *)self isSiriMode];
  v6 = 81069269;
  if (v5)
  {
    v6 = 16843009;
  }

  return v6 + v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(TIInputMode *)self normalizedIdentifier];
  v6 = [v3 stringWithFormat:@"<%@: %p identifier = %@>", v4, self, v5];;

  return v6;
}

- (NSLocale)locale
{
  locale = self->_locale;
  if (!locale)
  {
    v4 = objc_alloc(MEMORY[0x277CBEAF8]);
    v5 = [(TIInputMode *)self normalizedIdentifier];
    v6 = [v4 initWithLocaleIdentifier:v5];
    v7 = self->_locale;
    self->_locale = v6;

    locale = self->_locale;
  }

  return locale;
}

- (NSDictionary)compositionMap
{
  v2 = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F698]];

  return v4;
}

- (NSDictionary)reverseCompositionMap
{
  v2 = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F720]];

  return v4;
}

- (NSArray)allAccentKeyStrings
{
  v2 = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F668]];

  return v4;
}

- (NSString)replacementForDoubleSpace
{
  v2 = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F6C8]];

  return v4;
}

- (NSString)preferredModelLocaleIdentifier
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v5 = [(TIInputMode *)self locale];
    v4 = [v5 localeIdentifier];
    goto LABEL_5;
  }

  v3 = [(TIInputMode *)self preferredMultilingualLanguageModelLocale];
  if (v3)
  {
    v4 = v3;
    v5 = v4;
LABEL_5:
    v6 = v4;
    goto LABEL_6;
  }

  v8 = [(TIInputMode *)self locale];
  v6 = [v8 localeIdentifier];

  v5 = 0;
LABEL_6:

  return v6;
}

- (id)preferredMultilingualLanguageModelLocale
{
  v2 = [(TIInputMode *)self originalIdentifier];
  v3 = TIInputModeGetPreferredMultilingualLanguageModelLocale();

  return v3;
}

- (BOOL)preferredModelLocaleIsMultilingual
{
  v2 = self;
  v3 = [(TIInputMode *)self preferredModelLocaleIdentifier];
  v4 = [(TIInputMode *)v2 preferredMultilingualLanguageModelLocale];
  LOBYTE(v2) = v3 == v4;

  return v2;
}

- (BOOL)doesSupportInlineCompletion
{
  v2 = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F6E8]];
  v5 = [v4 BOOLValue];

  return v5;
}

- (NSString)autocorrectionLocaleIdentifier
{
  v2 = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F678]];

  return v4;
}

- (NSString)spaceDeletingCharacters
{
  v2 = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F748]];

  return v4;
}

- (NSString)wordMedialPunctuationCharacters
{
  v2 = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F780]];

  return v4;
}

- (NSString)sentenceTrailingCharacters
{
  v2 = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F738]];

  return v4;
}

- (NSString)clauseDelimitingCharacters
{
  v2 = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F688]];

  return v4;
}

- (NSString)sentenceDelimitingCharacters
{
  v2 = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F728]];

  return v4;
}

- (NSString)sentencePrefixingCharacters
{
  v2 = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F730]];

  return v4;
}

- (NSString)nonstopPunctuationCharacters
{
  v2 = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F710]];

  return v4;
}

- (NSDictionary)layoutTags
{
  v2 = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F700]];

  return v4;
}

- (BOOL)deletesByComposedCharacterSequence
{
  v2 = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F6C0]];

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)doesComposeText
{
  v2 = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F690]];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)typedStringLMRankingEnabled
{
  v2 = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();

  v4 = [v3 objectForKey:*MEMORY[0x277D6F768]];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)spaceAutocorrectionEnabled
{
  if (TIGetKeyboardDisableSpaceCorrectionsValue_onceToken != -1)
  {
    dispatch_once(&TIGetKeyboardDisableSpaceCorrectionsValue_onceToken, &__block_literal_global_147);
  }

  v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = [v3 valueForPreferenceKey:@"KeyboardDisableSpaceCorrections"];

  LOBYTE(v3) = [v4 BOOLValue];
  if (v3)
  {
    return 0;
  }

  if (TIGetKeyboardForceSpaceCorrectionsValue_onceToken != -1)
  {
    dispatch_once(&TIGetKeyboardForceSpaceCorrectionsValue_onceToken, &__block_literal_global_158);
  }

  v6 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v7 = [v6 valueForPreferenceKey:@"KeyboardForceSpaceCorrections"];

  LOBYTE(v6) = [v7 BOOLValue];
  if (v6)
  {
    return 1;
  }

  v8 = [(TIInputMode *)self normalizedIdentifier];
  v9 = TIGetInputModeProperties();

  v10 = [v9 objectForKey:*MEMORY[0x277D6F740]];
  v11 = v10;
  if (v10)
  {
    v5 = [v10 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)wantsMultilingualUnionOVS
{
  v2 = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();

  v4 = [v3 objectForKey:*MEMORY[0x277D6F778]];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)supportsMultilingualKeyboard
{
  v2 = [(TIInputMode *)self originalIdentifier];
  v3 = TIInputModeSupportsMultilingual();

  return v3;
}

- (BOOL)supportsPrediction
{
  v2 = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();

  v4 = [v3 objectForKey:*MEMORY[0x277D6F6D8]];
  v5 = [v4 BOOLValue];

  return v5;
}

- (Class)keyboardFeatureSpecializationClass
{
  keyboardFeatureSpecializationClass = self->_keyboardFeatureSpecializationClass;
  if (!keyboardFeatureSpecializationClass)
  {
    keyboardFeatureSpecializationClass = [(TIInputMode *)self keyboardFeatureSpecializationClassFromInputModeProperties];
    self->_keyboardFeatureSpecializationClass = keyboardFeatureSpecializationClass;
    if (!keyboardFeatureSpecializationClass)
    {
      v4 = [(TIInputMode *)self supportsPrediction];
      v5 = off_27872D600;
      if (!v4)
      {
        v5 = off_27872D560;
      }

      v6 = *v5;
      keyboardFeatureSpecializationClass = objc_opt_class();
      self->_keyboardFeatureSpecializationClass = keyboardFeatureSpecializationClass;
    }
  }

  return keyboardFeatureSpecializationClass;
}

- (Class)keyboardFeatureSpecializationClassFromInputModeProperties
{
  v3 = [(TIInputMode *)self normalizedIdentifier];
  v4 = TIGetInputModeProperties();

  v5 = [v4 objectForKey:*MEMORY[0x277D6F6F8]];
  v6 = NSClassFromString(v5);
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = [(TIInputMode *)self normalizedIdentifier];
    v10 = TIBundleForInputMode();

    v7 = [v10 classNamed:v5];
  }

  v11 = v7;

  return v7;
}

- (Class)inputManagerClass
{
  inputManagerClass = self->_inputManagerClass;
  if (!inputManagerClass)
  {
    v4 = [(TIInputMode *)self normalizedIdentifier];
    v5 = TIGetInputModeProperties();

    if (self->_inputManagerClass)
    {
LABEL_13:

      inputManagerClass = self->_inputManagerClass;
      goto LABEL_14;
    }

    v6 = [v5 objectForKey:*MEMORY[0x277D6F6F0]];
    if (!v6)
    {
LABEL_11:

      if (!self->_inputManagerClass)
      {
        self->_inputManagerClass = objc_opt_class();
      }

      goto LABEL_13;
    }

    v7 = [(TIInputMode *)self normalizedIdentifier];
    v8 = TIBundleForInputMode();

    v9 = [v8 classNamed:v6];
    self->_inputManagerClass = v9;
    if (!v9)
    {
      if ([v6 isEqualToString:@"TIKeyboardInputManagerTransliteration"])
      {
        v10 = off_27872D5B0;
LABEL_9:
        v11 = *v10;
        self->_inputManagerClass = objc_opt_class();
        goto LABEL_10;
      }

      if ([v6 isEqualToString:@"TIKeyboardInputManagerIndic"])
      {
        v10 = off_27872D580;
        goto LABEL_9;
      }
    }

LABEL_10:

    goto LABEL_11;
  }

LABEL_14:

  return inputManagerClass;
}

- (NSArray)additionalConfiguredLatinLanguages
{
  originalIdentifier = self->_originalIdentifier;
  v4 = TIInputModeGetMultilingualID();

  v5 = self->_originalIdentifier;
  if (v4)
  {
    v6 = TIInputModeGetMultilingualSet();
    v7 = [v6 mutableCopy];

    [v7 removeObject:self->_originalIdentifier];
    v8 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1246];
    [v7 filterUsingPredicate:v8];
LABEL_8:

    goto LABEL_9;
  }

  v8 = TIInputModeGetNormalizedIdentifier();
  if (![v8 isEqualToString:@"ko_KR"])
  {
    v7 = 0;
    goto LABEL_8;
  }

  v9 = self->_originalIdentifier;
  v10 = TIInputModeGetSWLayout();
  v11 = [v10 isEqualToString:@"Korean-With-QWERTY"];

  if (v11)
  {
    v7 = &unk_28400B8E0;
  }

  else
  {
    v7 = 0;
  }

LABEL_9:

  return v7;
}

- (NSString)variant
{
  variant = self->_variant;
  if (!variant)
  {
    v4 = [(TIInputMode *)self normalizedIdentifier];
    v5 = TIInputModeGetVariant();
    v6 = [v5 copy];
    v7 = self->_variant;
    self->_variant = v6;

    variant = self->_variant;
  }

  return variant;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(TIInputMode *)self normalizedIdentifier];
      if ([v6 isEqualToString:@"ko_KR"])
      {
        v7 = [(TIInputMode *)self originalIdentifier];
        v8 = TIInputModeGetSWLayout();
        v9 = [(TIInputMode *)v5 originalIdentifier];
        v10 = TIInputModeGetSWLayout();
        v11 = [v8 isEqualToString:v10];

        if (!v11)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v13 = [(TIInputMode *)self normalizedIdentifier];
        v14 = [(TIInputMode *)v5 normalizedIdentifier];
        v15 = [v13 isEqualToString:v14];

        if ((v15 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v16 = [(TIInputMode *)self isSiriMode];
      if (v16 == [(TIInputMode *)v5 isSiriMode])
      {
        v17 = [(TIInputMode *)self originalIdentifier];
        v18 = TIInputModeGetMultilingualID();
        v19 = [(TIInputMode *)v5 originalIdentifier];
        v20 = TIInputModeGetMultilingualID();
        v12 = v18 == v20;

        goto LABEL_12;
      }

LABEL_10:
      v12 = 0;
LABEL_12:

      goto LABEL_13;
    }

    v12 = 0;
  }

LABEL_13:

  return v12;
}

- (TIInputMode)initWithNormalizedIdentifier:(id)a3 isSiriMode:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = TIInputMode;
  v7 = [(TIInputMode *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    normalizedIdentifier = v7->_normalizedIdentifier;
    v7->_normalizedIdentifier = v8;

    v7->_isSiriMode = a4;
  }

  return v7;
}

- (void)setQuickTypeKeyboardFeatureSpecializationClass
{
  if (!self->_keyboardFeatureSpecializationClass)
  {
    self->_keyboardFeatureSpecializationClass = objc_opt_class();
  }
}

@end