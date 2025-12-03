@interface CACSpeechRecognizer
- (BOOL)isSpeechRecognizerOpen;
- (id)languageModel;
- (void)SRDRecognizer:(id)recognizer didRecognize:(id)recognize;
- (void)closeSpeechRecognizer;
- (void)dealloc;
- (void)openSpeechRecognizer;
- (void)setCommandInfo:(id)info;
- (void)setLanguageModel:(id)model;
- (void)setNumberMode:(BOOL)mode;
- (void)setRequestCloseMatchResults:(BOOL)results;
- (void)setSpellingMode:(BOOL)mode;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_languageModel;
  objc_sync_exit(selfCopy);

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_recognizer != 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setLanguageModel:(id)model
{
  modelCopy = model;
  obj = self;
  objc_sync_enter(obj);
  languageModel = obj->_languageModel;
  obj->_languageModel = modelCopy;

  objc_sync_exit(obj);
}

- (void)openSpeechRecognizer
{
  v3 = +[CACSpeechSystem speechSystem];
  recognitionSystemRef = [v3 recognitionSystemRef];

  if (recognitionSystemRef)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__CACSpeechRecognizer_openSpeechRecognizer__block_invoke;
    block[3] = &unk_279CEBB88;
    block[4] = self;
    block[5] = recognitionSystemRef;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(CACSpeechRecognizer *)selfCopy isSpeechRecognizerOpen])
  {
    [(CACSpeechRecognizer *)selfCopy openSpeechRecognizer];
  }

  if (selfCopy->_recognizer && !selfCopy->_isListening)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__CACSpeechRecognizer_startListening__block_invoke;
    block[3] = &unk_279CEB2D0;
    block[4] = selfCopy;
    dispatch_async(sRXAPIDispatchQueue, block);
    selfCopy->_isListening = 1;
    selfCopy->_waitingForResponse = 0;
  }

  objc_sync_exit(selfCopy);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_recognizer && selfCopy->_isListening)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__CACSpeechRecognizer_stopListening__block_invoke;
    block[3] = &unk_279CEB2D0;
    block[4] = selfCopy;
    dispatch_async(sRXAPIDispatchQueue, block);
    selfCopy->_waitingForResponse = 1;
    selfCopy->_isListening = 0;
  }

  objc_sync_exit(selfCopy);
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

- (void)setCommandInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_recognizer)
  {
    v6 = sRXAPIDispatchQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__CACSpeechRecognizer_setCommandInfo___block_invoke;
    v7[3] = &unk_279CEB4C0;
    v7[4] = selfCopy;
    v8 = infoCopy;
    dispatch_async(v6, v7);
  }

  objc_sync_exit(selfCopy);
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

- (void)setRequestCloseMatchResults:(BOOL)results
{
  if (self->_requestCloseMatchResults != results)
  {
    block[5] = v3;
    block[6] = v4;
    self->_requestCloseMatchResults = results;
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

- (void)setSpellingMode:(BOOL)mode
{
  if (self->_spellingMode != mode)
  {
    block[5] = v3;
    block[6] = v4;
    self->_spellingMode = mode;
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

- (void)setNumberMode:(BOOL)mode
{
  if (self->_numberMode != mode)
  {
    block[5] = v3;
    block[6] = v4;
    self->_numberMode = mode;
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

- (void)SRDRecognizer:(id)recognizer didRecognize:(id)recognize
{
  recognizeCopy = recognize;
  languageObject = [recognizeCopy languageObject];
  if (languageObject)
  {
    v7 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    name = [(CACSpeechRecognizer *)self name];
    [v7 registerSignPostBeginProcessingForSpeechRecognizer:self message:name];

    CFRetain(languageObject);
  }

  v9 = sRXAPIDispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__CACSpeechRecognizer_SRDRecognizer_didRecognize___block_invoke;
  block[3] = &unk_279CEB958;
  block[4] = self;
  v12 = recognizeCopy;
  v13 = languageObject;
  v10 = recognizeCopy;
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