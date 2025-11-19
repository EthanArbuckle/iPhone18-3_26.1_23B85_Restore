@interface CRLanguageResources
+ (BOOL)isCharLMForLanguageAvailableInTextRecognition:(id)a3;
+ (BOOL)isCustomWordsSupportedForLanguageIdentifier:(id)a3;
+ (BOOL)isLanguageSupported:(id)a3;
+ (CVNLPLanguageModel)createCVNLPCharacterLanguageModel:(id)a3;
+ (_LXLexicon)createStaticLexicon:(id)a3;
+ (void)createCharacterModel:(id)a3;
+ (void)createWordLanguageModel:(id)a3 type:(int64_t)a4;
- (BOOL)isCustomWordsSupported;
- (CRLanguageResources)initWithLanguageIdentifier:(id)a3 type:(int64_t)a4;
- (id)cvnlpLanguageResourceBundle:(id)a3 lmConfig:(id)a4;
- (void)dealloc;
@end

@implementation CRLanguageResources

- (CRLanguageResources)initWithLanguageIdentifier:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v25.receiver = self;
  v25.super_class = CRLanguageResources;
  v7 = [(CRLanguageResources *)&v25 init];
  if (!v7)
  {
    goto LABEL_30;
  }

  if ([objc_opt_class() isLanguageSupported:v6])
  {
    if (([(__CFString *)v6 isEqualToString:@"yue-Hans"]& 1) != 0)
    {
      v8 = CRImageReaderLanguageZh_Hans;
    }

    else
    {
      if (![(__CFString *)v6 isEqualToString:@"yue-Hant"])
      {
        goto LABEL_9;
      }

      v8 = CRImageReaderLanguageZh_Hant;
    }

    v10 = *v8;

    v6 = v10;
LABEL_9:
    v11 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v6];
    locale = v7->_locale;
    v7->_locale = v11;

    cvnlpLanguageResourceBundle = v7->__cvnlpLanguageResourceBundle;
    v7->__cvnlpLanguageResourceBundle = 0;

    if ([CRImageReader languageIsChinese:v6])
    {
      v14 = objc_opt_class();
      v15 = [(NSLocale *)v7->_locale localeIdentifier];
      v7->_cvnlpCharacterLanguageModel = [v14 createCVNLPCharacterLanguageModel:v15];

      v7->_lmCharacterLanguageModel = 0;
      v7->_wordTokenizer = 0;
      v7->_staticLexicon = 0;
LABEL_11:
      v7->_wordLanguageModel = 0;
LABEL_30:
      v9 = v7;
      goto LABEL_31;
    }

    if (a4 == 2)
    {
      v7->_cvnlpCharacterLanguageModel = 0;
      v7->_staticLexicon = 0;
      if (![CRImageReader languageIsKorean:v6]&& ![CRImageReader languageIsJapanese:v6]&& ![CRImageReader languageIsThai:v6])
      {
        v7->_wordLanguageModel = [objc_opt_class() createWordLanguageModel:v7->_locale type:2];
        v7->_wordTokenizer = LMStreamTokenizerCreate();
        v7->_lmCharacterLanguageModel = 0;
        goto LABEL_30;
      }

      v18 = objc_opt_class();
      v19 = [(NSLocale *)v7->_locale localeIdentifier];
      v7->_lmCharacterLanguageModel = [v18 createCharacterModel:v19];

      v7->_wordTokenizer = 0;
      goto LABEL_11;
    }

    if (a4 == 1)
    {
      v7->_lmCharacterLanguageModel = 0;
      v7->_staticLexicon = 0;
      v7->_wordLanguageModel = 0;
      if (![CRImageReader languageIsVietnamese:v6])
      {
        v16 = objc_opt_class();
        v17 = [(NSLocale *)v7->_locale localeIdentifier];
        v7->_cvnlpCharacterLanguageModel = [v16 createCVNLPCharacterLanguageModel:v17];

LABEL_29:
        v7->_wordTokenizer = 0;
        goto LABEL_30;
      }
    }

    else
    {
      if (a4)
      {
        goto LABEL_30;
      }

      if ([CRImageReader languageIsVietnamese:v6])
      {
        v7->_lmCharacterLanguageModel = 0;
      }

      else
      {
        v20 = objc_opt_class();
        v21 = [(NSLocale *)v7->_locale localeIdentifier];
        v7->_lmCharacterLanguageModel = [v20 createCharacterModel:v21];
      }

      if ([CRImageReader languageIsKorean:v6]|| [CRImageReader languageIsJapanese:v6])
      {
        v7->_staticLexicon = 0;
        v7->_wordLanguageModel = 0;
      }

      else
      {
        v22 = objc_opt_class();
        v23 = [(NSLocale *)v7->_locale languageCode];
        v7->_staticLexicon = [v22 createStaticLexicon:v23];

        v7->_wordLanguageModel = [objc_opt_class() createWordLanguageModel:v7->_locale type:0];
      }
    }

    v7->_cvnlpCharacterLanguageModel = 0;
    goto LABEL_29;
  }

  v9 = 0;
