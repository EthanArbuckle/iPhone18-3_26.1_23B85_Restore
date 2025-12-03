@interface SSRTriggerPhraseDetectorQuasar
- (SSRTriggerPhraseDetectorQuasar)initWithLocale:(id)locale configPath:(id)path resourcePath:(id)resourcePath;
- (id)analyzeWavData:(id)data numSamples:(unint64_t)samples;
- (id)endAudio;
- (void)reset;
@end

@implementation SSRTriggerPhraseDetectorQuasar

- (id)endAudio
{
  v14[1] = *MEMORY[0x277D85DE8];
  resultsWithEndedAudio = [(_EARSyncSpeechRecognizer *)self->_syncRecognizer resultsWithEndedAudio];
  firstObject = [resultsWithEndedAudio firstObject];
  v4 = firstObject;
  if (firstObject)
  {
    tokens = [firstObject tokens];
    v6 = [tokens count];

    if (v6)
    {
      v13 = @"best_score";
      v7 = MEMORY[0x277CCABB0];
      tokens2 = [v4 tokens];
      v9 = [tokens2 objectAtIndexedSubscript:0];
      [v9 confidence];
      v10 = [v7 numberWithDouble:?];
      v14[0] = v10;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)analyzeWavData:(id)data numSamples:(unint64_t)samples
{
  v19[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = [(_EARSyncSpeechRecognizer *)self->_syncRecognizer resultsWithAddedAudio:dataCopy numberOfSamples:samples taskName:&stru_283923FC0];
  firstObject = [v7 firstObject];
  v9 = firstObject;
  if (firstObject)
  {
    tokens = [firstObject tokens];
    v11 = [tokens count];

    if (v11)
    {
      v18 = @"best_score";
      v12 = MEMORY[0x277CCABB0];
      tokens2 = [v9 tokens];
      v14 = [tokens2 objectAtIndexedSubscript:0];
      [v14 confidence];
      v15 = [v12 numberWithDouble:?];
      v19[0] = v15;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    }
  }

  else
  {
    v11 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)reset
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[SSRTriggerPhraseDetectorQuasar reset]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  LODWORD(v6) = 120;
  LOBYTE(v5) = 0;
  [(_EARSyncSpeechRecognizer *)self->_syncRecognizer resetWithSamplingRate:16000 language:self->_locale taskType:@"Dictation" userId:&stru_283923FC0 sessionId:&stru_283923FC0 deviceId:&stru_283923FC0 farField:v5 audioSource:@"Second Pass" maxAudioBufferSizeSeconds:v6];
  v4 = *MEMORY[0x277D85DE8];
}

- (SSRTriggerPhraseDetectorQuasar)initWithLocale:(id)locale configPath:(id)path resourcePath:(id)resourcePath
{
  v20 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  pathCopy = path;
  resourcePathCopy = resourcePath;
  v19.receiver = self;
  v19.super_class = SSRTriggerPhraseDetectorQuasar;
  v12 = [(SSRTriggerPhraseDetectorQuasar *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_locale, locale);
    v14 = [objc_alloc(MEMORY[0x277D07280]) initWithConfiguration:pathCopy];
    syncRecognizer = v13->_syncRecognizer;
    v13->_syncRecognizer = v14;
  }

  v16 = v13;

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

@end