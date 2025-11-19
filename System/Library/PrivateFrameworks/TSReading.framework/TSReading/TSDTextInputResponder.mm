@interface TSDTextInputResponder
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canResignFirstResponder;
- (BOOL)isSecureTextEntry;
- (BOOL)p_currentEditorIsNotOnMyCanvas;
- (BOOL)p_didEnterUITextInput;
- (BOOL)p_resignFirstResponder;
- (BOOL)p_wantRawArrowKeys;
- (BOOL)resignFirstResponder;
- (CGRect)caretRectForPosition:(id)a3;
- (CGRect)firstRectForRange:(id)a3;
- (TSDTextInputResponder)initWithNextResponder:(id)a3;
- (UITextInputTokenizer)tokenizer;
- (UITextPosition)beginningOfDocument;
- (UITextPosition)endOfDocument;
- (UITextRange)markedTextRange;
- (UITextRange)selectedTextRange;
- (UIView)textInputView;
- (_NSRange)_nsrangeForTextRange:(id)a3;
- (_NSRange)_selectedNSRange;
- (id)_textRangeFromNSRange:(_NSRange)a3;
- (id)characterRangeByExtendingPosition:(id)a3 inDirection:(int64_t)a4;
- (id)closestPositionToPoint:(CGPoint)a3;
- (id)closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4;
- (id)editingTextRep;
- (id)editingTextReps;
- (id)inputAccessoryView;
- (id)inputView;
- (id)keyCommands;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)p_ICC;
- (id)positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5;
- (id)positionFromPosition:(id)a3 offset:(int64_t)a4;
- (id)positionWithinRange:(id)a3 farthestInDirection:(int64_t)a4;
- (id)selectionRectsForRange:(id)a3;
- (id)superview;
- (id)textInRange:(id)a3;
- (id)textRangeFromPosition:(id)a3 toPosition:(id)a4;
- (id)textStylingAtPosition:(id)a3 inDirection:(int64_t)a4;
- (int64_t)_indexForTextPosition:(id)a3;
- (int64_t)autocorrectionType;
- (int64_t)baseWritingDirectionForPosition:(id)a3 inDirection:(int64_t)a4;
- (int64_t)comparePosition:(id)a3 toPosition:(id)a4;
- (int64_t)offsetFromPosition:(id)a3 toPosition:(id)a4;
- (void)acceptAutocorrection;
- (void)cancelDelayedResponderChange;
- (void)clearEditorAndResignFirstResponder;
- (void)dealloc;
- (void)delete:(id)a3;
- (void)editorDidChangeSelection:(id)a3 withFlags:(unint64_t)a4;
- (void)endIgnoringKeyboardInput;
- (void)forceDelayedResponderChange;
- (void)forwardInvocation:(id)a3;
- (void)insertDictationResult:(id)a3;
- (void)makeTextWritingDirectionLeftToRight:(id)a3;
- (void)makeTextWritingDirectionRightToLeft:(id)a3;
- (void)p_didUndoRedoChangeNotification:(id)a3;
- (void)p_editorSelectionWasForciblyChangedNotification:(id)a3;
- (void)p_editorWillClearSelectionNotification:(id)a3;
- (void)p_editorWillHandleTapNotification:(id)a3;
- (void)p_editorWillStyleTextNotification:(id)a3;
- (void)p_finishDynamicOperation:(id)a3;
- (void)p_setEditor:(id)a3;
- (void)p_setFirstResponder:(id)a3;
- (void)p_setFirstResponderAndEditor:(id)a3;
- (void)p_setFirstResponderAndEditorAfterDelay;
- (void)p_setSelectedTextRange:(id)a3;
- (void)p_startDynamicOperation:(id)a3;
- (void)p_textChanged;
- (void)p_willExitUITextInput;
- (void)p_willShowPopoverNotification:(id)a3;
- (void)p_willUndoChangeNotification:(id)a3;
- (void)replaceRange:(id)a3 withText:(id)a4;
- (void)selectAll:(id)a3;
- (void)setEditor:(id)a3;
- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)setSelectedTextRange:(id)a3;
- (void)toggleBoldface:(id)a3;
- (void)toggleItalics:(id)a3;
- (void)toggleUnderline:(id)a3;
- (void)unmarkText;
@end

@implementation TSDTextInputResponder

- (TSDTextInputResponder)initWithNextResponder:(id)a3
{
  v9.receiver = self;
  v9.super_class = TSDTextInputResponder;
  v4 = [(TSDTextInputResponder *)&v9 init];
  if (v4)
  {
    v4->_nextResponder = a3;
    v4->_preferredEndPosition = NAN;
    v4->_preferredStartPosition = NAN;
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v4 selector:sel_p_willUndoChangeNotification_ name:*MEMORY[0x277CCA828] object:0];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v4 selector:sel_p_didUndoRedoChangeNotification_ name:*MEMORY[0x277CCA810] object:0];
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v4 selector:sel_p_didUndoRedoChangeNotification_ name:*MEMORY[0x277CCA808] object:0];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }

  return v4;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  v3.receiver = self;
  v3.super_class = TSDTextInputResponder;
  [(TSDTextInputResponder *)&v3 dealloc];
}

- (void)p_setEditor:(id)a3
{
  if (a3 && self->_editor == a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder p_setEditor:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 241, @"Editor validation should have happened through the public setEditor method."}];
  }

  v12 = [(TSDTextInputResponder *)self inputView];
  [(TSDTextInputResponder *)self willChangeValueForKey:@"inputView"];
  v7 = self->_editor;
  self->_editor = a3;
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_opt_respondsToSelector();
  }

  else
  {
    v8 = 0;
  }

  self->_editorRespondsToRawArrowKeySelectors = v8 & 1;
  if (!a3)
  {
    if (![(TSDTextInputResponder *)self p_isExecutingUITextInput])
    {
      [objc_loadWeak(&self->_inputDelegate) selectionWillChange:self];
      [objc_loadWeak(&self->_inputDelegate) selectionDidChange:self];
    }

    [(TSDTextInputResponder *)self p_textChanged];
  }

  [(TSDTextInputResponder *)self didChangeValueForKey:@"inputView"];
  v9 = [(TSDTextInputResponder *)self inputView];
  if (self->_editor)
  {
    v10 = v9 == v12;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    if (v9 && ([v9 frame], v11 == 0.0))
    {
      [(TSDTextInputResponder *)self performSelector:sel_reloadInputViews withObject:0 afterDelay:0.0];
    }

    else
    {
      [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_reloadInputViews object:0];
      [(TSDTextInputResponder *)self reloadInputViews];
    }
  }
}

