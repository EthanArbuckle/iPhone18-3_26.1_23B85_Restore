@interface VMSpeechRecognizerOperation
- (VMSpeechRecognizerOperation)init;
- (VMSpeechRecognizerOperation)initWithLocale:(id)locale;
- (VMSpeechRecognizerOperation)initWithSpeechRecognizer:(id)recognizer;
- (id)locale;
@end

@implementation VMSpeechRecognizerOperation

- (VMSpeechRecognizerOperation)init
{
  [(VMSpeechRecognizerOperation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMSpeechRecognizerOperation)initWithLocale:(id)locale
{
  localeCopy = locale;
  v5 = [[SFSpeechRecognizer alloc] initWithLocale:localeCopy];

  if (v5)
  {
    self = [(VMSpeechRecognizerOperation *)self initWithSpeechRecognizer:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VMSpeechRecognizerOperation)initWithSpeechRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v9.receiver = self;
  v9.super_class = VMSpeechRecognizerOperation;
  v6 = [(VMSpeechRecognizerOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_speechRecognizer, recognizer);
  }

  return v7;
}

- (id)locale
{
  speechRecognizer = [(VMSpeechRecognizerOperation *)self speechRecognizer];
  locale = [speechRecognizer locale];

  return locale;
}

@end