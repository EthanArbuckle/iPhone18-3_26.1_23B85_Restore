@interface VMSpeechRecognitionRequestOperation
- (VMSpeechRecognitionRequestOperation)initWithSpeechRecognizer:(id)recognizer;
- (VMSpeechRecognitionRequestOperation)initWithSpeechRecognizer:(id)recognizer speechRecognitionRequest:(id)request;
@end

@implementation VMSpeechRecognitionRequestOperation

- (VMSpeechRecognitionRequestOperation)initWithSpeechRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v5 = objc_alloc_init(SFSpeechRecognitionRequest);
  v6 = [(VMSpeechRecognitionRequestOperation *)self initWithSpeechRecognizer:recognizerCopy speechRecognitionRequest:v5];

  return v6;
}

- (VMSpeechRecognitionRequestOperation)initWithSpeechRecognizer:(id)recognizer speechRecognitionRequest:(id)request
{
  requestCopy = request;
  v11.receiver = self;
  v11.super_class = VMSpeechRecognitionRequestOperation;
  v8 = [(VMSpeechRecognizerOperation *)&v11 initWithSpeechRecognizer:recognizer];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_speechRecognitionRequest, request);
    [(VMSpeechRecognitionRequest *)v9->_speechRecognitionRequest setTaskHint:1002];
  }

  return v9;
}

@end