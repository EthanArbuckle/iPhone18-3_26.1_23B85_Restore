@interface VMSpeechAnalyzerLanguageIDOperation
- (VMSpeechAnalyzerLanguageIDOperation)initWithClientIdentifier:(id)identifier transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate languageDetectorResultDelegate:(id)detectorResultDelegate transcriberOptions:(id)options options:(id)a8 languageDetectorOptions:(id)detectorOptions restrictedLogging:(BOOL)self0 didChangeVolatileRange:(id)self1;
- (id)initSpeechAnalyzerForLanguageID:(id)d;
- (void)cancel;
- (void)main;
- (void)speechAnalyzer:(id)analyzer didProduceLanguageHypothesis:(id)hypothesis;
- (void)speechAnalyzer:(id)analyzer didStopLanguageDetectorWithError:(id)error;
@end

@implementation VMSpeechAnalyzerLanguageIDOperation

- (VMSpeechAnalyzerLanguageIDOperation)initWithClientIdentifier:(id)identifier transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate languageDetectorResultDelegate:(id)detectorResultDelegate transcriberOptions:(id)options options:(id)a8 languageDetectorOptions:(id)detectorOptions restrictedLogging:(BOOL)self0 didChangeVolatileRange:(id)self1
{
  [(VMSpeechAnalyzerLanguageIDOperation *)self doesNotRecognizeSelector:a2, delegate, resultDelegate, detectorResultDelegate, options, a8];

  return 0;
}

- (id)initSpeechAnalyzerForLanguageID:(id)d
{
  dCopy = d;
  v6 = @"com.apple.visualvoicemail";
  v7 = objc_alloc_init(SFSpeechAnalyzerLanguageDetectorOptions);
  [v7 setAlternativeCount:5];
  v12.receiver = self;
  v12.super_class = VMSpeechAnalyzerLanguageIDOperation;
  v11 = 1;
  v8 = [(VMSpeechAnalyzerOperation *)&v12 initWithClientIdentifier:v6 transcriberResultDelegate:0 endpointingResultDelegate:0 languageDetectorResultDelegate:self transcriberOptions:0 options:0 languageDetectorOptions:v7 restrictedLogging:v11 didChangeVolatileRange:&stru_1000EE930];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dataURL, d);
  }

  return v9;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = VMSpeechAnalyzerLanguageIDOperation;
  [(VMSpeechAnalyzerLanguageIDOperation *)&v4 cancel];
  v3 = sub_10000280C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cancelled LanguageID operation %@.", buf, 0xCu);
  }
}

