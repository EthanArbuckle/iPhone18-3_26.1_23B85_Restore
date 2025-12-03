@interface TSDTextInputResponder
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canResignFirstResponder;
- (BOOL)isSecureTextEntry;
- (BOOL)p_currentEditorIsNotOnMyCanvas;
- (BOOL)p_didEnterUITextInput;
- (BOOL)p_resignFirstResponder;
- (BOOL)p_wantRawArrowKeys;
- (BOOL)resignFirstResponder;
- (CGRect)caretRectForPosition:(id)position;
- (CGRect)firstRectForRange:(id)range;
- (TSDTextInputResponder)initWithNextResponder:(id)responder;
- (UITextInputTokenizer)tokenizer;
- (UITextPosition)beginningOfDocument;
- (UITextPosition)endOfDocument;
- (UITextRange)markedTextRange;
- (UITextRange)selectedTextRange;
- (UIView)textInputView;
- (_NSRange)_nsrangeForTextRange:(id)range;
- (_NSRange)_selectedNSRange;
- (id)_textRangeFromNSRange:(_NSRange)range;
- (id)characterRangeByExtendingPosition:(id)position inDirection:(int64_t)direction;
- (id)closestPositionToPoint:(CGPoint)point;
- (id)closestPositionToPoint:(CGPoint)point withinRange:(id)range;
- (id)editingTextRep;
- (id)editingTextReps;
- (id)inputAccessoryView;
- (id)inputView;
- (id)keyCommands;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)p_ICC;
- (id)positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset;
- (id)positionFromPosition:(id)position offset:(int64_t)offset;
- (id)positionWithinRange:(id)range farthestInDirection:(int64_t)direction;
- (id)selectionRectsForRange:(id)range;
- (id)superview;
- (id)textInRange:(id)range;
- (id)textRangeFromPosition:(id)position toPosition:(id)toPosition;
- (id)textStylingAtPosition:(id)position inDirection:(int64_t)direction;
- (int64_t)_indexForTextPosition:(id)position;
- (int64_t)autocorrectionType;
- (int64_t)baseWritingDirectionForPosition:(id)position inDirection:(int64_t)direction;
- (int64_t)comparePosition:(id)position toPosition:(id)toPosition;
- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition;
- (void)acceptAutocorrection;
- (void)cancelDelayedResponderChange;
- (void)clearEditorAndResignFirstResponder;
- (void)dealloc;
- (void)delete:(id)delete;
- (void)editorDidChangeSelection:(id)selection withFlags:(unint64_t)flags;
- (void)endIgnoringKeyboardInput;
- (void)forceDelayedResponderChange;
- (void)forwardInvocation:(id)invocation;
- (void)insertDictationResult:(id)result;
- (void)makeTextWritingDirectionLeftToRight:(id)right;
- (void)makeTextWritingDirectionRightToLeft:(id)left;
- (void)p_didUndoRedoChangeNotification:(id)notification;
- (void)p_editorSelectionWasForciblyChangedNotification:(id)notification;
- (void)p_editorWillClearSelectionNotification:(id)notification;
- (void)p_editorWillHandleTapNotification:(id)notification;
- (void)p_editorWillStyleTextNotification:(id)notification;
- (void)p_finishDynamicOperation:(id)operation;
- (void)p_setEditor:(id)editor;
- (void)p_setFirstResponder:(id)responder;
- (void)p_setFirstResponderAndEditor:(id)editor;
- (void)p_setFirstResponderAndEditorAfterDelay;
- (void)p_setSelectedTextRange:(id)range;
- (void)p_startDynamicOperation:(id)operation;
- (void)p_textChanged;
- (void)p_willExitUITextInput;
- (void)p_willShowPopoverNotification:(id)notification;
- (void)p_willUndoChangeNotification:(id)notification;
- (void)replaceRange:(id)range withText:(id)text;
- (void)selectAll:(id)all;
- (void)setEditor:(id)editor;
- (void)setMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)setSelectedTextRange:(id)range;
- (void)toggleBoldface:(id)boldface;
- (void)toggleItalics:(id)italics;
- (void)toggleUnderline:(id)underline;
- (void)unmarkText;
@end

@implementation TSDTextInputResponder

- (TSDTextInputResponder)initWithNextResponder:(id)responder
{
  v9.receiver = self;
  v9.super_class = TSDTextInputResponder;
  v4 = [(TSDTextInputResponder *)&v9 init];
  if (v4)
  {
    v4->_nextResponder = responder;
    v4->_preferredEndPosition = NAN;
    v4->_preferredStartPosition = NAN;
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_p_willUndoChangeNotification_ name:*MEMORY[0x277CCA828] object:0];
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v4 selector:sel_p_didUndoRedoChangeNotification_ name:*MEMORY[0x277CCA810] object:0];
    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v4 selector:sel_p_didUndoRedoChangeNotification_ name:*MEMORY[0x277CCA808] object:0];
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