LABEL_31:

  return v9;
}

+ (BOOL)isCustomWordsSupportedForLanguageIdentifier:(id)a3
{
  v3 = a3;
  if ([CRImageReader languageIsChinese:v3]|| [CRImageReader languageIsKorean:v3])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![CRImageReader languageIsJapanese:v3];
  }

  return v4;
}

- (BOOL)isCustomWordsSupported
{
  v3 = objc_opt_class();
  v4 = [(CRLanguageResources *)self locale];
  v5 = [v4 localeIdentifier];
  LOBYTE(v3) = [v3 isCustomWordsSupportedForLanguageIdentifier:v5];

  return v3;
}

- (id)cvnlpLanguageResourceBundle:(id)a3 lmConfig:(id)a4
{
  v41 = a3;
  v6 = a4;
  v7 = [(CRLanguageResources *)self _cvnlpLanguageResourceBundle];

  if (!v7)
  {
    if ([(CRLanguageResources *)self staticLexicon])
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v9 = [objc_alloc(MEMORY[0x1E6991FE0]) initWithLexicon:{-[CRLanguageResources staticLexicon](self, "staticLexicon")}];
      [v8 addObject:v9];

      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    v11 = objc_opt_class();
    v12 = [(CRLanguageResources *)self locale];
    v13 = [v12 localeIdentifier];
    LODWORD(v11) = [v11 isCustomWordsSupportedForLanguageIdentifier:v13];

    if (v11)
    {
      v14 = [v41 customWords];

      if (v14)
      {
        v15 = [v41 customWords];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self isKindOfClass: %@", objc_opt_class()];
          v17 = [v15 filteredArrayUsingPredicate:v16];
          if ([v17 count])
          {
            v18 = [(CRLanguageResources *)self locale];
            cf = [CRLanguageUtils createDynamicLexicon:v17 forLocale:v18 error:0];

            v19 = [objc_alloc(MEMORY[0x1E6991FE0]) initWithLexicon:cf];
            if (!v10)
            {
              v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            }

            [v10 addObject:v19];

            if (cf)
            {
              CFRelease(cf);
            }
          }

          else
          {
            v20 = CROSLogForCategory(0);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_1B40D2000, v20, OS_LOG_TYPE_ERROR, "Custom words array can only contain strings. Ignoring custom words array.", buf, 2u);
            }
          }
        }
      }
    }

    v21 = v10;
    if (v10)
    {
      v22 = objc_alloc(MEMORY[0x1E6991FE8]);
      v23 = [v6 lexiconWeight];
      v24 = [v22 initWithLexicons:v10 decodingWeight:v23];
    }

    else
    {
      v24 = 0;
    }

    if ([(CRLanguageResources *)self lmCharacterLanguageModel])
    {
      v25 = objc_alloc(MEMORY[0x1E6991FD8]);
      v26 = [(CRLanguageResources *)self lmCharacterLanguageModel];
      v27 = [(CRLanguageResources *)self locale];
      v28 = [v6 characterLMWeight];
      v29 = [v25 initWithLMLanguageModel:v26 locale:v27 decodingWeight:v28];
    }

    else
    {
      if (![(CRLanguageResources *)self cvnlpCharacterLanguageModel])
      {
        v32 = 0;
        goto LABEL_26;
      }

      v30 = objc_alloc(MEMORY[0x1E6991FD8]);
      v31 = [(CRLanguageResources *)self cvnlpCharacterLanguageModel];
      v27 = [(CRLanguageResources *)self locale];
      v28 = [v6 characterLMWeight];
      v29 = [v30 initWithCVNLPLanguageModel:v31 locale:v27 decodingWeight:v28];
    }

    v32 = v29;

