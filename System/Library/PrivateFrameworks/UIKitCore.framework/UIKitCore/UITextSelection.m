@interface UITextSelection
- (BOOL)hasEditableSelection;
- (BOOL)isRangedSelectionSpanningDocument;
- (BOOL)isValid;
- (BOOL)pointAtEndOfLine:(CGPoint)a3;
- (BOOL)pointAtStartOfLine:(CGPoint)a3;
- (BOOL)setRangedSelectionExtentPoint:(CGPoint)a3 baseIsStart:(BOOL)a4 allowFlipping:(BOOL)a5;
- (BOOL)willSelectionChange;
- (CGPoint)clipPoint:(CGPoint)a3 inRect:(CGRect)a4;
- (CGRect)caretRect;
- (CGRect)caretRectAtBeginOfDocument;
- (CGRect)caretRectAtEndOfDocument;
- (CGRect)closestCaretRectForPoint:(CGPoint)a3 inSelection:(BOOL)a4;
- (DOMRange)_domRange;
- (UITextInputPrivate)document;
- (UITextSelection)initWithDocument:(id)a3;
- (id)_boundedOrInvertedSelectionRangeForExtent:(id)a3 forPoint:(CGPoint)a4 fromPosition:(id)a5 inDirection:(int64_t)a6;
- (id)debugDescription;
- (id)selectedText;
- (id)selectionRects;
- (id)underlineRectsForRange:(id)a3;
- (id)wordContainingCaretSelection;
- (unint64_t)offsetInMarkedText;
- (void)aggressivelyExpandSelectionToSmartSelectionContainingCaretSelection;
- (void)aggressivelyExpandSelectionToWordContainingCaretSelection;
- (void)alterSelection:(CGPoint)a3 granularity:(int64_t)a4;
- (void)alterSelectionGranularity:(int64_t)a3;
- (void)collapseSelection;
- (void)commit;
- (void)dealloc;
- (void)extendSelectionToPoint:(CGPoint)a3;
- (void)increaseSelectionGranularity;
- (void)invalidate;
- (void)moveCaretToBoundaryOfWhitespaceOrLine;
- (void)selectAll;
- (void)selectionChanged;
- (void)setGranularRangedSelectionWithExtentPoint:(CGPoint)a3;
- (void)setHybridSelectionWithPoint:(CGPoint)a3;
- (void)setRangedSelectionBaseToCurrentSelection;
- (void)setRangedSelectionBaseToCurrentSelectionEnd;
- (void)setRangedSelectionBaseToCurrentSelectionStart;
- (void)setRangedSelectionInitialExtentToCurrentSelectionEnd;
- (void)setRangedSelectionInitialExtentToCurrentSelectionStart;
- (void)setRangedSelectionWithExtentPoint:(CGPoint)a3;
- (void)setSelectionWithFirstPoint:(CGPoint)a3 secondPoint:(CGPoint)a4;
- (void)setSelectionWithPoint:(CGPoint)a3;
- (void)smartExtendRangedSelection:(int)a3 downstream:(BOOL)a4;
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
  v3 = [(UITextSelection *)self selectedRange];
  if (v3)
  {
    v4 = v3;
    v5 = [(UITextSelection *)self document];
    v6 = [v5 isEditable];

    if (v6)
    {
      return 1;
    }
  }

  v8 = [(UITextSelection *)self _domRange];
  v9 = [v8 startPosition];
  v10 = [v9 isEditable];

  return v10;
}

- (void)selectionChanged
{
  v4 = [(UITextSelection *)self document];
  v3 = [v4 selectedTextRange];
  [(UITextSelection *)self setSelectedRange:v3];
}

- (DOMRange)_domRange
{
  v3 = [(UITextSelection *)self selectedRange];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(UITextSelection *)self selectedRange];
    v6 = [v5 domRange];
  }

  else
  {
    v6 = 0;
  }

  return v6;
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