- (void)p_setFirstResponder:(id)a3
{
  if (![(TSDTextInputResponder *)self p_requiresFirstResponderChangeForEditor:?])
  {
    return;
  }

  v5 = [a3 wantsKeyboard];
  v6 = [(TSDTextInputResponder *)self p_ICC];
  if (v5)
  {
    [v6 delegate];
    v7 = TSUProtocolCast();
    if ((objc_opt_respondsToSelector() & 1) == 0 || [v7 allowTextEditingToBegin])
    {
      v8 = self;
LABEL_14:

      [(TSDTextInputResponder *)v8 becomeFirstResponder];
      return;
    }
  }

  nextResponder = self->_nextResponder;
  if (nextResponder)
  {
    while (![(UIResponder *)nextResponder canBecomeFirstResponder])
    {
      nextResponder = [(UIResponder *)nextResponder nextResponder];
      if (!nextResponder)
      {
        goto LABEL_10;
      }
    }

    v8 = nextResponder;
    goto LABEL_14;
  }

LABEL_10:

  [(TSDTextInputResponder *)self p_resignFirstResponder];
}

- (void)p_setFirstResponderAndEditor:(id)a3
{
  self->_pendingEditorChange = 0;

  self->_pendingEditor = 0;
  if (a3 && [a3 wantsKeyboard])
  {
    [(TSDTextInputResponder *)self p_setEditor:a3];

    [(TSDTextInputResponder *)self p_setFirstResponder:a3];
  }

  else
  {
    [(TSDTextInputResponder *)self p_setFirstResponder:a3];

    [(TSDTextInputResponder *)self p_setEditor:a3];
  }
}

- (void)p_setFirstResponderAndEditorAfterDelay
{
  if (!self->_pendingEditorChange)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder p_setFirstResponderAndEditorAfterDelay]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 378, @"Unexpectedly being asked to update the first responder when there's nothing to switch to."}];
  }

  self->_pendingEditorChange = 0;
  v5 = self->_pendingEditor;
  [(TSDTextInputResponder *)self p_setFirstResponderAndEditor:v5];
}

- (void)setEditor:(id)a3
{
  [(TSDTextInputResponder *)self cancelDelayedResponderChange];

  self->_pendingEditor = 0;
  self->_pendingEditorChange = 0;
  if (self->_editor != a3)
  {
    if (self->_isResigning || ![(TSDTextInputResponder *)self p_requiresFirstResponderChangeForEditor:a3])
    {

      [(TSDTextInputResponder *)self p_setEditor:a3];
    }

    else if (-[TSDTextInputResponder isFirstResponder](self, "isFirstResponder") && ([a3 wantsKeyboard] & 1) == 0)
    {
      self->_pendingEditor = a3;
      self->_pendingEditorChange = 1;

      [(TSDTextInputResponder *)self performSelector:sel_p_setFirstResponderAndEditorAfterDelay withObject:0 afterDelay:0.25];
    }

    else
    {

      [(TSDTextInputResponder *)self p_setFirstResponderAndEditor:a3];
    }
  }
}

- (void)endIgnoringKeyboardInput
{
  if (atomic_fetch_add(&self->_ignoreKeyboardInputCount, 0xFFFFFFFF) <= 0)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder endIgnoringKeyboardInput]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"];

    [v3 handleFailureInFunction:v4 file:v5 lineNumber:430 description:@"Unbalanced calls to -beginIgnoringKeyboardInput and -endIgnoringKeyboardInput"];
  }
}

- (void)clearEditorAndResignFirstResponder
{
  [(TSDTextInputResponder *)self acceptAutocorrection];

  self->_editor = 0;

  [(TSDTextInputResponder *)self p_setFirstResponder:0];
}

- (void)cancelDelayedResponderChange
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_p_setFirstResponderAfterDelay object:0];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_p_setFirstResponderAndEditorAfterDelay object:0];
  self->_pendingFirstResponderObject = 0;

  self->_pendingEditor = 0;
  self->_pendingEditorChange = 0;
}

- (void)forceDelayedResponderChange
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_p_setFirstResponderAfterDelay object:0];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_p_setFirstResponderAndEditorAfterDelay object:0];
  self->_pendingFirstResponderObject = 0;
  if (self->_pendingEditorChange)
  {

    [(TSDTextInputResponder *)self p_setFirstResponderAndEditorAfterDelay];
  }
}

- (id)editingTextReps
{
  v20 = *MEMORY[0x277D85DE8];
  if (!self->_editor)
  {
    return 0;
  }

  v3 = [(TSDTextInputResponder *)self nextResponder];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  do
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    v6 = [v4 nextResponder];
    v4 = v6;
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6 == 0;
    }
  }

  while (!v7);
  if (!v5)
  {
    return v5;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [objc_msgSend(objc_msgSend(v5 controller];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v5 = 0;
  v11 = *v16;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v15 + 1) + 8 * i);
      if ([v13 canEditWithEditor:self->_editor])
      {
        if (!v5)
        {
          v5 = [MEMORY[0x277CBEB58] set];
        }

        [v5 addObject:v13];
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v10);
  return v5;
}

- (id)editingTextRep
{
  v2 = [(TSDTextInputResponder *)self editingTextReps];

  return [v2 anyObject];
}

- (void)acceptAutocorrection
{
  if (!self->_inDynamicOperation && [(TSDTextInputResponder *)self autocorrectionType]!= 1)
  {
    if (![(TSDTextInputResponder *)self p_isExecutingUITextInput])
    {
      [objc_loadWeak(&self->_inputDelegate) selectionWillChange:self];
      [objc_loadWeak(&self->_inputDelegate) selectionDidChange:self];
    }

    [(TSDTextInput *)self->_editor clearMarkedRange];

    [(TSDTextInputResponder *)self p_textChanged];
  }
}

- (BOOL)becomeFirstResponder
{
  v5.receiver = self;
  v5.super_class = TSDTextInputResponder;
  v3 = [(TSDTextInputResponder *)&v5 becomeFirstResponder];
  if (v3)
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }

  return v3;
}

- (BOOL)canResignFirstResponder
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  editor = self->_editor;

  return [(TSDTextInput *)editor canResignFirstResponder];
}

- (BOOL)p_resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = TSDTextInputResponder;
  v3 = [(TSDTextInputResponder *)&v5 resignFirstResponder];
  if (v3)
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }

  return v3;
}

