@interface UIWKTextInteractionAssistant
- (BOOL)overrideGestureRecognizerShouldBegin:(id)begin;
- (BOOL)shouldSuppressSelectionCommands;
- (BOOL)shouldTryReplacementsForText:(id)text withOptions:(unint64_t)options;
- (CGRect)caretBeforeTap;
- (UIWKTextInteractionAssistant)initWithView:(id)view;
- (id)_asText;
- (id)alternativesForSelectedText;
- (id)asyncInteractionDelegate;
- (id)asyncWebKitInteractionDelegate;
- (id)generatorForRange:(id)range withOptions:(unint64_t)options;
- (id)textChecker;
- (id)webInteractionDelegate;
- (void)addGestureRecognizersToView:(id)view;
- (void)beginSelectionChange;
- (void)changeSelectionWithTouchAt:(CGPoint)at withSelectionTouch:(int64_t)touch baseIsStart:(BOOL)start withFlags:(int64_t)flags;
- (void)dealloc;
- (void)didEndScrollingOverflow;
- (void)didEndSelectionInteraction;
- (void)endSelectionChange;
- (void)lookup:(id)lookup fromRect:(CGRect)rect;
- (void)lookup:(id)lookup withRange:(_NSRange)range fromRect:(CGRect)rect;
- (void)rangeSelectionCanceled;
- (void)rangeSelectionEnded:(CGPoint)ended;
- (void)rangeSelectionMoved:(CGPoint)moved withTouchPoint:(CGPoint)point;
- (void)rangeSelectionStarted:(CGPoint)started;
- (void)scheduleChineseTransliterationForText:(id)text;
- (void)scheduleReplacementsForText:(id)text withOptions:(unint64_t)options;
- (void)scheduleReplacementsWithOptions:(unint64_t)options;
- (void)selectAll:(id)all;
- (void)selectTextForReplacement:(id)replacement withOptions:(unint64_t)options;
- (void)selectWord;
- (void)selectionChanged;
- (void)selectionChangedWithGestureAt:(CGPoint)at withGesture:(int64_t)gesture withState:(int64_t)state withFlags:(int64_t)flags;
- (void)selectionChangedWithTouchAt:(CGPoint)at withSelectionTouch:(int64_t)touch withFlags:(int64_t)flags;
- (void)showDictionaryFor:(id)for fromRect:(CGRect)rect;
- (void)showReplacementsForText:(id)text withOptions:(unint64_t)options;
- (void)showReplacementsForText:(id)text withOptions:(unint64_t)options rects:(id)rects;
- (void)showSelectionView;
- (void)showShareSheetFor:(id)for fromRect:(CGRect)rect;
- (void)showTextServiceFor:(id)for fromRect:(CGRect)rect;
- (void)textRangeAdjustmentInteraction:(id)interaction didBeginAtPoint:(CGPoint)point;
- (void)textRangeAdjustmentInteraction:(id)interaction didEndAtPoint:(CGPoint)point;
- (void)textRangeAdjustmentInteraction:(id)interaction prepareForInvalidation:(id)invalidation;
- (void)textRangeAdjustmentInteraction:(id)interaction selectionMoved:(CGPoint)moved withTouchPoint:(CGPoint)point;
- (void)textRangeAdjustmentInteractionWasCancelled:(id)cancelled;
- (void)translate:(id)translate fromRect:(CGRect)rect;
- (void)updateActivatingSelectionView;
- (void)updateSelectionWithPoint:(CGPoint)point;
- (void)updateWithMagnifierTerminalPoint:(BOOL)point;
- (void)willBeginSelectionInteraction;
- (void)willChangeSelection;
- (void)willStartScrollingOverflow;
@end

@implementation UIWKTextInteractionAssistant

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIWKTextInteractionAssistant;
  [(UITextInteractionAssistant *)&v3 dealloc];
}

- (UIWKTextInteractionAssistant)initWithView:(id)view
{
  v5.receiver = self;
  v5.super_class = UIWKTextInteractionAssistant;
  result = [(UITextInteractionAssistant *)&v5 initWithView:view];
  if (result)
  {
    result->_selectionOperation = 0;
    result->_options = 0;
    v4 = *(MEMORY[0x1E695F058] + 16);
    result->_caretBeforeTap.origin = *MEMORY[0x1E695F058];
    result->_caretBeforeTap.size = v4;
  }

  return result;
}

- (id)textChecker
{
  result = self->_textChecker;
  if (!result)
  {
    result = [[UITextChecker alloc] _initWithAsynchronousLoading:1];
    self->_textChecker = result;
  }

  return result;
}

- (BOOL)overrideGestureRecognizerShouldBegin:(id)begin
{
  [begin locationInView:{objc_msgSend(begin, "view")}];
  v6 = v5;
  v8 = v7;
  v9 = gestureTypeForGestureRecognizer(begin, [objc_msgSend(begin "view")]);
  if ([objc_msgSend(begin "view")])
  {
    view = [begin view];
    if ((v9 - 1) > 9)
    {
      v11 = 0;
    }

    else
    {
      v11 = qword_18A682CB0[v9 - 1];
    }
  }

  else
  {
    view2 = [(UITextInteractionAssistant *)self view];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return 0;
    }

    view = view2;
    v11 = v9;
  }

  return [(UITextInput *)view textInteractionGesture:v11 shouldBeginAtPoint:v6, v8];
}

- (void)addGestureRecognizersToView:(id)view
{
  if ([view isEditable])
  {
    [(UIWKTextInteractionAssistant *)self textChecker];
  }

  v6.receiver = self;
  v6.super_class = UIWKTextInteractionAssistant;
  [(UITextInteractionAssistant *)&v6 addGestureRecognizersToView:view];
  forcePressGesture = [(UITextInteractionAssistant *)self forcePressGesture];
  if (forcePressGesture)
  {
    [(UIGestureRecognizer *)forcePressGesture setAllowedTouchTypes:&unk_1EFE2DB10];
  }
}

- (void)scheduleChineseTransliterationForText:(id)text
{
  if ([text length])
  {
    v6 = objc_alloc_init(UITextReplacementGeneratorForChineseTransliteration);
    [(UITextReplacementGenerator *)v6 setReplacementRange:[(UITextSelection *)[(UITextInteractionAssistant *)self activeSelection] selectedRange]];
    [(UITextReplacementGenerator *)v6 setStringToReplace:text];
    replacements = [(UITextReplacementGeneratorForChineseTransliteration *)v6 replacements];
    if ([replacements count])
    {
      -[UIKeyboardImpl replaceText:](+[UIKeyboardImpl sharedInstance](UIKeyboardImpl, "sharedInstance"), "replaceText:", [replacements firstObject]);
    }
  }
}

- (void)scheduleReplacementsWithOptions:(unint64_t)options
{
  if ((options & 0x10) != 0)
  {
    self->_options = options;
    self->_selectionOperation = 3;
  }

  else
  {
    selectedText = [(UITextInput *)[(UITextInteractionAssistant *)self view] selectedText];

    [(UIWKTextInteractionAssistant *)self scheduleReplacementsForText:selectedText withOptions:options];
  }
}

