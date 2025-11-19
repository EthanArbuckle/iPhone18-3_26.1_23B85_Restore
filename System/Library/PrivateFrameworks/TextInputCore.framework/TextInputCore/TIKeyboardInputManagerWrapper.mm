@interface TIKeyboardInputManagerWrapper
- (TIKeyboardInputManagerLogging)logger;
- (TIKeyboardInputManagerWrapper)init;
- (id)generateInlineCompletions:(id)a3 withPrefix:(id)a4;
- (void)_updateKeyboardOutput:(id)a3 withSecureCandidatePayload:(id)a4 keyboardState:(id)a5;
- (void)acceptSecureCandidate:(id)a3 keyboardState:(id)a4 completion:(id)a5;
- (void)acceptingCandidateWithTrigger:(id)a3;
- (void)addSupplementalLexicon:(id)a3 completionHandler:(id)a4;
- (void)candidateRejected:(id)a3;
- (void)changingContextWithTrigger:(id)a3;
- (void)generateAutocorrectionsWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 completionHandler:(id)a5;
- (void)generateAutocorrectionsWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 requestToken:(id)a5 completionHandler:(id)a6;
- (void)generateCandidatesWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 completionHandler:(id)a5;
- (void)generateCandidatesWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 requestToken:(id)a5 completionHandler:(id)a6;
- (void)generateRefinementsForCandidate:(id)a3 keyboardState:(id)a4 completionHandler:(id)a5;
- (void)generateReplacementsForString:(id)a3 keyLayout:(id)a4 continuation:(id)a5;
- (void)handleAcceptedCandidate:(id)a3 acceptedSecureCandidate:(id)a4 keyboardState:(id)a5 completionHandler:(id)a6;
- (void)handleAcceptedCandidate:(id)a3 keyboardState:(id)a4 completionHandler:(id)a5;
- (void)handleKeyboardInput:(id)a3 acceptedSecureCandidate:(id)a4 keyboardState:(id)a5 completionHandler:(id)a6;
- (void)handleKeyboardInput:(id)a3 keyboardState:(id)a4 completionHandler:(id)a5;
- (void)handleKeyboardState:(id)a3 withInputEvent:(id)a4;
- (void)lastAcceptedCandidateCorrected;
- (void)performHitTestForTouchEvent:(id)a3 keyboardState:(id)a4 continuation:(id)a5;
- (void)performHitTestForTouchEvents:(id)a3 keyboardState:(id)a4 continuation:(id)a5;
- (void)registerLearning:(id)a3 fullCandidate:(id)a4 keyboardState:(id)a5 mode:(id)a6;
- (void)registerLearningForCompletion:(id)a3 fullCompletion:(id)a4 context:(id)a5 prefix:(id)a6 mode:(id)a7;
- (void)removeSupplementalLexiconWithIdentifier:(unint64_t)a3;
- (void)setLogger:(id)a3;
- (void)setOriginalInput:(id)a3;
- (void)skipHitTestForTouchEvent:(id)a3 keyboardState:(id)a4;
- (void)skipHitTestForTouchEvents:(id)a3 keyboardState:(id)a4;
- (void)smartSelectionForTextInDocument:(id)a3 inRange:(_NSRange)a4 language:(id)a5 tokenizedRanges:(id)a6 options:(unint64_t)a7 completion:(id)a8;
- (void)stickerWithIdentifier:(id)a3 stickerRoles:(id)a4 completionHandler:(id)a5;
- (void)syncToKeyboardState:(id)a3 completionHandler:(id)a4;
- (void)textAccepted:(id)a3 completionHandler:(id)a4;
- (void)updateAnalyticsForRejectedSuggestion:(id)a3 keyboardState:(id)a4;
- (void)writeTypologyLogWithCompletionHandler:(id)a3;
@end

@implementation TIKeyboardInputManagerWrapper

- (TIKeyboardInputManagerWrapper)init
{
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManagerWrapper;
  v2 = [(TIKeyboardInputManagerWrapper *)&v6 init];
  if (v2)
  {
    v3 = [[TIKeyboardInputManagerBase alloc] initWithInputMode:0 keyboardState:0];
    inputManager = v2->_inputManager;
    v2->_inputManager = v3;
  }

  return v2;
}

- (TIKeyboardInputManagerLogging)logger
{
  v2 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v3 = [v2 inputManagerLogger];

  return v3;
}

- (void)stickerWithIdentifier:(id)a3 stickerRoles:(id)a4 completionHandler:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  if (_os_feature_enabled_impl())
  {
    v10 = _os_feature_enabled_impl();
  }

  else
  {
    v11 = [MEMORY[0x277CBEAF8] currentLocale];
    v12 = [v11 languageCode];

    v13 = [(TIKeyboardInputManagerBase *)self->_inputManager inputMode];
    v14 = [v13 languageWithRegion];

    if (_os_feature_enabled_impl() && [v12 hasPrefix:@"en"])
    {
      v10 = [v14 hasPrefix:@"en"];
    }

    else
    {
      v10 = 0;
    }
  }

  if (v17 && v10)
  {
    v15 = objc_alloc_init(TIStickerCandidateGenerator);
    v16 = [(TIStickerCandidateGenerator *)v15 keyboardStickerWithIdentifier:v17 roles:v8];
    v9[2](v9, v16);
  }

  else
  {
    v9[2](v9, 0);
  }
}

- (void)removeSupplementalLexiconWithIdentifier:(unint64_t)a3
{
  kdebug_trace();
  v5 = kac_get_log();
  v6 = os_signpost_id_make_with_pointer(v5, (self ^ 0xF));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "kbdManager.removeSupplementalLexicon", &unk_22CCA4FEF, buf, 2u);
    }
  }

  v8 = +[TITransientLexiconManager sharedInstance];
  v9 = [v8 supplementalLexicons];
  [v9 removeLexiconWithIdentifier:a3];

  kdebug_trace();
  v10 = kac_get_log();
  v11 = os_signpost_id_make_with_pointer(v10, (self ^ 0xF));
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v10, OS_SIGNPOST_INTERVAL_END, v12, "kbdManager.removeSupplementalLexicon", &unk_22CCA4FEF, v13, 2u);
    }
  }
}

- (void)addSupplementalLexicon:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  kdebug_trace();
  v8 = kac_get_log();
  v9 = os_signpost_id_make_with_pointer(v8, (self ^ 0xE));
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "kbdManager.addSupplementalLexicon", &unk_22CCA4FEF, buf, 2u);
    }
  }

  v11 = +[TITransientLexiconManager sharedInstance];
  v12 = [v11 ensureSupplementalLexicons];
  [v12 addLexicon:v6];

  if (v7)
  {
    v7[2](v7);
  }

  kdebug_trace();
  v13 = kac_get_log();
  v14 = os_signpost_id_make_with_pointer(v13, (self ^ 0xE));
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15 = v14;
    if (os_signpost_enabled(v13))
    {
      *v16 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v13, OS_SIGNPOST_INTERVAL_END, v15, "kbdManager.addSupplementalLexicon", &unk_22CCA4FEF, v16, 2u);
    }
  }
}

