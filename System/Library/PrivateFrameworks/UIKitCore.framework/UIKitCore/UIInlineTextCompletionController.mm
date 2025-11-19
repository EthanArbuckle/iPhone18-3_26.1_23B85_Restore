@interface UIInlineTextCompletionController
+ (id)_documentTextThroughSelection:(id)a3;
- (BOOL)_doesFirstPredictedCharacterEndWord:(id)a3;
- (BOOL)_inlineCompletionPreference;
- (BOOL)_isCompletion:(id)a3 continuingLastCompletion:(id)a4;
- (BOOL)_shouldAcceptFirstWordOfCandidateForWordTerminator:(unsigned int)a3;
- (BOOL)_shouldShowInlineTextCompletionCoachingUI;
- (BOOL)canUndoAcceptedTextCompletion;
- (BOOL)hasPrompt;
- (UIInlineTextCompletionControllerDelegate)delegate;
- (UIKBAnalyticsDispatcher)analyticsDispatcher;
- (UITextInput)inputDelegate;
- (_UIInlineTextCompletion)oneWordTextCompletion;
- (id)_acceptTextCompletionWithInteraction:(int64_t)a3 wordTerminator:(id)a4;
- (id)_bestTextCompletion;
- (id)_candidateToUndoAcceptedTextCompletion;
- (id)_markedTextAttributes;
- (id)_oneWordTextCompletionFromTextCompletion:(id)a3;
- (id)_textCompletionPromptRectsForInput:(id)a3;
- (id)_textCompletions;
- (id)_upToNextWordTextCompletionFromTextCompletion:(id)a3;
- (id)acceptTextCompletionWithInteraction:(int64_t)a3 wordTerminator:(id)a4 outputHandledByCaller:(BOOL)a5;
- (int64_t)_acceptTypeForInteraction:(int64_t)a3 wordTerminator:(id)a4;
- (int64_t)_acceptTypeForTypeWordTerminator:(id)a3;
- (unint64_t)_inlineCompletionModeForTraitsWithCurrentPreference:(BOOL)a3;
- (unint64_t)currentInlineTextCompletionMode;
- (void)_acceptTextCompletion:(id)a3 learningMode:(id)a4;
- (void)_clearInlineCompletionCoachingTimer;
- (void)_clearTextCompletionPromptTimer;
- (void)_presentInlineTextCompletionCoachingUIWithExecutionContext:(id)a3;
- (void)_registerLearningForInlineCompletion:(id)a3 learningMode:(id)a4;
- (void)_removeTextCompletionPromptForReason:(int64_t)a3;
- (void)_touchInlineCompletionCoachingTimer;
- (void)_touchTextCompletionPromptTimer;
- (void)_updateTextCompletionPrompt:(id)a3 executionContext:(id)a4;
- (void)_updateTextCompletionPrompt:(id)a3 inputRects:(id)a4;
- (void)_updateTextCompletionPromptWithTextCompletion:(id)a3 parentView:(id)a4 inputRects:(id)a5;
- (void)didPerformKeyboardOutput:(id)a3;
- (void)selectionDidChange;
- (void)undoAcceptedTextCompletionExecutionContext:(id)a3;
- (void)updateTextCompletionDisplay;
- (void)updateTextCompletionPrompt;
- (void)updateTextCompletionPromptExecutionContext:(id)a3;
- (void)updateTextCompletionWithExternalSuggestion:(id)a3;
- (void)willAcceptPredictiveInput:(id)a3;
- (void)willPerformKeyboardOutput:(id)a3;
@end

@implementation UIInlineTextCompletionController

- (unint64_t)currentInlineTextCompletionMode
{
  v3 = [(UIInlineTextCompletionController *)self _inlineCompletionModeForTraitsWithCurrentPreference:[(UIInlineTextCompletionController *)self _inlineCompletionPreference]];
  if ([(UIInlineTextCompletionController *)self hasForwardProgress])
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_inlineCompletionPreference
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 preferencesActions];
  if ([v3 BOOLForPreferenceKey:*MEMORY[0x1E69D98B0]])
  {
    v4 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v5 = [v4 preferencesActions];
    v6 = [v5 BOOLForPreferenceKey:*MEMORY[0x1E69D9850]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UIInlineTextCompletionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)selectionDidChange
{
  [(UIInlineTextCompletionController *)self setHasForwardProgress:0];
  [(UIInlineTextCompletionController *)self _removeTextCompletionPromptForReason:9];
  v3 = _UIKBInlineTextCompletionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "Selection changed", v4, 2u);
  }
}

- (void)_clearInlineCompletionCoachingTimer
{
  v3 = [(UIInlineTextCompletionController *)self inlineCompletionCoachingTask];
  [v3 invalidate];

  [(UIInlineTextCompletionController *)self setInlineCompletionCoachingTask:0];
}

- (void)_clearTextCompletionPromptTimer
{
  v3 = [(UIInlineTextCompletionController *)self textCompletionPromptTask];
  [v3 invalidate];

  [(UIInlineTextCompletionController *)self setTextCompletionPromptTask:0];
}

