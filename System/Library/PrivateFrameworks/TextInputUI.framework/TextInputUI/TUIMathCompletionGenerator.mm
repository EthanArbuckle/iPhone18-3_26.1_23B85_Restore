@interface TUIMathCompletionGenerator
- (BOOL)endsWithExpressionTriggerCharacter:(id)a3;
- (BOOL)shouldGenerateCandidateForContext:(id)a3;
- (TUIMathCompletionGenerator)init;
- (id)expressionMatchForLocation:(int64_t)a3 inTextStorage:(id)a4;
- (id)expressionMatches:(id)a3 range:(_NSRange)a4;
- (id)normalizeExpressionString:(id)a3;
- (void)generateCandidatesWithContext:(id)a3 completion:(id)a4;
- (void)syncToKeyboardState:(id)a3;
@end

@implementation TUIMathCompletionGenerator

- (TUIMathCompletionGenerator)init
{
  v3.receiver = self;
  v3.super_class = TUIMathCompletionGenerator;
  return [(TUIMathCompletionGenerator *)&v3 init];
}

- (id)expressionMatchForLocation:(int64_t)a3 inTextStorage:(id)a4
{
  v6 = a4;
  [v6 getLineStart:0 end:0 contentsEnd:0 forRange:{0, 0}];
  v7 = [(TUIMathCompletionGenerator *)self expressionMatches:v6 range:0, a3];

  v8 = [v7 lastObject];
  v9 = [v8 range];
  v10 = 0;
  if (v9 + v11 == a3)
  {
    v10 = v8;
  }

  return v10;
}

- (id)expressionMatches:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69922A0];
  v13 = *MEMORY[0x1E6992298];
  v7 = MEMORY[0x1E696B098];
  v8 = a3;
  v9 = [v7 valueWithRange:{location, length}];
  v14[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = [v6 scan:v8 options:v10];

  return v11;
}