- (void)writeTypologyLogWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [v5 storeLanguageModelDynamicDataIncludingCache];

  v6 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [v6 clearHumanReadableTrace];

  v7 = [(TIKeyboardInputManagerWrapper *)self logger];
  v9 = [v7 writeToFile];

  v8 = [v9 objectAtIndexedSubscript:0];
  v4[2](v4, v8);
}

- (void)lastAcceptedCandidateCorrected
{
  kdebug_trace();
  v3 = kac_get_log();
  v4 = os_signpost_id_make_with_pointer(v3, (self ^ 0xD));
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "kbdManager.lastAcceptedCorrected", &unk_22CCA4FEF, buf, 2u);
    }
  }

  v6 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [v6 lastAcceptedCandidateCorrected];

  v7 = [(TIKeyboardInputManagerWrapper *)self logger];
  [v7 logReceivedLastAcceptedCandidateCorrected];

  kdebug_trace();
  v8 = kac_get_log();
  v9 = os_signpost_id_make_with_pointer(v8, (self ^ 0xD));
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v8, OS_SIGNPOST_INTERVAL_END, v10, "kbdManager.lastAcceptedCorrected", &unk_22CCA4FEF, v11, 2u);
    }
  }
}

- (void)registerLearningForCompletion:(id)a3 fullCompletion:(id)a4 context:(id)a5 prefix:(id)a6 mode:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  kdebug_trace();
  v17 = kac_get_log();
  v18 = os_signpost_id_make_with_pointer(v17, (self ^ 0xC));
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v19 = v18;
    if (os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v19, "kbdManager.candidateRejected", &unk_22CCA4FEF, buf, 2u);
    }
  }

  v20 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [v20 registerLearningForCompletion:v12 fullCompletion:v13 context:v14 prefix:v15 mode:v16];

  kdebug_trace();
  v21 = kac_get_log();
  v22 = os_signpost_id_make_with_pointer(v21, (self ^ 0xC));
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v23 = v22;
    if (os_signpost_enabled(v21))
    {
      *v24 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v21, OS_SIGNPOST_INTERVAL_END, v23, "kbdManager.candidateRejected", &unk_22CCA4FEF, v24, 2u);
    }
  }
}

- (void)registerLearning:(id)a3 fullCandidate:(id)a4 keyboardState:(id)a5 mode:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  kdebug_trace();
  v14 = kac_get_log();
  v15 = os_signpost_id_make_with_pointer(v14, (self ^ 0xC));
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "kbdManager.candidateRejected", &unk_22CCA4FEF, buf, 2u);
    }
  }

  v17 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [v17 registerLearning:v10 fullCandidate:v11 keyboardState:v12 mode:v13];

  kdebug_trace();
  v18 = kac_get_log();
  v19 = os_signpost_id_make_with_pointer(v18, (self ^ 0xC));
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = v19;
    if (os_signpost_enabled(v18))
    {
      *v21 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v18, OS_SIGNPOST_INTERVAL_END, v20, "kbdManager.candidateRejected", &unk_22CCA4FEF, v21, 2u);
    }
  }
}

- (void)candidateRejected:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v5 = kac_get_log();
  v6 = os_signpost_id_make_with_pointer(v5, (self ^ 0xC));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "kbdManager.candidateRejected", &unk_22CCA4FEF, buf, 2u);
    }
  }

  v8 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [v8 candidateRejected:v4];

  v9 = [(TIKeyboardInputManagerWrapper *)self logger];
  [v9 logReceivedCandidateRejected:v4];

  kdebug_trace();
  v10 = kac_get_log();
  v11 = os_signpost_id_make_with_pointer(v10, (self ^ 0xC));
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v10, OS_SIGNPOST_INTERVAL_END, v12, "kbdManager.candidateRejected", &unk_22CCA4FEF, v13, 2u);
    }
  }
}

- (void)textAccepted:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  kdebug_trace();
  v8 = kac_get_log();
  v9 = os_signpost_id_make_with_pointer(v8, (self ^ 0xB));
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "kbdManager.textAccepted", &unk_22CCA4FEF, buf, 2u);
    }
  }

  v11 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [v11 textAccepted:v6 fromPredictiveInputBar:0 withInput:0];

  v12 = [(TIKeyboardInputManagerWrapper *)self logger];
  [v12 logReceivedTextAccepted:v6];

  v13 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v14 = [v13 keyboardConfiguration];

  kdebug_trace();
  v15 = kac_get_log();
  v16 = os_signpost_id_make_with_pointer(v15, (self ^ 0xB));
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = v16;
    if (os_signpost_enabled(v15))
    {
      *v18 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v15, OS_SIGNPOST_INTERVAL_END, v17, "kbdManager.textAccepted", &unk_22CCA4FEF, v18, 2u);
    }
  }

  if (v7)
  {
    v7[2](v7, v14);
  }
}

- (void)setOriginalInput:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v5 = kac_get_log();
  v6 = os_signpost_id_make_with_pointer(v5, (self ^ 0xA));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "kbdManager.setOriginalInput", &unk_22CCA4FEF, buf, 2u);
    }
  }

  v8 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [v8 setOriginalInput:v4];

  v9 = [(TIKeyboardInputManagerWrapper *)self logger];
  [v9 logReceivedSetOriginalInput:v4];

  kdebug_trace();
  v10 = kac_get_log();
  v11 = os_signpost_id_make_with_pointer(v10, (self ^ 0xA));
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v10, OS_SIGNPOST_INTERVAL_END, v12, "kbdManager.setOriginalInput", &unk_22CCA4FEF, v13, 2u);
    }
  }
}

- (void)smartSelectionForTextInDocument:(id)a3 inRange:(_NSRange)a4 language:(id)a5 tokenizedRanges:(id)a6 options:(unint64_t)a7 completion:(id)a8
{
  length = a4.length;
  location = a4.location;
  v22 = a8;
  v15 = a6;
  v16 = a5;
  v17 = a3;
  v18 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v19 = [v18 smartSelectionRangeForTextInDocument:v17 inRange:location language:length tokenizedRanges:v16 options:{v15, a7}];
  v21 = v20;

  v22[2](v22, v19, v21);
}

- (void)skipHitTestForTouchEvents:(id)a3 keyboardState:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:v7];
  v8 = [(TIKeyboardInputManagerWrapper *)self logger];
  if (v8)
  {
    v9 = [v7 copy];
  }

  else
  {
    v9 = 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [(TIKeyboardInputManagerWrapper *)self inputManager];
        [v16 skipHitTestForTouchEvent:v15 keyboardState:v7];

        v17 = [(TIKeyboardInputManagerWrapper *)self logger];
        [v17 logReceivedSkipHitTestForTouchEvent:v15 forKeyboardState:v9];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)skipHitTestForTouchEvent:(id)a3 keyboardState:(id)a4
{
  v11 = a4;
  v6 = a3;
  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:v11];
  v7 = [(TIKeyboardInputManagerWrapper *)self logger];
  if (v7)
  {
    v8 = [v11 copy];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [v9 skipHitTestForTouchEvent:v6 keyboardState:v11];

  v10 = [(TIKeyboardInputManagerWrapper *)self logger];
  [v10 logReceivedSkipHitTestForTouchEvent:v6 forKeyboardState:v8];
}

