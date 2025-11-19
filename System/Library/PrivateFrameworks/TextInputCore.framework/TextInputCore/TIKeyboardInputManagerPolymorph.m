@interface TIKeyboardInputManagerPolymorph
- (void)dealloc;
- (void)handleKeyboardInput:(id)a3 keyboardState:(id)a4 completionHandler:(id)a5;
- (void)handleKeyboardState:(id)a3 withInputEvent:(id)a4;
- (void)setInputManagerForInputMode:(id)a3 withKeyboardState:(id)a4 class:(Class)a5;
- (void)setInputManagerForKeyboardState:(id)a3 withInputEvent:(id)a4;
- (void)skipHitTestForTouchEvent:(id)a3 keyboardState:(id)a4;
- (void)syncToKeyboardState:(id)a3 completionHandler:(id)a4;
@end

@implementation TIKeyboardInputManagerPolymorph

- (void)syncToKeyboardState:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__TIKeyboardInputManagerPolymorph_syncToKeyboardState_completionHandler___block_invoke;
  v9[3] = &unk_27872F5E8;
  v10 = v6;
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerPolymorph;
  v7 = v6;
  [(TIKeyboardInputManagerWrapper *)&v8 syncToKeyboardState:a3 completionHandler:v9];
}

void __73__TIKeyboardInputManagerPolymorph_syncToKeyboardState_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = +[TITypingAssertion sharedTypingAssertion];
  [v1 touchWithReason:0];
}