- (void)updateTextCompletionDisplay
{
  if (!+[UIKeyboard usesInputSystemUI])
  {
    v3 = [(UIInlineTextCompletionController *)self delegate];
    v4 = [v3 inputDelegateManager];
    v5 = [v4 hasAsyncCapableInputDelegate];

    if ((v5 & 1) == 0 && -[UIInlineTextCompletionController hasPrompt](self, "hasPrompt") && (-[UIInlineTextCompletionController delegate](self, "delegate"), v6 = objc_claimAutoreleasedReturnValue(), [v6 autocorrectionController], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hasAutocorrection"), v7, v6, v8))
    {

      [(UIInlineTextCompletionController *)self updateTextCompletionPrompt];
    }

    else
    {

      [(UIInlineTextCompletionController *)self _touchTextCompletionPromptTimer];
    }
  }
}

- (BOOL)hasPrompt
{
  if (!+[UIKeyboard presentsInlineTextCompletionAsMarkedText])
  {
    return self->m_textCompletionPrompt != 0;
  }

  v3 = [(UIInlineTextCompletionController *)self presentingTextCompletionAsMarkedText];
  v4 = [v3 length] != 0;

  return v4;
}

- (UITextInput)inputDelegate
{
  v2 = [(UIInlineTextCompletionController *)self delegate];
  v3 = [v2 inputDelegateManager];
  v4 = [v3 textInputDelegate];

  return v4;
}

- (void)_touchTextCompletionPromptTimer
{
  v3 = [(UIInlineTextCompletionController *)self inputDelegate];

  if (v3)
  {
    v4 = [(UIInlineTextCompletionController *)self textCompletionPromptTask];
    v5 = [v4 isValid];

    if (v5)
    {
      v9 = [(UIInlineTextCompletionController *)self textCompletionPromptTask];
      [v9 resetTimer];
    }

    else
    {
      v6 = [(UIInlineTextCompletionController *)self delegate];
      v7 = [v6 taskQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __67__UIInlineTextCompletionController__touchTextCompletionPromptTimer__block_invoke;
      v10[3] = &unk_1E70FD058;
      v10[4] = self;
      [(UIInlineTextCompletionController *)self _updatePromptDelay];
      v8 = [v7 scheduleTask:v10 timeInterval:0 repeats:?];
      [(UIInlineTextCompletionController *)self setTextCompletionPromptTask:v8];
    }
  }
}

- (id)_markedTextAttributes
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = *off_1E70EC920;
  v2 = +[UIColor systemGrayColor];
  v7[0] = v2;
  v6[1] = *off_1E70EC8D0;
  v3 = +[UIColor clearColor];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (BOOL)_doesFirstPredictedCharacterEndWord:(id)a3
{
  v4 = a3;
  v5 = [v4 candidate];
  v6 = v5;
  v7 = &stru_1EFB14550;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = &stru_1EFB14550;
  }

  v9 = v8;

  v10 = [v4 input];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &stru_1EFB14550;
  }

  v12 = v11;

  v13 = [(__CFString *)v9 length];
  if (v13 > [(__CFString *)v12 length])
  {
    v7 = [(__CFString *)v9 substringFromIndex:[(__CFString *)v12 length]];
  }

  if ([(__CFString *)v7 length]&& (v14 = [(__CFString *)v7 _rangeOfLongCharacterAtIndex:0], v14 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v16 = [(__CFString *)v7 substringWithRange:v14, v15];
  }

  else
  {
    v16 = &stru_1EFB14550;
  }

  if ([(__CFString *)v16 length])
  {
    v17 = [(UIInlineTextCompletionController *)self delegate];
    v18 = [v17 inputManagerState];
    v19 = [v18 stringEndsWord:v16];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (unint64_t)_inlineCompletionModeForTraitsWithCurrentPreference:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIInlineTextCompletionController *)self delegate];
  v6 = [v5 textInputTraits];

  if (+[UIDictationController isRunning])
  {
    v7 = +[UIDictationController sharedInstance];
    v8 = [v7 isDictationPaused] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = +[UIScribbleInteraction isPencilInputExpected];
  v10 = 0;
  if ((v8 & 1) == 0 && !v9)
  {
    if (!+[UIKeyboard isInlineTextCompletionUIEnabled])
    {
LABEL_13:
      v10 = 0;
      goto LABEL_14;
    }

    if (+[UIKeyboard presentsInlineTextCompletionAsMarkedText])
    {
      v11 = [(UIInlineTextCompletionController *)self delegate];
      v12 = [v11 delegateSupportsCorrectionUI];
    }

    else
    {
      v12 = 1;
    }

    v10 = 0;
    if (v12 && v3)
    {
      if ([v6 isSecureTextEntry])
      {
        goto LABEL_13;
      }

      v14 = [v6 keyboardType];
      v10 = 0;
      if ((v14 > 0xB || ((1 << v14) & 0x930) == 0) && v14 != 127)
      {
        v15 = [v6 inlinePredictionType];
        if (v15 == 2)
        {
          v10 = 1;
          goto LABEL_14;
        }

        if (v15)
        {
          goto LABEL_13;
        }

        v16 = [(UIInlineTextCompletionController *)self delegate];
        v17 = [v16 inlineTextCompletionAllowedForAutocorrectionType];

        v18 = [v6 textContentType];
        if (v18)
        {
          v10 = 0;
        }

        else
        {
          v10 = v17;
        }
      }
    }
  }

LABEL_14:

  return v10;
}

- (id)_oneWordTextCompletionFromTextCompletion:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 input];
    v6 = [v4 candidate];
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__221;
    v23 = __Block_byref_object_dispose__221;
    v24 = 0;
    v7 = [v6 length];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__UIInlineTextCompletionController__oneWordTextCompletionFromTextCompletion___block_invoke;
    v15[3] = &unk_1E7127BC0;
    v8 = v5;
    v16 = v8;
    v18 = &v19;
    v9 = v6;
    v17 = v9;
    [v9 enumerateSubstringsInRange:0 options:v7 usingBlock:{3, v15}];
    if ([v20[5] length])
    {
      v10 = [v4 completion];
      v11 = [v10 candidateByReplacingWithCandidate:v20[5] input:v8];

      v12 = [v4 completion];
      v13 = [_UIInlineTextCompletion inlineTextCompletion:v11 source:v12];
    }

    else
    {
      v13 = 0;
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __77__UIInlineTextCompletionController__oneWordTextCompletionFromTextCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = a3 + a4;
  if (a3 + a4 > [*(a1 + 32) length])
  {
    v10 = [*(a1 + 40) substringToIndex:v9];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a7 = 1;
  }
}

- (id)_upToNextWordTextCompletionFromTextCompletion:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 input];
    v6 = [v4 candidate];
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__221;
    v23 = __Block_byref_object_dispose__221;
    v24 = 0;
    v7 = [v6 length];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __82__UIInlineTextCompletionController__upToNextWordTextCompletionFromTextCompletion___block_invoke;
    v15[3] = &unk_1E7127BC0;
    v8 = v5;
    v16 = v8;
    v18 = &v19;
    v9 = v6;
    v17 = v9;
    [v9 enumerateSubstringsInRange:0 options:v7 usingBlock:{3, v15}];
    if ([v20[5] length])
    {
      v10 = [v4 completion];
      v11 = [v10 candidateByReplacingWithCandidate:v20[5] input:v8];

      v12 = [v4 completion];
      v13 = [_UIInlineTextCompletion inlineTextCompletion:v11 source:v12];
    }

    else
    {
      v13 = 0;
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __82__UIInlineTextCompletionController__upToNextWordTextCompletionFromTextCompletion___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (a3 > [*(a1 + 32) length])
  {
    v10 = [*(a1 + 40) substringToIndex:a3];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a7 = 1;
  }
}

- (_UIInlineTextCompletion)oneWordTextCompletion
{
  v3 = [(UIInlineTextCompletionController *)self textCompletion];
  v4 = [(UIInlineTextCompletionController *)self _oneWordTextCompletionFromTextCompletion:v3];

  return v4;
}

- (id)_textCompletions
{
  v3 = [(UIInlineTextCompletionController *)self delegate];
  v4 = [v3 autocorrectionController];
  v5 = [v4 hasAutocorrection];

  v6 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v7 = [(UIInlineTextCompletionController *)self delegate];
    v8 = [v7 autocorrectionController];
    v9 = [v8 textCompletions];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }

    v6 = v11;
  }

  return v6;
}

- (id)_bestTextCompletion
{
  v63 = *MEMORY[0x1E69E9840];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v2 = [(UIInlineTextCompletionController *)self _textCompletions];
  v3 = [v2 countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (!v3)
  {
    goto LABEL_29;
  }

  v5 = v3;
  v6 = *v55;
  p_info = _UIKeyboardPopover.info;
  *&v4 = 138412546;
  v47 = v4;
  v48 = *v55;
  v49 = v2;
  do
  {
    v8 = 0;
    v50 = v5;
    do
    {
      if (*v55 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v9 = *(*(&v54 + 1) + 8 * v8);
      v10 = [v9 candidate];
      v11 = [v10 lowercaseString];

      v12 = [v9 input];
      v13 = [v12 lowercaseString];

      v14 = [v9 input];
      if (![v14 length])
      {

LABEL_11:
        v20 = [p_info + 396 inlineTextCompletion:v9 source:v9];
        goto LABEL_12;
      }

      v15 = [v11 hasPrefix:v13];

      if (v15)
      {
        goto LABEL_11;
      }

      v53 = v11;
      v16 = [v9 candidate];
      v17 = [v16 length];
      v18 = [v9 input];
      v19 = [v18 length];

      if (v17 < v19)
      {

        p_info = (_UIKeyboardPopover + 32);
        goto LABEL_13;
      }

      v21 = v9;
      v22 = [v21 input];
      v23 = [v22 componentsSeparatedByString:@" "];

      v24 = v21;
      if ([v23 count] >= 2)
      {
        v25 = [v23 lastObject];
        v26 = [v21 candidate];
        v24 = [v21 candidateByReplacingWithCandidate:v26 input:v25];
      }

      v51 = v21;
      v52 = v23;
      v27 = [v24 candidate];
      v28 = [v27 length];
      v29 = [v24 input];
      v30 = v28 - [v29 length];

      v31 = 0;
      while (1)
      {
        v32 = [v24 candidate];
        v33 = [v32 substringFromIndex:v31];

        v34 = [v33 lowercaseString];
        v35 = [v24 input];
        v36 = [v35 lowercaseString];
        v37 = [v34 hasPrefix:v36];

        if (v37)
        {
          break;
        }

        if (++v31 > v30)
        {
          goto LABEL_24;
        }
      }

      v38 = [v24 input];
      v39 = [v24 candidateByReplacingWithCandidate:v33 input:v38];

      v20 = [_UIInlineTextCompletion inlineTextCompletion:v39 source:v51];
      v40 = _UIKBInlineTextCompletionLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = _shortCandidateDescr(v51);
        v42 = _shortCompletionDescr(v20);
        *buf = v47;
        v59 = v41;
        v60 = 2112;
        v61 = v42;
        _os_log_impl(&dword_188A29000, v40, OS_LOG_TYPE_DEFAULT, "NOTICE: text completion with mismatched input was reconciled with contextBeforeInput\n    original=%@\n    reconciled=%@", buf, 0x16u);
      }

      if (!v20)
      {
LABEL_24:
        v43 = _UIKBInlineTextCompletionLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = _shortCandidateDescr(v51);
          *buf = 138412290;
          v59 = v44;
          _os_log_impl(&dword_188A29000, v43, OS_LOG_TYPE_DEFAULT, "WARNING: text completion with mismatched input could not be reconciled with contextBeforeInput\n    %@", buf, 0xCu);
        }

        v20 = 0;
      }

      v6 = v48;
      v2 = v49;
      v5 = v50;
      p_info = (_UIKeyboardPopover + 32);
      v11 = v53;
LABEL_12:

      if (v20)
      {
        goto LABEL_30;
      }

LABEL_13:
      ++v8;
    }

    while (v8 != v5);
    v45 = [v2 countByEnumeratingWithState:&v54 objects:v62 count:16];
    v5 = v45;
  }

  while (v45);
LABEL_29:
  v20 = 0;
LABEL_30:

  return v20;
}

