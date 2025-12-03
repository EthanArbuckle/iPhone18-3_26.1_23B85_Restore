@interface VMSpeechAnalyzerOperation
- (VMSpeechAnalyzerOperation)init;
- (VMSpeechAnalyzerOperation)initWithClientIdentifier:(id)identifier transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate languageDetectorResultDelegate:(id)detectorResultDelegate transcriberOptions:(id)options options:(id)a8 languageDetectorOptions:(id)detectorOptions restrictedLogging:(BOOL)self0 didChangeVolatileRange:(id)self1;
- (VMSpeechAnalyzerOperation)initWithSpeechAnalyzer:(id)analyzer;
@end

@implementation VMSpeechAnalyzerOperation

- (VMSpeechAnalyzerOperation)init
{
  [(VMSpeechAnalyzerOperation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMSpeechAnalyzerOperation)initWithClientIdentifier:(id)identifier transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate languageDetectorResultDelegate:(id)detectorResultDelegate transcriberOptions:(id)options options:(id)a8 languageDetectorOptions:(id)detectorOptions restrictedLogging:(BOOL)self0 didChangeVolatileRange:(id)self1
{
  rangeCopy = range;
  detectorOptionsCopy = detectorOptions;
  v17 = a8;
  optionsCopy = options;
  detectorResultDelegateCopy = detectorResultDelegate;
  resultDelegateCopy = resultDelegate;
  delegateCopy = delegate;
  identifierCopy = identifier;
  v23 = [[AVAudioFormat alloc] initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  v24 = objc_alloc_init(NSOperationQueue);
  [v24 setMaxConcurrentOperationCount:1];
  LOBYTE(v31) = logging;
  v34 = v23;
  v25 = [[SFSpeechAnalyzer alloc] initWithClientIdentifier:identifierCopy audioFormat:v23 transcriberResultDelegate:delegateCopy endpointingResultDelegate:resultDelegateCopy languageDetectorResultDelegate:detectorResultDelegateCopy queue:v24 transcriberOptions:optionsCopy options:v17 languageDetectorOptions:detectorOptionsCopy restrictedLogging:v31 geoLMRegionID:0 contextualNamedEntities:0 didChangeVolatileRange:rangeCopy];

  if (v25)
  {
    v26 = [(VMSpeechAnalyzerOperation *)self initWithSpeechAnalyzer:v25];
    v27 = v26;
    if (v26)
    {
      [(VMSpeechAnalyzerOperation *)v26 setSpeechAnalyzerQueue:v24];
    }

    selfCopy = v27;
    v29 = selfCopy;
  }

  else
  {
    v29 = 0;
    selfCopy = self;
  }

  return v29;
}

- (VMSpeechAnalyzerOperation)initWithSpeechAnalyzer:(id)analyzer
{
  analyzerCopy = analyzer;
  v9.receiver = self;
  v9.super_class = VMSpeechAnalyzerOperation;
  v6 = [(VMSpeechAnalyzerOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_speechAnalyzer, analyzer);
  }

  return v7;
}

@end