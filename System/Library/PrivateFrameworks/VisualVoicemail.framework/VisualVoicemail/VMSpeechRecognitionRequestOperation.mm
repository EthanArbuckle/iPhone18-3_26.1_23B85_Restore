@interface VMSpeechRecognitionRequestOperation
- (VMSpeechRecognitionRequestOperation)initWithSpeechRecognizer:(id)a3;
- (VMSpeechRecognitionRequestOperation)initWithSpeechRecognizer:(id)a3 speechRecognitionRequest:(id)a4;
@end

@implementation VMSpeechRecognitionRequestOperation

- (VMSpeechRecognitionRequestOperation)initWithSpeechRecognizer:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SFSpeechRecognitionRequest);
  v6 = [(VMSpeechRecognitionRequestOperation *)self initWithSpeechRecognizer:v4 speechRecognitionRequest:v5];

  return v6;
}

- (VMSpeechRecognitionRequestOperation)initWithSpeechRecognizer:(id)a3 speechRecognitionRequest:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = VMSpeechRecognitionRequestOperation;
  v8 = [(VMSpeechRecognizerOperation *)&v11 initWithSpeechRecognizer:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_speechRecognitionRequest, a4);
    [(VMSpeechRecognitionRequest *)v9->_speechRecognitionRequest setTaskHint:1002];
  }

  return v9;
}

@end