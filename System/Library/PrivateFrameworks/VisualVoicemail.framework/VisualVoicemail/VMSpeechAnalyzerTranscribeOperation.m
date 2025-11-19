@interface VMSpeechAnalyzerTranscribeOperation
- (VMSpeechAnalyzerTranscribeOperation)initWithClientIdentifier:(id)a3 transcriberResultDelegate:(id)a4 endpointingResultDelegate:(id)a5 languageDetectorResultDelegate:(id)a6 transcriberOptions:(id)a7 options:(id)a8 languageDetectorOptions:(id)a9 restrictedLogging:(BOOL)a10 didChangeVolatileRange:(id)a11;
- (id)initSpeechAnalyzerForTranscribe:(id)a3 taskHint:(int64_t)a4 dataURL:(id)a5 queue:(id)a6 profanityFilterOverride:(BOOL)a7;
- (void)cancel;
- (void)main;
- (void)prepareTranscriptionString:(id)a3;
- (void)speechAnalyzer:(id)a3 didProduceTranscriberResult:(id)a4;
- (void)speechAnalyzer:(id)a3 didStopTranscriptionWithError:(id)a4;
- (void)speechAnalyzerDidProduceAllTranscriberResults:(id)a3;
@end

@implementation VMSpeechAnalyzerTranscribeOperation

- (VMSpeechAnalyzerTranscribeOperation)initWithClientIdentifier:(id)a3 transcriberResultDelegate:(id)a4 endpointingResultDelegate:(id)a5 languageDetectorResultDelegate:(id)a6 transcriberOptions:(id)a7 options:(id)a8 languageDetectorOptions:(id)a9 restrictedLogging:(BOOL)a10 didChangeVolatileRange:(id)a11
{
  [(VMSpeechAnalyzerTranscribeOperation *)self doesNotRecognizeSelector:a2, a4, a5, a6, a7, a8];

  return 0;
}

- (id)initSpeechAnalyzerForTranscribe:(id)a3 taskHint:(int64_t)a4 dataURL:(id)a5 queue:(id)a6 profanityFilterOverride:(BOOL)a7
{
  v7 = a7;
  v13 = a5;
  v24 = a6;
  v14 = @"com.apple.visualvoicemail";
  v15 = a3;
  v16 = objc_alloc_init(SFSpeechAnalyzerTranscriberOptions);
  [v16 setTaskHint:a4];
  [v16 setLocale:v15];

  if (v7)
  {
    v17 = sub_100002894();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Profanity Filter Enabled for URL %@.", buf, 0xCu);
    }

    [v16 setTranscriptionOptions:16];
  }

  v25.receiver = self;
  v25.super_class = VMSpeechAnalyzerTranscribeOperation;
  v23 = 1;
  v18 = [(VMSpeechAnalyzerOperation *)&v25 initWithClientIdentifier:v14 transcriberResultDelegate:self endpointingResultDelegate:0 languageDetectorResultDelegate:0 transcriberOptions:v16 options:0 languageDetectorOptions:0 restrictedLogging:v23 didChangeVolatileRange:&stru_1000EF460];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_dataURL, a5);
    objc_storeStrong(&v19->_transcriptionControllerQueue, a6);
    v20 = +[VMConfiguration getVMConcatenationDelimiterforLocale:](VMConfiguration, "getVMConcatenationDelimiterforLocale:", [v16 taskHint]);
    delimiter = v19->_delimiter;
    v19->_delimiter = v20;
  }

  return v19;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = VMSpeechAnalyzerTranscribeOperation;
  [(VMSpeechAnalyzerTranscribeOperation *)&v4 cancel];
  v3 = sub_100002894();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cancelled Speech Analyzer transcriber operation %@.", buf, 0xCu);
  }
}

