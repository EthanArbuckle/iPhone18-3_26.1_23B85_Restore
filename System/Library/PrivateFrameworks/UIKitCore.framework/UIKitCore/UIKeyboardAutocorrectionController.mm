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
- (id)storedListForCandidate:(id)candidate;
- (void)_notifyObserversOfUpdatedAutocorrectionList:(uint64_t)list;
- (void)_setAutocorrectionList:(int)list notifyObservers:;
- (void)clearAutocorrectionAndNotifyObservers:(BOOL)observers;
- (void)requestAutocorrectionWithExecutionContext:(id)context;
- (void)setNeedsAutocorrection;
- (void)setTextSuggestionList:(id)list;
- (void)updateAfterShiftStateChange;
@end

@implementation UIKeyboardAutocorrectionController

- (TIAutocorrectionList)autocorrectionList
{
  if (self->_needsAutocorrection)
  {
    if ([(UIKeyboardAutocorrectionController *)self requestedAutocorrection])
    {
      delegate = [(UIKeyboardAutocorrectionController *)self delegate];
      taskQueue = [delegate taskQueue];
      [taskQueue waitUntilAllTasksAreFinished];
    }

    else
    {
      if (qword_1ED49F3D0 != -1)
      {
        dispatch_once(&qword_1ED49F3D0, &__block_literal_global_380);
      }

      delegate = [(UIKeyboardAutocorrectionController *)self delegate];
      taskQueue = [delegate taskQueue];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __56__UIKeyboardAutocorrectionController_autocorrectionList__block_invoke_3;
      v7[3] = &unk_1E70FD058;
      v7[4] = self;
      [taskQueue performTask:v7 breadcrumb:_MergedGlobals_1191];
    }
  }

  autocorrectionList = self->_autocorrectionList;

  return autocorrectionList;
}

- (TIKeyboardCandidate)autocorrection
{
  autocorrectionList = [(UIKeyboardAutocorrectionController *)self autocorrectionList];
  shouldAcceptTopCandidate = [autocorrectionList shouldAcceptTopCandidate];

  if (shouldAcceptTopCandidate)
  {
    autocorrectionList2 = [(UIKeyboardAutocorrectionController *)self autocorrectionList];
    candidates = [autocorrectionList2 candidates];
    firstObject = [candidates firstObject];

    candidate = [firstObject candidate];
    if ([candidate length])
    {
LABEL_3:

      goto LABEL_5;
    }

    slotID = [firstObject slotID];

    if (!slotID)
    {
      candidate = firstObject;
      firstObject = 0;
      goto LABEL_3;
    }
  }

  else
  {
    firstObject = 0;
  }

LABEL_5:

  return firstObject;
}