- (BOOL)resignFirstResponder
{
  v3 = [(TSDTextInputResponder *)self canResignFirstResponder];
  if (v3)
  {
    self->_isResigning = 1;
    if ([(TSDTextInput *)self->_editor wantsKeyboard])
    {
      [(TSDTextInputResponder *)self acceptAutocorrection];
      [(TSDTextInput *)self->_editor endEditing];
    }

    if ([(TSDTextInputResponder *)self isFirstResponder])
    {
      LOBYTE(v3) = [(TSDTextInputResponder *)self p_resignFirstResponder];
    }

    else
    {
      LOBYTE(v3) = 1;
    }

    self->_isResigning = 0;
  }

  return v3;
}

- (BOOL)p_didEnterUITextInput
{
  ignoreKeyboardInputCount = self->_ignoreKeyboardInputCount;
  if (!ignoreKeyboardInputCount)
  {
    ++self->_respondingToUITextInput;
  }

  return ignoreKeyboardInputCount == 0;
}

- (void)p_willExitUITextInput
{
  respondingToUITextInput = self->_respondingToUITextInput;
  if (respondingToUITextInput <= 0)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder p_willExitUITextInput]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 663, @"UITextInput counter is going negative"}];
    respondingToUITextInput = self->_respondingToUITextInput;
  }

  self->_respondingToUITextInput = respondingToUITextInput - 1;
}

- (UITextRange)selectedTextRange
{
  if ([(TSDTextInputResponder *)self p_wantRawArrowKeys]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [(TSDTextInput *)self->_editor selectionForArrowKeys];
  }

  else
  {
    v3 = [(TSDTextInput *)self->_editor textInputSelection];
  }

  v4 = v3;
  if (v3)
  {
    v5 = [(TSDTextRange *)v3 range];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = 0;
    }

    else
    {
      v7 = v5;
      v8 = v6;
      v9 = [(TSDTextRange *)v4 isAtEndOfLine];
      *&v10 = self->_preferredStartPosition;
      *&v11 = self->_preferredEndPosition;
      v4 = [TSDTextRange textRangeWithRange:v7 eolAffinity:v8 preferredStartPosition:v9 preferredEndPosition:v10, v11];
      if (v7 + v8 > [(TSDTextInput *)self->_editor textLength])
      {
        v12 = [MEMORY[0x277D6C290] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder selectedTextRange]"];
        [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 694, @"Bad selected text range"}];
      }
    }
  }

  if (![(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {
    return &v4->super;
  }

  return [(TSDTextInputResponder *)self arrow_augmentTextRange:v4];
}

- (void)p_setSelectedTextRange:(id)a3
{
  v5 = [(TSDTextInputResponder *)self p_ICC];
  [v5 delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(v5 "delegate")])
  {
    v6 = [(TSDTextInputResponder *)self _nsrangeForTextRange:a3];
    v8 = +[TSDRangeClamper clampSelectedRange:inFullString:toWordLimit:](TSDRangeClamper, "clampSelectedRange:inFullString:toWordLimit:", v6, v7, -[TSDTextInput unfilteredText](self->_editor, "unfilteredText"), [objc_msgSend(v5 "delegate")]);
    a3 = [(TSDTextInputResponder *)self _textRangeFromNSRange:v8, v9];
  }

  if ([(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {

    [(TSDTextInputResponder *)self arrow_setSelectedTextRange:a3];
  }

  else
  {
    objc_opt_class();
    v10 = TSUDynamicCast();
    if (v10)
    {
      v11 = v10;
      [(TSDTextInputResponder *)self acceptAutocorrection];
      preferredStartPosition = self->_preferredStartPosition;
      preferredEndPosition = self->_preferredEndPosition;
      self->_isSettingSelectedTextRange = 1;
      [v11 range];
      [(TSDTextInput *)self->_editor editRange];
      v14 = TSUIntersectionRangeWithEdge();
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        -[TSDTextInput setSelectionWithRange:endOfLine:](self->_editor, "setSelectionWithRange:endOfLine:", v14, v15, [v11 isAtEndOfLine]);
      }

      [v11 preferredStartPosition];
      if (preferredStartPosition == v16)
      {
        self->_preferredStartPosition = preferredStartPosition;
      }

      [v11 preferredEndPosition];
      if (preferredEndPosition == v17)
      {
        self->_preferredEndPosition = preferredEndPosition;
      }

      self->_isSettingSelectedTextRange = 0;
    }

    else
    {
      v18 = [MEMORY[0x277D6C290] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder p_setSelectedTextRange:]"];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"];

      [v18 handleFailureInFunction:v19 file:v20 lineNumber:728 description:@"bad textRange"];
    }
  }
}

- (void)setSelectedTextRange:(id)a3
{
  if ([(TSDTextInputResponder *)self p_didEnterUITextInput])
  {
    if (a3)
    {
      [(TSDTextInputResponder *)self p_setSelectedTextRange:a3];
      [(TSDTextInputResponder *)self p_willExitUITextInput];
    }

    else if (objc_opt_respondsToSelector())
    {
      editor = self->_editor;

      [(TSDTextInput *)editor clearSelection];
    }
  }
}

- (UITextRange)markedTextRange
{
  if ([(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {
    return 0;
  }

  v3 = [(TSDTextInput *)self->_editor markedRange];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v5 = [TSDTextRange textRangeWithRange:v3, v4];
  if (v7 + v8 > [(TSDTextInput *)self->_editor textLength])
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder markedTextRange]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 797, @"Bad marked text range"}];
  }

  return &v5->super;
}

- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if ([(TSDTextInputResponder *)self p_didEnterUITextInput])
  {
    [(TSDTextInput *)self->_editor setMarkedText:a3 selectedRange:location, length];
    [(TSDTextInputResponder *)self p_willExitUITextInput];
  }
}

- (void)unmarkText
{
  if ([(TSDTextInputResponder *)self p_didEnterUITextInput])
  {
    [(TSDTextInputResponder *)self p_unmarkText];
    [(TSDTextInputResponder *)self p_willExitUITextInput];
  }
}