- (UITextSelection)initWithDocument:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UITextSelection;
  v5 = [(UITextSelection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_document, v4);
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
  v9 = self;
  v2 = [(UITextSelection *)v9 document];
  v3 = [v2 interactionAssistant];

  v9->_isCommitting = 1;
  v4 = [(UITextSelection *)v9 document];
  v5 = [v4 selectedTextRange];
  v6 = [(UITextSelection *)v9 selectedRange];
  v7 = v6;
  if (!(v5 | v6) || v5 && v6 && [v5 isEqual:v6])
  {
    v8 = [v4 interactionAssistant];
    [v8 updateDisplayedSelection];
  }

  else
  {
    [v4 setSelectedTextRange:v7];
    v8 = [v4 interactionAssistant];
    [v8 setNeedsSelectionDisplayUpdate];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSelectionGranularity:{-[UITextSelection granularity](v9, "granularity")}];
  }

  v9->_isCommitting = 0;
}

- (BOOL)willSelectionChange
{
  self->_isCommitting = 1;
  v3 = [(UITextSelection *)self document];
  v4 = [v3 selectedTextRange];
  v5 = [(UITextSelection *)self selectedRange];
  v6 = v5;
  if (v4 | v5)
  {
    LOBYTE(v7) = 1;
    if (v4 && v5)
    {
      v7 = [v4 isEqual:v5] ^ 1;
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
  v3 = [(UITextSelection *)self document];
  v4 = [(UITextSelection *)self selectedRange];
  v5 = [v3 selectionRectsForRange:v4];

  return v5;
}

- (id)underlineRectsForRange:(id)a3
{
  v4 = a3;
  v5 = [(UITextSelection *)self document];
  v6 = [v5 selectionRectsForRange:v4];

  return v6;
}

- (CGRect)caretRect
{
  v3 = [(UITextSelection *)self selectedRange];

  if (v3)
  {
    v4 = [(UITextSelection *)self document];
    v5 = [(UITextSelection *)self selectedRange];
    v6 = [v5 start];
    [v4 caretRectForPosition:v6];
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
  v2 = [(UITextSelection *)self document];
  v3 = [v2 endOfDocument];
  [v2 caretRectForPosition:v3];
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
  v2 = [(UITextSelection *)self document];
  v3 = [v2 beginningOfDocument];
  [v2 caretRectForPosition:v3];
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
  v3 = [(UITextSelection *)self document];
  v4 = [(UITextSelection *)self selectedRange];
  v5 = [v4 start];
  v6 = [v3 _rangeOfEnclosingWord:v5];

  if (v6)
  {
    v7 = [v3 textInRange:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)selectedText
{
  v3 = [(UITextSelection *)self document];
  v4 = [(UITextSelection *)self selectedRange];
  v5 = [v3 textInRange:v4];

  return v5;
}

- (CGRect)closestCaretRectForPoint:(CGPoint)a3 inSelection:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(UITextSelection *)self document];
  v9 = v8;
  if (!v4)
  {
    v11 = [v8 closestPositionToPoint:{x, y}];
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

  v10 = [(UITextSelection *)self selectedRange];
  v11 = [v9 closestPositionToPoint:v10 withinRange:{x, y}];

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
  v3 = [(UITextSelection *)self selectedRange];
  v4 = [v3 start];

  v5 = [(UITextSelection *)self document];
  v6 = [v5 markedTextRange];
  v7 = [v6 start];

  v8 = [v5 offsetFromPosition:v7 toPosition:v4];
  return v8;
}

- (void)setSelectionWithPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v8 = [(UITextSelection *)self document];
  v6 = [v8 closestPositionToPoint:{x, y}];
  v7 = [v8 textRangeFromPosition:v6 toPosition:v6];
  [(UITextSelection *)self setSelectedRange:v7];
}

- (void)extendSelectionToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v20 = [(UITextSelection *)self document];
  v6 = [v20 closestPositionToPoint:{x, y}];
  v7 = [(UITextSelection *)self selectedRange];
  v8 = [v7 start];
  v9 = [v20 comparePosition:v6 toPosition:v8];

  v10 = [(UITextSelection *)self selectedRange];
  v11 = [v10 end];
  v12 = [v20 comparePosition:v11 toPosition:v6];

  v13 = [(UITextSelection *)self selectedRange];
  if (v9 == -1)
  {
    v14 = [(UITextSelection *)self selectedRange];
    v15 = [v14 end];
    v16 = v20;
    v17 = v6;
    v18 = v15;
  }

  else
  {
    if (v12 != -1)
    {
      goto LABEL_6;
    }

    v14 = [(UITextSelection *)self selectedRange];
    v15 = [v14 start];
    v16 = v20;
    v17 = v15;
    v18 = v6;
  }

  v19 = [v16 textRangeFromPosition:v17 toPosition:v18];

  v13 = v19;
LABEL_6:
  [(UITextSelection *)self setSelectedRange:v13];
}

- (void)setHybridSelectionWithPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v36 = [(UITextSelection *)self document];
  v6 = [v36 closestPositionToPoint:{x, y}];
  v7 = [v36 _rangeOfTextUnit:1 enclosingPosition:v6];
  v8 = v7;
  if (!v7)
  {
    v26 = [v36 textRangeFromPosition:v6 toPosition:v6];
    [(UITextSelection *)self setSelectedRange:v26];

    [(UITextSelection *)self setGranularity:0];
    goto LABEL_20;
  }

  v9 = [v7 start];
  [v36 caretRectForPosition:v9];
  MidX = CGRectGetMidX(v38);

  v11 = [v8 end];
  [v36 caretRectForPosition:v11];
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
    v28 = [v27 shouldPreferEndOfWord];
    v29 = [v28 BOOLValue];

    if (v29 && ([v8 start], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "_positionFromPosition:pastTextUnit:inDirection:", v30, 1, 1), v31 = objc_claimAutoreleasedReturnValue(), v30, v31))
    {
      v32 = v31;
      v33 = v32;
    }

    else
    {
      v32 = [v8 start];
      v33 = 0;
    }

    v24 = [v36 textRangeFromPosition:v32 toPosition:v32];

    goto LABEL_18;
  }

  if (v12 < x || v12 - x < v23)
  {
    v34 = [v8 end];
    v35 = [v8 end];
    v24 = [v36 textRangeFromPosition:v34 toPosition:v35];

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
  v6 = [(UITextSelection *)self document];
  v3 = [v6 beginningOfDocument];
  v4 = [v6 endOfDocument];
  v5 = [v6 textRangeFromPosition:v3 toPosition:v4];
  [(UITextSelection *)self setSelectedRange:v5];
}