- (void)p_setEditor:(id)editor
{
  if (editor && self->_editor == editor)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder p_setEditor:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 241, @"Editor validation should have happened through the public setEditor method."}];
  }

  inputView = [(TSDTextInputResponder *)self inputView];
  [(TSDTextInputResponder *)self willChangeValueForKey:@"inputView"];
  v7 = self->_editor;
  self->_editor = editor;
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_opt_respondsToSelector();
  }

  else
  {
    v8 = 0;
  }

  self->_editorRespondsToRawArrowKeySelectors = v8 & 1;
  if (!editor)
  {
    if (![(TSDTextInputResponder *)self p_isExecutingUITextInput])
    {
      [objc_loadWeak(&self->_inputDelegate) selectionWillChange:self];
      [objc_loadWeak(&self->_inputDelegate) selectionDidChange:self];
    }

    [(TSDTextInputResponder *)self p_textChanged];
  }

  [(TSDTextInputResponder *)self didChangeValueForKey:@"inputView"];
  inputView2 = [(TSDTextInputResponder *)self inputView];
  if (self->_editor)
  {
    v10 = inputView2 == inputView;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    if (inputView2 && ([inputView2 frame], v11 == 0.0))
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

- (void)p_setFirstResponder:(id)responder
{
  if (![(TSDTextInputResponder *)self p_requiresFirstResponderChangeForEditor:?])
  {
    return;
  }

  wantsKeyboard = [responder wantsKeyboard];
  p_ICC = [(TSDTextInputResponder *)self p_ICC];
  if (wantsKeyboard)
  {
    [p_ICC delegate];
    v7 = TSUProtocolCast();
    if ((objc_opt_respondsToSelector() & 1) == 0 || [v7 allowTextEditingToBegin])
    {
      selfCopy = self;
LABEL_14:

      [(TSDTextInputResponder *)selfCopy becomeFirstResponder];
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

    selfCopy = nextResponder;
    goto LABEL_14;
  }

LABEL_10:

  [(TSDTextInputResponder *)self p_resignFirstResponder];
}

- (void)p_setFirstResponderAndEditor:(id)editor
{
  self->_pendingEditorChange = 0;

  self->_pendingEditor = 0;
  if (editor && [editor wantsKeyboard])
  {
    [(TSDTextInputResponder *)self p_setEditor:editor];

    [(TSDTextInputResponder *)self p_setFirstResponder:editor];
  }

  else
  {
    [(TSDTextInputResponder *)self p_setFirstResponder:editor];

    [(TSDTextInputResponder *)self p_setEditor:editor];
  }
}

- (void)p_setFirstResponderAndEditorAfterDelay
{
  if (!self->_pendingEditorChange)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder p_setFirstResponderAndEditorAfterDelay]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 378, @"Unexpectedly being asked to update the first responder when there's nothing to switch to."}];
  }

  self->_pendingEditorChange = 0;
  v5 = self->_pendingEditor;
  [(TSDTextInputResponder *)self p_setFirstResponderAndEditor:v5];
}

- (void)setEditor:(id)editor
{
  [(TSDTextInputResponder *)self cancelDelayedResponderChange];

  self->_pendingEditor = 0;
  self->_pendingEditorChange = 0;
  if (self->_editor != editor)
  {
    if (self->_isResigning || ![(TSDTextInputResponder *)self p_requiresFirstResponderChangeForEditor:editor])
    {

      [(TSDTextInputResponder *)self p_setEditor:editor];
    }

    else if (-[TSDTextInputResponder isFirstResponder](self, "isFirstResponder") && ([editor wantsKeyboard] & 1) == 0)
    {
      self->_pendingEditor = editor;
      self->_pendingEditorChange = 1;

      [(TSDTextInputResponder *)self performSelector:sel_p_setFirstResponderAndEditorAfterDelay withObject:0 afterDelay:0.25];
    }

    else
    {

      [(TSDTextInputResponder *)self p_setFirstResponderAndEditor:editor];
    }
  }
}

- (void)endIgnoringKeyboardInput
{
  if (atomic_fetch_add(&self->_ignoreKeyboardInputCount, 0xFFFFFFFF) <= 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder endIgnoringKeyboardInput]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"];

    [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:430 description:@"Unbalanced calls to -beginIgnoringKeyboardInput and -endIgnoringKeyboardInput"];
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

  nextResponder = [(TSDTextInputResponder *)self nextResponder];
  if (!nextResponder)
  {
    return 0;
  }

  v4 = nextResponder;
  do
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    nextResponder2 = [v4 nextResponder];
    v4 = nextResponder2;
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = nextResponder2 == 0;
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
  controller = [objc_msgSend(objc_msgSend(v5 controller];
  v9 = [controller countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(controller);
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

    v10 = [controller countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v10);
  return v5;
}

- (id)editingTextRep
{
  editingTextReps = [(TSDTextInputResponder *)self editingTextReps];

  return [editingTextReps anyObject];
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
  becomeFirstResponder = [(TSDTextInputResponder *)&v5 becomeFirstResponder];
  if (becomeFirstResponder)
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }

  return becomeFirstResponder;
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
  resignFirstResponder = [(TSDTextInputResponder *)&v5 resignFirstResponder];
  if (resignFirstResponder)
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }

  return resignFirstResponder;
}

- (BOOL)resignFirstResponder
{
  canResignFirstResponder = [(TSDTextInputResponder *)self canResignFirstResponder];
  if (canResignFirstResponder)
  {
    self->_isResigning = 1;
    if ([(TSDTextInput *)self->_editor wantsKeyboard])
    {
      [(TSDTextInputResponder *)self acceptAutocorrection];
      [(TSDTextInput *)self->_editor endEditing];
    }

    if ([(TSDTextInputResponder *)self isFirstResponder])
    {
      LOBYTE(canResignFirstResponder) = [(TSDTextInputResponder *)self p_resignFirstResponder];
    }

    else
    {
      LOBYTE(canResignFirstResponder) = 1;
    }

    self->_isResigning = 0;
  }

  return canResignFirstResponder;
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
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder p_willExitUITextInput]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 663, @"UITextInput counter is going negative"}];
    respondingToUITextInput = self->_respondingToUITextInput;
  }

  self->_respondingToUITextInput = respondingToUITextInput - 1;
}