- (BOOL)shouldTryReplacementsForText:(id)text withOptions:(unint64_t)options
{
  optionsCopy = options;
  LODWORD(v7) = [+[UIKeyboardImpl activeInstance](UIKeyboardImpl "activeInstance")];
  if (v7)
  {
    v7 = [text length];
    if (v7)
    {
      LODWORD(v7) = [-[UIWKTextInteractionAssistant textChecker](self "textChecker")];
      if (v7)
      {
        LOBYTE(v7) = (optionsCopy & 7) == 0 || [-[UIWKTextInteractionAssistant textChecker](self "textChecker")] != 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  return v7;
}

- (void)scheduleReplacementsForText:(id)text withOptions:(unint64_t)options
{
  if ([UIWKTextInteractionAssistant shouldTryReplacementsForText:"shouldTryReplacementsForText:withOptions:" withOptions:?])
  {

    [(UIWKTextInteractionAssistant *)self showReplacementsForText:text withOptions:options];
  }
}

- (id)generatorForRange:(id)range withOptions:(unint64_t)options
{
  if ([range isEqual:{-[UITextSelection selectedRange](-[UITextInteractionAssistant activeSelection](self, "activeSelection"), "selectedRange")}])
  {
    if ([+[UIKeyboardImpl activeInstance](UIKeyboardImpl "activeInstance")])
    {
      v7 = objc_alloc_init(UITextReplacementGeneratorForCorrections);
      [(UITextReplacementGenerator *)v7 setReplacementRange:[(UITextSelection *)[(UITextInteractionAssistant *)self activeSelection] selectedRange]];
      [(UITextReplacementGenerator *)v7 setStringToReplace:[(UITextInput *)[(UITextInteractionAssistant *)self view] selectedText]];
      [(UITextReplacementGeneratorForCorrections *)v7 setTextChecker:[(UIWKTextInteractionAssistant *)self textChecker]];
      -[UITextReplacementGeneratorForCorrections setAutocorrectionRecord:](v7, "setAutocorrectionRecord:", [+[UIKeyboardImpl sharedInstance](UIKeyboardImpl autocorrectionRecordForWord:"autocorrectionRecordForWord:", [(UITextInput *)[(UITextInteractionAssistant *)self view] selectedText]]);
      [(UITextReplacementGeneratorForCorrections *)v7 setMaxEditDistance:2];
      [(UITextReplacementGeneratorForCorrections *)v7 setMaxCountAfterAutocorrectionGuesses:1];
      CurrentInputMode = UIKeyboardGetCurrentInputMode();
      if (UIKeyboardCheckSpellingForInputMode(CurrentInputMode))
      {
        v9 = 3;
      }

      else
      {
        v9 = 0;
      }

      [(UITextReplacementGeneratorForCorrections *)v7 setMaxCountAfterSpellingGuesses:v9];
      [(UITextReplacementGeneratorForCorrections *)v7 setForceHistoryReplacement:(self->_options & 4) == 0];
      [(UITextReplacementGeneratorForCorrections *)v7 setForceAutocorrectionGuesses:(self->_options & 2) == 0];
      [(UITextReplacementGeneratorForCorrections *)v7 setForceSpellingGuesses:(self->_options & 1) == 0];

      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UIWKTextInteractionAssistant;
    return [(UITextInteractionAssistant *)&v11 generatorForRange:range withOptions:options];
  }
}

- (void)showReplacementsForText:(id)text withOptions:(unint64_t)options
{
  if ((options & 0x20) != 0)
  {
    _textChoicesAssistant = [(UITextInteractionAssistant *)self _textChoicesAssistant];
    start = [(UITextRange *)[(UITextSelection *)[(UITextInteractionAssistant *)self activeSelection] selectedRange] start];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__UIWKTextInteractionAssistant_showReplacementsForText_withOptions___block_invoke;
    v9[3] = &unk_1E71258F8;
    v9[4] = text;
    v9[5] = self;
    v9[6] = options;
    [(_UITextChoiceAccelerationAssistant *)_textChoicesAssistant fullAutocorrectionForWord:text atPosition:start completionHandler:v9];
  }

  else
  {

    [UIWKTextInteractionAssistant showReplacementsForText:"showReplacementsForText:withOptions:rects:" withOptions:? rects:?];
  }
}

uint64_t __68__UIWKTextInteractionAssistant_showReplacementsForText_withOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a2)
  {
    v2 = *(a1 + 32);
  }

  v4 = [*(a1 + 40) webInteractionDelegate];
  v5 = *(a1 + 40);
  if (v4)
  {
    v6 = [v5 webInteractionDelegate];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__UIWKTextInteractionAssistant_showReplacementsForText_withOptions___block_invoke_2;
    v17[3] = &unk_1E71258A8;
    v7 = *(a1 + 48);
    v17[4] = *(a1 + 40);
    v17[5] = v2;
    v17[6] = v7;
    v8 = v17;
  }

  else
  {
    v9 = [v5 asyncInteractionDelegate];
    v10 = *(a1 + 40);
    if (!v9)
    {
      v13 = [v10 asyncWebKitInteractionDelegate];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __68__UIWKTextInteractionAssistant_showReplacementsForText_withOptions___block_invoke_4;
      v15[3] = &unk_1E71258D0;
      v14 = *(a1 + 48);
      v15[4] = *(a1 + 40);
      v15[5] = v2;
      v15[6] = v14;
      return [v13 requestAutocorrectionRectsForString:v2 withCompletionHandler:v15];
    }

    v6 = [v10 asyncInteractionDelegate];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68__UIWKTextInteractionAssistant_showReplacementsForText_withOptions___block_invoke_3;
    v16[3] = &unk_1E71258A8;
    v11 = *(a1 + 48);
    v16[4] = *(a1 + 40);
    v16[5] = v2;
    v16[6] = v11;
    v8 = v16;
  }

  return [v6 requestTextRectsForString:v2 withCompletionHandler:v8];
}

uint64_t __68__UIWKTextInteractionAssistant_showReplacementsForText_withOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a2, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a2);
        }

        v9 = MEMORY[0x1E696B098];
        [*(*(&v11 + 1) + 8 * v8) rect];
        [v4 addObject:{objc_msgSend(v9, "valueWithCGRect:")}];
        ++v8;
      }

      while (v6 != v8);
      v6 = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return [*(a1 + 32) showReplacementsForText:*(a1 + 40) withOptions:*(a1 + 48) rects:v4];
}

uint64_t __68__UIWKTextInteractionAssistant_showReplacementsForText_withOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a2, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a2);
        }

        v9 = MEMORY[0x1E696B098];
        [*(*(&v11 + 1) + 8 * v8) rect];
        [v4 addObject:{objc_msgSend(v9, "valueWithCGRect:")}];
        ++v8;
      }

      while (v6 != v8);
      v6 = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return [*(a1 + 32) showReplacementsForText:*(a1 + 40) withOptions:*(a1 + 48) rects:v4];
}

uint64_t __68__UIWKTextInteractionAssistant_showReplacementsForText_withOptions___block_invoke_4(uint64_t a1, void *a2)
{
  v8[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = MEMORY[0x1E696B098];
    [a2 firstRect];
    v8[0] = [v4 valueWithCGRect:?];
    v5 = MEMORY[0x1E696B098];
    [a2 lastRect];
    v8[1] = [v5 valueWithCGRect:?];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  }

  else
  {
    v6 = 0;
  }

  return [*(a1 + 32) showReplacementsForText:*(a1 + 40) withOptions:*(a1 + 48) rects:v6];
}

