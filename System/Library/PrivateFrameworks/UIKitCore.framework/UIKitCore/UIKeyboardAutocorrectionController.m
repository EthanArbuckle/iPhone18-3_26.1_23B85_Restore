@interface UIKeyboardAutocorrectionController
- (BOOL)_divertSmartPredictionsToTextChoicesAssistant;
- (BOOL)hasActiveObservers;
- (BOOL)hasTextSuggestionCandidates;
- (BOOL)isSmartReplyCandidates;
- (NSArray)textCompletions;
- (TIAutocorrectionList)autocorrectionList;
- (TIKeyboardCandidate)autocorrection;
- (UIKeyboardAutocorrectionController)init;
- (UIKeyboardAutocorrectionControllerDelegate)delegate;
- (id)storedListForCandidate:(id)a3;
- (void)_notifyObserversOfUpdatedAutocorrectionList:(uint64_t)a1;
- (void)_setAutocorrectionList:(int)a3 notifyObservers:;
- (void)clearAutocorrectionAndNotifyObservers:(BOOL)a3;
- (void)requestAutocorrectionWithExecutionContext:(id)a3;
- (void)setNeedsAutocorrection;
- (void)setTextSuggestionList:(id)a3;
- (void)updateAfterShiftStateChange;
@end

@implementation UIKeyboardAutocorrectionController

- (TIAutocorrectionList)autocorrectionList
{
  if (self->_needsAutocorrection)
  {
    if ([(UIKeyboardAutocorrectionController *)self requestedAutocorrection])
    {
      v3 = [(UIKeyboardAutocorrectionController *)self delegate];
      v4 = [v3 taskQueue];
      [v4 waitUntilAllTasksAreFinished];
    }

    else
    {
      if (qword_1ED49F3D0 != -1)
      {
        dispatch_once(&qword_1ED49F3D0, &__block_literal_global_380);
      }

      v3 = [(UIKeyboardAutocorrectionController *)self delegate];
      v4 = [v3 taskQueue];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __56__UIKeyboardAutocorrectionController_autocorrectionList__block_invoke_3;
      v7[3] = &unk_1E70FD058;
      v7[4] = self;
      [v4 performTask:v7 breadcrumb:_MergedGlobals_1191];
    }
  }

  autocorrectionList = self->_autocorrectionList;

  return autocorrectionList;
}

- (TIKeyboardCandidate)autocorrection
{
  v3 = [(UIKeyboardAutocorrectionController *)self autocorrectionList];
  v4 = [v3 shouldAcceptTopCandidate];

  if (v4)
  {
    v5 = [(UIKeyboardAutocorrectionController *)self autocorrectionList];
    v6 = [v5 candidates];
    v7 = [v6 firstObject];

    v8 = [v7 candidate];
    if ([v8 length])
    {
LABEL_3:

      goto LABEL_5;
    }

    v10 = [v7 slotID];

    if (!v10)
    {
      v8 = v7;
      v7 = 0;
      goto LABEL_3;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_5:

  return v7;
}

- (UIKeyboardAutocorrectionController)init
{
  v8.receiver = self;
  v8.super_class = UIKeyboardAutocorrectionController;
  v2 = [(UIKeyboardAutocorrectionController *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    autocorrectionObservers = v2->_autocorrectionObservers;
    v2->_autocorrectionObservers = v3;

    v2->_maximumNumberOfCandidates = 3;
    v5 = [MEMORY[0x1E695DF90] dictionary];
    recentCandidates = v2->_recentCandidates;
    v2->_recentCandidates = v5;
  }

  return v2;
}

- (BOOL)hasActiveObservers
{
  if (self)
  {
    self = self->_autocorrectionObservers;
  }

  return [(UIKeyboardAutocorrectionController *)self count]!= 0;
}

- (void)setNeedsAutocorrection
{
  if (!self->_needsAutocorrection)
  {
    self->_needsAutocorrection = 1;
    self->_signpostToken = arc4random();
    v3 = mach_absolute_time();
    kdebug_trace();
    v4 = kac_get_log();
    v5 = os_signpost_id_make_with_pointer(v4, self->_signpostToken);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v4))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_188A29000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "appAutocorrect", " enableTelemetry=YES ", buf, 2u);
      }
    }

    if (!self->_hasPendingAutocorrection && !self->_requestedAutocorrection)
    {
      self->_hasPendingAutocorrection = 1;
      if (qword_1ED49F3E0 != -1)
      {
        dispatch_once(&qword_1ED49F3E0, &__block_literal_global_12_5);
      }

      v7 = [(UIKeyboardAutocorrectionController *)self delegate];
      v8 = [v7 taskQueue];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __60__UIKeyboardAutocorrectionController_setNeedsAutocorrection__block_invoke_3;
      v9[3] = &unk_1E70FDAE0;
      v9[4] = self;
      v9[5] = v3;
      [v8 addDeferredTask:v9 breadcrumb:qword_1ED49F3D8];
    }
  }
}