- (void)updateTextCompletionWithExternalSuggestion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 inputText];
    v7 = [v6 length];

    if (v7)
    {
      v8 = [v5 _keyboardCandidate];
      v9 = [v5 _keyboardCandidate];
      v10 = [_UIInlineTextCompletion inlineTextCompletion:v8 source:v9];

      if (qword_1ED4A2498 != -1)
      {
        dispatch_once(&qword_1ED4A2498, &__block_literal_global_637);
      }

      v11 = [(UIInlineTextCompletionController *)self delegate];
      v12 = [v11 taskQueue];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __79__UIInlineTextCompletionController_updateTextCompletionWithExternalSuggestion___block_invoke_3;
      v15[3] = &unk_1E70FD1B8;
      v15[4] = self;
      v16 = v10;
      v13 = _MergedGlobals_1340;
      v14 = v10;
      [v12 performSingleTask:v15 breadcrumb:v13];
    }
  }
}

void __79__UIInlineTextCompletionController_updateTextCompletionWithExternalSuggestion___block_invoke()
{
  v0 = [&__block_literal_global_67_3 copy];
  v1 = _MergedGlobals_1340;
  _MergedGlobals_1340 = v0;
}

- (BOOL)_isCompletion:(id)a3 continuingLastCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if ((v6 == 0) == (v7 != 0))
  {
    goto LABEL_6;
  }

  if (v6 != v7)
  {
    v9 = [v7 candidate];
    v10 = [v6 candidate];
    v11 = [v9 hasSuffix:v10];

    if (v11)
    {
      v12 = [v6 input];
      v13 = [v8 input];
      v14 = [v12 hasPrefix:v13];

      if (v14)
      {
        goto LABEL_5;
      }

      v17 = [(UIInlineTextCompletionController *)self delegate];
      v18 = [v17 documentState];
      v19 = [v18 contextBeforeInput];

      v20 = [v6 input];
      if ([v20 length])
      {
        goto LABEL_9;
      }

      v21 = [v19 length];
      v22 = [v8 input];
      v23 = [v22 length];

      if (v21 < v23)
      {
        v15 = 0;
        goto LABEL_11;
      }

      v24 = [v8 candidate];
      v20 = [v24 componentsSeparatedByString:@" "];

      v25 = [v20 firstObject];
      if (!v25)
      {
LABEL_9:
        v15 = 0;
      }

      else
      {
        v26 = v25;
        v27 = [v8 input];
        if ([v26 hasPrefix:v27])
        {
          v15 = [v19 hasSuffix:v26];
        }

        else
        {
          v15 = 0;
        }
      }

LABEL_11:
      goto LABEL_7;
    }

LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

LABEL_5:
  v15 = 1;
LABEL_7:

  return v15;
}

+ (id)_documentTextThroughSelection:(id)a3
{
  v3 = a3;
  v4 = [v3 contextBeforeInput];
  v5 = v4;
  v6 = &stru_1EFB14550;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [v3 markedText];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [v3 markedText];
    v11 = [v3 selectedRangeInMarkedText];
    v13 = [v10 substringWithRange:{0, v11 + v12}];
  }

  else
  {
    v14 = [v3 selectedText];

    if (!v14)
    {
      goto LABEL_8;
    }

    v13 = [v3 selectedText];
  }

  v15 = [(__CFString *)v7 stringByAppendingString:v13];

  v7 = v15;
LABEL_8:

  return v7;
}

- (void)willPerformKeyboardOutput:(id)a3
{
  v19 = a3;
  if (![(UIInlineTextCompletionController *)self _deleteToUndoEnabled])
  {
    v4 = [(UIInlineTextCompletionController *)self delegate];
    v5 = [v4 documentState];

    if (_outputIsSimpleDeletion(v19) || ([v5 selectedText], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
    {
      [(UIInlineTextCompletionController *)self setHasForwardProgress:0];
      v8 = [(UIInlineTextCompletionController *)self lastAcceptedTextCompletion];

      if (v8)
      {
        v9 = [objc_opt_class() _documentTextThroughSelection:v5];
        v10 = [(UIInlineTextCompletionController *)self lastAcceptedTextCompletion];
        v11 = [v10 candidate];
        v12 = v11;
        v13 = &stru_1EFB14550;
        if (v11)
        {
          v13 = v11;
        }

        v14 = v13;

        v15 = [v9 hasSuffix:v14];
        if (v15)
        {
          v16 = [(UIInlineTextCompletionController *)self lastAcceptedTextCompletion];
          [(UIInlineTextCompletionController *)self _registerLearningForInlineCompletion:v16 learningMode:*MEMORY[0x1E69D9930]];

          [(UIInlineTextCompletionController *)self setLastAcceptedTextCompletion:0];
        }
      }
    }
  }

  if (+[UIKeyboard presentsInlineTextCompletionAsMarkedText])
  {
    v17 = [(UIInlineTextCompletionController *)self presentingTextCompletionAsMarkedText];

    if (v17)
    {
      v18 = [(UIInlineTextCompletionController *)self textCompletion];
      [(UIInlineTextCompletionController *)self _removeTextCompletionPromptForReason:7];
      [(UIInlineTextCompletionController *)self setCandidateRemovedOnWillPerformOutput:v18];
    }
  }
}

- (void)didPerformKeyboardOutput:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(UIInlineTextCompletionController *)self setDeleting:_outputIsSimpleDeletion(v4)];
  v5 = [v4 insertionText];
  v6 = [v5 length];

  if (v6)
  {
    [(UIInlineTextCompletionController *)self setHasForwardProgress:1];
  }

  v7 = [(UIInlineTextCompletionController *)self candidateRemovedOnWillPerformOutput];
  [(UIInlineTextCompletionController *)self setCandidateRemovedOnWillPerformOutput:0];
  if (v7)
  {
    v8 = v4;
    v9 = [v8 insertionText];
    v10 = [v9 length];

    if (!v10 || [v8 deletionCount] || objc_msgSend(v8, "forwardDeletionCount"))
    {
    }

    else
    {
      v11 = [v8 acceptedCandidate];

      if (!v11)
      {
        v12 = [v7 candidate];
        v13 = [v12 length];
        v14 = [v7 input];
        v15 = [v14 length];

        if (v13 > v15)
        {
          v16 = [v7 candidate];
          v17 = [v7 input];
          v18 = [v16 substringFromIndex:{objc_msgSend(v17, "length")}];

          v19 = [v18 length];
          v20 = [v8 insertionText];
          v21 = [v20 length];

          if (v19 > v21)
          {
            v22 = [v8 insertionText];
            v23 = [v18 hasPrefix:v22];

            if (v23)
            {
              v24 = [v7 input];
              v25 = [v8 insertionText];
              v26 = [v24 stringByAppendingString:v25];

              v27 = [v7 completion];
              v28 = [v7 candidate];
              v29 = [v27 candidateByReplacingWithCandidate:v28 input:v26];

              v30 = [v7 source];
              v31 = [_UIInlineTextCompletion inlineTextCompletion:v29 source:v30];

              v32 = _UIKBInlineTextCompletionLog();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                v38 = _shortCompletionDescr(v7);
                v39 = _shortCompletionDescr(v31);
                *buf = 138412546;
                v43 = v38;
                v44 = 2112;
                v45 = v39;
                _os_log_debug_impl(&dword_188A29000, v32, OS_LOG_TYPE_DEBUG, "Last text completion remains valid after output: Last=%@, Updated=%@", buf, 0x16u);
              }

              if (qword_1ED4A24A8 != -1)
              {
                dispatch_once(&qword_1ED4A24A8, &__block_literal_global_73_2);
              }

              v33 = [(UIInlineTextCompletionController *)self delegate];
              v34 = [v33 taskQueue];
              v40[0] = MEMORY[0x1E69E9820];
              v40[1] = 3221225472;
              v40[2] = __61__UIInlineTextCompletionController_didPerformKeyboardOutput___block_invoke_3;
              v40[3] = &unk_1E70FD1B8;
              v40[4] = self;
              v41 = v31;
              v35 = qword_1ED4A24A0;
              v36 = v31;
              [v34 performSingleTask:v40 breadcrumb:v35];
            }

            else
            {
              v26 = _UIKBInlineTextCompletionLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v37 = _shortCompletionDescr(v7);
                *buf = 138412290;
                v43 = v37;
                _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_DEFAULT, "Declining last text completion (output does not match completion text): %@", buf, 0xCu);
              }
            }
          }
        }
      }
    }
  }
}