- (void)main
{
  v3 = sub_100002894();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VMSpeechAnalyzerTranscribeOperation *)self dataURL];
    v5 = [(VMSpeechAnalyzerTranscribeOperation *)self queuePriority];
    v6 = +[MFPowerController sharedInstance];
    v7 = [v6 isPluggedIn];
    v8 = @" not";
    *buf = 138413058;
    v40 = self;
    v41 = 2112;
    if (v7)
    {
      v8 = &stru_1000F0098;
    }

    v42 = v4;
    v43 = 2048;
    v44 = v5;
    v45 = 2112;
    v46 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting Speech Analyzer transcriber operation %@ for %@. Priority is %ld and device is %@ charging.", buf, 0x2Au);
  }

  v9 = [(VMSpeechAnalyzerTranscribeOperation *)self transcribeOperationBeginCallback];

  if (v9)
  {
    v10 = [(VMSpeechAnalyzerTranscribeOperation *)self transcribeOperationBeginCallback];
    v10[2]();
  }

  if ([(VMSpeechAnalyzerTranscribeOperation *)self isCancelled])
  {
    v11 = kVVErrorDomain;
    v37 = NSLocalizedDescriptionKey;
    v38 = @"Speech Analyzer transcriber operation was cancelled.";
    v12 = &v38;
    v13 = &v37;
    goto LABEL_18;
  }

  if ([(VMSpeechAnalyzerTranscribeOperation *)self queuePriority]== -4)
  {
    v14 = +[MFPowerController sharedInstance];
    v15 = [v14 isPluggedIn];

    if ((v15 & 1) == 0)
    {
      v11 = kVVErrorDomain;
      v35 = NSLocalizedDescriptionKey;
      v36 = @"Low priority Speech Analyzer transcriber operation cancelled. The device is no longer connected to a power source.";
      v12 = &v36;
      v13 = &v35;
LABEL_18:
      v24 = [NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:1];
      v23 = [NSError errorWithDomain:v11 code:1038 userInfo:v24];

      if (!v23)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  v16 = [(VMSpeechAnalyzerTranscribeOperation *)self transcriptionControllerQueue];

  if (!v16)
  {
    v11 = kVVErrorDomain;
    v33 = NSLocalizedDescriptionKey;
    v34 = @"Speech Analyzer transcriber operation cancelled as transcriptionController queue invalid or not initialized.";
    v12 = &v34;
    v13 = &v33;
    goto LABEL_18;
  }

  v17 = dispatch_semaphore_create(0);
  [(VMSpeechAnalyzerTranscribeOperation *)self setSemaphore:v17];

  v18 = [(VMSpeechAnalyzerTranscribeOperation *)self dataURL];
  v19 = [(VMSpeechAnalyzerOperation *)self submitAudioToAnalyzer:v18 sampleRate:0 useFloat:16000.0];

  if (v19)
  {
    v20 = sub_100002894();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(VMSpeechAnalyzerTranscribeOperation *)self dataURL];
      *buf = 138412290;
      v40 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "VMSpeechAnalyzerTranscribeOperation: Submitted URL %@ for transcribing", buf, 0xCu);
    }

    v22 = [(VMSpeechAnalyzerTranscribeOperation *)self semaphore];
    dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
    v23 = 0;
  }

  else
  {
    v25 = kVVErrorDomain;
    v31 = NSLocalizedDescriptionKey;
    v32 = @"Audio was not submitted to speech analyzer successfully.";
    v22 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v23 = [NSError errorWithDomain:v25 code:1039 userInfo:v22];
  }

  [(VMSpeechAnalyzerTranscribeOperation *)self cancel];
  if (v23)
  {
LABEL_22:
    v26 = [(VMSpeechAnalyzerTranscribeOperation *)self transcribeOperationCompletion];

    if (v26)
    {
      [(VMSpeechAnalyzerTranscribeOperation *)self duration];
      v28 = v27;
      v29 = [(VMSpeechAnalyzerTranscribeOperation *)self progress];
      [v29 setCompletedUnitCount:v28];

      v30 = [(VMSpeechAnalyzerTranscribeOperation *)self transcribeOperationCompletion];
      (v30)[2](v30, 0, v23);
    }
  }

LABEL_24:
}

- (void)prepareTranscriptionString:(id)a3
{
  v3 = a3;
  v4 = [v3 contextualizedTranscriberMultisegmentResult];
  v5 = [v4 transcriptions];
  v6 = [v5 firstObject];

  v7 = +[NSMutableString string];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) text];
        [v7 appendString:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = sub_100002894();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      [v3 range];
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    v15 = CMTimeRangeCopyDescription(0, &range);
    LODWORD(range.start.value) = 138412546;
    *(&range.start.value + 4) = v15;
    LOWORD(range.start.flags) = 2112;
    *(&range.start.flags + 2) = v7;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "time range = %@, text = %@", &range, 0x16u);
  }
}

- (void)speechAnalyzer:(id)a3 didProduceTranscriberResult:(id)a4
{
  v5 = a4;
  v6 = [(VMSpeechAnalyzerTranscribeOperation *)self transcriptionControllerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100086350;
  v8[3] = &unk_1000ED450;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)speechAnalyzer:(id)a3 didStopTranscriptionWithError:(id)a4
{
  v5 = a4;
  v6 = [(VMSpeechAnalyzerTranscribeOperation *)self transcriptionControllerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000865B8;
  v8[3] = &unk_1000ED450;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)speechAnalyzerDidProduceAllTranscriberResults:(id)a3
{
  v4 = [(VMSpeechAnalyzerTranscribeOperation *)self transcriptionControllerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100086788;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  dispatch_async(v4, block);
}

@end