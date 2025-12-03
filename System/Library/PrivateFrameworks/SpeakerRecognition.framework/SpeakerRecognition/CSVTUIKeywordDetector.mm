@interface CSVTUIKeywordDetector
- (CSVTUIKeywordDetector)initWithAsset:(id)asset;
- (id)analyzeWithBuffer:(id)buffer;
- (id)triggeredUtteranceWithVoiceTriggerEventInfo:(id)info;
- (unint64_t)_sampleLengthFrom:(unsigned int)from To:(unsigned int)to;
- (void)reset;
@end

@implementation CSVTUIKeywordDetector

- (unint64_t)_sampleLengthFrom:(unsigned int)from To:(unsigned int)to
{
  v4 = -from;
  if (from > to)
  {
    v4 = ~from;
  }

  return v4 + to;
}

- (id)triggeredUtteranceWithVoiceTriggerEventInfo:(id)info
{
  v4 = [info objectForKeyedSubscript:*MEMORY[0x277D01F00]];
  unsignedIntValue = [v4 unsignedIntValue];

  extraSamplesAtStart = self->_extraSamplesAtStart;
  if (extraSamplesAtStart <= unsignedIntValue)
  {
    v7 = unsignedIntValue - extraSamplesAtStart;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CSAudioCircularBuffer *)self->_audioBuffer copySamplesFrom:[(CSAudioCircularBuffer *)self->_audioBuffer sampleCount]- [(CSVTUIKeywordDetector *)self _sampleLengthFrom:v7 To:[(CSAudioCircularBuffer *)self->_audioBuffer sampleCount]] to:[(CSAudioCircularBuffer *)self->_audioBuffer sampleCount]];
  v9 = [v8 dataForChannel:{objc_msgSend(MEMORY[0x277D016E0], "channelForProcessedInput")}];

  return v9;
}

- (id)analyzeWithBuffer:(id)buffer
{
  bufferCopy = buffer;
  v5 = [bufferCopy length];
  v6 = v5 / [MEMORY[0x277D016E0] inputRecordingBytesPerFrame];
  -[CSAudioCircularBuffer addSamples:numSamples:](self->_audioBuffer, "addSamples:numSamples:", [bufferCopy bytes], v6);
  v7 = [(SSRTriggerPhraseDetectorNDAPI *)self->_keywordAnalyzer analyzeWavData:bufferCopy numSamples:v6];
  v8 = v7;
  if (v7)
  {
    [v7 bestScore];
    v10 = v9;
    lastKeywordScore = self->_lastKeywordScore;
    v12 = lastKeywordScore >= v10 && lastKeywordScore >= self->_keywordThreshold;
    v14 = lastKeywordScore >= v10;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "bestStart")}];
    [dictionary setObject:v15 forKey:*MEMORY[0x277D01F00]];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "bestEnd")}];
    [dictionary setObject:v16 forKey:*MEMORY[0x277D01EA8]];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "samplesFed")}];
    [dictionary setObject:v17 forKey:*MEMORY[0x277D01E78]];

    *&v18 = self->_lastKeywordScore;
    v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
    [dictionary setObject:v19 forKey:*MEMORY[0x277D01EF0]];

    v20 = [MEMORY[0x277CCABB0] numberWithBool:v12];
    [dictionary setObject:v20 forKey:*MEMORY[0x277D01DF8]];

    v21 = [MEMORY[0x277CCABB0] numberWithBool:v14];
    [dictionary setObject:v21 forKey:*MEMORY[0x277D01DE0]];

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "phId")}];
    [dictionary setObject:v22 forKey:*MEMORY[0x277D01CF8]];

    self->_lastKeywordScore = v10;
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

- (void)reset
{
  self->_lastKeywordScore = -10000.0;
  [(SSRTriggerPhraseDetectorNDAPI *)self->_keywordAnalyzer reset];
  audioBuffer = self->_audioBuffer;

  [(CSAudioCircularBuffer *)audioBuffer reset];
}

- (CSVTUIKeywordDetector)initWithAsset:(id)asset
{
  v32 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v29.receiver = self;
  v29.super_class = CSVTUIKeywordDetector;
  v5 = [(CSVTUIKeywordDetector *)&v29 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  if (!assetCopy)
  {
    v25 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v31 = "[CSVTUIKeywordDetector initWithAsset:]";
      _os_log_error_impl(&dword_225E12000, v25, OS_LOG_TYPE_ERROR, "%s Cannot create CSVTUIKeywordDetector since there is no asset available", buf, 0xCu);
    }

    goto LABEL_11;
  }

  resourcePath = [assetCopy resourcePath];
  v7 = [resourcePath stringByAppendingPathComponent:@"config.txt"];
  v8 = [[SSRTriggerPhraseDetectorNDAPI alloc] initWithConfigPath:v7 resourcePath:resourcePath phId:0];
  keywordAnalyzer = v5->_keywordAnalyzer;
  v5->_keywordAnalyzer = v8;

  if (!v5->_keywordAnalyzer)
  {
    v26 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v31 = "[CSVTUIKeywordDetector initWithAsset:]";
      _os_log_error_impl(&dword_225E12000, v26, OS_LOG_TYPE_ERROR, "%s Cannot create CSVTUIKeywordDetector since we cannot initialize NDAPI", buf, 0xCu);
    }

LABEL_11:
    v24 = 0;
    goto LABEL_12;
  }

  v10 = [MEMORY[0x277D016E8] decodeConfigFrom:assetCopy];
  [v10 threshold];
  v5->_keywordThreshold = v11;
  v12 = [MEMORY[0x277D01958] decodeConfigFrom:assetCopy forFirstPassSource:0];
  [v12 preTriggerAudioTime];
  v14 = v13;
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  v5->_extraSamplesAtStart = (v14 * v15);
  v16 = objc_alloc(MEMORY[0x277D01610]);
  [MEMORY[0x277D016E0] inputRecordingDurationInSecs];
  v18 = v17;
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  LODWORD(v20) = v19;
  LODWORD(v21) = v18;
  v22 = [v16 initWithNumChannels:1 recordingDuration:v21 samplingRate:v20];
  audioBuffer = v5->_audioBuffer;
  v5->_audioBuffer = v22;

  [(CSVTUIKeywordDetector *)v5 reset];
LABEL_5:
  v24 = v5;
LABEL_12:

  v27 = *MEMORY[0x277D85DE8];
  return v24;
}

@end