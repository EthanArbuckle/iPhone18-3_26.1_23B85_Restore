@interface TIStaticLanguageLikelihoodModel
- (TIStaticLanguageLikelihoodModel)initWithPrimaryInputMode:(id)a3 secondaryInputMode:(id)a4 secondaryLanguageWeight:(float)a5;
- (float)_priorProbabilityForLanguage:(id)a3 recipient:(id)a4;
- (id)rankedLanguagesForRecipient:(id)a3;
- (void)priorProbabilityForLanguages:(id)a3 recipient:(id)a4 handler:(id)a5;
@end

@implementation TIStaticLanguageLikelihoodModel

- (void)priorProbabilityForLanguages:(id)a3 recipient:(id)a4 handler:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v8;
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
      [(TIStaticLanguageLikelihoodModel *)self _priorProbabilityForLanguage:v15 recipient:v9, v16];
      v10[2](v10, v15, &v20);
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

- (float)_priorProbabilityForLanguage:(id)a3 recipient:(id)a4
{
  v5 = a3;
  v6 = [(TIStaticLanguageLikelihoodModel *)self primaryInputMode];
  v7 = [v6 normalizedIdentifier];
  v8 = TIInputModeGetLanguage();

  if ([v8 isEqualToString:v5])
  {
    [(TIStaticLanguageLikelihoodModel *)self primaryLanguageWeight];
    v10 = v9;
  }

  else
  {
    v11 = [(TIStaticLanguageLikelihoodModel *)self secondaryInputMode];
    v12 = [v11 normalizedIdentifier];
    v13 = TIInputModeGetLanguage();

    v10 = 0.0;
    if ([v13 isEqualToString:v5])
    {
      [(TIStaticLanguageLikelihoodModel *)self secondaryLanguageWeight];
      v10 = v14;
    }
  }

  return v10;
}

- (id)rankedLanguagesForRecipient:(id)a3
{
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [(TIStaticLanguageLikelihoodModel *)self primaryInputMode];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 normalizedIdentifier];
    v8 = TIInputModeGetLanguage();

    [v4 addObject:v8];
    v9 = [(TIStaticLanguageLikelihoodModel *)self secondaryInputMode];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 normalizedIdentifier];
      v12 = TIInputModeGetLanguage();

      [v4 addObject:v12];
    }
  }

  return v4;
}

- (TIStaticLanguageLikelihoodModel)initWithPrimaryInputMode:(id)a3 secondaryInputMode:(id)a4 secondaryLanguageWeight:(float)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = TIStaticLanguageLikelihoodModel;
  v11 = [(TIStaticLanguageLikelihoodModel *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_primaryInputMode, a3);
    objc_storeStrong(&v12->_secondaryInputMode, a4);
    v12->_secondaryLanguageWeight = a5;
  }

  return v12;
}

@end