void __61__UIInlineTextCompletionController_didPerformKeyboardOutput___block_invoke()
{
  v0 = [&__block_literal_global_75_3 copy];
  v1 = qword_1ED4A24A0;
  qword_1ED4A24A0 = v0;
}

- (void)willAcceptPredictiveInput:(id)a3
{
  v4 = a3;
  if (!+[UIKeyboard usesInputSystemUI])
  {
    v5 = [(UIInlineTextCompletionController *)self acceptingTextCompletion];

    if (!v5)
    {
      v6 = [(UIInlineTextCompletionController *)self textCompletion];

      if (v6)
      {
        v7 = [(UIInlineTextCompletionController *)self textCompletion];
        v8 = [(UIInlineTextCompletionController *)self _oneWordTextCompletionFromTextCompletion:v7];

        v9 = [v8 candidate];
        v10 = [v4 candidate];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = &stru_1EFB14550;
        }

        if ([v9 isEqualToString:v12])
        {
          v13 = [v8 input];
          v14 = [v4 input];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = &stru_1EFB14550;
          }

          v17 = [v13 isEqualToString:v16];
        }

        else
        {
          v17 = 0;
        }

        v18 = [v4 input];
        v19 = [v4 candidate];
        v20 = v19;
        if (v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = &stru_1EFB14550;
        }

        v22 = [v18 isEqualToString:v21];

        if (v17)
        {
          v23 = _UIKBInlineTextCompletionLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEBUG, "Accepted text completion by selecting from prediction bar", buf, 2u);
          }

          [(UIInlineTextCompletionController *)self _registerLearningForInlineCompletion:v8 learningMode:*MEMORY[0x1E69D9910]];
          v24 = self;
          v25 = 2;
        }

        else
        {
          if ((v22 & 1) == 0)
          {
            v27 = [v4 candidate];
            v28 = v27;
            if (v27)
            {
              v29 = v27;
            }

            else
            {
              v29 = &stru_1EFB14550;
            }

            v30 = v29;

            v31 = [v8 input];
            v32 = [v31 stringByAppendingString:v30];
            v33 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
            v34 = [v32 componentsSeparatedByCharactersInSet:v33];

            v35 = [v8 candidate];
            v36 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];

            v37 = [v35 componentsSeparatedByCharactersInSet:v36];

            LODWORD(v36) = [v34 isEqual:v37];
            v38 = _UIKBInlineTextCompletionLog();
            v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG);
            if (v36)
            {
              if (v39)
              {
                *v44 = 0;
                _os_log_debug_impl(&dword_188A29000, v38, OS_LOG_TYPE_DEBUG, "Accepted text completion by selecting from prediction bar", v44, 2u);
              }

              v40 = MEMORY[0x1E69D9910];
              v41 = 5;
            }

            else
            {
              if (v39)
              {
                *v43 = 0;
                _os_log_debug_impl(&dword_188A29000, v38, OS_LOG_TYPE_DEBUG, "Rejected text completion by selecting typed string from prediction bar", v43, 2u);
              }

              v40 = MEMORY[0x1E69D9938];
              v41 = 6;
            }

            [(UIInlineTextCompletionController *)self _registerLearningForInlineCompletion:v8 learningMode:*v40];
            [(UIInlineTextCompletionController *)self _removeTextCompletionPromptForReason:v41];

            goto LABEL_36;
          }

          v26 = _UIKBInlineTextCompletionLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *v42 = 0;
            _os_log_debug_impl(&dword_188A29000, v26, OS_LOG_TYPE_DEBUG, "Rejected text completion by selecting other candidate from prediction bar", v42, 2u);
          }

          [(UIInlineTextCompletionController *)self _registerLearningForInlineCompletion:v8 learningMode:*MEMORY[0x1E69D9938]];
          v24 = self;
          v25 = 5;
        }

        [(UIInlineTextCompletionController *)v24 _removeTextCompletionPromptForReason:v25];
LABEL_36:
      }
    }
  }
}

- (void)_removeTextCompletionPromptForReason:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (!+[UIKeyboard usesInputSystemUI])
  {
    [(UIInlineTextCompletionController *)self _clearInlineCompletionCoachingTimer];
    v5 = +[UIKeyboardImpl activeInstance];
    [v5 dismissEducationTip];

    v6 = [(UIInlineTextCompletionController *)self presentingTextCompletionAsMarkedText];
    if (v6)
    {

LABEL_4:
      if (a3 == 5 && ![(UIInlineTextCompletionController *)self _isCompletion:0 continuingLastCompletion:self->_textCompletion])
      {
        v7 = _UIKBInlineTextCompletionLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = _shortCompletionDescr(self->_textCompletion);
          v16 = 138412290;
          v17 = v8;
          _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Declining text completion (accepting predictive input): %@", &v16, 0xCu);
        }
      }

      v9 = [(UIInlineTextCompletionController *)self delegate];
      [v9 updateKeyboardConfigurations];

      [(UIInlineTextCompletionController *)self _clearTextCompletionPromptTimer];
      if (+[UIKeyboard presentsInlineTextCompletionAsMarkedText])
      {
        v10 = [(UIInlineTextCompletionController *)self presentingTextCompletionAsMarkedText];

        if (v10)
        {
          m_textCompletionPrompt = [(UIInlineTextCompletionController *)self presentingTextCompletionAsMarkedText];
          [(UIInlineTextCompletionController *)self setPresentingTextCompletionAsMarkedText:0];
          v12 = [(UIInlineTextCompletionController *)self delegate];
          [v12 removeTextCompletionFromMarkedText:m_textCompletionPrompt];

LABEL_14:
        }
      }

      else
      {
        v13 = [(UIView *)self->m_textCompletionPrompt superview];

        if (v13)
        {
          [(UIView *)self->m_textCompletionPrompt removeFromSuperview];
          [(UIInlineTextCompletionPrompt *)self->m_textCompletionPrompt setDelegate:0];
          m_textCompletionPrompt = self->m_textCompletionPrompt;
          self->m_textCompletionPrompt = 0;
          goto LABEL_14;
        }
      }

      [(UIInlineTextCompletionController *)self setCandidateRemovedOnWillPerformOutput:0];
      textCompletion = self->_textCompletion;
      self->_textCompletion = 0;

      return;
    }

    v15 = [(UIInlineTextCompletionController *)self acceptingTextCompletion];

    if (!v15)
    {
      goto LABEL_4;
    }
  }
}

