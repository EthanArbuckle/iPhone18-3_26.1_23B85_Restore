@interface SUICVoiceSelectionVoiceCollection
- (SUICVoiceSelectionVoiceCollection)initWithLanguageCode:(id)code dialectLanguageCodes:(id)codes currentVoice:(id)voice alternativeVoices:(id)voices;
- (id)randomVoice;
- (void)randomVoice;
@end

@implementation SUICVoiceSelectionVoiceCollection

- (SUICVoiceSelectionVoiceCollection)initWithLanguageCode:(id)code dialectLanguageCodes:(id)codes currentVoice:(id)voice alternativeVoices:(id)voices
{
  codeCopy = code;
  codesCopy = codes;
  voiceCopy = voice;
  voicesCopy = voices;
  v24.receiver = self;
  v24.super_class = SUICVoiceSelectionVoiceCollection;
  v14 = [(SUICVoiceSelectionVoiceCollection *)&v24 init];
  if (v14)
  {
    v15 = [codeCopy copy];
    languageCode = v14->_languageCode;
    v14->_languageCode = v15;

    v17 = [codesCopy copy];
    dialectLanguageCodes = v14->_dialectLanguageCodes;
    v14->_dialectLanguageCodes = v17;

    v19 = [voiceCopy copy];
    currentVoice = v14->_currentVoice;
    v14->_currentVoice = v19;

    v21 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:voicesCopy copyItems:1];
    alternativeVoices = v14->_alternativeVoices;
    v14->_alternativeVoices = v21;
  }

  return v14;
}

- (id)randomVoice
{
  v3 = MEMORY[0x1E695DF70];
  allObjects = [(NSSet *)self->_alternativeVoices allObjects];
  v5 = [v3 arrayWithArray:allObjects];

  if (self->_currentVoice)
  {
    [v5 addObject:?];
  }

  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v5, "count"))}];
  }

  else
  {
    v7 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      [(SUICVoiceSelectionVoiceCollection *)self randomVoice];
    }

    v6 = 0;
  }

  return v6;
}

- (void)randomVoice
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[SUICVoiceSelectionVoiceCollection randomVoice]";
  v4 = 2112;
  selfCopy = self;
  _os_log_error_impl(&dword_1C432B000, a2, OS_LOG_TYPE_ERROR, "%s Zero voices in this collection %@", &v2, 0x16u);
}

@end