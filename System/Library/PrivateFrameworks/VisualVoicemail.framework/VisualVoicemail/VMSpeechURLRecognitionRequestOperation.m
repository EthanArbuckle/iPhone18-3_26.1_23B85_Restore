@interface VMSpeechURLRecognitionRequestOperation
- (BOOL)forceOfflineRecognition;
- (VMSpeechURLRecognitionRequestOperation)initWithLocale:(id)a3;
- (VMSpeechURLRecognitionRequestOperation)initWithLocale:(id)a3 URL:(id)a4;
- (VMSpeechURLRecognitionRequestOperation)initWithSpeechRecognizer:(id)a3;
- (VMSpeechURLRecognitionRequestOperation)initWithSpeechRecognizer:(id)a3 speechRecognitionRequest:(id)a4;
- (VMSpeechURLRecognitionRequestOperation)initWithSpeechRecognizer:(id)a3 speechURLRecognitionRequest:(id)a4;
- (id)URL;
- (id)speechURLRecognitionRequest;
@end

@implementation VMSpeechURLRecognitionRequestOperation

- (VMSpeechURLRecognitionRequestOperation)initWithLocale:(id)a3
{
  [(VMSpeechURLRecognitionRequestOperation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMSpeechURLRecognitionRequestOperation)initWithLocale:(id)a3 URL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[SFSpeechRecognizer alloc] initWithLocale:v7];

  if (v8)
  {
    v9 = [[SFSpeechURLRecognitionRequest alloc] initWithURL:v6];
    self = [(VMSpeechURLRecognitionRequestOperation *)self initWithSpeechRecognizer:v8 speechURLRecognitionRequest:v9];

    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (VMSpeechURLRecognitionRequestOperation)initWithSpeechRecognizer:(id)a3
{
  [(VMSpeechURLRecognitionRequestOperation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMSpeechURLRecognitionRequestOperation)initWithSpeechRecognizer:(id)a3 speechRecognitionRequest:(id)a4
{
  [(VMSpeechURLRecognitionRequestOperation *)self doesNotRecognizeSelector:a2, a4];

  return 0;
}

- (VMSpeechURLRecognitionRequestOperation)initWithSpeechRecognizer:(id)a3 speechURLRecognitionRequest:(id)a4
{
  v5.receiver = self;
  v5.super_class = VMSpeechURLRecognitionRequestOperation;
  return [(VMSpeechRecognitionRequestOperation *)&v5 initWithSpeechRecognizer:a3 speechRecognitionRequest:a4];
}

- (id)speechURLRecognitionRequest
{
  v3 = [(VMSpeechRecognitionRequestOperation *)self speechRecognitionRequest];

  if (v3)
  {
    v4 = [(VMSpeechRecognitionRequestOperation *)self speechRecognitionRequest];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)forceOfflineRecognition
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(VMSpeechRecognitionRequestOperation *)v2 speechRecognitionRequest];
  v4 = [v3 _forceOfflineRecognition];

  objc_sync_exit(v2);
  return v4;
}

- (id)URL
{
  v2 = [(VMSpeechURLRecognitionRequestOperation *)self speechURLRecognitionRequest];
  v3 = [v2 URL];

  return v3;
}

@end