void __60__UIKeyboardAutocorrectionController_setNeedsAutocorrection__block_invoke()
{
  v0 = [&__block_literal_global_14_4 copy];
  v1 = qword_1ED49F3D8;
  qword_1ED49F3D8 = v0;
}

- (UIKeyboardAutocorrectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __60__UIKeyboardAutocorrectionController_setNeedsAutocorrection__block_invoke_3(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 18) = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__UIKeyboardAutocorrectionController_setNeedsAutocorrection__block_invoke_4;
  v6[3] = &unk_1E70FDAE0;
  v3 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v6[5] = v3;
  v4 = [a2 childWithContinuation:v6];
  v5 = *(a1 + 32);
  if (v5[17] == 1 && (v5[16] & 1) == 0)
  {
    [v5 requestAutocorrectionWithExecutionContext:v4];
  }

  else
  {
    [v4 returnExecutionToParent];
  }
}

void __60__UIKeyboardAutocorrectionController_setNeedsAutocorrection__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = mach_absolute_time();
  kdebug_trace();
  v5 = kac_get_log();
  v6 = os_signpost_id_make_with_pointer(v5, *(*(a1 + 32) + 8));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v5, OS_SIGNPOST_INTERVAL_END, v7, "appAutocorrect", " enableTelemetry=YES ", v8, 2u);
    }
  }

  [_UIKeyboardDiagnosticCollection _requestTailspinWithDescription:@"KeyboardAutocorrectionLatency" startMAT:*(a1 + 40) endMAT:v4 ifExceedsThresholdSec:0.25];
  *(*(a1 + 32) + 8) = 0;
  [v3 returnExecutionToParent];
}

- (void)_notifyObserversOfUpdatedAutocorrectionList:(uint64_t)a1
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [*(a1 + 48) copy];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) autocorrectionController:a1 didUpdateAutocorrectionList:v3];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (NSArray)textCompletions
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(TIAutocorrectionList *)self->_autocorrectionList inlineCompletions];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __56__UIKeyboardAutocorrectionController_autocorrectionList__block_invoke()
{
  v0 = [&__block_literal_global_6_10 copy];
  v1 = _MergedGlobals_1191;
  _MergedGlobals_1191 = v0;
}

- (BOOL)_divertSmartPredictionsToTextChoicesAssistant
{
  v3 = +[UIKeyboard isInHardwareKeyboardMode];
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 _showsScribbleIconsInAssistantView];

  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v7 = [v6 systemInputAssistantViewController];
  v8 = [v7 assistantBarStyle];

  v9 = [(UIKeyboardAutocorrectionController *)self delegate];
  v10 = [v9 isPredictionViewControllerVisible];

  if (+[UIKeyboardImpl isSplit])
  {
    v11 = 1;
  }

  else if ((v3 | v5))
  {
    v11 = ((v8 - 2) < 3) | v10 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (void)_setAutocorrectionList:(int)a3 notifyObservers:
{
  v5 = a2;
  obj = v5;
  if (a1)
  {
    *(a1 + 17) = 0;
    v6 = [v5 predictions];
    v7 = _filteredCandidates(v6, &__block_literal_global_93_1);

    if ([v7 count])
    {
      if ([a1 _divertSmartPredictionsToTextChoicesAssistant])
      {
        v8 = obj;
        v9 = [v8 predictions];
        v10 = [v9 count];

        if (v10)
        {
          v11 = [v8 predictions];
          v12 = _filteredCandidates(v11, &__block_literal_global_96_2);

          obj = v8;
          v13 = [v12 count];
          v14 = [obj predictions];
          v15 = [v14 count];

          if (v13 < v15)
          {
            v16 = MEMORY[0x1E69D9570];
            v17 = [obj corrections];
            v18 = [obj emojiList];
            v19 = [obj inlineCompletions];
            v20 = [obj proactiveTriggers];
            v21 = [v16 listWithCorrections:v17 predictions:v12 emojiList:v18 inlineCompletionList:v19 proactiveTriggers:v20];

            obj = v21;
          }
        }

        else
        {
          obj = v8;
        }

        v24 = [a1 delegate];
        v25 = [v24 _textChoicesAssistant];
        [v25 showChoicesForCandidates:v7];
      }

      else
      {
        v22 = [a1 delegate];
        v23 = [v22 _textChoicesAssistant];
        [v23 dismissIfPresented];

        v24 = [a1 delegate];
        v25 = [v24 _textChoicesAssistant];
        [v25 clearSecureCandidateHashes];
      }
    }

    if (*(a1 + 24) != obj)
    {
      objc_storeStrong((a1 + 24), obj);
      if (a3)
      {
        [(UIKeyboardAutocorrectionController *)a1 _notifyObserversOfUpdatedAutocorrectionList:?];
      }
    }
  }
}

- (void)setTextSuggestionList:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_textSuggestionList, a3);
  if (self->_textSuggestionList)
  {
    [(UIKeyboardAutocorrectionController *)self setAutocorrectionList:?];
  }

  else
  {
    [(UIKeyboardAutocorrectionController *)self _notifyObserversOfUpdatedAutocorrectionList:?];
  }
}

