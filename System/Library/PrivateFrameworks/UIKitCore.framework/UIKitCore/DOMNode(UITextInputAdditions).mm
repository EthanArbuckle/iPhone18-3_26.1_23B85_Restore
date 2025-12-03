@interface DOMNode(UITextInputAdditions)
- (UITextInputTraits)textInputTraits;
- (double)_lastRectForRange:()UITextInputAdditions;
- (double)caretRect;
- (double)caretRectForPosition:()UITextInputAdditions;
- (double)firstRectForRange:()UITextInputAdditions;
- (id)beginningOfDocument;
- (id)endOfDocument;
- (id)markedTextRange;
- (id)positionFromPosition:()UITextInputAdditions inDirection:offset:;
- (id)positionFromPosition:()UITextInputAdditions offset:;
- (id)positionFromPosition:()UITextInputAdditions toBoundary:inDirection:;
- (id)rangeEnclosingPosition:()UITextInputAdditions withGranularity:inDirection:;
- (id)rangeOfEnclosingWord:()UITextInputAdditions;
- (id)selectedTextRange;
- (id)selectionRectsForRange:()UITextInputAdditions;
- (id)textRangeFromPosition:()UITextInputAdditions toPosition:;
- (uint64_t)_textSelectingContainer;
- (uint64_t)acceptedAutoFillWord:()UITextInputAdditions;
- (uint64_t)automaticallySelectedOverlay;
- (uint64_t)beginFloatingCursorAtPoint:()UITextInputAdditions;
- (uint64_t)beginSelectionChange;
- (uint64_t)characterAfterCaretSelection;
- (uint64_t)characterInRelationToCaretSelection:()UITextInputAdditions;
- (uint64_t)characterRangeAtPoint:()UITextInputAdditions;
- (uint64_t)characterRangeByExtendingPosition:()UITextInputAdditions inDirection:;
- (uint64_t)closestPositionToPoint:()UITextInputAdditions;
- (uint64_t)closestPositionToPoint:()UITextInputAdditions withinRange:;
- (uint64_t)comparePosition:()UITextInputAdditions toPosition:;
- (uint64_t)confirmMarkedText:()UITextInputAdditions;
- (uint64_t)convertCaretRect:()UITextInputAdditions;
- (uint64_t)deleteBackward;
- (uint64_t)endFloatingCursor;
- (uint64_t)endSelectionChange;
- (uint64_t)extendCurrentSelection:()UITextInputAdditions;
- (uint64_t)fontForCaretSelection;
- (uint64_t)handleKeyWebEvent:()UITextInputAdditions;
- (uint64_t)hasContent;
- (uint64_t)hasSelection;
- (uint64_t)inputDelegate;
- (uint64_t)insertDictationResult:()UITextInputAdditions withCorrectionIdentifier:;
- (uint64_t)insertDictationResultPlaceholder;
- (uint64_t)insertText:()UITextInputAdditions;
- (uint64_t)insertTextPlaceholderWithSize:()UITextInputAdditions;
- (uint64_t)interactionAssistant;
- (uint64_t)isAutoFillMode;
- (uint64_t)isPosition:()UITextInputAdditions atBoundary:inDirection:;
- (uint64_t)isPosition:()UITextInputAdditions withinTextUnit:inDirection:;
- (uint64_t)metadataDictionariesForDictationResults;
- (uint64_t)moveDown;
- (uint64_t)moveLeft;
- (uint64_t)moveRight;
- (uint64_t)moveUp;
- (uint64_t)positionWithinRange:()UITextInputAdditions farthestInDirection:;
- (uint64_t)rangeByExtendingCurrentSelection:()UITextInputAdditions;
- (uint64_t)rangeByMovingCurrentSelection:()UITextInputAdditions;
- (uint64_t)rectsForNSRange:()UITextInputAdditions;
- (uint64_t)removeDictationResultPlaceholder:()UITextInputAdditions willInsertResult:;
- (uint64_t)removeTextPlaceholder:()UITextInputAdditions;
- (uint64_t)replaceCurrentWordWithText:()UITextInputAdditions;
- (uint64_t)replaceRange:()UITextInputAdditions withText:closeTyping:;
- (uint64_t)selectAll;
- (uint64_t)selectionAffinity;
- (uint64_t)selectionAtDocumentStart;
- (uint64_t)selectionAtWordStart;
- (uint64_t)selectionRange;
- (uint64_t)selectionState;
- (uint64_t)setInputDelegate:()UITextInputAdditions;
- (uint64_t)setMarkedText:()UITextInputAdditions selectedRange:;
- (uint64_t)setSelectedTextRange:()UITextInputAdditions;
- (uint64_t)setSelectedTextRange:()UITextInputAdditions withAffinityDownstream:;
- (uint64_t)setSelectionWithPoint:()UITextInputAdditions inset:;
- (uint64_t)setText:()UITextInputAdditions;
- (uint64_t)takeTraitsFrom:()UITextInputAdditions;
- (uint64_t)text;
- (uint64_t)textInRange:()UITextInputAdditions;
- (uint64_t)uiWebDocumentView;
- (uint64_t)unmarkText;
- (uint64_t)updateAutoscroll:()UITextInputAdditions;
- (uint64_t)updateFloatingCursorAtPoint:()UITextInputAdditions;
- (uint64_t)updateFloatingCursorAtPoint:()UITextInputAdditions animated:;
- (uint64_t)wordOffsetInRange:()UITextInputAdditions;
- (void)constrainedPoint:()UITextInputAdditions withInset:;
@end