- (UITextRange)selectedTextRange
{
  if ([(TSDTextInputResponder *)self p_wantRawArrowKeys]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    selectionForArrowKeys = [(TSDTextInput *)self->_editor selectionForArrowKeys];
  }

  else
  {
    selectionForArrowKeys = [(TSDTextInput *)self->_editor textInputSelection];
  }

  v4 = selectionForArrowKeys;
  if (selectionForArrowKeys)
  {
    range = [(TSDTextRange *)selectionForArrowKeys range];
    if (range == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = 0;
    }

    else
    {
      v7 = range;
      v8 = v6;
      isAtEndOfLine = [(TSDTextRange *)v4 isAtEndOfLine];
      *&v10 = self->_preferredStartPosition;
      *&v11 = self->_preferredEndPosition;
      v4 = [TSDTextRange textRangeWithRange:v7 eolAffinity:v8 preferredStartPosition:isAtEndOfLine preferredEndPosition:v10, v11];
      if (v7 + v8 > [(TSDTextInput *)self->_editor textLength])
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder selectedTextRange]"];
        [currentHandler handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 694, @"Bad selected text range"}];
      }
    }
  }

  if (![(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {
    return &v4->super;
  }

  return [(TSDTextInputResponder *)self arrow_augmentTextRange:v4];
}

- (void)p_setSelectedTextRange:(id)range
{
  p_ICC = [(TSDTextInputResponder *)self p_ICC];
  [p_ICC delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(p_ICC "delegate")])
  {
    v6 = [(TSDTextInputResponder *)self _nsrangeForTextRange:range];
    v8 = +[TSDRangeClamper clampSelectedRange:inFullString:toWordLimit:](TSDRangeClamper, "clampSelectedRange:inFullString:toWordLimit:", v6, v7, -[TSDTextInput unfilteredText](self->_editor, "unfilteredText"), [objc_msgSend(p_ICC "delegate")]);
    range = [(TSDTextInputResponder *)self _textRangeFromNSRange:v8, v9];
  }

  if ([(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {

    [(TSDTextInputResponder *)self arrow_setSelectedTextRange:range];
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
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder p_setSelectedTextRange:]"];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"];

      [currentHandler handleFailureInFunction:v19 file:v20 lineNumber:728 description:@"bad textRange"];
    }
  }
}

- (void)setSelectedTextRange:(id)range
{
  if ([(TSDTextInputResponder *)self p_didEnterUITextInput])
  {
    if (range)
    {
      [(TSDTextInputResponder *)self p_setSelectedTextRange:range];
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

  markedRange = [(TSDTextInput *)self->_editor markedRange];
  if (markedRange == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v7 = markedRange;
  v8 = v4;
  v5 = [TSDTextRange textRangeWithRange:markedRange, v4];
  if (v7 + v8 > [(TSDTextInput *)self->_editor textLength])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder markedTextRange]"];
    [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 797, @"Bad marked text range"}];
  }

  return &v5->super;
}

- (void)setMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if ([(TSDTextInputResponder *)self p_didEnterUITextInput])
  {
    [(TSDTextInput *)self->_editor setMarkedText:text selectedRange:location, length];
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
  editRange = [(TSDTextInput *)self->_editor editRange];
  v5 = [TSDTextPosition textPositionWithCharIndex:editRange + v4];
  if (![(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {
    return &v5->super;
  }

  return [(TSDTextInputResponder *)self arrow_augmentEndOfDocument:v5];
}

- (id)textInRange:(id)range
{
  objc_opt_class();
  v5 = TSUDynamicCast();
  v6 = v5;
  if (!range || v5)
  {
    if (!range)
    {
      return &stru_287D36338;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder textInRange:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 874, @"bad textRange"}];
  }

  editor = self->_editor;
  range = [v6 range];

  return [(TSDTextInput *)editor textInRange:range, v10];
}

- (void)replaceRange:(id)range withText:(id)text
{
  if ([(TSDTextInputResponder *)self p_didEnterUITextInput])
  {
    if ([(TSDTextInputResponder *)self p_wantRawArrowKeys])
    {
      [(TSDTextInputResponder *)self insertText:text];
    }

    else
    {
      objc_opt_class();
      v6 = TSUDynamicCast();
      if (!v6)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder replaceRange:withText:]"];
        [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 892, @"bad textRange"}];
      }

      editRange = [(TSDTextInput *)self->_editor editRange];
      if (v6)
      {
        v11 = editRange;
        v12 = v10;
        range = [v6 range];
        if (v11 <= range && v11 + v12 >= range + v13)
        {
          [(TSDTextInput *)self->_editor replaceRange:range withText:v13, text];
        }

        else
        {
          currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder replaceRange:withText:]"];
          [currentHandler2 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 900, @"Input range is bad."}];
        }
      }
    }

    [(TSDTextInputResponder *)self p_willExitUITextInput];
  }
}