- (void)performHitTestForTouchEvents:(id)a3 keyboardState:(id)a4 continuation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  kdebug_trace();
  v11 = kac_get_log();
  v12 = os_signpost_id_make_with_pointer(v11, (self ^ 7));
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "kbdManager.performHitTest", &unk_22CCA4FEF, buf, 2u);
    }
  }

  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:v9];
  v14 = [(TIKeyboardInputManagerWrapper *)self logger];
  if (v14)
  {
    v15 = [v9 copy];
  }

  else
  {
    v15 = 0;
  }

  if ([v8 count] >= 2)
  {
    v16 = 1;
    do
    {
      v17 = [v8 objectAtIndexedSubscript:v16 - 1];
      v18 = [(TIKeyboardInputManagerWrapper *)self inputManager];
      [v18 skipHitTestForTouchEvent:v17 keyboardState:v9];

      v19 = [(TIKeyboardInputManagerWrapper *)self logger];
      [v19 logReceivedSkipHitTestForTouchEvent:v17 forKeyboardState:v15];

      ++v16;
    }

    while (v16 < [v8 count]);
  }

  v20 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v21 = [v8 lastObject];
  v22 = [v20 performHitTestForTouchEvent:v21 keyboardState:v9];

  v10[2](v10, v22);
  v23 = [(TIKeyboardInputManagerWrapper *)self logger];
  v24 = [v8 lastObject];
  [v23 logHitKeyCode:v22 forTouchEvent:v24 keyboardState:v15];

  kdebug_trace();
  v25 = kac_get_log();
  v26 = os_signpost_id_make_with_pointer(v25, (self ^ 7));
  if (v26 - 1 < 0xFFFFFFFFFFFFFFFELL)
  {
    v27 = v26;
    if (os_signpost_enabled(v25))
    {
      *v28 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v25, OS_SIGNPOST_INTERVAL_END, v27, "kbdManager.performHitTest", &unk_22CCA4FEF, v28, 2u);
    }
  }
}

- (void)performHitTestForTouchEvent:(id)a3 keyboardState:(id)a4 continuation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  kdebug_trace();
  v11 = kac_get_log();
  v12 = os_signpost_id_make_with_pointer(v11, (self ^ 7));
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "kbdManager.performHitTest", &unk_22CCA4FEF, buf, 2u);
    }
  }

  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:v9];
  v14 = [(TIKeyboardInputManagerWrapper *)self logger];
  if (v14)
  {
    v15 = [v9 copy];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v17 = [v16 performHitTestForTouchEvent:v8 keyboardState:v9];

  v10[2](v10, v17);
  v18 = [(TIKeyboardInputManagerWrapper *)self logger];
  [v18 logHitKeyCode:v17 forTouchEvent:v8 keyboardState:v15];

  kdebug_trace();
  v19 = kac_get_log();
  v20 = os_signpost_id_make_with_pointer(v19, (self ^ 7));
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v21 = v20;
    if (os_signpost_enabled(v19))
    {
      *v22 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v19, OS_SIGNPOST_INTERVAL_END, v21, "kbdManager.performHitTest", &unk_22CCA4FEF, v22, 2u);
    }
  }
}

- (void)generateRefinementsForCandidate:(id)a3 keyboardState:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  kdebug_trace();
  v11 = kac_get_log();
  v12 = os_signpost_id_make_with_pointer(v11, (self ^ 6));
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "kbdManager.generateRefinements", &unk_22CCA4FEF, buf, 2u);
    }
  }

  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:v9];
  v14 = [(TIKeyboardInputManagerWrapper *)self logger];
  if (v14)
  {
    v15 = [v9 copy];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v17 = [v16 generateRefinementsForCandidate:v8];

  v10[2](v10, v17);
  v18 = [(TIKeyboardInputManagerWrapper *)self logger];
  [v18 logRefinements:v17 forCandidate:v8 keyboardState:v15];

  kdebug_trace();
  v19 = kac_get_log();
  v20 = os_signpost_id_make_with_pointer(v19, (self ^ 6));
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v21 = v20;
    if (os_signpost_enabled(v19))
    {
      *v22 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v19, OS_SIGNPOST_INTERVAL_END, v21, "kbdManager.generateRefinements", &unk_22CCA4FEF, v22, 2u);
    }
  }
}

- (void)generateReplacementsForString:(id)a3 keyLayout:(id)a4 continuation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  kdebug_trace();
  v11 = kac_get_log();
  v12 = os_signpost_id_make_with_pointer(v11, (self ^ 5));
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "kbdManager.generateReplacements", &unk_22CCA4FEF, buf, 2u);
    }
  }

  v14 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v15 = [v14 generateReplacementsForString:v8 keyLayout:v9];

  v10[2](v10, v15);
  v16 = [(TIKeyboardInputManagerWrapper *)self logger];
  [v16 logReplacements:v15 forString:v8 keyLayout:v9];

  kdebug_trace();
  v17 = kac_get_log();
  v18 = os_signpost_id_make_with_pointer(v17, (self ^ 5));
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v19 = v18;
    if (os_signpost_enabled(v17))
    {
      *v20 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v17, OS_SIGNPOST_INTERVAL_END, v19, "kbdManager.generateReplacements", &unk_22CCA4FEF, v20, 2u);
    }
  }
}

- (void)changingContextWithTrigger:(id)a3
{
  v7 = a3;
  v4 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v5 = [v4 isMemberOfClass:objc_opt_class()];

  if (v5)
  {
    [(TIKeyboardInputManagerWrapper *)self setCachedContextChangeTrigger:v7];
  }

  else
  {
    v6 = [(TIKeyboardInputManagerWrapper *)self inputManager];
    [v6 changingContextWithTrigger:v7];
  }
}

- (void)acceptingCandidateWithTrigger:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [v5 acceptingCandidateWithTrigger:v4];
}

- (void)handleAcceptedCandidate:(id)a3 acceptedSecureCandidate:(id)a4 keyboardState:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  kdebug_trace();
  v14 = kac_get_log();
  v15 = os_signpost_id_make_with_pointer(v14, (self ^ 4));
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "kbdManager.acceptCandidate", &unk_22CCA4FEF, buf, 2u);
    }
  }

  if (!v10)
  {
    v18 = v11;
    v19 = 0;
    goto LABEL_17;
  }

  v17 = [v10 slotID];
  v18 = v11;

  v19 = 0;
  if (v11 == v10 || !v17)
  {
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v18;
    v21 = [v20 proactivePredictedItem];
    v18 = v20;
    if (v21)
    {
      v22 = v21;
      v23 = [v20 proactivePredictedItem];
      if ([v23 itemType] != 1)
      {

        v18 = v20;
        goto LABEL_14;
      }

      v24 = [v20 proactivePredictedItem];
      v25 = [v24 operationData];

      v18 = v20;
      if (v25)
      {
        v18 = [v20 candidateByReplacingWithCandidate:&stru_283FDFAF8];
        v22 = v20;
LABEL_14:
      }
    }
  }

  v19 = 1;
