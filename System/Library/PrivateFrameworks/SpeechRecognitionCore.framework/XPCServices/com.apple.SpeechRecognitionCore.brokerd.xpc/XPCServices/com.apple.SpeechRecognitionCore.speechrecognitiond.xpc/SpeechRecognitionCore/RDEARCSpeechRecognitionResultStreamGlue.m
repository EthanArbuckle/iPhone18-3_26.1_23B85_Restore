@interface RDEARCSpeechRecognitionResultStreamGlue
- (RDEARCSpeechRecognitionResultStreamGlue)initWithStream:(RDEARCSpeechRecognitionResultStream *)a3;
- (void)dealloc;
- (void)speechRecognizer:(id)a3 didFinishRecognitionWithError:(id)a4;
- (void)speechRecognizer:(id)a3 didProcessAudioDuration:(double)a4;
- (void)speechRecognizer:(id)a3 didRecognizeFinalResultPackage:(id)a4;
- (void)speechRecognizer:(id)a3 didRecognizeFinalResults:(id)a4 tokenSausage:(id)a5 nBestChoices:(id)a6;
- (void)speechRecognizer:(id)a3 didRecognizePartialResult:(id)a4;
@end

@implementation RDEARCSpeechRecognitionResultStreamGlue

- (RDEARCSpeechRecognitionResultStreamGlue)initWithStream:(RDEARCSpeechRecognitionResultStream *)a3
{
  v7.receiver = self;
  v7.super_class = RDEARCSpeechRecognitionResultStreamGlue;
  result = [(RDEARCSpeechRecognitionResultStreamGlue *)&v7 init];
  if (result)
  {
    v5 = *&a3->ctx;
    v6 = *&a3->DidRecognizePartialResultTokens;
    *&result->_stream.DidRecognizeFinalResults = *&a3->DidRecognizeFinalResults;
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

- (void)speechRecognizer:(id)a3 didRecognizePartialResult:(id)a4
{
  if (self->_stream.DidRecognizePartialResultTokens)
  {
    ctx = self->_stream.ctx;
    DidRecognizePartialResultTokens = self->_stream.DidRecognizePartialResultTokens;
    v5 = [a4 tokens];

    DidRecognizePartialResultTokens(ctx, v5);
  }
}

- (void)speechRecognizer:(id)a3 didFinishRecognitionWithError:(id)a4
{
  DidFinishRecognitionWithError = self->_stream.DidFinishRecognitionWithError;
  if (DidFinishRecognitionWithError)
  {
    DidFinishRecognitionWithError(self->_stream.ctx, a4);
  }
}

- (void)speechRecognizer:(id)a3 didRecognizeFinalResults:(id)a4 tokenSausage:(id)a5 nBestChoices:(id)a6
{
  DidRecognizeFinalResults = self->_stream.DidRecognizeFinalResults;
  if (DidRecognizeFinalResults)
  {
    DidRecognizeFinalResults(self->_stream.ctx, a5, a6, a4);
  }
}

- (void)speechRecognizer:(id)a3 didRecognizeFinalResultPackage:(id)a4
{
  DidRecognizeFinalResults = self->_stream.DidRecognizeFinalResults;
  if (DidRecognizeFinalResults)
  {
    ctx = self->_stream.ctx;
    v6 = a4;
    v11 = [v6 recognition];
    v7 = [v11 tokenSausage];
    v8 = [v6 recognition];
    v9 = [v8 interpretationIndices];
    v10 = [v6 nBestResults];

    DidRecognizeFinalResults(ctx, v7, v9, v10);
  }
}

- (void)speechRecognizer:(id)a3 didProcessAudioDuration:(double)a4
{
  DidProcessAudioDuration = self->_stream.DidProcessAudioDuration;
  if (DidProcessAudioDuration)
  {
    DidProcessAudioDuration(self->_stream.ctx, a4);
  }
}

@end