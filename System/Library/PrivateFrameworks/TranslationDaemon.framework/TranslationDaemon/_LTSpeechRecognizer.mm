@interface _LTSpeechRecognizer
- (_LTSpeechRecognizer)initWithModelURL:(id)l language:(id)language modelVersion:(id)version taskHint:(int64_t)hint;
- (void)_recognizedResult:(id)result error:(id)error;
- (void)addSpeechAudioData:(id)data;
- (void)cancelRecognition;
- (void)endAudio;
- (void)speechRecognizer:(id)recognizer didFinishRecognitionWithError:(id)error;
- (void)speechRecognizer:(id)recognizer didRecognizeFinalResultPackage:(id)package;
- (void)speechRecognizer:(id)recognizer didRecognizePartialResult:(id)result;
- (void)startRecognitionWithAutoStop:(BOOL)stop enableStreamingSpeechTranslation:(BOOL)translation resultHandler:(id)handler;
- (void)triggerServerSideEndPointer;
@end

@implementation _LTSpeechRecognizer

- (_LTSpeechRecognizer)initWithModelURL:(id)l language:(id)language modelVersion:(id)version taskHint:(int64_t)hint
{
  lCopy = l;
  languageCopy = language;
  versionCopy = version;
  v46.receiver = self;
  v46.super_class = _LTSpeechRecognizer;
  v14 = [(_LTSpeechRecognizer *)&v46 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_modelURL, l);
    objc_storeStrong(&v15->_modelVersion, version);
    objc_storeStrong(&v15->_language, language);
    v15->_taskHint = hint;
    v16 = dispatch_queue_create("com.apple.translation.speech", 0);
    recognitionQueue = v15->_recognitionQueue;
    v15->_recognitionQueue = v16;

    v18 = [lCopy URLByAppendingPathComponent:@"mini.json"];
    lt_appGroupDefaults = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
    lt_asrModels = [lt_appGroupDefaults lt_asrModels];
    localeIdentifier = [languageCopy localeIdentifier];
    v22 = [lt_asrModels objectForKey:localeIdentifier];
    v23 = v22;
    v45 = v18;
    if (v22)
    {
      path = v22;
    }

    else
    {
      path = [v18 path];
    }

    v25 = path;

    v26 = [objc_opt_class() supportedByQuasarConfig:v25];
    lt_appGroupDefaults2 = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
    lt_overrides = [lt_appGroupDefaults2 lt_overrides];

    if ([lt_overrides count])
    {
      v29 = lt_overrides;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;

    v31 = _LTOSLogSpeech();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
    if (v26)
    {
      if (v32)
      {
        [_LTSpeechRecognizer initWithModelURL:v31 language:? modelVersion:? taskHint:?];
      }

      v33 = [objc_opt_class() instancesRespondToSelector:sel_initWithConfiguration_useQuasarFormatter_overrides_];
      v34 = objc_alloc(MEMORY[0x277D07278]);
      if (v33)
      {
        v35 = [v34 initWithConfiguration:v25 useQuasarFormatter:1 overrides:v30];
      }

      else
      {
        v35 = [v34 initWithConfiguration:v25 useQuasarFormatter:1];
      }

      recognizer = v15->_recognizer;
      v15->_recognizer = v35;
    }

    else
    {
      if (v32)
      {
        [_LTSpeechRecognizer initWithModelURL:v31 language:? modelVersion:? taskHint:?];
      }

      path2 = [lCopy path];
      recognizer = [path2 stringByAppendingPathComponent:@"ncs"];

      v38 = [recognizer stringByAppendingPathComponent:@"dispatch.voc"];
      v39 = [recognizer stringByAppendingPathComponent:@"lexicon.enh"];
      v40 = [recognizer stringByAppendingPathComponent:@"itn_s.enh"];
      v41 = [objc_alloc(MEMORY[0x277D07278]) initWithConfiguration:v25 overrides:v30 overrideConfigFiles:0 generalVoc:v38 lexiconEnh:v39 itnEnh:v40];
      v42 = v15->_recognizer;
      v15->_recognizer = v41;
    }

    v43 = v15;
  }

  return v15;
}