- (UITextPosition)beginningOfDocument
{
  v3 = [TSDTextPosition textPositionWithCharIndex:[(TSDTextInput *)self->_editor editRange]];
  if (![(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {
    return &v3->super;
  }

  return [(TSDTextInputResponder *)self arrow_augmentBeginningOfDocument:v3];
}

- (UITextPosition)endOfDocument
{
  v3 = [(TSDTextInput *)self->_editor editRange];
  v5 = [TSDTextPosition textPositionWithCharIndex:v3 + v4];
  if (![(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {
    return &v5->super;
  }

  return [(TSDTextInputResponder *)self arrow_augmentEndOfDocument:v5];
}

- (id)textInRange:(id)a3
{
  objc_opt_class();
  v5 = TSUDynamicCast();
  v6 = v5;
  if (!a3 || v5)
  {
    if (!a3)
    {
      return &stru_287D36338;
    }
  }

  else
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder textInRange:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 874, @"bad textRange"}];
  }

  editor = self->_editor;
  v11 = [v6 range];

  return [(TSDTextInput *)editor textInRange:v11, v10];
}

- (void)replaceRange:(id)a3 withText:(id)a4
{
  if ([(TSDTextInputResponder *)self p_didEnterUITextInput])
  {
    if ([(TSDTextInputResponder *)self p_wantRawArrowKeys])
    {
      [(TSDTextInputResponder *)self insertText:a4];
    }

    else
    {
      objc_opt_class();
      v6 = TSUDynamicCast();
      if (!v6)
      {
        v7 = [MEMORY[0x277D6C290] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder replaceRange:withText:]"];
        [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 892, @"bad textRange"}];
      }

      v9 = [(TSDTextInput *)self->_editor editRange];
      if (v6)
      {
        v11 = v9;
        v12 = v10;
        v14 = [v6 range];
        if (v11 <= v14 && v11 + v12 >= v14 + v13)
        {
          [(TSDTextInput *)self->_editor replaceRange:v14 withText:v13, a4];
        }

        else
        {
          v16 = [MEMORY[0x277D6C290] currentHandler];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder replaceRange:withText:]"];
          [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 900, @"Input range is bad."}];
        }
      }
    }

    [(TSDTextInputResponder *)self p_willExitUITextInput];
  }
}

- (id)textRangeFromPosition:(id)a3 toPosition:(id)a4
{
  objc_opt_class();
  v7 = TSUDynamicCast();
  objc_opt_class();
  v8 = TSUDynamicCast();
  v9 = v8;
  if (!v7)
  {
    v26 = [MEMORY[0x277D6C290] currentHandler];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder textRangeFromPosition:toPosition:]"];
    [v26 handleFailureInFunction:v27 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 930, @"bad textPosition"}];
    if (v9)
    {
      return 0;
    }

