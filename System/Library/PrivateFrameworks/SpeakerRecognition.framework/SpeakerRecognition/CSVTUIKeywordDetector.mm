@interface CSVTUIKeywordDetector
- (CSVTUIKeywordDetector)initWithAsset:(id)a3;
- (id)analyzeWithBuffer:(id)a3;
- (id)triggeredUtteranceWithVoiceTriggerEventInfo:(id)a3;
- (unint64_t)_sampleLengthFrom:(unsigned int)a3 To:(unsigned int)a4;
- (void)reset;
@end

@implementation CSVTUIKeywordDetector

- (unint64_t)_sampleLengthFrom:(unsigned int)a3 To:(unsigned int)a4
{
  v4 = -a3;
  if (a3 > a4)
  {
    v4 = ~a3;
  }

  return v4 + a4;
}

- (id)triggeredUtteranceWithVoiceTriggerEventInfo:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x277D01F00]];
  v5 = [v4 unsignedIntValue];

  extraSamplesAtStart = self->_extraSamplesAtStart;
  if (extraSamplesAtStart <= v5)
  {
    v7 = v5 - extraSamplesAtStart;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CSAudioCircularBuffer *)self->_audioBuffer copySamplesFrom:[(CSAudioCircularBuffer *)self->_audioBuffer sampleCount]- [(CSVTUIKeywordDetector *)self _sampleLengthFrom:v7 To:[(CSAudioCircularBuffer *)self->_audioBuffer sampleCount]] to:[(CSAudioCircularBuffer *)self->_audioBuffer sampleCount]];
  v9 = [v8 dataForChannel:{objc_msgSend(MEMORY[0x277D016E0], "channelForProcessedInput")}];

  return v9;
}

- (id)analyzeWithBuffer:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  v6 = v5 / [MEMORY[0x277D016E0] inputRecordingBytesPerFrame];
  -[CSAudioCircularBuffer addSamples:numSamples:](self->_audioBuffer, "addSamples:numSamples:", [v4 bytes], v6);
  v7 = [(SSRTriggerPhraseDetectorNDAPI *)self->_keywordAnalyzer analyzeWavData:v4 numSamples:v6];
  v8 = v7;
  if (v7)
  {
    [v7 bestScore];
    v10 = v9;
    lastKeywordScore = self->_lastKeywordScore;
    v12 = lastKeywordScore >= v10 && lastKeywordScore >= self->_keywordThreshold;
    v14 = lastKeywordScore >= v10;
    v13 = [MEMORY[0x277CBEB38] dictionary];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "bestStart")}];
    [v13 setObject:v15 forKey:*MEMORY[0x277D01F00]];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "bestEnd")}];
    [v13 setObject:v16 forKey:*MEMORY[0x277D01EA8]];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "samplesFed")}];
    [v13 setObject:v17 forKey:*MEMORY[0x277D01E78]];

    *&v18 = self->_lastKeywordScore;
    v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
    [v13 setObject:v19 forKey:*MEMORY[0x277D01EF0]];

    v20 = [MEMORY[0x277CCABB0] numberWithBool:v12];
    [v13 setObject:v20 forKey:*MEMORY[0x277D01DF8]];

    v21 = [MEMORY[0x277CCABB0] numberWithBool:v14];
    [v13 setObject:v21 forKey:*MEMORY[0x277D01DE0]];

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "phId")}];
    [v13 setObject:v22 forKey:*MEMORY[0x277D01CF8]];

    self->_lastKeywordScore = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)reset
{
  self->_lastKeywordScore = -10000.0;
  [(SSRTriggerPhraseDetectorNDAPI *)self->_keywordAnalyzer reset];
  audioBuffer = self->_audioBuffer;

  [(CSAudioCircularBuffer *)audioBuffer reset];
}

- (CSVTUIKeywordDetector)initWithAsset:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = CSVTUIKeywordDetector;
  v5 = [(CSVTUIKeywordDetector *)&v29 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  if (!v4)
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

  v6 = [v4 resourcePath];
  v7 = [v6 stringByAppendingPathComponent:@"config.txt"];
  v8 = [[SSRTriggerPhraseDetectorNDAPI alloc] initWithConfigPath:v7 resourcePath:v6 phId:0];
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

  v10 = [MEMORY[0x277D016E8] decodeConfigFrom:v4];
  [v10 threshold];
  v5->_keywordThreshold = v11;
  v12 = [MEMORY[0x277D01958] decodeConfigFrom:v4 forFirstPassSource:0];
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