- (void)startRecognitionWithAutoStop:(BOOL)stop enableStreamingSpeechTranslation:(BOOL)translation resultHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  recognitionQueue = self->_recognitionQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __99___LTSpeechRecognizer_startRecognitionWithAutoStop_enableStreamingSpeechTranslation_resultHandler___block_invoke;
  v11[3] = &unk_2789B7BD0;
  objc_copyWeak(&v13, &location);
  translationCopy = translation;
  v12 = handlerCopy;
  stopCopy = stop;
  v10 = handlerCopy;
  dispatch_async(recognitionQueue, v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)addSpeechAudioData:(id)data
{
  dataCopy = data;
  objc_initWeak(&location, self);
  recognitionQueue = self->_recognitionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42___LTSpeechRecognizer_addSpeechAudioData___block_invoke;
  block[3] = &unk_2789B5288;
  objc_copyWeak(&v9, &location);
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(recognitionQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)endAudio
{
  objc_initWeak(&location, self);
  recognitionQueue = self->_recognitionQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31___LTSpeechRecognizer_endAudio__block_invoke;
  v4[3] = &unk_2789B53F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(recognitionQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)cancelRecognition
{
  objc_initWeak(&location, self);
  recognitionQueue = self->_recognitionQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40___LTSpeechRecognizer_cancelRecognition__block_invoke;
  v4[3] = &unk_2789B53F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(recognitionQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)triggerServerSideEndPointer
{
  objc_initWeak(&location, self);
  recognitionQueue = self->_recognitionQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50___LTSpeechRecognizer_triggerServerSideEndPointer__block_invoke;
  v4[3] = &unk_2789B53F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(recognitionQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_recognizedResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_recognitionQueue);
  recognitionHandler = [(_LTSpeechRecognizer *)self recognitionHandler];

  if (recognitionHandler)
  {
    recognitionHandler2 = [(_LTSpeechRecognizer *)self recognitionHandler];
    (recognitionHandler2)[2](recognitionHandler2, resultCopy, errorCopy);

    if (errorCopy || resultCopy && [resultCopy isFinal])
    {
      recognitionHandler = self->_recognitionHandler;
      self->_recognitionHandler = 0;
    }
  }
}

- (void)speechRecognizer:(id)recognizer didFinishRecognitionWithError:(id)error
{
  errorCopy = error;
  objc_initWeak(&location, self);
  recognitionQueue = self->_recognitionQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70___LTSpeechRecognizer_speechRecognizer_didFinishRecognitionWithError___block_invoke;
  v8[3] = &unk_2789B6C78;
  objc_copyWeak(&v11, &location);
  v9 = errorCopy;
  selfCopy = self;
  v7 = errorCopy;
  dispatch_async(recognitionQueue, v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)speechRecognizer:(id)recognizer didRecognizeFinalResultPackage:(id)package
{
  packageCopy = package;
  objc_initWeak(&location, self);
  recognitionQueue = self->_recognitionQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71___LTSpeechRecognizer_speechRecognizer_didRecognizeFinalResultPackage___block_invoke;
  v8[3] = &unk_2789B6C78;
  objc_copyWeak(&v11, &location);
  v9 = packageCopy;
  selfCopy = self;
  v7 = packageCopy;
  dispatch_async(recognitionQueue, v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)speechRecognizer:(id)recognizer didRecognizePartialResult:(id)result
{
  resultCopy = result;
  objc_initWeak(&location, self);
  recognitionQueue = self->_recognitionQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66___LTSpeechRecognizer_speechRecognizer_didRecognizePartialResult___block_invoke;
  v8[3] = &unk_2789B6C78;
  objc_copyWeak(&v11, &location);
  v9 = resultCopy;
  selfCopy = self;
  v7 = resultCopy;
  dispatch_async(recognitionQueue, v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

@end