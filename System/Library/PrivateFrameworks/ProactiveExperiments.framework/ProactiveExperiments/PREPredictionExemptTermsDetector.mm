@interface PREPredictionExemptTermsDetector
- (BOOL)_warmTermsIfNecessary;
- (BOOL)checkForExemptContentInText:(id)text languageCode:(id)code;
- (PREPredictionExemptTermsDetector)init;
@end

@implementation PREPredictionExemptTermsDetector

- (BOOL)_warmTermsIfNecessary
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_languageToExemptTerms)
  {
    isKindOfClass = 1;
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ProactiveExperiments"];
    v5 = [v4 pathForResource:@"PredictionExemptTerms" ofType:@"plist"];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v5];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    p_super = pre_responses_handle();
    v8 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT);
    if (isKindOfClass)
    {
      if (v8)
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&dword_260CE3000, p_super, OS_LOG_TYPE_DEFAULT, "ProactiveResponsesExperiment Successfully loaded exempt terms list at path: %@", &v12, 0xCu);
      }

      v9 = [v6 copy];
      p_super = &self->_languageToExemptTerms->super;
      self->_languageToExemptTerms = v9;
    }

    else if (v8)
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_260CE3000, p_super, OS_LOG_TYPE_DEFAULT, "ProactiveResponsesExperiment ExemptTermsDetection found unexpected plist contents at path: %@", &v12, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return isKindOfClass & 1;
}

- (BOOL)checkForExemptContentInText:(id)text languageCode:(id)code
{
  v25 = *MEMORY[0x277D85DE8];
  textCopy = text;
  codeCopy = code;
  if (self->_languageToExemptTerms && [textCopy length])
  {
    if (!codeCopy)
    {
      codeCopy = @"en";
    }

    v8 = pre_responses_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = codeCopy;
      _os_log_impl(&dword_260CE3000, v8, OS_LOG_TYPE_DEFAULT, "PREResponsesExperiment Checking for exempt content with language code: %@", &v23, 0xCu);
    }

    [(PREPredictionExemptTermsDetector *)self _warmTermsIfNecessary];
    v9 = [(NSDictionary *)self->_languageToExemptTerms objectForKeyedSubscript:codeCopy];
    if ([v9 count])
    {
      localizedLowercaseString = [textCopy localizedLowercaseString];
      punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
      v12 = [localizedLowercaseString removeCharactersWithCharacterSet:punctuationCharacterSet];

      removeApostrophes = [v12 removeApostrophes];

      v14 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:codeCopy];
      v15 = [removeApostrophes stringByFoldingWithOptions:128 locale:v14];

      v16 = [MEMORY[0x277CBEB98] setWithArray:v9];
      v17 = MEMORY[0x277CBEB98];
      tokens = [v15 tokens];
      v19 = [v17 setWithArray:tokens];

      v20 = [v19 intersectsSet:v16];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (PREPredictionExemptTermsDetector)init
{
  v5.receiver = self;
  v5.super_class = PREPredictionExemptTermsDetector;
  v2 = [(PREPredictionExemptTermsDetector *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PREPredictionExemptTermsDetector *)v2 _warmTermsIfNecessary];
  }

  return v3;
}

@end