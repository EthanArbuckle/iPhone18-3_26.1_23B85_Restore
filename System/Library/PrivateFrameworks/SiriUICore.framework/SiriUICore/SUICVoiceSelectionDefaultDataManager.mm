@interface SUICVoiceSelectionDefaultDataManager
- (BOOL)isVoiceSelected:(id)a3;
- (SUICVoiceSelectionDataProviderObserving)voiceSelectionDataProviderObserver;
- (SUICVoiceSelectionDefaultDataManager)init;
- (id)dialectLanguageCodeForLanguage:(id)a3;
- (id)voicesForRecognitionLanguageCode:(id)a3 outputLanguageCode:(id)a4;
- (void)changeSiriDialectLanguageToLanguageIdentifiedByLanguageCode:(id)a3 completion:(id)a4;
- (void)changeSiriVoiceToVoice:(id)a3 completion:(id)a4;
- (void)regenerateVoiceCollectionForRecognitionLanguageCode:(id)a3 outputLanguageCode:(id)a4;
- (void)setRecognitionLanguageCode:(id)a3;
- (void)setVoiceSelectionVoiceCollection:(id)a3;
@end

@implementation SUICVoiceSelectionDefaultDataManager

- (SUICVoiceSelectionDefaultDataManager)init
{
  v5.receiver = self;
  v5.super_class = SUICVoiceSelectionDefaultDataManager;
  v2 = [(SUICVoiceSelectionDefaultDataManager *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF20] dictionary];
    [(SUICVoiceSelectionDefaultDataManager *)v2 setCurrentVoiceSelectionForOutputLanguage:v3];
  }

  return v2;
}

- (void)setRecognitionLanguageCode:(id)a3
{
  v4 = [a3 copy];
  recognitionLanguageCode = self->_recognitionLanguageCode;
  self->_recognitionLanguageCode = v4;

  v6 = AFOutputVoiceLanguageForRecognitionLanguage();
  outputLanguage = self->_outputLanguage;
  self->_outputLanguage = v6;

  v8 = self->_recognitionLanguageCode;
  v9 = self->_outputLanguage;

  [(SUICVoiceSelectionDefaultDataManager *)self regenerateVoiceCollectionForRecognitionLanguageCode:v8 outputLanguageCode:v9];
}

- (void)changeSiriVoiceToVoice:(id)a3 completion:(id)a4
{
  v14 = a4;
  v6 = MEMORY[0x1E695DF90];
  currentVoiceSelectionForOutputLanguage = self->_currentVoiceSelectionForOutputLanguage;
  v8 = a3;
  v9 = [v6 dictionaryWithDictionary:currentVoiceSelectionForOutputLanguage];
  v10 = [MEMORY[0x1E698D178] sharedInstance];
  v11 = [v8 languageCode];
  v12 = [v10 getBaseLocale:v11];
  [v9 setObject:v8 forKey:v12];

  v13 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v9];
  [(SUICVoiceSelectionDefaultDataManager *)self setCurrentVoiceSelectionForOutputLanguage:v13];

  [(SUICVoiceSelectionDefaultDataManager *)self regenerateVoiceCollectionForRecognitionLanguageCode:self->_recognitionLanguageCode outputLanguageCode:self->_outputLanguage];
  if (v14)
  {
    v14[2](v14, 1, 0);
  }
}

- (void)changeSiriDialectLanguageToLanguageIdentifiedByLanguageCode:(id)a3 completion:(id)a4
{
  v8 = a3;
  v7 = a4;
  if (![(NSString *)self->_outputLanguage isEqualToString:v8])
  {
    objc_storeStrong(&self->_outputLanguage, a3);
    [(SUICVoiceSelectionDefaultDataManager *)self regenerateVoiceCollectionForRecognitionLanguageCode:self->_recognitionLanguageCode outputLanguageCode:self->_outputLanguage];
  }

  if (v7)
  {
    v7[2](v7, 1, 0);
  }
}

- (void)regenerateVoiceCollectionForRecognitionLanguageCode:(id)a3 outputLanguageCode:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DFA8] set];
  v9 = [(SUICVoiceSelectionDefaultDataManager *)self voicesForRecognitionLanguageCode:v6 outputLanguageCode:v7];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if ([(SUICVoiceSelectionDefaultDataManager *)self isVoiceSelected:v15])
        {
          v16 = v15;

          v12 = v16;
        }

        else
        {
          [v8 addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v17 = [SUICVoiceSelectionVoiceCollection alloc];
  v18 = [(SUICVoiceSelectionDefaultDataManager *)self dialectLanguageCodeForLanguage:v7];
  v19 = [(SUICVoiceSelectionVoiceCollection *)v17 initWithLanguageCode:v7 dialectLanguageCodes:v18 currentVoice:v12 alternativeVoices:v8];

  [(SUICVoiceSelectionDefaultDataManager *)self setVoiceSelectionVoiceCollection:v19];
}

- (BOOL)isVoiceSelected:(id)a3
{
  currentVoiceSelectionForOutputLanguage = self->_currentVoiceSelectionForOutputLanguage;
  v4 = MEMORY[0x1E698D178];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [v5 languageCode];
  v8 = [v6 getBaseLocale:v7];
  v9 = [(NSDictionary *)currentVoiceSelectionForOutputLanguage objectForKey:v8];
  v10 = [v9 name];

  v11 = [v5 name];

  LOBYTE(v6) = [v10 isEqualToString:v11];
  return v6;
}

- (id)voicesForRecognitionLanguageCode:(id)a3 outputLanguageCode:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = a4;
  v5 = [MEMORY[0x1E698D270] allVoicesForSiriSessionLanguage:a3];
  v17 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v19 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [MEMORY[0x1E698D178] sharedInstance];
        v11 = [v9 languageCode];
        v12 = [v10 getBaseLocale:v11];
        v13 = [MEMORY[0x1E698D178] sharedInstance];
        v14 = [v13 getBaseLocale:v20];
        v15 = [v12 isEqualToString:v14];

        if (v15)
        {
          [v17 addObject:v9];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  return v17;
}

- (id)dialectLanguageCodeForLanguage:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [MEMORY[0x1E698D270] allVoicesForSiriSessionLanguage:{v3, 0}];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) languageCode];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [v4 removeObject:v3];
  v11 = [v4 allObjects];

  return v11;
}

- (void)setVoiceSelectionVoiceCollection:(id)a3
{
  v4 = [a3 copy];
  voiceSelectionVoiceCollection = self->_voiceSelectionVoiceCollection;
  self->_voiceSelectionVoiceCollection = v4;

  v6 = [(SUICVoiceSelectionDefaultDataManager *)self voiceSelectionDataProviderObserver];
  [v6 voiceSelectionDataProviderVoiceCollectionDidChange:self];
}

- (SUICVoiceSelectionDataProviderObserving)voiceSelectionDataProviderObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_voiceSelectionDataProviderObserver);

  return WeakRetained;
}

@end