- (void)collapseSelection
{
  v3 = [(UITextSelection *)self selectedRange];
  if (v3)
  {
    v7 = v3;
    v4 = [v3 end];
    v5 = [(UITextSelection *)self document];
    v6 = [v5 textRangeFromPosition:v4 toPosition:v4];

    [(UITextSelection *)self setSelectedRange:v6];
    v3 = v7;
  }
}

- (void)aggressivelyExpandSelectionToWordContainingCaretSelection
{
  v40 = [(UITextSelection *)self document];
  v3 = [(UITextSelection *)self selectedRange];
  v4 = [v3 start];
  v5 = [v40 _rangeOfEnclosingWord:v4];

  if (v5)
  {
    v6 = [v40 textInRange:v5];
    v7 = [v6 _containsEmoji];

    if (v7)
    {
      v8 = [(UITextSelection *)self selectedRange];
      v9 = [v8 start];
      v10 = [v40 _rangeOfTextUnit:0 enclosingPosition:v9];

      v11 = [v40 textInRange:v10];
      LODWORD(v9) = [v11 _containsEmoji];

      if (v9)
      {
        v12 = v10;

        v5 = v12;
      }
    }

    [(UITextSelection *)self setSelectedRange:v5];
  }

  else
  {
    v13 = [(UITextSelection *)self selectedRange];
    v5 = [v13 start];

    v14 = 0;
    while (1)
    {
      v15 = v14;
      v14 = v5;

      v16 = [v40 tokenizer];
      v5 = [v16 positionFromPosition:v14 toBoundary:1 inDirection:1];

      if (!v5)
      {
        break;
      }

      if ([v40 comparePosition:v5 toPosition:v14])
      {
        v17 = [v40 tokenizer];
        v18 = [v17 isPosition:v5 atBoundary:1 inDirection:1];

        if (!v18)
        {
          continue;
        }
      }

      v19 = [(UITextSelection *)self selectedRange];
      v20 = [v19 start];

      if (!v20)
      {
        goto LABEL_22;
      }

      v21 = [v40 tokenizer];
      v22 = [(UITextSelection *)self selectedRange];
      v23 = [v22 start];
      v24 = [v21 positionFromPosition:v23 toBoundary:3 inDirection:1];

      if (v24 && [v40 comparePosition:v5 toPosition:v24] == -1)
      {
        v25 = v24;

        v5 = v25;
      }

      goto LABEL_21;
    }

    v26 = [v40 endOfDocument];
    v27 = [(UITextSelection *)self selectedRange];
    v28 = [v27 start];
    v29 = [v40 comparePosition:v26 toPosition:v28];

    if (!v29)
    {
      v33 = [v40 tokenizer];
      v34 = [(UITextSelection *)self selectedRange];
      v35 = [v34 start];
      v24 = [v33 positionFromPosition:v35 toBoundary:4 inDirection:1];

      if (v24)
      {
        v36 = [v40 tokenizer];
        v5 = [v36 positionFromPosition:v24 toBoundary:1 inDirection:1];

        if (!v5)
        {
          v5 = v24;
        }

LABEL_21:

        goto LABEL_22;
      }
    }

    v30 = [v40 tokenizer];
    v31 = [(UITextSelection *)self selectedRange];
    v32 = [v31 start];
    v5 = [v30 positionFromPosition:v32 toBoundary:1 inDirection:0];

    if (!v5)
    {
      goto LABEL_23;
    }

LABEL_22:
    v37 = [(UITextSelection *)self selectedRange];
    v38 = [v37 start];
    v39 = [v40 textRangeFromPosition:v5 toPosition:v38];

    [(UITextSelection *)self setSelectedRange:v39];
LABEL_23:
  }
}

