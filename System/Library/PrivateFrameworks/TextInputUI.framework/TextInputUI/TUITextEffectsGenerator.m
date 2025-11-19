@interface TUITextEffectsGenerator
- (BOOL)_endsWithWhitespace:(id)a3;
- (BOOL)shouldGenerateCandidateForContext:(id)a3;
- (TUITextEffectsGenerator)initWithLocale:(id)a3;
- (id)_keyboardPrimaryLanguageLocale;
- (id)supportedTextEffectNames;
- (void)_generateCandidatesForContextText:(id)a3 typedText:(id)a4 usesCandidateSelection:(BOOL)a5 completion:(id)a6;
- (void)_updateTESLocaleDataIfNeeded;
- (void)generateCandidatesWithContext:(id)a3 completion:(id)a4;
- (void)peekAtCandidates:(id)a3 forContext:(id)a4;
- (void)syncToKeyboardState:(id)a3;
@end

@implementation TUITextEffectsGenerator

- (void)_updateTESLocaleDataIfNeeded
{
  v3 = [(TUITextEffectsGenerator *)self _keyboardPrimaryLanguageLocale];
  p_locale = &self->_locale;
  if (self->_locale != v3)
  {
    v7 = v3;
    objc_storeStrong(p_locale, v3);
    v5 = [objc_alloc(MEMORY[0x1E699BB18]) initWithLocale:self->_locale];
    localeData = self->_localeData;
    self->_localeData = v5;

    v3 = v7;
  }

  MEMORY[0x1EEE66BB8](p_locale, v3);
}

- (id)_keyboardPrimaryLanguageLocale
{
  v2 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v3 = [v2 currentInputMode];

  v4 = [v3 primaryLanguage];
  v5 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v4];

  return v5;
}

- (void)peekAtCandidates:(id)a3 forContext:(id)a4
{
  v22 = a3;
  v6 = a4;
  if ([v22 candidateSourceType] || (objc_msgSend(v22, "candidateResultSet"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "candidates"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v9, !v11))
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v12 = self;
    objc_sync_enter(v12);
    v7 = [(TUITextEffectsGenerator *)v12 delayedGenerationContext];
    v8 = [(TUITextEffectsGenerator *)v12 resultsCallback];
    objc_sync_exit(v12);

    v13 = [v7 requestToken];
    v14 = [v6 requestToken];
    v15 = [v13 isSameRequestAs:v14];

    if (v15)
    {
      v16 = [v22 candidateResultSet];
      v17 = [v16 firstCandidate];
      v18 = [v17 candidate];
      v19 = [v7 keyboardState];
      v20 = [v19 documentState];
      v21 = [v20 contextBeforeInput];
      [(TUITextEffectsGenerator *)v12 _generateCandidatesForContextText:v18 typedText:v21 usesCandidateSelection:1 completion:v8];
    }
  }
}

- (void)syncToKeyboardState:(id)a3
{
  v9 = a3;
  v4 = [v9 textInputTraits];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [v9 textInputTraits];
    v7 = [v6 allowsTextAnimationsType];

    v8 = v7 == 2;
  }

  else
  {
    v8 = 0;
  }

  [(TUITextEffectsGenerator *)self setEnabled:v8];
  [(TUITextEffectsGenerator *)self _updateTESLocaleDataIfNeeded];
}

- (id)supportedTextEffectNames
{
  v2 = [MEMORY[0x1E69DD7C0] animationNamesForDomain:0];
  v3 = [v2 copy];

  return v3;
}