- (id)textRangeFromPosition:(id)position toPosition:(id)toPosition
{
  objc_opt_class();
  v7 = TSUDynamicCast();
  objc_opt_class();
  v8 = TSUDynamicCast();
  v9 = v8;
  if (!v7)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder textRangeFromPosition:toPosition:]"];
    [currentHandler handleFailureInFunction:v27 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 930, @"bad textPosition"}];
    if (v9)
    {
      return 0;
    }

LABEL_15:
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder textRangeFromPosition:toPosition:]"];
    [currentHandler2 handleFailureInFunction:v29 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 931, @"bad textPosition"}];
    return 0;
  }

  if (!v8)
  {
    goto LABEL_15;
  }

  charIndex = [v8 charIndex];
  charIndex2 = [v7 charIndex];
  if (charIndex <= charIndex2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v7;
  }

  if (charIndex <= charIndex2)
  {
    v13 = v7;
  }

  else
  {
    v13 = v9;
  }

  charIndex3 = [v12 charIndex];
  charIndex4 = [v13 charIndex];
  charIndex5 = [v12 charIndex];
  if (charIndex3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v17 = charIndex4 - charIndex5;
  endOfLineAffinity = [v7 endOfLineAffinity];
  [v7 preferredPosition];
  v20 = v19;
  [v9 preferredPosition];
  LODWORD(v22) = v21;
  LODWORD(v23) = v20;
  v24 = [TSDTextRange textRangeWithRange:charIndex3 eolAffinity:v17 preferredStartPosition:endOfLineAffinity preferredEndPosition:v23, v22];
  if (![(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {
    return v24;
  }

  return [(TSDTextInputResponder *)self arrow_augmentTextRange:v24 fromPosition:position toPosition:toPosition];
}

- (int64_t)comparePosition:(id)position toPosition:(id)toPosition
{
  if ([(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {

    return [(TSDTextInputResponder *)self arrow_comparePosition:position toPosition:toPosition];
  }

  objc_opt_class();
  v8 = TSUDynamicCast();
  objc_opt_class();
  v9 = TSUDynamicCast();
  v10 = v9;
  if (!v8)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder comparePosition:toPosition:]"];
    [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 962, @"bad textPosition"}];
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_11:
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder comparePosition:toPosition:]"];
    [currentHandler2 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 963, @"bad textPosition"}];
    goto LABEL_7;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_7:

  return [v8 compare:v10];
}

- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition
{
  if ([(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {

    return [(TSDTextInputResponder *)self arrow_offsetFromPosition:position toPosition:toPosition];
  }

  objc_opt_class();
  v8 = TSUDynamicCast();
  objc_opt_class();
  v9 = TSUDynamicCast();
  v10 = v9;
  if (!v8)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder offsetFromPosition:toPosition:]"];
    [currentHandler handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 983, @"bad textPosition"}];
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_13:
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder offsetFromPosition:toPosition:]"];
    [currentHandler2 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 984, @"bad textPosition"}];
    goto LABEL_7;
  }

  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_7:
  textLength = [(TSDTextInput *)self->_editor textLength];
  result = 0;
  if (v8 && v10)
  {
    if ([v10 charIndex] <= textLength && objc_msgSend(v8, "charIndex") <= textLength)
    {
      charIndex = [v10 charIndex];
      return charIndex - [v8 charIndex];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset
{
  if (![(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {
    objc_opt_class();
    cachedPosition = TSUDynamicCast();
    if (cachedPosition)
    {
      if ([[(TSDTextInputResponder *)self editor] textIsVerticalAtCharIndex:[(TSDTextPosition *)cachedPosition charIndex]]&& (direction - 2) <= 3)
      {
        direction = qword_26CA66048[direction - 2];
      }

      if (offset != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([(TSDTextPosition *)cachedPosition charIndex]== 0x7FFFFFFFFFFFFFFFLL)
        {
          currentHandler = [MEMORY[0x277D6C290] currentHandler];
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder positionFromPosition:inDirection:offset:]"];
          [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 1054, @"bad charIndex"}];
        }

        v13 = (direction & 0xFFFFFFFFFFFFFFFELL) == 4;
        if ([(TSDTextPosition *)cachedPosition charIndex]<= 0x7FFFFFFFFFFFFFFELL)
        {
          v14 = [position isEqual:self->_referencePosition];
          if ((direction & 0xFFFFFFFFFFFFFFFELL) == 4 && v14)
          {
            if (direction == 4)
            {
              offsetCopy3 = -offset;
            }

            else
            {
              offsetCopy3 = offset;
            }

            v16 = offsetCopy3 - self->_referenceOffset;
            v17 = v16;
            if (v16 < 0)
            {
              v16 = self->_referenceOffset - offsetCopy3;
            }

            if (offset >= 0)
            {
              offsetCopy2 = offset;
            }

            else
            {
              offsetCopy2 = -offset;
            }

            if (v16 >= offsetCopy2)
            {

              self->_referencePosition = 0;
              self->_cachedPosition = 0;
              direction = 5;
              if (offsetCopy3 < 0)
              {
                goto LABEL_31;
              }
            }

            else
            {
              cachedPosition = self->_cachedPosition;
              direction = 5;
              offsetCopy3 = v17;
              if (v17 < 0)
              {
                goto LABEL_31;
              }
            }
          }

          else
          {
            offsetCopy3 = offset;
            if (offset < 0)
            {
LABEL_31:
              offsetCopy3 = -offsetCopy3;
              if (direction > 3)
              {
                if (direction == 5)
                {
                  direction = 4;
                }

                else if (direction == 4)
                {
                  direction = 5;
                }
              }

              else if (direction == 2)
              {
                direction = 3;
              }

              else if (direction == 3)
              {
                direction = 2;
              }
            }
          }

          positionCopy = position;
          endOfLineAffinity = [(TSDTextPosition *)cachedPosition endOfLineAffinity];
          [(TSDTextPosition *)cachedPosition preferredPosition];
          v35 = v19;
          v32 = offsetCopy3;
          if (offsetCopy3)
          {
            v20 = 0;
            v21 = 4 * v13;
            v22 = offsetCopy3 + 1;
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

              v24 = [(TSDTextInput *)self->_editor charIndexByMovingPosition:cachedPosition toBoundary:v21 inDirection:direction preferPosition:v23, v32];
              cachedPosition = 0;
              if (v24 != 0x7FFFFFFFFFFFFFFFLL)
              {
                HIDWORD(v25) = HIDWORD(v35);
                *&v25 = v35;
                cachedPosition = [TSDTextPosition textPositionWithCharIndex:v24 eolAffinity:((direction & 0xFFFFFFFFFFFFFFFELL) == 4) & endOfLineAffinity preferredPosition:1 isPreferredStart:v25];
              }

              --v22;
              ++v20;
            }

            while (v22 > 1);
          }

          v26 = self->_cachedPosition;
          if (cachedPosition)
          {
            if (![(TSDTextPosition *)cachedPosition isEqual:v26]|| ![(TSDTextPosition *)self->_referencePosition isEqual:positionCopy])
            {
              v27 = positionCopy;

              self->_referencePosition = positionCopy;
              v28 = direction == 2 || direction == 5;
              offsetCopy4 = offset;
              if (!v28)
              {
                offsetCopy4 = -offset;
              }

              self->_referenceOffset = offsetCopy4;
              v30 = cachedPosition;

              self->_cachedPosition = cachedPosition;
            }
          }

          else if (v32 != 1 || v26 == 0)
          {
            return positionCopy;
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

  return [(TSDTextInputResponder *)self arrow_positionFromPosition:position inDirection:direction offset:offset];
}

- (id)positionFromPosition:(id)position offset:(int64_t)offset
{
  if ([(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {

    return [(TSDTextInputResponder *)self arrow_positionFromPosition:position offset:offset];
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

  editRange = [(TSDTextInput *)editor editRange];
  v13 = v12;
  charIndex = [v8 charIndex];
  v16 = charIndex;
  if (offset < 0 && charIndex < -offset)
  {
    return 0;
  }

  if (!offset)
  {
    goto LABEL_24;
  }

  v16 = charIndex + offset;
  if (charIndex + offset > editRange + v13)
  {
    return 0;
  }

  v17 = objc_opt_respondsToSelector();
  v18 = self->_editor;
  if (v17)
  {
    unfilteredText = [(TSDTextInput *)v18 unfilteredText];
  }

  else
  {
    unfilteredText = [(TSDTextInput *)v18 textInRange:0, [(TSDTextInput *)v18 textLength]];
  }

  if (v16 < editRange + v13)
  {
    v20 = [unfilteredText rangeOfComposedCharacterSequenceAtIndex:v16];
    if (v16 != v20 && v16 >= v20)
    {
      v22 = offset <= 0 ? 0 : v21;
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

  if (v16 < editRange || (editRange += v13, v16 > editRange))
  {
    v16 = editRange;
    if (editRange == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }
  }

  LODWORD(v15) = 2143289344;

  return [TSDTextPosition textPositionWithCharIndex:v16 eolAffinity:0 preferredPosition:1 isPreferredStart:v15];
}

- (CGRect)firstRectForRange:(id)range
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    editor = self->_editor;
    range = [v4 range];
    [(TSDTextInput *)editor firstRectForRange:range, v7];
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
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder firstRectForRange:]"];
    [currentHandler handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 1213, @"bad textRange"}];
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

- (id)selectionRectsForRange:(id)range
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (!v4)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder selectionRectsForRange:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 1226, @"bad textRange"}];
  }

  editor = self->_editor;
  range = [v4 range];

  return [(TSDTextInput *)editor selectionRectsForRange:range, v8];
}

- (CGRect)caretRectForPosition:(id)position
{
  if (self->_editor)
  {
    objc_opt_class();
    v4 = TSUDynamicCast();
    if (!v4)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder caretRectForPosition:]"];
      [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 1244, @"bad text position"}];
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

- (id)textStylingAtPosition:(id)position inDirection:(int64_t)direction
{
  if (!position)
  {
    return 0;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (!v6)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder textStylingAtPosition:inDirection:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 1272, @"bad text position"}];
  }

  charIndex = [v6 charIndex];
  v10 = [(TSDTextInput *)self->_editor textFontAtCharIndex:charIndex];
  if (v10)
  {
    [dictionary setObject:v10 forKey:*MEMORY[0x277D740A8]];
  }

  v11 = [(TSDTextInput *)self->_editor textColorAtCharIndex:charIndex];
  if (v11)
  {
    [dictionary setObject:v11 forKey:*MEMORY[0x277D740C0]];
  }

  return dictionary;
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

- (void)insertDictationResult:(id)result
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(TSDTextInputResponder *)self p_didEnterUITextInput])
  {
    if (objc_opt_respondsToSelector())
    {
      [(TSDTextInput *)self->_editor insertDictationResult:result];
    }

    else
    {
      string = [MEMORY[0x277CCAB68] string];
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v6 = [result countByEnumeratingWithState:&v10 objects:v14 count:16];
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
              objc_enumerationMutation(result);
            }

            text = [*(*(&v10 + 1) + 8 * v8) text];
            if (text)
            {
              [string appendString:text];
            }

            ++v8;
          }

          while (v6 != v8);
          v6 = [result countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v6);
      }

      if ([string length])
      {
        [(TSDTextInputResponder *)self insertText:string];
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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if ([(TSDTextInputResponder *)self p_currentEditorIsNotOnMyCanvas]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [(TSDTextInput *)self->_editor canPerformEditorAction:action withSender:sender];
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

  v7 = [(TSDTextInputResponder *)self p_accessibilityShouldCheckAncestorCanPerformAction:action withSender:sender];
  if (v7)
  {
    v9.receiver = self;
    v9.super_class = TSDTextInputResponder;
    LOBYTE(v7) = [(TSDTextInputResponder *)&v9 canPerformAction:action withSender:sender];
  }

  return v7;
}

- (void)selectAll:(id)all
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(TSDTextInput *)self->_editor canPerformEditorAction:a2 withSender:all]== 1)
  {
    [(TSDTextInputResponder *)self acceptAutocorrection];
    [objc_msgSend(MEMORY[0x277D75718] "sharedMenuController")];
    editor = self->_editor;

    [(TSDTextInput *)editor selectAll:all];
  }
}

- (void)delete:(id)delete
{
  [(TSDTextInputResponder *)self acceptAutocorrection];
  if (objc_opt_respondsToSelector())
  {
    [(TSDTextInput *)self->_editor delete:delete];
  }

  mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];

  [mEMORY[0x277D75718] hideMenu];
}

- (void)toggleBoldface:(id)boldface
{
  if ([(TSDTextInput *)self->_editor canPerformEditorAction:a2 withSender:boldface]== 1)
  {
    editor = self->_editor;

    [(TSDTextInput *)editor toggleBoldface:boldface];
  }
}

- (void)toggleItalics:(id)italics
{
  if ([(TSDTextInput *)self->_editor canPerformEditorAction:a2 withSender:italics]== 1)
  {
    editor = self->_editor;

    [(TSDTextInput *)editor toggleItalics:italics];
  }
}

- (void)toggleUnderline:(id)underline
{
  if ([(TSDTextInput *)self->_editor canPerformEditorAction:a2 withSender:underline]== 1)
  {
    editor = self->_editor;

    [(TSDTextInput *)editor toggleUnderline:underline];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = TSDTextInputResponder;
  if ([(TSDTextInputResponder *)&v8 respondsToSelector:?])
  {
    v7.receiver = self;
    v7.super_class = TSDTextInputResponder;
    return [(TSDTextInputResponder *)&v7 methodSignatureForSelector:selector];
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

    return [(TSDTextInput *)editor methodSignatureForSelector:selector];
  }
}

- (void)forwardInvocation:(id)invocation
{
  selector = [invocation selector];
  v6 = [objc_msgSend(-[TSDTextInputResponder p_ICC](self "p_ICC")];
  if ([(TSDTextInputResponder *)self p_currentEditorIsNotOnMyCanvas]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(TSDTextInputResponder *)self acceptAutocorrection];
    [objc_msgSend(MEMORY[0x277D75718] "sharedMenuController")];
    editor = self->_editor;
    invocationCopy2 = invocation;
LABEL_6:

    [invocationCopy2 invokeWithTarget:editor];
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [(TSDTextInputResponder *)self acceptAutocorrection];
    [objc_msgSend(MEMORY[0x277D75718] "sharedMenuController")];
    invocationCopy2 = invocation;
    editor = v6;
    goto LABEL_6;
  }

  [(TSDTextInputResponder *)self doesNotRecognizeSelector:selector];
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

- (id)_textRangeFromNSRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  _selectableText = [(TSDTextInputResponder *)self _selectableText];
  endOfDocument = [_selectableText positionFromPosition:objc_msgSend(_selectableText offset:{"beginningOfDocument"), location}];
  if (!endOfDocument)
  {
    endOfDocument = [_selectableText endOfDocument];
  }

  endOfDocument2 = [_selectableText positionFromPosition:endOfDocument offset:length];
  if (!endOfDocument2)
  {
    endOfDocument2 = [_selectableText endOfDocument];
  }

  return [_selectableText textRangeFromPosition:endOfDocument toPosition:endOfDocument2];
}

- (int64_t)_indexForTextPosition:(id)position
{
  _selectableText = [(TSDTextInputResponder *)self _selectableText];
  beginningOfDocument = [_selectableText beginningOfDocument];

  return [_selectableText offsetFromPosition:beginningOfDocument toPosition:position];
}

- (_NSRange)_nsrangeForTextRange:(id)range
{
  _selectableText = [(TSDTextInputResponder *)self _selectableText];
  v6 = -[TSDTextInputResponder _indexForTextPosition:](self, "_indexForTextPosition:", [range start]);
  v7 = [_selectableText offsetFromPosition:objc_msgSend(range toPosition:{"start"), objc_msgSend(range, "end")}];
  v8 = v6;
  result.length = v7;
  result.location = v8;
  return result;
}

- (_NSRange)_selectedNSRange
{
  _selectableText = [(TSDTextInputResponder *)self _selectableText];
  if (_selectableText && (v4 = [_selectableText selectedTextRange]) != 0)
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

  editor = [(TSDTextInputResponder *)self editor];

  return [(TSDTextInput *)editor inputView];
}

- (id)inputAccessoryView
{
  [(TSDTextInputResponder *)self editor];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  editor = [(TSDTextInputResponder *)self editor];

  return [(TSDTextInput *)editor inputAccessoryView];
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
      controller = [v3 controller];
    }

    else
    {
      controller = 0;
    }

    nextResponder = [(UIResponder *)nextResponder nextResponder];
    if (!nextResponder)
    {
      break;
    }

    nextResponder = nextResponder;
  }

  while (!controller);
  return controller;
}

