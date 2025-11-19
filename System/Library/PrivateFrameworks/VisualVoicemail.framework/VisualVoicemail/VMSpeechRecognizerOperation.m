@interface VMSpeechRecognizerOperation
- (VMSpeechRecognizerOperation)init;
- (VMSpeechRecognizerOperation)initWithLocale:(id)a3;
- (VMSpeechRecognizerOperation)initWithSpeechRecognizer:(id)a3;
- (id)locale;
@end

@implementation VMSpeechRecognizerOperation

- (VMSpeechRecognizerOperation)init
{
  [(VMSpeechRecognizerOperation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMSpeechRecognizerOperation)initWithLocale:(id)a3
{
  v4 = a3;
  v5 = [[SFSpeechRecognizer alloc] initWithLocale:v4];

  if (v5)
  {
    self = [(VMSpeechRecognizerOperation *)self initWithSpeechRecognizer:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (VMSpeechRecognizerOperation)initWithSpeechRecognizer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VMSpeechRecognizerOperation;
  v6 = [(VMSpeechRecognizerOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_speechRecognizer, a3);
  }

  return v7;
}

- (id)locale
{
  v2 = [(VMSpeechRecognizerOperation *)self speechRecognizer];
  v3 = [v2 locale];

  return v3;
}

@end