LABEL_17:
  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:v12];
  v26 = [(TIKeyboardInputManagerWrapper *)self logger];
  if (v26)
  {
    v27 = [v12 copy];
  }

  else
  {
    v27 = 0;
  }

  v28 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v29 = [v28 handleAcceptedCandidate:v18 keyboardState:v12];

  v30 = objc_alloc_init(MEMORY[0x277D6F410]);
  [v30 setTextToCommit:v29];
  if (v19)
  {
    v31 = +[TIAppAutofillManager sharedInstance];
    v32 = [v31 secureCandidateRenderer];

    v33 = [v32 cachedPayloadForSecureCandidateSlotID:{objc_msgSend(v18, "slotID")}];
    [(TIKeyboardInputManagerWrapper *)self _updateKeyboardOutput:v30 withSecureCandidatePayload:v33 keyboardState:v12];
  }

  v34 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v35 = [v34 keyboardConfiguration];

  v13[2](v13, v35, v30);
  v36 = [(TIKeyboardInputManagerWrapper *)self logger];
  [v36 logKeyboardConfig:v35 textToCommit:v29 forAcceptedCandidate:v18 keyboardState:v27];

  kdebug_trace();
  v37 = kac_get_log();
  v38 = os_signpost_id_make_with_pointer(v37, (self ^ 4));
  if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v39 = v38;
    if (os_signpost_enabled(v37))
    {
      *v40 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v37, OS_SIGNPOST_INTERVAL_END, v39, "kbdManager.acceptCandidate", &unk_22CCA4FEF, v40, 2u);
    }
  }
}

- (void)handleAcceptedCandidate:(id)a3 keyboardState:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && [v8 slotID])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __89__TIKeyboardInputManagerWrapper_handleAcceptedCandidate_keyboardState_completionHandler___block_invoke;
    v11[3] = &unk_27872F2B0;
    v11[4] = self;
    v12 = v8;
    v13 = v9;
    v14 = v10;
    [(TIKeyboardInputManagerWrapper *)self acceptSecureCandidate:v12 keyboardState:v13 completion:v11];
  }

  else
  {
    [(TIKeyboardInputManagerWrapper *)self updateAnalyticsForRejectedSuggestion:v8 keyboardState:v9];
    [(TIKeyboardInputManagerWrapper *)self handleAcceptedCandidate:v8 acceptedSecureCandidate:v8 keyboardState:v9 completionHandler:v10];
  }
}

uint64_t __89__TIKeyboardInputManagerWrapper_handleAcceptedCandidate_keyboardState_completionHandler___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  if (a2)
  {
    v6 = a1[7];
    v7 = a2;
  }

  else
  {
    [v3 updateAnalyticsForRejectedSuggestion:v4 keyboardState:a1[6]];
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = v4;
  }

  return [v3 handleAcceptedCandidate:v4 acceptedSecureCandidate:v7 keyboardState:v5 completionHandler:v6];
}

- (void)generateCandidatesWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 requestToken:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  kdebug_trace();
  v12 = kac_get_log();
  v13 = os_signpost_id_make_with_pointer(v12, (self ^ 3));
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v13;
    if (os_signpost_enabled(v12))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "kbdManager.generateCandidates", &unk_22CCA4FEF, buf, 2u);
    }
  }

  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:v9];
  v15 = [(TIKeyboardInputManagerWrapper *)self logger];
  if (v15)
  {
    v16 = [v9 copy];
  }

  else
  {
    v16 = 0;
  }

  objc_initWeak(buf, self);
  v17 = [TIStreamingCandidateHandler alloc];
  v18 = [(TIKeyboardInputManagerWrapper *)self clientProxy];
  v19 = [(TIKeyboardInputManagerWrapper *)self logger];
  inputManager = self->_inputManager;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __115__TIKeyboardInputManagerWrapper_generateCandidatesWithKeyboardState_candidateRange_requestToken_completionHandler___block_invoke;
  v27[3] = &unk_27872F288;
  objc_copyWeak(&v31, buf);
  v29 = v10;
  v30 = v11;
  v28 = v16;
  v21 = v10;
  v22 = v16;
  v23 = v11;
  v24 = [(TIStreamingCandidateHandler *)v17 initWithClientProxy:v18 keyboardState:v22 requestToken:v21 logger:v19 inputManager:inputManager candidateResultSetHandler:v27];

  v25 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [v25 generateCandidatesWithKeyboardState:v9 candidateRange:a4.location candidateHandler:{a4.length, v24}];

  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);
}

void __115__TIKeyboardInputManagerWrapper_generateCandidatesWithKeyboardState_candidateRange_requestToken_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  (*(*(a1 + 48) + 16))();
  kdebug_trace();
  v5 = kac_get_log();
  v6 = os_signpost_id_make_with_pointer(v5, (WeakRetained ^ 3));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v5, OS_SIGNPOST_INTERVAL_END, v7, "kbdManager.generateCandidates", &unk_22CCA4FEF, v12, 2u);
    }
  }

  v8 = [WeakRetained logger];
  v9 = [WeakRetained inputManager];
  v10 = [v9 humanReadableTrace];
  [v8 logCandidateResultSet:v3 trace:v10 forKeyboardState:*(a1 + 32) requestToken:*(a1 + 40)];

  v11 = [WeakRetained inputManager];
  [v11 clearHumanReadableTrace];
}

- (void)generateCandidatesWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 completionHandler:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  kdebug_trace();
  v11 = kac_get_log();
  v12 = os_signpost_id_make_with_pointer(v11, (self ^ 3));
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "kbdManager.generateCandidates", &unk_22CCA4FEF, buf, 2u);
    }
  }

  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:v9];
  v14 = [(TIKeyboardInputManagerWrapper *)self logger];
  if (v14)
  {
    v15 = [v9 copy];
  }

  else
  {
    v15 = 0;
  }

  v16 = [TIAccumulatingCandidateHandler alloc];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __102__TIKeyboardInputManagerWrapper_generateCandidatesWithKeyboardState_candidateRange_completionHandler___block_invoke;
  v21[3] = &unk_27872F260;
  v22 = v15;
  v23 = v10;
  v21[4] = self;
  v17 = v15;
  v18 = v10;
  v19 = [(TIAccumulatingCandidateHandler *)v16 initWithResultSetHandlerBlock:v21];
  v20 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [v20 generateCandidatesWithKeyboardState:v9 candidateRange:location candidateHandler:{length, v19}];
}