LABEL_15:
    v28 = [MEMORY[0x277D6C290] currentHandler];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder textRangeFromPosition:toPosition:]"];
    [v28 handleFailureInFunction:v29 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 931, @"bad textPosition"}];
    return 0;
  }

  if (!v8)
  {
    goto LABEL_15;
  }

  v10 = [v8 charIndex];
  v11 = [v7 charIndex];
  if (v10 <= v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = v7;
  }

  if (v10 <= v11)
  {
    v13 = v7;
  }

  else
  {
    v13 = v9;
  }

  v14 = [v12 charIndex];
  v15 = [v13 charIndex];
  v16 = [v12 charIndex];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v17 = v15 - v16;
  v18 = [v7 endOfLineAffinity];
  [v7 preferredPosition];
  v20 = v19;
  [v9 preferredPosition];
  LODWORD(v22) = v21;
  LODWORD(v23) = v20;
  v24 = [TSDTextRange textRangeWithRange:v14 eolAffinity:v17 preferredStartPosition:v18 preferredEndPosition:v23, v22];
  if (![(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {
    return v24;
  }

  return [(TSDTextInputResponder *)self arrow_augmentTextRange:v24 fromPosition:a3 toPosition:a4];
}

- (int64_t)comparePosition:(id)a3 toPosition:(id)a4
{
  if ([(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {

    return [(TSDTextInputResponder *)self arrow_comparePosition:a3 toPosition:a4];
  }

  objc_opt_class();
  v8 = TSUDynamicCast();
  objc_opt_class();
  v9 = TSUDynamicCast();
  v10 = v9;
  if (!v8)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder comparePosition:toPosition:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 962, @"bad textPosition"}];
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_11:
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder comparePosition:toPosition:]"];
    [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 963, @"bad textPosition"}];
    goto LABEL_7;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_7:

  return [v8 compare:v10];
}

- (int64_t)offsetFromPosition:(id)a3 toPosition:(id)a4
{
  if ([(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {

    return [(TSDTextInputResponder *)self arrow_offsetFromPosition:a3 toPosition:a4];
  }

  objc_opt_class();
  v8 = TSUDynamicCast();
  objc_opt_class();
  v9 = TSUDynamicCast();
  v10 = v9;
  if (!v8)
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder offsetFromPosition:toPosition:]"];
    [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 983, @"bad textPosition"}];
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_13:
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder offsetFromPosition:toPosition:]"];
    [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 984, @"bad textPosition"}];
    goto LABEL_7;
  }

  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_7:
  v11 = [(TSDTextInput *)self->_editor textLength];
  result = 0;
  if (v8 && v10)
  {
    if ([v10 charIndex] <= v11 && objc_msgSend(v8, "charIndex") <= v11)
    {
      v16 = [v10 charIndex];
      return v16 - [v8 charIndex];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5
{
  if (![(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {
    objc_opt_class();
    cachedPosition = TSUDynamicCast();
    if (cachedPosition)
    {
      if ([[(TSDTextInputResponder *)self editor] textIsVerticalAtCharIndex:[(TSDTextPosition *)cachedPosition charIndex]]&& (a4 - 2) <= 3)
      {
        a4 = qword_26CA66048[a4 - 2];
      }

      if (a5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([(TSDTextPosition *)cachedPosition charIndex]== 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = [MEMORY[0x277D6C290] currentHandler];
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder positionFromPosition:inDirection:offset:]"];
          [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 1054, @"bad charIndex"}];
        }

        v13 = (a4 & 0xFFFFFFFFFFFFFFFELL) == 4;
        if ([(TSDTextPosition *)cachedPosition charIndex]<= 0x7FFFFFFFFFFFFFFELL)
        {
          v14 = [a3 isEqual:self->_referencePosition];
          if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 4 && v14)
          {
            if (a4 == 4)
            {
              v15 = -a5;
            }

            else
            {
              v15 = a5;
            }

            v16 = v15 - self->_referenceOffset;
            v17 = v16;
            if (v16 < 0)
            {
              v16 = self->_referenceOffset - v15;
            }

            if (a5 >= 0)
            {
              v18 = a5;
            }

            else
            {
              v18 = -a5;
            }

            if (v16 >= v18)
            {

              self->_referencePosition = 0;
              self->_cachedPosition = 0;
              a4 = 5;
              if (v15 < 0)
              {
                goto LABEL_31;
              }
            }

            else
            {
              cachedPosition = self->_cachedPosition;
              a4 = 5;
              v15 = v17;
              if (v17 < 0)
              {
                goto LABEL_31;
              }
            }
          }

          else
          {
            v15 = a5;
            if (a5 < 0)
            {
LABEL_31:
              v15 = -v15;
              if (a4 > 3)
              {
                if (a4 == 5)
                {
                  a4 = 4;
                }

                else if (a4 == 4)
                {
                  a4 = 5;
                }
              }

              else if (a4 == 2)
              {
                a4 = 3;
              }

              else if (a4 == 3)
              {
                a4 = 2;
              }
            }
          }

          v33 = a3;
          v34 = [(TSDTextPosition *)cachedPosition endOfLineAffinity];
          [(TSDTextPosition *)cachedPosition preferredPosition];
          v35 = v19;
          v32 = v15;
          if (v15)
          {
            v20 = 0;
            v21 = 4 * v13;
            v22 = v15 + 1;
            do
            {
              if (v20)
              {
                v23 = 0;
              }

              else
              {
                v23 = &v35;
              }

              v24 = [(TSDTextInput *)self->_editor charIndexByMovingPosition:cachedPosition toBoundary:v21 inDirection:a4 preferPosition:v23, v32];
              cachedPosition = 0;
              if (v24 != 0x7FFFFFFFFFFFFFFFLL)
              {
                HIDWORD(v25) = HIDWORD(v35);
                *&v25 = v35;
                cachedPosition = [TSDTextPosition textPositionWithCharIndex:v24 eolAffinity:((a4 & 0xFFFFFFFFFFFFFFFELL) == 4) & v34 preferredPosition:1 isPreferredStart:v25];
              }

              --v22;
              ++v20;
            }

            while (v22 > 1);
          }

          v26 = self->_cachedPosition;
          if (cachedPosition)
          {
            if (![(TSDTextPosition *)cachedPosition isEqual:v26]|| ![(TSDTextPosition *)self->_referencePosition isEqual:v33])
            {
              v27 = v33;

              self->_referencePosition = v33;
              v28 = a4 == 2 || a4 == 5;
              v29 = a5;
              if (!v28)
              {
                v29 = -a5;
              }

              self->_referenceOffset = v29;
              v30 = cachedPosition;

              self->_cachedPosition = cachedPosition;
            }
          }

          else if (v32 != 1 || v26 == 0)
          {
            return v33;
          }

          else
          {
            return self->_cachedPosition;
          }

          return cachedPosition;
        }
      }

      return 0;
    }

    return cachedPosition;
  }

  return [(TSDTextInputResponder *)self arrow_positionFromPosition:a3 inDirection:a4 offset:a5];
}

- (id)positionFromPosition:(id)a3 offset:(int64_t)a4
{
  if ([(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {

    return [(TSDTextInputResponder *)self arrow_positionFromPosition:a3 offset:a4];
  }

  objc_opt_class();
  v8 = TSUDynamicCast();
  editor = self->_editor;
  if (editor)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    return 0;
  }

  v11 = [(TSDTextInput *)editor editRange];
  v13 = v12;
  v14 = [v8 charIndex];
  v16 = v14;
  if (a4 < 0 && v14 < -a4)
  {
    return 0;
  }

  if (!a4)
  {
    goto LABEL_24;
  }

  v16 = v14 + a4;
  if (v14 + a4 > v11 + v13)
  {
    return 0;
  }

  v17 = objc_opt_respondsToSelector();
  v18 = self->_editor;
  if (v17)
  {
    v19 = [(TSDTextInput *)v18 unfilteredText];
  }

  else
  {
    v19 = [(TSDTextInput *)v18 textInRange:0, [(TSDTextInput *)v18 textLength]];
  }

  if (v16 < v11 + v13)
  {
    v20 = [v19 rangeOfComposedCharacterSequenceAtIndex:v16];
    if (v16 != v20 && v16 >= v20)
    {
      v22 = a4 <= 0 ? 0 : v21;
      v23 = v22 + v20;
      if (v16 - v20 < v21)
      {
        v16 = v23;
      }
    }
  }

LABEL_24:
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if (v16 < v11 || (v11 += v13, v16 > v11))
  {
    v16 = v11;
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }
  }

  LODWORD(v15) = 2143289344;

  return [TSDTextPosition textPositionWithCharIndex:v16 eolAffinity:0 preferredPosition:1 isPreferredStart:v15];
}

- (CGRect)firstRectForRange:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    editor = self->_editor;
    v6 = [v4 range];
    [(TSDTextInput *)editor firstRectForRange:v6, v7];
    v19 = CGRectIntegral(v18);
    x = v19.origin.x;
    y = v19.origin.y;
    width = v19.size.width;
    height = v19.size.height;
  }

  else
  {
    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder firstRectForRange:]"];
    [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 1213, @"bad textRange"}];
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)selectionRectsForRange:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (!v4)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder selectionRectsForRange:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 1226, @"bad textRange"}];
  }

  editor = self->_editor;
  v9 = [v4 range];

  return [(TSDTextInput *)editor selectionRectsForRange:v9, v8];
}

- (CGRect)caretRectForPosition:(id)a3
{
  if (self->_editor)
  {
    objc_opt_class();
    v4 = TSUDynamicCast();
    if (!v4)
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder caretRectForPosition:]"];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 1244, @"bad text position"}];
    }

    -[TSDTextInput firstRectForRange:](self->_editor, "firstRectForRange:", [v4 charIndex], 0);
    x = v15.origin.x;
    y = v15.origin.y;
    width = v15.size.width;
    height = v15.size.height;
    if (!CGRectIsNull(v15))
    {
      v16.origin.x = x;
      v16.origin.y = y;
      v16.size.width = width;
      v16.size.height = height;
      v17.origin.x = round(CGRectGetMidX(v16));
      v17.size.width = 0.0;
      v17.origin.y = y;
      v17.size.height = height;
      v18 = CGRectIntegral(v17);
      x = v18.origin.x;
      y = v18.origin.y;
      width = v18.size.width;
      height = v18.size.height;
    }
  }

  else
  {
    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
  }

  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)textStylingAtPosition:(id)a3 inDirection:(int64_t)a4
{
  if (!a3)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CBEB38] dictionary];
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (!v6)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder textStylingAtPosition:inDirection:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 1272, @"bad text position"}];
  }

  v9 = [v6 charIndex];
  v10 = [(TSDTextInput *)self->_editor textFontAtCharIndex:v9];
  if (v10)
  {
    [v5 setObject:v10 forKey:*MEMORY[0x277D740A8]];
  }

  v11 = [(TSDTextInput *)self->_editor textColorAtCharIndex:v9];
  if (v11)
  {
    [v5 setObject:v11 forKey:*MEMORY[0x277D740C0]];
  }

  return v5;
}