- (void)p_startDynamicOperation:(id)operation
{
  if ([(TSDTextInputResponder *)self isFirstResponder])
  {
    [(TSDTextInputResponder *)self acceptAutocorrection];
    self->_inDynamicOperation = 1;
  }
}

- (void)p_finishDynamicOperation:(id)operation
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

- (void)p_editorWillClearSelectionNotification:(id)notification
{
  if ([objc_msgSend(notification "userInfo")] == self->_editor)
  {

    [(TSDTextInputResponder *)self acceptAutocorrection];
  }
}

- (void)p_editorWillStyleTextNotification:(id)notification
{
  if ([objc_msgSend(notification "userInfo")] == self->_editor)
  {

    [(TSDTextInputResponder *)self acceptAutocorrection];
  }
}

- (void)p_editorWillHandleTapNotification:(id)notification
{
  if ([objc_msgSend(notification "userInfo")] == self->_editor)
  {

    [(TSDTextInputResponder *)self acceptAutocorrection];
  }
}

- (void)p_editorSelectionWasForciblyChangedNotification:(id)notification
{
  if ([objc_msgSend(notification "userInfo")] == self->_editor)
  {

    [(TSDTextInputResponder *)self p_textChanged];
  }
}

- (void)editorDidChangeSelection:(id)selection withFlags:(unint64_t)flags
{
  if (!self->_pendingEditorChange && self->_editor == selection)
  {
    flagsCopy = flags;
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

      else if ((flagsCopy & 0x200000) == 0)
      {
        [(TSDTextInputResponder *)self p_setFirstResponder:self->_editor];
      }
    }

    [(TSDTextInputResponder *)self reloadInputViews];
  }
}