- (void)showReplacementsForText:(id)text withOptions:(unint64_t)options rects:(id)rects
{
  v9 = (self->_options & 8) == 0;
  v10 = [text rangeOfCharacterFromSet:objc_msgSend(MEMORY[0x1E696AB08] options:{"whitespaceAndNewlineCharacterSet"), 2}];
  v11 = [(UIWKTextInteractionAssistant *)self generatorForRange:[(UITextSelection *)[(UITextInteractionAssistant *)self activeSelection] selectedRange] withOptions:options];
  v12 = dbl_18A682C50[v9];
  if (+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
  {
    replacements = [v11 replacements];
    v14 = [replacements count];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = v14;
      if (![v11 autocorrectionRecord] && (objc_msgSend(v11, "forceAutocorrectionGuesses") & 1) == 0 && !v15)
      {
LABEL_11:
        [(_UITextChoiceAccelerationAssistant *)[(UITextInteractionAssistant *)self _textChoicesAssistant] dismissWithoutSelection];
        goto LABEL_12;
      }

      if (v15)
      {
        [(_UITextChoiceAccelerationAssistant *)[(UITextInteractionAssistant *)self _textChoicesAssistant] updateReplacements:replacements forCandidate:text];
      }
    }

    else
    {
      [(_UITextChoiceAccelerationAssistant *)[(UITextInteractionAssistant *)self _textChoicesAssistant] updateReplacementsForSavedCandidate:text];
    }

    if ([(_UITextChoiceAccelerationAssistant *)[(UITextInteractionAssistant *)self _textChoicesAssistant] presentTextChoicePromptForText:text delay:rects autocorrectionRects:v12])
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_12:
  _editMenuAssistant = [(UITextInteractionAssistant *)self _editMenuAssistant];

  [(_UITextInteractionEditMenuAssistant *)_editMenuAssistant showReplacementsWithGenerator:v11 forDictation:0 afterDelay:v12];
}

- (void)selectTextForReplacement:(id)replacement withOptions:(unint64_t)options
{
  if ([(UIWKTextInteractionAssistant *)self shouldTryReplacementsForText:replacement withOptions:?])
  {
    [(UITextInteractionAssistant *)self view];
    self->_options = options;
    self->_selectionOperation = 3;
    view = [(UITextInteractionAssistant *)self view];

    [(UITextInput *)view selectWordForReplacement];
  }
}

- (void)updateActivatingSelectionView
{
  if ([(UIWKTextInteractionAssistant *)self shouldDelayActivatingSelectionView])
  {
    [(UITextInteractionAssistant *)self activateSelection];

    [(UIWKTextInteractionAssistant *)self setShouldDelayActivatingSelectionView:0];
  }
}

- (void)selectionChanged
{
  [(UIWKTextInteractionAssistant *)self updateActivatingSelectionView];
  [+[UIKeyboardImpl sharedInstance](UIKeyboardImpl postInputResponderCapabilitiesChangedNotification];
  [(UITextInteractionAssistant *)self setExpectingCommit:0];
  v10.receiver = self;
  v10.super_class = UIWKTextInteractionAssistant;
  [(UITextInteractionAssistant *)&v10 selectionChanged];
  if ([-[UITextInput selectedTextRange](-[UITextInteractionAssistant view](self "view")])
  {
    [(UITextInteractionAssistant *)self setGrabberSuppressionAssertion:0];
  }

  [+[UIKeyboardImpl activeInstance](UIKeyboardImpl "activeInstance")];
  selectionOperation = self->_selectionOperation;
  if (selectionOperation == 3)
  {
    self->_options &= ~0x10uLL;
    v4 = [(UITextInput *)[(UITextInteractionAssistant *)self view] conformsToProtocol:&unk_1F016C810];
    view = [(UITextInteractionAssistant *)self view];
    isReplaceAllowed = [(UITextInput *)view isReplaceAllowed];
    if (v4)
    {
      if (!isReplaceAllowed)
      {
        goto LABEL_15;
      }

      view2 = view;
    }

    else
    {
      if (!isReplaceAllowed)
      {
        goto LABEL_15;
      }

      view2 = [(UITextInteractionAssistant *)self view];
    }

    [(UIWKTextInteractionAssistant *)self showReplacementsForText:[(UITextInput *)view2 selectedText] withOptions:self->_options];
    goto LABEL_15;
  }

  if (!selectionOperation)
  {
    [(UITextInteractionAssistant *)self scrollSelectionToVisible];
    goto LABEL_18;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__UIWKTextInteractionAssistant_selectionChanged__block_invoke;
  v9[3] = &unk_1E7125920;
  v9[4] = self;
  if (qword_1ED49C0C8 != -1)
  {
    dispatch_once(&qword_1ED49C0C8, &__block_literal_global_609);
  }

  taskQueue = [+[UIKeyboardImpl sharedInstance](UIKeyboardImpl taskQueue];
  [(UIKeyboardTaskQueue *)taskQueue addTask:v9 breadcrumb:_MergedGlobals_15_9];
LABEL_15:
  if (self->_selectionOperation == 1)
  {
    [(UITextInteractionAssistant *)self scrollSelectionToVisible];
  }

  self->_selectionOperation = 0;
LABEL_18:
  [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
}

uint64_t __48__UIWKTextInteractionAssistant_selectionChanged__block_invoke(uint64_t a1, void *a2)
{
  [*(a1 + 32) endSelectionChange];
  [objc_msgSend(*(a1 + 32) "_editMenuAssistant")];

  return [a2 returnExecutionToParent];
}

uint64_t __48__UIWKTextInteractionAssistant_selectionChanged__block_invoke_2()
{
  result = [&__block_literal_global_370_1 copy];
  _MergedGlobals_15_9 = result;
  return result;
}

- (id)_asText
{
  view = [(UITextInteractionAssistant *)self view];

  return [(UITextInput *)view _proxyTextInput];
}

- (void)showSelectionView
{
  [(UITextInteractionAssistant *)self activateSelection];

  [(UIWKTextInteractionAssistant *)self setShouldDelayActivatingSelectionView:0];
}

- (id)alternativesForSelectedText
{
  v15 = *MEMORY[0x1E69E9840];
  [(UITextInteractionAssistant *)self view];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return MEMORY[0x1E695E0F0];
  }

  array = [MEMORY[0x1E695DF70] array];
  if ([(UITextInput *)[(UITextInteractionAssistant *)self view] conformsToProtocolCached:&unk_1F016C810])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    alternativesForSelectedText = [(UITextInput *)[(UITextInteractionAssistant *)self view] alternativesForSelectedText];
    v5 = [alternativesForSelectedText countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(alternativesForSelectedText);
          }

          [array addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * i), "_nsTextAlternative")}];
        }

        v6 = [alternativesForSelectedText countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  else
  {
    [array addObjectsFromArray:{-[UITextInput alternativesForSelectedText](-[UITextInteractionAssistant view](self, "view"), "alternativesForSelectedText")}];
  }

  return array;
}

- (void)selectionChangedWithGestureAt:(CGPoint)at withGesture:(int64_t)gesture withState:(int64_t)state withFlags:(int64_t)flags
{
  y = at.y;
  x = at.x;
  if (![(UIKeyboardTaskQueue *)[+[UIKeyboardImpl sharedInstance](UIKeyboardImpl taskQueue] isMainThreadExecutingTask]
  {
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __94__UIWKTextInteractionAssistant_selectionChangedWithGestureAt_withGesture_withState_withFlags___block_invoke;
    v57[3] = &unk_1E7125948;
    v57[4] = self;
    *&v57[5] = x;
    *&v57[6] = y;
    v57[7] = gesture;
    v57[8] = state;
    v57[9] = flags;
    if (qword_1ED49C0D8 != -1)
    {
      dispatch_once(&qword_1ED49C0D8, &__block_literal_global_373_3);
    }

    taskQueue = [+[UIKeyboardImpl sharedInstance](UIKeyboardImpl taskQueue];
    [(UIKeyboardTaskQueue *)taskQueue addTask:v57 breadcrumb:qword_1ED49C0D0];
    return;
  }

  if (gesture > 7)
  {
    if ((gesture - 8) < 3)
    {
      [(UIWKTextInteractionAssistant *)self endSelectionChange];
      [(_UITextInteractionEditMenuAssistant *)[(UITextInteractionAssistant *)self _editMenuAssistant] showSelectionCommands];
LABEL_84:

      [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
      return;
    }

    if (gesture == 11)
    {
      goto LABEL_84;
    }

    if (gesture != 14)
    {
      return;
    }

    v16 = +[UIKeyboardImpl activeInstance];
    if ((flags & 4) != 0)
    {
      [v16 didChangePhraseBoundary];
    }

    v17 = +[UITextMagnifierRanged sharedRangedMagnifier];
    v18 = v17;
    if ((state - 3) >= 2)
    {
      if (state != 2)
      {
        if (state == 1)
        {
          [v17 setMagnificationPoint:{x, y}];
          v19 = [-[UIWKTextInteractionAssistant _asText](self "_asText")];
          _asText = [(UIWKTextInteractionAssistant *)self _asText];
          [v18 beginMagnifyingTarget:v19 text:_asText magnificationPoint:1 offset:x animated:{y, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
          [(UITextInteractionAssistant *)self setInGesture:1];
          self->_blinkAssertion = [(UITextCursorAssertionController *)[(UITextInteractionAssistant *)self _assertionController] nonBlinkingAssertionWithReason:@"WebKit2 Phrase Boundary gesture"];
        }

        return;
      }

      goto LABEL_29;
    }

    if (v17)
    {
      [v17 setMagnificationPoint:{x, y}];
      [v18 stopMagnifying:1];
    }

    [(UITextCursorAssertion *)self->_blinkAssertion invalidate];

    self->_blinkAssertion = 0;
    [objc_msgSend(-[UIWKTextInteractionAssistant _asText](self "_asText")];
    [(UITextInteractionAssistant *)self cancelAutoscroll];

    [(UITextInteractionAssistant *)self setInGesture:0];
    return;
  }

  if (gesture)
  {
    if (gesture != 1)
    {
      if (gesture != 2)
      {
        return;
      }

      v13 = +[UITextMagnifierRanged sharedRangedMagnifier];
      v14 = v13;
      if (state > 2)
      {
        if (state == 3)
        {
          [(UITextInteractionAssistant *)self cancelAutoscroll];
          [v14 setMagnificationPoint:{x, y}];
          [v14 stopMagnifying:1];
          if (![(UITextRange *)[(UITextSelection *)[(UITextInteractionAssistant *)self activeSelection] selectedRange] _isRanged])
          {
            [v14 stopMagnifying:1];
          }
        }

        else
        {
          if (state != 4)
          {
            return;
          }

          [(UITextInteractionAssistant *)self cancelAutoscroll];
        }

        [(UITextInteractionAssistant *)self setNeedsSelectionDisplayUpdate];
      }

      else
      {
        if (state == 1)
        {
          [v13 setIsHorizontal:{+[UITextSelectionRect startIsHorizontal:](UITextSelectionRect, "startIsHorizontal:", -[UITextSelection selectionRects](-[UITextInteractionAssistant activeSelection](self, "activeSelection"), "selectionRects"))}];
          textInputView = [(UITextInput *)[(UITextInteractionAssistant *)self view] textInputView];
          view = [(UITextInteractionAssistant *)self view];
          [v14 beginMagnifyingTarget:textInputView text:view magnificationPoint:1 offset:x animated:{y, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
          [(UIWKTextInteractionAssistant *)self endSelectionChange];
          [(UITextSelection *)[(UITextInteractionAssistant *)self activeSelection] setRangedSelectionBaseToCurrentSelection];
          [(UITextSelection *)[(UITextInteractionAssistant *)self activeSelection] clearRangedSelectionInitialExtent];
          goto LABEL_84;
        }

        if (state == 2)
        {
          [v13 setMagnificationPoint:{x, y}];
          [(UITextInteractionAssistant *)self startAutoscroll:x, y];
          [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
          activeSelection = [(UITextInteractionAssistant *)self activeSelection];

          [(UITextSelection *)activeSelection updateBaseIsStartWithDocumentPoint:x, y];
        }
      }

      return;
    }

    activeSelection2 = [(UITextInteractionAssistant *)self activeSelection];
    if ([(UITextInput *)[(UITextInteractionAssistant *)self view] isFirstResponder])
    {
      v22 = [-[UITextInput _responderWindow](-[UITextInteractionAssistant view](self "view")];
    }

    else
    {
      v22 = 0;
    }

    [(_UITextInteractionEditMenuAssistant *)[(UITextInteractionAssistant *)self _editMenuAssistant] _editMenuIsVisibleOrDismissedRecently];
    UIDistanceBetweenPointAndRect(x, y, self->_caretBeforeTap.origin.x, self->_caretBeforeTap.origin.y, self->_caretBeforeTap.size.width, self->_caretBeforeTap.size.height);
    v24 = v23;
    v25 = _UIGetTextRefinement_NearCaretDistance();
    [(UIWKTextInteractionAssistant *)self endSelectionChange];
    alternativesForSelectedText = [(UIWKTextInteractionAssistant *)self alternativesForSelectedText];
    if (![-[UITextInput selectedText](-[UITextInteractionAssistant view](self "view")] && -[UITextRange _isRanged](-[UITextSelection selectedRange](activeSelection2, "selectedRange"), "_isRanged"))
    {
      v27 = 0;
      v28 = 0;
      if ([(_UITextInteractionEditMenuAssistant *)[(UITextInteractionAssistant *)self _editMenuAssistant] _hasTextReplacements])
      {
        v29 = 0.4;
        v30 = 0;
        goto LABEL_53;
      }

LABEL_93:
      [(_UITextInteractionEditMenuAssistant *)[(UITextInteractionAssistant *)self _editMenuAssistant] hideSelectionCommands];
      goto LABEL_109;
    }

    selectedText = [(UITextInput *)[(UITextInteractionAssistant *)self view] selectedText];
    v27 = selectedText;
    if ((flags & 1) != 0 && [selectedText length])
    {
      v30 = [-[UIWKTextInteractionAssistant textChecker](self "textChecker")];
      v32 = 1;
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    v29 = 0.2;
    if ([v30 count])
    {
      v28 = 0;
    }

    else if (v22 && (v24 < v25 || ([(UITextSelection *)activeSelection2 caretRect], v59.origin.x = v36, v59.origin.y = v37, v59.size.width = v38, v59.size.height = v39, CGRectEqualToRect(self->_caretBeforeTap, v59))))
    {
      v28 = 0;
      v29 = 0.4;
    }

    else
    {
      v28 = flags & v32;
      if (![alternativesForSelectedText count])
      {
        goto LABEL_93;
      }
    }

LABEL_53:
    if (![alternativesForSelectedText count])
    {
      alternativesForSelectedText = [v30 mutableCopy];
    }

    if (![alternativesForSelectedText count])
    {
      goto LABEL_108;
    }

    v33 = [objc_msgSend(objc_msgSend(alternativesForSelectedText "firstObject")];
    if (v33)
    {
      goto LABEL_57;
    }

    if ([objc_msgSend(objc_msgSend(alternativesForSelectedText "firstObject")])
    {
      v34 = 0;
      v35 = 0;
      v28 = 1;
    }

    else if ([objc_msgSend(objc_msgSend(alternativesForSelectedText "firstObject")])
    {
      v35 = 0;
      v28 = 0;
      v34 = 1;
    }

    else
    {
      if (([objc_msgSend(objc_msgSend(alternativesForSelectedText "firstObject")] & 1) == 0)
      {
        v54 = -[UITextReplacementGeneratorForDictation initWithAlternatives:stringToReplace:replacementRange:]([UITextReplacementGeneratorForDictation alloc], "initWithAlternatives:stringToReplace:replacementRange:", [alternativesForSelectedText firstObject], v27, -[UITextSelection selectedRange](-[UITextInteractionAssistant activeSelection](self, "activeSelection"), "selectedRange"));
        [(_UITextInteractionEditMenuAssistant *)[(UITextInteractionAssistant *)self _editMenuAssistant] showReplacementsWithGenerator:v54 forDictation:1 afterDelay:v29];

LABEL_57:
        v34 = 0;
        v35 = 0;
        v28 = 0;
        goto LABEL_101;
      }

      v34 = 0;
      v28 = 0;
      v35 = 1;
    }

LABEL_101:
    self->_options = 8;
    self->_selectionOperation = 0;
    [(UITextInput *)[(UITextInteractionAssistant *)self view] selectWordForReplacement];
    if (v34)
    {
      [+[UIDictationController sharedInstance](UIDictationController handleWKActionMoveAfter];
    }

    else if (v35)
    {
      [+[UIDictationController sharedInstance](UIDictationController handleWKActionMoveBefore];
    }

    else
    {
      if (!v28)
      {
        if (!v33)
        {
          goto LABEL_109;
        }

        goto LABEL_108;
      }

      [objc_msgSend(+[UIKeyboardImpl activeInstance](UIKeyboardImpl "activeInstance")];
    }

    v28 = 0;
    if (v33)
    {
LABEL_108:
      [(_UITextInteractionEditMenuAssistant *)[(UITextInteractionAssistant *)self _editMenuAssistant] showSelectionCommandsAfterDelay:v29];
    }

LABEL_109:
    selectedTextRange = [(UITextInput *)[(UITextInteractionAssistant *)self view] selectedTextRange];
    if (+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled]&& selectedTextRange)
    {
      _textChoicesAssistant = [(UITextInteractionAssistant *)self _textChoicesAssistant];
      start = [selectedTextRange start];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __94__UIWKTextInteractionAssistant_selectionChangedWithGestureAt_withGesture_withState_withFlags___block_invoke_4;
      v55[3] = &unk_1E7125970;
      v56 = v28;
      v55[4] = self;
      v55[5] = v27;
      [(_UITextChoiceAccelerationAssistant *)_textChoicesAssistant shouldShowPromptForWebKitText:v27 atPosition:start completionHandler:v55];
    }

    else
    {
      [(UIWKTextInteractionAssistant *)self setWordBeforeTap:0];
      if (v28)
      {

        [(UIWKTextInteractionAssistant *)self selectTextForReplacement:v27 withOptions:15];
      }
    }

    return;
  }

  v18 = +[UITextMagnifierCaret sharedCaretMagnifier];
  if (state > 2)
  {
    if (state == 3)
    {
      UIDistanceBetweenPointAndRect(x, y, self->_caretBeforeTap.origin.x, self->_caretBeforeTap.origin.y, self->_caretBeforeTap.size.width, self->_caretBeforeTap.size.height);
      v41 = v40;
      v42 = _UIGetTextRefinement_NearCaretDistance();
      isFirstResponder = [(UITextInput *)[(UITextInteractionAssistant *)self view] isFirstResponder];
      [v18 setMagnificationPoint:{x, y}];
      activeSelection3 = [(UITextInteractionAssistant *)self activeSelection];
      if (v41 >= v42 && ![(UITextRange *)[(UITextSelection *)activeSelection3 selectedRange] _isRanged])
      {
        [(UITextInteractionAssistant *)self configureForSelectionMode];
      }

      if (![(UITextInteractionAssistant *)self willHandoffLoupeMagnifier])
      {
        [v18 stopMagnifying:1];
      }

      [(UIWKTextInteractionAssistant *)self endSelectionChange];
      [(UITextInteractionAssistant *)self cancelAutoscroll];
      if ((isFirstResponder & 1) == 0 && ![(UITextInteractionAssistant *)self willHandoffLoupeMagnifier])
      {

        [(UITextInteractionAssistant *)self setGestureRecognizers];
      }
    }

    else if (state == 4)
    {
      [(UIWKTextInteractionAssistant *)self endSelectionChange];

      [(UITextInteractionAssistant *)self cancelAutoscroll];
    }
  }

  else
  {
    if (state != 1)
    {
      if (state != 2)
      {
        return;
      }

LABEL_29:
      [(UITextInteractionAssistant *)self startAutoscroll:x, y];

      [v18 setMagnificationPoint:{x, y}];
      return;
    }

    [(UITextInteractionAssistant *)self configureForHighlightMode];
    if ([(UITextInteractionAssistant *)self willHandoffLoupeMagnifier])
    {

      [(UITextInteractionAssistant *)self resetWillHandoffLoupeMagnifier];
    }

    else
    {
      textInputView2 = [(UITextInput *)[(UITextInteractionAssistant *)self view] textInputView];
      view2 = [(UITextInteractionAssistant *)self view];
      v49 = *MEMORY[0x1E695EFF8];
      v50 = *(MEMORY[0x1E695EFF8] + 8);

      [v18 beginMagnifyingTarget:textInputView2 text:view2 magnificationPoint:1 offset:x animated:{y, v49, v50}];
    }
  }
}

uint64_t __94__UIWKTextInteractionAssistant_selectionChangedWithGestureAt_withGesture_withState_withFlags___block_invoke(uint64_t a1, void *a2)
{
  [*(a1 + 32) selectionChangedWithGestureAt:*(a1 + 56) withGesture:*(a1 + 64) withState:*(a1 + 72) withFlags:{*(a1 + 40), *(a1 + 48)}];

  return [a2 returnExecutionToParent];
}

uint64_t __94__UIWKTextInteractionAssistant_selectionChangedWithGestureAt_withGesture_withState_withFlags___block_invoke_2()
{
  result = [&__block_literal_global_375_5 copy];
  qword_1ED49C0D0 = result;
  return result;
}

uint64_t __94__UIWKTextInteractionAssistant_selectionChangedWithGestureAt_withGesture_withState_withFlags___block_invoke_4(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) selectTextForReplacement:*(a1 + 40) withOptions:32];
    v3 = *(a1 + 32);

    return [v3 setWordBeforeTap:0];
  }

  else
  {
    v5 = *(a1 + 48);
    [objc_msgSend(*(a1 + 32) "_textChoicesAssistant")];
    result = [*(a1 + 32) setWordBeforeTap:0];
    if (v5 == 1)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);

      return [v6 selectTextForReplacement:v7 withOptions:15];
    }
  }

  return result;
}

- (void)selectionChangedWithTouchAt:(CGPoint)at withSelectionTouch:(int64_t)touch withFlags:(int64_t)flags
{
  y = at.y;
  x = at.x;
  if ((flags & 2) != 0)
  {
    [(UITextRangeAdjustmentInteraction *)[(UITextInteractionAssistant *)self rangeAdjustmentInteraction] setClientFlipsBaseIsStart:1];
    [(UITextRangeAdjustmentInteraction *)[(UITextInteractionAssistant *)self rangeAdjustmentInteraction] setBaseIsStart:[(UITextRangeAdjustmentInteraction *)[(UITextInteractionAssistant *)self rangeAdjustmentInteraction] baseIsStart]^ 1];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v15 = __89__UIWKTextInteractionAssistant_selectionChangedWithTouchAt_withSelectionTouch_withFlags___block_invoke;
  v16 = &unk_1E70F5CA0;
  selfCopy = self;
  if ((touch - 3) < 3)
  {
    [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
    [(UITextInteractionAssistant *)self cancelAutoscroll];
    +[UIView commitAnimations];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __89__UIWKTextInteractionAssistant_selectionChangedWithTouchAt_withSelectionTouch_withFlags___block_invoke_5;
    v12[3] = &unk_1E7125920;
    v12[4] = self;
    if (qword_1ED49C0F8 != -1)
    {
      dispatch_once(&qword_1ED49C0F8, &__block_literal_global_391_1);
    }

    taskQueue = [+[UIKeyboardImpl sharedInstance](UIKeyboardImpl taskQueue];
    v10 = qword_1ED49C0F0;
    v11 = v12;
LABEL_13:
    [(UIKeyboardTaskQueue *)taskQueue addTask:v11 breadcrumb:v10];
    v15(v14);
    return;
  }

  if (touch == 2)
  {
    [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
    [(UITextInteractionAssistant *)self cancelAutoscroll];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __89__UIWKTextInteractionAssistant_selectionChangedWithTouchAt_withSelectionTouch_withFlags___block_invoke_2;
    v13[3] = &unk_1E7125920;
    v13[4] = self;
    if (qword_1ED49C0E8 != -1)
    {
      dispatch_once(&qword_1ED49C0E8, &__block_literal_global_384);
    }

    taskQueue = [+[UIKeyboardImpl sharedInstance](UIKeyboardImpl taskQueue];
    v10 = qword_1ED49C0E0;
    v11 = v13;
    goto LABEL_13;
  }

  if (touch == 1)
  {
    [(UITextInteractionAssistant *)self startAutoscroll:x, y];
    [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
  }
}

void __89__UIWKTextInteractionAssistant_selectionChangedWithTouchAt_withSelectionTouch_withFlags___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 408);
  if (v3)
  {
    [v3 performWithInput:0];

    *(*(a1 + 32) + 408) = 0;
    v2 = *(a1 + 32);
  }

  *(v2 + 416) = 0;
}

uint64_t __89__UIWKTextInteractionAssistant_selectionChangedWithTouchAt_withSelectionTouch_withFlags___block_invoke_2(uint64_t a1, void *a2)
{
  [*(a1 + 32) endSelectionChange];

  return [a2 returnExecutionToParent];
}

uint64_t __89__UIWKTextInteractionAssistant_selectionChangedWithTouchAt_withSelectionTouch_withFlags___block_invoke_3()
{
  result = [&__block_literal_global_386 copy];
  qword_1ED49C0E0 = result;
  return result;
}

uint64_t __89__UIWKTextInteractionAssistant_selectionChangedWithTouchAt_withSelectionTouch_withFlags___block_invoke_5(uint64_t a1, void *a2)
{
  [*(a1 + 32) endSelectionChange];

  return [a2 returnExecutionToParent];
}

uint64_t __89__UIWKTextInteractionAssistant_selectionChangedWithTouchAt_withSelectionTouch_withFlags___block_invoke_6()
{
  result = [&__block_literal_global_393_2 copy];
  qword_1ED49C0F0 = result;
  return result;
}

- (void)updateSelectionWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  v7 = [-[UITextInteractionAssistant _legacySelectionView](self "_legacySelectionView")];
  [v7 convertPoint:-[UITextInput textInputView](-[UITextInteractionAssistant view](self toView:{"view"), "textInputView"), x, y}];
  v9 = v8;
  v11 = v10;
  [(UITextSelection *)activeSelection setGranularity:0];
  v12 = -[UITextSelection setRangedSelectionExtentPoint:baseIsStart:](activeSelection, "setRangedSelectionExtentPoint:baseIsStart:", [v7 baseIsStart], v9, v11);
  [(UITextSelection *)activeSelection commit];
  if (v12 != [v7 baseIsStart])
  {
    [v7 setBaseIsStart:v12];
  }

  [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
}

- (void)updateWithMagnifierTerminalPoint:(BOOL)point
{
  pointCopy = point;
  v5 = [-[UITextInteractionAssistant _legacySelectionView](self "_legacySelectionView")];
  v6 = +[UITextMagnifierRanged sharedRangedMagnifier];
  if ([v6 target])
  {
    if ((![v6 terminalPointPlacedCarefully] || -[UITextInteractionAssistant autoscrolled](self, "autoscrolled")) && -[UITextInteractionAssistant _legacySelectionView](self, "_legacySelectionView"))
    {
      [(UIWKTextInteractionAssistant *)self beginSelectionChange];
      [v5 setAnimateUpdate:1];
      [objc_msgSend(v5 "startGrabber")];
      [objc_msgSend(v5 "endGrabber")];
      [UIView beginAnimations:0 context:self];
      [UIView setAnimationDuration:0.2];
      [UIView setAnimationCurve:2];
      [UIView setAnimationDelegate:self];
      [UIView setAnimationDidStopSelector:sel_selectionAnimationDidStop_finished_];
      horizontalMovement = [v6 horizontalMovement];
      v8 = 4;
      if (horizontalMovement >= 0)
      {
        v8 = 5;
      }

      if (horizontalMovement <= 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 3;
      }

      [v5 updateBaseAndExtentPointsFromEdges];
      [v5 extentPoint];
      [v5 convertPoint:-[UITextInput textInputView](-[UITextInteractionAssistant view](self toView:{"view"), "textInputView"), v10, v11}];
      [v6 setAnimationPoint:?];
      [v6 animationPoint];
      v13 = v12;
      v15 = v14;
    }

    else
    {
      if (!pointCopy)
      {
LABEL_17:
        [v6 stopMagnifying:1];
        if (![(_UITextInteractionEditMenuAssistant *)[(UITextInteractionAssistant *)self _editMenuAssistant] _editMenuIsVisible])
        {
          [(_UITextInteractionEditMenuAssistant *)[(UITextInteractionAssistant *)self _editMenuAssistant] showSelectionCommandsAfterDelay:0.2];
        }

        [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
        return;
      }

      [v6 terminalPoint];
      [v6 setMagnificationPoint:?];
      [v5 activeTouchPoint];
      [v6 terminalPoint];
      v13 = v16;
      v15 = v17;
      v9 = 5;
    }

    -[UIWKTextInteractionAssistant changeSelectionWithTouchAt:withSelectionTouch:baseIsStart:withFlags:](self, "changeSelectionWithTouchAt:withSelectionTouch:baseIsStart:withFlags:", v9, [v5 baseIsStart], 0, v13, v15);
    goto LABEL_17;
  }

  [v6 stopMagnifying:0];
}

- (void)rangeSelectionStarted:(CGPoint)started
{
  y = started.y;
  x = started.x;
  [[(UITextInteractionAssistant *)self interactions] _callDelegateWillMoveTextRangeExtentAtPoint:started.x, started.y];
  [(UITextSelection *)[(UITextInteractionAssistant *)self activeSelection] setGranularity:0];
  -[UITextInput convertPoint:fromView:](-[UITextInteractionAssistant view](self, "view"), "convertPoint:fromView:", [-[UITextInteractionAssistant _legacySelectionView](self "_legacySelectionView")], x, y);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__UIWKTextInteractionAssistant_rangeSelectionStarted___block_invoke;
  v9[3] = &unk_1E7125998;
  v9[4] = self;
  v9[5] = v6;
  v9[6] = v7;
  if (qword_1ED49C108 != -1)
  {
    dispatch_once(&qword_1ED49C108, &__block_literal_global_397_1);
  }

  taskQueue = [+[UIKeyboardImpl sharedInstance](UIKeyboardImpl taskQueue];
  [(UIKeyboardTaskQueue *)taskQueue addTask:v9 breadcrumb:qword_1ED49C100];
}

uint64_t __54__UIWKTextInteractionAssistant_rangeSelectionStarted___block_invoke(uint64_t a1, void *a2)
{
  [*(a1 + 32) beginSelectionChange];
  [*(a1 + 32) changeSelectionWithTouchAt:0 withSelectionTouch:objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32) baseIsStart:"_legacySelectionView") withFlags:{"rangeView"), "baseIsStart"), 0, *(a1 + 40), *(a1 + 48)}];

  return [a2 returnExecutionToParent];
}

uint64_t __54__UIWKTextInteractionAssistant_rangeSelectionStarted___block_invoke_2()
{
  result = [&__block_literal_global_399_0 copy];
  qword_1ED49C100 = result;
  return result;
}

- (void)rangeSelectionEnded:(CGPoint)ended
{
  y = ended.y;
  x = ended.x;
  if ([+[UITextMagnifierRanged sharedRangedMagnifier](UITextMagnifierRanged "sharedRangedMagnifier")])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__UIWKTextInteractionAssistant_rangeSelectionEnded___block_invoke;
    v11[3] = &unk_1E7125920;
    v11[4] = self;
    if (qword_1ED49C118 != -1)
    {
      dispatch_once(&qword_1ED49C118, &__block_literal_global_401_0);
    }

    taskQueue = [+[UIKeyboardImpl sharedInstance](UIKeyboardImpl taskQueue];
    [(UIKeyboardTaskQueue *)taskQueue addTask:v11 breadcrumb:qword_1ED49C110];
  }

  else
  {
    _editMenuAssistant = [(UITextInteractionAssistant *)self _editMenuAssistant];
    if (![(_UITextInteractionEditMenuAssistant *)_editMenuAssistant _editMenuIsVisible])
    {
      [(_UITextInteractionEditMenuAssistant *)_editMenuAssistant showSelectionCommands];
    }

    rangeAdjustmentInteraction = [(UITextInteractionAssistant *)self rangeAdjustmentInteraction];
    view = [(UITextInteractionAssistant *)self view];
    baseIsStart = [(UITextRangeAdjustmentInteraction *)rangeAdjustmentInteraction baseIsStart];

    [(UITextInput *)view changeSelectionWithTouchAt:5 withSelectionTouch:baseIsStart baseIsStart:0 withFlags:x, y];
  }
}

uint64_t __52__UIWKTextInteractionAssistant_rangeSelectionEnded___block_invoke(uint64_t a1, void *a2)
{
  [*(a1 + 32) updateWithMagnifierTerminalPoint:1];

  return [a2 returnExecutionToParent];
}

uint64_t __52__UIWKTextInteractionAssistant_rangeSelectionEnded___block_invoke_2()
{
  result = [&__block_literal_global_403_0 copy];
  qword_1ED49C110 = result;
  return result;
}

- (void)rangeSelectionMoved:(CGPoint)moved withTouchPoint:(CGPoint)point
{
  y = moved.y;
  x = moved.x;
  v7 = [(UITextInteractionAssistant *)self rangeAdjustmentInteraction:moved.x];
  -[UITextInput convertPoint:fromView:](-[UITextInteractionAssistant view](self, "view"), "convertPoint:fromView:", [-[UITextInteractionAssistant _legacySelectionView](self "_legacySelectionView")], x, y);
  v9 = v8;
  v11 = v10;
  view = [(UITextInteractionAssistant *)self view];
  baseIsStart = [(UITextRangeAdjustmentInteraction *)v7 baseIsStart];

  [(UITextInput *)view changeSelectionWithTouchAt:1 withSelectionTouch:baseIsStart baseIsStart:0 withFlags:v9, v11];
}

- (void)rangeSelectionCanceled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__UIWKTextInteractionAssistant_rangeSelectionCanceled__block_invoke;
  v3[3] = &unk_1E7125920;
  v3[4] = self;
  if (qword_1ED49C128 != -1)
  {
    dispatch_once(&qword_1ED49C128, &__block_literal_global_405_0);
  }

  taskQueue = [+[UIKeyboardImpl sharedInstance](UIKeyboardImpl taskQueue];
  [(UIKeyboardTaskQueue *)taskQueue addTask:v3 breadcrumb:qword_1ED49C120];
}

uint64_t __54__UIWKTextInteractionAssistant_rangeSelectionCanceled__block_invoke(uint64_t a1, void *a2)
{
  [*(a1 + 32) beginSelectionChange];

  return [a2 returnExecutionToParent];
}

uint64_t __54__UIWKTextInteractionAssistant_rangeSelectionCanceled__block_invoke_2()
{
  result = [&__block_literal_global_407_1 copy];
  qword_1ED49C120 = result;
  return result;
}

- (void)selectWord
{
  self->_selectionOperation = 1;
  [(UITextInteractionAssistant *)self setFirstResponderIfNecessary];
  [(UITextInteractionAssistant *)self configureForSelectionMode];
  if (qword_1ED49C138 != -1)
  {
    dispatch_once(&qword_1ED49C138, &__block_literal_global_409_0);
  }

  taskQueue = [+[UIKeyboardImpl sharedInstance](UIKeyboardImpl taskQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__UIWKTextInteractionAssistant_selectWord__block_invoke_3;
  v4[3] = &unk_1E7125920;
  v4[4] = self;
  [(UIKeyboardTaskQueue *)taskQueue addTask:v4 breadcrumb:qword_1ED49C130];
}

uint64_t __42__UIWKTextInteractionAssistant_selectWord__block_invoke()
{
  result = [&__block_literal_global_411_2 copy];
  qword_1ED49C130 = result;
  return result;
}

uint64_t __42__UIWKTextInteractionAssistant_selectWord__block_invoke_3(uint64_t a1, void *a2)
{
  [*(a1 + 32) beginSelectionChange];

  return [a2 returnExecutionToParent];
}

- (void)selectAll:(id)all
{
  self->_selectionOperation = 2;
  [(UITextInteractionAssistant *)self setFirstResponderIfNecessary];
  if (qword_1ED49C148 != -1)
  {
    dispatch_once(&qword_1ED49C148, &__block_literal_global_413_3);
  }

  taskQueue = [+[UIKeyboardImpl sharedInstance](UIKeyboardImpl taskQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__UIWKTextInteractionAssistant_selectAll___block_invoke_3;
  v5[3] = &unk_1E7125920;
  v5[4] = self;
  [(UIKeyboardTaskQueue *)taskQueue addTask:v5 breadcrumb:qword_1ED49C140];
}

uint64_t __42__UIWKTextInteractionAssistant_selectAll___block_invoke()
{
  result = [&__block_literal_global_415_0 copy];
  qword_1ED49C140 = result;
  return result;
}

uint64_t __42__UIWKTextInteractionAssistant_selectAll___block_invoke_3(uint64_t a1, void *a2)
{
  [*(a1 + 32) beginSelectionChange];

  return [a2 returnExecutionToParent];
}

- (void)showDictionaryFor:(id)for fromRect:(CGRect)rect
{
  v5 = [(UITextInput *)[(UITextInteractionAssistant *)self view] _showServiceForType:2 withContext:[_UITextServiceSessionContext sessionContextWithText:for withRect:[(UITextInteractionAssistant *)self view] withView:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height]];
  self->_definitionSession = v5;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__UIWKTextInteractionAssistant_showDictionaryFor_fromRect___block_invoke;
  v6[3] = &unk_1E71259C0;
  v6[4] = self;
  [(_UITextServiceSession *)v5 setDismissedHandler:v6];
}

- (void)showTextServiceFor:(id)for fromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (([+[UIDevice userInterfaceIdiom]& 0xFFFFFFFFFFFFFFFBLL currentDevice]== 1)
  {
    [(_UITextServiceSession *)self->_learnSession dismissTextServiceAnimated:0];
  }

  v10 = [(UITextInput *)[(UITextInteractionAssistant *)self view] _showServiceForType:4 withContext:[_UITextServiceSessionContext sessionContextWithText:for withRect:[(UITextInteractionAssistant *)self view] withView:x, y, width, height]];
  self->_learnSession = v10;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__UIWKTextInteractionAssistant_showTextServiceFor_fromRect___block_invoke;
  v11[3] = &unk_1E71259C0;
  v11[4] = self;
  [(_UITextServiceSession *)v10 setDismissedHandler:v11];
}

UIUserInterfaceIdiom __60__UIWKTextInteractionAssistant_showTextServiceFor_fromRect___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 360) = 0;
  result = [+[UIDevice currentDevice](UIDevice userInterfaceIdiom];
  if ((result & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v3 = [*(a1 + 32) view];

    return [v3 becomeFirstResponder];
  }

  return result;
}

- (BOOL)shouldSuppressSelectionCommands
{
  if (self->_shareSession || self->_learnSession || self->_definitionSession || self->_lookupSession || self->_translateSession)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = UIWKTextInteractionAssistant;
  return [(UITextInteractionAssistant *)&v5 shouldSuppressSelectionCommands];
}

- (void)showShareSheetFor:(id)for fromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (([+[UIDevice userInterfaceIdiom]& 0xFFFFFFFFFFFFFFFBLL currentDevice]== 1)
  {
    [(_UITextServiceSession *)self->_shareSession dismissTextServiceAnimated:0];
  }

  v10 = [(UITextInput *)[(UITextInteractionAssistant *)self view] _showServiceForType:8 withContext:[_UITextServiceSessionContext sessionContextWithText:for withRect:[(UITextInteractionAssistant *)self view] withView:x, y, width, height]];
  self->_shareSession = v10;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__UIWKTextInteractionAssistant_showShareSheetFor_fromRect___block_invoke;
  v11[3] = &unk_1E71259C0;
  v11[4] = self;
  [(_UITextServiceSession *)v10 setDismissedHandler:v11];
}

UIUserInterfaceIdiom __59__UIWKTextInteractionAssistant_showShareSheetFor_fromRect___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 368) = 0;
  result = [+[UIDevice currentDevice](UIDevice userInterfaceIdiom];
  if ((result & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v3 = [*(a1 + 32) view];

    return [v3 becomeFirstResponder];
  }

  return result;
}

- (void)lookup:(id)lookup withRange:(_NSRange)range fromRect:(CGRect)rect
{
  v6 = [(UITextInput *)[(UITextInteractionAssistant *)self view] _showServiceForType:16 withContext:[_UITextServiceSessionContext sessionContextWithText:lookup withRect:range.location withRange:range.length withView:[(UITextInteractionAssistant *)self view], rect.origin.x, rect.origin.y, rect.size.width, rect.size.height]];
  self->_lookupSession = v6;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__UIWKTextInteractionAssistant_lookup_withRange_fromRect___block_invoke;
  v7[3] = &unk_1E71259C0;
  v7[4] = self;
  [(_UITextServiceSession *)v6 setDismissedHandler:v7];
}

- (void)lookup:(id)lookup fromRect:(CGRect)rect
{
  v5 = [(UITextInput *)[(UITextInteractionAssistant *)self view] _showServiceForType:16 withContext:[_UITextServiceSessionContext sessionContextWithText:lookup withRect:[(UITextInteractionAssistant *)self view] withView:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height]];
  self->_lookupSession = v5;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__UIWKTextInteractionAssistant_lookup_fromRect___block_invoke;
  v6[3] = &unk_1E71259C0;
  v6[4] = self;
  [(_UITextServiceSession *)v5 setDismissedHandler:v6];
}

- (void)translate:(id)translate fromRect:(CGRect)rect
{
  v5 = [(UITextInput *)[(UITextInteractionAssistant *)self view] _showServiceForType:32 withContext:[_UITextServiceSessionContext sessionContextWithText:translate withRect:[(UITextInteractionAssistant *)self view] withView:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height]];
  self->_translateSession = v5;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__UIWKTextInteractionAssistant_translate_fromRect___block_invoke;
  v6[3] = &unk_1E71259C0;
  v6[4] = self;
  [(_UITextServiceSession *)v5 setDismissedHandler:v6];
}

- (void)willStartScrollingOverflow
{
  v3.receiver = self;
  v3.super_class = UIWKTextInteractionAssistant;
  [(UITextInteractionAssistant *)&v3 willStartScrollingOrZooming];
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    [(UITextSelectionDisplayInteraction *)[(UITextInteractionAssistant *)self _selectionViewManager] setActivated:0];
  }

  else
  {
    [-[UITextInteractionAssistant _selectionView](self "_selectionView")];
  }
}

- (void)didEndScrollingOverflow
{
  v3.receiver = self;
  v3.super_class = UIWKTextInteractionAssistant;
  [(UITextInteractionAssistant *)&v3 didEndScrollingOrZooming];
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    if (![(UIWKTextInteractionAssistant *)self shouldSuppressSelectionCommands])
    {
      [(UITextSelectionDisplayInteraction *)[(UITextInteractionAssistant *)self _selectionViewManager] setActivated:1];
    }
  }

  else
  {
    [-[UITextInteractionAssistant _legacySelectionView](self "_legacySelectionView")];
  }
}

- (void)willChangeSelection
{
  p_caretBeforeTap = &self->_caretBeforeTap;
  [(_UIKeyboardTextSelectionController *)[(UITextInteractionAssistant *)self activeSelectionController] caretRectForCursorPosition];
  p_caretBeforeTap->origin.x = v3;
  p_caretBeforeTap->origin.y = v4;
  p_caretBeforeTap->size.width = v5;
  p_caretBeforeTap->size.height = v6;
}

- (void)textRangeAdjustmentInteraction:(id)interaction didBeginAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(UITextSelectionDisplayInteraction *)[(UITextInteractionAssistant *)self _selectionViewManager] _didBeginRangeAdjustmentInteraction:interaction];
  [[(UITextInteractionAssistant *)self interactions] _callDelegateWillMoveTextRangeExtentAtPoint:x, y];
  [(UITextSelection *)[(UITextInteractionAssistant *)self activeSelection] setGranularity:0];
  -[UITextInput convertPoint:fromView:](-[UITextInteractionAssistant view](self, "view"), "convertPoint:fromView:", [interaction view], x, y);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __79__UIWKTextInteractionAssistant_textRangeAdjustmentInteraction_didBeginAtPoint___block_invoke;
  v14 = &unk_1E71259E8;
  v17 = v8;
  v18 = v9;
  selfCopy = self;
  interactionCopy = interaction;
  if (qword_1ED49C158 != -1)
  {
    dispatch_once(&qword_1ED49C158, &__block_literal_global_425);
  }

  v10 = [+[UIKeyboardImpl sharedInstance](UIKeyboardImpl taskQueue:v11];
  [(UIKeyboardTaskQueue *)v10 addTask:&v11 breadcrumb:qword_1ED49C150];
}

uint64_t __79__UIWKTextInteractionAssistant_textRangeAdjustmentInteraction_didBeginAtPoint___block_invoke(uint64_t a1, void *a2)
{
  [*(a1 + 32) beginSelectionChange];
  [*(a1 + 32) changeSelectionWithTouchAt:0 withSelectionTouch:objc_msgSend(*(a1 + 40) baseIsStart:"baseIsStart") withFlags:{0, *(a1 + 48), *(a1 + 56)}];

  return [a2 returnExecutionToParent];
}

uint64_t __79__UIWKTextInteractionAssistant_textRangeAdjustmentInteraction_didBeginAtPoint___block_invoke_2()
{
  result = [&__block_literal_global_427_1 copy];
  qword_1ED49C150 = result;
  return result;
}

- (void)textRangeAdjustmentInteraction:(id)interaction selectionMoved:(CGPoint)moved withTouchPoint:(CGPoint)point
{
  -[UITextInput convertPoint:fromView:](-[UITextInteractionAssistant view](self, "view", moved.x, moved.y, point.x, point.y), "convertPoint:fromView:", [interaction view], moved.x, moved.y);
  v8 = v7;
  v10 = v9;
  baseIsStart = [interaction baseIsStart];

  [(UIWKTextInteractionAssistant *)self changeSelectionWithTouchAt:1 withSelectionTouch:baseIsStart baseIsStart:0 withFlags:v8, v10];
}

- (void)textRangeAdjustmentInteraction:(id)interaction didEndAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(UITextSelectionDisplayInteraction *)[(UITextInteractionAssistant *)self _selectionViewManager] _didEndRangeAdjustmentInteraction:interaction];
  _editMenuAssistant = [(UITextInteractionAssistant *)self _editMenuAssistant];
  -[UITextInput convertPoint:fromView:](-[UITextInteractionAssistant view](self, "view"), "convertPoint:fromView:", [interaction view], x, y);
  v10 = v9;
  v12 = v11;
  if (![(_UITextInteractionEditMenuAssistant *)_editMenuAssistant _editMenuIsVisible])
  {
    [(_UITextInteractionEditMenuAssistant *)_editMenuAssistant showSelectionCommands];
  }

  self->_isEndingRangeAdjustmentInteraction = 1;
  baseIsStart = [interaction baseIsStart];

  [(UIWKTextInteractionAssistant *)self changeSelectionWithTouchAt:5 withSelectionTouch:baseIsStart baseIsStart:0 withFlags:v10, v12];
}

- (void)textRangeAdjustmentInteractionWasCancelled:(id)cancelled
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__UIWKTextInteractionAssistant_textRangeAdjustmentInteractionWasCancelled___block_invoke;
  v4[3] = &unk_1E7125920;
  v4[4] = self;
  if (qword_1ED49C168 != -1)
  {
    dispatch_once(&qword_1ED49C168, &__block_literal_global_429_1);
  }

  taskQueue = [+[UIKeyboardImpl sharedInstance](UIKeyboardImpl taskQueue];
  [(UIKeyboardTaskQueue *)taskQueue addTask:v4 breadcrumb:qword_1ED49C160];
}

uint64_t __75__UIWKTextInteractionAssistant_textRangeAdjustmentInteractionWasCancelled___block_invoke(uint64_t a1, void *a2)
{
  [*(a1 + 32) beginSelectionChange];

  return [a2 returnExecutionToParent];
}

uint64_t __75__UIWKTextInteractionAssistant_textRangeAdjustmentInteractionWasCancelled___block_invoke_2()
{
  result = [&__block_literal_global_431_1 copy];
  qword_1ED49C160 = result;
  return result;
}

- (id)webInteractionDelegate
{
  if (![(UITextInput *)[(UITextInteractionAssistant *)self view] conformsToProtocolCached:&unk_1F016C810])
  {
    return 0;
  }

  return [(UITextInteractionAssistant *)self view];
}

- (id)asyncWebKitInteractionDelegate
{
  if (![(UITextInput *)[(UITextInteractionAssistant *)self view] conformsToProtocolCached:&unk_1F016CC30])
  {
    return 0;
  }

  return [(UITextInteractionAssistant *)self view];
}

- (id)asyncInteractionDelegate
{
  if (![(UITextInput *)[(UITextInteractionAssistant *)self view] conformsToProtocolCached:&unk_1F016C7B0])
  {
    return 0;
  }

  return [(UITextInteractionAssistant *)self view];
}

- (void)beginSelectionChange
{
  if (+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    delegate = [(UIWKTextInteractionAssistant *)self delegate];

    [(UIWKTextInteractionAssistantDelegate *)delegate selectionWillChange:self];
  }

  else
  {
    view = [(UITextInteractionAssistant *)self view];

    [(UITextInput *)view beginSelectionChange];
  }
}

- (void)endSelectionChange
{
  if (+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    delegate = [(UIWKTextInteractionAssistant *)self delegate];

    [(UIWKTextInteractionAssistantDelegate *)delegate selectionDidChange:self];
  }

  else
  {
    view = [(UITextInteractionAssistant *)self view];

    [(UITextInput *)view endSelectionChange];
  }
}

- (void)willBeginSelectionInteraction
{
  v3.receiver = self;
  v3.super_class = UIWKTextInteractionAssistant;
  [(UITextInteractionAssistant *)&v3 willBeginSelectionInteraction];
  if (+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    if ([(UIWKTextInteractionAssistant *)self delegate])
    {
      [(UIWKTextInteractionAssistantDelegate *)[(UIWKTextInteractionAssistant *)self delegate] selectionWillChange:self];
    }
  }
}

- (void)didEndSelectionInteraction
{
  if (+[UIKBInputDelegateManager isAsyncTextInputEnabled]&& [(UIWKTextInteractionAssistant *)self delegate])
  {
    [(UIWKTextInteractionAssistantDelegate *)[(UIWKTextInteractionAssistant *)self delegate] selectionDidChange:self];
  }

  v3.receiver = self;
  v3.super_class = UIWKTextInteractionAssistant;
  [(UITextInteractionAssistant *)&v3 didEndSelectionInteraction];
}

- (void)changeSelectionWithTouchAt:(CGPoint)at withSelectionTouch:(int64_t)touch baseIsStart:(BOOL)start withFlags:(int64_t)flags
{
  startCopy = start;
  y = at.y;
  x = at.x;
  v12 = [(UITextInput *)[(UITextInteractionAssistant *)self view] conformsToProtocolCached:&unk_1F016C810];
  view = [(UITextInteractionAssistant *)self view];
  if (v12)
  {
    if (touch >= 5)
    {
      touchCopy = 5;
    }

    else
    {
      touchCopy = touch;
    }

    [(UITextInput *)view adjustSelectionBoundaryToPoint:touchCopy touchPhase:startCopy baseIsStart:flags flags:x, y];
  }

  else
  {
    [(UITextInput *)view conformsToProtocolCached:&unk_1F016C7B0];
    view2 = [(UITextInteractionAssistant *)self view];

    [(UITextInput *)view2 changeSelectionWithTouchAt:touch withSelectionTouch:startCopy baseIsStart:flags withFlags:x, y];
  }
}

- (void)textRangeAdjustmentInteraction:(id)interaction prepareForInvalidation:(id)invalidation
{
  if (self->_isEndingRangeAdjustmentInteraction)
  {
    prepareToInvalidateLoupeSessionBlock = self->_prepareToInvalidateLoupeSessionBlock;
    if (prepareToInvalidateLoupeSessionBlock)
    {
      [(_UIBurnableBlock *)prepareToInvalidateLoupeSessionBlock performWithInput:0];
    }

    self->_prepareToInvalidateLoupeSessionBlock = invalidation;
  }

  else
  {

    [invalidation performWithInput:0];
  }
}

- (CGRect)caretBeforeTap
{
  x = self->_caretBeforeTap.origin.x;
  y = self->_caretBeforeTap.origin.y;
  width = self->_caretBeforeTap.size.width;
  height = self->_caretBeforeTap.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end