LABEL_26:
    if ([(CRLanguageResources *)self wordLanguageModel])
    {
      v33 = objc_alloc(MEMORY[0x1E6991FD8]);
      v34 = [(CRLanguageResources *)self wordLanguageModel];
      v35 = [(CRLanguageResources *)self locale];
      v36 = [v6 wordLMWeight];
      v37 = [v33 initWithLMLanguageModel:v34 locale:v35 decodingWeight:v36];
    }

    else
    {
      v37 = 0;
    }

    v38 = [objc_alloc(MEMORY[0x1E6991FF0]) initWithLexicons:v24 characterLanguageModel:v32 wordLanguageModel:v37];
    [(CRLanguageResources *)self set_cvnlpLanguageResourceBundle:v38];
  }

  v39 = [(CRLanguageResources *)self _cvnlpLanguageResourceBundle];

  return v39;
}

+ (void)createCharacterModel:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:?];
  v31 = [(NSLocale *)v3 languageCode];
  v4 = [(NSLocale *)v3 countryCode];
  v30 = [v4 uppercaseString];

  if (![objc_opt_class() isCharLMForLanguageAvailableInTextRecognition:v31])
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v11 = v3;
    v32 = v11;
    LDEnumerateAssetDataItems();
    v12 = [(NSLocale *)v11 localeIdentifier];
    v13 = [v5 objectForKey:v12];
    v14 = v13 == 0;

    if (v14)
    {
      v16 = [(NSLocale *)v11 languageCode];
      v17 = [v5 objectForKey:v16];
      v18 = v17 == 0;

      if (v18)
      {
        v7 = 0;
        v10 = 0;
        goto LABEL_14;
      }

      v7 = [(NSLocale *)v11 languageCode];
      v15 = [v5 objectForKey:v7];
    }

    else
    {
      v7 = [(NSLocale *)v11 localeIdentifier];
      v15 = [v5 objectForKey:v7];
    }

    v10 = v15;
LABEL_14:

    v6 = v5;
    goto LABEL_15;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v31, v30];
  v6 = [v5 stringByAppendingPathExtension:@"lm"];
  bzero(v37, 0x400uLL);
  if (!pathForResource([v6 cStringUsingEncoding:4], 0, v37))
  {
    v9 = CROSLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v6;
      _os_log_impl(&dword_1B40D2000, v9, OS_LOG_TYPE_DEFAULT, "Resource path not found for '%@'. Character LM will be disabled.", buf, 0xCu);
    }

    v7 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v7 = firstMatchingResourceForLocale(v3, &stru_1F2BB4348.isa, &cfstr_Lm.isa, v37);
  if (v7)
  {
    v8 = MEMORY[0x1E695DFF8];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v37];
    v10 = [v8 fileURLWithPath:v9];
LABEL_10:

    goto LABEL_15;
  }

  v10 = 0;