- (void)p_willShowPopoverNotification:(id)notification
{
  [(TSDTextInputResponder *)self acceptAutocorrection];

  [(TSDTextInputResponder *)self p_unmarkText];
}

- (void)p_willUndoChangeNotification:(id)notification
{
  if (![(TSDTextInputResponder *)self p_isExecutingUITextInput])
  {
    [(TSDTextInputResponder *)self acceptAutocorrection];
    Weak = objc_loadWeak(&self->_inputDelegate);

    [Weak textWillChange:self];
  }
}

- (void)p_didUndoRedoChangeNotification:(id)notification
{
  if (![(TSDTextInputResponder *)self p_isExecutingUITextInput])
  {
    Weak = objc_loadWeak(&self->_inputDelegate);

    [Weak textDidChange:self];
  }
}

- (id)closestPositionToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v10 = 0;
  if (TSUSupportsTextInteraction() && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [(TSDTextInput *)self->_editor allowAutomaticTextEditingToBeginWithDifferentEditor])
  {
    [(TSDTextInput *)self->_editor beginAutomaticTextEditingIfNeededForPoint:x, y];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  textLength = [(TSDTextInput *)self->_editor textLength];
  v7 = [(TSDTextInput *)self->_editor closestCharIndexToPoint:&v10 isAtEndOfLine:x, y];
  if (v7 > textLength)
  {
    return 0;
  }

  LODWORD(v8) = 2143289344;
  return [TSDTextPosition textPositionWithCharIndex:v7 eolAffinity:v10 preferredPosition:0 isPreferredStart:v8];
}

