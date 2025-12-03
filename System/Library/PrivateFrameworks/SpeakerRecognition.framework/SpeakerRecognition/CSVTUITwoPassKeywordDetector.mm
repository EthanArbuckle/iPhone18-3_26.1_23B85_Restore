@interface CSVTUITwoPassKeywordDetector
- (CSVTUITwoPassKeywordDetector)initWithAsset:(id)asset supportMph:(BOOL)mph;
- (id)analyzeWithBuffer:(id)buffer;
- (id)triggeredUtteranceWithVoiceTriggerEventInfo:(id)info;
- (unint64_t)_sampleLengthFrom:(unsigned int)from To:(unsigned int)to;
- (void)internalReset;
- (void)reset;
@end

@implementation CSVTUITwoPassKeywordDetector

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

  v8 = [(CSAudioCircularBuffer *)self->_audioBuffer copySamplesFrom:[(CSAudioCircularBuffer *)self->_audioBuffer sampleCount]- [(CSVTUITwoPassKeywordDetector *)self _sampleLengthFrom:v7 To:[(CSAudioCircularBuffer *)self->_audioBuffer sampleCount]] to:[(CSAudioCircularBuffer *)self->_audioBuffer sampleCount]];
  v9 = [v8 dataForChannel:{objc_msgSend(MEMORY[0x277D016E0], "channelForProcessedInput")}];

  return v9;
}