LABEL_15:

  if (v10)
  {
    v19 = [v10 path];
    v20 = [v19 lastPathComponent];
    v21 = [v20 stringByDeletingPathExtension];

    v22 = [v19 stringByDeletingLastPathComponent];
    v23 = *MEMORY[0x1E69ABF50];
    v33[0] = *MEMORY[0x1E69ABF90];
    v33[1] = v23;
    v34[0] = v7;
    v34[1] = MEMORY[0x1E695E110];
    v24 = *MEMORY[0x1E69ABF68];
    v33[2] = *MEMORY[0x1E69ABF70];
    v33[3] = v24;
    v34[2] = v22;
    v34[3] = v21;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:4];
    v26 = LMLanguageModelCreate();
    if (!v26)
    {
      v27 = CROSLogForCategory(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 138412290;
        v38 = v7;
        _os_log_impl(&dword_1B40D2000, v27, OS_LOG_TYPE_DEFAULT, "Unable to load character LM for language '%@'", v37, 0xCu);
      }
    }
  }

  else
  {
    v19 = CROSLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 138412546;
      v38 = v7;
      v39 = 2112;
      v40 = v29;
      _os_log_impl(&dword_1B40D2000, v19, OS_LOG_TYPE_DEFAULT, "Resource not found for '%@'. Character LM will be disabled for locale '%@'", v37, 0x16u);
    }

    v26 = 0;
  }

  return v26;
}

void __44__CRLanguageResources_createCharacterModel___block_invoke(uint64_t a1, void *a2, int a3, void *a4, CFStringRef theString1, _BYTE *a6)
{
  if (CFStringCompare(theString1, *MEMORY[0x1E69AC040], 0) == kCFCompareEqualTo)
  {
    v17 = a2;
    v10 = [v17 lastPathComponent];
    v11 = [v10 isEqualToString:@"char.lm"];

    if (v11)
    {
      v12 = a4;
      v13 = *(a1 + 32);
      v14 = [v12 localeIdentifier];
      [v13 setObject:v17 forKey:v14];

      v15 = [v12 localeIdentifier];
      v16 = [*(a1 + 40) localeIdentifier];
      LODWORD(v13) = [v15 isEqualToString:v16];

      if (v13)
      {
        *a6 = 1;
      }
    }
  }
}

+ (_LXLexicon)createStaticLexicon:(id)a3
{
  v13[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E69ABF50];
  v12[0] = *MEMORY[0x1E69ABF90];
  v12[1] = v4;
  v13[0] = v3;
  v13[1] = MEMORY[0x1E695E110];
  v5 = *MEMORY[0x1E69ABFE0];
  v12[2] = *MEMORY[0x1E69ABFA8];
  v12[3] = v5;
  v13[2] = MEMORY[0x1E695E110];
  v13[3] = MEMORY[0x1E695E118];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
  v7 = LXLexiconCreate();
  if (!v7)
  {
    v8 = CROSLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1B40D2000, v8, OS_LOG_TYPE_DEFAULT, "Unable to load lexicon for language '%@'", buf, 0xCu);
    }
  }

  return v7;
}

+ (void)createWordLanguageModel:(id)a3 type:(int64_t)a4
{
  v27[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 localeIdentifier];
  v7 = [v6 isEqualToString:@"en-US"];

  if (a4 == 2)
  {
    v8 = [v5 localeIdentifier];
    v7 = [CRImageReader languageIsChinese:v8];
  }

  v26[0] = *MEMORY[0x1E69ABF90];
  v9 = [v5 localeIdentifier];
  v10 = *MEMORY[0x1E69ABF50];
  v27[0] = v9;
  v27[1] = MEMORY[0x1E695E110];
  v11 = *MEMORY[0x1E69ABFA8];
  v26[1] = v10;
  v26[2] = v11;
  v12 = [MEMORY[0x1E696AD98] numberWithBool:v7 ^ 1u];
  v26[3] = *MEMORY[0x1E69ABF98];
  v27[2] = v12;
  v27[3] = &unk_1F2BF8608;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];

  v14 = [MEMORY[0x1E6991FD8] pathForLanguageModelForLocale:v5 modelType:2 resourceType:1];
  if (v14)
  {
    v15 = [v13 mutableCopy];
    v16 = [v14 lastPathComponent];
    v17 = [v16 stringByDeletingPathExtension];

    v18 = [v14 stringByDeletingLastPathComponent];
    [v15 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69ABF70]];
    [v15 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69ABF68]];
    [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69ABF58]];
    [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69ABF80]];
    v19 = [v15 copy];

    v13 = v19;
  }

  v20 = LMLanguageModelCreate();
  if (!v20)
  {
    v21 = CROSLogForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v5 localeIdentifier];
      v24 = 138412290;
      v25 = v22;
      _os_log_impl(&dword_1B40D2000, v21, OS_LOG_TYPE_DEFAULT, "Unable to load language model for '%@'.", &v24, 0xCu);
    }
  }

  return v20;
}