void __102__TIKeyboardInputManagerWrapper_generateCandidatesWithKeyboardState_candidateRange_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 48) + 16))();
  v4 = *(a1 + 32);
  kdebug_trace();
  v5 = kac_get_log();
  v6 = os_signpost_id_make_with_pointer(v5, (*(a1 + 32) ^ 3));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v5, OS_SIGNPOST_INTERVAL_END, v7, "kbdManager.generateCandidates", &unk_22CCA4FEF, v12, 2u);
    }
  }

  v8 = [*(a1 + 32) logger];
  v9 = [*(a1 + 32) inputManager];
  v10 = [v9 humanReadableTrace];
  [v8 logCandidateResultSet:v3 trace:v10 forKeyboardState:*(a1 + 40) requestToken:0];

  v11 = [*(a1 + 32) inputManager];
  [v11 clearHumanReadableTrace];
}

- (id)generateInlineCompletions:(id)a3 withPrefix:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v9 = [v8 generateInlineCompletions:v7 withPrefix:v6];

  v10 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [v10 clearHumanReadableTrace];

  return v9;
}

- (void)generateAutocorrectionsWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 requestToken:(id)a5 completionHandler:(id)a6
{
  length = a4.length;
  location = a4.location;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  kdebug_trace();
  v13 = kac_get_log();
  v14 = os_signpost_id_make_with_pointer(v13, (self ^ 1));
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15 = v14;
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "kbdManager.generateAutocorrections", &unk_22CCA4FEF, buf, 2u);
    }
  }

  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:v10];
  v16 = [(TIKeyboardInputManagerWrapper *)self logger];
  if (v16)
  {
    v17 = [v10 copy];
  }

  else
  {
    v17 = 0;
  }

  v18 = [TIStreamingCandidateHandler alloc];
  v19 = [(TIKeyboardInputManagerWrapper *)self clientProxy];
  v20 = [(TIKeyboardInputManagerWrapper *)self logger];
  inputManager = self->_inputManager;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __120__TIKeyboardInputManagerWrapper_generateAutocorrectionsWithKeyboardState_candidateRange_requestToken_completionHandler___block_invoke;
  v29[3] = &unk_27872F238;
  v32 = v10;
  v33 = v12;
  v29[4] = self;
  v30 = v17;
  v31 = v11;
  v22 = v10;
  v23 = v11;
  v24 = v17;
  v25 = v12;
  v26 = [(TIStreamingCandidateHandler *)v18 initWithClientProxy:v19 keyboardState:v24 requestToken:v23 logger:v20 inputManager:inputManager candidateHandler:v29];

  v27 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [v27 generateAutocorrectionsWithKeyboardState:v22 candidateRange:location candidateHandler:{length, v26}];
}

void __120__TIKeyboardInputManagerWrapper_generateAutocorrectionsWithKeyboardState_candidateRange_requestToken_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 64) + 16))();
  v4 = *(a1 + 32);
  kdebug_trace();
  v5 = kac_get_log();
  v6 = os_signpost_id_make_with_pointer(v5, (*(a1 + 32) ^ 1));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v5, OS_SIGNPOST_INTERVAL_END, v7, "kbdManager.generateAutocorrections", &unk_22CCA4FEF, v13, 2u);
    }
  }

  v8 = [*(a1 + 32) logger];
  v9 = [*(a1 + 32) inputManager];
  v10 = [v9 humanReadableTrace];
  [v8 logAutocorrections:v3 trace:v10 forKeyboardState:*(a1 + 40) requestToken:*(a1 + 48)];

  v11 = [*(a1 + 32) inputManager];
  [v11 candidatesOfferedFeedback:v3 keyboardState:*(a1 + 56)];

  v12 = [*(a1 + 32) inputManager];
  [v12 clearHumanReadableTrace];
}

- (void)generateAutocorrectionsWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 completionHandler:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  kdebug_trace();
  v11 = kac_get_log();
  v12 = os_signpost_id_make_with_pointer(v11, (self ^ 1));
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "kbdManager.generateAutocorrections", &unk_22CCA4FEF, buf, 2u);
    }
  }

  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:v9];
  v14 = [(TIKeyboardInputManagerWrapper *)self logger];
  if (v14)
  {
    v15 = [v9 copy];
  }

  else
  {
    v15 = 0;
  }

  v16 = [TIAccumulatingCandidateHandler alloc];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __107__TIKeyboardInputManagerWrapper_generateAutocorrectionsWithKeyboardState_candidateRange_completionHandler___block_invoke;
  v25 = &unk_27872F210;
  v26 = self;
  v27 = v15;
  v28 = v9;
  v29 = v10;
  v17 = v9;
  v18 = v15;
  v19 = v10;
  v20 = [(TIAccumulatingCandidateHandler *)v16 initWithHandlerBlock:&v22];
  v21 = [(TIKeyboardInputManagerWrapper *)self inputManager:v22];
  [v21 generateAutocorrectionsWithKeyboardState:v17 candidateRange:location candidateHandler:{length, v20}];
}

void __107__TIKeyboardInputManagerWrapper_generateAutocorrectionsWithKeyboardState_candidateRange_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 56) + 16))();
  v4 = *(a1 + 32);
  kdebug_trace();
  v5 = kac_get_log();
  v6 = os_signpost_id_make_with_pointer(v5, (*(a1 + 32) ^ 1));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v5, OS_SIGNPOST_INTERVAL_END, v7, "kbdManager.generateAutocorrections", &unk_22CCA4FEF, v13, 2u);
    }
  }

  v8 = [*(a1 + 32) logger];
  v9 = [*(a1 + 32) inputManager];
  v10 = [v9 humanReadableTrace];
  [v8 logAutocorrections:v3 trace:v10 forKeyboardState:*(a1 + 40) requestToken:0];

  v11 = [*(a1 + 32) inputManager];
  [v11 candidatesOfferedFeedback:v3 keyboardState:*(a1 + 48)];

  v12 = [*(a1 + 32) inputManager];
  [v12 clearHumanReadableTrace];
}