- (UIKeyboardAutocorrectionController)init
{
  v8.receiver = self;
  v8.super_class = UIKeyboardAutocorrectionController;
  v2 = [(UIKeyboardAutocorrectionController *)&v8 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    autocorrectionObservers = v2->_autocorrectionObservers;
    v2->_autocorrectionObservers = weakObjectsHashTable;

    v2->_maximumNumberOfCandidates = 3;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    recentCandidates = v2->_recentCandidates;
    v2->_recentCandidates = dictionary;
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

      delegate = [(UIKeyboardAutocorrectionController *)self delegate];
      taskQueue = [delegate taskQueue];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __60__UIKeyboardAutocorrectionController_setNeedsAutocorrection__block_invoke_3;
      v9[3] = &unk_1E70FDAE0;
      v9[4] = self;
      v9[5] = v3;
      [taskQueue addDeferredTask:v9 breadcrumb:qword_1ED49F3D8];
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

- (void)_notifyObserversOfUpdatedAutocorrectionList:(uint64_t)list
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (list)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [*(list + 48) copy];
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

          [*(*(&v9 + 1) + 8 * v8++) autocorrectionController:list didUpdateAutocorrectionList:v3];
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
    inlineCompletions = [(TIAutocorrectionList *)self->_autocorrectionList inlineCompletions];
  }

  else
  {
    inlineCompletions = 0;
  }

  return inlineCompletions;
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
  _showsScribbleIconsInAssistantView = [v4 _showsScribbleIconsInAssistantView];

  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  systemInputAssistantViewController = [v6 systemInputAssistantViewController];
  assistantBarStyle = [systemInputAssistantViewController assistantBarStyle];

  delegate = [(UIKeyboardAutocorrectionController *)self delegate];
  isPredictionViewControllerVisible = [delegate isPredictionViewControllerVisible];

  if (+[UIKeyboardImpl isSplit])
  {
    v11 = 1;
  }

  else if ((v3 | _showsScribbleIconsInAssistantView))
  {
    v11 = ((assistantBarStyle - 2) < 3) | isPredictionViewControllerVisible ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (void)_setAutocorrectionList:(int)list notifyObservers:
{
  v5 = a2;
  obj = v5;
  if (self)
  {
    *(self + 17) = 0;
    predictions = [v5 predictions];
    v7 = _filteredCandidates(predictions, &__block_literal_global_93_1);

    if ([v7 count])
    {
      if ([self _divertSmartPredictionsToTextChoicesAssistant])
      {
        v8 = obj;
        predictions2 = [v8 predictions];
        v10 = [predictions2 count];

        if (v10)
        {
          predictions3 = [v8 predictions];
          v12 = _filteredCandidates(predictions3, &__block_literal_global_96_2);

          obj = v8;
          v13 = [v12 count];
          predictions4 = [obj predictions];
          v15 = [predictions4 count];

          if (v13 < v15)
          {
            v16 = MEMORY[0x1E69D9570];
            corrections = [obj corrections];
            emojiList = [obj emojiList];
            inlineCompletions = [obj inlineCompletions];
            proactiveTriggers = [obj proactiveTriggers];
            v21 = [v16 listWithCorrections:corrections predictions:v12 emojiList:emojiList inlineCompletionList:inlineCompletions proactiveTriggers:proactiveTriggers];

            obj = v21;
          }
        }

        else
        {
          obj = v8;
        }

        delegate = [self delegate];
        _textChoicesAssistant = [delegate _textChoicesAssistant];
        [_textChoicesAssistant showChoicesForCandidates:v7];
      }

      else
      {
        delegate2 = [self delegate];
        _textChoicesAssistant2 = [delegate2 _textChoicesAssistant];
        [_textChoicesAssistant2 dismissIfPresented];

        delegate = [self delegate];
        _textChoicesAssistant = [delegate _textChoicesAssistant];
        [_textChoicesAssistant clearSecureCandidateHashes];
      }
    }

    if (*(self + 24) != obj)
    {
      objc_storeStrong((self + 24), obj);
      if (list)
      {
        [(UIKeyboardAutocorrectionController *)self _notifyObserversOfUpdatedAutocorrectionList:?];
      }
    }
  }
}

- (void)setTextSuggestionList:(id)list
{
  listCopy = list;
  objc_storeStrong(&self->_textSuggestionList, list);
  if (self->_textSuggestionList)
  {
    [(UIKeyboardAutocorrectionController *)self setAutocorrectionList:?];
  }

  else
  {
    [(UIKeyboardAutocorrectionController *)self _notifyObserversOfUpdatedAutocorrectionList:?];
  }
}

- (void)clearAutocorrectionAndNotifyObservers:(BOOL)observers
{
  observersCopy = observers;
  v15 = *MEMORY[0x1E69E9840];
  if (![(UIKeyboardAutocorrectionController *)self hasAutofillCandidates])
  {
    [(UIKeyboardAutocorrectionController *)self _setAutocorrectionList:0 notifyObservers:?];
    if (observersCopy)
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
    corrections = [(TIAutocorrectionList *)self->_autocorrectionList corrections];
    autocorrection = [corrections autocorrection];
    v5 = __65__UIKeyboardAutocorrectionController_updateAfterShiftStateChange__block_invoke(autocorrection);

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
      candidates = [(TIAutocorrectionList *)self->_autocorrectionList candidates];
      v7 = [candidates countByEnumeratingWithState:&v11 objects:v15 count:16];
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
              objc_enumerationMutation(candidates);
            }

            if (__65__UIKeyboardAutocorrectionController_updateAfterShiftStateChange__block_invoke(*(*(&v11 + 1) + 8 * i)))
            {
              [(UIKeyboardAutocorrectionController *)self setNeedsAutocorrection];
              goto LABEL_16;
            }
          }

          v8 = [candidates countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  textSuggestionList = [(UIKeyboardAutocorrectionController *)self textSuggestionList];
  v3 = textSuggestionList;
  if (textSuggestionList)
  {
    predictions = [textSuggestionList predictions];
    v5 = [predictions count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isSmartReplyCandidates
{
  autocorrectionList = [(UIKeyboardAutocorrectionController *)self autocorrectionList];
  corrections = [autocorrectionList corrections];
  autocorrection = [corrections autocorrection];
  if (autocorrection)
  {
  }

  else
  {
    candidates = [autocorrectionList candidates];
    v7 = [candidates count];

    if (v7)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v14 = 1;
      candidates2 = [autocorrectionList candidates];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __60__UIKeyboardAutocorrectionController_isSmartReplyCandidates__block_invoke;
      v10[3] = &unk_1E70FDE20;
      v10[4] = &v11;
      [candidates2 enumerateObjectsUsingBlock:v10];

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

- (void)requestAutocorrectionWithExecutionContext:(id)context
{
  contextCopy = context;
  if (self)
  {
    self->_requestedAutocorrection = 1;
  }

  delegate = [(UIKeyboardAutocorrectionController *)self delegate];
  if (delegate)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __80__UIKeyboardAutocorrectionController_requestAutocorrectionWithExecutionContext___block_invoke;
    v7[3] = &unk_1E70FD058;
    v7[4] = self;
    v6 = [contextCopy childWithContinuation:v7];
    [delegate generateAutocorrectionWithExecutionContext:v6];
  }

  else
  {
    [contextCopy returnExecutionToParent];
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

- (id)storedListForCandidate:(id)candidate
{
  candidateCopy = candidate;
  v5 = self->_autocorrectionList;
  if (!v5)
  {
    if (+[UIKeyboard usesInputSystemUI])
    {
      v5 = [MEMORY[0x1E69D9570] listWithAutocorrection:candidateCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end