- (id)analyzeWithBuffer:(id)buffer
{
  v82 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  v5 = [bufferCopy length];
  v6 = v5 / [MEMORY[0x277D016E0] inputRecordingBytesPerFrame];
  v7 = objc_alloc(MEMORY[0x277D01600]);
  inputRecordingSampleByteDepth = [MEMORY[0x277D016E0] inputRecordingSampleByteDepth];
  sampleCount = [(CSAudioCircularBuffer *)self->_audioBuffer sampleCount];
  LOBYTE(v70) = [MEMORY[0x277D016E0] inputRecordingIsFloat];
  v10 = [v7 initWithData:bufferCopy numChannels:1 numSamples:v6 sampleByteDepth:inputRecordingSampleByteDepth startSampleCount:sampleCount hostTime:0 remoteVAD:0 isFloat:v70];
  audioBuffer = self->_audioBuffer;
  bytes = [bufferCopy bytes];

  [(CSAudioCircularBuffer *)audioBuffer addSamples:bytes numSamples:v6];
  if (v10)
  {
    v13 = [(CSKeywordAnalyzerNDAPI *)self->_keywordAnalyzer getBestAnalyzedResultsFromAudioChunk:v10];
    v14 = v13;
    if (!self->_isFirstPassTriggered)
    {
      if (v13)
      {
        [v13 bestScore];
        v16 = v15;
        if (v15 >= self->_keywordThreshold)
        {
          objc_storeStrong(&self->_firstPassResult, v14);
          self->_isFirstPassTriggered = 1;
          v17 = *MEMORY[0x277D015D8];
          if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
          {
            firstPassResult = self->_firstPassResult;
            v19 = v17;
            bestStart = [(CSKeywordAnalyzerNDAPIResult *)firstPassResult bestStart];
            bestEnd = [(CSKeywordAnalyzerNDAPIResult *)self->_firstPassResult bestEnd];
            samplesAtFire = [(CSKeywordAnalyzerNDAPIResult *)self->_firstPassResult samplesAtFire];
            *buf = 136316162;
            v73 = "[CSVTUITwoPassKeywordDetector analyzeWithBuffer:]";
            v74 = 2048;
            v75 = v16;
            v76 = 2048;
            v77 = bestStart;
            v78 = 2048;
            v79 = bestEnd;
            v80 = 2048;
            v81 = samplesAtFire;
            _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, "%s FirstPass triggered, score %f start %lu end %lu fire %lu", buf, 0x34u);
          }
        }
      }
    }

    if (self->_firstPassResult)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      bestStart2 = [(CSKeywordAnalyzerNDAPIResult *)self->_firstPassResult bestStart];
      samplesAtFire2 = [(CSKeywordAnalyzerNDAPIResult *)self->_firstPassResult samplesAtFire];
      extraSamplesAtStart = self->_extraSamplesAtStart;
      v29 = self->_analyzerTrailingSamples + samplesAtFire2;
      if ([(CSAudioCircularBuffer *)self->_audioBuffer sampleCount]>= v29)
      {
        if (bestStart2 >= extraSamplesAtStart)
        {
          v34 = bestStart2 - extraSamplesAtStart;
        }

        else
        {
          v34 = 0;
        }

        v35 = [(CSAudioCircularBuffer *)self->_audioBuffer copySamplesFrom:v34 to:v29];
        v36 = [(CSPhraseDetector *)self->_phraseDetector getAnalyzedResultFromAudioChunk:v35];
        numSamples = [v35 numSamples];
        v38 = v29 - v34;
        v39 = *MEMORY[0x277D015D8];
        if (numSamples != v38 && os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
        {
          v68 = v39;
          numSamples2 = [v35 numSamples];
          *buf = 136315650;
          v73 = "[CSVTUITwoPassKeywordDetector analyzeWithBuffer:]";
          v74 = 2048;
          v75 = *&numSamples2;
          v76 = 2048;
          v77 = v38;
          _os_log_error_impl(&dword_225E12000, v68, OS_LOG_TYPE_ERROR, "%s numSamplesinAudioChunk %lu not matching requiredNumSamples %lu !", buf, 0x20u);

          v39 = *MEMORY[0x277D015D8];
        }

        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = v39;
          numSamples3 = [v35 numSamples];
          *buf = 136315394;
          v73 = "[CSVTUITwoPassKeywordDetector analyzeWithBuffer:]";
          v74 = 2048;
          v75 = *&numSamples3;
          _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s Second pass set to analyze %lu samples, stop feeding", buf, 0x16u);
        }

        getAnalyzedResultFromFlushedAudio = [(CSPhraseDetector *)self->_phraseDetector getAnalyzedResultFromFlushedAudio];
        ndapiResult = [getAnalyzedResultFromFlushedAudio ndapiResult];
        v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(ndapiResult, "bestStart")}];
        [dictionary setObject:v44 forKey:*MEMORY[0x277D01F00]];

        v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(ndapiResult, "bestEnd")}];
        [dictionary setObject:v45 forKey:*MEMORY[0x277D01EA8]];

        v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(ndapiResult, "samplesFed")}];
        [dictionary setObject:v46 forKey:*MEMORY[0x277D01E78]];

        v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(ndapiResult, "samplesAtFire")}];
        [dictionary setObject:v47 forKey:*MEMORY[0x277D01ED8]];

        v48 = MEMORY[0x277CCABB0];
        [getAnalyzedResultFromFlushedAudio combinedScore];
        v49 = [v48 numberWithFloat:?];
        [dictionary setObject:v49 forKey:*MEMORY[0x277D01EF0]];

        v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(getAnalyzedResultFromFlushedAudio, "phId")}];
        [dictionary setObject:v50 forKey:*MEMORY[0x277D01CF8]];

        v71 = -[CSPhraseDetector phraseDetectorInfoFromPhId:](self->_phraseDetector, "phraseDetectorInfoFromPhId:", [getAnalyzedResultFromFlushedAudio phId]);
        phraseConfig = [v71 phraseConfig];
        name = [phraseConfig name];

        if (name)
        {
          name2 = [phraseConfig name];
          [dictionary setObject:name2 forKey:*MEMORY[0x277D01CF0]];
        }

        if ([getAnalyzedResultFromFlushedAudio isRunningQuasar])
        {
          v54 = MEMORY[0x277CCABB0];
          [getAnalyzedResultFromFlushedAudio recognizerScore];
          v55 = [v54 numberWithFloat:?];
          [dictionary setObject:v55 forKey:*MEMORY[0x277D01E10]];

          v56 = MEMORY[0x277CCABB0];
          [phraseConfig recognizerScoreOffset];
          v57 = [v56 numberWithFloat:?];
          [dictionary setObject:v57 forKey:*MEMORY[0x277D01E18]];

          v58 = MEMORY[0x277CCABB0];
          [phraseConfig recognizerScoreScaleFactor];
          v59 = [v58 numberWithFloat:?];
          [dictionary setObject:v59 forKey:*MEMORY[0x277D01E08]];
        }

        v60 = [getAnalyzedResultFromFlushedAudio decision] == 1;
        if (!self->_supportsMph)
        {
          if ([getAnalyzedResultFromFlushedAudio phId])
          {
            v61 = *MEMORY[0x277D015D8];
            v60 = 0;
            if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v73 = "[CSVTUITwoPassKeywordDetector analyzeWithBuffer:]";
              _os_log_impl(&dword_225E12000, v61, OS_LOG_TYPE_DEFAULT, "%s Report as rejection since the detected phId is not the default", buf, 0xCu);
              v60 = 0;
            }
          }
        }

        v62 = [MEMORY[0x277CCABB0] numberWithBool:v60];
        [dictionary setObject:v62 forKey:*MEMORY[0x277D01DF8]];

        v63 = *MEMORY[0x277D015D8];
        if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
        {
          v64 = v63;
          v65 = [getAnalyzedResultFromFlushedAudio description];
          *buf = 136315394;
          v73 = "[CSVTUITwoPassKeywordDetector analyzeWithBuffer:]";
          v74 = 2112;
          v75 = *&v65;
          _os_log_impl(&dword_225E12000, v64, OS_LOG_TYPE_DEFAULT, "%s Phrase detector result: %@", buf, 0x16u);
        }

        [(CSVTUITwoPassKeywordDetector *)self internalReset];
        v24 = dictionary;
      }

      else
      {
        v30 = *MEMORY[0x277D015D8];
        if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
        {
          v31 = self->_audioBuffer;
          v32 = v30;
          sampleCount2 = [(CSAudioCircularBuffer *)v31 sampleCount];
          *buf = 136315650;
          v73 = "[CSVTUITwoPassKeywordDetector analyzeWithBuffer:]";
          v74 = 2048;
          v75 = *&sampleCount2;
          v76 = 2048;
          v77 = v29;
          _os_log_impl(&dword_225E12000, v32, OS_LOG_TYPE_DEFAULT, "%s Waiting for the entire audio... samplesInBuffer %lu triggerSampleFedCount %lu", buf, 0x20u);
        }

        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v23 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v73 = "[CSVTUITwoPassKeywordDetector analyzeWithBuffer:]";
      _os_log_error_impl(&dword_225E12000, v23, OS_LOG_TYPE_ERROR, "%s Unable to create audio chunk, not feeding to analyzer", buf, 0xCu);
    }

    v24 = 0;
  }

  v66 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)internalReset
{
  [(CSKeywordAnalyzerNDAPI *)self->_keywordAnalyzer reset];
  [(CSPhraseDetector *)self->_phraseDetector reset];
  self->_isFirstPassTriggered = 0;
  firstPassResult = self->_firstPassResult;
  self->_firstPassResult = 0;
}