+ (CVNLPLanguageModel)createCVNLPCharacterLanguageModel:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E6992040];
  v12[0] = *MEMORY[0x1E6992038];
  v12[1] = v4;
  v13[0] = v3;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:1];
  v13[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v7 = CVNLPLanguageModelCreate();
  if (!v7)
  {
    v8 = CROSLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1B40D2000, v8, OS_LOG_TYPE_DEFAULT, "Unable to load language model for '%@'.", &v10, 0xCu);
    }
  }

  return v7;
}

+ (BOOL)isLanguageSupported:(id)a3
{
  v3 = a3;
  if (qword_1ED9601C0 != -1)
  {
    dispatch_once(&qword_1ED9601C0, &__block_literal_global_21);
  }

  v4 = [_MergedGlobals_27 containsObject:v3];

  return v4;
}

void __43__CRLanguageResources_isLanguageSupported___block_invoke()
{
  v2[30] = *MEMORY[0x1E69E9840];
  v2[0] = @"en-US";
  v2[1] = @"pt-BR";
  v2[2] = @"fr-FR";
  v2[3] = @"it-IT";
  v2[4] = @"de-DE";
  v2[5] = @"es-ES";
  v2[6] = @"ru-RU";
  v2[7] = @"uk-UA";
  v2[8] = @"zh-Hans";
  v2[9] = @"zh-Hant";
  v2[10] = @"yue-Hans";
  v2[11] = @"yue-Hant";
  v2[12] = @"ko-KR";
  v2[13] = @"ja-JP";
  v2[14] = @"th-TH";
  v2[15] = @"vi-VT";
  v2[16] = @"tr-TR";
  v2[17] = @"id-ID";
  v2[18] = @"cs-CZ";
  v2[19] = @"da-DK";
  v2[20] = @"nl-NL";
  v2[21] = @"no-NO";
  v2[22] = @"nn-NO";
  v2[23] = @"nb-NO";
  v2[24] = @"ms-MY";
  v2[25] = @"pl-PL";
  v2[26] = @"ro-RO";
  v2[27] = @"sv-SE";
  v2[28] = @"ar-SA";
  v2[29] = @"ars-SA";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:30];
  v1 = _MergedGlobals_27;
  _MergedGlobals_27 = v0;
}

+ (BOOL)isCharLMForLanguageAvailableInTextRecognition:(id)a3
{
  v3 = a3;
  if (qword_1ED9601D0 != -1)
  {
    dispatch_once(&qword_1ED9601D0, &__block_literal_global_31_0);
  }

  v4 = [qword_1ED9601C8 containsObject:v3];

  return v4;
}

void __69__CRLanguageResources_isCharLMForLanguageAvailableInTextRecognition___block_invoke()
{
  v0 = qword_1ED9601C8;
  qword_1ED9601C8 = &unk_1F2BFB0E0;
}

- (void)dealloc
{
  if (self->_lmCharacterLanguageModel)
  {
    LMLanguageModelRelease();
    self->_lmCharacterLanguageModel = 0;
  }

  staticLexicon = self->_staticLexicon;
  if (staticLexicon)
  {
    CFRelease(staticLexicon);
    self->_staticLexicon = 0;
  }

  if (self->_wordLanguageModel)
  {
    LMLanguageModelRelease();
    self->_wordLanguageModel = 0;
  }

  cvnlpCharacterLanguageModel = self->_cvnlpCharacterLanguageModel;
  if (cvnlpCharacterLanguageModel)
  {
    CFRelease(cvnlpCharacterLanguageModel);
    self->_cvnlpCharacterLanguageModel = 0;
  }

  if (self->_wordTokenizer)
  {
    LMStreamTokenizerRelease();
    self->_wordTokenizer = 0;
  }

  v5.receiver = self;
  v5.super_class = CRLanguageResources;
  [(CRLanguageResources *)&v5 dealloc];
}

@end