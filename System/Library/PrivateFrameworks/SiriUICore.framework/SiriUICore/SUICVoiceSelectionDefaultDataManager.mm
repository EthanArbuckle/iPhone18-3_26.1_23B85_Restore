@interface SUICVoiceSelectionDefaultDataManager
- (BOOL)isVoiceSelected:(id)selected;
- (SUICVoiceSelectionDataProviderObserving)voiceSelectionDataProviderObserver;
- (SUICVoiceSelectionDefaultDataManager)init;
- (id)dialectLanguageCodeForLanguage:(id)language;
- (id)voicesForRecognitionLanguageCode:(id)code outputLanguageCode:(id)languageCode;
- (void)changeSiriDialectLanguageToLanguageIdentifiedByLanguageCode:(id)code completion:(id)completion;
- (void)changeSiriVoiceToVoice:(id)voice completion:(id)completion;
- (void)regenerateVoiceCollectionForRecognitionLanguageCode:(id)code outputLanguageCode:(id)languageCode;
- (void)setRecognitionLanguageCode:(id)code;
- (void)setVoiceSelectionVoiceCollection:(id)collection;
@end

@implementation SUICVoiceSelectionDefaultDataManager

- (SUICVoiceSelectionDefaultDataManager)init
{
  v5.receiver = self;
  v5.super_class = SUICVoiceSelectionDefaultDataManager;
  v2 = [(SUICVoiceSelectionDefaultDataManager *)&v5 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF20] dictionary];
    [(SUICVoiceSelectionDefaultDataManager *)v2 setCurrentVoiceSelectionForOutputLanguage:dictionary];
  }

  return v2;
}

- (void)setRecognitionLanguageCode:(id)code
{
  v4 = [code copy];
  recognitionLanguageCode = self->_recognitionLanguageCode;
  self->_recognitionLanguageCode = v4;

  v6 = AFOutputVoiceLanguageForRecognitionLanguage();
  outputLanguage = self->_outputLanguage;
  self->_outputLanguage = v6;

  v8 = self->_recognitionLanguageCode;
  v9 = self->_outputLanguage;

  [(SUICVoiceSelectionDefaultDataManager *)self regenerateVoiceCollectionForRecognitionLanguageCode:v8 outputLanguageCode:v9];
}

- (void)changeSiriVoiceToVoice:(id)voice completion:(id)completion
{
  completionCopy = completion;
  v6 = MEMORY[0x1E695DF90];
  currentVoiceSelectionForOutputLanguage = self->_currentVoiceSelectionForOutputLanguage;
  voiceCopy = voice;
  v9 = [v6 dictionaryWithDictionary:currentVoiceSelectionForOutputLanguage];
  mEMORY[0x1E698D178] = [MEMORY[0x1E698D178] sharedInstance];
  languageCode = [voiceCopy languageCode];
  v12 = [mEMORY[0x1E698D178] getBaseLocale:languageCode];
  [v9 setObject:voiceCopy forKey:v12];

  v13 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v9];
  [(SUICVoiceSelectionDefaultDataManager *)self setCurrentVoiceSelectionForOutputLanguage:v13];

  [(SUICVoiceSelectionDefaultDataManager *)self regenerateVoiceCollectionForRecognitionLanguageCode:self->_recognitionLanguageCode outputLanguageCode:self->_outputLanguage];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (void)changeSiriDialectLanguageToLanguageIdentifiedByLanguageCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  if (![(NSString *)self->_outputLanguage isEqualToString:codeCopy])
  {
    objc_storeStrong(&self->_outputLanguage, code);
    [(SUICVoiceSelectionDefaultDataManager *)self regenerateVoiceCollectionForRecognitionLanguageCode:self->_recognitionLanguageCode outputLanguageCode:self->_outputLanguage];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (void)regenerateVoiceCollectionForRecognitionLanguageCode:(id)code outputLanguageCode:(id)languageCode
{
  v25 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  languageCodeCopy = languageCode;
  v8 = [MEMORY[0x1E695DFA8] set];
  v9 = [(SUICVoiceSelectionDefaultDataManager *)self voicesForRecognitionLanguageCode:codeCopy outputLanguageCode:languageCodeCopy];
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
  v18 = [(SUICVoiceSelectionDefaultDataManager *)self dialectLanguageCodeForLanguage:languageCodeCopy];
  v19 = [(SUICVoiceSelectionVoiceCollection *)v17 initWithLanguageCode:languageCodeCopy dialectLanguageCodes:v18 currentVoice:v12 alternativeVoices:v8];

  [(SUICVoiceSelectionDefaultDataManager *)self setVoiceSelectionVoiceCollection:v19];
}

- (BOOL)isVoiceSelected:(id)selected
{
  currentVoiceSelectionForOutputLanguage = self->_currentVoiceSelectionForOutputLanguage;
  v4 = MEMORY[0x1E698D178];
  selectedCopy = selected;
  sharedInstance = [v4 sharedInstance];
  languageCode = [selectedCopy languageCode];
  v8 = [sharedInstance getBaseLocale:languageCode];
  v9 = [(NSDictionary *)currentVoiceSelectionForOutputLanguage objectForKey:v8];
  name = [v9 name];

  name2 = [selectedCopy name];

  LOBYTE(sharedInstance) = [name isEqualToString:name2];
  return sharedInstance;
}

- (id)voicesForRecognitionLanguageCode:(id)code outputLanguageCode:(id)languageCode
{
  v26 = *MEMORY[0x1E69E9840];
  languageCodeCopy = languageCode;
  v5 = [MEMORY[0x1E698D270] allVoicesForSiriSessionLanguage:code];
  array = [MEMORY[0x1E695DF70] array];
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
        mEMORY[0x1E698D178] = [MEMORY[0x1E698D178] sharedInstance];
        languageCode = [v9 languageCode];
        v12 = [mEMORY[0x1E698D178] getBaseLocale:languageCode];
        mEMORY[0x1E698D178]2 = [MEMORY[0x1E698D178] sharedInstance];
        v14 = [mEMORY[0x1E698D178]2 getBaseLocale:languageCodeCopy];
        v15 = [v12 isEqualToString:v14];

        if (v15)
        {
          [array addObject:v9];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  return array;
}

- (id)dialectLanguageCodeForLanguage:(id)language
{
  v18 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  v4 = [MEMORY[0x1E695DFA8] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [MEMORY[0x1E698D270] allVoicesForSiriSessionLanguage:{languageCopy, 0}];
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

        languageCode = [*(*(&v13 + 1) + 8 * i) languageCode];
        [v4 addObject:languageCode];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [v4 removeObject:languageCopy];
  allObjects = [v4 allObjects];

  return allObjects;
}

- (void)setVoiceSelectionVoiceCollection:(id)collection
{
  v4 = [collection copy];
  voiceSelectionVoiceCollection = self->_voiceSelectionVoiceCollection;
  self->_voiceSelectionVoiceCollection = v4;

  voiceSelectionDataProviderObserver = [(SUICVoiceSelectionDefaultDataManager *)self voiceSelectionDataProviderObserver];
  [voiceSelectionDataProviderObserver voiceSelectionDataProviderVoiceCollectionDidChange:self];
}

- (SUICVoiceSelectionDataProviderObserving)voiceSelectionDataProviderObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_voiceSelectionDataProviderObserver);

  return WeakRetained;
}

@end