- (void)handleKeyboardInput:(id)a3 acceptedSecureCandidate:(id)a4 keyboardState:(id)a5 completionHandler:(id)a6
{
  v69[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v67 = a6;
  v13 = [v10 acceptedCandidate];

  if (v13 == v11)
  {
    v21 = 0;
  }

  else
  {
    [v10 setAcceptedCandidate:v11];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v11;
      v15 = [v14 proactivePredictedItem];
      if (v15)
      {
        v16 = v15;
        v17 = [v14 proactivePredictedItem];
        if ([v17 itemType] == 1)
        {
          v18 = [v14 proactivePredictedItem];
          v19 = [v18 operationData];
          v20 = v19 == 0;
        }

        else
        {
          v20 = 1;
        }
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 1;
    }

    v22 = [v10 acceptedCandidate];
    v23 = [v22 candidate];
    v24 = [v23 length];

    if (v20 && v24)
    {
      v25 = MEMORY[0x277CCACA8];
      v26 = [v10 acceptedCandidate];
      v27 = [v26 candidate];
      v28 = [v10 string];
      v29 = v28;
      v30 = &stru_283FDFAF8;
      if (v28)
      {
        v30 = v28;
      }

      v31 = [v25 stringWithFormat:@"%@%@", v27, v30];
      [v10 setString:v31];
    }

    else
    {
      [v10 setString:&stru_283FDFAF8];
    }

    v32 = [(TIKeyboardInputManagerWrapper *)self inputManager];
    v33 = [v10 acceptedCandidate];
    v34 = [v33 input];
    v35 = [v32 deletionCountForString:v34];

    v36 = [v10 acceptedCandidate];
    v37 = [v36 customInfoType];

    if (v37 == 4096)
    {
      v21 = 0;
    }

    else
    {
      v21 = v35;
    }
  }

  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:v12 withInputEvent:v10];
  v38 = [(TIKeyboardInputManagerWrapper *)self logger];
  if (v38)
  {
    v66 = [v12 copy];
  }

  else
  {
    v66 = 0;
  }

  v39 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  if ([v39 isHardwareKeyboardAutocorrectionEnabled])
  {
    v40 = [v10 touchEvent];

    if (v40)
    {
      goto LABEL_28;
    }

    v39 = [(TIKeyboardInputManagerWrapper *)self inputManager];
    [v39 addSynthesizedTouchToInput:v10 keyboardState:v12];
  }

LABEL_28:
  v41 = [v10 touchEvent];

  if (v41)
  {
    v42 = [(TIKeyboardInputManagerWrapper *)self inputManager];
    v43 = [v10 touchEvent];
    [v42 skipHitTestForTouchEvent:v43 keyboardState:v12];
  }

  v44 = [v10 acceptedCandidate];

  if (v44)
  {
    v45 = [(TIKeyboardInputManagerWrapper *)self inputManager];
    v46 = [v10 acceptedCandidate];
    [v45 textAccepted:v46 fromPredictiveInputBar:objc_msgSend(v10 withInput:{"isSynthesizedByAcceptingCandidate"), v10}];
  }

  v47 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [v47 syncToKeyboardState:v12];

  v48 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v49 = [v48 handleKeyboardInput:v10];

  if (![v12 secureTextEntry] || (objc_msgSend(v12, "textInputTraits"), v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v50, "keyboardAppearance"), v50, v51 != 5))
  {
    v52 = +[TIAppAutofillManager sharedInstance];
    v53 = [v52 secureCandidateRenderer];

    if (v13 == v11)
    {
LABEL_42:
      if ([v12 needAutofill])
      {
        v57 = +[TIAppAutofillManager sharedInstance];
        v58 = [v57 secureCandidateRenderer];
        [v58 clearSecureCandidateCache];
      }

      else
      {
        [v53 clearSecureCandidateCache];
      }

      goto LABEL_46;
    }

    [v49 setDeletionCount:v21];
    if ([v11 customInfoType] == 1024)
    {
      v68 = @"AutofillSuggestedUsername";
      v54 = [v11 candidate];
      v69[0] = v54;
      v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:&v68 count:1];
    }

    else
    {
      if (([v11 customInfoType] & 0x800) != 0)
      {
        v56 = 0;
        goto LABEL_41;
      }

      v54 = [v10 acceptedCandidate];
      v55 = [v53 cachedPayloadForSecureCandidateSlotID:{objc_msgSend(v54, "slotID")}];
    }

    v56 = v55;

LABEL_41:
    [(TIKeyboardInputManagerWrapper *)self _updateKeyboardOutput:v49 withSecureCandidatePayload:v56 keyboardState:v12];

    goto LABEL_42;
  }

LABEL_46:
  v59 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v60 = [v59 keyboardConfiguration];

  v67[2](v67, v49, v60);
  v61 = [(TIKeyboardInputManagerWrapper *)self logger];
  v62 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v63 = [v62 humanReadableTrace];
  [v61 logKeyboardOutput:v49 keyboardConfiguration:v60 trace:v63 forKeyboardInput:v10 keyboardState:v66];

  v64 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [v64 clearHumanReadableTrace];

  v65 = *MEMORY[0x277D85DE8];
}

- (void)handleKeyboardInput:(id)a3 keyboardState:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 acceptedCandidate];
  v12 = v11;
  if (v11 && [v11 slotID])
  {
    v13 = [v8 acceptedCandidate];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __85__TIKeyboardInputManagerWrapper_handleKeyboardInput_keyboardState_completionHandler___block_invoke;
    v14[3] = &unk_27872F1E8;
    v14[4] = self;
    v15 = v8;
    v16 = v9;
    v18 = v10;
    v17 = v12;
    [(TIKeyboardInputManagerWrapper *)self acceptSecureCandidate:v13 keyboardState:v16 completion:v14];
  }

  else
  {
    [(TIKeyboardInputManagerWrapper *)self updateAnalyticsForRejectedSuggestion:v12 keyboardState:v9];
    [(TIKeyboardInputManagerWrapper *)self handleKeyboardInput:v8 acceptedSecureCandidate:v12 keyboardState:v9 completionHandler:v10];
  }
}

uint64_t __85__TIKeyboardInputManagerWrapper_handleKeyboardInput_keyboardState_completionHandler___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[6];
  if (a2)
  {
    v5 = a1[5];
    v6 = a1[8];
    v7 = a2;
  }

  else
  {
    [v3 updateAnalyticsForRejectedSuggestion:a1[7] keyboardState:a1[6]];
    v3 = a1[4];
    v5 = a1[5];
    v4 = a1[6];
    v7 = a1[7];
    v6 = a1[8];
  }

  return [v3 handleKeyboardInput:v5 acceptedSecureCandidate:v7 keyboardState:v4 completionHandler:v6];
}