- (void)reset
{
  [(CSVTUITwoPassKeywordDetector *)self internalReset];
  audioBuffer = self->_audioBuffer;

  [(CSAudioCircularBuffer *)audioBuffer reset];
}

- (CSVTUITwoPassKeywordDetector)initWithAsset:(id)asset supportMph:(BOOL)mph
{
  v42 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v37.receiver = self;
  v37.super_class = CSVTUITwoPassKeywordDetector;
  v7 = [(CSVTUITwoPassKeywordDetector *)&v37 init];
  if (v7)
  {
    if (assetCopy)
    {
      resourcePath = [assetCopy resourcePath];
      v9 = [resourcePath stringByAppendingPathComponent:@"config_1st.txt"];
      v10 = [objc_alloc(MEMORY[0x277D017B8]) initWithConfigPath:v9 resourcePath:resourcePath];
      keywordAnalyzer = v7->_keywordAnalyzer;
      v7->_keywordAnalyzer = v10;

      v12 = *MEMORY[0x277D015D8];
      v13 = *MEMORY[0x277D015D8];
      if (v7->_keywordAnalyzer)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v39 = "[CSVTUITwoPassKeywordDetector initWithAsset:supportMph:]";
          v40 = 2112;
          v41 = v9;
          _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s Initialized with config path: %@", buf, 0x16u);
        }

        v14 = [MEMORY[0x277D01948] decodeConfigFrom:assetCopy];
        [v14 threshold];
        v7->_keywordThreshold = v15;
        v16 = [MEMORY[0x277D01958] decodeConfigFrom:assetCopy forFirstPassSource:10];
        v17 = objc_alloc_init(MEMORY[0x277D01828]);
        phraseDetector = v7->_phraseDetector;
        v7->_phraseDetector = v17;

        [(CSPhraseDetector *)v7->_phraseDetector setConfig:v16];
        [v16 preTriggerAudioTime];
        v20 = v19;
        [MEMORY[0x277D016E0] inputRecordingSampleRate];
        v7->_extraSamplesAtStart = (v20 * v21);
        [v16 trailingAudioTime];
        v23 = v22;
        [MEMORY[0x277D016E0] inputRecordingSampleRate];
        v7->_analyzerTrailingSamples = (v23 * v24);
        v25 = objc_alloc(MEMORY[0x277D01610]);
        [MEMORY[0x277D016E0] inputRecordingDurationInSecs];
        v27 = v26;
        [MEMORY[0x277D016E0] inputRecordingSampleRate];
        LODWORD(v29) = v28;
        LODWORD(v30) = v27;
        v31 = [v25 initWithNumChannels:1 recordingDuration:v30 samplingRate:v29];
        audioBuffer = v7->_audioBuffer;
        v7->_audioBuffer = v31;

        v7->_supportsMph = mph;
        [(CSVTUITwoPassKeywordDetector *)v7 reset];

        goto LABEL_7;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v39 = "[CSVTUITwoPassKeywordDetector initWithAsset:supportMph:]";
        _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s Cannot create CSVTUIKeywordDetector since we cannot initialize NDAPI", buf, 0xCu);
      }
    }

    else
    {
      v34 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v39 = "[CSVTUITwoPassKeywordDetector initWithAsset:supportMph:]";
        _os_log_error_impl(&dword_225E12000, v34, OS_LOG_TYPE_ERROR, "%s Cannot create CSVTUIKeywordDetector since there is no asset available", buf, 0xCu);
      }
    }

    v33 = 0;
    goto LABEL_14;
  }

LABEL_7:
  v33 = v7;
LABEL_14:

  v35 = *MEMORY[0x277D85DE8];
  return v33;
}

@end