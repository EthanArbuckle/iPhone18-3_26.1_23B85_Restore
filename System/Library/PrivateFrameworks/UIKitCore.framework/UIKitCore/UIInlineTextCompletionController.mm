@interface UIInlineTextCompletionController
+ (id)_documentTextThroughSelection:(id)selection;
- (BOOL)_doesFirstPredictedCharacterEndWord:(id)word;
- (BOOL)_inlineCompletionPreference;
- (BOOL)_isCompletion:(id)completion continuingLastCompletion:(id)lastCompletion;
- (BOOL)_shouldAcceptFirstWordOfCandidateForWordTerminator:(unsigned int)terminator;
- (BOOL)_shouldShowInlineTextCompletionCoachingUI;
- (BOOL)canUndoAcceptedTextCompletion;
- (BOOL)hasPrompt;
- (UIInlineTextCompletionControllerDelegate)delegate;
- (UIKBAnalyticsDispatcher)analyticsDispatcher;
- (UITextInput)inputDelegate;
- (_UIInlineTextCompletion)oneWordTextCompletion;
- (id)_acceptTextCompletionWithInteraction:(int64_t)interaction wordTerminator:(id)terminator;
- (id)_bestTextCompletion;
- (id)_candidateToUndoAcceptedTextCompletion;
- (id)_markedTextAttributes;
- (id)_oneWordTextCompletionFromTextCompletion:(id)completion;
- (id)_textCompletionPromptRectsForInput:(id)input;
- (id)_textCompletions;
- (id)_upToNextWordTextCompletionFromTextCompletion:(id)completion;
- (id)acceptTextCompletionWithInteraction:(int64_t)interaction wordTerminator:(id)terminator outputHandledByCaller:(BOOL)caller;
- (int64_t)_acceptTypeForInteraction:(int64_t)interaction wordTerminator:(id)terminator;
- (int64_t)_acceptTypeForTypeWordTerminator:(id)terminator;
- (unint64_t)_inlineCompletionModeForTraitsWithCurrentPreference:(BOOL)preference;
- (unint64_t)currentInlineTextCompletionMode;
- (void)_acceptTextCompletion:(id)completion learningMode:(id)mode;
- (void)_clearInlineCompletionCoachingTimer;
- (void)_clearTextCompletionPromptTimer;
- (void)_presentInlineTextCompletionCoachingUIWithExecutionContext:(id)context;
- (void)_registerLearningForInlineCompletion:(id)completion learningMode:(id)mode;
- (void)_removeTextCompletionPromptForReason:(int64_t)reason;
- (void)_touchInlineCompletionCoachingTimer;
- (void)_touchTextCompletionPromptTimer;
- (void)_updateTextCompletionPrompt:(id)prompt executionContext:(id)context;
- (void)_updateTextCompletionPrompt:(id)prompt inputRects:(id)rects;
- (void)_updateTextCompletionPromptWithTextCompletion:(id)completion parentView:(id)view inputRects:(id)rects;
- (void)didPerformKeyboardOutput:(id)output;
- (void)selectionDidChange;
- (void)undoAcceptedTextCompletionExecutionContext:(id)context;
- (void)updateTextCompletionDisplay;
- (void)updateTextCompletionPrompt;
- (void)updateTextCompletionPromptExecutionContext:(id)context;
- (void)updateTextCompletionWithExternalSuggestion:(id)suggestion;
- (void)willAcceptPredictiveInput:(id)input;
- (void)willPerformKeyboardOutput:(id)output;
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
  preferencesActions = [v2 preferencesActions];
  if ([preferencesActions BOOLForPreferenceKey:*MEMORY[0x1E69D98B0]])
  {
    v4 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions2 = [v4 preferencesActions];
    v6 = [preferencesActions2 BOOLForPreferenceKey:*MEMORY[0x1E69D9850]];
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
  inlineCompletionCoachingTask = [(UIInlineTextCompletionController *)self inlineCompletionCoachingTask];
  [inlineCompletionCoachingTask invalidate];

  [(UIInlineTextCompletionController *)self setInlineCompletionCoachingTask:0];
}

- (void)_clearTextCompletionPromptTimer
{
  textCompletionPromptTask = [(UIInlineTextCompletionController *)self textCompletionPromptTask];
  [textCompletionPromptTask invalidate];

  [(UIInlineTextCompletionController *)self setTextCompletionPromptTask:0];
}