- (void)main
{
  v3 = sub_10000280C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    dataURL = [(VMSpeechAnalyzerLanguageIDOperation *)self dataURL];
    queuePriority = [(VMSpeechAnalyzerLanguageIDOperation *)self queuePriority];
    v6 = +[MFPowerController sharedInstance];
    isPluggedIn = [v6 isPluggedIn];
    v8 = @" not";
    *buf = 138413058;
    selfCopy = self;
    v33 = 2112;
    if (isPluggedIn)
    {
      v8 = &stru_1000F0098;
    }

    v34 = dataURL;
    v35 = 2048;
    v36 = queuePriority;
    v37 = 2112;
    v38 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting LanguageID operation %@ for %@. Priority is %ld and device is %@ charging.", buf, 0x2Au);
  }

  if ([(VMSpeechAnalyzerLanguageIDOperation *)self isCancelled])
  {
    v9 = kVVErrorDomain;
    v29 = NSLocalizedDescriptionKey;
    v30 = @"Language ID operation was cancelled.";
    v10 = &v30;
    v11 = &v29;
    goto LABEL_7;
  }

  if ([(VMSpeechAnalyzerLanguageIDOperation *)self queuePriority]== -4)
  {
    v14 = +[MFPowerController sharedInstance];
    isPluggedIn2 = [v14 isPluggedIn];

    if ((isPluggedIn2 & 1) == 0)
    {
      v9 = kVVErrorDomain;
      v27 = NSLocalizedDescriptionKey;
      v28 = @"Low priority Language ID operation cancelled. The device is no longer connected to a power source.";
      v10 = &v28;
      v11 = &v27;
LABEL_7:
      v12 = [NSDictionary dictionaryWithObjects:v10 forKeys:v11 count:1];
      v13 = [NSError errorWithDomain:v9 code:1041 userInfo:v12];

      if (!v13)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  v16 = dispatch_semaphore_create(0);
  [(VMSpeechAnalyzerLanguageIDOperation *)self setSemaphore:v16];

  dataURL2 = [(VMSpeechAnalyzerLanguageIDOperation *)self dataURL];
  v18 = [(VMSpeechAnalyzerOperation *)self submitAudioToAnalyzer:dataURL2 sampleRate:0 useFloat:16000.0];

  if (v18)
  {
    v19 = sub_10000280C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      dataURL3 = [(VMSpeechAnalyzerLanguageIDOperation *)self dataURL];
      *buf = 138412290;
      selfCopy = dataURL3;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "VMSpeechAnalyzerLanguageIDOperation: Submitted URL %@ for Language ID", buf, 0xCu);
    }

    semaphore = [(VMSpeechAnalyzerLanguageIDOperation *)self semaphore];
    dispatch_semaphore_wait(semaphore, 0xFFFFFFFFFFFFFFFFLL);
    v13 = 0;
  }

  else
  {
    v22 = kVVErrorDomain;
    v25 = NSLocalizedDescriptionKey;
    v26 = @"Audio was not submitted to speech analyzer successfully.";
    semaphore = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v13 = [NSError errorWithDomain:v22 code:1042 userInfo:semaphore];
  }

  [(VMSpeechAnalyzerLanguageIDOperation *)self cancel];
  if (v13)
  {
LABEL_17:
    languageIDOperationCompletion = [(VMSpeechAnalyzerLanguageIDOperation *)self languageIDOperationCompletion];

    if (languageIDOperationCompletion)
    {
      languageIDOperationCompletion2 = [(VMSpeechAnalyzerLanguageIDOperation *)self languageIDOperationCompletion];
      (languageIDOperationCompletion2)[2](languageIDOperationCompletion2, 0, v13);
    }
  }

LABEL_19:
}

- (void)speechAnalyzer:(id)analyzer didProduceLanguageHypothesis:(id)hypothesis
{
  hypothesisCopy = hypothesis;
  v6 = sub_10000280C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    dominantLocale = [hypothesisCopy dominantLocale];
    localeIdentifier = [dominantLocale localeIdentifier];
    v9 = 138412290;
    v10 = localeIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "VMSpeechAnalyzerLanguageIDOperation Dominant Locale detected: <%@>", &v9, 0xCu);
  }

  [(VMSpeechAnalyzerLanguageIDOperation *)self setLanguageDetectorResult:hypothesisCopy];
}

- (void)speechAnalyzer:(id)analyzer didStopLanguageDetectorWithError:(id)error
{
  errorCopy = error;
  v6 = sub_10000280C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "VMSpeechAnalyzerLanguageIDOperation didStopLanguageDetectorWithError. Error? %@", &v11, 0xCu);
  }

  languageIDOperationCompletion = [(VMSpeechAnalyzerLanguageIDOperation *)self languageIDOperationCompletion];

  if (languageIDOperationCompletion)
  {
    languageIDOperationCompletion2 = [(VMSpeechAnalyzerLanguageIDOperation *)self languageIDOperationCompletion];
    languageDetectorResult = [(VMSpeechAnalyzerLanguageIDOperation *)self languageDetectorResult];
    (languageIDOperationCompletion2)[2](languageIDOperationCompletion2, languageDetectorResult, errorCopy);
  }

  semaphore = [(VMSpeechAnalyzerLanguageIDOperation *)self semaphore];
  dispatch_semaphore_signal(semaphore);
}

@end