void __67__UIInlineTextCompletionController__touchTextCompletionPromptTimer__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) delegate];
  v4 = [v3 autocorrectionController];

  if ([v4 hasAutocorrection] && (objc_msgSend(v4, "textCompletions"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [*(a1 + 32) _bestTextCompletion];
    [*(a1 + 32) _updateTextCompletionPrompt:v6 executionContext:v7];
  }

  else
  {
    [v7 returnExecutionToParent];
  }
}

- (void)_touchInlineCompletionCoachingTimer
{
  v3 = [(UIInlineTextCompletionController *)self inputDelegate];

  if (v3)
  {
    v4 = [(UIInlineTextCompletionController *)self inlineCompletionCoachingTask];
    v5 = [v4 isValid];

    if (v5)
    {
      v9 = [(UIInlineTextCompletionController *)self inlineCompletionCoachingTask];
      [v9 resetTimer];
    }

    else
    {
      v6 = [(UIInlineTextCompletionController *)self delegate];
      v7 = [v6 taskQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __71__UIInlineTextCompletionController__touchInlineCompletionCoachingTimer__block_invoke;
      v10[3] = &unk_1E70FD058;
      v10[4] = self;
      v8 = [v7 scheduleTask:v10 timeInterval:0 repeats:2.0];
      [(UIInlineTextCompletionController *)self setInlineCompletionCoachingTask:v8];
    }
  }
}

void __71__UIInlineTextCompletionController__touchInlineCompletionCoachingTimer__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) delegate];
  v4 = [v3 autocorrectionController];

  if ([v4 hasAutocorrection] && (objc_msgSend(v4, "textCompletions"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    [*(a1 + 32) _presentInlineTextCompletionCoachingUIWithExecutionContext:v6];
  }

  else
  {
    [v6 returnExecutionToParent];
  }
}

- (void)updateTextCompletionPrompt
{
  if (qword_1ED4A24B8 != -1)
  {
    dispatch_once(&qword_1ED4A24B8, &__block_literal_global_79_2);
  }

  v3 = [(UIInlineTextCompletionController *)self delegate];
  v4 = [v3 taskQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__UIInlineTextCompletionController_updateTextCompletionPrompt__block_invoke_3;
  v5[3] = &unk_1E70FD058;
  v5[4] = self;
  [v4 performSingleTask:v5 breadcrumb:qword_1ED4A24B0];
}

void __62__UIInlineTextCompletionController_updateTextCompletionPrompt__block_invoke()
{
  v0 = [&__block_literal_global_81_1 copy];
  v1 = qword_1ED4A24B0;
  qword_1ED4A24B0 = v0;
}

- (void)updateTextCompletionPromptExecutionContext:(id)a3
{
  v10 = a3;
  if (+[UIKeyboard usesInputSystemUI])
  {
    goto LABEL_2;
  }

  v4 = [(UIInlineTextCompletionController *)self presentingTextCompletionAsMarkedText];
  if (v4)
  {
  }

  else
  {
    v9 = [(UIInlineTextCompletionController *)self acceptingTextCompletion];

    if (v9)
    {
LABEL_2:
      [v10 returnExecutionToParent];
      goto LABEL_13;
    }
  }

  v5 = [(UIInlineTextCompletionController *)self delegate];
  v6 = [v5 autocorrectionController];

  v7 = [v6 textCompletions];

  if (!v7)
  {
    goto LABEL_11;
  }

  if (![(UIInlineTextCompletionController *)self hasPrompt])
  {
    [(UIInlineTextCompletionController *)self _touchTextCompletionPromptTimer];
LABEL_11:
    [v10 returnExecutionToParent];
    goto LABEL_12;
  }

  v8 = [(UIInlineTextCompletionController *)self _bestTextCompletion];
  [(UIInlineTextCompletionController *)self _updateTextCompletionPrompt:v8 executionContext:v10];

LABEL_12:
LABEL_13:
}

- (void)_updateTextCompletionPrompt:(id)a3 executionContext:(id)a4
{
  v82 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 candidate];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_1EFB14550;
  }

  v12 = v11;

  v13 = [v7 input];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_1EFB14550;
  }

  v16 = v15;

  [(UIInlineTextCompletionController *)self setCandidateRemovedOnWillPerformOutput:0];
  [(UIInlineTextCompletionController *)self _clearTextCompletionPromptTimer];
  if ([(__CFString *)v12 length]&& ![(__CFString *)v12 isEqualToString:v16])
  {
    textCompletion = self->_textCompletion;
    location = &self->_textCompletion;
    if (textCompletion)
    {
      v21 = v8;
      v22 = [(_UIInlineTextCompletion *)textCompletion candidate];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = &stru_1EFB14550;
      }

      v25 = v24;

      v26 = [*location input];
      v27 = v26;
      if (v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = &stru_1EFB14550;
      }

      v29 = v28;

      if ([(__CFString *)v25 isEqualToString:v12]&& [(__CFString *)v29 isEqualToString:v16])
      {
        v8 = v21;
        [v21 returnExecutionToParent];

        goto LABEL_15;
      }

      v8 = v21;
    }

    v30 = _UIKBInlineTextCompletionLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v48 = _shortCompletionDescr(v7);
      *buf = 138412290;
      v81 = v48;
      _os_log_debug_impl(&dword_188A29000, v30, OS_LOG_TYPE_DEBUG, "Trying to present inline text completion: %@", buf, 0xCu);
    }

    if (![(UIInlineTextCompletionController *)self hasForwardProgress])
    {
      v34 = _UIKBInlineTextCompletionLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_DEFAULT, "Will not present text completion (no forward progress)", buf, 2u);
      }

      v18 = self;
      v19 = 9;
      goto LABEL_14;
    }

    v31 = [(UIInlineTextCompletionController *)self delegate];
    v32 = [v31 documentState];

    v33 = [v32 markedText];
    if ([v33 length])
    {

LABEL_36:
      v37 = _UIKBInlineTextCompletionLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_DEFAULT, "Will not present text completion (selected or marked text is not empty)", buf, 2u);
      }

      [(UIInlineTextCompletionController *)self _removeTextCompletionPromptForReason:10];
      [v8 returnExecutionToParent];
      goto LABEL_39;
    }

    [v32 selectedText];
    v35 = v73 = v8;
    v36 = [v35 length];

    v8 = v73;
    if (v36)
    {
      goto LABEL_36;
    }

    v38 = [v32 contextAfterInput];
    v39 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v40 = [v38 stringByTrimmingCharactersInSet:v39];

    if ([v40 length])
    {
      v41 = [v40 _firstLongCharacter];
      v42 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      LOBYTE(v41) = [v42 longCharacterIsMember:v41];

      if ((v41 & 1) == 0)
      {
        v49 = _UIKBInlineTextCompletionLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v49, OS_LOG_TYPE_DEFAULT, "Will not present text completion: contextAfterInput is not empty and has non-whitespace characters before the first newline", buf, 2u);
        }

        v50 = self;
        v51 = 10;
        goto LABEL_61;
      }
    }

    v43 = [(UIInlineTextCompletionController *)self inputDelegate];

    if (!v43)
    {
      v52 = _UIKBInlineTextCompletionLog();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v52, OS_LOG_TYPE_DEFAULT, "Will not present text completion: no input delegate", buf, 2u);
      }

      v50 = self;
      v51 = 13;
      goto LABEL_61;
    }

    v44 = [(UIInlineTextCompletionController *)self delegate];
    v45 = [v44 isSelecting];

    if (v45)
    {
      v46 = _UIKBInlineTextCompletionLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v47 = "Will not present text completion: user is selecting text";
LABEL_56:
        _os_log_impl(&dword_188A29000, v46, OS_LOG_TYPE_DEFAULT, v47, buf, 2u);
      }
    }

    else
    {
      if (![(UIInlineTextCompletionController *)self currentInlineTextCompletionMode])
      {
        v55 = _UIKBInlineTextCompletionLog();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v55, OS_LOG_TYPE_DEFAULT, "Will not present text completion: inline completion text completion mode for traits is NO", buf, 2u);
        }

        v50 = self;
        v51 = 12;
        goto LABEL_61;
      }

      v53 = [(UIInlineTextCompletionController *)self delegate];
      v54 = [v53 showingEmojiSearch];

      if (!v54)
      {
        if (+[UIKeyboard presentsInlineTextCompletionAsMarkedText])
        {
          v56 = [(__CFString *)v12 substringFromIndex:[(__CFString *)v16 length]];
          v57 = _UIKBInlineTextCompletionLog();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = _shortCompletionDescr(v7);
            *buf = 138412290;
            v81 = v58;
            _os_log_impl(&dword_188A29000, v57, OS_LOG_TYPE_DEFAULT, "Presenting inline text completion now: %@", buf, 0xCu);
          }

          v59 = objc_alloc(MEMORY[0x1E696AAB0]);
          v60 = [(UIInlineTextCompletionController *)self _markedTextAttributes];
          v61 = [v59 initWithString:v56 attributes:v60];

          v62 = [MEMORY[0x1E69C6F88] intermediateTextWithInputString:v56 displayString:v61 selectionLocation:0];
          [(UIInlineTextCompletionController *)self setPresentingTextCompletionAsMarkedText:v56];
          objc_storeStrong(location, a3);
          v63 = [(UIInlineTextCompletionController *)self delegate];
          [v63 presentTextCompletionAsMarkedText:v62];

          v64 = [(UIInlineTextCompletionController *)self delegate];
          [v64 removeAutocorrectPrompt];

          [(UIInlineTextCompletionController *)self _touchInlineCompletionCoachingTimer];
          [v73 returnExecutionToParent];

          v8 = v73;
        }

        else
        {
          v65 = v32;
          v66 = [(UIInlineTextCompletionController *)self delegate];
          v67 = [v66 inputDelegateManager];
          v68 = [v67 asyncCapableInputDelegate];

          if (v68)
          {
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __81__UIInlineTextCompletionController__updateTextCompletionPrompt_executionContext___block_invoke;
            aBlock[3] = &unk_1E70FD280;
            v76 = v68;
            v77 = v16;
            v78 = self;
            v79 = v7;
            v69 = _Block_copy(aBlock);
            v8 = v73;
            if (qword_1ED4A24D8 != -1)
            {
              dispatch_once(&qword_1ED4A24D8, &__block_literal_global_90_5);
            }

            v70 = [(UIInlineTextCompletionController *)self delegate];
            v71 = [v70 taskQueue];
            [v71 addTask:v69 breadcrumb:qword_1ED4A24D0];

            [v73 returnExecutionToParent];
            v72 = v76;
          }

          else
          {
            v72 = [(UIInlineTextCompletionController *)self _textCompletionPromptRectsForInput:v16];
            [(UIInlineTextCompletionController *)self _updateTextCompletionPrompt:v7 inputRects:v72];
            v8 = v73;
            [v73 returnExecutionToParent];
          }

          v32 = v65;
        }

        goto LABEL_62;
      }

      v46 = _UIKBInlineTextCompletionLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v47 = "Will not present text completion: showing emoji search";
        goto LABEL_56;
      }
    }

    v50 = self;
    v51 = 11;
