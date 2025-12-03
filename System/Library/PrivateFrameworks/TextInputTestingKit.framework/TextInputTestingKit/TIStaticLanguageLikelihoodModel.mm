@interface TIStaticLanguageLikelihoodModel
- (TIStaticLanguageLikelihoodModel)initWithPrimaryInputMode:(id)mode secondaryInputMode:(id)inputMode secondaryLanguageWeight:(float)weight;
- (float)_priorProbabilityForLanguage:(id)language recipient:(id)recipient;
- (id)rankedLanguagesForRecipient:(id)recipient;
- (void)priorProbabilityForLanguages:(id)languages recipient:(id)recipient handler:(id)handler;
@end

@implementation TIStaticLanguageLikelihoodModel

- (void)priorProbabilityForLanguages:(id)languages recipient:(id)recipient handler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  languagesCopy = languages;
  recipientCopy = recipient;
  handlerCopy = handler;
  v20 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = languagesCopy;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v12)
  {
    v13 = *v17;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v17 != v13)
      {
        objc_enumerationMutation(v11);
      }

      v15 = *(*(&v16 + 1) + 8 * v14);
      [(TIStaticLanguageLikelihoodModel *)self _priorProbabilityForLanguage:v15 recipient:recipientCopy, v16];
      handlerCopy[2](handlerCopy, v15, &v20);
      if (v20)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (float)_priorProbabilityForLanguage:(id)language recipient:(id)recipient
{
  languageCopy = language;
  primaryInputMode = [(TIStaticLanguageLikelihoodModel *)self primaryInputMode];
  normalizedIdentifier = [primaryInputMode normalizedIdentifier];
  v8 = TIInputModeGetLanguage();

  if ([v8 isEqualToString:languageCopy])
  {
    [(TIStaticLanguageLikelihoodModel *)self primaryLanguageWeight];
    v10 = v9;
  }

  else
  {
    secondaryInputMode = [(TIStaticLanguageLikelihoodModel *)self secondaryInputMode];
    normalizedIdentifier2 = [secondaryInputMode normalizedIdentifier];
    v13 = TIInputModeGetLanguage();

    v10 = 0.0;
    if ([v13 isEqualToString:languageCopy])
    {
      [(TIStaticLanguageLikelihoodModel *)self secondaryLanguageWeight];
      v10 = v14;
    }
  }

  return v10;
}

- (id)rankedLanguagesForRecipient:(id)recipient
{
  array = [MEMORY[0x277CBEB18] array];
  primaryInputMode = [(TIStaticLanguageLikelihoodModel *)self primaryInputMode];
  v6 = primaryInputMode;
  if (primaryInputMode)
  {
    normalizedIdentifier = [primaryInputMode normalizedIdentifier];
    v8 = TIInputModeGetLanguage();

    [array addObject:v8];
    secondaryInputMode = [(TIStaticLanguageLikelihoodModel *)self secondaryInputMode];
    v10 = secondaryInputMode;
    if (secondaryInputMode)
    {
      normalizedIdentifier2 = [secondaryInputMode normalizedIdentifier];
      v12 = TIInputModeGetLanguage();

      [array addObject:v12];
    }
  }

  return array;
}

- (TIStaticLanguageLikelihoodModel)initWithPrimaryInputMode:(id)mode secondaryInputMode:(id)inputMode secondaryLanguageWeight:(float)weight
{
  modeCopy = mode;
  inputModeCopy = inputMode;
  v14.receiver = self;
  v14.super_class = TIStaticLanguageLikelihoodModel;
  v11 = [(TIStaticLanguageLikelihoodModel *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_primaryInputMode, mode);
    objc_storeStrong(&v12->_secondaryInputMode, inputMode);
    v12->_secondaryLanguageWeight = weight;
  }

  return v12;
}

@end