- (BOOL)_endsWithWhitespace:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v5 = [v4 longCharacterIsMember:{objc_msgSend(v3, "_lastLongCharacter")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_generateCandidatesForContextText:(id)a3 typedText:(id)a4 usesCandidateSelection:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v58[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__9855;
  v55 = __Block_byref_object_dispose__9856;
  v56 = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy__9855;
  v49[4] = __Block_byref_object_dispose__9856;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__9855;
  v47 = __Block_byref_object_dispose__9856;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v13 = [(TUITextEffectsGenerator *)self localeData];
  v14 = [v10 length];
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __105__TUITextEffectsGenerator__generateCandidatesForContextText_typedText_usesCandidateSelection_completion___block_invoke;
  v32 = &unk_1E72D7E70;
  v15 = v10;
  v33 = v15;
  v35 = &v51;
  v16 = v11;
  v34 = v16;
  v36 = v49;
  v37 = &v43;
  v38 = &v39;
  [v13 enumerateTextEffectCandidatesInString:v15 searchRange:0 options:v14 usingBlock:{6, &v29}];

  if (v52[5] && v44[5])
  {
    v17 = [MEMORY[0x1E69D96D8] candidateWithCandidate:v29 forInput:v30 forTextEffectName:{v31, v32, v33}];
    v18 = v17;
    if (*(v40 + 24) == 1)
    {
      v19 = [objc_alloc(MEMORY[0x1E69D9588]) initWithAutocorrection:v17 alternateCorrections:0];
      v20 = MEMORY[0x1E69D9570];
      v21 = v19;
      v22 = 0;
    }

    else
    {
      v23 = MEMORY[0x1E69D9570];
      v58[0] = v17;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:1];
      v20 = v23;
      v21 = 0;
      v22 = v19;
    }

    v24 = [v20 listWithCorrections:v21 predictions:v22 emojiList:0 inlineCompletions:0];

    if (v7)
    {
      v25 = MEMORY[0x1E69D95E8];
      v57 = v18;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
      v27 = [v25 setWithCandidates:v26];

      v28 = [_TUIKeyboardCandidateContainer forSourceType:3 withKeyboardCandidateResultSet:v27];
      v12[2](v12, v28);
    }

    else
    {
      v27 = [_TUIKeyboardCandidateContainer forSourceType:3 withAutocorrectionList:v24];
      v12[2](v12, v27);
    }
  }

  else
  {
    v18 = [_TUIKeyboardCandidateContainer forSourceType:3, v29, v30, v31, v32, v33];
    v12[2](v12, v18);
  }

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(v49, 8);
  _Block_object_dispose(&v51, 8);
}

void __105__TUITextEffectsGenerator__generateCandidatesForContextText_typedText_usesCandidateSelection_completion___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v17 = a2;
  v5 = [v17 matchRange];
  v7 = v6 + _isTextEffectMatchingStringRangeFollowedByPunctuationInTypingContext(v5, v6, *(a1 + 32));
  if (v7 + v5 == [*(a1 + 32) length])
  {
    v8 = [*(a1 + 32) substringWithRange:{v5, v7}];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (v7 + v5 <= [*(a1 + 40) length])
    {
      v11 = [*(a1 + 40) substringWithRange:{v5, v7}];
      v12 = *(*(a1 + 56) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    v14 = [MEMORY[0x1E699BB18] animationNameForTextEffectType:{objc_msgSend(v17, "effectType")}];
    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    *(*(*(a1 + 72) + 8) + 24) = [v17 suggestionBehavior] == 2;
    *a3 = 1;
  }
}

- (void)generateCandidatesWithContext:(id)a3 completion:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v13 keyboardState];
  v8 = [v7 documentState];
  v9 = [v8 contextBeforeInput];

  if ([v13 usesCandidateSelection] && (objc_msgSend(v7, "inputForMarkedText"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v11))
  {
    [(TUITextEffectsGenerator *)self setDelayedGenerationContext:v13];
    [(TUITextEffectsGenerator *)self setResultsCallback:v6];
  }

  else
  {
    [(TUITextEffectsGenerator *)self setDelayedGenerationContext:0];
    [(TUITextEffectsGenerator *)self setResultsCallback:0];
    if (-[TUITextEffectsGenerator shouldGenerateCandidateForContext:](self, "shouldGenerateCandidateForContext:", v13) && [v9 length] && !-[TUITextEffectsGenerator _endsWithWhitespace:](self, "_endsWithWhitespace:", v9))
    {
      -[TUITextEffectsGenerator _generateCandidatesForContextText:typedText:usesCandidateSelection:completion:](self, "_generateCandidatesForContextText:typedText:usesCandidateSelection:completion:", v9, v9, [v13 usesCandidateSelection], v6);
    }

    else
    {
      v12 = [_TUIKeyboardCandidateContainer forSourceType:3];
      v6[2](v6, v12);
    }
  }
}

- (BOOL)shouldGenerateCandidateForContext:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__TUITextEffectsGenerator_shouldGenerateCandidateForContext___block_invoke;
  block[3] = &unk_1E72D8058;
  block[4] = &v8;
  if (shouldGenerateCandidateForContext__onceToken_9870 != -1)
  {
    dispatch_once(&shouldGenerateCandidateForContext__onceToken_9870, block);
  }

  v5 = (![v4 usesCandidateSelection] || *(v9 + 24) == 1) && -[TUITextEffectsGenerator enabled](self, "enabled");
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __61__TUITextEffectsGenerator_shouldGenerateCandidateForContext___block_invoke(uint64_t a1)
{
  result = _os_feature_enabled_impl();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (TUITextEffectsGenerator)initWithLocale:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TUITextEffectsGenerator;
  v5 = [(TUITextEffectsGenerator *)&v11 init];
  locale = v5->_locale;
  v5->_locale = v4;
  v7 = v4;

  v8 = [MEMORY[0x1E699BB18] localeDataWithLocale:v5->_locale];
  localeData = v5->_localeData;
  v5->_localeData = v8;

  return v5;
}

@end