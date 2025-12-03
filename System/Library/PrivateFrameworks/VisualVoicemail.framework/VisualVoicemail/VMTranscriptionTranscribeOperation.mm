@interface VMTranscriptionTranscribeOperation
- (BOOL)processOnServer;
- (VMTranscriptionTranscribeOperation)initWithSpeechRecognizer:(id)recognizer speechURLRecognitionRequest:(id)request;
- (void)cancel;
- (void)main;
- (void)setProcessOnServer:(BOOL)server;
- (void)speechRecognitionTask:(id)task didFinishRecognition:(id)recognition;
- (void)speechRecognitionTask:(id)task didFinishSuccessfully:(BOOL)successfully;
- (void)speechRecognitionTask:(id)task didProcessAudioDuration:(double)duration;
- (void)speechRecognitionTaskWasCancelled:(id)cancelled;
@end

@implementation VMTranscriptionTranscribeOperation

- (VMTranscriptionTranscribeOperation)initWithSpeechRecognizer:(id)recognizer speechURLRecognitionRequest:(id)request
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = VMTranscriptionTranscribeOperation;
  v7 = [(VMSpeechURLRecognitionRequestOperation *)&v10 initWithSpeechRecognizer:recognizer speechURLRecognitionRequest:requestCopy];
  v8 = v7;
  if (v7)
  {
    v7->_timeout = 60.0;
    [requestCopy _setForceOfflineRecognition:1];
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cancelled transcribe operation %@.", buf, 0xCu);
  }
}

- (void)main
{
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VMSpeechURLRecognitionRequestOperation *)self URL];
    queuePriority = [(VMTranscriptionTranscribeOperation *)self queuePriority];
    v6 = +[MFPowerController sharedInstance];
    isPluggedIn = [v6 isPluggedIn];
    v8 = @" not";
    *buf = 138413058;
    *&buf[4] = self;
    *&buf[12] = 2112;
    if (isPluggedIn)
    {
      v8 = &stru_1000F0098;
    }

    *&buf[14] = v4;
    v31 = 2048;
    v32 = queuePriority;
    v33 = 2112;
    v34 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting transcription operation %@ for %@. Priority is %ld and device is %@ charging.", buf, 0x2Au);
  }

  transcribeOperationBeginCallback = [(VMTranscriptionTranscribeOperation *)self transcribeOperationBeginCallback];

  if (transcribeOperationBeginCallback)
  {
    transcribeOperationBeginCallback2 = [(VMTranscriptionTranscribeOperation *)self transcribeOperationBeginCallback];
    transcribeOperationBeginCallback2[2]();
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

      speechRecognizer = [(VMSpeechRecognizerOperation *)self speechRecognizer];
      speechRecognitionRequest = [(VMSpeechRecognitionRequestOperation *)self speechRecognitionRequest];
      transcribeOperationCompletion2 = [speechRecognizer recognitionTaskWithRequest:speechRecognitionRequest delegate:self];

      v23 = vm_vmd_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        speechRecognitionRequest2 = [(VMSpeechRecognitionRequestOperation *)self speechRecognitionRequest];
        *buf = 138412546;
        *&buf[4] = transcribeOperationCompletion2;
        *&buf[12] = 2112;
        *&buf[14] = speechRecognitionRequest2;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Created speech recognition task %@ with speech recognition request %@.", buf, 0x16u);
      }

      semaphore = [(VMTranscriptionTranscribeOperation *)self semaphore];
      dispatch_semaphore_wait(semaphore, 0xFFFFFFFFFFFFFFFFLL);

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
    transcribeOperationCompletion = [(VMTranscriptionTranscribeOperation *)self transcribeOperationCompletion];

    if (transcribeOperationCompletion)
    {
      transcribeOperationCompletion2 = [(VMTranscriptionTranscribeOperation *)self transcribeOperationCompletion];
      (transcribeOperationCompletion2)[2](transcribeOperationCompletion2, 0, v15);
LABEL_17:
    }
  }
}

- (BOOL)processOnServer
{
  speechURLRecognitionRequest = [(VMSpeechURLRecognitionRequestOperation *)self speechURLRecognitionRequest];
  _forceOfflineRecognition = [speechURLRecognitionRequest _forceOfflineRecognition];

  return _forceOfflineRecognition ^ 1;
}

- (void)setProcessOnServer:(BOOL)server
{
  serverCopy = server;
  speechURLRecognitionRequest = [(VMSpeechURLRecognitionRequestOperation *)self speechURLRecognitionRequest];
  [speechURLRecognitionRequest _setForceOfflineRecognition:!serverCopy];
}

- (void)speechRecognitionTaskWasCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  transcribeOperationCompletion = [(VMTranscriptionTranscribeOperation *)self transcribeOperationCompletion];

  if (transcribeOperationCompletion)
  {
    v6 = vm_vmd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = cancelledCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Speech task was cancelled %@ for operation, executing result block.", &v10, 0xCu);
    }

    transcribeOperationCompletion2 = [(VMTranscriptionTranscribeOperation *)self transcribeOperationCompletion];
    error = [cancelledCopy error];
    (transcribeOperationCompletion2)[2](transcribeOperationCompletion2, 0, error);
  }

  semaphore = [(VMTranscriptionTranscribeOperation *)self semaphore];
  dispatch_semaphore_signal(semaphore);
}

- (void)speechRecognitionTask:(id)task didFinishRecognition:(id)recognition
{
  recognitionCopy = recognition;
  if ([recognitionCopy isFinal])
  {
    v5 = [VMVoicemailTranscript alloc];
    bestTranscription = [recognitionCopy bestTranscription];
    v7 = [v5 initWithTranscription:bestTranscription];
    [(VMTranscriptionTranscribeOperation *)self setTranscript:v7];

    semaphore = [(VMTranscriptionTranscribeOperation *)self semaphore];
    dispatch_semaphore_signal(semaphore);
  }
}

- (void)speechRecognitionTask:(id)task didFinishSuccessfully:(BOOL)successfully
{
  taskCopy = task;
  [(VMTranscriptionTranscribeOperation *)self duration];
  v7 = v6;
  progress = [(VMTranscriptionTranscribeOperation *)self progress];
  [progress setCompletedUnitCount:v7];

  transcribeOperationCompletion = [(VMTranscriptionTranscribeOperation *)self transcribeOperationCompletion];

  if (transcribeOperationCompletion)
  {
    v10 = vm_vmd_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Finished transcribe operation %@, executing result block.", &v15, 0xCu);
    }

    transcribeOperationCompletion2 = [(VMTranscriptionTranscribeOperation *)self transcribeOperationCompletion];
    transcript = [(VMTranscriptionTranscribeOperation *)self transcript];
    error = [taskCopy error];
    (transcribeOperationCompletion2)[2](transcribeOperationCompletion2, transcript, error);
  }

  semaphore = [(VMTranscriptionTranscribeOperation *)self semaphore];
  dispatch_semaphore_signal(semaphore);
}

- (void)speechRecognitionTask:(id)task didProcessAudioDuration:(double)duration
{
  durationCopy = duration;
  progress = [(VMTranscriptionTranscribeOperation *)self progress];
  [progress setCompletedUnitCount:durationCopy];
}

@end