- (void)updateTextCompletionDisplay
{
  if (!+[UIKeyboard usesInputSystemUI])
  {
    delegate = [(UIInlineTextCompletionController *)self delegate];
    inputDelegateManager = [delegate inputDelegateManager];
    hasAsyncCapableInputDelegate = [inputDelegateManager hasAsyncCapableInputDelegate];

    if ((hasAsyncCapableInputDelegate & 1) == 0 && -[UIInlineTextCompletionController hasPrompt](self, "hasPrompt") && (-[UIInlineTextCompletionController delegate](self, "delegate"), v6 = objc_claimAutoreleasedReturnValue(), [v6 autocorrectionController], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hasAutocorrection"), v7, v6, v8))
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

  presentingTextCompletionAsMarkedText = [(UIInlineTextCompletionController *)self presentingTextCompletionAsMarkedText];
  v4 = [presentingTextCompletionAsMarkedText length] != 0;

  return v4;
}

- (UITextInput)inputDelegate
{
  delegate = [(UIInlineTextCompletionController *)self delegate];
  inputDelegateManager = [delegate inputDelegateManager];
  textInputDelegate = [inputDelegateManager textInputDelegate];

  return textInputDelegate;
}

- (void)_touchTextCompletionPromptTimer
{
  inputDelegate = [(UIInlineTextCompletionController *)self inputDelegate];

  if (inputDelegate)
  {
    textCompletionPromptTask = [(UIInlineTextCompletionController *)self textCompletionPromptTask];
    isValid = [textCompletionPromptTask isValid];

    if (isValid)
    {
      textCompletionPromptTask2 = [(UIInlineTextCompletionController *)self textCompletionPromptTask];
      [textCompletionPromptTask2 resetTimer];
    }

    else
    {
      delegate = [(UIInlineTextCompletionController *)self delegate];
      taskQueue = [delegate taskQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __67__UIInlineTextCompletionController__touchTextCompletionPromptTimer__block_invoke;
      v10[3] = &unk_1E70FD058;
      v10[4] = self;
      [(UIInlineTextCompletionController *)self _updatePromptDelay];
      v8 = [taskQueue scheduleTask:v10 timeInterval:0 repeats:?];
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

- (BOOL)_doesFirstPredictedCharacterEndWord:(id)word
{
  wordCopy = word;
  candidate = [wordCopy candidate];
  v6 = candidate;
  v7 = &stru_1EFB14550;
  if (candidate)
  {
    v8 = candidate;
  }

  else
  {
    v8 = &stru_1EFB14550;
  }

  v9 = v8;

  input = [wordCopy input];

  if (input)
  {
    v11 = input;
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
    delegate = [(UIInlineTextCompletionController *)self delegate];
    inputManagerState = [delegate inputManagerState];
    v19 = [inputManagerState stringEndsWord:v16];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (unint64_t)_inlineCompletionModeForTraitsWithCurrentPreference:(BOOL)preference
{
  preferenceCopy = preference;
  delegate = [(UIInlineTextCompletionController *)self delegate];
  textInputTraits = [delegate textInputTraits];

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
      delegate2 = [(UIInlineTextCompletionController *)self delegate];
      delegateSupportsCorrectionUI = [delegate2 delegateSupportsCorrectionUI];
    }

    else
    {
      delegateSupportsCorrectionUI = 1;
    }

    v10 = 0;
    if (delegateSupportsCorrectionUI && preferenceCopy)
    {
      if ([textInputTraits isSecureTextEntry])
      {
        goto LABEL_13;
      }

      keyboardType = [textInputTraits keyboardType];
      v10 = 0;
      if ((keyboardType > 0xB || ((1 << keyboardType) & 0x930) == 0) && keyboardType != 127)
      {
        inlinePredictionType = [textInputTraits inlinePredictionType];
        if (inlinePredictionType == 2)
        {
          v10 = 1;
          goto LABEL_14;
        }

        if (inlinePredictionType)
        {
          goto LABEL_13;
        }

        delegate3 = [(UIInlineTextCompletionController *)self delegate];
        inlineTextCompletionAllowedForAutocorrectionType = [delegate3 inlineTextCompletionAllowedForAutocorrectionType];

        textContentType = [textInputTraits textContentType];
        if (textContentType)
        {
          v10 = 0;
        }

        else
        {
          v10 = inlineTextCompletionAllowedForAutocorrectionType;
        }
      }
    }
  }

LABEL_14:

  return v10;
}

- (id)_oneWordTextCompletionFromTextCompletion:(id)completion
{
  completionCopy = completion;
  v4 = completionCopy;
  if (completionCopy)
  {
    input = [completionCopy input];
    candidate = [v4 candidate];
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__221;
    v23 = __Block_byref_object_dispose__221;
    v24 = 0;
    v7 = [candidate length];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__UIInlineTextCompletionController__oneWordTextCompletionFromTextCompletion___block_invoke;
    v15[3] = &unk_1E7127BC0;
    v8 = input;
    v16 = v8;
    v18 = &v19;
    v9 = candidate;
    v17 = v9;
    [v9 enumerateSubstringsInRange:0 options:v7 usingBlock:{3, v15}];
    if ([v20[5] length])
    {
      completion = [v4 completion];
      v11 = [completion candidateByReplacingWithCandidate:v20[5] input:v8];

      completion2 = [v4 completion];
      v13 = [_UIInlineTextCompletion inlineTextCompletion:v11 source:completion2];
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

- (id)_upToNextWordTextCompletionFromTextCompletion:(id)completion
{
  completionCopy = completion;
  v4 = completionCopy;
  if (completionCopy)
  {
    input = [completionCopy input];
    candidate = [v4 candidate];
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__221;
    v23 = __Block_byref_object_dispose__221;
    v24 = 0;
    v7 = [candidate length];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __82__UIInlineTextCompletionController__upToNextWordTextCompletionFromTextCompletion___block_invoke;
    v15[3] = &unk_1E7127BC0;
    v8 = input;
    v16 = v8;
    v18 = &v19;
    v9 = candidate;
    v17 = v9;
    [v9 enumerateSubstringsInRange:0 options:v7 usingBlock:{3, v15}];
    if ([v20[5] length])
    {
      completion = [v4 completion];
      v11 = [completion candidateByReplacingWithCandidate:v20[5] input:v8];

      completion2 = [v4 completion];
      v13 = [_UIInlineTextCompletion inlineTextCompletion:v11 source:completion2];
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
  textCompletion = [(UIInlineTextCompletionController *)self textCompletion];
  v4 = [(UIInlineTextCompletionController *)self _oneWordTextCompletionFromTextCompletion:textCompletion];

  return v4;
}

- (id)_textCompletions
{
  delegate = [(UIInlineTextCompletionController *)self delegate];
  autocorrectionController = [delegate autocorrectionController];
  hasAutocorrection = [autocorrectionController hasAutocorrection];

  v6 = MEMORY[0x1E695E0F0];
  if (hasAutocorrection)
  {
    delegate2 = [(UIInlineTextCompletionController *)self delegate];
    autocorrectionController2 = [delegate2 autocorrectionController];
    textCompletions = [autocorrectionController2 textCompletions];
    v10 = textCompletions;
    if (textCompletions)
    {
      v11 = textCompletions;
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
  _textCompletions = [(UIInlineTextCompletionController *)self _textCompletions];
  v3 = [_textCompletions countByEnumeratingWithState:&v54 objects:v62 count:16];
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
  v49 = _textCompletions;
  do
  {
    v8 = 0;
    v50 = v5;
    do
    {
      if (*v55 != v6)
      {
        objc_enumerationMutation(_textCompletions);
      }

      v9 = *(*(&v54 + 1) + 8 * v8);
      candidate = [v9 candidate];
      lowercaseString = [candidate lowercaseString];

      input = [v9 input];
      lowercaseString2 = [input lowercaseString];

      input2 = [v9 input];
      if (![input2 length])
      {

LABEL_11:
        v20 = [p_info + 396 inlineTextCompletion:v9 source:v9];
        goto LABEL_12;
      }

      v15 = [lowercaseString hasPrefix:lowercaseString2];

      if (v15)
      {
        goto LABEL_11;
      }

      v53 = lowercaseString;
      candidate2 = [v9 candidate];
      v17 = [candidate2 length];
      input3 = [v9 input];
      v19 = [input3 length];

      if (v17 < v19)
      {

        p_info = (_UIKeyboardPopover + 32);
        goto LABEL_13;
      }

      v21 = v9;
      input4 = [v21 input];
      v23 = [input4 componentsSeparatedByString:@" "];

      v24 = v21;
      if ([v23 count] >= 2)
      {
        lastObject = [v23 lastObject];
        candidate3 = [v21 candidate];
        v24 = [v21 candidateByReplacingWithCandidate:candidate3 input:lastObject];
      }

      v51 = v21;
      v52 = v23;
      candidate4 = [v24 candidate];
      v28 = [candidate4 length];
      input5 = [v24 input];
      v30 = v28 - [input5 length];

      v31 = 0;
      while (1)
      {
        candidate5 = [v24 candidate];
        v33 = [candidate5 substringFromIndex:v31];

        lowercaseString3 = [v33 lowercaseString];
        input6 = [v24 input];
        lowercaseString4 = [input6 lowercaseString];
        v37 = [lowercaseString3 hasPrefix:lowercaseString4];

        if (v37)
        {
          break;
        }

        if (++v31 > v30)
        {
          goto LABEL_24;
        }
      }

      input7 = [v24 input];
      v39 = [v24 candidateByReplacingWithCandidate:v33 input:input7];

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
      _textCompletions = v49;
      v5 = v50;
      p_info = (_UIKeyboardPopover + 32);
      lowercaseString = v53;
LABEL_12:

      if (v20)
      {
        goto LABEL_30;
      }

LABEL_13:
      ++v8;
    }

    while (v8 != v5);
    v45 = [_textCompletions countByEnumeratingWithState:&v54 objects:v62 count:16];
    v5 = v45;
  }

  while (v45);
LABEL_29:
  v20 = 0;
LABEL_30:

  return v20;
}

- (void)updateTextCompletionWithExternalSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v5 = suggestionCopy;
  if (suggestionCopy)
  {
    inputText = [suggestionCopy inputText];
    v7 = [inputText length];

    if (v7)
    {
      _keyboardCandidate = [v5 _keyboardCandidate];
      _keyboardCandidate2 = [v5 _keyboardCandidate];
      v10 = [_UIInlineTextCompletion inlineTextCompletion:_keyboardCandidate source:_keyboardCandidate2];

      if (qword_1ED4A2498 != -1)
      {
        dispatch_once(&qword_1ED4A2498, &__block_literal_global_637);
      }

      delegate = [(UIInlineTextCompletionController *)self delegate];
      taskQueue = [delegate taskQueue];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __79__UIInlineTextCompletionController_updateTextCompletionWithExternalSuggestion___block_invoke_3;
      v15[3] = &unk_1E70FD1B8;
      v15[4] = self;
      v16 = v10;
      v13 = _MergedGlobals_1340;
      v14 = v10;
      [taskQueue performSingleTask:v15 breadcrumb:v13];
    }
  }
}

void __79__UIInlineTextCompletionController_updateTextCompletionWithExternalSuggestion___block_invoke()
{
  v0 = [&__block_literal_global_67_3 copy];
  v1 = _MergedGlobals_1340;
  _MergedGlobals_1340 = v0;
}

- (BOOL)_isCompletion:(id)completion continuingLastCompletion:(id)lastCompletion
{
  completionCopy = completion;
  lastCompletionCopy = lastCompletion;
  v8 = lastCompletionCopy;
  if ((completionCopy == 0) == (lastCompletionCopy != 0))
  {
    goto LABEL_6;
  }

  if (completionCopy != lastCompletionCopy)
  {
    candidate = [lastCompletionCopy candidate];
    candidate2 = [completionCopy candidate];
    v11 = [candidate hasSuffix:candidate2];

    if (v11)
    {
      input = [completionCopy input];
      input2 = [v8 input];
      v14 = [input hasPrefix:input2];

      if (v14)
      {
        goto LABEL_5;
      }

      delegate = [(UIInlineTextCompletionController *)self delegate];
      documentState = [delegate documentState];
      contextBeforeInput = [documentState contextBeforeInput];

      input3 = [completionCopy input];
      if ([input3 length])
      {
        goto LABEL_9;
      }

      v21 = [contextBeforeInput length];
      input4 = [v8 input];
      v23 = [input4 length];

      if (v21 < v23)
      {
        v15 = 0;
        goto LABEL_11;
      }

      candidate3 = [v8 candidate];
      input3 = [candidate3 componentsSeparatedByString:@" "];

      firstObject = [input3 firstObject];
      if (!firstObject)
      {
LABEL_9:
        v15 = 0;
      }

      else
      {
        v26 = firstObject;
        input5 = [v8 input];
        if ([v26 hasPrefix:input5])
        {
          v15 = [contextBeforeInput hasSuffix:v26];
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

+ (id)_documentTextThroughSelection:(id)selection
{
  selectionCopy = selection;
  contextBeforeInput = [selectionCopy contextBeforeInput];
  v5 = contextBeforeInput;
  v6 = &stru_1EFB14550;
  if (contextBeforeInput)
  {
    v6 = contextBeforeInput;
  }

  v7 = v6;

  markedText = [selectionCopy markedText];
  v9 = [markedText length];

  if (v9)
  {
    markedText2 = [selectionCopy markedText];
    selectedRangeInMarkedText = [selectionCopy selectedRangeInMarkedText];
    selectedText2 = [markedText2 substringWithRange:{0, selectedRangeInMarkedText + v12}];
  }

  else
  {
    selectedText = [selectionCopy selectedText];

    if (!selectedText)
    {
      goto LABEL_8;
    }

    selectedText2 = [selectionCopy selectedText];
  }

  v15 = [(__CFString *)v7 stringByAppendingString:selectedText2];

  v7 = v15;
LABEL_8:

  return v7;
}

- (void)willPerformKeyboardOutput:(id)output
{
  outputCopy = output;
  if (![(UIInlineTextCompletionController *)self _deleteToUndoEnabled])
  {
    delegate = [(UIInlineTextCompletionController *)self delegate];
    documentState = [delegate documentState];

    if (_outputIsSimpleDeletion(outputCopy) || ([documentState selectedText], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
    {
      [(UIInlineTextCompletionController *)self setHasForwardProgress:0];
      lastAcceptedTextCompletion = [(UIInlineTextCompletionController *)self lastAcceptedTextCompletion];

      if (lastAcceptedTextCompletion)
      {
        v9 = [objc_opt_class() _documentTextThroughSelection:documentState];
        lastAcceptedTextCompletion2 = [(UIInlineTextCompletionController *)self lastAcceptedTextCompletion];
        candidate = [lastAcceptedTextCompletion2 candidate];
        v12 = candidate;
        v13 = &stru_1EFB14550;
        if (candidate)
        {
          v13 = candidate;
        }

        v14 = v13;

        v15 = [v9 hasSuffix:v14];
        if (v15)
        {
          lastAcceptedTextCompletion3 = [(UIInlineTextCompletionController *)self lastAcceptedTextCompletion];
          [(UIInlineTextCompletionController *)self _registerLearningForInlineCompletion:lastAcceptedTextCompletion3 learningMode:*MEMORY[0x1E69D9930]];

          [(UIInlineTextCompletionController *)self setLastAcceptedTextCompletion:0];
        }
      }
    }
  }

  if (+[UIKeyboard presentsInlineTextCompletionAsMarkedText])
  {
    presentingTextCompletionAsMarkedText = [(UIInlineTextCompletionController *)self presentingTextCompletionAsMarkedText];

    if (presentingTextCompletionAsMarkedText)
    {
      textCompletion = [(UIInlineTextCompletionController *)self textCompletion];
      [(UIInlineTextCompletionController *)self _removeTextCompletionPromptForReason:7];
      [(UIInlineTextCompletionController *)self setCandidateRemovedOnWillPerformOutput:textCompletion];
    }
  }
}

- (void)didPerformKeyboardOutput:(id)output
{
  v46 = *MEMORY[0x1E69E9840];
  outputCopy = output;
  [(UIInlineTextCompletionController *)self setDeleting:_outputIsSimpleDeletion(outputCopy)];
  insertionText = [outputCopy insertionText];
  v6 = [insertionText length];

  if (v6)
  {
    [(UIInlineTextCompletionController *)self setHasForwardProgress:1];
  }

  candidateRemovedOnWillPerformOutput = [(UIInlineTextCompletionController *)self candidateRemovedOnWillPerformOutput];
  [(UIInlineTextCompletionController *)self setCandidateRemovedOnWillPerformOutput:0];
  if (candidateRemovedOnWillPerformOutput)
  {
    v8 = outputCopy;
    insertionText2 = [v8 insertionText];
    v10 = [insertionText2 length];

    if (!v10 || [v8 deletionCount] || objc_msgSend(v8, "forwardDeletionCount"))
    {
    }

    else
    {
      acceptedCandidate = [v8 acceptedCandidate];

      if (!acceptedCandidate)
      {
        candidate = [candidateRemovedOnWillPerformOutput candidate];
        v13 = [candidate length];
        input = [candidateRemovedOnWillPerformOutput input];
        v15 = [input length];

        if (v13 > v15)
        {
          candidate2 = [candidateRemovedOnWillPerformOutput candidate];
          input2 = [candidateRemovedOnWillPerformOutput input];
          v18 = [candidate2 substringFromIndex:{objc_msgSend(input2, "length")}];

          v19 = [v18 length];
          insertionText3 = [v8 insertionText];
          v21 = [insertionText3 length];

          if (v19 > v21)
          {
            insertionText4 = [v8 insertionText];
            v23 = [v18 hasPrefix:insertionText4];

            if (v23)
            {
              input3 = [candidateRemovedOnWillPerformOutput input];
              insertionText5 = [v8 insertionText];
              v26 = [input3 stringByAppendingString:insertionText5];

              completion = [candidateRemovedOnWillPerformOutput completion];
              candidate3 = [candidateRemovedOnWillPerformOutput candidate];
              v29 = [completion candidateByReplacingWithCandidate:candidate3 input:v26];

              source = [candidateRemovedOnWillPerformOutput source];
              v31 = [_UIInlineTextCompletion inlineTextCompletion:v29 source:source];

              v32 = _UIKBInlineTextCompletionLog();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                v38 = _shortCompletionDescr(candidateRemovedOnWillPerformOutput);
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

              delegate = [(UIInlineTextCompletionController *)self delegate];
              taskQueue = [delegate taskQueue];
              v40[0] = MEMORY[0x1E69E9820];
              v40[1] = 3221225472;
              v40[2] = __61__UIInlineTextCompletionController_didPerformKeyboardOutput___block_invoke_3;
              v40[3] = &unk_1E70FD1B8;
              v40[4] = self;
              v41 = v31;
              v35 = qword_1ED4A24A0;
              v36 = v31;
              [taskQueue performSingleTask:v40 breadcrumb:v35];
            }

            else
            {
              v26 = _UIKBInlineTextCompletionLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v37 = _shortCompletionDescr(candidateRemovedOnWillPerformOutput);
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

- (void)willAcceptPredictiveInput:(id)input
{
  inputCopy = input;
  if (!+[UIKeyboard usesInputSystemUI])
  {
    acceptingTextCompletion = [(UIInlineTextCompletionController *)self acceptingTextCompletion];

    if (!acceptingTextCompletion)
    {
      textCompletion = [(UIInlineTextCompletionController *)self textCompletion];

      if (textCompletion)
      {
        textCompletion2 = [(UIInlineTextCompletionController *)self textCompletion];
        v8 = [(UIInlineTextCompletionController *)self _oneWordTextCompletionFromTextCompletion:textCompletion2];

        candidate = [v8 candidate];
        candidate2 = [inputCopy candidate];
        v11 = candidate2;
        if (candidate2)
        {
          v12 = candidate2;
        }

        else
        {
          v12 = &stru_1EFB14550;
        }

        if ([candidate isEqualToString:v12])
        {
          input = [v8 input];
          input2 = [inputCopy input];
          v15 = input2;
          if (input2)
          {
            v16 = input2;
          }

          else
          {
            v16 = &stru_1EFB14550;
          }

          v17 = [input isEqualToString:v16];
        }

        else
        {
          v17 = 0;
        }

        input3 = [inputCopy input];
        candidate3 = [inputCopy candidate];
        v20 = candidate3;
        if (candidate3)
        {
          v21 = candidate3;
        }

        else
        {
          v21 = &stru_1EFB14550;
        }

        v22 = [input3 isEqualToString:v21];

        if (v17)
        {
          v23 = _UIKBInlineTextCompletionLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEBUG, "Accepted text completion by selecting from prediction bar", buf, 2u);
          }

          [(UIInlineTextCompletionController *)self _registerLearningForInlineCompletion:v8 learningMode:*MEMORY[0x1E69D9910]];
          selfCopy2 = self;
          v25 = 2;
        }

        else
        {
          if ((v22 & 1) == 0)
          {
            candidate4 = [inputCopy candidate];
            v28 = candidate4;
            if (candidate4)
            {
              v29 = candidate4;
            }

            else
            {
              v29 = &stru_1EFB14550;
            }

            v30 = v29;

            input4 = [v8 input];
            v32 = [input4 stringByAppendingString:v30];
            whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
            v34 = [v32 componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

            candidate5 = [v8 candidate];
            whitespaceCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];

            v37 = [candidate5 componentsSeparatedByCharactersInSet:whitespaceCharacterSet2];

            LODWORD(whitespaceCharacterSet2) = [v34 isEqual:v37];
            v38 = _UIKBInlineTextCompletionLog();
            v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG);
            if (whitespaceCharacterSet2)
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
          selfCopy2 = self;
          v25 = 5;
        }

        [(UIInlineTextCompletionController *)selfCopy2 _removeTextCompletionPromptForReason:v25];
LABEL_36:
      }
    }
  }
}

- (void)_removeTextCompletionPromptForReason:(int64_t)reason
{
  v18 = *MEMORY[0x1E69E9840];
  if (!+[UIKeyboard usesInputSystemUI])
  {
    [(UIInlineTextCompletionController *)self _clearInlineCompletionCoachingTimer];
    v5 = +[UIKeyboardImpl activeInstance];
    [v5 dismissEducationTip];

    presentingTextCompletionAsMarkedText = [(UIInlineTextCompletionController *)self presentingTextCompletionAsMarkedText];
    if (presentingTextCompletionAsMarkedText)
    {

LABEL_4:
      if (reason == 5 && ![(UIInlineTextCompletionController *)self _isCompletion:0 continuingLastCompletion:self->_textCompletion])
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

      delegate = [(UIInlineTextCompletionController *)self delegate];
      [delegate updateKeyboardConfigurations];

      [(UIInlineTextCompletionController *)self _clearTextCompletionPromptTimer];
      if (+[UIKeyboard presentsInlineTextCompletionAsMarkedText])
      {
        presentingTextCompletionAsMarkedText2 = [(UIInlineTextCompletionController *)self presentingTextCompletionAsMarkedText];

        if (presentingTextCompletionAsMarkedText2)
        {
          m_textCompletionPrompt = [(UIInlineTextCompletionController *)self presentingTextCompletionAsMarkedText];
          [(UIInlineTextCompletionController *)self setPresentingTextCompletionAsMarkedText:0];
          delegate2 = [(UIInlineTextCompletionController *)self delegate];
          [delegate2 removeTextCompletionFromMarkedText:m_textCompletionPrompt];

LABEL_14:
        }
      }

      else
      {
        superview = [(UIView *)self->m_textCompletionPrompt superview];

        if (superview)
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

    acceptingTextCompletion = [(UIInlineTextCompletionController *)self acceptingTextCompletion];

    if (!acceptingTextCompletion)
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
  inputDelegate = [(UIInlineTextCompletionController *)self inputDelegate];

  if (inputDelegate)
  {
    inlineCompletionCoachingTask = [(UIInlineTextCompletionController *)self inlineCompletionCoachingTask];
    isValid = [inlineCompletionCoachingTask isValid];

    if (isValid)
    {
      inlineCompletionCoachingTask2 = [(UIInlineTextCompletionController *)self inlineCompletionCoachingTask];
      [inlineCompletionCoachingTask2 resetTimer];
    }

    else
    {
      delegate = [(UIInlineTextCompletionController *)self delegate];
      taskQueue = [delegate taskQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __71__UIInlineTextCompletionController__touchInlineCompletionCoachingTimer__block_invoke;
      v10[3] = &unk_1E70FD058;
      v10[4] = self;
      v8 = [taskQueue scheduleTask:v10 timeInterval:0 repeats:2.0];
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

  delegate = [(UIInlineTextCompletionController *)self delegate];
  taskQueue = [delegate taskQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__UIInlineTextCompletionController_updateTextCompletionPrompt__block_invoke_3;
  v5[3] = &unk_1E70FD058;
  v5[4] = self;
  [taskQueue performSingleTask:v5 breadcrumb:qword_1ED4A24B0];
}

void __62__UIInlineTextCompletionController_updateTextCompletionPrompt__block_invoke()
{
  v0 = [&__block_literal_global_81_1 copy];
  v1 = qword_1ED4A24B0;
  qword_1ED4A24B0 = v0;
}

- (void)updateTextCompletionPromptExecutionContext:(id)context
{
  contextCopy = context;
  if (+[UIKeyboard usesInputSystemUI])
  {
    goto LABEL_2;
  }

  presentingTextCompletionAsMarkedText = [(UIInlineTextCompletionController *)self presentingTextCompletionAsMarkedText];
  if (presentingTextCompletionAsMarkedText)
  {
  }

  else
  {
    acceptingTextCompletion = [(UIInlineTextCompletionController *)self acceptingTextCompletion];

    if (acceptingTextCompletion)
    {
LABEL_2:
      [contextCopy returnExecutionToParent];
      goto LABEL_13;
    }
  }

  delegate = [(UIInlineTextCompletionController *)self delegate];
  autocorrectionController = [delegate autocorrectionController];

  textCompletions = [autocorrectionController textCompletions];

  if (!textCompletions)
  {
    goto LABEL_11;
  }

  if (![(UIInlineTextCompletionController *)self hasPrompt])
  {
    [(UIInlineTextCompletionController *)self _touchTextCompletionPromptTimer];
LABEL_11:
    [contextCopy returnExecutionToParent];
    goto LABEL_12;
  }

  _bestTextCompletion = [(UIInlineTextCompletionController *)self _bestTextCompletion];
  [(UIInlineTextCompletionController *)self _updateTextCompletionPrompt:_bestTextCompletion executionContext:contextCopy];

LABEL_12:
LABEL_13:
}

- (void)_updateTextCompletionPrompt:(id)prompt executionContext:(id)context
{
  v82 = *MEMORY[0x1E69E9840];
  promptCopy = prompt;
  contextCopy = context;
  candidate = [promptCopy candidate];
  v10 = candidate;
  if (candidate)
  {
    v11 = candidate;
  }

  else
  {
    v11 = &stru_1EFB14550;
  }

  v12 = v11;

  input = [promptCopy input];
  v14 = input;
  if (input)
  {
    v15 = input;
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
      v21 = contextCopy;
      candidate2 = [(_UIInlineTextCompletion *)textCompletion candidate];
      v23 = candidate2;
      if (candidate2)
      {
        v24 = candidate2;
      }

      else
      {
        v24 = &stru_1EFB14550;
      }

      v25 = v24;

      input2 = [*location input];
      v27 = input2;
      if (input2)
      {
        v28 = input2;
      }

      else
      {
        v28 = &stru_1EFB14550;
      }

      v29 = v28;

      if ([(__CFString *)v25 isEqualToString:v12]&& [(__CFString *)v29 isEqualToString:v16])
      {
        contextCopy = v21;
        [v21 returnExecutionToParent];

        goto LABEL_15;
      }

      contextCopy = v21;
    }

    v30 = _UIKBInlineTextCompletionLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v48 = _shortCompletionDescr(promptCopy);
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

      selfCopy7 = self;
      v19 = 9;
      goto LABEL_14;
    }

    delegate = [(UIInlineTextCompletionController *)self delegate];
    documentState = [delegate documentState];

    markedText = [documentState markedText];
    if ([markedText length])
    {

LABEL_36:
      v37 = _UIKBInlineTextCompletionLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_DEFAULT, "Will not present text completion (selected or marked text is not empty)", buf, 2u);
      }

      [(UIInlineTextCompletionController *)self _removeTextCompletionPromptForReason:10];
      [contextCopy returnExecutionToParent];
      goto LABEL_39;
    }

    [documentState selectedText];
    v35 = v73 = contextCopy;
    v36 = [v35 length];

    contextCopy = v73;
    if (v36)
    {
      goto LABEL_36;
    }

    contextAfterInput = [documentState contextAfterInput];
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v40 = [contextAfterInput stringByTrimmingCharactersInSet:whitespaceCharacterSet];

    if ([v40 length])
    {
      _firstLongCharacter = [v40 _firstLongCharacter];
      newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
      LOBYTE(_firstLongCharacter) = [newlineCharacterSet longCharacterIsMember:_firstLongCharacter];

      if ((_firstLongCharacter & 1) == 0)
      {
        v49 = _UIKBInlineTextCompletionLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v49, OS_LOG_TYPE_DEFAULT, "Will not present text completion: contextAfterInput is not empty and has non-whitespace characters before the first newline", buf, 2u);
        }

        selfCopy6 = self;
        v51 = 10;
        goto LABEL_61;
      }
    }

    inputDelegate = [(UIInlineTextCompletionController *)self inputDelegate];

    if (!inputDelegate)
    {
      v52 = _UIKBInlineTextCompletionLog();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v52, OS_LOG_TYPE_DEFAULT, "Will not present text completion: no input delegate", buf, 2u);
      }

      selfCopy6 = self;
      v51 = 13;
      goto LABEL_61;
    }

    delegate2 = [(UIInlineTextCompletionController *)self delegate];
    isSelecting = [delegate2 isSelecting];

    if (isSelecting)
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

        selfCopy6 = self;
        v51 = 12;
        goto LABEL_61;
      }

      delegate3 = [(UIInlineTextCompletionController *)self delegate];
      showingEmojiSearch = [delegate3 showingEmojiSearch];

      if (!showingEmojiSearch)
      {
        if (+[UIKeyboard presentsInlineTextCompletionAsMarkedText])
        {
          v56 = [(__CFString *)v12 substringFromIndex:[(__CFString *)v16 length]];
          v57 = _UIKBInlineTextCompletionLog();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = _shortCompletionDescr(promptCopy);
            *buf = 138412290;
            v81 = v58;
            _os_log_impl(&dword_188A29000, v57, OS_LOG_TYPE_DEFAULT, "Presenting inline text completion now: %@", buf, 0xCu);
          }

          v59 = objc_alloc(MEMORY[0x1E696AAB0]);
          _markedTextAttributes = [(UIInlineTextCompletionController *)self _markedTextAttributes];
          v61 = [v59 initWithString:v56 attributes:_markedTextAttributes];

          v62 = [MEMORY[0x1E69C6F88] intermediateTextWithInputString:v56 displayString:v61 selectionLocation:0];
          [(UIInlineTextCompletionController *)self setPresentingTextCompletionAsMarkedText:v56];
          objc_storeStrong(location, prompt);
          delegate4 = [(UIInlineTextCompletionController *)self delegate];
          [delegate4 presentTextCompletionAsMarkedText:v62];

          delegate5 = [(UIInlineTextCompletionController *)self delegate];
          [delegate5 removeAutocorrectPrompt];

          [(UIInlineTextCompletionController *)self _touchInlineCompletionCoachingTimer];
          [v73 returnExecutionToParent];

          contextCopy = v73;
        }

        else
        {
          v65 = documentState;
          delegate6 = [(UIInlineTextCompletionController *)self delegate];
          inputDelegateManager = [delegate6 inputDelegateManager];
          asyncCapableInputDelegate = [inputDelegateManager asyncCapableInputDelegate];

          if (asyncCapableInputDelegate)
          {
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __81__UIInlineTextCompletionController__updateTextCompletionPrompt_executionContext___block_invoke;
            aBlock[3] = &unk_1E70FD280;
            v76 = asyncCapableInputDelegate;
            v77 = v16;
            selfCopy5 = self;
            v79 = promptCopy;
            v69 = _Block_copy(aBlock);
            contextCopy = v73;
            if (qword_1ED4A24D8 != -1)
            {
              dispatch_once(&qword_1ED4A24D8, &__block_literal_global_90_5);
            }

            delegate7 = [(UIInlineTextCompletionController *)self delegate];
            taskQueue = [delegate7 taskQueue];
            [taskQueue addTask:v69 breadcrumb:qword_1ED4A24D0];

            [v73 returnExecutionToParent];
            v72 = v76;
          }

          else
          {
            v72 = [(UIInlineTextCompletionController *)self _textCompletionPromptRectsForInput:v16];
            [(UIInlineTextCompletionController *)self _updateTextCompletionPrompt:promptCopy inputRects:v72];
            contextCopy = v73;
            [v73 returnExecutionToParent];
          }

          documentState = v65;
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

    selfCopy6 = self;
    v51 = 11;
LABEL_61:
    [(UIInlineTextCompletionController *)selfCopy6 _removeTextCompletionPromptForReason:v51];
    contextCopy = v73;
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

  selfCopy7 = self;
  v19 = 4;
LABEL_14:
  [(UIInlineTextCompletionController *)selfCopy7 _removeTextCompletionPromptForReason:v19];
  [contextCopy returnExecutionToParent];
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

- (id)_textCompletionPromptRectsForInput:(id)input
{
  inputCopy = input;
  delegate = [(UIInlineTextCompletionController *)self delegate];
  v6 = [delegate rangeForTextCompletionInput:inputCopy];

  if (!v6)
  {
    goto LABEL_5;
  }

  if (([v6 isEmpty] & 1) == 0)
  {
    inputDelegate = [(UIInlineTextCompletionController *)self inputDelegate];
    [inputDelegate firstRectForRange:v6];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    inputDelegate2 = [(UIInlineTextCompletionController *)self inputDelegate];
    [inputDelegate2 _lastRectForRange:v6];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    delegate2 = [(UIInlineTextCompletionController *)self delegate];
    v18 = delegate2;
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

  inputDelegate3 = [(UIInlineTextCompletionController *)self inputDelegate];
  start = [v6 start];
  [inputDelegate3 caretRectForPosition:start];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  delegate2 = [(UIInlineTextCompletionController *)self delegate];
  v18 = delegate2;
  v19 = v10;
  v20 = v12;
  v21 = v14;
  v22 = v16;
  v23 = v10;
  v24 = v12;
  v25 = v14;
  v26 = v16;
LABEL_7:
  v27 = [delegate2 textCompletionInputRectsFromFirstRect:v19 lastRect:{v20, v21, v22, v23, v24, v25, v26}];

LABEL_8:

  return v27;
}

- (void)_updateTextCompletionPrompt:(id)prompt inputRects:(id)rects
{
  promptCopy = prompt;
  rectsCopy = rects;
  candidate = [promptCopy candidate];
  input = [promptCopy input];
  if (![rectsCopy count])
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

  lastObject = [rectsCopy lastObject];
  [lastObject rect];
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

  delegate = [(UIInlineTextCompletionController *)self delegate];
  inputOverlayContainer = [delegate inputOverlayContainer];

  if (inputOverlayContainer)
  {
    delegate2 = [(UIInlineTextCompletionController *)self delegate];
    [delegate2 updateKeyboardConfigurations];

    [(UIInlineTextCompletionController *)self _updateTextCompletionPromptWithTextCompletion:promptCopy parentView:inputOverlayContainer inputRects:rectsCopy];
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

- (void)_updateTextCompletionPromptWithTextCompletion:(id)completion parentView:(id)view inputRects:(id)rects
{
  v39 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  viewCopy = view;
  rectsCopy = rects;
  candidate = [(_UIInlineTextCompletion *)completionCopy candidate];
  input = [(_UIInlineTextCompletion *)completionCopy input];
  if ([(UIInlineTextCompletionController *)self _isCompletion:completionCopy continuingLastCompletion:self->_textCompletion])
  {
    v13 = _UIKBInlineTextCompletionLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v14 = _shortCompletionDescr(completionCopy);
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
    v14 = _shortCompletionDescr(completionCopy);
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
    superview = [(UIView *)m_textCompletionPrompt superview];

    if (superview == viewCopy)
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

  [viewCopy addSubview:{self->m_textCompletionPrompt, *v38}];
LABEL_16:
  v23 = self->m_textCompletionPrompt;
  inputDelegate = [(UIInlineTextCompletionController *)self inputDelegate];
  textInputView = [inputDelegate textInputView];
  [textInputView _convertVisualAltitude:self->m_textCompletionPrompt toView:0.0];
  [(UIView *)v23 _setVisualAltitude:?];

  lastObject = [rectsCopy lastObject];

  [lastObject rect];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = self->m_textCompletionPrompt;
  completion = [(_UIInlineTextCompletion *)completionCopy completion];
  [(UIInlineTextCompletionPrompt *)v35 setTextCompletion:completion inRect:v28, v30, v32, v34];

  [(UIView *)self->m_textCompletionPrompt setSize:v32, v34];
  textCompletion = self->_textCompletion;
  self->_textCompletion = completionCopy;
}

- (void)_presentInlineTextCompletionCoachingUIWithExecutionContext:(id)context
{
  contextCopy = context;
  [(UIInlineTextCompletionController *)self _clearInlineCompletionCoachingTimer];
  if ([(UIInlineTextCompletionController *)self _shouldShowInlineTextCompletionCoachingUI])
  {
    v4 = _UINSLocalizedStringWithDefaultValue(@"Inline Predictions", @"Inline Predictions");
    v5 = _UINSLocalizedStringWithDefaultValue(@"Press space to input predictive text.", @"Press space to input predictive text.");
    v6 = +[UIKeyboardImpl activeInstance];
    [v6 presentEducationTipWithTitle:v4 description:v5];

    v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v7 preferencesActions];
    [preferencesActions didTriggerOneTimeAction:@"DidShowInlineCompletionEducationTip"];
  }

  [contextCopy returnExecutionToParent];
}

- (BOOL)_shouldShowInlineTextCompletionCoachingUI
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v2 preferencesActions];
  v4 = [preferencesActions oneTimeActionCompleted:@"DidShowInlineCompletionEducationTip"];

  if (v4)
  {
    return 0;
  }

  v6 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions2 = [v6 preferencesActions];
  v8 = [preferencesActions2 valueForPreferenceKey:@"InlineCompletionAcceptedBySpaceEventCount"];
  integerValue = [v8 integerValue];

  return integerValue < 3;
}

- (void)_acceptTextCompletion:(id)completion learningMode:(id)mode
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  modeCopy = mode;
  if (!+[UIKeyboard usesInputSystemUI])
  {
    v8 = _UIKBInlineTextCompletionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = _shortCompletionDescr(completionCopy);
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "User accepted text completion: %@", &v13, 0xCu);
    }

    [(UIInlineTextCompletionController *)self setAcceptingTextCompletion:completionCopy];
    if (*MEMORY[0x1E69D9918] == modeCopy)
    {
      analyticsDispatcher = [(UIInlineTextCompletionController *)self analyticsDispatcher];
      [analyticsDispatcher setNextCandidateReplacementSource:7];
    }

    [(UIInlineTextCompletionController *)self _registerLearningForInlineCompletion:completionCopy learningMode:modeCopy];
    delegate = [(UIInlineTextCompletionController *)self delegate];
    completion = [completionCopy completion];
    [delegate acceptPredictiveInput:completion];

    [(UIInlineTextCompletionController *)self setAcceptingTextCompletion:0];
    [(UIInlineTextCompletionController *)self setLastAcceptedTextCompletion:completionCopy];
    [(UIInlineTextCompletionController *)self _removeTextCompletionPromptForReason:2];
  }
}

- (BOOL)_shouldAcceptFirstWordOfCandidateForWordTerminator:(unsigned int)terminator
{
  v3 = *&terminator;
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

- (int64_t)_acceptTypeForTypeWordTerminator:(id)terminator
{
  terminatorCopy = terminator;
  if ([terminatorCopy length])
  {
    v5 = [terminatorCopy _rangeOfLongCharacterAtIndex:0];
    v7 = v6;
    v8 = [terminatorCopy length];
    v9 = 0;
    if (!v5 && v7 == v8)
    {
      if (-[UIInlineTextCompletionController _shouldAcceptFirstWordOfCandidateForWordTerminator:](self, "_shouldAcceptFirstWordOfCandidateForWordTerminator:", [terminatorCopy _firstLongCharacter]))
      {
        v9 = 2;
      }

      else
      {
        delegate = [(UIInlineTextCompletionController *)self delegate];
        inputManagerState = [delegate inputManagerState];
        v12 = [inputManagerState stringEndsWord:terminatorCopy];

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

- (int64_t)_acceptTypeForInteraction:(int64_t)interaction wordTerminator:(id)terminator
{
  terminatorCopy = terminator;
  v7 = 1;
  if ((interaction - 1) >= 2 && interaction != 4)
  {
    if (interaction)
    {
      v7 = 0;
    }

    else
    {
      v7 = [(UIInlineTextCompletionController *)self _acceptTypeForTypeWordTerminator:terminatorCopy];
    }
  }

  return v7;
}

- (id)_acceptTextCompletionWithInteraction:(int64_t)interaction wordTerminator:(id)terminator
{
  v6 = [(UIInlineTextCompletionController *)self _acceptTypeForInteraction:interaction wordTerminator:terminator];
  if (v6 == 2)
  {
    oneWordTextCompletion = [(UIInlineTextCompletionController *)self oneWordTextCompletion];
  }

  else
  {
    if (v6 != 1)
    {
      v8 = 0;
      goto LABEL_11;
    }

    oneWordTextCompletion = [(UIInlineTextCompletionController *)self textCompletion];
  }

  v8 = oneWordTextCompletion;
  if (!oneWordTextCompletion)
  {
LABEL_11:
    v11 = 0;
    goto LABEL_17;
  }

  if (![(UIInlineTextCompletionController *)self _doesFirstPredictedCharacterEndWord:oneWordTextCompletion])
  {
LABEL_13:
    v8 = v8;
    goto LABEL_14;
  }

  if (![(UIInlineTextCompletionController *)self _shouldAcceptUpToNextWordOfCandidateOnWordBoundaryForInteraction:interaction])
  {
    if (interaction != 2)
    {
      completion = [v8 completion];
      input = [v8 input];
      v16 = [completion candidateByReplacingWithCandidate:input];

      source = [v8 source];
      v18 = [_UIInlineTextCompletion inlineTextCompletion:v16 source:source];

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

  textCompletion = [(UIInlineTextCompletionController *)self textCompletion];
  v10 = [(UIInlineTextCompletionController *)self _upToNextWordTextCompletionFromTextCompletion:textCompletion];

  v8 = v10;
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_14:
  v12 = MEMORY[0x1E69D9918];
  if (interaction != 2)
  {
    v12 = MEMORY[0x1E69D9920];
  }

  [(UIInlineTextCompletionController *)self _acceptTextCompletion:v8 learningMode:*v12];
  v11 = v8;
LABEL_17:

  return v11;
}

- (id)acceptTextCompletionWithInteraction:(int64_t)interaction wordTerminator:(id)terminator outputHandledByCaller:(BOOL)caller
{
  if (!caller)
  {
    v10 = [(UIInlineTextCompletionController *)self _acceptTextCompletionWithInteraction:interaction wordTerminator:terminator];
    completion = [v10 completion];
    goto LABEL_28;
  }

  v7 = [(UIInlineTextCompletionController *)self _acceptTypeForInteraction:interaction wordTerminator:terminator];
  v8 = v7;
  if (v7 == 2)
  {
    oneWordTextCompletion = [(UIInlineTextCompletionController *)self oneWordTextCompletion];
  }

  else
  {
    if (v7 != 1)
    {
      v10 = 0;
      goto LABEL_15;
    }

    oneWordTextCompletion = [(UIInlineTextCompletionController *)self textCompletion];
  }

  v10 = oneWordTextCompletion;
  if (oneWordTextCompletion)
  {
    if ([(UIInlineTextCompletionController *)self _doesFirstPredictedCharacterEndWord:oneWordTextCompletion])
    {
      if ([(UIInlineTextCompletionController *)self _shouldAcceptUpToNextWordOfCandidateOnWordBoundaryForInteraction:interaction])
      {
        textCompletion = [(UIInlineTextCompletionController *)self textCompletion];
        v13 = [(UIInlineTextCompletionController *)self _upToNextWordTextCompletionFromTextCompletion:textCompletion];

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
        if (interaction != 2)
        {
          v20 = MEMORY[0x1E69D9920];
        }

        [(UIInlineTextCompletionController *)self _registerLearningForInlineCompletion:v10 learningMode:*v20, v28];
        [(UIInlineTextCompletionController *)self setLastAcceptedTextCompletion:v10];
        [(UIInlineTextCompletionController *)self _removeTextCompletionPromptForReason:2];
        v15 = v10;
        goto LABEL_27;
      }

      if (interaction != 2)
      {
        completion2 = [v10 completion];
        input = [v10 input];
        v24 = [completion2 candidateByReplacingWithCandidate:input];

        source = [v10 source];
        v26 = [_UIInlineTextCompletion inlineTextCompletion:v24 source:source];

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
  completion = [v15 completion];

LABEL_28:

  return completion;
}

- (id)_candidateToUndoAcceptedTextCompletion
{
  lastAcceptedTextCompletion = [(UIInlineTextCompletionController *)self lastAcceptedTextCompletion];

  if (lastAcceptedTextCompletion)
  {
    delegate = [(UIInlineTextCompletionController *)self delegate];
    documentState = [delegate documentState];

    contextBeforeInput = [documentState contextBeforeInput];
    v7 = contextBeforeInput;
    if (contextBeforeInput)
    {
      v8 = contextBeforeInput;
    }

    else
    {
      v8 = &stru_1EFB14550;
    }

    v9 = v8;

    lastAcceptedTextCompletion2 = [(UIInlineTextCompletionController *)self lastAcceptedTextCompletion];
    candidate = [lastAcceptedTextCompletion2 candidate];
    v12 = candidate;
    if (candidate)
    {
      v13 = candidate;
    }

    else
    {
      v13 = &stru_1EFB14550;
    }

    v14 = v13;

    input = [lastAcceptedTextCompletion2 input];
    v16 = input;
    if (input)
    {
      v17 = input;
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
      delegate2 = [(UIInlineTextCompletionController *)self delegate];
      inputManagerState = [delegate2 inputManagerState];
      v25 = [inputManagerState stringEndsWord:v22];

      v26 = v19;
      if (v25)
      {
        v26 = [(__CFString *)v19 stringByAppendingString:v22];
      }

      if ([(__CFString *)v9 hasSuffix:v26])
      {
        v27 = [MEMORY[0x1E69D95F0] candidateWithCandidate:v18 forInput:v26];
        source = [lastAcceptedTextCompletion2 source];
        v29 = [_UIInlineTextCompletion inlineTextCompletion:v27 source:source];
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

  _candidateToUndoAcceptedTextCompletion = [(UIInlineTextCompletionController *)self _candidateToUndoAcceptedTextCompletion];
  v4 = _candidateToUndoAcceptedTextCompletion != 0;

  return v4;
}

- (void)undoAcceptedTextCompletionExecutionContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  _candidateToUndoAcceptedTextCompletion = [(UIInlineTextCompletionController *)self _candidateToUndoAcceptedTextCompletion];
  if (_candidateToUndoAcceptedTextCompletion)
  {
    v6 = _UIKBInlineTextCompletionLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      lastAcceptedTextCompletion = [(UIInlineTextCompletionController *)self lastAcceptedTextCompletion];
      v8 = _shortCompletionDescr(lastAcceptedTextCompletion);
      v9 = _shortCompletionDescr(_candidateToUndoAcceptedTextCompletion);
      *buf = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Undo accepted text completion: (Accepted: %@, Undo: %@)", buf, 0x16u);
    }

    lastAcceptedTextCompletion2 = [(UIInlineTextCompletionController *)self lastAcceptedTextCompletion];
    if (lastAcceptedTextCompletion2)
    {
      [(UIInlineTextCompletionController *)self _registerLearningForInlineCompletion:lastAcceptedTextCompletion2 learningMode:*MEMORY[0x1E69D9930]];
    }

    lastAcceptedTextCompletion = self->_lastAcceptedTextCompletion;
    self->_lastAcceptedTextCompletion = 0;

    [(UIInlineTextCompletionController *)self _removeTextCompletionPromptForReason:3];
    delegate = [(UIInlineTextCompletionController *)self delegate];
    completion = [_candidateToUndoAcceptedTextCompletion completion];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __79__UIInlineTextCompletionController_undoAcceptedTextCompletionExecutionContext___block_invoke;
    v15[3] = &unk_1E70FD058;
    v15[4] = self;
    v14 = [contextCopy childWithContinuation:v15];
    [delegate acceptPredictiveInput:completion appendSeparator:0 executionContext:v14];
  }

  else
  {
    [contextCopy returnExecutionToParent];
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

- (void)_registerLearningForInlineCompletion:(id)completion learningMode:(id)mode
{
  v32 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  modeCopy = mode;
  if (*MEMORY[0x1E69D9920] == modeCopy)
  {
    v8 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v8 preferencesActions];
    v10 = [preferencesActions valueForPreferenceKey:@"InlineCompletionAcceptedBySpaceEventCount"];
    integerValue = [v10 integerValue];

    v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions2 = [v12 preferencesActions];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue + 1];
    [preferencesActions2 setValue:v14 forPreferenceKey:@"InlineCompletionAcceptedBySpaceEventCount"];
  }

  delegate = [(UIInlineTextCompletionController *)self delegate];
  [delegate refreshKeyboardState];

  delegate2 = [(UIInlineTextCompletionController *)self delegate];
  keyboardState = [delegate2 keyboardState];

  v18 = _UIKBInlineTextCompletionLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v23 = _shortCompletionDescr(completionCopy);
    source = [completionCopy source];
    v25 = _shortCandidateDescr(source);
    v26 = 138412802;
    v27 = v23;
    v28 = 2112;
    v29 = v25;
    v30 = 2112;
    v31 = modeCopy;
    _os_log_debug_impl(&dword_188A29000, v18, OS_LOG_TYPE_DEBUG, "Register learning for completion:%@ sourceCandidate:%@ mode:%@", &v26, 0x20u);
  }

  delegate3 = [(UIInlineTextCompletionController *)self delegate];
  inlineTextCompletionLearner = [delegate3 inlineTextCompletionLearner];

  if (inlineTextCompletionLearner)
  {
    completion = [completionCopy completion];
    source2 = [completionCopy source];
    [inlineTextCompletionLearner registerLearning:completion fullCandidate:source2 keyboardState:keyboardState mode:modeCopy];
  }

  else
  {
    completion = _UIKBInlineTextCompletionLog();
    if (os_log_type_enabled(completion, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_188A29000, completion, OS_LOG_TYPE_DEFAULT, "NOTE: inlineTextCompletionLearner not found", &v26, 2u);
    }
  }
}

- (UIKBAnalyticsDispatcher)analyticsDispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDispatcher);

  return WeakRetained;
}

@end