@interface VMSpeechURLRecognitionRequestOperation
- (BOOL)forceOfflineRecognition;
- (VMSpeechURLRecognitionRequestOperation)initWithLocale:(id)locale;
- (VMSpeechURLRecognitionRequestOperation)initWithLocale:(id)locale URL:(id)l;
- (VMSpeechURLRecognitionRequestOperation)initWithSpeechRecognizer:(id)recognizer;
- (VMSpeechURLRecognitionRequestOperation)initWithSpeechRecognizer:(id)recognizer speechRecognitionRequest:(id)request;
- (VMSpeechURLRecognitionRequestOperation)initWithSpeechRecognizer:(id)recognizer speechURLRecognitionRequest:(id)request;
- (id)URL;
- (id)speechURLRecognitionRequest;
@end

@implementation VMSpeechURLRecognitionRequestOperation

- (VMSpeechURLRecognitionRequestOperation)initWithLocale:(id)locale
{
  [(VMSpeechURLRecognitionRequestOperation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMSpeechURLRecognitionRequestOperation)initWithLocale:(id)locale URL:(id)l
{
  lCopy = l;
  localeCopy = locale;
  v8 = [[SFSpeechRecognizer alloc] initWithLocale:localeCopy];

  if (v8)
  {
    v9 = [[SFSpeechURLRecognitionRequest alloc] initWithURL:lCopy];
    self = [(VMSpeechURLRecognitionRequestOperation *)self initWithSpeechRecognizer:v8 speechURLRecognitionRequest:v9];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VMSpeechURLRecognitionRequestOperation)initWithSpeechRecognizer:(id)recognizer
{
  [(VMSpeechURLRecognitionRequestOperation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMSpeechURLRecognitionRequestOperation)initWithSpeechRecognizer:(id)recognizer speechRecognitionRequest:(id)request
{
  [(VMSpeechURLRecognitionRequestOperation *)self doesNotRecognizeSelector:a2, request];

  return 0;
}

- (VMSpeechURLRecognitionRequestOperation)initWithSpeechRecognizer:(id)recognizer speechURLRecognitionRequest:(id)request
{
  v5.receiver = self;
  v5.super_class = VMSpeechURLRecognitionRequestOperation;
  return [(VMSpeechRecognitionRequestOperation *)&v5 initWithSpeechRecognizer:recognizer speechRecognitionRequest:request];
}

- (id)speechURLRecognitionRequest
{
  speechRecognitionRequest = [(VMSpeechRecognitionRequestOperation *)self speechRecognitionRequest];

  if (speechRecognitionRequest)
  {
    speechRecognitionRequest2 = [(VMSpeechRecognitionRequestOperation *)self speechRecognitionRequest];
  }

  else
  {
    speechRecognitionRequest2 = 0;
  }

  return speechRecognitionRequest2;
}

- (BOOL)forceOfflineRecognition
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  speechRecognitionRequest = [(VMSpeechRecognitionRequestOperation *)selfCopy speechRecognitionRequest];
  _forceOfflineRecognition = [speechRecognitionRequest _forceOfflineRecognition];

  objc_sync_exit(selfCopy);
  return _forceOfflineRecognition;
}

- (id)URL
{
  speechURLRecognitionRequest = [(VMSpeechURLRecognitionRequestOperation *)self speechURLRecognitionRequest];
  v3 = [speechURLRecognitionRequest URL];

  return v3;
}

@end