@implementation DOMNode(UITextInputAdditions)

- (uint64_t)takeTraitsFrom:()UITextInputAdditions
{
  textInputTraits = [self textInputTraits];

  return [textInputTraits takeTraitsFrom:a3];
}

- (uint64_t)hasContent
{
  WebThreadLock();
  v2 = [objc_msgSend(self "ownerDocument")];

  return [v2 focusedNodeHasContent];
}

- (UITextInputTraits)textInputTraits
{
  isSecure = [self isSecure];
  v3 = objc_alloc_init(UITextInputTraits);
  [(UITextInputTraits *)v3 setSecureTextEntry:isSecure];
  if (isSecure)
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  [(UITextInputTraits *)v3 setAutocapitalizationType:v4];
  [(UITextInputTraits *)v3 setAutocorrectionType:isSecure];
  -[UITextInputTraits setKeyboardType:](v3, "setKeyboardType:", [self keyboardType]);
  -[UITextInputTraits setIsSingleLineDocument:](v3, "setIsSingleLineDocument:", [self isSingleLineDocument]);
  if ([self isContentEditable])
  {
    -[UITextInputTraits setTextSuggestionDelegate:](v3, "setTextSuggestionDelegate:", [objc_msgSend(objc_msgSend(objc_msgSend(self "ownerDocument")]);
  }

  [(UITextInputTraits *)v3 setShortcutConversionType:isSecure];
  [(UITextInputTraits *)v3 setSmartInsertDeleteType:isSecure];
  [(UITextInputTraits *)v3 setSmartQuotesType:isSecure];
  [(UITextInputTraits *)v3 setSmartDashesType:isSecure];

  return v3;
}

- (uint64_t)handleKeyWebEvent:()UITextInputAdditions
{
  WebThreadLock();
  v5 = [objc_msgSend(self "ownerDocument")];

  return [v5 _handleKeyEvent:a3];
}

- (uint64_t)beginSelectionChange
{
  inputDelegate = [self inputDelegate];

  return [inputDelegate selectionWillChange:self];
}

- (uint64_t)endSelectionChange
{
  inputDelegate = [self inputDelegate];

  return [inputDelegate selectionDidChange:self];
}

- (uint64_t)deleteBackward
{
  WebThreadLock();
  v2 = [objc_msgSend(self "ownerDocument")];
  [v2 _setProhibitsScrolling:1];
  [objc_msgSend(v2 "webView")];

  return [v2 _setProhibitsScrolling:0];
}

- (uint64_t)insertText:()UITextInputAdditions
{
  WebThreadLock();
  v5 = [objc_msgSend(self "ownerDocument")];
  [v5 _setProhibitsScrolling:1];
  [objc_msgSend(v5 "webView")];

  return [v5 _setProhibitsScrolling:0];
}

- (uint64_t)uiWebDocumentView
{
  v1 = [objc_msgSend(objc_msgSend(self "ownerDocument")];

  return [v1 _UIKitDelegate];
}

- (uint64_t)beginFloatingCursorAtPoint:()UITextInputAdditions
{
  uiWebDocumentView = [self uiWebDocumentView];

  return [uiWebDocumentView beginFloatingCursorAtPoint:{a2, a3}];
}

- (uint64_t)updateFloatingCursorAtPoint:()UITextInputAdditions
{
  uiWebDocumentView = [self uiWebDocumentView];

  return [uiWebDocumentView updateFloatingCursorAtPoint:{a2, a3}];
}

- (uint64_t)updateFloatingCursorAtPoint:()UITextInputAdditions animated:
{
  uiWebDocumentView = [self uiWebDocumentView];

  return [uiWebDocumentView updateFloatingCursorAtPoint:a5 animated:{a2, a3}];
}

- (uint64_t)endFloatingCursor
{
  uiWebDocumentView = [self uiWebDocumentView];

  return [uiWebDocumentView endFloatingCursor];
}

- (uint64_t)insertDictationResult:()UITextInputAdditions withCorrectionIdentifier:
{
  uiWebDocumentView = [self uiWebDocumentView];

  return [uiWebDocumentView insertDictationResult:a3 withCorrectionIdentifier:a4];
}

- (uint64_t)metadataDictionariesForDictationResults
{
  uiWebDocumentView = [self uiWebDocumentView];

  return [uiWebDocumentView metadataDictionariesForDictationResults];
}

- (uint64_t)insertDictationResultPlaceholder
{
  uiWebDocumentView = [self uiWebDocumentView];

  return [uiWebDocumentView insertDictationResultPlaceholder];
}

- (uint64_t)removeDictationResultPlaceholder:()UITextInputAdditions willInsertResult:
{
  uiWebDocumentView = [self uiWebDocumentView];

  return [uiWebDocumentView removeDictationResultPlaceholder:a3 willInsertResult:a4];
}

- (uint64_t)insertTextPlaceholderWithSize:()UITextInputAdditions
{
  uiWebDocumentView = [self uiWebDocumentView];

  return [uiWebDocumentView insertTextPlaceholderWithSize:{a2, a3}];
}

- (uint64_t)removeTextPlaceholder:()UITextInputAdditions
{
  uiWebDocumentView = [self uiWebDocumentView];

  return [uiWebDocumentView removeTextPlaceholder:a3];
}

- (uint64_t)characterInRelationToCaretSelection:()UITextInputAdditions
{
  WebThreadLock();
  v5 = [objc_msgSend(self "ownerDocument")];

  return [v5 characterInRelationToCaretSelection:a3];
}

- (uint64_t)setMarkedText:()UITextInputAdditions selectedRange:
{
  WebThreadLock();
  [objc_msgSend(self "inputDelegate")];
  v9 = [objc_msgSend(self "ownerDocument")];
  [v9 _setProhibitsScrolling:1];
  [v9 setMarkedText:a3 selectedRange:{a4, a5}];
  [v9 _setProhibitsScrolling:0];
  inputDelegate = [self inputDelegate];

  return [inputDelegate textDidChange:self];
}

- (uint64_t)confirmMarkedText:()UITextInputAdditions
{
  WebThreadLock();
  [objc_msgSend(self "inputDelegate")];
  v5 = [objc_msgSend(self "ownerDocument")];
  [v5 _setProhibitsScrolling:1];
  [v5 confirmMarkedText:a3];
  [v5 _setProhibitsScrolling:0];
  [objc_msgSend(objc_msgSend(objc_msgSend(v5 "webView")];
  inputDelegate = [self inputDelegate];

  return [inputDelegate textDidChange:self];
}

- (uint64_t)rectsForNSRange:()UITextInputAdditions
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  WebThreadLock();
  v9 = [objc_msgSend(self "ownerDocument")];
  v10 = [v9 convertNSRangeToDOMRange:{a3, a4}];

  return [v9 selectionRectsForRange:v10];
}

- (uint64_t)replaceCurrentWordWithText:()UITextInputAdditions
{
  WebThreadLock();
  [objc_msgSend(self "inputDelegate")];
  [self clearMarkedText];
  [objc_msgSend(objc_msgSend(self "ownerDocument")];
  if ([a3 length])
  {
    [self insertText:a3];
  }

  else
  {
    [self deleteBackward];
  }

  inputDelegate = [self inputDelegate];

  return [inputDelegate textDidChange:self];
}

- (uint64_t)characterAfterCaretSelection
{
  WebThreadLock();
  v2 = [objc_msgSend(self "ownerDocument")];

  return [v2 characterAfterCaretSelection];
}

- (uint64_t)fontForCaretSelection
{
  WebThreadLock();
  v2 = [objc_msgSend(self "ownerDocument")];
  v8 = 0;
  v3 = [v2 fontForSelection:&v8];
  if (v3)
  {
    [objc_msgSend(objc_msgSend(v2 "webView")];
    v5 = v4;
    if (fabs(v4 + -1.0) > 0.00000011920929)
    {
      [v3 pointSize];
      return [off_1E70ECC18 fontWithFamilyName:objc_msgSend(v3 traits:"familyName") size:{objc_msgSend(v3, "traits"), v5 * v6}];
    }
  }

  return v3;
}

- (uint64_t)wordOffsetInRange:()UITextInputAdditions
{
  WebThreadLock();
  v5 = [objc_msgSend(self "ownerDocument")];

  return [v5 wordOffsetInRange:a3];
}

- (uint64_t)selectionRange
{
  WebThreadLock();
  v2 = [objc_msgSend(self "ownerDocument")];

  return [v2 _selectedNSRange];
}

- (uint64_t)rangeByMovingCurrentSelection:()UITextInputAdditions
{
  WebThreadLock();
  v5 = [objc_msgSend(self "ownerDocument")];

  return [v5 rangeByMovingCurrentSelection:a3];
}

- (uint64_t)rangeByExtendingCurrentSelection:()UITextInputAdditions
{
  WebThreadLock();
  v5 = [objc_msgSend(self "ownerDocument")];

  return [v5 rangeByExtendingCurrentSelection:a3];
}

- (uint64_t)extendCurrentSelection:()UITextInputAdditions
{
  WebThreadLock();
  [self beginSelectionChange];
  v5 = [objc_msgSend(self "ownerDocument")];
  [v5 setSelectedDOMRange:objc_msgSend(v5 affinity:"rangeByExtendingCurrentSelection:" closeTyping:{a3), a3 >= 0, 0}];

  return [self endSelectionChange];
}

- (uint64_t)hasSelection
{
  WebThreadLock();
  v2 = [objc_msgSend(self "ownerDocument")];

  return [v2 hasSelection];
}

- (uint64_t)selectionAtDocumentStart
{
  WebThreadLock();
  v2 = [objc_msgSend(self "ownerDocument")];

  return [v2 selectionAtDocumentStart];
}

- (uint64_t)selectionAtWordStart
{
  WebThreadLock();
  v2 = [objc_msgSend(self "ownerDocument")];

  return [v2 selectionAtWordStart];
}

- (uint64_t)selectAll
{
  WebThreadLock();
  [self beginSelectionChange];
  [objc_msgSend(objc_msgSend(self "ownerDocument")];

  return [self endSelectionChange];
}

- (uint64_t)selectionState
{
  WebThreadLock();
  v2 = [objc_msgSend(self "ownerDocument")];

  return [v2 selectionState];
}

- (void)constrainedPoint:()UITextInputAdditions withInset:
{
  WebThreadLock();
  if (self)
  {
    [self innerFrameQuad];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  v7.origin.x = quadBoundingBox(v6);
  x = v7.origin.x;
  y = v7.origin.y;
  width = v7.size.width;
  height = v7.size.height;
  CGRectGetMinX(v7);
  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  CGRectGetMaxX(v8);
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  CGRectGetMinY(v9);
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  CGRectGetMaxY(v10);
}

- (uint64_t)setText:()UITextInputAdditions
{
  WebThreadLock();
  [objc_msgSend(self "inputDelegate")];
  [objc_msgSend(objc_msgSend(self "ownerDocument")];
  [self insertText:a3];
  inputDelegate = [self inputDelegate];

  return [inputDelegate textDidChange:self];
}

- (uint64_t)text
{
  WebThreadLock();
  v2 = [objc_msgSend(self "ownerDocument")];
  elementRangeContainingCaretSelection = [v2 elementRangeContainingCaretSelection];

  return [v2 stringForRange:elementRangeContainingCaretSelection];
}

- (uint64_t)setSelectionWithPoint:()UITextInputAdditions inset:
{
  [self constrainedPoint:? withInset:?];
  v3 = v2;
  v5 = v4;
  WebThreadLock();
  [self beginSelectionChange];
  [objc_msgSend(objc_msgSend(self "ownerDocument")];

  return [self endSelectionChange];
}

- (double)caretRect
{
  WebThreadLock();
  [objc_msgSend(objc_msgSend(self "ownerDocument")];
  v3 = v2;
  [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(self "ownerDocument")];
  return v3 + v4;
}

- (uint64_t)convertCaretRect:()UITextInputAdditions
{
  v9 = [objc_msgSend(objc_msgSend(self "ownerDocument")];

  return [v9 convertRect:0 toView:{a2, a3, a4, a5}];
}

- (uint64_t)automaticallySelectedOverlay
{
  v1 = [objc_msgSend(objc_msgSend(self "ownerDocument")];

  return [v1 _UIKitDelegate];
}

- (uint64_t)updateAutoscroll:()UITextInputAdditions
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    return result;
  }

  scrollLeft = [self scrollLeft];
  scrollTop = [self scrollTop];
  scrollWidth = [self scrollWidth];
  scrollHeight = [self scrollHeight];
  v10 = [objc_msgSend(objc_msgSend(objc_msgSend(self "ownerDocument")];
  [v10 _selectionClipRect];
  v12 = v11;
  v14 = v13;
  [v10 _zoomedDocumentScale];
  v16 = v12 / v15 + -16.0;
  v17 = v14 / v15 + -16.0;
  if (v16 >= 0.0)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0.0;
  }

  if (v17 >= 0.0)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0.0;
  }

  directions = [a3 directions];
  v21 = [a3 count];
  v22 = 10.0;
  if (v21 <= 4)
  {
    v22 = (1.0 / (6 - [a3 count]) * 10.0);
  }

  v23 = scrollLeft;
  if (directions)
  {
    v23 = v23 - v22;
    if (v23 < 0.0)
    {
      directions &= ~1u;
      v23 = 0.0;
    }
  }

  else if ((directions & 2) != 0)
  {
    v24 = v22 + v23;
    v25 = v18 + v22 + v23;
    v23 = scrollWidth;
    if (v25 <= scrollWidth)
    {
      v23 = v24;
    }
  }

  v26 = scrollTop;
  if ((directions & 4) != 0)
  {
    v27 = v26 - v22;
    if (v27 < 0.0)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = v27;
    }
  }

  else if ((directions & 8) != 0)
  {
    v26 = v22 + v26;
    if (v19 + v26 > scrollHeight)
    {
      v26 = scrollHeight;
    }
  }

  else if (!directions)
  {

    return [v10 cancelAutoscroll];
  }

  [self setScrollLeft:v23];
  [self setScrollTop:v26];
  textInputView = [self textInputView];
  [objc_msgSend(v10 "interactionAssistant")];
  [textInputView convertPoint:0 fromView:?];
  v30 = v29;
  v32 = v31;
  if ([self selectionState] == 1)
  {
    v33 = +[UITextMagnifierCaret sharedCaretMagnifier];
    [self setSelectionWithPoint:{v30, v32}];
  }

  else if ([self selectionState] == 2)
  {
    v33 = +[UITextMagnifierRanged sharedRangedMagnifier];
    [objc_msgSend(self "interactionAssistant")];
    [objc_msgSend(self "interactionAssistant")];
  }

  else
  {
    v33 = 0;
  }

  [v33 setNeedsDisplay];
  [a3 point];

  return [v33 postAutoscrollPoint:?];
}

- (uint64_t)acceptedAutoFillWord:()UITextInputAdditions
{
  v4 = [objc_msgSend(objc_msgSend(objc_msgSend(self "ownerDocument")];

  return [v4 acceptedAutoFillWord:a3];
}

- (uint64_t)isAutoFillMode
{
  v1 = [objc_msgSend(objc_msgSend(objc_msgSend(self "ownerDocument")];

  return [v1 isAutoFillMode];
}

- (uint64_t)interactionAssistant
{
  v1 = [objc_msgSend(objc_msgSend(objc_msgSend(self "ownerDocument")];

  return [v1 interactionAssistant];
}

- (uint64_t)_textSelectingContainer
{
  WebThreadLock();
  v2 = [objc_msgSend(objc_msgSend(objc_msgSend(self "ownerDocument")];

  return [v2 _textSelectingContainer];
}

- (id)selectedTextRange
{
  WebThreadLock();
  v2 = [objc_msgSend(objc_msgSend(self "ownerDocument")];
  selectionAffinity = [self selectionAffinity];

  return [UITextRangeImpl wrapDOMRange:v2 withAffinity:selectionAffinity];
}

- (uint64_t)setSelectedTextRange:()UITextInputAdditions withAffinityDownstream:
{
  WebThreadLock();
  v7 = [objc_msgSend(self "ownerDocument")];
  [self beginSelectionChange];
  if ([a3 domRange])
  {
    v8 = [objc_msgSend(self "ownerDocument")];
    [v8 setSelectedDOMRange:objc_msgSend(a3 affinity:"domRange") closeTyping:{a4, 1}];
    [v8 revealSelectionAtExtent:a4 ^ 1];
  }

  else
  {
    [v7 clearSelection];
  }

  return [self endSelectionChange];
}

- (uint64_t)setSelectedTextRange:()UITextInputAdditions
{
  if ([a3 isEmpty])
  {
    v5 = [objc_msgSend(objc_msgSend(a3 "start")] == 1;
  }

  else
  {
    v5 = 0;
  }

  return [self setSelectedTextRange:a3 withAffinityDownstream:v5];
}

- (id)beginningOfDocument
{
  WebThreadLock();
  startPosition = [self startPosition];

  return [UITextPositionImpl wrapWebVisiblePosition:startPosition];
}

- (id)endOfDocument
{
  WebThreadLock();
  endPosition = [self endPosition];

  return [UITextPositionImpl wrapWebVisiblePosition:endPosition];
}

- (uint64_t)textInRange:()UITextInputAdditions
{
  WebThreadLock();
  v5 = [objc_msgSend(objc_msgSend(self "ownerDocument")];

  return [v5 _stringByReplacingCharacter:160 withCharacter:32];
}

- (id)textRangeFromPosition:()UITextInputAdditions toPosition:
{
  WebThreadLock();
  v6 = [MEMORY[0x1E69E2F20] rangeForFirstPosition:objc_msgSend(a3 second:{"webVisiblePosition"), objc_msgSend(a4, "webVisiblePosition")}];
  v7 = [objc_msgSend(a4 "webVisiblePosition")] != 1;

  return [UITextRangeImpl wrapDOMRange:v6 withAffinity:v7];
}

- (id)rangeOfEnclosingWord:()UITextInputAdditions
{
  WebThreadLock();
  v4 = [objc_msgSend(a3 "webVisiblePosition")];

  return [UITextRangeImpl wrapDOMRange:v4];
}

- (uint64_t)replaceRange:()UITextInputAdditions withText:closeTyping:
{
  WebThreadLock();
  [objc_msgSend(self "inputDelegate")];
  [self clearMarkedText];
  [objc_msgSend(objc_msgSend(self "ownerDocument")];
  if ([a4 length])
  {
    [self insertText:a4];
  }

  else
  {
    [self deleteBackward];
  }

  inputDelegate = [self inputDelegate];

  return [inputDelegate textDidChange:self];
}

- (double)firstRectForRange:()UITextInputAdditions
{
  WebThreadLock();
  v5 = [objc_msgSend(self "ownerDocument")];
  documentView = [v5 documentView];
  v7 = [v5 selectionRectsForRange:{objc_msgSend(a3, "domRange")}];
  if (![v7 count])
  {
    return *MEMORY[0x1E695F050];
  }

  [objc_msgSend(v7 objectAtIndex:{0), "rect"}];
  [documentView convertRect:0 toView:?];
  return result;
}

- (double)_lastRectForRange:()UITextInputAdditions
{
  WebThreadLock();
  v5 = [objc_msgSend(self "ownerDocument")];
  documentView = [v5 documentView];
  v7 = [v5 selectionRectsForRange:{objc_msgSend(a3, "domRange")}];
  if (![v7 count])
  {
    return *MEMORY[0x1E695F050];
  }

  [objc_msgSend(v7 objectAtIndex:{objc_msgSend(v7, "count") - 1), "rect"}];
  [documentView convertRect:0 toView:?];
  return result;
}

- (uint64_t)moveRight
{
  WebThreadLock();
  [self beginSelectionChange];
  [objc_msgSend(objc_msgSend(objc_msgSend(self "ownerDocument")];

  return [self endSelectionChange];
}

- (uint64_t)moveLeft
{
  WebThreadLock();
  [self beginSelectionChange];
  [objc_msgSend(objc_msgSend(objc_msgSend(self "ownerDocument")];

  return [self endSelectionChange];
}

- (uint64_t)moveUp
{
  WebThreadLock();
  [self beginSelectionChange];
  [objc_msgSend(objc_msgSend(objc_msgSend(self "ownerDocument")];

  return [self endSelectionChange];
}

- (uint64_t)moveDown
{
  WebThreadLock();
  [self beginSelectionChange];
  [objc_msgSend(objc_msgSend(objc_msgSend(self "ownerDocument")];

  return [self endSelectionChange];
}

- (id)markedTextRange
{
  WebThreadLock();
  v2 = [objc_msgSend(objc_msgSend(self "ownerDocument")];
  if ([v2 collapsed])
  {
    return 0;
  }

  return [UITextRangeImpl wrapDOMRange:v2];
}

- (uint64_t)unmarkText
{
  WebThreadLock();
  [self beginSelectionChange];
  [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(self "ownerDocument")];

  return [self endSelectionChange];
}

- (uint64_t)comparePosition:()UITextInputAdditions toPosition:
{
  webVisiblePosition = [a3 webVisiblePosition];
  webVisiblePosition2 = [a4 webVisiblePosition];

  return [webVisiblePosition compare:webVisiblePosition2];
}

- (id)positionFromPosition:()UITextInputAdditions offset:
{
  WebThreadLock();
  webVisiblePosition = [a3 webVisiblePosition];
  if (a4 >= 0)
  {
    v7 = a4;
  }

  else
  {
    v7 = -a4;
  }

  result = [webVisiblePosition positionByMovingInDirection:a4 < 1 amount:v7];
  if (result)
  {

    return [UITextPositionImpl wrapWebVisiblePosition:result];
  }

  return result;
}

- (id)positionFromPosition:()UITextInputAdditions inDirection:offset:
{
  webVisiblePosition = [a3 webVisiblePosition];
  v9 = signpost_c2_entryLock_start(v7, v8);
  result = [webVisiblePosition positionByMovingInDirection:v10 amount:{a5, v9}];
  if (result)
  {

    return [UITextPositionImpl wrapWebVisiblePosition:result];
  }

  return result;
}

- (uint64_t)isPosition:()UITextInputAdditions atBoundary:inDirection:
{
  WebThreadLock();
  webVisiblePosition = [a3 webVisiblePosition];
  v7 = signpost_c2_entryLock_start(v5, v6);
  v9 = v8;
  v12 = signpost_c2_entryLock_start(v7, v10);

  return [webVisiblePosition atBoundaryOfGranularity:v9 inDirection:{v11, v12}];
}

- (id)positionFromPosition:()UITextInputAdditions toBoundary:inDirection:
{
  WebThreadLock();
  webVisiblePosition = [a3 webVisiblePosition];
  v7 = signpost_c2_entryLock_start(v5, v6);
  v9 = v8;
  v11 = signpost_c2_entryLock_start(v7, v10);
  result = [webVisiblePosition positionOfNextBoundaryOfGranularity:v9 inDirection:{v12, v11}];
  if (result)
  {

    return [UITextPositionImpl wrapWebVisiblePosition:result];
  }

  return result;
}

- (uint64_t)isPosition:()UITextInputAdditions withinTextUnit:inDirection:
{
  WebThreadLock();
  webVisiblePosition = [a3 webVisiblePosition];
  v7 = signpost_c2_entryLock_start(v5, v6);
  v9 = v8;
  v12 = signpost_c2_entryLock_start(v7, v10);

  return [webVisiblePosition withinTextUnitOfGranularity:v9 inDirectionIfAtBoundary:{v11, v12}];
}

- (id)rangeEnclosingPosition:()UITextInputAdditions withGranularity:inDirection:
{
  WebThreadLock();
  webVisiblePosition = [a3 webVisiblePosition];
  v7 = signpost_c2_entryLock_start(v5, v6);
  v9 = v8;
  v11 = signpost_c2_entryLock_start(v7, v10);
  v13 = [webVisiblePosition enclosingTextUnitOfGranularity:v9 inDirectionIfAtBoundary:{v12, v11}];
  v14 = [objc_msgSend(a3 "webVisiblePosition")];
  if (!v13)
  {
    return 0;
  }

  return [UITextRangeImpl wrapDOMRange:v13 withAffinity:v14 != 1];
}

- (uint64_t)inputDelegate
{
  WebThreadLock();
  v2 = [objc_msgSend(objc_msgSend(objc_msgSend(self "ownerDocument")];

  return [v2 inputDelegate];
}

- (uint64_t)setInputDelegate:()UITextInputAdditions
{
  WebThreadLock();
  v5 = [objc_msgSend(objc_msgSend(objc_msgSend(self "ownerDocument")];

  return [v5 setInputDelegate:a3];
}

- (double)caretRectForPosition:()UITextInputAdditions
{
  if (!a3)
  {
    return *MEMORY[0x1E695F050];
  }

  WebThreadLock();
  v5 = [objc_msgSend(self "ownerDocument")];
  documentView = [v5 documentView];
  [v5 caretRectForPosition:{objc_msgSend(a3, "webVisiblePosition")}];
  [documentView convertRect:0 toView:?];
  return round(v8 + v7 - fmax(floor(v7), 2.0));
}

- (uint64_t)closestPositionToPoint:()UITextInputAdditions
{
  WebThreadLock();
  v6 = [objc_msgSend(objc_msgSend(objc_msgSend(self "ownerDocument")];

  return [v6 closestPositionToPoint:{a2, a3}];
}

- (uint64_t)closestPositionToPoint:()UITextInputAdditions withinRange:
{
  WebThreadLock();
  v9 = [objc_msgSend(objc_msgSend(objc_msgSend(self "ownerDocument")];

  return [v9 closestPositionToPoint:a5 withinRange:{a2, a3}];
}

- (uint64_t)characterRangeAtPoint:()UITextInputAdditions
{
  v2 = [self closestPositionToPoint:?];
  v3 = [self positionFromPosition:v2 offset:1];
  if (v3)
  {
    v4 = v3;
    selfCopy2 = self;
    v6 = v2;
  }

  else
  {
    result = [self positionFromPosition:v2 offset:-1];
    if (!result)
    {
      return result;
    }

    v6 = result;
    selfCopy2 = self;
    v4 = v2;
  }

  return [selfCopy2 textRangeFromPosition:v6 toPosition:v4];
}

- (uint64_t)positionWithinRange:()UITextInputAdditions farthestInDirection:
{
  v6 = [self baseWritingDirectionForPosition:objc_msgSend(a3 inDirection:{"start"), 0}];
  if ((a4 - 3) > 1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  else if (v6)
  {
LABEL_3:

    return [a3 start];
  }

  return [a3 end];
}

- (uint64_t)characterRangeByExtendingPosition:()UITextInputAdditions inDirection:
{
  v7 = [self baseWritingDirectionForPosition:a3 inDirection:0];
  v8 = 1;
  if (v7)
  {
    v8 = -1;
  }

  if ((a4 - 3) >= 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  result = [self positionFromPosition:a3 offset:v9];
  if (result)
  {

    return [self textRangeFromPosition:a3 toPosition:result];
  }

  return result;
}

- (id)selectionRectsForRange:()UITextInputAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  WebThreadLock();
  v5 = [objc_msgSend(self "ownerDocument")];
  documentView = [v5 documentView];
  v7 = [v5 selectionRectsForRange:{objc_msgSend(a3, "domRange")}];
  if (!v7)
  {
    return MEMORY[0x1E695E0F0];
  }

  v8 = v7;
  if (![v7 count])
  {
    return MEMORY[0x1E695E0F0];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
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
        [v13 rect];
        [documentView convertRect:0 toView:?];
        [v13 setRect:?];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return [UITextSelectionRectImpl rectsWithWebRects:v8];
}

- (uint64_t)selectionAffinity
{
  v1 = [objc_msgSend(objc_msgSend(objc_msgSend(self "ownerDocument")];

  return [v1 selectionAffinity];
}

@end