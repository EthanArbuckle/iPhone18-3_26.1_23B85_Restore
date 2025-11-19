@interface VMTranscriptionTranscribeOperation
- (BOOL)processOnServer;
- (VMTranscriptionTranscribeOperation)initWithSpeechRecognizer:(id)a3 speechURLRecognitionRequest:(id)a4;
- (void)cancel;
- (void)main;
- (void)setProcessOnServer:(BOOL)a3;
- (void)speechRecognitionTask:(id)a3 didFinishRecognition:(id)a4;
- (void)speechRecognitionTask:(id)a3 didFinishSuccessfully:(BOOL)a4;
- (void)speechRecognitionTask:(id)a3 didProcessAudioDuration:(double)a4;
- (void)speechRecognitionTaskWasCancelled:(id)a3;
@end

@implementation VMTranscriptionTranscribeOperation

- (VMTranscriptionTranscribeOperation)initWithSpeechRecognizer:(id)a3 speechURLRecognitionRequest:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = VMTranscriptionTranscribeOperation;
  v7 = [(VMSpeechURLRecognitionRequestOperation *)&v10 initWithSpeechRecognizer:a3 speechURLRecognitionRequest:v6];
  v8 = v7;
  if (v7)
  {
    v7->_timeout = 60.0;
    [v6 _setForceOfflineRecognition:1];
  }

  return v8;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = VMTranscriptionTranscribeOperation;
  [(VMTranscriptionTranscribeOperation *)&v4 cancel];
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cancelled transcribe operation %@.", buf, 0xCu);
  }
}

- (void)main
{
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VMSpeechURLRecognitionRequestOperation *)self URL];
    v5 = [(VMTranscriptionTranscribeOperation *)self queuePriority];
    v6 = +[MFPowerController sharedInstance];
    v7 = [v6 isPluggedIn];
    v8 = @" not";
    *buf = 138413058;
    *&buf[4] = self;
    *&buf[12] = 2112;
    if (v7)
    {
      v8 = &stru_1000F0098;
    }

    *&buf[14] = v4;
    v31 = 2048;
    v32 = v5;
    v33 = 2112;
    v34 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting transcription operation %@ for %@. Priority is %ld and device is %@ charging.", buf, 0x2Au);
  }

  v9 = [(VMTranscriptionTranscribeOperation *)self transcribeOperationBeginCallback];

  if (v9)
  {
    v10 = [(VMTranscriptionTranscribeOperation *)self transcribeOperationBeginCallback];
    v10[2]();
  }

  if ([(VMTranscriptionTranscribeOperation *)self isCancelled])
  {
    v11 = kVVErrorDomain;
    v28 = NSLocalizedDescriptionKey;
    v29 = @"Transcription operation was cancelled.";
    v12 = &v29;
    v13 = &v28;
  }

  else
  {
    if (-[VMTranscriptionTranscribeOperation queuePriority](self, "queuePriority") != -4 || (+[MFPowerController sharedInstance](MFPowerController, "sharedInstance"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 isPluggedIn], v18, (v19 & 1) != 0))
    {
      v20 = dispatch_semaphore_create(0);
      [(VMTranscriptionTranscribeOperation *)self setSemaphore:v20];

      v21 = [(VMSpeechRecognizerOperation *)self speechRecognizer];
      v22 = [(VMSpeechRecognitionRequestOperation *)self speechRecognitionRequest];
      v17 = [v21 recognitionTaskWithRequest:v22 delegate:self];

      v23 = vm_vmd_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [(VMSpeechRecognitionRequestOperation *)self speechRecognitionRequest];
        *buf = 138412546;
        *&buf[4] = v17;
        *&buf[12] = 2112;
        *&buf[14] = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Created speech recognition task %@ with speech recognition request %@.", buf, 0x16u);
      }

      v25 = [(VMTranscriptionTranscribeOperation *)self semaphore];
      dispatch_semaphore_wait(v25, 0xFFFFFFFFFFFFFFFFLL);

      v15 = 0;
      goto LABEL_17;
    }

    v11 = kVVErrorDomain;
    v26 = NSLocalizedDescriptionKey;
    v27 = @"Low priority transcription operation cancelled. The device is no longer connected to a power source.";
    v12 = &v27;
    v13 = &v26;
  }

  v14 = [NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:1, v26, v27, v28, v29, *buf];
  v15 = [NSError errorWithDomain:v11 code:1038 userInfo:v14];

  if (v15)
  {
    v16 = [(VMTranscriptionTranscribeOperation *)self transcribeOperationCompletion];

    if (v16)
    {
      v17 = [(VMTranscriptionTranscribeOperation *)self transcribeOperationCompletion];
      (v17)[2](v17, 0, v15);
LABEL_17:
    }
  }
}

- (BOOL)processOnServer
{
  v2 = [(VMSpeechURLRecognitionRequestOperation *)self speechURLRecognitionRequest];
  v3 = [v2 _forceOfflineRecognition];

  return v3 ^ 1;
}

- (void)setProcessOnServer:(BOOL)a3
{
  v3 = a3;
  v4 = [(VMSpeechURLRecognitionRequestOperation *)self speechURLRecognitionRequest];
  [v4 _setForceOfflineRecognition:!v3];
}

- (void)speechRecognitionTaskWasCancelled:(id)a3
{
  v4 = a3;
  v5 = [(VMTranscriptionTranscribeOperation *)self transcribeOperationCompletion];

  if (v5)
  {
    v6 = vm_vmd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Speech task was cancelled %@ for operation, executing result block.", &v10, 0xCu);
    }

    v7 = [(VMTranscriptionTranscribeOperation *)self transcribeOperationCompletion];
    v8 = [v4 error];
    (v7)[2](v7, 0, v8);
  }

  v9 = [(VMTranscriptionTranscribeOperation *)self semaphore];
  dispatch_semaphore_signal(v9);
}

- (void)speechRecognitionTask:(id)a3 didFinishRecognition:(id)a4
{
  v9 = a4;
  if ([v9 isFinal])
  {
    v5 = [VMVoicemailTranscript alloc];
    v6 = [v9 bestTranscription];
    v7 = [v5 initWithTranscription:v6];
    [(VMTranscriptionTranscribeOperation *)self setTranscript:v7];

    v8 = [(VMTranscriptionTranscribeOperation *)self semaphore];
    dispatch_semaphore_signal(v8);
  }
}

- (void)speechRecognitionTask:(id)a3 didFinishSuccessfully:(BOOL)a4
{
  v5 = a3;
  [(VMTranscriptionTranscribeOperation *)self duration];
  v7 = v6;
  v8 = [(VMTranscriptionTranscribeOperation *)self progress];
  [v8 setCompletedUnitCount:v7];

  v9 = [(VMTranscriptionTranscribeOperation *)self transcribeOperationCompletion];

  if (v9)
  {
    v10 = vm_vmd_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Finished transcribe operation %@, executing result block.", &v15, 0xCu);
    }

    v11 = [(VMTranscriptionTranscribeOperation *)self transcribeOperationCompletion];
    v12 = [(VMTranscriptionTranscribeOperation *)self transcript];
    v13 = [v5 error];
    (v11)[2](v11, v12, v13);
  }

  v14 = [(VMTranscriptionTranscribeOperation *)self semaphore];
  dispatch_semaphore_signal(v14);
}

- (void)speechRecognitionTask:(id)a3 didProcessAudioDuration:(double)a4
{
  v4 = a4;
  v5 = [(VMTranscriptionTranscribeOperation *)self progress];
  [v5 setCompletedUnitCount:v4];
}

@end