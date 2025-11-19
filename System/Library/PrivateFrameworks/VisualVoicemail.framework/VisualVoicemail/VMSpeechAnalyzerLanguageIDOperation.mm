@interface VMSpeechAnalyzerLanguageIDOperation
- (VMSpeechAnalyzerLanguageIDOperation)initWithClientIdentifier:(id)a3 transcriberResultDelegate:(id)a4 endpointingResultDelegate:(id)a5 languageDetectorResultDelegate:(id)a6 transcriberOptions:(id)a7 options:(id)a8 languageDetectorOptions:(id)a9 restrictedLogging:(BOOL)a10 didChangeVolatileRange:(id)a11;
- (id)initSpeechAnalyzerForLanguageID:(id)a3;
- (void)cancel;
- (void)main;
- (void)speechAnalyzer:(id)a3 didProduceLanguageHypothesis:(id)a4;
- (void)speechAnalyzer:(id)a3 didStopLanguageDetectorWithError:(id)a4;
@end

@implementation VMSpeechAnalyzerLanguageIDOperation

- (VMSpeechAnalyzerLanguageIDOperation)initWithClientIdentifier:(id)a3 transcriberResultDelegate:(id)a4 endpointingResultDelegate:(id)a5 languageDetectorResultDelegate:(id)a6 transcriberOptions:(id)a7 options:(id)a8 languageDetectorOptions:(id)a9 restrictedLogging:(BOOL)a10 didChangeVolatileRange:(id)a11
{
  [(VMSpeechAnalyzerLanguageIDOperation *)self doesNotRecognizeSelector:a2, a4, a5, a6, a7, a8];

  return 0;
}

- (id)initSpeechAnalyzerForLanguageID:(id)a3
{
  v5 = a3;
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
    objc_storeStrong(&v8->_dataURL, a3);
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
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cancelled LanguageID operation %@.", buf, 0xCu);
  }
}

- (void)main
{
  v3 = sub_10000280C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VMSpeechAnalyzerLanguageIDOperation *)self dataURL];
    v5 = [(VMSpeechAnalyzerLanguageIDOperation *)self queuePriority];
    v6 = +[MFPowerController sharedInstance];
    v7 = [v6 isPluggedIn];
    v8 = @" not";
    *buf = 138413058;
    v32 = self;
    v33 = 2112;
    if (v7)
    {
      v8 = &stru_1000F0098;
    }

    v34 = v4;
    v35 = 2048;
    v36 = v5;
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
    v15 = [v14 isPluggedIn];

    if ((v15 & 1) == 0)
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

  v17 = [(VMSpeechAnalyzerLanguageIDOperation *)self dataURL];
  v18 = [(VMSpeechAnalyzerOperation *)self submitAudioToAnalyzer:v17 sampleRate:0 useFloat:16000.0];

  if (v18)
  {
    v19 = sub_10000280C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(VMSpeechAnalyzerLanguageIDOperation *)self dataURL];
      *buf = 138412290;
      v32 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "VMSpeechAnalyzerLanguageIDOperation: Submitted URL %@ for Language ID", buf, 0xCu);
    }

    v21 = [(VMSpeechAnalyzerLanguageIDOperation *)self semaphore];
    dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
    v13 = 0;
  }

  else
  {
    v22 = kVVErrorDomain;
    v25 = NSLocalizedDescriptionKey;
    v26 = @"Audio was not submitted to speech analyzer successfully.";
    v21 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v13 = [NSError errorWithDomain:v22 code:1042 userInfo:v21];
  }

  [(VMSpeechAnalyzerLanguageIDOperation *)self cancel];
  if (v13)
  {
LABEL_17:
    v23 = [(VMSpeechAnalyzerLanguageIDOperation *)self languageIDOperationCompletion];

    if (v23)
    {
      v24 = [(VMSpeechAnalyzerLanguageIDOperation *)self languageIDOperationCompletion];
      (v24)[2](v24, 0, v13);
    }
  }

LABEL_19:
}

- (void)speechAnalyzer:(id)a3 didProduceLanguageHypothesis:(id)a4
{
  v5 = a4;
  v6 = sub_10000280C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 dominantLocale];
    v8 = [v7 localeIdentifier];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "VMSpeechAnalyzerLanguageIDOperation Dominant Locale detected: <%@>", &v9, 0xCu);
  }

  [(VMSpeechAnalyzerLanguageIDOperation *)self setLanguageDetectorResult:v5];
}

- (void)speechAnalyzer:(id)a3 didStopLanguageDetectorWithError:(id)a4
{
  v5 = a4;
  v6 = sub_10000280C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "VMSpeechAnalyzerLanguageIDOperation didStopLanguageDetectorWithError. Error? %@", &v11, 0xCu);
  }

  v7 = [(VMSpeechAnalyzerLanguageIDOperation *)self languageIDOperationCompletion];

  if (v7)
  {
    v8 = [(VMSpeechAnalyzerLanguageIDOperation *)self languageIDOperationCompletion];
    v9 = [(VMSpeechAnalyzerLanguageIDOperation *)self languageDetectorResult];
    (v8)[2](v8, v9, v5);
  }

  v10 = [(VMSpeechAnalyzerLanguageIDOperation *)self semaphore];
  dispatch_semaphore_signal(v10);
}

@end