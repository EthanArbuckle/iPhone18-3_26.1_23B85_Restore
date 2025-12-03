@interface RDEARCSpeechRecognitionResultStreamGlue
- (RDEARCSpeechRecognitionResultStreamGlue)initWithStream:(RDEARCSpeechRecognitionResultStream *)stream;
- (void)dealloc;
- (void)speechRecognizer:(id)recognizer didFinishRecognitionWithError:(id)error;
- (void)speechRecognizer:(id)recognizer didProcessAudioDuration:(double)duration;
- (void)speechRecognizer:(id)recognizer didRecognizeFinalResultPackage:(id)package;
- (void)speechRecognizer:(id)recognizer didRecognizeFinalResults:(id)results tokenSausage:(id)sausage nBestChoices:(id)choices;
- (void)speechRecognizer:(id)recognizer didRecognizePartialResult:(id)result;
@end

@implementation RDEARCSpeechRecognitionResultStreamGlue

- (RDEARCSpeechRecognitionResultStreamGlue)initWithStream:(RDEARCSpeechRecognitionResultStream *)stream
{
  v7.receiver = self;
  v7.super_class = RDEARCSpeechRecognitionResultStreamGlue;
  result = [(RDEARCSpeechRecognitionResultStreamGlue *)&v7 init];
  if (result)
  {
    v5 = *&stream->ctx;
    v6 = *&stream->DidRecognizePartialResultTokens;
    *&result->_stream.DidRecognizeFinalResults = *&stream->DidRecognizeFinalResults;
    *&result->_stream.DidRecognizePartialResultTokens = v6;
    *&result->_stream.ctx = v5;
  }

  return result;
}

- (void)dealloc
{
  DisposeContext = self->_stream.DisposeContext;
  if (DisposeContext)
  {
    DisposeContext(self->_stream.ctx, a2);
  }

  v4.receiver = self;
  v4.super_class = RDEARCSpeechRecognitionResultStreamGlue;
  [(RDEARCSpeechRecognitionResultStreamGlue *)&v4 dealloc];
}

- (void)speechRecognizer:(id)recognizer didRecognizePartialResult:(id)result
{
  if (self->_stream.DidRecognizePartialResultTokens)
  {
    ctx = self->_stream.ctx;
    DidRecognizePartialResultTokens = self->_stream.DidRecognizePartialResultTokens;
    tokens = [result tokens];

    DidRecognizePartialResultTokens(ctx, tokens);
  }
}

- (void)speechRecognizer:(id)recognizer didFinishRecognitionWithError:(id)error
{
  DidFinishRecognitionWithError = self->_stream.DidFinishRecognitionWithError;
  if (DidFinishRecognitionWithError)
  {
    DidFinishRecognitionWithError(self->_stream.ctx, error);
  }
}

- (void)speechRecognizer:(id)recognizer didRecognizeFinalResults:(id)results tokenSausage:(id)sausage nBestChoices:(id)choices
{
  DidRecognizeFinalResults = self->_stream.DidRecognizeFinalResults;
  if (DidRecognizeFinalResults)
  {
    DidRecognizeFinalResults(self->_stream.ctx, sausage, choices, results);
  }
}

- (void)speechRecognizer:(id)recognizer didRecognizeFinalResultPackage:(id)package
{
  DidRecognizeFinalResults = self->_stream.DidRecognizeFinalResults;
  if (DidRecognizeFinalResults)
  {
    ctx = self->_stream.ctx;
    packageCopy = package;
    recognition = [packageCopy recognition];
    tokenSausage = [recognition tokenSausage];
    recognition2 = [packageCopy recognition];
    interpretationIndices = [recognition2 interpretationIndices];
    nBestResults = [packageCopy nBestResults];

    DidRecognizeFinalResults(ctx, tokenSausage, interpretationIndices, nBestResults);
  }
}

- (void)speechRecognizer:(id)recognizer didProcessAudioDuration:(double)duration
{
  DidProcessAudioDuration = self->_stream.DidProcessAudioDuration;
  if (DidProcessAudioDuration)
  {
    DidProcessAudioDuration(self->_stream.ctx, duration);
  }
}

@end