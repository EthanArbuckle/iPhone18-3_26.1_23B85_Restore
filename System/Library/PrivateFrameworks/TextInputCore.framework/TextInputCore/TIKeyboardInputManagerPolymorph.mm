@interface TIKeyboardInputManagerPolymorph
- (void)dealloc;
- (void)handleKeyboardInput:(id)input keyboardState:(id)state completionHandler:(id)handler;
- (void)handleKeyboardState:(id)state withInputEvent:(id)event;
- (void)setInputManagerForInputMode:(id)mode withKeyboardState:(id)state class:(Class)class;
- (void)setInputManagerForKeyboardState:(id)state withInputEvent:(id)event;
- (void)skipHitTestForTouchEvent:(id)event keyboardState:(id)state;
- (void)syncToKeyboardState:(id)state completionHandler:(id)handler;
@end

@implementation TIKeyboardInputManagerPolymorph

- (void)syncToKeyboardState:(id)state completionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__TIKeyboardInputManagerPolymorph_syncToKeyboardState_completionHandler___block_invoke;
  v9[3] = &unk_27872F5E8;
  v10 = handlerCopy;
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerPolymorph;
  v7 = handlerCopy;
  [(TIKeyboardInputManagerWrapper *)&v8 syncToKeyboardState:state completionHandler:v9];
}

void __73__TIKeyboardInputManagerPolymorph_syncToKeyboardState_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = +[TITypingAssertion sharedTypingAssertion];
  [v1 touchWithReason:0];
}

- (void)skipHitTestForTouchEvent:(id)event keyboardState:(id)state
{
  eventCopy = event;
  stateCopy = state;
  kdebug_trace();
  v8 = kac_get_log();
  v9 = os_signpost_id_make_with_pointer(v8, (self ^ 0x66));
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "kbdManager.polymorph.skipHitTest", &unk_22CCA4FEF, buf, 2u);
    }
  }

  pathIndex = [eventCopy pathIndex];
  if (eventCopy && (v12 = pathIndex, [stateCopy layoutState], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "userInterfaceIdiom"), v13, v14 == 1))
  {
    stage = [eventCopy stage];
    if (stage != 5)
    {
      if (stage == 4)
      {
        v16 = +[TITypingAssertion sharedTypingAssertion];
        [v16 restTouchStartWithPathIndex:v12];
      }

      else
      {
        v23.receiver = self;
        v23.super_class = TIKeyboardInputManagerPolymorph;
        [(TIKeyboardInputManagerWrapper *)&v23 skipHitTestForTouchEvent:eventCopy keyboardState:stateCopy];
      }
    }

    stage2 = [eventCopy stage];
    if (stage2 == 5 || !stage2)
    {
      v19 = +[TITypingAssertion sharedTypingAssertion];
      [v19 restTouchEndWithPathIndex:v12];
    }
  }

  else
  {
    v17 = +[TITypingAssertion sharedTypingAssertion];
    [v17 restResetTouches];

    v23.receiver = self;
    v23.super_class = TIKeyboardInputManagerPolymorph;
    [(TIKeyboardInputManagerWrapper *)&v23 skipHitTestForTouchEvent:eventCopy keyboardState:stateCopy];
  }

  kdebug_trace();
  v20 = kac_get_log();
  v21 = os_signpost_id_make_with_pointer(v20, (self ^ 0x66));
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v22 = v21;
    if (os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v20, OS_SIGNPOST_INTERVAL_END, v22, "kbdManager.polymorph.skipHitTest", &unk_22CCA4FEF, buf, 2u);
    }
  }
}

