@interface UITextSelection
- (BOOL)hasEditableSelection;
- (BOOL)isRangedSelectionSpanningDocument;
- (BOOL)isValid;
- (BOOL)pointAtEndOfLine:(CGPoint)line;
- (BOOL)pointAtStartOfLine:(CGPoint)line;
- (BOOL)setRangedSelectionExtentPoint:(CGPoint)point baseIsStart:(BOOL)start allowFlipping:(BOOL)flipping;
- (BOOL)willSelectionChange;
- (CGPoint)clipPoint:(CGPoint)point inRect:(CGRect)rect;
- (CGRect)caretRect;
- (CGRect)caretRectAtBeginOfDocument;
- (CGRect)caretRectAtEndOfDocument;
- (CGRect)closestCaretRectForPoint:(CGPoint)point inSelection:(BOOL)selection;
- (DOMRange)_domRange;
- (UITextInputPrivate)document;
- (UITextSelection)initWithDocument:(id)document;
- (id)_boundedOrInvertedSelectionRangeForExtent:(id)extent forPoint:(CGPoint)point fromPosition:(id)position inDirection:(int64_t)direction;
- (id)debugDescription;
- (id)selectedText;
- (id)selectionRects;
- (id)underlineRectsForRange:(id)range;
- (id)wordContainingCaretSelection;
- (unint64_t)offsetInMarkedText;
- (void)aggressivelyExpandSelectionToSmartSelectionContainingCaretSelection;
- (void)aggressivelyExpandSelectionToWordContainingCaretSelection;
- (void)alterSelection:(CGPoint)selection granularity:(int64_t)granularity;
- (void)alterSelectionGranularity:(int64_t)granularity;
- (void)collapseSelection;
- (void)commit;
- (void)dealloc;
- (void)extendSelectionToPoint:(CGPoint)point;
- (void)increaseSelectionGranularity;
- (void)invalidate;
- (void)moveCaretToBoundaryOfWhitespaceOrLine;
- (void)selectAll;
- (void)selectionChanged;
- (void)setGranularRangedSelectionWithExtentPoint:(CGPoint)point;
- (void)setHybridSelectionWithPoint:(CGPoint)point;
- (void)setRangedSelectionBaseToCurrentSelection;
- (void)setRangedSelectionBaseToCurrentSelectionEnd;
- (void)setRangedSelectionBaseToCurrentSelectionStart;
- (void)setRangedSelectionInitialExtentToCurrentSelectionEnd;
- (void)setRangedSelectionInitialExtentToCurrentSelectionStart;
- (void)setRangedSelectionWithExtentPoint:(CGPoint)point;
- (void)setSelectionWithFirstPoint:(CGPoint)point secondPoint:(CGPoint)secondPoint;
- (void)setSelectionWithPoint:(CGPoint)point;
- (void)smartExtendRangedSelection:(int)selection downstream:(BOOL)downstream;
- (void)updateBaseAndInitialExtent;
@end

@implementation UITextSelection

- (UITextInputPrivate)document
{
  WeakRetained = objc_loadWeakRetained(&self->_document);

  return WeakRetained;
}

- (BOOL)hasEditableSelection
{
  selectedRange = [(UITextSelection *)self selectedRange];
  if (selectedRange)
  {
    v4 = selectedRange;
    document = [(UITextSelection *)self document];
    isEditable = [document isEditable];

    if (isEditable)
    {
      return 1;
    }
  }

  _domRange = [(UITextSelection *)self _domRange];
  startPosition = [_domRange startPosition];
  isEditable2 = [startPosition isEditable];

  return isEditable2;
}

- (void)selectionChanged
{
  document = [(UITextSelection *)self document];
  selectedTextRange = [document selectedTextRange];
  [(UITextSelection *)self setSelectedRange:selectedTextRange];
}

- (DOMRange)_domRange
{
  selectedRange = [(UITextSelection *)self selectedRange];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    selectedRange2 = [(UITextSelection *)self selectedRange];
    domRange = [selectedRange2 domRange];
  }

  else
  {
    domRange = 0;
  }

  return domRange;
}

- (void)dealloc
{
  [(UITextSelection *)self invalidate];
  v3.receiver = self;
  v3.super_class = UITextSelection;
  [(UITextSelection *)&v3 dealloc];
}

- (void)invalidate
{
  [(UITextSelection *)self setBase:0];
  [(UITextSelection *)self setInitialExtent:0];
  [(UITextSelection *)self setSelectedRange:0];

  objc_storeWeak(&self->_document, 0);
}

- (UITextSelection)initWithDocument:(id)document
{
  documentCopy = document;
  v8.receiver = self;
  v8.super_class = UITextSelection;
  v5 = [(UITextSelection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_document, documentCopy);
    v6->_isCommitting = 0;
    [(UITextSelection *)v6 selectionChanged];
  }

  return v6;
}

- (BOOL)isValid
{
  WeakRetained = objc_loadWeakRetained(&self->_document);
  v3 = WeakRetained != 0;

  return v3;
}