- (void)skipHitTestForTouchEvent:(id)a3 keyboardState:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v11 = [v6 pathIndex];
  if (v6 && (v12 = v11, [v7 layoutState], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "userInterfaceIdiom"), v13, v14 == 1))
  {
    v15 = [v6 stage];
    if (v15 != 5)
    {
      if (v15 == 4)
      {
        v16 = +[TITypingAssertion sharedTypingAssertion];
        [v16 restTouchStartWithPathIndex:v12];
      }

      else
      {
        v23.receiver = self;
        v23.super_class = TIKeyboardInputManagerPolymorph;
        [(TIKeyboardInputManagerWrapper *)&v23 skipHitTestForTouchEvent:v6 keyboardState:v7];
      }
    }

    v18 = [v6 stage];
    if (v18 == 5 || !v18)
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
    [(TIKeyboardInputManagerWrapper *)&v23 skipHitTestForTouchEvent:v6 keyboardState:v7];
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

- (void)handleKeyboardInput:(id)a3 keyboardState:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

  v14 = [v8 touchEvent];
  v15 = [v14 pathIndex];

  v16 = [v8 touchEvent];
  if (v16 && (v17 = v16, [v9 layoutState], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "userInterfaceIdiom"), v18, v17, v19 == 1))
  {
    v20 = [v8 touchEvent];
    v21 = [v20 stage];

    if (v21 == 5)
    {
LABEL_15:
      v27 = [v8 touchEvent];
      v28 = [v27 stage];

      if (v28 == 5 || !v28)
      {
        v29 = +[TITypingAssertion sharedTypingAssertion];
        [v29 restTouchEndWithPathIndex:v15];
      }

      goto LABEL_18;
    }

    if (v21 != 4)
    {
      v23 = 1;
      goto LABEL_11;
    }

    v22 = +[TITypingAssertion sharedTypingAssertion];
    [v22 restTouchStartWithPathIndex:v15];
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
  v35 = v10;
  v33.receiver = self;
  v33.super_class = TIKeyboardInputManagerPolymorph;
  [(TIKeyboardInputManagerWrapper *)&v33 handleKeyboardInput:v8 keyboardState:v9 completionHandler:v34];

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

- (void)setInputManagerForInputMode:(id)a3 withKeyboardState:(id)a4 class:(Class)a5
{
  v26 = a3;
  v8 = a4;
  v9 = +[TIKeyboardInputManagerLoader sharedLoader];
  v10 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  if ([v9 isActiveInputManager:v10])
  {
    v11 = [(TIKeyboardInputManagerWrapper *)self inputManager];
    if ([v11 isMemberOfClass:a5])
    {
      v12 = [(TIKeyboardInputManagerWrapper *)self inputManager];
      v13 = [v12 inputMode];
      v14 = [v13 isEqual:v26];

      if (v14)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  v15 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [v9 cacheInputManager:v15 switchingToInputMode:v26];

  v16 = [v9 inputManagerForInputMode:v26 withKeyboardState:v8 class:a5];
  [(TIKeyboardInputManagerWrapper *)self setInputManager:v16];

  v17 = [(TIKeyboardInputManagerWrapper *)self cachedContextChangeTrigger];

  if (v17)
  {
    v18 = [(TIKeyboardInputManagerWrapper *)self inputManager];
    v19 = [(TIKeyboardInputManagerWrapper *)self cachedContextChangeTrigger];
    [v18 changingContextWithTrigger:v19];

    [(TIKeyboardInputManagerWrapper *)self setCachedContextChangeTrigger:0];
  }

  v20 = objc_alloc_init(TITypologyPreferences);
  if (_typologyProfileOptInManager(void)::onceToken != -1)
  {
    dispatch_once(&_typologyProfileOptInManager(void)::onceToken, &__block_literal_global_2306);
  }

  [(TITypologyPreferences *)v20 setTypologyProfileOptInManager:_typologyProfileOptInManager(void)::optInManager];
  v21 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [v21 setTypologyPreferences:v20];

  v22 = [[TIKeyboardInputManagerLogger alloc] initWithTypologyPreferences:v20];
  v23 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [v23 setInputManagerLogger:v22];

  v24 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v25 = [v24 configurationPropertyList];
  [(TIKeyboardInputManagerLogger *)v22 setConfig:v25];

LABEL_12:
}

- (void)setInputManagerForKeyboardState:(id)a3 withInputEvent:(id)a4
{
  v25 = a3;
  v5 = [v25 clientIdentifier];
  v6 = [v25 inputMode];
  v7 = TIIsTypeToSiriModeEnabled();

  v8 = [v25 inputMode];
  v9 = [TIInputMode inputModeWithIdentifier:v8 isSiriMode:v7];

  if (_os_feature_enabled_impl() && ([MEMORY[0x277D6F470] sharedPreferencesController], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "BOOLForPreferenceKey:", *MEMORY[0x277D6F8B0]), v10, v11) && (objc_msgSend(v9, "isSiriMode") & 1) == 0)
  {
    v12 = [v9 multilingualInputManagerClass];
  }

  else
  {
    v12 = [v9 inputManagerClass];
  }

  v13 = v12;
  if ([v25 hardwareKeyboardMode])
  {
    v14 = [v9 languageWithRegion];
    v15 = [v14 isEqualToString:@"ja_JP"];

    if (v15)
    {
      v16 = [v25 inputMode];
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

      v13 = [v21 inputManagerClass];
      v9 = v21;
    }
  }

  v22 = [v9 languageWithRegion];
  v23 = [v22 hasPrefix:@"ars"];

  if (v23)
  {
    v24 = [TIInputMode inputModeWithIdentifier:@"ar" isSiriMode:v7];

    v9 = v24;
  }

  [(TIKeyboardInputManagerPolymorph *)self setInputManagerForInputMode:v9 withKeyboardState:v25 class:v13];
}

- (void)handleKeyboardState:(id)a3 withInputEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerPolymorph;
  v6 = a4;
  v7 = a3;
  [(TIKeyboardInputManagerWrapper *)&v8 handleKeyboardState:v7 withInputEvent:v6];
  [(TIKeyboardInputManagerPolymorph *)self setInputManagerForKeyboardState:v7 withInputEvent:v6, v8.receiver, v8.super_class];
}

- (void)dealloc
{
  v3 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v4 = [v3 inputMode];

  if (v4)
  {
    v5 = [(TIKeyboardInputManagerWrapper *)self inputManager];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __42__TIKeyboardInputManagerPolymorph_dealloc__block_invoke;
    v11 = &unk_278733308;
    v12 = v5;
    v6 = v5;
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