- (id)normalizeExpressionString:(id)a3
{
  v4 = a3;
  if (-[TUIMathCompletionGenerator endsWithExpressionTriggerCharacter:](self, "endsWithExpressionTriggerCharacter:", v4) && [v4 length])
  {
    v5 = [v4 substringToIndex:{objc_msgSend(v4, "length") - 1}];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (BOOL)endsWithExpressionTriggerCharacter:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [&unk_1F03D9038 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(&unk_1F03D9038);
        }

        if ([v3 hasSuffix:*(*(&v10 + 1) + 8 * i)])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [&unk_1F03D9038 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (void)syncToKeyboardState:(id)a3
{
  v12 = a3;
  v4 = [v12 textInputTraits];
  v5 = objc_opt_respondsToSelector();

  v6 = v12;
  if (v5)
  {
    v7 = [v12 textInputTraits];
    v8 = [v7 mathExpressionCompletionType];

    if (v8 == 1)
    {
      v9 = 0;
    }

    else
    {
      v10 = [MEMORY[0x1E69D9680] sharedPreferencesController];
      v11 = [v10 valueForPreferenceKey:*MEMORY[0x1E69D9870]];
      v9 = [v11 BOOLValue];
    }

    [(TUIMathCompletionGenerator *)self setEnabled:v9];
    v6 = v12;
  }
}

- (void)generateCandidatesWithContext:(id)a3 completion:(id)a4
{
  v34[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 keyboardState];
  v9 = [v8 documentState];
  v10 = [v9 contextBeforeInput];

  v11 = [v8 documentState];
  v12 = [v11 contextAfterInput];

  if (![(TUIMathCompletionGenerator *)self shouldGenerateCandidateForContext:v6]|| ![(TUIMathCompletionGenerator *)self endsWithExpressionTriggerCharacter:v10])
  {
    goto LABEL_8;
  }

  v13 = -[TUIMathCompletionGenerator expressionMatchForLocation:inTextStorage:](self, "expressionMatchForLocation:inTextStorage:", [v10 length], v10);
  v14 = v13;
  if (!v13)
  {
LABEL_7:

LABEL_8:
    v14 = [_TUIKeyboardCandidateContainer forSourceType:1];
    v7[2](v7, v14);
    goto LABEL_9;
  }

  v15 = [v13 range];
  v17 = [v10 substringWithRange:{v15, v16}];
  v18 = [(TUIMathCompletionGenerator *)self normalizeExpressionString:v17];
  if (![v18 length])
  {

    goto LABEL_7;
  }

  v24 = MEMORY[0x1E69922A0];
  v33[0] = *MEMORY[0x1E6992240];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v34[0] = v25;
  v33[1] = *MEMORY[0x1E6992228];
  v23 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v34[1] = v23;
  v33[2] = *MEMORY[0x1E6992218];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v34[2] = v22;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __71__TUIMathCompletionGenerator_generateCandidatesWithContext_completion___block_invoke;
  v26[3] = &unk_1E72D7CF8;
  v32 = v7;
  v27 = v12;
  v28 = v17;
  v29 = self;
  v30 = v8;
  v31 = v6;
  v20 = v17;
  v21 = [v24 evaluate:v18 options:v19 resultHandler:v26];

LABEL_9:
}

void __71__TUIMathCompletionGenerator_generateCandidatesWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5 || [v5 isTrivial])
  {
    v7 = *(a1 + 72);
    v8 = [_TUIKeyboardCandidateContainer forSourceType:1];
    (*(v7 + 16))(v7, v8);

    goto LABEL_21;
  }

  v9 = [v5 formattedResult];
  v10 = [*(a1 + 32) length];
  v11 = MEMORY[0x1E69D95F0];
  if (!v10)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", *(a1 + 40), v9];
    v12 = [v11 candidateWithCandidate:v20 forInput:*(a1 + 40) property:1];

    v13 = [MEMORY[0x1E69D95F0] candidateWithCandidate:v9 forInput:*(a1 + 40)];
    v14 = [objc_alloc(MEMORY[0x1E69D9588]) initWithAutocorrection:v12 alternateCorrections:0];
    v21 = [*(a1 + 56) inlineCompletionEnabled];
    v22 = MEMORY[0x1E69D9570];
    if (v21)
    {
      v40 = v13;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
      v39 = v12;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
      v19 = [v22 listWithCorrections:v14 predictions:0 emojiList:v23 inlineCompletions:v24];

LABEL_12:
      goto LABEL_13;
    }

    v38 = v13;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
    v25 = v22;
    v26 = v14;
    v27 = 0;
    v28 = v23;
LABEL_11:
    v19 = [v25 listWithCorrections:v26 predictions:v27 emojiList:v28 inlineCompletions:0];
    goto LABEL_12;
  }

  v12 = [MEMORY[0x1E69D95F0] candidateWithUnchangedInput:*(a1 + 40)];
  v13 = [MEMORY[0x1E69D95F0] candidateWithCandidate:v9 forInput:&stru_1F03BA8F8];
  v14 = [objc_alloc(MEMORY[0x1E69D9588]) initWithAutocorrection:v12 alternateCorrections:0];
  v15 = *(a1 + 48);
  v16 = *(a1 + 32);
  v17 = [v5 formattedResult];
  LODWORD(v16) = [v15 textBeginsWithPrediction:v16 prediction:v17];

  v18 = MEMORY[0x1E69D9570];
  if (!v16)
  {
    v41[0] = v13;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    v25 = v18;
    v26 = v14;
    v27 = v23;
    v28 = 0;
    goto LABEL_11;
  }

  v19 = [MEMORY[0x1E69D9570] listWithCorrections:v14 predictions:0 emojiList:0 inlineCompletions:0];
LABEL_13:

  if ([*(a1 + 64) usesCandidateSelection])
  {
    v29 = [MEMORY[0x1E69D95F0] candidateWithCandidate:v9 forInput:*(a1 + 40)];
    v30 = MEMORY[0x1E69D95E8];
    v37 = v29;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
    v32 = [v30 setWithCandidates:v31];

    v33 = TUICandidateGenerationLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18FFDC000, v33, OS_LOG_TYPE_ERROR, "[Candidate selection] - preparing container with candidate resultset.", buf, 2u);
    }

    v34 = [_TUIKeyboardCandidateContainer forSourceType:1 withKeyboardCandidateResultSet:v32];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v35 = TUICandidateGenerationLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18FFDC000, v35, OS_LOG_TYPE_ERROR, "[Autocorrection] - preparing container with autocorrection resultset.", buf, 2u);
    }

    v29 = [_TUIKeyboardCandidateContainer forSourceType:1 withAutocorrectionList:v19];
    (*(*(a1 + 72) + 16))();
  }

LABEL_21:
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
  block[2] = __64__TUIMathCompletionGenerator_shouldGenerateCandidateForContext___block_invoke;
  block[3] = &unk_1E72D8058;
  block[4] = &v8;
  if (shouldGenerateCandidateForContext__onceToken != -1)
  {
    dispatch_once(&shouldGenerateCandidateForContext__onceToken, block);
  }

  v5 = (![v4 usesCandidateSelection] || *(v9 + 24) == 1) && -[TUIMathCompletionGenerator enabled](self, "enabled");
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __64__TUIMathCompletionGenerator_shouldGenerateCandidateForContext___block_invoke(uint64_t a1)
{
  result = _os_feature_enabled_impl();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end