- (void)aggressivelyExpandSelectionToSmartSelectionContainingCaretSelection
{
  v6 = [(UITextSelection *)self document];
  v3 = [(UITextSelection *)self selectedRange];
  v4 = [v6 _rangeOfSmartSelectionIncludingRange:v3];
  v5 = v4;
  if (v3 == v4)
  {
    [(UITextSelection *)self aggressivelyExpandSelectionToWordContainingCaretSelection];
  }

  else if (v4)
  {
    [(UITextSelection *)self setSelectedRange:v4];
  }
}

- (void)alterSelection:(CGPoint)a3 granularity:(int64_t)a4
{
  [(UITextSelection *)self setSelectionWithPoint:a3.x, a3.y];

  [(UITextSelection *)self alterSelectionGranularity:a4];
}

- (void)alterSelectionGranularity:(int64_t)a3
{
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v10 = [(UITextSelection *)self selectedRange];

      if (!v10)
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

    else if (a3 == 2)
    {
      v5 = [(UITextSelection *)self document];
      v6 = [(UITextSelection *)self selectedRange];
      v7 = [v6 start];
      v8 = [v5 _rangeOfSentenceEnclosingPosition:v7];
      goto LABEL_7;
    }
  }

  else
  {
    if ((a3 - 3) < 2)
    {
      v5 = [(UITextSelection *)self document];
      v6 = [(UITextSelection *)self selectedRange];
      v7 = [v6 start];
      v8 = [v5 _rangeOfParagraphEnclosingPosition:v7];
LABEL_7:
      v9 = v8;

LABEL_10:
      if (v9)
      {
        [(UITextSelection *)self setSelectedRange:v9];
      }

      goto LABEL_13;
    }

    if (a3 == 5)
    {
      v5 = [(UITextSelection *)self document];
      v9 = [v5 _fullRange];
      goto LABEL_10;
    }
  }