- (id)closestPositionToPoint:(CGPoint)point withinRange:(id)range
{
  y = point.y;
  x = point.x;
  v18 = 0;
  if (objc_opt_respondsToSelector())
  {
    textLength = [(TSDTextInput *)self->_editor textLength];
    v8 = [(TSDTextInput *)self->_editor closestCharIndexToPoint:&v18 isAtEndOfLine:x, y];
    if (v8 <= textLength)
    {
      v9 = v8;
      objc_opt_class();
      v10 = TSUDynamicCast();
      if (v10)
      {
        range = [v10 range];
        if (v9 >= range && v9 <= range + v12)
        {
          LODWORD(v13) = 2143289344;
          return [TSDTextPosition textPositionWithCharIndex:v9 eolAffinity:v18 preferredPosition:0 isPreferredStart:v13];
        }
      }

      else
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder closestPositionToPoint:withinRange:]"];
        [currentHandler handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 2017, @"Bad range in -closestPositionToPoint:withinRange:"}];
      }
    }
  }

  return 0;
}

- (id)positionWithinRange:(id)range farthestInDirection:(int64_t)direction
{
  if (![(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {
    return 0;
  }

  return [(TSDTextInputResponder *)self arrow_positionWithinRange:range farthestInDirection:direction];
}

- (id)characterRangeByExtendingPosition:(id)position inDirection:(int64_t)direction
{
  if (![(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {
    return 0;
  }

  return [(TSDTextInputResponder *)self arrow_characterRangeByExtendingPosition:position inDirection:direction];
}

- (int64_t)baseWritingDirectionForPosition:(id)position inDirection:(int64_t)direction
{
  if ([(TSDTextInputResponder *)self p_wantRawArrowKeys])
  {

    return [(TSDTextInputResponder *)self arrow_baseWritingDirectionForPosition:position inDirection:direction];
  }

  objc_opt_class();
  v8 = TSUDynamicCast();
  if (!v8)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder baseWritingDirectionForPosition:inDirection:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"];
    v14 = @"Bad text position.";
    v15 = currentHandler;
    v16 = v12;
    v17 = 2073;
    goto LABEL_20;
  }

  v9 = v8;
  if (direction != 1)
  {
    if (!direction)
    {
      charIndex = [v8 charIndex];
      goto LABEL_14;
    }

    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder baseWritingDirectionForPosition:inDirection:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"];
    v14 = @"Unknown direction.";
    v15 = currentHandler2;
    v16 = v22;
    v17 = 2095;
LABEL_20:
    [v15 handleFailureInFunction:v16 file:v13 lineNumber:v17 description:v14];
    return -1;
  }

  if (![v8 charIndex])
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextInputResponder baseWritingDirectionForPosition:inDirection:]"];
    [currentHandler3 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextInputResponder.m"), 2086, @"Bad text position for writing direction."}];
  }

  if (![v9 charIndex])
  {
    return -1;
  }

  charIndex = [v9 charIndex] - 1;
LABEL_14:
  if (charIndex == 0x7FFFFFFFFFFFFFFFLL || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return -1;
  }

  editor = self->_editor;

  return [(TSDTextInput *)editor writingDirectionForCharIndex:charIndex];
}

- (void)makeTextWritingDirectionLeftToRight:(id)right
{
  if (objc_opt_respondsToSelector())
  {
    editor = self->_editor;

    [(TSDTextInput *)editor reverseDirection:right];
  }
}

- (void)makeTextWritingDirectionRightToLeft:(id)left
{
  if (objc_opt_respondsToSelector())
  {
    editor = self->_editor;

    [(TSDTextInput *)editor reverseDirection:left];
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
    nextResponder = [(TSDTextInputResponder *)self nextResponder];
    if (nextResponder)
    {
      nextResponder2 = nextResponder;
      while (1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          return nextResponder2;
        }

        nextResponder2 = [(UIView *)nextResponder2 nextResponder];
        if (!nextResponder2)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];

      return [mEMORY[0x277D75128] keyWindow];
    }
  }
}

- (id)superview
{
  textInputView = [(TSDTextInputResponder *)self textInputView];

  return [(UIView *)textInputView superview];
}

@end