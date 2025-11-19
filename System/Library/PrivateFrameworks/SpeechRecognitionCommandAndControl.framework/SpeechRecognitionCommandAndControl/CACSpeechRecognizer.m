@interface CACSpeechRecognizer
- (BOOL)isSpeechRecognizerOpen;
- (id)languageModel;
- (void)SRDRecognizer:(id)a3 didRecognize:(id)a4;
- (void)closeSpeechRecognizer;
- (void)dealloc;
- (void)openSpeechRecognizer;
- (void)setCommandInfo:(id)a3;
- (void)setLanguageModel:(id)a3;
- (void)setNumberMode:(BOOL)a3;
- (void)setRequestCloseMatchResults:(BOOL)a3;
- (void)setSpellingMode:(BOOL)a3;
- (void)startListening;
- (void)stopListening;
@end

@implementation CACSpeechRecognizer

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CACSpeechRecognizer;
  [(CACSpeechRecognizer *)&v2 dealloc];
}

- (id)languageModel
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_languageModel;
  objc_sync_exit(v2);

  return v3;
}

- (void)closeSpeechRecognizer
{
  obj = self;
  objc_sync_enter(obj);
  [(CACSpeechRecognizer *)obj stopListening];
  RXRelease(obj->_rxLanguageModel);
  obj->_rxLanguageModel = 0;
  [(CACSpeechRecognizer *)obj setLanguageModel:0];
  recognizer = obj->_recognizer;
  obj->_recognizer = 0;

  objc_sync_exit(obj);
}

- (BOOL)isSpeechRecognizerOpen
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_recognizer != 0;
  objc_sync_exit(v2);

  return v3;
}

- (void)setLanguageModel:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  languageModel = obj->_languageModel;
  obj->_languageModel = v4;

  objc_sync_exit(obj);
}

- (void)openSpeechRecognizer
{
  v3 = +[CACSpeechSystem speechSystem];
  v4 = [v3 recognitionSystemRef];

  if (v4)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__CACSpeechRecognizer_openSpeechRecognizer__block_invoke;
    block[3] = &unk_279CEBB88;
    block[4] = self;
    block[5] = v4;
    dispatch_sync(sRXAPIDispatchQueue, block);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __43__CACSpeechRecognizer_openSpeechRecognizer__block_invoke_2;
    v5[3] = &unk_279CEB2D0;
    v5[4] = self;
    dispatch_async(sRXAPIDispatchQueue, v5);
  }
}

uint64_t __43__CACSpeechRecognizer_openSpeechRecognizer__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 16) = [objc_alloc(MEMORY[0x277D65670]) initWithRecognitionSystem:*(a1 + 40) delegate:*(a1 + 32) flags:*(*(a1 + 32) + 48)];

  return MEMORY[0x2821F96F8]();
}

void *__43__CACSpeechRecognizer_openSpeechRecognizer__block_invoke_2(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    [result recognizer];
    [MEMORY[0x277CCABB0] numberWithInt:20];
    RXObjectSetProperty();
    *(*(a1 + 32) + 24) = [*(*(a1 + 32) + 32) createRXLanguageObjectRef];
    [*(*(a1 + 32) + 16) recognizer];
    RXObjectSetProperty();
    [*(*(a1 + 32) + 16) recognizer];
    RXObjectSetProperty();
    [*(*(a1 + 32) + 16) recognizer];
    RXObjectSetProperty();
    [*(*(a1 + 32) + 16) recognizer];

    return RXObjectSetProperty();
  }

  return result;
}

- (void)startListening
{
  v2 = self;
  objc_sync_enter(v2);
  if (![(CACSpeechRecognizer *)v2 isSpeechRecognizerOpen])
  {
    [(CACSpeechRecognizer *)v2 openSpeechRecognizer];
  }

  if (v2->_recognizer && !v2->_isListening)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__CACSpeechRecognizer_startListening__block_invoke;
    block[3] = &unk_279CEB2D0;
    block[4] = v2;
    dispatch_async(sRXAPIDispatchQueue, block);
    v2->_isListening = 1;
    v2->_waitingForResponse = 0;
  }

  objc_sync_exit(v2);
}

