@interface _LTSpeechTranslationResultsBuffer
- (_LTSpeechTranslationDelegate)delegate;
- (_LTSpeechTranslationResultsBuffer)init;
- (void)speechRecognitionResult:(id)result;
- (void)stopBuffering;
- (void)translationDidFinishWithError:(id)error;
- (void)translatorDidTranslate:(id)translate;
@end

@implementation _LTSpeechTranslationResultsBuffer

- (_LTSpeechTranslationResultsBuffer)init
{
  v7.receiver = self;
  v7.super_class = _LTSpeechTranslationResultsBuffer;
  v2 = [(_LTSpeechTranslationResultsBuffer *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lastASRResults = v2->_lastASRResults;
    v2->_lastASRResults = v3;

    v2->_isBuffering = 1;
    *&v2->_didFinish = 0;
    v5 = v2;
  }

  return v2;
}

- (void)stopBuffering
{
  delegate = [(_LTSpeechTranslationResultsBuffer *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    lastASRResults = self->_lastASRResults;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50___LTSpeechTranslationResultsBuffer_stopBuffering__block_invoke;
    v12[3] = &unk_2789B7C70;
    v12[4] = self;
    [(NSMutableDictionary *)lastASRResults enumerateKeysAndObjectsUsingBlock:v12];
  }

  if (self->_translationResult)
  {
    delegate2 = [(_LTSpeechTranslationResultsBuffer *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(_LTSpeechTranslationResultsBuffer *)self delegate];
      [delegate3 translatorDidTranslate:self->_translationResult];
    }
  }

  if (self->_didFinish)
  {
    delegate4 = [(_LTSpeechTranslationResultsBuffer *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate5 = [(_LTSpeechTranslationResultsBuffer *)self delegate];
      [delegate5 translationDidFinishWithError:self->_error];
    }
  }

  self->_isBuffering = 0;
  self->_signalDelegateWhenFinished = 1;
}

- (void)speechRecognitionResult:(id)result
{
  resultCopy = result;
  if (self->_isBuffering)
  {
    if (!resultCopy)
    {
      goto LABEL_7;
    }

    lastASRResults = self->_lastASRResults;
    v9 = resultCopy;
    locale = [resultCopy locale];
    [(NSMutableDictionary *)lastASRResults setObject:v9 forKeyedSubscript:locale];
  }

  else
  {
    v9 = resultCopy;
    delegate = [(_LTSpeechTranslationResultsBuffer *)self delegate];
    v8 = objc_opt_respondsToSelector();

    resultCopy = v9;
    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }

    locale = [(_LTSpeechTranslationResultsBuffer *)self delegate];
    [locale speechRecognitionResult:v9];
  }

  resultCopy = v9;
LABEL_7:
}

- (void)translatorDidTranslate:(id)translate
{
  translateCopy = translate;
  v9 = translateCopy;
  if (self->_isBuffering)
  {
    v5 = translateCopy;
    translationResult = self->_translationResult;
    self->_translationResult = v5;
  }

  else
  {
    delegate = [(_LTSpeechTranslationResultsBuffer *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      goto LABEL_6;
    }

    translationResult = [(_LTSpeechTranslationResultsBuffer *)self delegate];
    [translationResult translatorDidTranslate:v9];
  }

LABEL_6:
}

- (void)translationDidFinishWithError:(id)error
{
  errorCopy = error;
  if (self->_signalDelegateWhenFinished)
  {
    v6 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Offline translation finished, informing delegate that we are all done.", v13, 2u);
    }

    delegate = [(_LTSpeechTranslationResultsBuffer *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      isBuffering = self->_isBuffering;
      delegate2 = [(_LTSpeechTranslationResultsBuffer *)self delegate];
      v11 = delegate2;
      if (isBuffering)
      {
        v12 = 0;
      }

      else
      {
        v12 = errorCopy;
      }

      [delegate2 translationDidFinishWithError:v12];
    }
  }

  else
  {
    self->_didFinish = 1;
    objc_storeStrong(&self->_error, error);
  }
}

- (_LTSpeechTranslationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end