LABEL_61:
    [(UIInlineTextCompletionController *)v50 _removeTextCompletionPromptForReason:v51];
    v8 = v73;
    [v73 returnExecutionToParent];
LABEL_62:

LABEL_39:
    goto LABEL_15;
  }

  if (self->_textCompletion)
  {
    v17 = _UIKBInlineTextCompletionLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEFAULT, "Removing text completion prompt (text completion is nil/empty)", buf, 2u);
    }
  }

  v18 = self;
  v19 = 4;
LABEL_14:
  [(UIInlineTextCompletionController *)v18 _removeTextCompletionPromptForReason:v19];
  [v8 returnExecutionToParent];
LABEL_15:
}

void __81__UIInlineTextCompletionController__updateTextCompletionPrompt_executionContext___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__UIInlineTextCompletionController__updateTextCompletionPrompt_executionContext___block_invoke_2;
  v9[3] = &unk_1E7127BE8;
  v6 = a1[6];
  v7 = a1[7];
  v10 = v3;
  v11 = v6;
  v12 = v7;
  v8 = v3;
  [v4 requestAutocorrectionRectsForString:v5 withCompletionHandler:v9];
}

void __81__UIInlineTextCompletionController__updateTextCompletionPrompt_executionContext___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (qword_1ED4A24C8 != -1)
  {
    dispatch_once(&qword_1ED4A24C8, &__block_literal_global_85_0);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__UIInlineTextCompletionController__updateTextCompletionPrompt_executionContext___block_invoke_5;
  v9[3] = &unk_1E70FD208;
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v10 = v3;
  v11 = v4;
  v12 = v6;
  v7 = qword_1ED4A24C0;
  v8 = v3;
  [v5 transferExecutionToMainThreadWithTask:v9 breadcrumb:v7];
}

void __81__UIInlineTextCompletionController__updateTextCompletionPrompt_executionContext___block_invoke_3()
{
  v0 = [&__block_literal_global_87_1 copy];
  v1 = qword_1ED4A24C0;
  qword_1ED4A24C0 = v0;
}

void __81__UIInlineTextCompletionController__updateTextCompletionPrompt_executionContext___block_invoke_5(uint64_t a1, void *a2)
{
  v17 = a2;
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) delegate];
    [*(a1 + 32) firstRect];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [*(a1 + 32) lastRect];
    v16 = [v3 textCompletionInputRectsFromFirstRect:v5 lastRect:{v7, v9, v11, v12, v13, v14, v15}];
  }

  else
  {
    v16 = 0;
  }

  [*(a1 + 40) _updateTextCompletionPrompt:*(a1 + 48) inputRects:v16];
  [v17 returnExecutionToParent];
}

void __81__UIInlineTextCompletionController__updateTextCompletionPrompt_executionContext___block_invoke_6()
{
  v0 = [&__block_literal_global_92_2 copy];
  v1 = qword_1ED4A24D0;
  qword_1ED4A24D0 = v0;
}

- (id)_textCompletionPromptRectsForInput:(id)a3
{
  v4 = a3;
  v5 = [(UIInlineTextCompletionController *)self delegate];
  v6 = [v5 rangeForTextCompletionInput:v4];

  if (!v6)
  {
    goto LABEL_5;
  }

  if (([v6 isEmpty] & 1) == 0)
  {
    v28 = [(UIInlineTextCompletionController *)self inputDelegate];
    [v28 firstRectForRange:v6];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v37 = [(UIInlineTextCompletionController *)self inputDelegate];
    [v37 _lastRectForRange:v6];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v17 = [(UIInlineTextCompletionController *)self delegate];
    v18 = v17;
    v19 = v30;
    v20 = v32;
    v21 = v34;
    v22 = v36;
    v23 = v39;
    v24 = v41;
    v25 = v43;
    v26 = v45;
    goto LABEL_7;
  }

  if (![v6 isEmpty])
  {
LABEL_5:
    v27 = 0;
    goto LABEL_8;
  }

  v7 = [(UIInlineTextCompletionController *)self inputDelegate];
  v8 = [v6 start];
  [v7 caretRectForPosition:v8];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [(UIInlineTextCompletionController *)self delegate];
  v18 = v17;
  v19 = v10;
  v20 = v12;
  v21 = v14;
  v22 = v16;
  v23 = v10;
  v24 = v12;
  v25 = v14;
  v26 = v16;
LABEL_7:
  v27 = [v17 textCompletionInputRectsFromFirstRect:v19 lastRect:{v20, v21, v22, v23, v24, v25, v26}];

LABEL_8:

  return v27;
}

- (void)_updateTextCompletionPrompt:(id)a3 inputRects:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 candidate];
  v9 = [v6 input];
  if (![v7 count])
  {
    v19 = _UIKBInlineTextCompletionLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v20 = "Will not present text completion: missing rects for input text";
      v21 = buf;
      goto LABEL_7;
    }

LABEL_8:

    [(UIInlineTextCompletionController *)self _removeTextCompletionPromptForReason:13];
    goto LABEL_15;
  }

  v10 = [v7 lastObject];
  [v10 rect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v29.origin.x = v12;
  v29.origin.y = v14;
  v29.size.width = v16;
  v29.size.height = v18;
  if (CGRectIsEmpty(v29))
  {
    v19 = _UIKBInlineTextCompletionLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 0;
      v20 = "Will not present text completion: input rect is empty";
      v21 = &v27;
LABEL_7:
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_DEFAULT, v20, v21, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v22 = [(UIInlineTextCompletionController *)self delegate];
  v23 = [v22 inputOverlayContainer];

  if (v23)
  {
    v24 = [(UIInlineTextCompletionController *)self delegate];
    [v24 updateKeyboardConfigurations];

    [(UIInlineTextCompletionController *)self _updateTextCompletionPromptWithTextCompletion:v6 parentView:v23 inputRects:v7];
  }

  else
  {
    v25 = _UIKBInlineTextCompletionLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_DEFAULT, "Will not present text completion: no input overlay container", v26, 2u);
    }

    [(UIInlineTextCompletionController *)self _removeTextCompletionPromptForReason:13];
  }

LABEL_15:
}

- (void)_updateTextCompletionPromptWithTextCompletion:(id)a3 parentView:(id)a4 inputRects:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_UIInlineTextCompletion *)v8 candidate];
  v12 = [(_UIInlineTextCompletion *)v8 input];
  if ([(UIInlineTextCompletionController *)self _isCompletion:v8 continuingLastCompletion:self->_textCompletion])
  {
    v13 = _UIKBInlineTextCompletionLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v14 = _shortCompletionDescr(v8);
    *v38 = 138412290;
    *&v38[4] = v14;
    v15 = "Continuing presentation of text completion: %@";
    goto LABEL_10;
  }

  if (self->_textCompletion)
  {
    v16 = _UIKBInlineTextCompletionLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = _shortCompletionDescr(self->_textCompletion);
      *v38 = 138412290;
      *&v38[4] = v17;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, "User ignored discontinued text completion: %@", v38, 0xCu);
    }
  }

  v13 = _UIKBInlineTextCompletionLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = _shortCompletionDescr(v8);
    *v38 = 138412290;
    *&v38[4] = v14;
    v15 = "Presenting user with new text completion: %@";