- (void)_updateKeyboardOutput:(id)a3 withSecureCandidatePayload:(id)a4 keyboardState:(id)a5
{
  v50 = a3;
  v7 = a4;
  v8 = a5;
  if (v50 && v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v7 mutableCopy];
      [v50 setCustomInfo:v9];
LABEL_5:

      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v7 stickerIdentifier];

      if (v10)
      {
        [v50 setAcceptedCandidate:v7];
        [v50 setTextToCommit:&stru_283FDFAF8];
        goto LABEL_16;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
      v11 = [v9 proactivePredictedItem];
      if (!v11)
      {
        goto LABEL_29;
      }

      v12 = v11;
      v13 = [v9 proactivePredictedItem];
      if ([v13 itemType] == 1)
      {
        v14 = [v9 proactivePredictedItem];
        v15 = [v14 operationData];

        if (!v15)
        {
          goto LABEL_29;
        }

        v16 = [v9 proactivePredictedItem];
        v17 = [v16 operationData];
        v18 = [v17 objectForKey:@"bundleID"];
        v19 = [v18 isEqualToString:@"com.apple.messages.currentLocation"];

        if (v19)
        {
          v12 = [MEMORY[0x277CBEB38] dictionary];
          [v12 setObject:@"com.apple.messages.currentLocation" forKey:*MEMORY[0x277D6F8B8]];
          v20 = [v9 proactivePredictedItem];
          v21 = [v20 identifier];
          v22 = [v21 isEqualToString:@"currentLocation"];

          if (v22)
          {
            [v50 setShouldSendCurrentLocation:1];
            v23 = MEMORY[0x277D6F900];
          }

          else
          {
            v31 = [v9 proactivePredictedItem];
            v32 = [v31 identifier];
            v33 = [v32 isEqualToString:@"requestLocation"];

            if (!v33)
            {
LABEL_25:
              [v50 setCustomInfo:v12];
LABEL_28:

LABEL_29:
              v36 = +[TIProactiveQuickTypeManager sharedInstance];
              v37 = [v36 usePQT2Flow];

              v38 = [v9 proactivePredictedItem];
              v39 = v38;
              if (v37)
              {
                if (!v38)
                {
                  goto LABEL_5;
                }

                v40 = [v9 proactivePredictedItem];
                if (![v40 itemType])
                {
                  v41 = [v8 needContactAutofill];

                  if (!v41)
                  {
                    goto LABEL_5;
                  }

                  v39 = [v8 documentState];
                  v40 = [v39 contextBeforeInput];
                  [v50 setDeletionCount:{objc_msgSend(v40, "length")}];
                }
              }

              else
              {
                if (!v38)
                {
                  goto LABEL_5;
                }

                v40 = [v9 proactivePredictedItem];
                if (![v40 itemType])
                {
                  v42 = [v9 proactivePredictedItem];
                  v43 = [v42 trigger];
                  if (v43)
                  {
                    v44 = v43;
                    v49 = [v9 proactivePredictedItem];
                    v45 = [v49 trigger];
                    v46 = [v45 attributedString];
                    v47 = [v46 objectForKey:@"contextBeforeInput"];

                    if (!v47)
                    {
                      goto LABEL_5;
                    }

                    v39 = [v9 proactivePredictedItem];
                    v40 = [v39 trigger];
                    v42 = [v40 attributedString];
                    v48 = [v42 objectForKey:@"contextBeforeInput"];
                    [v50 setDeletionCount:{objc_msgSend(v48, "length")}];
                  }
                }
              }

              goto LABEL_5;
            }

            v23 = MEMORY[0x277D6F908];
          }

          v34 = [MEMORY[0x277CCABB0] numberWithBool:1];
          [v12 setObject:v34 forKey:*v23];

          goto LABEL_25;
        }

        v24 = [v9 proactivePredictedItem];
        v25 = [v24 operationData];
        v26 = [v25 objectForKey:@"bundleID"];
        v27 = [v26 isEqualToString:@"com.apple.SafetyMonitorApp.SafetyMonitorMessages"];

        v28 = [v9 proactivePredictedItem];
        v12 = v28;
        if (v27)
        {
          v29 = [v28 identifier];
          v30 = [v29 isEqualToString:@"start check-in"];

          if (!v30)
          {
            goto LABEL_29;
          }

          v12 = [MEMORY[0x277CBEB38] dictionary];
          [v12 setObject:@"com.apple.SafetyMonitorApp.SafetyMonitorMessages" forKey:*MEMORY[0x277D6F8B8]];
          goto LABEL_25;
        }

        v13 = [v28 operationData];
        v35 = [v13 mutableCopy];
        [v50 setCustomInfo:v35];
      }

      goto LABEL_28;
    }
  }

LABEL_16:
}

