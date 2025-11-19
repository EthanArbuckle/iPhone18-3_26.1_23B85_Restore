@interface VMSpeechAnalyzerOperation
- (VMSpeechAnalyzerOperation)init;
- (VMSpeechAnalyzerOperation)initWithClientIdentifier:(id)a3 transcriberResultDelegate:(id)a4 endpointingResultDelegate:(id)a5 languageDetectorResultDelegate:(id)a6 transcriberOptions:(id)a7 options:(id)a8 languageDetectorOptions:(id)a9 restrictedLogging:(BOOL)a10 didChangeVolatileRange:(id)a11;
- (VMSpeechAnalyzerOperation)initWithSpeechAnalyzer:(id)a3;
@end

@implementation VMSpeechAnalyzerOperation

- (VMSpeechAnalyzerOperation)init
{
  [(VMSpeechAnalyzerOperation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMSpeechAnalyzerOperation)initWithClientIdentifier:(id)a3 transcriberResultDelegate:(id)a4 endpointingResultDelegate:(id)a5 languageDetectorResultDelegate:(id)a6 transcriberOptions:(id)a7 options:(id)a8 languageDetectorOptions:(id)a9 restrictedLogging:(BOOL)a10 didChangeVolatileRange:(id)a11
{
  v33 = a11;
  v32 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [[AVAudioFormat alloc] initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  v24 = objc_alloc_init(NSOperationQueue);
  [v24 setMaxConcurrentOperationCount:1];
  LOBYTE(v31) = a10;
  v34 = v23;
  v25 = [[SFSpeechAnalyzer alloc] initWithClientIdentifier:v22 audioFormat:v23 transcriberResultDelegate:v21 endpointingResultDelegate:v20 languageDetectorResultDelegate:v19 queue:v24 transcriberOptions:v18 options:v17 languageDetectorOptions:v32 restrictedLogging:v31 geoLMRegionID:0 contextualNamedEntities:0 didChangeVolatileRange:v33];

  if (v25)
  {
    v26 = [(VMSpeechAnalyzerOperation *)self initWithSpeechAnalyzer:v25];
    v27 = v26;
    if (v26)
    {
      [(VMSpeechAnalyzerOperation *)v26 setSpeechAnalyzerQueue:v24];
    }

    v28 = v27;
    v29 = v28;
  }

  else
  {
    v29 = 0;
    v28 = self;
  }

  return v29;
}

- (VMSpeechAnalyzerOperation)initWithSpeechAnalyzer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VMSpeechAnalyzerOperation;
  v6 = [(VMSpeechAnalyzerOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_speechAnalyzer, a3);
  }

  return v7;
}

@end