- (void)commit
{
  selfCopy = self;
  document = [(UITextSelection *)selfCopy document];
  interactionAssistant = [document interactionAssistant];

  selfCopy->_isCommitting = 1;
  document2 = [(UITextSelection *)selfCopy document];
  selectedTextRange = [document2 selectedTextRange];
  selectedRange = [(UITextSelection *)selfCopy selectedRange];
  v7 = selectedRange;
  if (!(selectedTextRange | selectedRange) || selectedTextRange && selectedRange && [selectedTextRange isEqual:selectedRange])
  {
    interactionAssistant2 = [document2 interactionAssistant];
    [interactionAssistant2 updateDisplayedSelection];
  }

  else
  {
    [document2 setSelectedTextRange:v7];
    interactionAssistant2 = [document2 interactionAssistant];
    [interactionAssistant2 setNeedsSelectionDisplayUpdate];
  }

  if (objc_opt_respondsToSelector())
  {
    [document2 setSelectionGranularity:{-[UITextSelection granularity](selfCopy, "granularity")}];
  }

  selfCopy->_isCommitting = 0;
}

- (BOOL)willSelectionChange
{
  self->_isCommitting = 1;
  document = [(UITextSelection *)self document];
  selectedTextRange = [document selectedTextRange];
  selectedRange = [(UITextSelection *)self selectedRange];
  v6 = selectedRange;
  if (selectedTextRange | selectedRange)
  {
    LOBYTE(v7) = 1;
    if (selectedTextRange && selectedRange)
    {
      v7 = [selectedTextRange isEqual:selectedRange] ^ 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  self->_isCommitting = 0;

  return v7;
}

- (id)selectionRects
{
  document = [(UITextSelection *)self document];
  selectedRange = [(UITextSelection *)self selectedRange];
  v5 = [document selectionRectsForRange:selectedRange];

  return v5;
}

- (id)underlineRectsForRange:(id)range
{
  rangeCopy = range;
  document = [(UITextSelection *)self document];
  v6 = [document selectionRectsForRange:rangeCopy];

  return v6;
}

- (CGRect)caretRect
{
  selectedRange = [(UITextSelection *)self selectedRange];

  if (selectedRange)
  {
    document = [(UITextSelection *)self document];
    selectedRange2 = [(UITextSelection *)self selectedRange];
    start = [selectedRange2 start];
    [document caretRectForPosition:start];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = *MEMORY[0x1E695F050];
    v10 = *(MEMORY[0x1E695F050] + 8);
    v12 = *(MEMORY[0x1E695F050] + 16);
    v14 = *(MEMORY[0x1E695F050] + 24);
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)caretRectAtEndOfDocument
{
  document = [(UITextSelection *)self document];
  endOfDocument = [document endOfDocument];
  [document caretRectForPosition:endOfDocument];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)caretRectAtBeginOfDocument
{
  document = [(UITextSelection *)self document];
  beginningOfDocument = [document beginningOfDocument];
  [document caretRectForPosition:beginningOfDocument];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)wordContainingCaretSelection
{
  document = [(UITextSelection *)self document];
  selectedRange = [(UITextSelection *)self selectedRange];
  start = [selectedRange start];
  v6 = [document _rangeOfEnclosingWord:start];

  if (v6)
  {
    v7 = [document textInRange:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)selectedText
{
  document = [(UITextSelection *)self document];
  selectedRange = [(UITextSelection *)self selectedRange];
  v5 = [document textInRange:selectedRange];

  return v5;
}

- (CGRect)closestCaretRectForPoint:(CGPoint)point inSelection:(BOOL)selection
{
  selectionCopy = selection;
  y = point.y;
  x = point.x;
  document = [(UITextSelection *)self document];
  v9 = document;
  if (!selectionCopy)
  {
    v11 = [document closestPositionToPoint:{x, y}];
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = *MEMORY[0x1E695F050];
    v15 = *(MEMORY[0x1E695F050] + 8);
    v17 = *(MEMORY[0x1E695F050] + 16);
    v19 = *(MEMORY[0x1E695F050] + 24);
    goto LABEL_6;
  }

  selectedRange = [(UITextSelection *)self selectedRange];
  v11 = [v9 closestPositionToPoint:selectedRange withinRange:{x, y}];

  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  [v9 caretRectForPosition:v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
LABEL_6:

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (unint64_t)offsetInMarkedText
{
  selectedRange = [(UITextSelection *)self selectedRange];
  start = [selectedRange start];

  document = [(UITextSelection *)self document];
  markedTextRange = [document markedTextRange];
  start2 = [markedTextRange start];

  v8 = [document offsetFromPosition:start2 toPosition:start];
  return v8;
}

- (void)setSelectionWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  document = [(UITextSelection *)self document];
  v6 = [document closestPositionToPoint:{x, y}];
  v7 = [document textRangeFromPosition:v6 toPosition:v6];
  [(UITextSelection *)self setSelectedRange:v7];
}

- (void)extendSelectionToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  document = [(UITextSelection *)self document];
  v6 = [document closestPositionToPoint:{x, y}];
  selectedRange = [(UITextSelection *)self selectedRange];
  start = [selectedRange start];
  v9 = [document comparePosition:v6 toPosition:start];

  selectedRange2 = [(UITextSelection *)self selectedRange];
  v11 = [selectedRange2 end];
  v12 = [document comparePosition:v11 toPosition:v6];

  selectedRange3 = [(UITextSelection *)self selectedRange];
  if (v9 == -1)
  {
    selectedRange4 = [(UITextSelection *)self selectedRange];
    start2 = [selectedRange4 end];
    v16 = document;
    v17 = v6;
    v18 = start2;
  }

  else
  {
    if (v12 != -1)
    {
      goto LABEL_6;
    }

    selectedRange4 = [(UITextSelection *)self selectedRange];
    start2 = [selectedRange4 start];
    v16 = document;
    v17 = start2;
    v18 = v6;
  }

  v19 = [v16 textRangeFromPosition:v17 toPosition:v18];

  selectedRange3 = v19;
LABEL_6:
  [(UITextSelection *)self setSelectedRange:selectedRange3];
}

- (void)setHybridSelectionWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  document = [(UITextSelection *)self document];
  v6 = [document closestPositionToPoint:{x, y}];
  v7 = [document _rangeOfTextUnit:1 enclosingPosition:v6];
  v8 = v7;
  if (!v7)
  {
    v26 = [document textRangeFromPosition:v6 toPosition:v6];
    [(UITextSelection *)self setSelectedRange:v26];

    [(UITextSelection *)self setGranularity:0];
    goto LABEL_20;
  }

  start = [v7 start];
  [document caretRectForPosition:start];
  MidX = CGRectGetMidX(v38);

  v11 = [v8 end];
  [document caretRectForPosition:v11];
  v12 = CGRectGetMidX(v39);

  v13 = +[_UITextSelectionSettings sharedInstance];
  [v13 pinkWidthFactor];
  v15 = v14;

  v16 = +[_UITextSelectionSettings sharedInstance];
  [v16 minPinkWidth];
  v18 = v17;

  v19 = +[_UITextSelectionSettings sharedInstance];
  [v19 maxPinkWidth];
  v21 = v20;

  v23 = vabdd_f64(v12, MidX) * v15;
  if (v23 < v18)
  {
    v23 = v18;
  }

  if (v23 >= v21)
  {
    v23 = v21;
  }

  if (x < MidX || (v22 = x - MidX, x - MidX < v23))
  {
    v27 = [_UITextSelectionSettings sharedInstance:v23];
    shouldPreferEndOfWord = [v27 shouldPreferEndOfWord];
    bOOLValue = [shouldPreferEndOfWord BOOLValue];

    if (bOOLValue && ([v8 start], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(document, "_positionFromPosition:pastTextUnit:inDirection:", v30, 1, 1), v31 = objc_claimAutoreleasedReturnValue(), v30, v31))
    {
      start2 = v31;
      v33 = start2;
    }

    else
    {
      start2 = [v8 start];
      v33 = 0;
    }

    v24 = [document textRangeFromPosition:start2 toPosition:start2];

    goto LABEL_18;
  }

  if (v12 < x || v12 - x < v23)
  {
    v34 = [v8 end];
    v35 = [v8 end];
    v24 = [document textRangeFromPosition:v34 toPosition:v35];

LABEL_18:
    v25 = 0;
    goto LABEL_19;
  }

  v24 = v8;
  v25 = 1;
LABEL_19:
  [(UITextSelection *)self setSelectedRange:v24];
  [(UITextSelection *)self setGranularity:v25];

LABEL_20:
}

- (void)selectAll
{
  document = [(UITextSelection *)self document];
  beginningOfDocument = [document beginningOfDocument];
  endOfDocument = [document endOfDocument];
  v5 = [document textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];
  [(UITextSelection *)self setSelectedRange:v5];
}

- (void)collapseSelection
{
  selectedRange = [(UITextSelection *)self selectedRange];
  if (selectedRange)
  {
    v7 = selectedRange;
    v4 = [selectedRange end];
    document = [(UITextSelection *)self document];
    v6 = [document textRangeFromPosition:v4 toPosition:v4];

    [(UITextSelection *)self setSelectedRange:v6];
    selectedRange = v7;
  }
}

- (void)aggressivelyExpandSelectionToWordContainingCaretSelection
{
  document = [(UITextSelection *)self document];
  selectedRange = [(UITextSelection *)self selectedRange];
  start = [selectedRange start];
  start3 = [document _rangeOfEnclosingWord:start];

  if (start3)
  {
    v6 = [document textInRange:start3];
    _containsEmoji = [v6 _containsEmoji];

    if (_containsEmoji)
    {
      selectedRange2 = [(UITextSelection *)self selectedRange];
      start2 = [selectedRange2 start];
      v10 = [document _rangeOfTextUnit:0 enclosingPosition:start2];

      v11 = [document textInRange:v10];
      LODWORD(start2) = [v11 _containsEmoji];

      if (start2)
      {
        v12 = v10;

        start3 = v12;
      }
    }

    [(UITextSelection *)self setSelectedRange:start3];
  }

  else
  {
    selectedRange3 = [(UITextSelection *)self selectedRange];
    start3 = [selectedRange3 start];

    v14 = 0;
    while (1)
    {
      v15 = v14;
      v14 = start3;

      tokenizer = [document tokenizer];
      start3 = [tokenizer positionFromPosition:v14 toBoundary:1 inDirection:1];

      if (!start3)
      {
        break;
      }

      if ([document comparePosition:start3 toPosition:v14])
      {
        tokenizer2 = [document tokenizer];
        v18 = [tokenizer2 isPosition:start3 atBoundary:1 inDirection:1];

        if (!v18)
        {
          continue;
        }
      }

      selectedRange4 = [(UITextSelection *)self selectedRange];
      start4 = [selectedRange4 start];

      if (!start4)
      {
        goto LABEL_22;
      }

      tokenizer3 = [document tokenizer];
      selectedRange5 = [(UITextSelection *)self selectedRange];
      start5 = [selectedRange5 start];
      v24 = [tokenizer3 positionFromPosition:start5 toBoundary:3 inDirection:1];

      if (v24 && [document comparePosition:start3 toPosition:v24] == -1)
      {
        v25 = v24;

        start3 = v25;
      }

      goto LABEL_21;
    }

    endOfDocument = [document endOfDocument];
    selectedRange6 = [(UITextSelection *)self selectedRange];
    start6 = [selectedRange6 start];
    v29 = [document comparePosition:endOfDocument toPosition:start6];

    if (!v29)
    {
      tokenizer4 = [document tokenizer];
      selectedRange7 = [(UITextSelection *)self selectedRange];
      start7 = [selectedRange7 start];
      v24 = [tokenizer4 positionFromPosition:start7 toBoundary:4 inDirection:1];

      if (v24)
      {
        tokenizer5 = [document tokenizer];
        start3 = [tokenizer5 positionFromPosition:v24 toBoundary:1 inDirection:1];

        if (!start3)
        {
          start3 = v24;
        }

LABEL_21:

        goto LABEL_22;
      }
    }

    tokenizer6 = [document tokenizer];
    selectedRange8 = [(UITextSelection *)self selectedRange];
    start8 = [selectedRange8 start];
    start3 = [tokenizer6 positionFromPosition:start8 toBoundary:1 inDirection:0];

    if (!start3)
    {
      goto LABEL_23;
    }

LABEL_22:
    selectedRange9 = [(UITextSelection *)self selectedRange];
    start9 = [selectedRange9 start];
    v39 = [document textRangeFromPosition:start3 toPosition:start9];

    [(UITextSelection *)self setSelectedRange:v39];
LABEL_23:
  }
}

- (void)aggressivelyExpandSelectionToSmartSelectionContainingCaretSelection
{
  document = [(UITextSelection *)self document];
  selectedRange = [(UITextSelection *)self selectedRange];
  v4 = [document _rangeOfSmartSelectionIncludingRange:selectedRange];
  v5 = v4;
  if (selectedRange == v4)
  {
    [(UITextSelection *)self aggressivelyExpandSelectionToWordContainingCaretSelection];
  }

  else if (v4)
  {
    [(UITextSelection *)self setSelectedRange:v4];
  }
}

- (void)alterSelection:(CGPoint)selection granularity:(int64_t)granularity
{
  [(UITextSelection *)self setSelectionWithPoint:selection.x, selection.y];

  [(UITextSelection *)self alterSelectionGranularity:granularity];
}

- (void)alterSelectionGranularity:(int64_t)granularity
{
  if (granularity <= 2)
  {
    if (granularity == 1)
    {
      selectedRange = [(UITextSelection *)self selectedRange];

      if (!selectedRange)
      {
        return;
      }

      if ([(UITextSelection *)self hasEditableSelection])
      {
        [(UITextSelection *)self aggressivelyExpandSelectionToSmartSelectionContainingCaretSelection];
      }

      else
      {
        [(UITextSelection *)self aggressivelyExpandSelectionToWordContainingCaretSelection];
      }
    }

    else if (granularity == 2)
    {
      document = [(UITextSelection *)self document];
      selectedRange2 = [(UITextSelection *)self selectedRange];
      start = [selectedRange2 start];
      v8 = [document _rangeOfSentenceEnclosingPosition:start];
      goto LABEL_7;
    }
  }

  else
  {
    if ((granularity - 3) < 2)
    {
      document = [(UITextSelection *)self document];
      selectedRange2 = [(UITextSelection *)self selectedRange];
      start = [selectedRange2 start];
      v8 = [document _rangeOfParagraphEnclosingPosition:start];
LABEL_7:
      _fullRange = v8;

LABEL_10:
      if (_fullRange)
      {
        [(UITextSelection *)self setSelectedRange:_fullRange];
      }

      goto LABEL_13;
    }

    if (granularity == 5)
    {
      document = [(UITextSelection *)self document];
      _fullRange = [document _fullRange];
      goto LABEL_10;
    }
  }

LABEL_13:

  [(UITextSelection *)self setGranularity:granularity];
}

- (void)increaseSelectionGranularity
{
  if ([(UITextSelection *)self granularity]<= 2)
  {
    v3 = [(UITextSelection *)self granularity]+ 1;
  }

  else
  {
    v3 = 5;
  }

  [(UITextSelection *)self alterSelectionGranularity:v3];
}

- (void)moveCaretToBoundaryOfWhitespaceOrLine
{
  selectedRange = [(UITextSelection *)self selectedRange];
  start = [selectedRange start];

  document = [(UITextSelection *)self document];
  v5 = [document _findPleasingWordBoundaryFromPosition:start];
  v6 = [document textRangeFromPosition:v5 toPosition:v5];
  [(UITextSelection *)self setSelectedRange:v6];
}

- (BOOL)pointAtStartOfLine:(CGPoint)line
{
  y = line.y;
  x = line.x;
  document = [(UITextSelection *)self document];
  v6 = [document closestPositionToPoint:{x, y}];
  tokenizer = [document tokenizer];
  v8 = [tokenizer isPosition:v6 atBoundary:4 inDirection:1];

  return v8;
}

- (BOOL)pointAtEndOfLine:(CGPoint)line
{
  y = line.y;
  x = line.x;
  document = [(UITextSelection *)self document];
  v6 = [document closestPositionToPoint:{x, y}];
  tokenizer = [document tokenizer];
  v8 = [tokenizer isPosition:v6 atBoundary:4 inDirection:0];

  return v8;
}

- (BOOL)isRangedSelectionSpanningDocument
{
  selectedRange = [(UITextSelection *)self selectedRange];
  v4 = selectedRange;
  if (selectedRange && [selectedRange _isRanged])
  {
    document = [(UITextSelection *)self document];
    start = [v4 start];
    beginningOfDocument = [document beginningOfDocument];
    if ([document comparePosition:start toPosition:beginningOfDocument])
    {
      v8 = 0;
    }

    else
    {
      v9 = [v4 end];
      endOfDocument = [document endOfDocument];
      v8 = [document comparePosition:v9 toPosition:endOfDocument] == 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setRangedSelectionBaseToCurrentSelection
{
  selectedRange = [(UITextSelection *)self selectedRange];
  [(UITextSelection *)self setBase:selectedRange];
}

- (void)setRangedSelectionBaseToCurrentSelectionStart
{
  selectedRange = [(UITextSelection *)self selectedRange];
  start = [selectedRange start];

  if (start)
  {
    document = [(UITextSelection *)self document];
    v5 = [document textRangeFromPosition:start toPosition:start];
    [(UITextSelection *)self setBase:v5];
  }

  else
  {
    [(UITextSelection *)self setBase:0];
  }
}

- (void)setRangedSelectionBaseToCurrentSelectionEnd
{
  selectedRange = [(UITextSelection *)self selectedRange];
  v6 = [selectedRange end];

  if (v6)
  {
    document = [(UITextSelection *)self document];
    v5 = [document textRangeFromPosition:v6 toPosition:v6];
    [(UITextSelection *)self setBase:v5];
  }

  else
  {
    [(UITextSelection *)self setBase:0];
  }
}

- (void)updateBaseAndInitialExtent
{
  selectionRects = [(UITextSelection *)self selectionRects];
  v3 = [UITextSelectionRect startRectFromRects:?];
  [v3 _startEdgeRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v35.origin.x = v5;
  v35.origin.y = v7;
  v35.size.width = v9;
  v35.size.height = v11;
  MinX = CGRectGetMinX(v35);
  v36.origin.x = v5;
  v36.origin.y = v7;
  v36.size.width = v9;
  v36.size.height = v11;
  MidY = CGRectGetMidY(v36);
  document = [(UITextSelection *)self document];
  v15 = [document closestPositionToPoint:{MinX, MidY}];

  if (v15)
  {
    document2 = [(UITextSelection *)self document];
    v17 = [document2 textRangeFromPosition:v15 toPosition:v15];
    [(UITextSelection *)self setBase:v17];
  }

  else
  {
    [(UITextSelection *)self setBase:0];
  }

  v18 = [UITextSelectionRect endRectFromRects:selectionRects];
  [v18 _endEdgeRect];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v37.origin.x = v20;
  v37.origin.y = v22;
  v37.size.width = v24;
  v37.size.height = v26;
  MaxX = CGRectGetMaxX(v37);
  v38.origin.x = v20;
  v38.origin.y = v22;
  v38.size.width = v24;
  v38.size.height = v26;
  v28 = CGRectGetMidY(v38);
  document3 = [(UITextSelection *)self document];
  v30 = [document3 closestPositionToPoint:{MaxX, v28}];

  if (v30)
  {
    document4 = [(UITextSelection *)self document];
    v32 = [document4 textRangeFromPosition:v30 toPosition:v30];
    [(UITextSelection *)self setInitialExtent:v32];
  }

  else
  {
    [(UITextSelection *)self setInitialExtent:0];
  }
}

- (void)setRangedSelectionInitialExtentToCurrentSelectionStart
{
  selectedRange = [(UITextSelection *)self selectedRange];
  start = [selectedRange start];

  if (start)
  {
    document = [(UITextSelection *)self document];
    v5 = [document textRangeFromPosition:start toPosition:start];
    [(UITextSelection *)self setInitialExtent:v5];
  }

  else
  {
    [(UITextSelection *)self setInitialExtent:0];
  }
}

- (void)setRangedSelectionInitialExtentToCurrentSelectionEnd
{
  selectedRange = [(UITextSelection *)self selectedRange];
  v6 = [selectedRange end];

  if (v6)
  {
    document = [(UITextSelection *)self document];
    v5 = [document textRangeFromPosition:v6 toPosition:v6];
    [(UITextSelection *)self setInitialExtent:v5];
  }

  else
  {
    [(UITextSelection *)self setInitialExtent:0];
  }
}

- (CGPoint)clipPoint:(CGPoint)point inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  MinY = point.y;
  MinX = point.x;
  if (point.x >= CGRectGetMinX(rect))
  {
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    if (MinX >= CGRectGetMaxX(v14))
    {
      v15.origin.x = x;
      v15.origin.y = y;
      v15.size.width = width;
      v15.size.height = height;
      MinX = CGRectGetMaxX(v15) + -1.0;
    }
  }

  else
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    MinX = CGRectGetMinX(v13);
  }

  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  if (MinY >= CGRectGetMinY(v16))
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    if (MinY >= CGRectGetMaxY(v18))
    {
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      MinY = CGRectGetMaxY(v19) + -1.0;
    }
  }

  else
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    MinY = CGRectGetMinY(v17);
  }

  v10 = MinX;
  v11 = MinY;
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)_boundedOrInvertedSelectionRangeForExtent:(id)extent forPoint:(CGPoint)point fromPosition:(id)position inDirection:(int64_t)direction
{
  y = point.y;
  x = point.x;
  extentCopy = extent;
  positionCopy = position;
  document = [(UITextSelection *)self document];
  if (direction)
  {
    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  if (!_os_feature_enabled_impl() || !-[UITextSelection _allowsSelectionInversion](self, "_allowsSelectionInversion") || (objc_opt_respondsToSelector() & 1) == 0 || ([document _visualSelectionRangeForExtent:extentCopy forPoint:positionCopy fromPosition:direction inDirection:{x, y}], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15 = [document textRangeFromPosition:positionCopy toPosition:extentCopy];
    if ([document comparePosition:extentCopy toPosition:positionCopy] != v14)
    {
      if ([(UITextSelection *)self _allowsSelectionInversion])
      {
        v16 = [document textRangeFromPosition:extentCopy toPosition:positionCopy];
      }

      else
      {
        [document caretRectForPosition:positionCopy];
        if (v20 <= v19)
        {
          x = CGRectGetMidX(*&v17);
        }

        else
        {
          y = CGRectGetMidY(*&v17);
        }

        v21 = [document closestPositionToPoint:{x, y}];
        if (v21 && [document comparePosition:v21 toPosition:positionCopy] == v14)
        {
          v22 = v21;
        }

        else
        {
          tokenizer = [document tokenizer];
          v22 = [tokenizer positionFromPosition:positionCopy toBoundary:0 inDirection:direction];
        }

        v16 = [document textRangeFromPosition:positionCopy toPosition:v22];

        v15 = v22;
      }

      v15 = v16;
    }
  }

  v24 = v15;

  return v24;
}

- (BOOL)setRangedSelectionExtentPoint:(CGPoint)point baseIsStart:(BOOL)start allowFlipping:(BOOL)flipping
{
  startCopy = start;
  y = point.y;
  x = point.x;
  v9 = [(UITextSelection *)self base:start];

  if (v9)
  {
    document = [(UITextSelection *)self document];
    textInputView = [document textInputView];
    _scroller = [textInputView _scroller];
    v13 = _scroller;
    if (_scroller && ([_scroller isScrollEnabled] & 1) == 0)
    {
      [textInputView visibleBounds];
      [(UITextSelection *)self clipPoint:x inRect:y, v14, v15, v16, v17];
      x = v18;
      y = v19;
    }

    beginningOfDocument2 = [document closestPositionToPoint:{x, y}];
    if (beginningOfDocument2)
    {
      goto LABEL_6;
    }

    rect_8 = x;
    beginningOfDocument = [document beginningOfDocument];
    [document caretRectForPosition:beginningOfDocument];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    endOfDocument = [document endOfDocument];
    [document caretRectForPosition:endOfDocument];
    rect = v36;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v54.origin.x = v28;
    v54.origin.y = v30;
    v54.size.width = v32;
    v54.size.height = v34;
    if (y <= CGRectGetMinY(v54))
    {
      beginningOfDocument2 = [document beginningOfDocument];
      x = rect_8;
      if (!beginningOfDocument2)
      {
LABEL_20:
        beginningOfDocument2 = [(UITextSelection *)self base];
        [(UITextSelection *)self setSelectedRange:beginningOfDocument2];
        goto LABEL_28;
      }
    }

    else
    {
      v55.origin.x = rect;
      v55.origin.y = v38;
      v55.size.width = v40;
      v55.size.height = v42;
      x = rect_8;
      if (y < CGRectGetMaxY(v55))
      {
        goto LABEL_20;
      }

      beginningOfDocument2 = [document endOfDocument];
      if (!beginningOfDocument2)
      {
        goto LABEL_20;
      }
    }

LABEL_6:
    base = [(UITextSelection *)self base];
    if ([base isEmpty])
    {
LABEL_9:

      goto LABEL_10;
    }

    base2 = [(UITextSelection *)self base];
    start = [base2 start];
    if ([document comparePosition:start toPosition:beginningOfDocument2] != -1)
    {

      goto LABEL_9;
    }

    base3 = [(UITextSelection *)self base];
    [base3 end];
    v47 = rect_8a = textInputView;
    recta = [document comparePosition:v47 toPosition:beginningOfDocument2];

    textInputView = rect_8a;
    if (recta != 1)
    {
LABEL_10:
      if (_os_feature_enabled_impl())
      {
        if (startCopy)
        {
          base4 = [(UITextSelection *)self base];
          v25 = base4;
LABEL_18:
          start2 = [base4 start];
LABEL_23:
          v44 = start2;

          v45 = [(UITextSelection *)self _boundedOrInvertedSelectionRangeForExtent:beginningOfDocument2 forPoint:v44 fromPosition:!startCopy inDirection:x, y];
          if (v45)
          {
            [(UITextSelection *)self setSelectedRange:v45];
          }

          goto LABEL_29;
        }

        base4 = [(UITextSelection *)self initialExtent];
        v25 = base4;
      }

      else
      {
        base4 = [(UITextSelection *)self base];
        v25 = base4;
        if (startCopy)
        {
          goto LABEL_18;
        }
      }

      start2 = [base4 end];
      goto LABEL_23;
    }

    base5 = [(UITextSelection *)self base];
    [(UITextSelection *)self setSelectedRange:base5];

LABEL_28:
    LOBYTE(startCopy) = 0;
LABEL_29:
  }

  return startCopy;
}

- (void)setSelectionWithFirstPoint:(CGPoint)point secondPoint:(CGPoint)secondPoint
{
  y = secondPoint.y;
  x = secondPoint.x;
  v6 = point.y;
  v7 = point.x;
  document = [(UITextSelection *)self document];
  v9 = [document closestPositionToPoint:{v7, v6}];
  v10 = [document closestPositionToPoint:{x, y}];
  v11 = v10;
  if (v9 && v10)
  {
    v12 = [document textRangeFromPosition:v9 toPosition:v10];
    [(UITextSelection *)self setSelectedRange:v12];
  }

  else
  {
    [(UITextSelection *)self setSelectedRange:0];
  }
}

- (void)setRangedSelectionWithExtentPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  document = [(UITextSelection *)self document];
  v6 = [document closestPositionToPoint:{x, y}];
  if (v6)
  {
    base = [(UITextSelection *)self base];

    if (base)
    {
      base2 = [(UITextSelection *)self base];
      start = [base2 start];

      base3 = [(UITextSelection *)self base];
      v11 = [base3 end];

      v12 = [document offsetFromPosition:start toPosition:v6];
      v13 = [document offsetFromPosition:v6 toPosition:v11];
      if (v12 <= 0)
      {
        v17 = v6;
        v16 = start;
        start = v17;
      }

      else
      {
        v14 = v13;
        if (v13 <= 0)
        {
          v18 = v6;
          v16 = v11;
          v11 = v18;
        }

        else
        {
          v15 = v6;
          if (v12 >= v14)
          {
            v16 = v11;
          }

          else
          {
            v16 = start;
          }

          if (v12 >= v14)
          {
            v11 = v15;
          }

          else
          {
            start = v15;
          }
        }
      }

      v19 = [document textRangeFromPosition:start toPosition:v11];
      [(UITextSelection *)self setSelectedRange:v19];
    }
  }
}

- (void)setGranularRangedSelectionWithExtentPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  document = [(UITextSelection *)self document];
  v6 = [document closestPositionToPoint:{x, y}];
  if (v6)
  {
    base = [(UITextSelection *)self base];

    if (base)
    {
      v8 = [document _rangeOfTextUnit:-[UITextSelection granularity](self enclosingPosition:{"granularity"), v6}];
      base2 = [(UITextSelection *)self base];
      start = [base2 start];

      base3 = [(UITextSelection *)self base];
      v12 = [base3 end];

      if ([document comparePosition:v6 toPosition:start] == -1)
      {
        start2 = [v8 start];
        v14 = start2;
        if (start2)
        {
          v15 = start2;
        }

        else
        {
          v15 = v6;
        }

        v16 = start;
        start = v15;
      }

      else
      {
        if ([document comparePosition:v6 toPosition:v12] != 1)
        {
LABEL_14:
          v19 = [document textRangeFromPosition:start toPosition:v12];
          [(UITextSelection *)self setSelectedRange:v19];

          goto LABEL_15;
        }

        v13 = [v8 end];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = v6;
        }

        v16 = v12;
        v12 = v15;
      }

      v18 = v15;

      goto LABEL_14;
    }
  }

LABEL_15:
}

- (void)smartExtendRangedSelection:(int)selection downstream:(BOOL)downstream
{
  downstreamCopy = downstream;
  selectedRange = [(UITextSelection *)self selectedRange];
  if (!selectedRange)
  {
    return;
  }

  v8 = selectedRange;
  selectedRange2 = [(UITextSelection *)self selectedRange];
  isEmpty = [selectedRange2 isEmpty];

  if (isEmpty)
  {
    return;
  }

  document = [(UITextSelection *)self document];
  selectedRange3 = [(UITextSelection *)self selectedRange];
  start = [selectedRange3 start];

  selectedRange4 = [(UITextSelection *)self selectedRange];
  v14 = [selectedRange4 end];

  if (selection == -1)
  {
    v17 = 0;
  }

  else
  {
    initialExtent = [(UITextSelection *)self initialExtent];
    v16 = initialExtent;
    if (downstreamCopy)
    {
      [initialExtent end];
    }

    else
    {
      [initialExtent start];
    }
    v17 = ;
  }

  if (downstreamCopy)
  {
    v18 = start;
  }

  else
  {
    v18 = v14;
  }

  if (downstreamCopy)
  {
    v19 = v14;
  }

  else
  {
    v19 = start;
  }

  v20 = v18;
  v21 = v19;
  if (!v17 || ([v17 isEqual:v21] & 1) == 0)
  {
    v48 = start;
    v22 = !downstreamCopy;
    tokenizer = [document tokenizer];
    v24 = [tokenizer isPosition:v21 atBoundary:1 inDirection:v22];

    if (v24)
    {
      start = v48;
      goto LABEL_49;
    }

    tokenizer2 = [document tokenizer];
    v47 = downstreamCopy;
    v26 = [tokenizer2 isPosition:v21 atBoundary:1 inDirection:downstreamCopy];

    if (v26)
    {
      if (downstreamCopy)
      {
        v27 = -1;
      }

      else
      {
        v27 = 1;
      }

      v28 = [document positionFromPosition:v21 offset:v27];

      v21 = v28;
    }

    tokenizer3 = [document tokenizer];
    v30 = [tokenizer3 positionFromPosition:v21 toBoundary:1 inDirection:!downstreamCopy];

    if (v30)
    {
      tokenizer4 = [document tokenizer];
      v32 = [tokenizer4 isPosition:v30 atBoundary:1 inDirection:!downstreamCopy];
      v33 = v32;
      if (v17 && v32)
      {
        v34 = [v17 isEqual:v30];

        if ((v34 & 1) == 0)
        {
LABEL_29:
          v35 = v30;

          v21 = v35;
          start = v48;
          goto LABEL_47;
        }
      }

      else
      {

        if (v33)
        {
          goto LABEL_29;
        }
      }
    }

    if (v21)
    {
      v36 = 1;
      if (!downstreamCopy)
      {
        v36 = -1;
      }

      v45 = v30;
      v46 = v36;
      while (1)
      {
        tokenizer5 = [document tokenizer];
        if ([tokenizer5 isPosition:v21 atBoundary:1 inDirection:v22] & 1) != 0 || (objc_msgSend(v21, "isEqual:", v20))
        {
          break;
        }

        tokenizer6 = [document tokenizer];
        if ([tokenizer6 isPosition:v21 atBoundary:4 inDirection:v22])
        {

          break;
        }

        tokenizer7 = [document tokenizer];
        v40 = [tokenizer7 isPosition:v21 atBoundary:4 inDirection:v47];

        if (v40)
        {
          goto LABEL_44;
        }

        v41 = [document positionFromPosition:v21 offset:v46];

        v21 = v41;
        if (!v41)
        {
          start = v48;
          v30 = v45;
          goto LABEL_45;
        }
      }

LABEL_44:
      start = v48;
      v30 = v45;
      if (![v21 isEqual:v20])
      {
        goto LABEL_47;
      }
    }

    else
    {
      start = v48;
    }

LABEL_45:
    v42 = v30;

    if (!v30)
    {
      v21 = 0;
      goto LABEL_48;
    }

    v21 = v42;
LABEL_47:
    [document textRangeFromPosition:v20 toPosition:v21];
    v44 = v43 = v30;
    [(UITextSelection *)self setSelectedRange:v44];

    v30 = v43;
LABEL_48:
  }

LABEL_49:
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (self->_isCommitting)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p base: %@ granularity: %ld; initialExtent: %@; selectedRange: %@; isCommitting: %@>", v5, self, self->_base, self->_granularity, self->_initialExtent, self->_selectedRange, v7];;

  return v8;
}

@end