- (void)handleKeyboardInput:(id)input keyboardState:(id)state completionHandler:(id)handler
{
  inputCopy = input;
  stateCopy = state;
  handlerCopy = handler;
  kdebug_trace();
  v11 = kac_get_log();
  v12 = os_signpost_id_make_with_pointer(v11, (self ^ 0x64));
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "kbdManager.polymorph.keyboardInput", &unk_22CCA4FEF, buf, 2u);
    }
  }

  touchEvent = [inputCopy touchEvent];
  pathIndex = [touchEvent pathIndex];

  touchEvent2 = [inputCopy touchEvent];
  if (touchEvent2 && (v17 = touchEvent2, [stateCopy layoutState], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "userInterfaceIdiom"), v18, v17, v19 == 1))
  {
    touchEvent3 = [inputCopy touchEvent];
    stage = [touchEvent3 stage];

    if (stage == 5)
    {
LABEL_15:
      touchEvent4 = [inputCopy touchEvent];
      stage2 = [touchEvent4 stage];

      if (stage2 == 5 || !stage2)
      {
        v29 = +[TITypingAssertion sharedTypingAssertion];
        [v29 restTouchEndWithPathIndex:pathIndex];
      }

      goto LABEL_18;
    }

    if (stage != 4)
    {
      v23 = 1;
      goto LABEL_11;
    }

    v22 = +[TITypingAssertion sharedTypingAssertion];
    [v22 restTouchStartWithPathIndex:pathIndex];
    v23 = 1;
  }

  else
  {
    v22 = +[TITypingAssertion sharedTypingAssertion];
    [v22 restResetTouches];
    v23 = 0;
  }

LABEL_11:
  kdebug_trace();
  v24 = kac_get_log();
  v25 = os_signpost_id_make_with_pointer(v24, (self ^ 0x65));
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v26 = v25;
    if (os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v26, "kbdManager.polymorph.keyboardInput.super", &unk_22CCA4FEF, buf, 2u);
    }
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __87__TIKeyboardInputManagerPolymorph_handleKeyboardInput_keyboardState_completionHandler___block_invoke;
  v34[3] = &unk_27872F5C0;
  v34[4] = self;
  v35 = handlerCopy;
  v33.receiver = self;
  v33.super_class = TIKeyboardInputManagerPolymorph;
  [(TIKeyboardInputManagerWrapper *)&v33 handleKeyboardInput:inputCopy keyboardState:stateCopy completionHandler:v34];

  if (v23)
  {
    goto LABEL_15;
  }

LABEL_18:
  kdebug_trace();
  v30 = kac_get_log();
  v31 = os_signpost_id_make_with_pointer(v30, (self ^ 0x64));
  if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v32 = v31;
    if (os_signpost_enabled(v30))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v30, OS_SIGNPOST_INTERVAL_END, v32, "kbdManager.polymorph.keyboardInput", &unk_22CCA4FEF, buf, 2u);
    }
  }
}

void __87__TIKeyboardInputManagerPolymorph_handleKeyboardInput_keyboardState_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = a2;
  v6(v5, v8, v7);
  v9 = +[TITypingAssertion sharedTypingAssertion];
  [v9 touchWithReason:1];

  v10 = *(a1 + 32);
  kdebug_trace();
  v11 = kac_get_log();
  v12 = os_signpost_id_make_with_pointer(v11, (*(a1 + 32) ^ 0x65));

  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_22CA55000, v11, OS_SIGNPOST_INTERVAL_END, v12, "kbdManager.polymorph.keyboardInput.super", &unk_22CCA4FEF, v13, 2u);
  }
}