- (void)updateAnalyticsForRejectedSuggestion:(id)a3 keyboardState:(id)a4
{
  v13 = a3;
  v5 = a4;
  v6 = +[TIAppAutofillManager sharedInstance];
  v7 = [v6 secureCandidateRenderer];

  if (v13)
  {
    v8 = [v13 slotID] != 0;
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  v9 = [v7 secureCandidateCache];
  if ([v9 count] != 0 && !v8)
  {
    if ([v5 needAutofill])
    {
      v10 = [v5 autofillMode];

      if (v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    v9 = +[TIProactiveQuickTypeManager sharedInstance];
    v11 = [v7 secureCandidateCache];
    v12 = [v11 allValues];
    [v9 suggestionNotAccepted:v12];
  }

LABEL_12:
}

- (void)acceptSecureCandidate:(id)a3 keyboardState:(id)a4 completion:(id)a5
{
  v93[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[TIAppAutofillManager sharedInstance];
  v12 = [v11 secureCandidateRenderer];

  if (!v8)
  {
    v17 = 0;
    goto LABEL_34;
  }

  v13 = [v8 slotID];
  v14 = v8;
  v15 = v14;
  if (v12)
  {
    v16 = v13 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = v14;
    goto LABEL_34;
  }

  v81 = v10;
  v18 = +[TIKeyboardSecureTouchManager sharedInstance];
  v19 = [v9 eventAuthenticationMessage];
  [v18 touchEventWithAuthenticationMessage:v19];

  v20 = +[TIKeyboardSecureTouchManager sharedInstance];
  v21 = [v20 verifySlotID:{objc_msgSend(v15, "slotID")}];

  v22 = self;
  if (v21)
  {
    [v12 cachedCandidateForSecureCandidate:v15];
  }

  else
  {
    [MEMORY[0x277D6F3D8] candidateWithUnchangedInput:&stru_283FDFAF8];
  }
  v17 = ;

  v23 = [v17 candidate];
  v80 = v12;
  if (![v23 length])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [v17 proactivePredictedItem];
      v25 = [v24 value];

      v23 = v25;
    }
  }

  v83 = v9;
  v84 = v17;
  v82 = v23;
  if ([v17 indexForMetrics])
  {
    if ([v17 indexForMetrics] != 1)
    {
      goto LABEL_20;
    }

    v78 = [(TIKeyboardInputManagerBase *)v22->_inputManager inputMode];
    v26 = [v78 languageWithRegion];
    v27 = [v17 proactiveTrigger];
    v28 = [v9 textInputTraits];
    v29 = [v28 textContentType];
    v93[0] = v23;
    v30 = MEMORY[0x277CBEA60];
    v31 = v23;
    v32 = v29;
    v33 = v27;
    v34 = v26;
    v35 = [v30 arrayWithObjects:v93 count:1];

    v36 = v34;
    v37 = v33;
    v38 = 7;
  }

  else
  {
    v78 = [(TIKeyboardInputManagerBase *)v22->_inputManager inputMode];
    v39 = [v78 languageWithRegion];
    v40 = [v17 proactiveTrigger];
    v28 = [v9 textInputTraits];
    v41 = [v28 textContentType];
    v93[0] = v23;
    v42 = MEMORY[0x277CBEA60];
    v43 = v23;
    v32 = v41;
    v33 = v40;
    v34 = v39;
    v35 = [v42 arrayWithObjects:v93 count:1];

    v36 = v34;
    v37 = v33;
    v38 = 6;
  }

  TIStatisticLogProactive(v36, v37, v38, v32, v35);

  v9 = v83;
  v17 = v84;
LABEL_20:
  v44 = +[TIProactiveQuickTypeManager sharedInstance];
  v45 = [(TIKeyboardInputManagerBase *)v22->_inputManager inputMode];
  v46 = [v45 languageWithRegion];
  v47 = [v9 textInputTraits];
  v48 = [v47 textContentType];
  [v44 suggestionAccepted:v46 fieldType:v48];

  v49 = [v17 proactiveTrigger];
  v50 = [v49 attributes];
  v51 = [v50 objectForKeyedSubscript:@"subtype"];

  if ([v49 triggerSourceType] == 2 || (objc_msgSend(v51, "isEqual:", @"recent location") & 1) != 0 || objc_msgSend(v51, "isEqual:", @"recent phone"))
  {
    if ([v49 triggerSourceType])
    {
      v52 = [v49 triggerSourceType] == 1;
    }

    else
    {
      v52 = 1;
    }

    v76 = v52;
    objc_opt_class();
    v77 = v51;
    v79 = v49;
    if (objc_opt_isKindOfClass())
    {
      v53 = v17;
    }

    else
    {
      v53 = 0;
    }

    [v17 proactiveTrigger];
    v55 = v54 = v17;
    v56 = [v55 attributes];
    v57 = [v56 objectForKeyedSubscript:@"field"];
    v58 = v57;
    if (v57)
    {
      v59 = v57;
    }

    else
    {
      v60 = [v54 proactiveTrigger];
      v61 = [v60 attributes];
      v59 = [v61 objectForKeyedSubscript:@"type"];
    }

    v62 = [v53 fromBundleId];
    v9 = v83;
    v63 = [v83 clientIdentifier];
    v64 = +[TIConnectionsMetricsTracker sharedInstance];
    v65 = [v53 ageForConnectionsMetrics];
    v66 = [v83 textInputTraits];
    v67 = [v66 textContentType];
    BYTE1(v75) = !v76;
    LOBYTE(v75) = v76;
    [v64 trackPredictionEngagmentWithConversion:1 age:v65 fieldType:v67 resultType:v59 fromBundleId:v62 targetApp:v63 linguistic:v75 semantic:?];

    v17 = v84;
    v51 = v77;
    v49 = v79;
  }

  v12 = v80;
  v10 = v81;
LABEL_34:
  if ([v8 customInfoType] == 64 || objc_msgSend(v8, "customInfoType") == 512)
  {
    v68 = +[TIAppAutofillManager sharedInstance];
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __80__TIKeyboardInputManagerWrapper_acceptSecureCandidate_keyboardState_completion___block_invoke;
    v89[3] = &unk_27872F1C0;
    v92 = v10;
    v90 = v17;
    v91 = v8;
    [v68 shouldAcceptOneTimeCode:v91 completion:v89];
  }

  else if ([v8 customInfoType] == 1024)
  {
    v70 = +[TIAppAutofillManager sharedInstance];
    [v70 presentHideMyEmailUI:v8 keyboardState:v9 completion:v10];
  }

  else
  {
    if ([v9 needAutofill])
    {
      v71 = +[TIAppAutofillManager sharedInstance];
      v72 = [v71 secureCandidateRenderer];
      v73 = [v72 cachedPayloadForSecureCandidateSlotID:{objc_msgSend(v8, "slotID")}];
    }

    else
    {
      v73 = [v12 cachedPayloadForSecureCandidateSlotID:{objc_msgSend(v8, "slotID")}];
    }

    v74 = +[TIAppAutofillManager sharedInstance];
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __80__TIKeyboardInputManagerWrapper_acceptSecureCandidate_keyboardState_completion___block_invoke_2;
    v85[3] = &unk_27872F1C0;
    v88 = v10;
    v86 = v17;
    v87 = v8;
    [v74 shouldAcceptAutofill:v87 withPayload:v73 completion:v85];
  }

  v69 = *MEMORY[0x277D85DE8];
}

uint64_t __80__TIKeyboardInputManagerWrapper_acceptSecureCandidate_keyboardState_completion___block_invoke(uint64_t a1, int a2)
{
  v2 = 40;
  if (a2)
  {
    v2 = 32;
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + v2));
}

uint64_t __80__TIKeyboardInputManagerWrapper_acceptSecureCandidate_keyboardState_completion___block_invoke_2(uint64_t a1, int a2)
{
  v2 = 40;
  if (a2)
  {
    v2 = 32;
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + v2));
}

- (void)syncToKeyboardState:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  kdebug_trace();
  v8 = kac_get_log();
  v9 = os_signpost_id_make_with_pointer(v8, self);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "kbdManager.syncState", &unk_22CCA4FEF, buf, 2u);
    }
  }

  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:v6];
  v11 = [(TIKeyboardInputManagerWrapper *)self logger];
  if (v11)
  {
    v12 = [v6 copy];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __71__TIKeyboardInputManagerWrapper_syncToKeyboardState_completionHandler___block_invoke;
  v24[3] = &unk_27872F198;
  v14 = v7;
  v26 = v14;
  v24[4] = self;
  v15 = v12;
  v25 = v15;
  v16 = [v13 syncToKeyboardState:v6 completionHandler:v24];

  if ((v16 & 1) == 0)
  {
    v17 = [(TIKeyboardInputManagerWrapper *)self inputManager];
    [v17 syncToKeyboardState:v6];

    v18 = [(TIKeyboardInputManagerWrapper *)self inputManager];
    v19 = [v18 keyboardConfiguration];

    (*(v14 + 2))(v14, v19);
    v20 = [(TIKeyboardInputManagerWrapper *)self logger];
    [v20 logKeyboardConfig:v19 forSyncToKeyboardState:v15];

    kdebug_trace();
    v21 = kac_get_log();
    v22 = os_signpost_id_make_with_pointer(v21, self);
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v23 = v22;
      if (os_signpost_enabled(v21))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22CA55000, v21, OS_SIGNPOST_INTERVAL_END, v23, "kbdManager.syncState", &unk_22CCA4FEF, buf, 2u);
      }
    }
  }
}

void __71__TIKeyboardInputManagerWrapper_syncToKeyboardState_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  v6 = [*(a1 + 32) logger];
  [v6 logKeyboardConfig:v5 forSyncToKeyboardState:*(a1 + 40)];

  v7 = *(a1 + 32);
  kdebug_trace();
  v8 = kac_get_log();
  v9 = os_signpost_id_make_with_pointer(v8, *(a1 + 32));
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v8, OS_SIGNPOST_INTERVAL_END, v10, "kbdManager.syncState", &unk_22CCA4FEF, v11, 2u);
    }
  }
}

- (void)handleKeyboardState:(id)a3 withInputEvent:(id)a4
{
  v4 = a3;
  v5 = [v4 canSuggestSupplementalItemsForCurrentSelection];
  v6 = +[TITransientLexiconManager sharedInstance];
  [v6 setSupplementalLexiconSearchEnabled:v5];

  v9 = +[TITransientLexiconManager sharedInstance];
  v7 = [v9 supplementalLexicons];
  v8 = [v4 supplementalLexiconIdentifier];

  [v7 setActiveLexiconWithIdentifier:v8];
}

- (void)setLogger:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [v5 setInputManagerLogger:v4];
}

@end