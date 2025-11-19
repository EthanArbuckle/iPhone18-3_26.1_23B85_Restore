@interface _LTSpeechRecognizer
- (_LTSpeechRecognizer)initWithModelURL:(id)a3 language:(id)a4 modelVersion:(id)a5 taskHint:(int64_t)a6;
- (void)_recognizedResult:(id)a3 error:(id)a4;
- (void)addSpeechAudioData:(id)a3;
- (void)cancelRecognition;
- (void)endAudio;
- (void)speechRecognizer:(id)a3 didFinishRecognitionWithError:(id)a4;
- (void)speechRecognizer:(id)a3 didRecognizeFinalResultPackage:(id)a4;
- (void)speechRecognizer:(id)a3 didRecognizePartialResult:(id)a4;
- (void)startRecognitionWithAutoStop:(BOOL)a3 enableStreamingSpeechTranslation:(BOOL)a4 resultHandler:(id)a5;
- (void)triggerServerSideEndPointer;
@end

@implementation _LTSpeechRecognizer

- (_LTSpeechRecognizer)initWithModelURL:(id)a3 language:(id)a4 modelVersion:(id)a5 taskHint:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v46.receiver = self;
  v46.super_class = _LTSpeechRecognizer;
  v14 = [(_LTSpeechRecognizer *)&v46 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_modelURL, a3);
    objc_storeStrong(&v15->_modelVersion, a5);
    objc_storeStrong(&v15->_language, a4);
    v15->_taskHint = a6;
    v16 = dispatch_queue_create("com.apple.translation.speech", 0);
    recognitionQueue = v15->_recognitionQueue;
    v15->_recognitionQueue = v16;

    v18 = [v11 URLByAppendingPathComponent:@"mini.json"];
    v19 = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
    v20 = [v19 lt_asrModels];
    v21 = [v12 localeIdentifier];
    v22 = [v20 objectForKey:v21];
    v23 = v22;
    v45 = v18;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = [v18 path];
    }

    v25 = v24;

    v26 = [objc_opt_class() supportedByQuasarConfig:v25];
    v27 = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
    v28 = [v27 lt_overrides];

    if ([v28 count])
    {
      v29 = v28;
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

      v36 = [v11 path];
      recognizer = [v36 stringByAppendingPathComponent:@"ncs"];

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

- (void)startRecognitionWithAutoStop:(BOOL)a3 enableStreamingSpeechTranslation:(BOOL)a4 resultHandler:(id)a5
{
  v8 = a5;
  objc_initWeak(&location, self);
  recognitionQueue = self->_recognitionQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __99___LTSpeechRecognizer_startRecognitionWithAutoStop_enableStreamingSpeechTranslation_resultHandler___block_invoke;
  v11[3] = &unk_2789B7BD0;
  objc_copyWeak(&v13, &location);
  v14 = a4;
  v12 = v8;
  v15 = a3;
  v10 = v8;
  dispatch_async(recognitionQueue, v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)addSpeechAudioData:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  recognitionQueue = self->_recognitionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42___LTSpeechRecognizer_addSpeechAudioData___block_invoke;
  block[3] = &unk_2789B5288;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
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

- (void)_recognizedResult:(id)a3 error:(id)a4
{
  v10 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_recognitionQueue);
  v7 = [(_LTSpeechRecognizer *)self recognitionHandler];

  if (v7)
  {
    v8 = [(_LTSpeechRecognizer *)self recognitionHandler];
    (v8)[2](v8, v10, v6);

    if (v6 || v10 && [v10 isFinal])
    {
      recognitionHandler = self->_recognitionHandler;
      self->_recognitionHandler = 0;
    }
  }
}

- (void)speechRecognizer:(id)a3 didFinishRecognitionWithError:(id)a4
{
  v5 = a4;
  objc_initWeak(&location, self);
  recognitionQueue = self->_recognitionQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70___LTSpeechRecognizer_speechRecognizer_didFinishRecognitionWithError___block_invoke;
  v8[3] = &unk_2789B6C78;
  objc_copyWeak(&v11, &location);
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(recognitionQueue, v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)speechRecognizer:(id)a3 didRecognizeFinalResultPackage:(id)a4
{
  v5 = a4;
  objc_initWeak(&location, self);
  recognitionQueue = self->_recognitionQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71___LTSpeechRecognizer_speechRecognizer_didRecognizeFinalResultPackage___block_invoke;
  v8[3] = &unk_2789B6C78;
  objc_copyWeak(&v11, &location);
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(recognitionQueue, v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)speechRecognizer:(id)a3 didRecognizePartialResult:(id)a4
{
  v5 = a4;
  objc_initWeak(&location, self);
  recognitionQueue = self->_recognitionQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66___LTSpeechRecognizer_speechRecognizer_didRecognizePartialResult___block_invoke;
  v8[3] = &unk_2789B6C78;
  objc_copyWeak(&v11, &location);
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(recognitionQueue, v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

@end