- (void)setInputManagerForInputMode:(id)mode withKeyboardState:(id)state class:(Class)class
{
  modeCopy = mode;
  stateCopy = state;
  v9 = +[TIKeyboardInputManagerLoader sharedLoader];
  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  if ([v9 isActiveInputManager:inputManager])
  {
    inputManager2 = [(TIKeyboardInputManagerWrapper *)self inputManager];
    if ([inputManager2 isMemberOfClass:class])
    {
      inputManager3 = [(TIKeyboardInputManagerWrapper *)self inputManager];
      inputMode = [inputManager3 inputMode];
      v14 = [inputMode isEqual:modeCopy];

      if (v14)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  inputManager4 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [v9 cacheInputManager:inputManager4 switchingToInputMode:modeCopy];

  v16 = [v9 inputManagerForInputMode:modeCopy withKeyboardState:stateCopy class:class];
  [(TIKeyboardInputManagerWrapper *)self setInputManager:v16];

  cachedContextChangeTrigger = [(TIKeyboardInputManagerWrapper *)self cachedContextChangeTrigger];

  if (cachedContextChangeTrigger)
  {
    inputManager5 = [(TIKeyboardInputManagerWrapper *)self inputManager];
    cachedContextChangeTrigger2 = [(TIKeyboardInputManagerWrapper *)self cachedContextChangeTrigger];
    [inputManager5 changingContextWithTrigger:cachedContextChangeTrigger2];

    [(TIKeyboardInputManagerWrapper *)self setCachedContextChangeTrigger:0];
  }

  v20 = objc_alloc_init(TITypologyPreferences);
  if (_typologyProfileOptInManager(void)::onceToken != -1)
  {
    dispatch_once(&_typologyProfileOptInManager(void)::onceToken, &__block_literal_global_2306);
  }

  [(TITypologyPreferences *)v20 setTypologyProfileOptInManager:_typologyProfileOptInManager(void)::optInManager];
  inputManager6 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [inputManager6 setTypologyPreferences:v20];

  v22 = [[TIKeyboardInputManagerLogger alloc] initWithTypologyPreferences:v20];
  inputManager7 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [inputManager7 setInputManagerLogger:v22];

  inputManager8 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  configurationPropertyList = [inputManager8 configurationPropertyList];
  [(TIKeyboardInputManagerLogger *)v22 setConfig:configurationPropertyList];

LABEL_12:
}

- (void)setInputManagerForKeyboardState:(id)state withInputEvent:(id)event
{
  stateCopy = state;
  clientIdentifier = [stateCopy clientIdentifier];
  inputMode = [stateCopy inputMode];
  v7 = TIIsTypeToSiriModeEnabled();

  inputMode2 = [stateCopy inputMode];
  v9 = [TIInputMode inputModeWithIdentifier:inputMode2 isSiriMode:v7];

  if (_os_feature_enabled_impl() && ([MEMORY[0x277D6F470] sharedPreferencesController], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "BOOLForPreferenceKey:", *MEMORY[0x277D6F8B0]), v10, v11) && (objc_msgSend(v9, "isSiriMode") & 1) == 0)
  {
    multilingualInputManagerClass = [v9 multilingualInputManagerClass];
  }

  else
  {
    multilingualInputManagerClass = [v9 inputManagerClass];
  }

  inputManagerClass = multilingualInputManagerClass;
  if ([stateCopy hardwareKeyboardMode])
  {
    languageWithRegion = [v9 languageWithRegion];
    v15 = [languageWithRegion isEqualToString:@"ja_JP"];

    if (v15)
    {
      inputMode3 = [stateCopy inputMode];
      v17 = TIInputModeGetComponentsFromIdentifier();
      v18 = [v17 objectForKey:@"hw"];
      v19 = [v18 isEqualToString:@"KANA"];

      if (v19)
      {
        v20 = @"ja_JP-Kana";
      }

      else
      {
        v20 = @"ja_JP-Romaji";
      }

      v21 = [TIInputMode inputModeWithIdentifier:v20 isSiriMode:v7];

      inputManagerClass = [v21 inputManagerClass];
      v9 = v21;
    }
  }

  languageWithRegion2 = [v9 languageWithRegion];
  v23 = [languageWithRegion2 hasPrefix:@"ars"];

  if (v23)
  {
    v24 = [TIInputMode inputModeWithIdentifier:@"ar" isSiriMode:v7];

    v9 = v24;
  }

  [(TIKeyboardInputManagerPolymorph *)self setInputManagerForInputMode:v9 withKeyboardState:stateCopy class:inputManagerClass];
}

- (void)handleKeyboardState:(id)state withInputEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerPolymorph;
  eventCopy = event;
  stateCopy = state;
  [(TIKeyboardInputManagerWrapper *)&v8 handleKeyboardState:stateCopy withInputEvent:eventCopy];
  [(TIKeyboardInputManagerPolymorph *)self setInputManagerForKeyboardState:stateCopy withInputEvent:eventCopy, v8.receiver, v8.super_class];
}

- (void)dealloc
{
  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  inputMode = [inputManager inputMode];

  if (inputMode)
  {
    inputManager2 = [(TIKeyboardInputManagerWrapper *)self inputManager];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __42__TIKeyboardInputManagerPolymorph_dealloc__block_invoke;
    v11 = &unk_278733308;
    v12 = inputManager2;
    v6 = inputManager2;
    TIDispatchAsync();
  }

  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerPolymorph;
  [(TIKeyboardInputManagerPolymorph *)&v7 dealloc];
}

void __42__TIKeyboardInputManagerPolymorph_dealloc__block_invoke(uint64_t a1)
{
  v2 = +[TIKeyboardInputManagerLoader sharedLoader];
  [v2 cacheInputManager:*(a1 + 32) switchingToInputMode:0];
}

@end