- (id)keyCommands
{
  if (keyCommands_s_globalKeyCommandsOnce != -1)
  {
    [TSDTextInputResponder keyCommands];
  }

  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = [v3 initWithArray:keyCommands_s_globalKeyCommands];
  if (objc_opt_respondsToSelector())
  {
    [v4 addObjectsFromArray:{-[TSDTextInput keyCommands](self->_editor, "keyCommands")}];
  }

  return v4;
}

id __36__TSDTextInputResponder_keyCommands__block_invoke()
{
  v2[5] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D75650] keyCommandWithInput:@"\r" modifierFlags:0x80000 action:sel_insertNewlineIgnoringFieldEditor_];
  v2[1] = [MEMORY[0x277D75650] keyCommandWithInput:@"\r" modifierFlags:0x100000 action:{sel_endEditingAndSelectParent_, v0}];
  v2[2] = [MEMORY[0x277D75650] keyCommandWithInput:@"\t" modifierFlags:0x80000 action:sel_insertTabIgnoringFieldEditor_];
  v2[3] = [MEMORY[0x277D75650] keyCommandWithInput:@"\t" modifierFlags:0x20000 action:sel_insertBacktab_];
  v2[4] = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76AD8] modifierFlags:0 action:sel_cancelOperation_];
  keyCommands_s_globalKeyCommands = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:5];
  return keyCommands_s_globalKeyCommands;
}

- (void)insertDictationResult:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(TSDTextInputResponder *)self p_didEnterUITextInput])
  {
    if (objc_opt_respondsToSelector())
    {
      [(TSDTextInput *)self->_editor insertDictationResult:a3];
    }

    else
    {
      v5 = [MEMORY[0x277CCAB68] string];
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = *v11;
        do
        {
          v8 = 0;
          do
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(a3);
            }

            v9 = [*(*(&v10 + 1) + 8 * v8) text];
            if (v9)
            {
              [v5 appendString:v9];
            }

            ++v8;
          }

          while (v6 != v8);
          v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v6);
      }

      if ([v5 length])
      {
        [(TSDTextInputResponder *)self insertText:v5];
      }
    }

    [(TSDTextInputResponder *)self p_willExitUITextInput];
  }
}

- (BOOL)p_currentEditorIsNotOnMyCanvas
{
  v3 = [-[TSDTextInputResponder p_ICC](self "p_ICC")];
  if (self->_editor)
  {
    return [objc_msgSend(v3 "currentEditors")] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if ([(TSDTextInputResponder *)self p_currentEditorIsNotOnMyCanvas]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [(TSDTextInput *)self->_editor canPerformEditorAction:a3 withSender:a4];
    if (v7 == 1)
    {
      return v7;
    }
  }

  else if ([objc_msgSend(objc_msgSend(-[TSDTextInputResponder p_ICC](self "p_ICC")])
  {
    LOBYTE(v7) = 1;
    return v7;
  }

  v7 = [(TSDTextInputResponder *)self p_accessibilityShouldCheckAncestorCanPerformAction:a3 withSender:a4];
  if (v7)
  {
    v9.receiver = self;
    v9.super_class = TSDTextInputResponder;
    LOBYTE(v7) = [(TSDTextInputResponder *)&v9 canPerformAction:a3 withSender:a4];
  }

  return v7;
}

- (void)selectAll:(id)a3
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(TSDTextInput *)self->_editor canPerformEditorAction:a2 withSender:a3]== 1)
  {
    [(TSDTextInputResponder *)self acceptAutocorrection];
    [objc_msgSend(MEMORY[0x277D75718] "sharedMenuController")];
    editor = self->_editor;

    [(TSDTextInput *)editor selectAll:a3];
  }
}

- (void)delete:(id)a3
{
  [(TSDTextInputResponder *)self acceptAutocorrection];
  if (objc_opt_respondsToSelector())
  {
    [(TSDTextInput *)self->_editor delete:a3];
  }

  v5 = [MEMORY[0x277D75718] sharedMenuController];

  [v5 hideMenu];
}

- (void)toggleBoldface:(id)a3
{
  if ([(TSDTextInput *)self->_editor canPerformEditorAction:a2 withSender:a3]== 1)
  {
    editor = self->_editor;

    [(TSDTextInput *)editor toggleBoldface:a3];
  }
}

- (void)toggleItalics:(id)a3
{
  if ([(TSDTextInput *)self->_editor canPerformEditorAction:a2 withSender:a3]== 1)
  {
    editor = self->_editor;

    [(TSDTextInput *)editor toggleItalics:a3];
  }
}

- (void)toggleUnderline:(id)a3
{
  if ([(TSDTextInput *)self->_editor canPerformEditorAction:a2 withSender:a3]== 1)
  {
    editor = self->_editor;

    [(TSDTextInput *)editor toggleUnderline:a3];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = TSDTextInputResponder;
  if ([(TSDTextInputResponder *)&v8 respondsToSelector:?])
  {
    v7.receiver = self;
    v7.super_class = TSDTextInputResponder;
    return [(TSDTextInputResponder *)&v7 methodSignatureForSelector:a3];
  }

  else
  {
    if ([(TSDTextInputResponder *)self p_currentEditorIsNotOnMyCanvas]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      editor = self->_editor;
    }

    else
    {
      editor = [objc_msgSend(-[TSDTextInputResponder p_ICC](self "p_ICC")];
    }

    return [(TSDTextInput *)editor methodSignatureForSelector:a3];
  }
}

- (void)forwardInvocation:(id)a3
{
  v5 = [a3 selector];
  v6 = [objc_msgSend(-[TSDTextInputResponder p_ICC](self "p_ICC")];
  if ([(TSDTextInputResponder *)self p_currentEditorIsNotOnMyCanvas]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(TSDTextInputResponder *)self acceptAutocorrection];
    [objc_msgSend(MEMORY[0x277D75718] "sharedMenuController")];
    editor = self->_editor;
    v8 = a3;
LABEL_6:

    [v8 invokeWithTarget:editor];
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [(TSDTextInputResponder *)self acceptAutocorrection];
    [objc_msgSend(MEMORY[0x277D75718] "sharedMenuController")];
    v8 = a3;
    editor = v6;
    goto LABEL_6;
  }

  [(TSDTextInputResponder *)self doesNotRecognizeSelector:v5];
}

- (int64_t)autocorrectionType
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  editor = self->_editor;

  return [(TSDTextInput *)editor autocorrectionType];
}

- (BOOL)isSecureTextEntry
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  editor = self->_editor;

  return [(TSDTextInput *)editor isSecureTextEntry];
}