LABEL_10:
    _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, v15, v38, 0xCu);
  }

LABEL_11:

  m_textCompletionPrompt = self->m_textCompletionPrompt;
  if (m_textCompletionPrompt)
  {
    v19 = [(UIView *)m_textCompletionPrompt superview];

    if (v19 == v9)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v20 = [UIInlineTextCompletionPrompt alloc];
    v21 = [(UIInlineTextCompletionPrompt *)v20 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v22 = self->m_textCompletionPrompt;
    self->m_textCompletionPrompt = v21;

    [(UIInlineTextCompletionPrompt *)self->m_textCompletionPrompt setDelegate:self];
  }

  [v9 addSubview:{self->m_textCompletionPrompt, *v38}];
LABEL_16:
  v23 = self->m_textCompletionPrompt;
  v24 = [(UIInlineTextCompletionController *)self inputDelegate];
  v25 = [v24 textInputView];
  [v25 _convertVisualAltitude:self->m_textCompletionPrompt toView:0.0];
  [(UIView *)v23 _setVisualAltitude:?];

  v26 = [v10 lastObject];

  [v26 rect];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = self->m_textCompletionPrompt;
  v36 = [(_UIInlineTextCompletion *)v8 completion];
  [(UIInlineTextCompletionPrompt *)v35 setTextCompletion:v36 inRect:v28, v30, v32, v34];

  [(UIView *)self->m_textCompletionPrompt setSize:v32, v34];
  textCompletion = self->_textCompletion;
  self->_textCompletion = v8;
}

- (void)_presentInlineTextCompletionCoachingUIWithExecutionContext:(id)a3
{
  v9 = a3;
  [(UIInlineTextCompletionController *)self _clearInlineCompletionCoachingTimer];
  if ([(UIInlineTextCompletionController *)self _shouldShowInlineTextCompletionCoachingUI])
  {
    v4 = _UINSLocalizedStringWithDefaultValue(@"Inline Predictions", @"Inline Predictions");
    v5 = _UINSLocalizedStringWithDefaultValue(@"Press space to input predictive text.", @"Press space to input predictive text.");
    v6 = +[UIKeyboardImpl activeInstance];
    [v6 presentEducationTipWithTitle:v4 description:v5];

    v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v8 = [v7 preferencesActions];
    [v8 didTriggerOneTimeAction:@"DidShowInlineCompletionEducationTip"];
  }

  [v9 returnExecutionToParent];
}

- (BOOL)_shouldShowInlineTextCompletionCoachingUI
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 preferencesActions];
  v4 = [v3 oneTimeActionCompleted:@"DidShowInlineCompletionEducationTip"];

  if (v4)
  {
    return 0;
  }

  v6 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v7 = [v6 preferencesActions];
  v8 = [v7 valueForPreferenceKey:@"InlineCompletionAcceptedBySpaceEventCount"];
  v9 = [v8 integerValue];

  return v9 < 3;
}

- (void)_acceptTextCompletion:(id)a3 learningMode:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!+[UIKeyboard usesInputSystemUI])
  {
    v8 = _UIKBInlineTextCompletionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = _shortCompletionDescr(v6);
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "User accepted text completion: %@", &v13, 0xCu);
    }

    [(UIInlineTextCompletionController *)self setAcceptingTextCompletion:v6];
    if (*MEMORY[0x1E69D9918] == v7)
    {
      v10 = [(UIInlineTextCompletionController *)self analyticsDispatcher];
      [v10 setNextCandidateReplacementSource:7];
    }

    [(UIInlineTextCompletionController *)self _registerLearningForInlineCompletion:v6 learningMode:v7];
    v11 = [(UIInlineTextCompletionController *)self delegate];
    v12 = [v6 completion];
    [v11 acceptPredictiveInput:v12];

    [(UIInlineTextCompletionController *)self setAcceptingTextCompletion:0];
    [(UIInlineTextCompletionController *)self setLastAcceptedTextCompletion:v6];
    [(UIInlineTextCompletionController *)self _removeTextCompletionPromptForReason:2];
  }
}

- (BOOL)_shouldAcceptFirstWordOfCandidateForWordTerminator:(unsigned int)a3
{
  v3 = *&a3;
  if (qword_1ED4A24E8 != -1)
  {
    dispatch_once(&qword_1ED4A24E8, &__block_literal_global_101_3);
  }

  if (+[UIKeyboard doesSpacebarAcceptFullInlineTextCompletion])
  {
    return 0;
  }

  v5 = qword_1ED4A24E0;

  return [v5 longCharacterIsMember:v3];
}

void __87__UIInlineTextCompletionController__shouldAcceptFirstWordOfCandidateForWordTerminator___block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@" "];
  v1 = qword_1ED4A24E0;
  qword_1ED4A24E0 = v0;
}

- (int64_t)_acceptTypeForTypeWordTerminator:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [v4 _rangeOfLongCharacterAtIndex:0];
    v7 = v6;
    v8 = [v4 length];
    v9 = 0;
    if (!v5 && v7 == v8)
    {
      if (-[UIInlineTextCompletionController _shouldAcceptFirstWordOfCandidateForWordTerminator:](self, "_shouldAcceptFirstWordOfCandidateForWordTerminator:", [v4 _firstLongCharacter]))
      {
        v9 = 2;
      }

      else
      {
        v10 = [(UIInlineTextCompletionController *)self delegate];
        v11 = [v10 inputManagerState];
        v12 = [v11 stringEndsWord:v4];

        v9 = v12;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)_acceptTypeForInteraction:(int64_t)a3 wordTerminator:(id)a4
{
  v6 = a4;
  v7 = 1;
  if ((a3 - 1) >= 2 && a3 != 4)
  {
    if (a3)
    {
      v7 = 0;
    }

    else
    {
      v7 = [(UIInlineTextCompletionController *)self _acceptTypeForTypeWordTerminator:v6];
    }
  }

  return v7;
}

- (id)_acceptTextCompletionWithInteraction:(int64_t)a3 wordTerminator:(id)a4
{
  v6 = [(UIInlineTextCompletionController *)self _acceptTypeForInteraction:a3 wordTerminator:a4];
  if (v6 == 2)
  {
    v7 = [(UIInlineTextCompletionController *)self oneWordTextCompletion];
  }

  else
  {
    if (v6 != 1)
    {
      v8 = 0;
      goto LABEL_11;
    }

    v7 = [(UIInlineTextCompletionController *)self textCompletion];
  }

  v8 = v7;
  if (!v7)
  {
LABEL_11:
    v11 = 0;
    goto LABEL_17;
  }

  if (![(UIInlineTextCompletionController *)self _doesFirstPredictedCharacterEndWord:v7])
  {
LABEL_13:
    v8 = v8;
    goto LABEL_14;
  }

  if (![(UIInlineTextCompletionController *)self _shouldAcceptUpToNextWordOfCandidateOnWordBoundaryForInteraction:a3])
  {
    if (a3 != 2)
    {
      v14 = [v8 completion];
      v15 = [v8 input];
      v16 = [v14 candidateByReplacingWithCandidate:v15];

      v17 = [v8 source];
      v18 = [_UIInlineTextCompletion inlineTextCompletion:v16 source:v17];

      [(UIInlineTextCompletionController *)self _registerLearningForInlineCompletion:v18 learningMode:*MEMORY[0x1E69D9928]];
      v19 = _UIKBInlineTextCompletionLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_DEFAULT, "Will not accept proposed text completion: first predicted character ends words", v20, 2u);
      }

      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v9 = [(UIInlineTextCompletionController *)self textCompletion];
  v10 = [(UIInlineTextCompletionController *)self _upToNextWordTextCompletionFromTextCompletion:v9];

  v8 = v10;
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_14:
  v12 = MEMORY[0x1E69D9918];
  if (a3 != 2)
  {
    v12 = MEMORY[0x1E69D9920];
  }

  [(UIInlineTextCompletionController *)self _acceptTextCompletion:v8 learningMode:*v12];
  v11 = v8;
LABEL_17:

  return v11;
}

- (id)acceptTextCompletionWithInteraction:(int64_t)a3 wordTerminator:(id)a4 outputHandledByCaller:(BOOL)a5
{
  if (!a5)
  {
    v10 = [(UIInlineTextCompletionController *)self _acceptTextCompletionWithInteraction:a3 wordTerminator:a4];
    v11 = [v10 completion];
    goto LABEL_28;
  }

  v7 = [(UIInlineTextCompletionController *)self _acceptTypeForInteraction:a3 wordTerminator:a4];
  v8 = v7;
  if (v7 == 2)
  {
    v9 = [(UIInlineTextCompletionController *)self oneWordTextCompletion];
  }

  else
  {
    if (v7 != 1)
    {
      v10 = 0;
      goto LABEL_15;
    }

    v9 = [(UIInlineTextCompletionController *)self textCompletion];
  }

  v10 = v9;
  if (v9)
  {
    if ([(UIInlineTextCompletionController *)self _doesFirstPredictedCharacterEndWord:v9])
    {
      if ([(UIInlineTextCompletionController *)self _shouldAcceptUpToNextWordOfCandidateOnWordBoundaryForInteraction:a3])
      {
        v12 = [(UIInlineTextCompletionController *)self textCompletion];
        v13 = [(UIInlineTextCompletionController *)self _upToNextWordTextCompletionFromTextCompletion:v12];

        v14 = _UIKBInlineTextCompletionLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "Accepting up to next word of the full text completion", buf, 2u);
        }

        v10 = v13;
        if (!v10)
        {
          goto LABEL_15;
        }

LABEL_24:
        v20 = MEMORY[0x1E69D9918];
        if (a3 != 2)
        {
          v20 = MEMORY[0x1E69D9920];
        }

        [(UIInlineTextCompletionController *)self _registerLearningForInlineCompletion:v10 learningMode:*v20, v28];
        [(UIInlineTextCompletionController *)self setLastAcceptedTextCompletion:v10];
        [(UIInlineTextCompletionController *)self _removeTextCompletionPromptForReason:2];
        v15 = v10;
        goto LABEL_27;
      }

      if (a3 != 2)
      {
        v22 = [v10 completion];
        v23 = [v10 input];
        v24 = [v22 candidateByReplacingWithCandidate:v23];

        v25 = [v10 source];
        v26 = [_UIInlineTextCompletion inlineTextCompletion:v24 source:v25];

        [(UIInlineTextCompletionController *)self _registerLearningForInlineCompletion:v26 learningMode:*MEMORY[0x1E69D9928]];
        v27 = _UIKBInlineTextCompletionLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *v31 = 0;
          _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_DEFAULT, "Will not accept proposed text completion: first predicted character ends words", v31, 2u);
        }

        goto LABEL_15;
      }
    }

    v16 = _UIKBInlineTextCompletionLog();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v8 == 2)
    {
      if (v17)
      {
        v29 = 0;
        v18 = "Accepting one word of the text completion";
        v19 = &v29;
LABEL_22:
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, v18, v19, 2u);
      }
    }

    else if (v17)
    {
      LOWORD(v28) = 0;
      v18 = "Accepting full text completion";
      v19 = &v28;
      goto LABEL_22;
    }

    v10 = v10;
    goto LABEL_24;
  }