- (void)clearAutocorrectionAndNotifyObservers:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  if (![(UIKeyboardAutocorrectionController *)self hasAutofillCandidates])
  {
    [(UIKeyboardAutocorrectionController *)self _setAutocorrectionList:0 notifyObservers:?];
    if (v3)
    {
      if (self)
      {
        v12 = 0u;
        v13 = 0u;
        v10 = 0u;
        v11 = 0u;
        v5 = [(NSHashTable *)self->_autocorrectionObservers copy];
        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v11;
          do
          {
            v9 = 0;
            do
            {
              if (*v11 != v8)
              {
                objc_enumerationMutation(v5);
              }

              [*(*(&v10 + 1) + 8 * v9++) autocorrectionControllerDidClearAutocorrections:self];
            }

            while (v7 != v9);
            v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
          }

          while (v7);
        }
      }
    }
  }
}

- (void)updateAfterShiftStateChange
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_needsAutocorrection)
  {
    v3 = [(TIAutocorrectionList *)self->_autocorrectionList corrections];
    v4 = [v3 autocorrection];
    v5 = __65__UIKeyboardAutocorrectionController_updateAfterShiftStateChange__block_invoke(v4);

    if (v5)
    {

      [(UIKeyboardAutocorrectionController *)self setNeedsAutocorrection];
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = [(TIAutocorrectionList *)self->_autocorrectionList candidates];
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            if (__65__UIKeyboardAutocorrectionController_updateAfterShiftStateChange__block_invoke(*(*(&v11 + 1) + 8 * i)))
            {
              [(UIKeyboardAutocorrectionController *)self setNeedsAutocorrection];
              goto LABEL_16;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }
  }
}

uint64_t __65__UIKeyboardAutocorrectionController_updateAfterShiftStateChange__block_invoke(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || ([v1 isForShortcutConversion] & 1) != 0 || (objc_msgSend(v2, "isReplacement") & 1) != 0 || (objc_msgSend(v2, "isSmartReply") & 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isSmartAction] ^ 1;
  }

  return v3;
}

- (BOOL)hasTextSuggestionCandidates
{
  v2 = [(UIKeyboardAutocorrectionController *)self textSuggestionList];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 predictions];
    v5 = [v4 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isSmartReplyCandidates
{
  v2 = [(UIKeyboardAutocorrectionController *)self autocorrectionList];
  v3 = [v2 corrections];
  v4 = [v3 autocorrection];
  if (v4)
  {
  }

  else
  {
    v6 = [v2 candidates];
    v7 = [v6 count];

    if (v7)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v14 = 1;
      v8 = [v2 candidates];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __60__UIKeyboardAutocorrectionController_isSmartReplyCandidates__block_invoke;
      v10[3] = &unk_1E70FDE20;
      v10[4] = &v11;
      [v8 enumerateObjectsUsingBlock:v10];

      v5 = *(v12 + 24);
      _Block_object_dispose(&v11, 8);
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:

  return v5 & 1;
}

uint64_t __60__UIKeyboardAutocorrectionController_isSmartReplyCandidates__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 candidateProperty];
  *(*(*(a1 + 32) + 8) + 24) &= result >> 1;
  *a4 = *(*(*(a1 + 32) + 8) + 24) ^ 1;
  return result;
}

- (void)requestAutocorrectionWithExecutionContext:(id)a3
{
  v4 = a3;
  if (self)
  {
    self->_requestedAutocorrection = 1;
  }

  v5 = [(UIKeyboardAutocorrectionController *)self delegate];
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __80__UIKeyboardAutocorrectionController_requestAutocorrectionWithExecutionContext___block_invoke;
    v7[3] = &unk_1E70FD058;
    v7[4] = self;
    v6 = [v4 childWithContinuation:v7];
    [v5 generateAutocorrectionWithExecutionContext:v6];
  }

  else
  {
    [v4 returnExecutionToParent];
  }
}

uint64_t __80__UIKeyboardAutocorrectionController_requestAutocorrectionWithExecutionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(v2 + 16) = 0;
  }

  return [a2 returnExecutionToParent];
}

- (id)storedListForCandidate:(id)a3
{
  v4 = a3;
  v5 = self->_autocorrectionList;
  if (!v5)
  {
    if (+[UIKeyboard usesInputSystemUI])
    {
      v5 = [MEMORY[0x1E69D9570] listWithAutocorrection:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end