- (UITextInputTokenizer)tokenizer
{
  if ([(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {

    return [(TSDTextInputResponder *)self arrow_tokenizer];
  }

  else
  {
    result = self->_tokenizer;
    if (!result)
    {
      result = [[TSDTextInputTokenizer alloc] initWithTextInput:self];
      self->_tokenizer = result;
    }
  }

  return result;
}

- (id)_textRangeFromNSRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(TSDTextInputResponder *)self _selectableText];
  v6 = [v5 positionFromPosition:objc_msgSend(v5 offset:{"beginningOfDocument"), location}];
  if (!v6)
  {
    v6 = [v5 endOfDocument];
  }

  v7 = [v5 positionFromPosition:v6 offset:length];
  if (!v7)
  {
    v7 = [v5 endOfDocument];
  }

  return [v5 textRangeFromPosition:v6 toPosition:v7];
}

- (int64_t)_indexForTextPosition:(id)a3
{
  v4 = [(TSDTextInputResponder *)self _selectableText];
  v5 = [v4 beginningOfDocument];

  return [v4 offsetFromPosition:v5 toPosition:a3];
}

- (_NSRange)_nsrangeForTextRange:(id)a3
{
  v5 = [(TSDTextInputResponder *)self _selectableText];
  v6 = -[TSDTextInputResponder _indexForTextPosition:](self, "_indexForTextPosition:", [a3 start]);
  v7 = [v5 offsetFromPosition:objc_msgSend(a3 toPosition:{"start"), objc_msgSend(a3, "end")}];
  v8 = v6;
  result.length = v7;
  result.location = v8;
  return result;
}

- (_NSRange)_selectedNSRange
{
  v3 = [(TSDTextInputResponder *)self _selectableText];
  if (v3 && (v4 = [v3 selectedTextRange]) != 0)
  {
    v5 = [(TSDTextInputResponder *)self _nsrangeForTextRange:v4];
  }

  else
  {
    v6 = 0;
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  result.length = v6;
  result.location = v5;
  return result;
}

- (id)inputView
{
  [(TSDTextInputResponder *)self editor];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v3 = [(TSDTextInputResponder *)self editor];

  return [(TSDTextInput *)v3 inputView];
}

- (id)inputAccessoryView
{
  [(TSDTextInputResponder *)self editor];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v3 = [(TSDTextInputResponder *)self editor];

  return [(TSDTextInput *)v3 inputAccessoryView];
}

- (id)p_ICC
{
  nextResponder = self->_nextResponder;
  if (!nextResponder)
  {
    return 0;
  }

  do
  {
    objc_opt_class();
    v3 = TSUDynamicCast();
    if (v3)
    {
      v4 = [v3 controller];
    }

    else
    {
      v4 = 0;
    }

    v5 = [(UIResponder *)nextResponder nextResponder];
    if (!v5)
    {
      break;
    }

    nextResponder = v5;
  }

  while (!v4);
  return v4;
}

- (void)p_startDynamicOperation:(id)a3
{
  if ([(TSDTextInputResponder *)self isFirstResponder])
  {
    [(TSDTextInputResponder *)self acceptAutocorrection];
    self->_inDynamicOperation = 1;
  }
}

- (void)p_finishDynamicOperation:(id)a3
{
  if ([(TSDTextInputResponder *)self isFirstResponder])
  {
    self->_inDynamicOperation = 0;
  }
}

- (BOOL)p_wantRawArrowKeys
{
  editor = self->_editor;
  if (editor && self->_editorRespondsToRawArrowKeySelectors)
  {
    return [(TSDTextInput *)editor wantsRawArrowKeyEvents];
  }

  else
  {
    return 0;
  }
}

- (void)p_textChanged
{
  if (![(TSDTextInputResponder *)self p_isExecutingUITextInput])
  {
    [objc_loadWeak(&self->_inputDelegate) textWillChange:self];
    Weak = objc_loadWeak(&self->_inputDelegate);

    [Weak textDidChange:self];
  }
}

- (void)p_editorWillClearSelectionNotification:(id)a3
{
  if ([objc_msgSend(a3 "userInfo")] == self->_editor)
  {

    [(TSDTextInputResponder *)self acceptAutocorrection];
  }
}

- (void)p_editorWillStyleTextNotification:(id)a3
{
  if ([objc_msgSend(a3 "userInfo")] == self->_editor)
  {

    [(TSDTextInputResponder *)self acceptAutocorrection];
  }
}

- (void)p_editorWillHandleTapNotification:(id)a3
{
  if ([objc_msgSend(a3 "userInfo")] == self->_editor)
  {

    [(TSDTextInputResponder *)self acceptAutocorrection];
  }
}

- (void)p_editorSelectionWasForciblyChangedNotification:(id)a3
{
  if ([objc_msgSend(a3 "userInfo")] == self->_editor)
  {

    [(TSDTextInputResponder *)self p_textChanged];
  }
}

- (void)editorDidChangeSelection:(id)a3 withFlags:(unint64_t)a4
{
  if (!self->_pendingEditorChange && self->_editor == a3)
  {
    v5 = a4;
    [(TSDTextInputResponder *)self cancelDelayedResponderChange];
    self->_preferredEndPosition = NAN;
    self->_preferredStartPosition = NAN;
    if (!self->_isSettingSelectedTextRange)
    {

      self->_referencePosition = 0;
      self->_cachedPosition = 0;
    }

    if (![(TSDTextInputResponder *)self p_isExecutingUITextInput])
    {
      [objc_loadWeak(&self->_inputDelegate) selectionWillChange:self];
      [objc_loadWeak(&self->_inputDelegate) selectionDidChange:self];
    }

    if ((TSUSupportsTextInteraction() & 1) == 0 && [(TSDTextInputResponder *)self p_requiresFirstResponderChangeForEditor:self->_editor])
    {
      if ([(TSDTextInputResponder *)self isFirstResponder]&& ([(TSDTextInput *)self->_editor wantsKeyboard]& 1) == 0)
      {
        self->_pendingFirstResponderObject = self->_editor;
        [(TSDTextInputResponder *)self performSelector:sel_p_setFirstResponderAfterDelay withObject:0 afterDelay:0.25];
      }

      else if ((v5 & 0x200000) == 0)
      {
        [(TSDTextInputResponder *)self p_setFirstResponder:self->_editor];
      }
    }

    [(TSDTextInputResponder *)self reloadInputViews];
  }
}

- (void)p_willShowPopoverNotification:(id)a3
{
  [(TSDTextInputResponder *)self acceptAutocorrection];

  [(TSDTextInputResponder *)self p_unmarkText];
}

- (void)p_willUndoChangeNotification:(id)a3
{
  if (![(TSDTextInputResponder *)self p_isExecutingUITextInput])
  {
    [(TSDTextInputResponder *)self acceptAutocorrection];
    Weak = objc_loadWeak(&self->_inputDelegate);

    [Weak textWillChange:self];
  }
}

- (void)p_didUndoRedoChangeNotification:(id)a3
{
  if (![(TSDTextInputResponder *)self p_isExecutingUITextInput])
  {
    Weak = objc_loadWeak(&self->_inputDelegate);

    [Weak textDidChange:self];
  }
}

- (id)closestPositionToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v10 = 0;
  if (TSUSupportsTextInteraction() && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [(TSDTextInput *)self->_editor allowAutomaticTextEditingToBeginWithDifferentEditor])
  {
    [(TSDTextInput *)self->_editor beginAutomaticTextEditingIfNeededForPoint:x, y];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v6 = [(TSDTextInput *)self->_editor textLength];
  v7 = [(TSDTextInput *)self->_editor closestCharIndexToPoint:&v10 isAtEndOfLine:x, y];
  if (v7 > v6)
  {
    return 0;
  }

  LODWORD(v8) = 2143289344;
  return [TSDTextPosition textPositionWithCharIndex:v7 eolAffinity:v10 preferredPosition:0 isPreferredStart:v8];
}

- (id)closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4
{
  y = a3.y;
  x = a3.x;
  v18 = 0;
  if (objc_opt_respondsToSelector())
  {
    v7 = [(TSDTextInput *)self->_editor textLength];
    v8 = [(TSDTextInput *)self->_editor closestCharIndexToPoint:&v18 isAtEndOfLine:x, y];
    if (v8 <= v7)
    {
      v9 = v8;
      objc_opt_class();
      v10 = TSUDynamicCast();
      if (v10)
      {
        v11 = [v10 range];
        if (v9 >= v11 && v9 <= v11 + v12)
        {
          LODWORD(v13) = 2143289344;
          return [TSDTextPosition textPositionWithCharIndex:v9 eolAffinity:v18 preferredPosition:0 isPreferredStart:v13];
        }
      }

      else
      {
        v16 = [MEMORY[0x277D6C290] currentHandler];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder closestPositionToPoint:withinRange:]"];
        [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 2017, @"Bad range in -closestPositionToPoint:withinRange:"}];
      }
    }
  }

  return 0;
}