LABEL_15:
  v15 = 0;
LABEL_27:
  v11 = [v15 completion];

LABEL_28:

  return v11;
}

- (id)_candidateToUndoAcceptedTextCompletion
{
  v3 = [(UIInlineTextCompletionController *)self lastAcceptedTextCompletion];

  if (v3)
  {
    v4 = [(UIInlineTextCompletionController *)self delegate];
    v5 = [v4 documentState];

    v6 = [v5 contextBeforeInput];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1EFB14550;
    }

    v9 = v8;

    v10 = [(UIInlineTextCompletionController *)self lastAcceptedTextCompletion];
    v11 = [v10 candidate];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = &stru_1EFB14550;
    }

    v14 = v13;

    v15 = [v10 input];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = &stru_1EFB14550;
    }

    v18 = v17;

    v19 = v14;
    if ([(__CFString *)v9 length])
    {
      v20 = [(__CFString *)v9 _rangeOfLongCharacterAtIndex:[(__CFString *)v9 length]- 1];
      v22 = [(__CFString *)v9 substringWithRange:v20, v21];
      v23 = [(UIInlineTextCompletionController *)self delegate];
      v24 = [v23 inputManagerState];
      v25 = [v24 stringEndsWord:v22];

      v26 = v19;
      if (v25)
      {
        v26 = [(__CFString *)v19 stringByAppendingString:v22];
      }

      if ([(__CFString *)v9 hasSuffix:v26])
      {
        v27 = [MEMORY[0x1E69D95F0] candidateWithCandidate:v18 forInput:v26];
        v28 = [v10 source];
        v29 = [_UIInlineTextCompletion inlineTextCompletion:v27 source:v28];
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
      v26 = v19;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (BOOL)canUndoAcceptedTextCompletion
{
  if (![(UIInlineTextCompletionController *)self _deleteToUndoEnabled])
  {
    return 0;
  }

  v3 = [(UIInlineTextCompletionController *)self _candidateToUndoAcceptedTextCompletion];
  v4 = v3 != 0;

  return v4;
}

- (void)undoAcceptedTextCompletionExecutionContext:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIInlineTextCompletionController *)self _candidateToUndoAcceptedTextCompletion];
  if (v5)
  {
    v6 = _UIKBInlineTextCompletionLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(UIInlineTextCompletionController *)self lastAcceptedTextCompletion];
      v8 = _shortCompletionDescr(v7);
      v9 = _shortCompletionDescr(v5);
      *buf = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Undo accepted text completion: (Accepted: %@, Undo: %@)", buf, 0x16u);
    }

    v10 = [(UIInlineTextCompletionController *)self lastAcceptedTextCompletion];
    if (v10)
    {
      [(UIInlineTextCompletionController *)self _registerLearningForInlineCompletion:v10 learningMode:*MEMORY[0x1E69D9930]];
    }

    lastAcceptedTextCompletion = self->_lastAcceptedTextCompletion;
    self->_lastAcceptedTextCompletion = 0;

    [(UIInlineTextCompletionController *)self _removeTextCompletionPromptForReason:3];
    v12 = [(UIInlineTextCompletionController *)self delegate];
    v13 = [v5 completion];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __79__UIInlineTextCompletionController_undoAcceptedTextCompletionExecutionContext___block_invoke;
    v15[3] = &unk_1E70FD058;
    v15[4] = self;
    v14 = [v4 childWithContinuation:v15];
    [v12 acceptPredictiveInput:v13 appendSeparator:0 executionContext:v14];
  }

  else
  {
    [v4 returnExecutionToParent];
  }
}

void __79__UIInlineTextCompletionController_undoAcceptedTextCompletionExecutionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v3 setDeleting:1];
  v4 = [*(a1 + 32) delegate];
  [v4 generateCandidates];

  [v5 returnExecutionToParent];
}

- (void)_registerLearningForInlineCompletion:(id)a3 learningMode:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (*MEMORY[0x1E69D9920] == v7)
  {
    v8 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v9 = [v8 preferencesActions];
    v10 = [v9 valueForPreferenceKey:@"InlineCompletionAcceptedBySpaceEventCount"];
    v11 = [v10 integerValue];

    v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v13 = [v12 preferencesActions];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:v11 + 1];
    [v13 setValue:v14 forPreferenceKey:@"InlineCompletionAcceptedBySpaceEventCount"];
  }

  v15 = [(UIInlineTextCompletionController *)self delegate];
  [v15 refreshKeyboardState];

  v16 = [(UIInlineTextCompletionController *)self delegate];
  v17 = [v16 keyboardState];

  v18 = _UIKBInlineTextCompletionLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v23 = _shortCompletionDescr(v6);
    v24 = [v6 source];
    v25 = _shortCandidateDescr(v24);
    v26 = 138412802;
    v27 = v23;
    v28 = 2112;
    v29 = v25;
    v30 = 2112;
    v31 = v7;
    _os_log_debug_impl(&dword_188A29000, v18, OS_LOG_TYPE_DEBUG, "Register learning for completion:%@ sourceCandidate:%@ mode:%@", &v26, 0x20u);
  }

  v19 = [(UIInlineTextCompletionController *)self delegate];
  v20 = [v19 inlineTextCompletionLearner];

  if (v20)
  {
    v21 = [v6 completion];
    v22 = [v6 source];
    [v20 registerLearning:v21 fullCandidate:v22 keyboardState:v17 mode:v7];
  }

  else
  {
    v21 = _UIKBInlineTextCompletionLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEFAULT, "NOTE: inlineTextCompletionLearner not found", &v26, 2u);
    }
  }
}

- (UIKBAnalyticsDispatcher)analyticsDispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDispatcher);

  return WeakRetained;
}

@end