LABEL_13:

  [(UITextSelection *)self setGranularity:a3];
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
  v3 = [(UITextSelection *)self selectedRange];
  v7 = [v3 start];

  v4 = [(UITextSelection *)self document];
  v5 = [v4 _findPleasingWordBoundaryFromPosition:v7];
  v6 = [v4 textRangeFromPosition:v5 toPosition:v5];
  [(UITextSelection *)self setSelectedRange:v6];
}

- (BOOL)pointAtStartOfLine:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(UITextSelection *)self document];
  v6 = [v5 closestPositionToPoint:{x, y}];
  v7 = [v5 tokenizer];
  v8 = [v7 isPosition:v6 atBoundary:4 inDirection:1];

  return v8;
}

- (BOOL)pointAtEndOfLine:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(UITextSelection *)self document];
  v6 = [v5 closestPositionToPoint:{x, y}];
  v7 = [v5 tokenizer];
  v8 = [v7 isPosition:v6 atBoundary:4 inDirection:0];

  return v8;
}

- (BOOL)isRangedSelectionSpanningDocument
{
  v3 = [(UITextSelection *)self selectedRange];
  v4 = v3;
  if (v3 && [v3 _isRanged])
  {
    v5 = [(UITextSelection *)self document];
    v6 = [v4 start];
    v7 = [v5 beginningOfDocument];
    if ([v5 comparePosition:v6 toPosition:v7])
    {
      v8 = 0;
    }

    else
    {
      v9 = [v4 end];
      v10 = [v5 endOfDocument];
      v8 = [v5 comparePosition:v9 toPosition:v10] == 0;
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
  v3 = [(UITextSelection *)self selectedRange];
  [(UITextSelection *)self setBase:v3];
}

- (void)setRangedSelectionBaseToCurrentSelectionStart
{
  v3 = [(UITextSelection *)self selectedRange];
  v6 = [v3 start];

  if (v6)
  {
    v4 = [(UITextSelection *)self document];
    v5 = [v4 textRangeFromPosition:v6 toPosition:v6];
    [(UITextSelection *)self setBase:v5];
  }

  else
  {
    [(UITextSelection *)self setBase:0];
  }
}

- (void)setRangedSelectionBaseToCurrentSelectionEnd
{
  v3 = [(UITextSelection *)self selectedRange];
  v6 = [v3 end];

  if (v6)
  {
    v4 = [(UITextSelection *)self document];
    v5 = [v4 textRangeFromPosition:v6 toPosition:v6];
    [(UITextSelection *)self setBase:v5];
  }

  else
  {
    [(UITextSelection *)self setBase:0];
  }
}

- (void)updateBaseAndInitialExtent
{
  v33 = [(UITextSelection *)self selectionRects];
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
  v14 = [(UITextSelection *)self document];
  v15 = [v14 closestPositionToPoint:{MinX, MidY}];

  if (v15)
  {
    v16 = [(UITextSelection *)self document];
    v17 = [v16 textRangeFromPosition:v15 toPosition:v15];
    [(UITextSelection *)self setBase:v17];
  }

  else
  {
    [(UITextSelection *)self setBase:0];
  }

  v18 = [UITextSelectionRect endRectFromRects:v33];
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
  v29 = [(UITextSelection *)self document];
  v30 = [v29 closestPositionToPoint:{MaxX, v28}];

  if (v30)
  {
    v31 = [(UITextSelection *)self document];
    v32 = [v31 textRangeFromPosition:v30 toPosition:v30];
    [(UITextSelection *)self setInitialExtent:v32];
  }

  else
  {
    [(UITextSelection *)self setInitialExtent:0];
  }
}

- (void)setRangedSelectionInitialExtentToCurrentSelectionStart
{
  v3 = [(UITextSelection *)self selectedRange];
  v6 = [v3 start];

  if (v6)
  {
    v4 = [(UITextSelection *)self document];
    v5 = [v4 textRangeFromPosition:v6 toPosition:v6];
    [(UITextSelection *)self setInitialExtent:v5];
  }

  else
  {
    [(UITextSelection *)self setInitialExtent:0];
  }
}

- (void)setRangedSelectionInitialExtentToCurrentSelectionEnd
{
  v3 = [(UITextSelection *)self selectedRange];
  v6 = [v3 end];

  if (v6)
  {
    v4 = [(UITextSelection *)self document];
    v5 = [v4 textRangeFromPosition:v6 toPosition:v6];
    [(UITextSelection *)self setInitialExtent:v5];
  }

  else
  {
    [(UITextSelection *)self setInitialExtent:0];
  }
}

- (CGPoint)clipPoint:(CGPoint)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  MinY = a3.y;
  MinX = a3.x;
  if (a3.x >= CGRectGetMinX(a4))
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

- (id)_boundedOrInvertedSelectionRangeForExtent:(id)a3 forPoint:(CGPoint)a4 fromPosition:(id)a5 inDirection:(int64_t)a6
{
  y = a4.y;
  x = a4.x;
  v11 = a3;
  v12 = a5;
  v13 = [(UITextSelection *)self document];
  if (a6)
  {
    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  if (!_os_feature_enabled_impl() || !-[UITextSelection _allowsSelectionInversion](self, "_allowsSelectionInversion") || (objc_opt_respondsToSelector() & 1) == 0 || ([v13 _visualSelectionRangeForExtent:v11 forPoint:v12 fromPosition:a6 inDirection:{x, y}], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15 = [v13 textRangeFromPosition:v12 toPosition:v11];
    if ([v13 comparePosition:v11 toPosition:v12] != v14)
    {
      if ([(UITextSelection *)self _allowsSelectionInversion])
      {
        v16 = [v13 textRangeFromPosition:v11 toPosition:v12];
      }

      else
      {
        [v13 caretRectForPosition:v12];
        if (v20 <= v19)
        {
          x = CGRectGetMidX(*&v17);
        }

        else
        {
          y = CGRectGetMidY(*&v17);
        }

        v21 = [v13 closestPositionToPoint:{x, y}];
        if (v21 && [v13 comparePosition:v21 toPosition:v12] == v14)
        {
          v22 = v21;
        }

        else
        {
          v23 = [v13 tokenizer];
          v22 = [v23 positionFromPosition:v12 toBoundary:0 inDirection:a6];
        }

        v16 = [v13 textRangeFromPosition:v12 toPosition:v22];

        v15 = v22;
      }

      v15 = v16;
    }
  }

  v24 = v15;

  return v24;
}

- (BOOL)setRangedSelectionExtentPoint:(CGPoint)a3 baseIsStart:(BOOL)a4 allowFlipping:(BOOL)a5
{
  v5 = a4;
  y = a3.y;
  x = a3.x;
  v9 = [(UITextSelection *)self base:a4];

  if (v9)
  {
    v10 = [(UITextSelection *)self document];
    v11 = [v10 textInputView];
    v12 = [v11 _scroller];
    v13 = v12;
    if (v12 && ([v12 isScrollEnabled] & 1) == 0)
    {
      [v11 visibleBounds];
      [(UITextSelection *)self clipPoint:x inRect:y, v14, v15, v16, v17];
      x = v18;
      y = v19;
    }

    v20 = [v10 closestPositionToPoint:{x, y}];
    if (v20)
    {
      goto LABEL_6;
    }

    rect_8 = x;
    v26 = [v10 beginningOfDocument];
    [v10 caretRectForPosition:v26];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v35 = [v10 endOfDocument];
    [v10 caretRectForPosition:v35];
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
      v20 = [v10 beginningOfDocument];
      x = rect_8;
      if (!v20)
      {
LABEL_20:
        v20 = [(UITextSelection *)self base];
        [(UITextSelection *)self setSelectedRange:v20];
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

      v20 = [v10 endOfDocument];
      if (!v20)
      {
        goto LABEL_20;
      }
    }

LABEL_6:
    v21 = [(UITextSelection *)self base];
    if ([v21 isEmpty])
    {
LABEL_9:

      goto LABEL_10;
    }

    v22 = [(UITextSelection *)self base];
    v23 = [v22 start];
    if ([v10 comparePosition:v23 toPosition:v20] != -1)
    {

      goto LABEL_9;
    }

    v46 = [(UITextSelection *)self base];
    [v46 end];
    v47 = rect_8a = v11;
    recta = [v10 comparePosition:v47 toPosition:v20];

    v11 = rect_8a;
    if (recta != 1)
    {
LABEL_10:
      if (_os_feature_enabled_impl())
      {
        if (v5)
        {
          v24 = [(UITextSelection *)self base];
          v25 = v24;
LABEL_18:
          v43 = [v24 start];
LABEL_23:
          v44 = v43;

          v45 = [(UITextSelection *)self _boundedOrInvertedSelectionRangeForExtent:v20 forPoint:v44 fromPosition:!v5 inDirection:x, y];
          if (v45)
          {
            [(UITextSelection *)self setSelectedRange:v45];
          }

          goto LABEL_29;
        }

        v24 = [(UITextSelection *)self initialExtent];
        v25 = v24;
      }

      else
      {
        v24 = [(UITextSelection *)self base];
        v25 = v24;
        if (v5)
        {
          goto LABEL_18;
        }
      }

      v43 = [v24 end];
      goto LABEL_23;
    }

    v48 = [(UITextSelection *)self base];
    [(UITextSelection *)self setSelectedRange:v48];

LABEL_28:
    LOBYTE(v5) = 0;
LABEL_29:
  }

  return v5;
}

- (void)setSelectionWithFirstPoint:(CGPoint)a3 secondPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v13 = [(UITextSelection *)self document];
  v9 = [v13 closestPositionToPoint:{v7, v6}];
  v10 = [v13 closestPositionToPoint:{x, y}];
  v11 = v10;
  if (v9 && v10)
  {
    v12 = [v13 textRangeFromPosition:v9 toPosition:v10];
    [(UITextSelection *)self setSelectedRange:v12];
  }

  else
  {
    [(UITextSelection *)self setSelectedRange:0];
  }
}

- (void)setRangedSelectionWithExtentPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v20 = [(UITextSelection *)self document];
  v6 = [v20 closestPositionToPoint:{x, y}];
  if (v6)
  {
    v7 = [(UITextSelection *)self base];

    if (v7)
    {
      v8 = [(UITextSelection *)self base];
      v9 = [v8 start];

      v10 = [(UITextSelection *)self base];
      v11 = [v10 end];

      v12 = [v20 offsetFromPosition:v9 toPosition:v6];
      v13 = [v20 offsetFromPosition:v6 toPosition:v11];
      if (v12 <= 0)
      {
        v17 = v6;
        v16 = v9;
        v9 = v17;
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
            v16 = v9;
          }

          if (v12 >= v14)
          {
            v11 = v15;
          }

          else
          {
            v9 = v15;
          }
        }
      }

      v19 = [v20 textRangeFromPosition:v9 toPosition:v11];
      [(UITextSelection *)self setSelectedRange:v19];
    }
  }
}

- (void)setGranularRangedSelectionWithExtentPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v20 = [(UITextSelection *)self document];
  v6 = [v20 closestPositionToPoint:{x, y}];
  if (v6)
  {
    v7 = [(UITextSelection *)self base];

    if (v7)
    {
      v8 = [v20 _rangeOfTextUnit:-[UITextSelection granularity](self enclosingPosition:{"granularity"), v6}];
      v9 = [(UITextSelection *)self base];
      v10 = [v9 start];

      v11 = [(UITextSelection *)self base];
      v12 = [v11 end];

      if ([v20 comparePosition:v6 toPosition:v10] == -1)
      {
        v17 = [v8 start];
        v14 = v17;
        if (v17)
        {
          v15 = v17;
        }

        else
        {
          v15 = v6;
        }

        v16 = v10;
        v10 = v15;
      }

      else
      {
        if ([v20 comparePosition:v6 toPosition:v12] != 1)
        {
LABEL_14:
          v19 = [v20 textRangeFromPosition:v10 toPosition:v12];
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

- (void)smartExtendRangedSelection:(int)a3 downstream:(BOOL)a4
{
  v4 = a4;
  v7 = [(UITextSelection *)self selectedRange];
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = [(UITextSelection *)self selectedRange];
  v10 = [v9 isEmpty];

  if (v10)
  {
    return;
  }

  v49 = [(UITextSelection *)self document];
  v11 = [(UITextSelection *)self selectedRange];
  v12 = [v11 start];

  v13 = [(UITextSelection *)self selectedRange];
  v14 = [v13 end];

  if (a3 == -1)
  {
    v17 = 0;
  }

  else
  {
    v15 = [(UITextSelection *)self initialExtent];
    v16 = v15;
    if (v4)
    {
      [v15 end];
    }

    else
    {
      [v15 start];
    }
    v17 = ;
  }

  if (v4)
  {
    v18 = v12;
  }

  else
  {
    v18 = v14;
  }

  if (v4)
  {
    v19 = v14;
  }

  else
  {
    v19 = v12;
  }

  v20 = v18;
  v21 = v19;
  if (!v17 || ([v17 isEqual:v21] & 1) == 0)
  {
    v48 = v12;
    v22 = !v4;
    v23 = [v49 tokenizer];
    v24 = [v23 isPosition:v21 atBoundary:1 inDirection:v22];

    if (v24)
    {
      v12 = v48;
      goto LABEL_49;
    }

    v25 = [v49 tokenizer];
    v47 = v4;
    v26 = [v25 isPosition:v21 atBoundary:1 inDirection:v4];

    if (v26)
    {
      if (v4)
      {
        v27 = -1;
      }

      else
      {
        v27 = 1;
      }

      v28 = [v49 positionFromPosition:v21 offset:v27];

      v21 = v28;
    }

    v29 = [v49 tokenizer];
    v30 = [v29 positionFromPosition:v21 toBoundary:1 inDirection:!v4];

    if (v30)
    {
      v31 = [v49 tokenizer];
      v32 = [v31 isPosition:v30 atBoundary:1 inDirection:!v4];
      v33 = v32;
      if (v17 && v32)
      {
        v34 = [v17 isEqual:v30];

        if ((v34 & 1) == 0)
        {
LABEL_29:
          v35 = v30;

          v21 = v35;
          v12 = v48;
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
      if (!v4)
      {
        v36 = -1;
      }

      v45 = v30;
      v46 = v36;
      while (1)
      {
        v37 = [v49 tokenizer];
        if ([v37 isPosition:v21 atBoundary:1 inDirection:v22] & 1) != 0 || (objc_msgSend(v21, "isEqual:", v20))
        {
          break;
        }

        v38 = [v49 tokenizer];
        if ([v38 isPosition:v21 atBoundary:4 inDirection:v22])
        {

          break;
        }

        v39 = [v49 tokenizer];
        v40 = [v39 isPosition:v21 atBoundary:4 inDirection:v47];

        if (v40)
        {
          goto LABEL_44;
        }

        v41 = [v49 positionFromPosition:v21 offset:v46];

        v21 = v41;
        if (!v41)
        {
          v12 = v48;
          v30 = v45;
          goto LABEL_45;
        }
      }

LABEL_44:
      v12 = v48;
      v30 = v45;
      if (![v21 isEqual:v20])
      {
        goto LABEL_47;
      }
    }

    else
    {
      v12 = v48;
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
    [v49 textRangeFromPosition:v20 toPosition:v21];
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