- (id)positionWithinRange:(id)a3 farthestInDirection:(int64_t)a4
{
  if (![(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {
    return 0;
  }

  return [(TSDTextInputResponder *)self arrow_positionWithinRange:a3 farthestInDirection:a4];
}

- (id)characterRangeByExtendingPosition:(id)a3 inDirection:(int64_t)a4
{
  if (![(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {
    return 0;
  }

  return [(TSDTextInputResponder *)self arrow_characterRangeByExtendingPosition:a3 inDirection:a4];
}

- (int64_t)baseWritingDirectionForPosition:(id)a3 inDirection:(int64_t)a4
{
  if ([(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {

    return [(TSDTextInputResponder *)self arrow_baseWritingDirectionForPosition:a3 inDirection:a4];
  }

  objc_opt_class();
  v8 = TSUDynamicCast();
  if (!v8)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder baseWritingDirectionForPosition:inDirection:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"];
    v14 = @"Bad text position.";
    v15 = v11;
    v16 = v12;
    v17 = 2073;
    goto LABEL_20;
  }

  v9 = v8;
  if (a4 != 1)
  {
    if (!a4)
    {
      v10 = [v8 charIndex];
      goto LABEL_14;
    }

    v21 = [MEMORY[0x277D6C290] currentHandler];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder baseWritingDirectionForPosition:inDirection:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"];
    v14 = @"Unknown direction.";
    v15 = v21;
    v16 = v22;
    v17 = 2095;
LABEL_20:
    [v15 handleFailureInFunction:v16 file:v13 lineNumber:v17 description:v14];
    return -1;
  }

  if (![v8 charIndex])
  {
    v18 = [MEMORY[0x277D6C290] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder baseWritingDirectionForPosition:inDirection:]"];
    [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 2086, @"Bad text position for writing direction."}];
  }

  if (![v9 charIndex])
  {
    return -1;
  }

  v10 = [v9 charIndex] - 1;
LABEL_14:
  if (v10 == 0x7FFFFFFFFFFFFFFFLL || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return -1;
  }

  editor = self->_editor;

  return [(TSDTextInput *)editor writingDirectionForCharIndex:v10];
}

- (void)makeTextWritingDirectionLeftToRight:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    editor = self->_editor;

    [(TSDTextInput *)editor reverseDirection:a3];
  }
}

- (void)makeTextWritingDirectionRightToLeft:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    editor = self->_editor;

    [(TSDTextInput *)editor reverseDirection:a3];
  }
}

- (UIView)textInputView
{
  if (objc_opt_respondsToSelector())
  {
    editor = self->_editor;

    return [(TSDTextInput *)editor textInputView];
  }

  else
  {
    v5 = [(TSDTextInputResponder *)self nextResponder];
    if (v5)
    {
      v6 = v5;
      while (1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          return v6;
        }

        v6 = [(UIView *)v6 nextResponder];
        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v7 = [MEMORY[0x277D75128] sharedApplication];

      return [v7 keyWindow];
    }
  }
}

- (id)superview
{
  v2 = [(TSDTextInputResponder *)self textInputView];

  return [(UIView *)v2 superview];
}

@end