void *__37__CACSpeechRecognizer_startListening__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    [result recognizer];

    return RXObjectSetProperty();
  }

  return result;
}

- (void)stopListening
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_recognizer && v2->_isListening)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__CACSpeechRecognizer_stopListening__block_invoke;
    block[3] = &unk_279CEB2D0;
    block[4] = v2;
    dispatch_async(sRXAPIDispatchQueue, block);
    v2->_waitingForResponse = 1;
    v2->_isListening = 0;
  }

  objc_sync_exit(v2);
}

void *__36__CACSpeechRecognizer_stopListening__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    [result recognizer];

    return RXObjectSetProperty();
  }

  return result;
}

- (void)setCommandInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_recognizer)
  {
    v6 = sRXAPIDispatchQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__CACSpeechRecognizer_setCommandInfo___block_invoke;
    v7[3] = &unk_279CEB4C0;
    v7[4] = v5;
    v8 = v4;
    dispatch_async(v6, v7);
  }

  objc_sync_exit(v5);
}

void *__38__CACSpeechRecognizer_setCommandInfo___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    [result recognizer];

    return RXObjectSetProperty();
  }

  return result;
}

- (void)setRequestCloseMatchResults:(BOOL)a3
{
  if (self->_requestCloseMatchResults != a3)
  {
    block[5] = v3;
    block[6] = v4;
    self->_requestCloseMatchResults = a3;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__CACSpeechRecognizer_setRequestCloseMatchResults___block_invoke;
    block[3] = &unk_279CEB2D0;
    block[4] = self;
    dispatch_async(sRXAPIDispatchQueue, block);
  }
}

void *__51__CACSpeechRecognizer_setRequestCloseMatchResults___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    [result recognizer];

    return RXObjectSetProperty();
  }

  return result;
}

- (void)setSpellingMode:(BOOL)a3
{
  if (self->_spellingMode != a3)
  {
    block[5] = v3;
    block[6] = v4;
    self->_spellingMode = a3;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__CACSpeechRecognizer_setSpellingMode___block_invoke;
    block[3] = &unk_279CEB2D0;
    block[4] = self;
    dispatch_async(sRXAPIDispatchQueue, block);
  }
}

void *__39__CACSpeechRecognizer_setSpellingMode___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    [result recognizer];

    return RXObjectSetProperty();
  }

  return result;
}

- (void)setNumberMode:(BOOL)a3
{
  if (self->_numberMode != a3)
  {
    block[5] = v3;
    block[6] = v4;
    self->_numberMode = a3;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__CACSpeechRecognizer_setNumberMode___block_invoke;
    block[3] = &unk_279CEB2D0;
    block[4] = self;
    dispatch_async(sRXAPIDispatchQueue, block);
  }
}

void *__37__CACSpeechRecognizer_setNumberMode___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    [result recognizer];

    return RXObjectSetProperty();
  }

  return result;
}

- (void)SRDRecognizer:(id)a3 didRecognize:(id)a4
{
  v5 = a4;
  v6 = [v5 languageObject];
  if (v6)
  {
    v7 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    v8 = [(CACSpeechRecognizer *)self name];
    [v7 registerSignPostBeginProcessingForSpeechRecognizer:self message:v8];

    CFRetain(v6);
  }

  v9 = sRXAPIDispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__CACSpeechRecognizer_SRDRecognizer_didRecognize___block_invoke;
  block[3] = &unk_279CEB958;
  block[4] = self;
  v12 = v5;
  v13 = v6;
  v10 = v5;
  dispatch_async(v9, block);
  +[CACSpeechSystem stopPreventingDisplayDimming];
}

void __50__CACSpeechRecognizer_SRDRecognizer_didRecognize___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 40));
  [WeakRetained speechRecognizer:a1[4] didRecognize:a1[5]];

  v3 = a1[6];

  RXRelease(v3);
}

@end