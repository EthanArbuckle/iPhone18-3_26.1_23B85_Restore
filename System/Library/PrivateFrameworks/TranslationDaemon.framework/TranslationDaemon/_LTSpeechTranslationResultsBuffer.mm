@interface _LTSpeechTranslationResultsBuffer
- (_LTSpeechTranslationDelegate)delegate;
- (_LTSpeechTranslationResultsBuffer)init;
- (void)speechRecognitionResult:(id)a3;
- (void)stopBuffering;
- (void)translationDidFinishWithError:(id)a3;
- (void)translatorDidTranslate:(id)a3;
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
  v3 = [(_LTSpeechTranslationResultsBuffer *)self delegate];
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
    v6 = [(_LTSpeechTranslationResultsBuffer *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(_LTSpeechTranslationResultsBuffer *)self delegate];
      [v8 translatorDidTranslate:self->_translationResult];
    }
  }

  if (self->_didFinish)
  {
    v9 = [(_LTSpeechTranslationResultsBuffer *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(_LTSpeechTranslationResultsBuffer *)self delegate];
      [v11 translationDidFinishWithError:self->_error];
    }
  }

  self->_isBuffering = 0;
  self->_signalDelegateWhenFinished = 1;
}

- (void)speechRecognitionResult:(id)a3
{
  v4 = a3;
  if (self->_isBuffering)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    lastASRResults = self->_lastASRResults;
    v9 = v4;
    v6 = [v4 locale];
    [(NSMutableDictionary *)lastASRResults setObject:v9 forKeyedSubscript:v6];
  }

  else
  {
    v9 = v4;
    v7 = [(_LTSpeechTranslationResultsBuffer *)self delegate];
    v8 = objc_opt_respondsToSelector();

    v4 = v9;
    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }

    v6 = [(_LTSpeechTranslationResultsBuffer *)self delegate];
    [v6 speechRecognitionResult:v9];
  }

  v4 = v9;
LABEL_7:
}

- (void)translatorDidTranslate:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_isBuffering)
  {
    v5 = v4;
    translationResult = self->_translationResult;
    self->_translationResult = v5;
  }

  else
  {
    v7 = [(_LTSpeechTranslationResultsBuffer *)self delegate];
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

- (void)translationDidFinishWithError:(id)a3
{
  v5 = a3;
  if (self->_signalDelegateWhenFinished)
  {
    v6 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Offline translation finished, informing delegate that we are all done.", v13, 2u);
    }

    v7 = [(_LTSpeechTranslationResultsBuffer *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      isBuffering = self->_isBuffering;
      v10 = [(_LTSpeechTranslationResultsBuffer *)self delegate];
      v11 = v10;
      if (isBuffering)
      {
        v12 = 0;
      }

      else
      {
        v12 = v5;
      }

      [v10 translationDidFinishWithError:v12];
    }
  }

  else
  {
    self->_didFinish = 1;
    objc_storeStrong(&self->_error, a3);
  }
}

- (_LTSpeechTranslationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end