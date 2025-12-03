@interface DOMNode(UITextInput_Internal)
- (BOOL)_isEmptySelection;
- (BOOL)_range:()UITextInput_Internal containsRange:;
- (BOOL)_range:()UITextInput_Internal intersectsRange:;
- (BOOL)_range:()UITextInput_Internal isEqualToRange:;
- (BOOL)_selectionAtDocumentEnd;
- (BOOL)_selectionAtDocumentStart;
- (BOOL)_selectionAtWordStart;
- (UITextInputArrowKeyHistory)_setHistory:()UITextInput_Internal withExtending:withAnchor:withAffinityDownstream:;
- (id)_clampedpositionFromPosition:()UITextInput_Internal offset:;
- (id)_findBoundaryPositionClosestToPosition:()UITextInput_Internal withGranularity:;
- (id)_findDocumentBoundaryFromPosition:()UITextInput_Internal;
- (id)_findPleasingWordBoundaryFromPosition:()UITextInput_Internal;
- (id)_fontForCaretSelection;
- (id)_fullRange;
- (id)_fullText;
- (id)_intersectionOfRange:()UITextInput_Internal andRange:;
- (id)_moveDown:()UITextInput_Internal withHistory:;
- (id)_moveLeft:()UITextInput_Internal withHistory:;
- (id)_moveRight:()UITextInput_Internal withHistory:;
- (id)_moveToEndOfDocument:()UITextInput_Internal withHistory:;
- (id)_moveToEndOfLine:()UITextInput_Internal withHistory:;
- (id)_moveToEndOfParagraph:()UITextInput_Internal withHistory:;
- (id)_moveToEndOfWord:()UITextInput_Internal withHistory:;
- (id)_moveToStartOfDocument:()UITextInput_Internal withHistory:;
- (id)_moveToStartOfLine:()UITextInput_Internal withHistory:;
- (id)_moveToStartOfParagraph:()UITextInput_Internal withHistory:;
- (id)_moveToStartOfWord:()UITextInput_Internal withHistory:;
- (id)_moveUp:()UITextInput_Internal withHistory:;
- (id)_normalizedStringForRangeComparison:()UITextInput_Internal;
- (id)_positionAtStartOfWords:()UITextInput_Internal beforePosition:;
- (id)_positionFromPosition:()UITextInput_Internal inDirection:offset:withAffinityDownstream:;
- (id)_positionFromPosition:()UITextInput_Internal pastTextUnit:inDirection:;
- (id)_positionWithinRange:()UITextInput_Internal farthestInDirection:;
- (id)_rangeFromCurrentRangeWithDelta:()UITextInput_Internal;
- (id)_rangeOfSmartSelectionIncludingRange:()UITextInput_Internal;
- (id)_rangeOfText:()UITextInput_Internal endingAtPosition:;
- (id)_rangeOfTextUnit:()UITextInput_Internal enclosingPosition:;
- (id)_rangeSpanningTextUnit:()UITextInput_Internal andPosition:;
- (id)_responderWindow;
- (id)_selectionDisplayInteraction;
- (id)_setSelectionRangeWithHistory:()UITextInput_Internal;
- (id)_textColorForCaretSelection;
- (id)_textInteraction;
- (id)_textRangeFromDirectionalRange:()UITextInput_Internal;
- (id)_textRangeFromNSRange:()UITextInput_Internal;
- (id)_underlineRectsByDocumentLineForSelectionRange:()UITextInput_Internal;
- (id)_wordContainingCaretSelection;
- (id)inputAssistantItem;
- (id)textInputSuggestionDelegate;
- (uint64_t)_characterInRelationToCaretSelection:()UITextInput_Internal;
- (uint64_t)_characterInRelationToPosition:()UITextInput_Internal amount:;
- (uint64_t)_characterInRelationToRangedSelection:()UITextInput_Internal;
- (uint64_t)_hasMarkedText;
- (uint64_t)_hasMarkedTextOrRangedSelection;
- (uint64_t)_indexForTextPosition:()UITextInput_Internal;
- (uint64_t)_nsrangeForTextRange:()UITextInput_Internal;
- (uint64_t)_selectedNSRange;
- (uint64_t)_selectedRangeWithinMarkedText;
- (uint64_t)_selectionAffinity;
- (uint64_t)_shouldPerformUICalloutBarButtonReplaceAction:()UITextInput_Internal forText:checkAutocorrection:;
- (uint64_t)_textInputSource;
- (uint64_t)_usesAsynchronousProtocol;
- (unint64_t)_opposingDirectionFromDirection:()UITextInput_Internal;
- (void)_deleteBackwardAndNotify:()UITextInput_Internal;
- (void)_deleteByWord;
- (void)_deleteForwardAndNotify:()UITextInput_Internal;
- (void)_deleteForwardByWord;
- (void)_deleteTextRange:()UITextInput_Internal;
- (void)_deleteToEndOfLine;
- (void)_deleteToEndOfParagraph;
- (void)_deleteToStartOfLine;
- (void)_expandSelectionToBackwardDeletionClusterWithReinsertionOut:()UITextInput_Internal;
- (void)_expandSelectionToStartOfWordsBeforeCaretSelection:()UITextInput_Internal;
- (void)_extendCurrentSelection:()UITextInput_Internal;
- (void)_moveCurrentSelection:()UITextInput_Internal;
- (void)_replaceCurrentWordWithText:()UITextInput_Internal;
- (void)_replaceDocumentWithText:()UITextInput_Internal;
- (void)_scrollRectToVisible:()UITextInput_Internal animated:;
- (void)_selectAll;
- (void)_setAttributedMarkedText:()UITextInput_Internal selectedRange:;
- (void)_setCaretSelectionAtEndOfSelection;
- (void)_setGestureRecognizers;
- (void)_setMarkedText:()UITextInput_Internal selectedRange:;
- (void)_setSelectedTextRange:()UITextInput_Internal withAffinityDownstream:;
- (void)_setSelectionToPosition:()UITextInput_Internal;
- (void)_transpose;
- (void)_unmarkText;
- (void)_updateSelectedRects:()UITextInput_Internal byTrimmingWhitespaceInRange:inDocument:;
- (void)_updateSelectionWithTextRange:()UITextInput_Internal withAffinityDownstream:;
- (void)set_textInputSource:()UITextInput_Internal;
@end

@implementation DOMNode(UITextInput_Internal)

- (id)textInputSuggestionDelegate
{
  _selectableText = [self _selectableText];
  inputDelegate = [_selectableText inputDelegate];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v3 = inputDelegate;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)_textInputSource
{
  v0 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];

  if (!v0)
  {
    return __UIPlatformFallbackInputSource;
  }

  v1 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];
  lastEventSource = [v1 lastEventSource];

  return lastEventSource;
}

- (void)set_textInputSource:()UITextInput_Internal
{
  v5 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];

  if (v5)
  {
    v6 = (objc_opt_respondsToSelector() & 1) != 0 && [self keyboardType] == 122;
    if (a3 == 3 && v6)
    {
      v7 = 2;
    }

    else
    {
      v7 = 5;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    v9 = selfCopy;
    v10 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];
    [v10 updateEventSource:a3 options:v7 responder:v9];
  }

  else
  {
    __UIPlatformFallbackInputSource = a3;
  }
}

- (uint64_t)_selectedNSRange
{
  _selectableText = [self _selectableText];
  v3 = _selectableText;
  if (_selectableText)
  {
    selectedTextRange = [_selectableText selectedTextRange];
    if (selectedTextRange)
    {
      v5 = [self _nsrangeForTextRange:selectedTextRange];
    }

    else
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (uint64_t)_selectedRangeWithinMarkedText
{
  _selectableText = [self _selectableText];
  v2 = _selectableText;
  if (_selectableText)
  {
    selectedTextRange = [_selectableText selectedTextRange];
    if (selectedTextRange)
    {
      markedTextRange = [v2 markedTextRange];
      v5 = markedTextRange;
      if (!markedTextRange || ([markedTextRange start], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(selectedTextRange, "start"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v2, "offsetFromPosition:toPosition:", v6, v7), v7, v6, v8 < 0))
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        start = [selectedTextRange start];
        v10 = [selectedTextRange end];
        [v2 offsetFromPosition:start toPosition:v10];
      }
    }

    else
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (void)_selectAll
{
  _selectableText = [self _selectableText];
  _fullRange = [_selectableText _fullRange];
  [_selectableText setSelectedTextRange:_fullRange];
}

- (uint64_t)_indexForTextPosition:()UITextInput_Internal
{
  v4 = a3;
  _selectableText = [self _selectableText];
  beginningOfDocument = [_selectableText beginningOfDocument];
  v7 = [_selectableText offsetFromPosition:beginningOfDocument toPosition:v4];

  return v7;
}

- (uint64_t)_nsrangeForTextRange:()UITextInput_Internal
{
  v4 = a3;
  _selectableText = [self _selectableText];
  start = [v4 start];
  v7 = [self _indexForTextPosition:start];

  start2 = [v4 start];
  v9 = [v4 end];

  [_selectableText offsetFromPosition:start2 toPosition:v9];
  return v7;
}

- (id)_textRangeFromNSRange:()UITextInput_Internal
{
  _selectableText = [self _selectableText];
  beginningOfDocument = [_selectableText beginningOfDocument];
  v8 = [_selectableText positionFromPosition:beginningOfDocument offset:a3];
  v9 = v8;
  if (v8)
  {
    endOfDocument = v8;
  }

  else
  {
    endOfDocument = [_selectableText endOfDocument];
  }

  v11 = endOfDocument;

  v12 = [_selectableText positionFromPosition:v11 offset:a4];
  v13 = v12;
  if (v12)
  {
    endOfDocument2 = v12;
  }

  else
  {
    endOfDocument2 = [_selectableText endOfDocument];
  }

  v15 = endOfDocument2;

  v16 = [_selectableText textRangeFromPosition:v11 toPosition:v15];

  return v16;
}

- (id)_textRangeFromDirectionalRange:()UITextInput_Internal
{
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  start = [selectedTextRange start];
  v9 = [_selectableText positionFromPosition:start offset:a3];

  v10 = [_selectableText positionFromPosition:v9 offset:a4];
  v11 = [_selectableText textRangeFromPosition:v9 toPosition:v10];

  return v11;
}

- (uint64_t)_characterInRelationToCaretSelection:()UITextInput_Internal
{
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  if (selectedTextRange && (v7 = selectedTextRange, [_selectableText selectedTextRange], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEmpty"), v8, v7, v9))
  {
    v10 = [self _characterInRelationToRangedSelection:a3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (uint64_t)_characterInRelationToRangedSelection:()UITextInput_Internal
{
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (!selectedTextRange)
  {
    goto LABEL_4;
  }

  if (a3 > -101)
  {
    if ((a3 & 0x80000000) == 0)
    {
      selectedTextRange2 = [_selectableText selectedTextRange];
      v8 = [selectedTextRange2 end];

      if (a3)
      {
        v9 = [_selectableText positionFromPosition:v8 offset:a3];

        v8 = v9;
      }

      if (!v8)
      {
        goto LABEL_17;
      }

LABEL_11:
      v12 = [_selectableText positionFromPosition:v8 offset:1];
      if (v12)
      {
        v13 = v12;
        v14 = [_selectableText textRangeFromPosition:v8 toPosition:v12];
        v15 = [_selectableText textInRange:v14];
        if ([v15 length])
        {
          if ([v15 length] == 2 && (v16 = objc_msgSend(v15, "characterAtIndex:", 0), v17 = objc_msgSend(v15, "characterAtIndex:", 1), (v16 & 0xFC00) == 0xD800) && (v17 & 0xFC00) == 0xDC00)
          {
            v6 = (v17 + (v16 << 10) - 56613888);
          }

          else
          {
            v6 = [v15 characterAtIndex:0];
          }
        }

        else
        {
          v6 = 0;
        }

        goto LABEL_21;
      }

LABEL_17:
      v6 = 0;
LABEL_21:

      goto LABEL_22;
    }

LABEL_10:
    selectedTextRange3 = [_selectableText selectedTextRange];
    start = [selectedTextRange3 start];
    v8 = [_selectableText positionFromPosition:start offset:a3];

    if (!v8)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = 0;
LABEL_22:

  return v6;
}

- (uint64_t)_characterInRelationToPosition:()UITextInput_Internal amount:
{
  if (!a3)
  {
    return 0;
  }

  v6 = a3;
  _selectableText = [self _selectableText];
  v8 = [_selectableText positionFromPosition:v6 offset:a4];

  v9 = [_selectableText positionFromPosition:v8 offset:1];
  v10 = [_selectableText textRangeFromPosition:v8 toPosition:v9];
  v11 = [_selectableText textInRange:v10];
  if ([v11 length])
  {
    if ([v11 length] == 2 && (v12 = objc_msgSend(v11, "characterAtIndex:", 0), v13 = objc_msgSend(v11, "characterAtIndex:", 1), (v12 & 0xFC00) == 0xD800) && (v13 & 0xFC00) == 0xDC00)
    {
      v14 = (v13 + (v12 << 10) - 56613888);
    }

    else
    {
      v14 = [v11 characterAtIndex:0];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_wordContainingCaretSelection
{
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  if (selectedTextRange)
  {
    selectedTextRange2 = [_selectableText selectedTextRange];
    isEmpty = [selectedTextRange2 isEmpty];

    if (isEmpty)
    {
      selectedTextRange3 = [_selectableText selectedTextRange];
      start = [selectedTextRange3 start];
      v8 = [self _rangeOfEnclosingWord:start];

      if (v8)
      {
        selectedTextRange = [_selectableText textInRange:v8];
      }

      else
      {
        selectedTextRange = 0;
      }
    }

    else
    {
      selectedTextRange = 0;
    }
  }

  return selectedTextRange;
}

- (id)_fullText
{
  _selectableText = [self _selectableText];
  beginningOfDocument = [_selectableText beginningOfDocument];
  endOfDocument = [_selectableText endOfDocument];
  v4 = [_selectableText textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];

  v5 = [_selectableText textInRange:v4];

  return v5;
}

- (void)_setSelectionToPosition:()UITextInput_Internal
{
  if (a3)
  {
    v4 = a3;
    _selectableText = [self _selectableText];
    v5 = [_selectableText textRangeFromPosition:v4 toPosition:v4];

    if (v5)
    {
      [_selectableText setSelectedTextRange:v5];
    }
  }
}

- (BOOL)_selectionAtWordStart
{
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  start = [selectedTextRange start];
  v5 = [self _rangeOfEnclosingWord:start];

  if (v5)
  {
    start2 = [v5 start];
    selectedTextRange2 = [_selectableText selectedTextRange];
    start3 = [selectedTextRange2 start];
    v9 = [_selectableText comparePosition:start2 toPosition:start3];

    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_selectionAtDocumentStart
{
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  start = [selectedTextRange start];

  if (start)
  {
    beginningOfDocument = [_selectableText beginningOfDocument];
    v5 = [_selectableText comparePosition:beginningOfDocument toPosition:start] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_selectionAtDocumentEnd
{
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  v3 = [selectedTextRange end];

  if (v3)
  {
    endOfDocument = [_selectableText endOfDocument];
    v5 = [_selectableText comparePosition:endOfDocument toPosition:v3] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isEmptySelection
{
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  start = [selectedTextRange start];
  v4 = [selectedTextRange end];
  v5 = [_selectableText comparePosition:start toPosition:v4] == 0;

  return v5;
}

- (uint64_t)_hasMarkedTextOrRangedSelection
{
  _selectableText = [self _selectableText];
  markedTextRange = [_selectableText markedTextRange];
  if (markedTextRange)
  {
    v3 = 1;
  }

  else
  {
    selectedTextRange = [_selectableText selectedTextRange];
    if (selectedTextRange)
    {
      selectedTextRange2 = [_selectableText selectedTextRange];
      v3 = [selectedTextRange2 isEmpty] ^ 1;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)_extendCurrentSelection:()UITextInput_Internal
{
  _selectableText = [self _selectableText];
  if (a3)
  {
    v15 = _selectableText;
    selectedTextRange = [_selectableText selectedTextRange];

    _selectableText = v15;
    if (selectedTextRange)
    {
      selectedTextRange2 = [v15 selectedTextRange];
      start = [selectedTextRange2 start];

      selectedTextRange3 = [v15 selectedTextRange];
      v10 = [selectedTextRange3 end];

      if (a3 < 1)
      {
        v13 = [self _clampedpositionFromPosition:start offset:a3];
        v12 = start;
        start = v13;
      }

      else
      {
        v11 = [self _clampedpositionFromPosition:v10 offset:a3];
        v12 = v10;
        v10 = v11;
      }

      v14 = [v15 textRangeFromPosition:start toPosition:v10];
      [v15 setSelectedTextRange:v14];

      _selectableText = v15;
    }
  }
}

- (void)_moveCurrentSelection:()UITextInput_Internal
{
  _selectableText = [self _selectableText];
  if (a3)
  {
    v14 = _selectableText;
    selectedTextRange = [_selectableText selectedTextRange];

    _selectableText = v14;
    if (selectedTextRange)
    {
      selectedTextRange2 = [v14 selectedTextRange];
      isEmpty = [selectedTextRange2 isEmpty];

      if (isEmpty)
      {
        selectedTextRange3 = [v14 selectedTextRange];
        start = [selectedTextRange3 start];
      }

      else
      {
        selectedTextRange4 = [v14 selectedTextRange];
        start = [selectedTextRange4 end];

        if (a3 < 1)
        {
          a3 = (a3 + 1);
        }

        else
        {
          a3 = (a3 - 1);
        }
      }

      v12 = [self _clampedpositionFromPosition:start offset:a3];

      v13 = [v14 textRangeFromPosition:v12 toPosition:v12];
      if (v13)
      {
        [v14 setSelectedTextRange:v13];
      }

      _selectableText = v14;
    }
  }
}

- (void)_expandSelectionToBackwardDeletionClusterWithReinsertionOut:()UITextInput_Internal
{
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  start = [selectedTextRange start];
  v6 = [selectedTextRange end];
  v7 = start;
  if (!selectedTextRange || ([selectedTextRange isEmpty] & 1) != 0)
  {
    v8 = &stru_1EFB14550;
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_18:
    v19 = 0;
    v10 = 0;
    goto LABEL_29;
  }

  v8 = [_selectableText textInRange:selectedTextRange];
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_4:
  v23 = a3;
  v9 = v7;
  v10 = v7;
  while (1)
  {
    v11 = v8;
    v12 = [(__CFString *)v11 length];
    if (v12)
    {
      v13 = v12;
      [(__CFString *)v11 _rangeOfBackwardDeletionClusterAtIndex:[(__CFString *)v11 length]- 1];
      v15 = v14;
      v16 = v13 - v14;

      if (v13 != v15)
      {
        v8 = v11;
        v19 = v9;
        goto LABEL_20;
      }
    }

    else
    {

      v16 = 0;
    }

    v19 = v10;

    v10 = [_selectableText positionFromPosition:v19 offset:-1];

    if (v10)
    {
      v17 = [_selectableText textRangeFromPosition:v10 toPosition:v19];
      if (v17)
      {
        v18 = [_selectableText textInRange:v17];
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    if (![v18 length])
    {
      break;
    }

    v8 = [v18 stringByAppendingString:v11];

    v9 = v19;
    if (!v10)
    {
      goto LABEL_20;
    }
  }

  v10 = 0;
  v8 = v11;
LABEL_20:
  v20 = _selectableText;
  if (v23 && v16 >= 1)
  {
    v21 = v10;

    *v23 = [(__CFString *)v8 substringToIndex:v16];
    v20 = _selectableText;
    v19 = v21;
  }

  if (v19 != v7 && v19 && v6)
  {
    v22 = [v20 textRangeFromPosition:v19 toPosition:v6];
    if (v22)
    {
      [_selectableText setSelectedTextRange:v22];
    }
  }

LABEL_29:
}

- (void)_expandSelectionToStartOfWordsBeforeCaretSelection:()UITextInput_Internal
{
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  v5 = selectedTextRange;
  if (a3 && selectedTextRange)
  {
    start = [selectedTextRange start];
    v7 = [_selectableText _positionAtStartOfWords:a3 beforePosition:start];

    if (v7)
    {
      v8 = [v5 end];
      v9 = [_selectableText textRangeFromPosition:v7 toPosition:v8];
      [_selectableText setSelectedTextRange:v9];
    }
  }
}

- (id)_positionWithinRange:()UITextInput_Internal farthestInDirection:
{
  v6 = a3;
  _selectableText = [self _selectableText];
  v8 = _selectableText;
  if (a4 == 1)
  {
    start = [v6 start];
    goto LABEL_7;
  }

  if (!a4)
  {
    start = [v6 end];
LABEL_7:
    v10 = start;
    goto LABEL_8;
  }

  if (v6)
  {
    start = [_selectableText positionWithinRange:v6 farthestInDirection:a4];
    goto LABEL_7;
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (unint64_t)_opposingDirectionFromDirection:()UITextInput_Internal
{
  result = a3;
  if (a3 <= 5)
  {
    return qword_18A680700[a3];
  }

  return result;
}

- (id)_positionFromPosition:()UITextInput_Internal pastTextUnit:inDirection:
{
  v8 = a3;
  _selectableText = [self _selectableText];
  if (v8)
  {
    v10 = -3;
    while (!__CFADD__(v10++, 1))
    {
      tokenizer = [_selectableText tokenizer];
      v13 = [tokenizer positionFromPosition:v8 toBoundary:a4 inDirection:a5];

      if (!v13)
      {
        v17 = 0;
        v8 = 0;
        goto LABEL_12;
      }

      tokenizer2 = [_selectableText tokenizer];
      if ([tokenizer2 isPosition:v13 atBoundary:a4 inDirection:a5])
      {

LABEL_11:
        v17 = v13;
        v8 = v17;
        goto LABEL_12;
      }

      tokenizer3 = [_selectableText tokenizer];
      v16 = [tokenizer3 isPosition:v13 atBoundary:a4 inDirection:{objc_msgSend(self, "_opposingDirectionFromDirection:", a5)}];

      v8 = v13;
      if (v16)
      {
        goto LABEL_11;
      }
    }
  }

  v17 = 0;
LABEL_12:

  return v17;
}

- (id)_positionAtStartOfWords:()UITextInput_Internal beforePosition:
{
  v6 = a4;
  _selectableText = [self _selectableText];
  v8 = _selectableText;
  if (!a3 || !v6)
  {
    v6 = v6;
    v10 = v6;
    goto LABEL_13;
  }

  tokenizer = [_selectableText tokenizer];
  v10 = [tokenizer rangeEnclosingPosition:v6 withGranularity:1 inDirection:1];

  if (v10)
  {
    goto LABEL_4;
  }

  tokenizer2 = [v8 tokenizer];
  v19 = [tokenizer2 positionFromPosition:v6 toBoundary:1 inDirection:1];

  if (!v19)
  {
    v10 = 0;
    goto LABEL_13;
  }

  tokenizer3 = [v8 tokenizer];
  v10 = [tokenizer3 rangeEnclosingPosition:v19 withGranularity:1 inDirection:1];

  if (v10)
  {
LABEL_4:
    start = [v10 start];

    if (a3 >= 2)
    {
      v12 = a3 - 1;
      while (1)
      {
        tokenizer4 = [v8 tokenizer];
        v14 = [tokenizer4 positionFromPosition:start toBoundary:1 inDirection:1];

        if (!v14)
        {
          break;
        }

        tokenizer5 = [v8 tokenizer];
        v16 = [tokenizer5 positionFromPosition:v14 toBoundary:1 inDirection:1];

        if (!v16)
        {
          break;
        }

        start = v16;
        if (!--v12)
        {
          goto LABEL_12;
        }
      }
    }

    v16 = start;
LABEL_12:
    v6 = v16;

    v10 = v6;
  }

LABEL_13:

  return v10;
}

- (void)_setCaretSelectionAtEndOfSelection
{
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  v2 = selectedTextRange;
  if (selectedTextRange)
  {
    v3 = [selectedTextRange end];
    v4 = [v2 end];
    v5 = [_selectableText textRangeFromPosition:v3 toPosition:v4];
    [_selectableText setSelectedTextRange:v5];
  }
}

- (void)_deleteByWord
{
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  inputDelegate = [_selectableText inputDelegate];
  [inputDelegate textWillChange:_selectableText];

  if ([selectedTextRange isEmpty])
  {
    start = [selectedTextRange start];
    v5 = [_selectableText _positionAtStartOfWords:1 beforePosition:start];

    if (v5)
    {
      v6 = [selectedTextRange end];
      v7 = [_selectableText textRangeFromPosition:v5 toPosition:v6];

      selectedTextRange = v7;
    }
  }

  [self _deleteTextRange:selectedTextRange];
  inputDelegate2 = [_selectableText inputDelegate];
  [inputDelegate2 textDidChange:_selectableText];
}

- (void)_deleteForwardByWord
{
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  inputDelegate = [_selectableText inputDelegate];
  [inputDelegate textWillChange:_selectableText];

  if ([selectedTextRange isEmpty])
  {
    _selectableText2 = [self _selectableText];
    v5 = _selectableText2;
    if (selectedTextRange)
    {
      tokenizer = [_selectableText2 tokenizer];
      v7 = [selectedTextRange end];
      v8 = [tokenizer rangeEnclosingPosition:v7 withGranularity:1 inDirection:0];

      if (v8 || ([v5 tokenizer], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(selectedTextRange, "end"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "positionFromPosition:toBoundary:inDirection:", v14, 1, 0), v15 = objc_claimAutoreleasedReturnValue(), v14, v13, v15) && (objc_msgSend(v5, "tokenizer"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "rangeEnclosingPosition:withGranularity:inDirection:", v15, 1, 0), v8 = objc_claimAutoreleasedReturnValue(), v16, v15, v8))
      {
        start = [selectedTextRange start];
        v10 = [v8 end];
        v11 = [v5 textRangeFromPosition:start toPosition:v10];

        selectedTextRange = v11;
      }
    }
  }

  [self _deleteTextRange:selectedTextRange];
  inputDelegate2 = [_selectableText inputDelegate];
  [inputDelegate2 textDidChange:_selectableText];
}

- (void)_deleteToStartOfLine
{
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  inputDelegate = [_selectableText inputDelegate];
  [inputDelegate textWillChange:_selectableText];

  if ([selectedTextRange isEmpty])
  {
    tokenizer = [_selectableText tokenizer];
    start = [selectedTextRange start];
    v6 = [tokenizer positionFromPosition:start toBoundary:4 inDirection:1];

    if (v6)
    {
      start2 = [selectedTextRange start];
      v8 = [_selectableText comparePosition:start2 toPosition:v6];

      if (v8 == 1)
      {
        start3 = [selectedTextRange start];
        v10 = [_selectableText textRangeFromPosition:v6 toPosition:start3];

        selectedTextRange = v10;
      }
    }
  }

  [self _deleteTextRange:selectedTextRange];
  inputDelegate2 = [_selectableText inputDelegate];
  [inputDelegate2 textDidChange:_selectableText];
}

- (void)_deleteToEndOfLine
{
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  inputDelegate = [_selectableText inputDelegate];
  [inputDelegate textWillChange:_selectableText];

  if ([selectedTextRange isEmpty])
  {
    tokenizer = [_selectableText tokenizer];
    v5 = [selectedTextRange end];
    v6 = [tokenizer positionFromPosition:v5 toBoundary:4 inDirection:0];

    if (v6)
    {
      v7 = [selectedTextRange end];
      v8 = [_selectableText comparePosition:v6 toPosition:v7];

      if (v8 == 1)
      {
        v9 = [selectedTextRange end];
        v10 = [_selectableText textRangeFromPosition:v9 toPosition:v6];

        selectedTextRange = v10;
      }
    }
  }

  [self _deleteTextRange:selectedTextRange];
  inputDelegate2 = [_selectableText inputDelegate];
  [inputDelegate2 textDidChange:_selectableText];
}

- (void)_deleteToEndOfParagraph
{
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  inputDelegate = [_selectableText inputDelegate];
  [inputDelegate textWillChange:_selectableText];

  if ([selectedTextRange isEmpty])
  {
    tokenizer = [_selectableText tokenizer];
    v5 = [selectedTextRange end];
    v6 = [tokenizer positionFromPosition:v5 toBoundary:3 inDirection:0];

    if (v6)
    {
      v7 = [selectedTextRange end];
      v8 = [_selectableText comparePosition:v6 toPosition:v7];

      if (v8 == 1)
      {
        v9 = [selectedTextRange end];
        v10 = [_selectableText textRangeFromPosition:v9 toPosition:v6];

        selectedTextRange = v10;
      }
    }
  }

  [self _deleteTextRange:selectedTextRange];
  inputDelegate2 = [_selectableText inputDelegate];
  [inputDelegate2 textDidChange:_selectableText];
}

- (void)_deleteTextRange:()UITextInput_Internal
{
  v4 = a3;
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  [_selectableText setSelectedTextRange:v4];

  selectedTextRange2 = [_selectableText selectedTextRange];
  isEmpty = [selectedTextRange2 isEmpty];

  if ((isEmpty & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = _selectableText;
      if ([v8 keyboardInputShouldDelete:v8])
      {
        [v8 deleteBackward];
      }

      else
      {
        [v8 setSelectedTextRange:selectedTextRange];
      }
    }

    else
    {
      [_selectableText deleteBackward];
    }
  }
}

- (void)_deleteBackwardAndNotify:()UITextInput_Internal
{
  _keyInput = [self _keyInput];
  [_keyInput deleteBackward];
}

- (void)_deleteForwardAndNotify:()UITextInput_Internal
{
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  inputDelegate = [_selectableText inputDelegate];
  [inputDelegate textWillChange:_selectableText];

  if ([selectedTextRange isEmpty])
  {
    tokenizer = [_selectableText tokenizer];
    v5 = [selectedTextRange end];
    v6 = [tokenizer positionFromPosition:v5 toBoundary:0 inDirection:0];

    if (v6)
    {
      v7 = [selectedTextRange end];
      v8 = [_selectableText comparePosition:v6 toPosition:v7];

      if (v8 == 1)
      {
        v9 = [selectedTextRange end];
        v10 = [_selectableText textRangeFromPosition:v9 toPosition:v6];

        selectedTextRange = v10;
      }
    }
  }

  [self _deleteTextRange:selectedTextRange];
  inputDelegate2 = [_selectableText inputDelegate];
  [inputDelegate2 textDidChange:_selectableText];
}

- (void)_transpose
{
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  if ([selectedTextRange isEmpty])
  {
    inputDelegate = [_selectableText inputDelegate];
    [inputDelegate textWillChange:_selectableText];

    tokenizer = [_selectableText tokenizer];
    start = [selectedTextRange start];
    v5 = [tokenizer positionFromPosition:start toBoundary:0 inDirection:1];

    tokenizer2 = [_selectableText tokenizer];
    v7 = [selectedTextRange end];
    v8 = [tokenizer2 positionFromPosition:v7 toBoundary:0 inDirection:0];

    if (v5 && v8)
    {
      start2 = [selectedTextRange start];
      v10 = [_selectableText textRangeFromPosition:v5 toPosition:start2];

      v11 = [selectedTextRange end];
      v12 = [_selectableText textRangeFromPosition:v11 toPosition:v8];

      if (v10 && v12)
      {
        v13 = [_selectableText textInRange:v10];
        v14 = [_selectableText textInRange:v12];
        v15 = [v14 stringByAppendingString:v13];
        v16 = [_selectableText textRangeFromPosition:v5 toPosition:v8];
        if (v16)
        {
          [_selectableText replaceRange:v16 withText:v15];
        }
      }
    }

    inputDelegate2 = [_selectableText inputDelegate];
    [inputDelegate2 textDidChange:_selectableText];
  }
}

- (void)_replaceCurrentWordWithText:()UITextInput_Internal
{
  v8 = a3;
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  start = [selectedTextRange start];
  v7 = [self _rangeOfEnclosingWord:start];

  if (v7)
  {
    [_selectableText replaceRange:v7 withText:v8];
  }
}

- (void)_replaceDocumentWithText:()UITextInput_Internal
{
  v7 = a3;
  _selectableText = [self _selectableText];
  _fullRange = [self _fullRange];
  v6 = _fullRange;
  if (_fullRange)
  {
    if (([_fullRange isEmpty] & 1) == 0)
    {
      [_selectableText replaceRange:v6 withText:&stru_1EFB14550];
    }

    [_selectableText insertText:v7];
  }
}

- (void)_scrollRectToVisible:()UITextInput_Internal animated:
{
  _selectableText = [self _selectableText];
  textInputView = [_selectableText textInputView];
  if (objc_opt_respondsToSelector())
  {
    v13 = [textInputView performSelector:sel__enclosingScrollerIncludingSelf];
    [v13 convertRect:textInputView fromView:{a2, a3, a4, a5}];
    [v13 scrollRectToVisible:a7 animated:?];
  }
}

- (id)_normalizedStringForRangeComparison:()UITextInput_Internal
{
  v3 = [a3 _stringByReplacingCharacter:160 withCharacter:32];
  v4 = [v3 _stringByReplacingCharacter:8217 withCharacter:39];

  v5 = [v4 _stringByReplacingCharacter:8216 withCharacter:39];

  return v5;
}

- (id)_rangeOfText:()UITextInput_Internal endingAtPosition:
{
  v6 = a3;
  v7 = a4;
  _selectableText = [self _selectableText];
  if (![v6 length])
  {
    v11 = [_selectableText textRangeFromPosition:v7 toPosition:v7];
    goto LABEL_30;
  }

  v9 = [_selectableText _rangeOfEnclosingWord:v7];
  if (v9)
  {
    v10 = [_selectableText textInRange:v9];
  }

  else
  {
    v10 = 0;
  }

  if (![v10 isEqualToString:v6])
  {
    beginningOfDocument = [_selectableText positionFromPosition:v7 offset:{-objc_msgSend(v6, "length")}];
    if (!beginningOfDocument)
    {
      beginningOfDocument = [_selectableText beginningOfDocument];
    }

    v14 = [_selectableText textRangeFromPosition:beginningOfDocument toPosition:v7];

    if (v14)
    {
      v15 = [_selectableText textInRange:v14];

      v16 = [v15 length];
      if (v16 <= [v6 length])
      {
        v12 = v14;
        v10 = v15;
LABEL_25:
        v21 = [self _normalizedStringForRangeComparison:v10];
        v22 = [self _normalizedStringForRangeComparison:v6];
        if ([v21 isEqualToString:v22])
        {
          v11 = v12;
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_29;
      }

      v17 = 0;
      while (1)
      {
        v18 = beginningOfDocument;
        beginningOfDocument = [_selectableText positionFromPosition:beginningOfDocument offset:1];

        if (!beginningOfDocument)
        {
          break;
        }

        if ([_selectableText comparePosition:beginningOfDocument toPosition:v7] != -1)
        {

          break;
        }

        v12 = [_selectableText textRangeFromPosition:beginningOfDocument toPosition:v7];

        if (!v12)
        {
          goto LABEL_24;
        }

        v10 = [_selectableText textInRange:v12];

        v19 = [v10 length];
        if (v19 > [v6 length])
        {
          v14 = v12;
          v15 = v10;
          if (v17++ < 9)
          {
            continue;
          }
        }

        goto LABEL_25;
      }

      beginningOfDocument = 0;
    }

    else
    {
      v15 = v10;
    }

LABEL_24:

    v12 = 0;
    v10 = 0;
    goto LABEL_25;
  }

  v12 = v9;
  v11 = v12;
LABEL_29:

LABEL_30:

  return v11;
}

- (id)_rangeOfTextUnit:()UITextInput_Internal enclosingPosition:
{
  v6 = a4;
  if (v6)
  {
    _selectableText = [self _selectableText];
    tokenizer = [_selectableText tokenizer];
    v9 = [tokenizer rangeEnclosingPosition:v6 withGranularity:a3 inDirection:0];

    if (!v9)
    {
      tokenizer2 = [_selectableText tokenizer];
      v9 = [tokenizer2 rangeEnclosingPosition:v6 withGranularity:a3 inDirection:1];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_fullRange
{
  _selectableText = [self _selectableText];
  beginningOfDocument = [_selectableText beginningOfDocument];
  endOfDocument = [_selectableText endOfDocument];
  v4 = [_selectableText textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];

  return v4;
}

- (id)_rangeSpanningTextUnit:()UITextInput_Internal andPosition:
{
  v6 = a4;
  if (!v6)
  {
    v8 = 0;
    goto LABEL_17;
  }

  _selectableText = [self _selectableText];
  v8 = [self _rangeOfTextUnit:a3 enclosingPosition:v6];
  if (!v8)
  {
    tokenizer = [_selectableText tokenizer];
    v10 = 1;
    v11 = [tokenizer positionFromPosition:v6 toBoundary:a3 inDirection:1];

    v12 = v11;
    if (!v11)
    {
      tokenizer2 = [_selectableText tokenizer];
      v12 = [tokenizer2 positionFromPosition:v6 toBoundary:a3 inDirection:0];

      if (!v12)
      {
        v15 = 0;
        goto LABEL_11;
      }

      v10 = 0;
    }

    tokenizer3 = [_selectableText tokenizer];
    v15 = [tokenizer3 rangeEnclosingPosition:v12 withGranularity:a3 inDirection:v10];

    if (v11)
    {
      start = [v15 start];
      if (start)
      {
        v17 = _selectableText;
        v18 = start;
        v19 = v6;
LABEL_13:
        v8 = [v17 textRangeFromPosition:v18 toPosition:v19];
LABEL_15:

        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_11:
    start = [v15 end];
    if (start)
    {
      v17 = _selectableText;
      v18 = v6;
      v19 = start;
      goto LABEL_13;
    }

LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

LABEL_16:

LABEL_17:

  return v8;
}

- (BOOL)_range:()UITextInput_Internal containsRange:
{
  v6 = a4;
  v7 = [self _nsrangeForTextRange:a3];
  v9 = v8;
  v10 = [self _nsrangeForTextRange:v6];
  v12 = v11;

  if (!v12)
  {
    return v10 >= v7 && v10 - v7 < v9;
  }

  v17.location = v7;
  v17.length = v9;
  v18.location = v10;
  v18.length = v12;
  v13 = NSIntersectionRange(v17, v18);
  return v10 == v13.location && v12 == v13.length;
}

- (BOOL)_range:()UITextInput_Internal intersectsRange:
{
  v6 = a4;
  v7 = [self _nsrangeForTextRange:a3];
  v9 = v8;
  v10 = [self _nsrangeForTextRange:v6];
  v12 = v11;

  v14.location = v7;
  v14.length = v9;
  v15.location = v10;
  v15.length = v12;
  return NSIntersectionRange(v14, v15).length != 0;
}

- (id)_intersectionOfRange:()UITextInput_Internal andRange:
{
  v6 = a3;
  v7 = a4;
  selfCopy = self;
  start = [v6 start];
  start2 = [v7 start];
  if ([selfCopy comparePosition:start toPosition:start2] == 1)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  start3 = [v11 start];

  v13 = [v6 end];
  v14 = [v7 end];
  if ([selfCopy comparePosition:v13 toPosition:v14] == -1)
  {
    v15 = v6;
  }

  else
  {
    v15 = v7;
  }

  v16 = [v15 end];

  v17 = [selfCopy textRangeFromPosition:start3 toPosition:v16];

  return v17;
}

- (BOOL)_range:()UITextInput_Internal isEqualToRange:
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (v6 && v7)
    {
      selfCopy = self;
      start = [v6 start];
      start2 = [v8 start];
      v13 = [selfCopy comparePosition:start toPosition:start2];

      v14 = [v6 end];
      v15 = [v8 end];
      v16 = v13 | [selfCopy comparePosition:v14 toPosition:v15];

      v9 = v16 == 0;
    }
  }

  return v9;
}

- (id)_findBoundaryPositionClosestToPosition:()UITextInput_Internal withGranularity:
{
  v6 = a3;
  v7 = v6;
  if (a4 == 5)
  {
    v8 = [self _findDocumentBoundaryFromPosition:v6];
  }

  else if (a4 == 1)
  {
    v8 = [self _findPleasingWordBoundaryFromPosition:v6];
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v9;
}

- (id)_findPleasingWordBoundaryFromPosition:()UITextInput_Internal
{
  v4 = a3;
  _selectableText = [self _selectableText];
  tokenizer = [_selectableText tokenizer];
  if ([tokenizer isPosition:v4 atBoundary:4 inDirection:0])
  {
    goto LABEL_2;
  }

  v9 = [tokenizer isPosition:v4 withinTextUnit:1 inDirection:0];
  tokenizer2 = [_selectableText tokenizer];
  v11 = tokenizer2;
  if (v9)
  {
    v12 = [tokenizer2 rangeEnclosingPosition:v4 withGranularity:1 inDirection:0];

    start = [v12 start];
    v14 = [_selectableText offsetFromPosition:start toPosition:v4];

    if (v14 > 1)
    {
      [v12 end];
    }

    else
    {
      [v12 start];
    }
    v8 = ;

    goto LABEL_12;
  }

  v15 = [tokenizer2 isPosition:v4 atBoundary:1 inDirection:1];

  if (v15)
  {
LABEL_2:
    endOfDocument = v4;
LABEL_3:
    v8 = endOfDocument;
    goto LABEL_12;
  }

  tokenizer3 = [_selectableText tokenizer];
  v8 = [tokenizer3 positionFromPosition:v4 toBoundary:1 inDirection:0];

  if (!v8)
  {
    endOfDocument = [_selectableText endOfDocument];
    goto LABEL_3;
  }

LABEL_12:

  return v8;
}

- (id)_findDocumentBoundaryFromPosition:()UITextInput_Internal
{
  v4 = a3;
  _selectableText = [self _selectableText];
  beginningOfDocument = [_selectableText beginningOfDocument];
  endOfDocument = [_selectableText endOfDocument];
  v8 = [_selectableText offsetFromPosition:beginningOfDocument toPosition:v4];
  v9 = [_selectableText offsetFromPosition:v4 toPosition:endOfDocument];

  if (v8 <= v9)
  {
    v10 = beginningOfDocument;
  }

  else
  {
    v10 = endOfDocument;
  }

  v11 = v10;
  v12 = v11;

  return v11;
}

- (id)_underlineRectsByDocumentLineForSelectionRange:()UITextInput_Internal
{
  v4 = a3;
  _selectableText = [self _selectableText];
  tokenizer = [_selectableText tokenizer];
  start = [v4 start];
  v8 = [tokenizer rangeEnclosingPosition:start withGranularity:4 inDirection:0];

  v9 = [v4 end];
  v10 = [tokenizer rangeEnclosingPosition:v9 withGranularity:4 inDirection:0];

  if (!v8 || !v10 || ([v8 isEmpty] & 1) != 0 || (objc_msgSend(v10, "isEmpty") & 1) != 0 || (objc_msgSend(v8, "isEqual:", v10) & 1) != 0)
  {
    goto LABEL_9;
  }

  start2 = [v8 start];
  start3 = [v10 start];
  if ([start2 isEqual:start3])
  {

LABEL_9:
    v15 = [_selectableText selectionRectsForRange:v4];
    goto LABEL_10;
  }

  v13 = [v8 end];
  v14 = [v10 end];
  v28 = [v13 isEqual:v14];

  if (v28)
  {
    goto LABEL_9;
  }

  v15 = objc_opt_new();
  start4 = [v4 start];
  v18 = [v8 end];
  v19 = [_selectableText textRangeFromPosition:start4 toPosition:v18];

  v29 = v19;
  [self _updateSelectedRects:v15 byTrimmingWhitespaceInRange:v19 inDocument:_selectableText];
  v20 = [v8 end];
  v21 = [tokenizer rangeEnclosingPosition:v20 withGranularity:4 inDirection:0];

  if (v21)
  {
    while (([v21 isEqual:v10] & 1) == 0)
    {
      v22 = [v21 end];
      v23 = [tokenizer rangeEnclosingPosition:v22 withGranularity:4 inDirection:0];

      if ([v23 isEqual:v21])
      {

        break;
      }

      v24 = [_selectableText selectionRectsForRange:v21];
      [v15 addObjectsFromArray:v24];

      v21 = v23;
      if (!v23)
      {
        break;
      }
    }
  }

  start5 = [v10 start];
  v26 = [v4 end];
  v27 = [_selectableText textRangeFromPosition:start5 toPosition:v26];

  if (v27)
  {
    [self _updateSelectedRects:v15 byTrimmingWhitespaceInRange:v27 inDocument:_selectableText];
  }

LABEL_10:

  return v15;
}

- (void)_updateSelectedRects:()UITextInput_Internal byTrimmingWhitespaceInRange:inDocument:
{
  v18 = a3;
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v7)
  {
    v10 = [v8 textInRange:v7];
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v12 = [v10 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

    if ([v12 length])
    {
      start = [v7 start];
      v14 = [v9 positionFromPosition:start offset:{objc_msgSend(v12, "length")}];

      start2 = [v7 start];
      v16 = [v9 textRangeFromPosition:start2 toPosition:v14];

      if (v16)
      {
        v17 = [v9 selectionRectsForRange:v16];
        [v18 addObjectsFromArray:v17];
      }
    }
  }
}

- (id)_rangeOfSmartSelectionIncludingRange:()UITextInput_Internal
{
  v4 = a3;
  if (v4)
  {
    _selectableText = [self _selectableText];
    v58 = v4;
    v6 = v4;
    tokenizer = [_selectableText tokenizer];
    start = [v6 start];
    v9 = [tokenizer positionFromPosition:start toBoundary:2 inDirection:1];
    v10 = v9;
    if (v9)
    {
      beginningOfDocument = v9;
    }

    else
    {
      beginningOfDocument = [_selectableText beginningOfDocument];
    }

    v12 = beginningOfDocument;

    start2 = [v6 start];
    v14 = [_selectableText offsetFromPosition:v12 toPosition:start2];

    if (v14 >= 65)
    {
      start3 = [v6 start];
      v16 = [_selectableText positionFromPosition:start3 offset:-64];

      v12 = [tokenizer positionFromPosition:v16 toBoundary:1 inDirection:0];

      if (!v12)
      {
        start4 = [v6 start];
        v18 = [_selectableText positionFromPosition:start4 offset:-64];

        v12 = [tokenizer positionFromPosition:v18 toBoundary:0 inDirection:0];
      }

      start5 = [v6 start];
      v20 = [_selectableText comparePosition:v12 toPosition:start5];

      if (v20 == 1)
      {
        start6 = [v6 start];
        v22 = [tokenizer positionFromPosition:start6 toBoundary:0 inDirection:1];
        v23 = v22;
        if (v22)
        {
          start7 = v22;
        }

        else
        {
          start7 = [v6 start];
        }

        v25 = start7;

        v12 = v25;
      }
    }

    v26 = [v6 end];
    v27 = [tokenizer positionFromPosition:v26 toBoundary:2 inDirection:0];
    v28 = v27;
    if (v27)
    {
      endOfDocument = v27;
    }

    else
    {
      endOfDocument = [_selectableText endOfDocument];
    }

    v30 = endOfDocument;

    v31 = [v6 end];
    v32 = [_selectableText offsetFromPosition:v31 toPosition:v30];

    if (v32 >= 65)
    {
      v33 = [v6 end];
      v34 = [_selectableText positionFromPosition:v33 offset:64];

      v30 = [tokenizer positionFromPosition:v34 toBoundary:1 inDirection:1];

      if (!v30)
      {
        v35 = [v6 end];
        v36 = [_selectableText positionFromPosition:v35 offset:64];

        v30 = [tokenizer positionFromPosition:v36 toBoundary:0 inDirection:1];
      }

      v37 = [v6 end];
      v38 = [_selectableText comparePosition:v37 toPosition:v30];

      if (v38 == 1)
      {
        v39 = [v6 end];
        v40 = [tokenizer positionFromPosition:v39 toBoundary:0 inDirection:0];
        v41 = v40;
        if (v40)
        {
          v42 = v40;
        }

        else
        {
          v42 = [v6 end];
        }

        v43 = v42;

        v30 = v43;
      }
    }

    v57 = tokenizer;
    v59 = [_selectableText textRangeFromPosition:v12 toPosition:v30];
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v44 = [_selectableText keyboardType], v45 = 420, v44 != 3) && v44 != 10 && v44 != 120)
    {
      v45 = 428;
    }

    beginningOfDocument2 = [_selectableText beginningOfDocument];
    v56 = v12;
    v47 = [_selectableText offsetFromPosition:beginningOfDocument2 toPosition:v12];

    v48 = [self _nsrangeForTextRange:v6];
    v50 = v49;
    v51 = [_selectableText textInRange:v59];
    v61 = 0;
    v62 = &v61;
    v63 = 0x3010000000;
    v64 = "";
    v65 = xmmword_18A678470;
    v52 = +[UIKeyboardImpl activeInstance];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __70__DOMNode_UITextInput_Internal___rangeOfSmartSelectionIncludingRange___block_invoke;
    v60[3] = &unk_1E71191D8;
    v60[4] = &v61;
    [v52 smartSelectionForTextInDocument:v51 inRange:v48 - v47 options:v50 completion:{v45, v60}];

    v53 = v62[4];
    if (v53 != 0x7FFFFFFFFFFFFFFFLL && v62[5])
    {
      v62[4] = v53 + v47;
      v54 = [self _textRangeFromNSRange:?];

      v6 = v54;
    }

    _Block_object_dispose(&v61, 8);

    v4 = v58;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_clampedpositionFromPosition:()UITextInput_Internal offset:
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    _selectableText = [self _selectableText];
    v9 = _selectableText;
    if (a4 < 1)
    {
      beginningOfDocument = [_selectableText positionFromPosition:v7 offset:a4];
      if (!beginningOfDocument)
      {
        beginningOfDocument = [v9 beginningOfDocument];
      }
    }

    else
    {
      beginningOfDocument = [_selectableText positionFromPosition:v7 offset:a4];
      if (!beginningOfDocument)
      {
        beginningOfDocument = [v9 endOfDocument];
      }
    }

    v11 = beginningOfDocument;
  }

  else
  {
    v11 = v6;
  }

  return v11;
}

- (id)_rangeFromCurrentRangeWithDelta:()UITextInput_Internal
{
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  v8 = selectedTextRange;
  if (a3 | a4)
  {
    v10 = a4 + a3;
    start = [selectedTextRange start];
    v12 = [v8 end];
    if (a3)
    {
      v13 = [_selectableText positionFromPosition:start offset:a3];

      start = v13;
      if (!v13)
      {
        if (a3 < 0)
        {
          [_selectableText beginningOfDocument];
        }

        else
        {
          [_selectableText endOfDocument];
        }
        start = ;
      }
    }

    if (v10)
    {
      v14 = [_selectableText positionFromPosition:v12 offset:v10];

      v12 = v14;
      if (!v14)
      {
        if (v10 < 0)
        {
          endOfDocument = start;
        }

        else
        {
          endOfDocument = [_selectableText endOfDocument];
        }

        v12 = endOfDocument;
      }
    }

    v16 = [_selectableText textRangeFromPosition:start toPosition:v12];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v8;
    }

    v9 = v18;
  }

  else
  {
    v9 = selectedTextRange;
  }

  return v9;
}

- (id)_textColorForCaretSelection
{
  if (objc_opt_respondsToSelector())
  {
    textColorForCaretSelection = [self textColorForCaretSelection];
  }

  else
  {
    _selectableText = [self _selectableText];
    if (objc_opt_respondsToSelector())
    {
      selectedTextRange = [_selectableText selectedTextRange];
      v5 = [selectedTextRange end];

      if (v5)
      {
        endOfDocument = [_selectableText endOfDocument];
        if (endOfDocument && [_selectableText comparePosition:endOfDocument toPosition:v5] == -1)
        {
          v7 = endOfDocument;

          v5 = v7;
        }

        v8 = [_selectableText textStylingAtPosition:v5 inDirection:0];
      }

      else
      {
        v8 = 0;
      }

      if (dyld_program_sdk_at_least())
      {
        v9 = *off_1E70EC920;
      }

      else
      {
        v9 = @"UITextInputTextColorKey";
      }

      textColorForCaretSelection = [v8 objectForKey:v9];
    }

    else
    {
      textColorForCaretSelection = 0;
    }
  }

  return textColorForCaretSelection;
}

- (id)_fontForCaretSelection
{
  if (objc_opt_respondsToSelector())
  {
    fontForCaretSelection = [self fontForCaretSelection];
  }

  else
  {
    _selectableText = [self _selectableText];
    if (objc_opt_respondsToSelector())
    {
      selectedTextRange = [_selectableText selectedTextRange];
      v5 = [selectedTextRange end];

      if (v5)
      {
        endOfDocument = [_selectableText endOfDocument];
        if (endOfDocument && [_selectableText comparePosition:endOfDocument toPosition:v5] == -1)
        {
          v7 = endOfDocument;

          v5 = v7;
        }

        v8 = [_selectableText textStylingAtPosition:v5 inDirection:0];
      }

      else
      {
        v8 = 0;
      }

      if (dyld_program_sdk_at_least())
      {
        v9 = *off_1E70EC918;
      }

      else
      {
        v9 = @"UITextInputTextFontKey";
      }

      fontForCaretSelection = [v8 objectForKey:v9];
    }

    else
    {
      fontForCaretSelection = 0;
    }
  }

  return fontForCaretSelection;
}

- (void)_updateSelectionWithTextRange:()UITextInput_Internal withAffinityDownstream:
{
  v6 = a3;
  _selectableText = [self _selectableText];
  [_selectableText _setSelectedTextRange:v6 withAffinityDownstream:a4];
}

- (id)_setSelectionRangeWithHistory:()UITextInput_Internal
{
  v4 = a3;
  _selectableText = [self _selectableText];
  cursor = [v4 cursor];

  if (!cursor)
  {
    goto LABEL_19;
  }

  if ([v4 anchor] == 1)
  {
    cursor2 = [v4 cursor];
LABEL_5:
    [v4 setEnd:cursor2];
    goto LABEL_6;
  }

  anchor = [v4 anchor];
  cursor2 = [v4 cursor];
  [v4 setStart:cursor2];
  if (anchor != 2)
  {
    goto LABEL_5;
  }

LABEL_6:

  start = [v4 start];
  v10 = [v4 end];
  v11 = [_selectableText comparePosition:start toPosition:v10];

  if (v11 >= 1)
  {
    if ([v4 anchor] == 1)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    [v4 setAnchor:v12];
  }

  start2 = [v4 start];
  v14 = [v4 end];
  v15 = [_selectableText textRangeFromPosition:start2 toPosition:v14];

  [self _updateSelectionWithTextRange:v15 withAffinityDownstream:{objc_msgSend(v4, "affinityDownstream")}];
  if ([v4 anchor])
  {
    if ([v4 anchor] == 1)
    {
      [_selectableText _lastRectForRange:v15];
    }

    else
    {
      [_selectableText firstRectForRange:v15];
    }

    [_selectableText _scrollRectToVisible:0 animated:?];
  }

  else if (objc_opt_respondsToSelector())
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v17 = *MEMORY[0x1E69E3030];
    webView = [self webView];
    [defaultCenter postNotificationName:v17 object:webView];
  }

LABEL_19:

  return v4;
}

- (UITextInputArrowKeyHistory)_setHistory:()UITextInput_Internal withExtending:withAnchor:withAffinityDownstream:
{
  v10 = a3;
  if (v10)
  {
    v11 = v10;
    if ((a4 & 1) == 0)
    {
      [(UITextInputArrowKeyHistory *)v10 setAnchor:0];
    }
  }

  else
  {
    v11 = objc_alloc_init(UITextInputArrowKeyHistory);
  }

  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  start = [selectedTextRange start];
  [(UITextInputArrowKeyHistory *)v11 setStart:start];

  selectedTextRange2 = [_selectableText selectedTextRange];
  v16 = [selectedTextRange2 end];
  [(UITextInputArrowKeyHistory *)v11 setEnd:v16];

  anchor = [(UITextInputArrowKeyHistory *)v11 anchor];
  selectedTextRange3 = [_selectableText selectedTextRange];
  v19 = selectedTextRange3;
  if (a5 == 2)
  {
    if (anchor == 1)
    {
LABEL_7:
      start2 = [selectedTextRange3 end];
      goto LABEL_10;
    }
  }

  else if (anchor != 2)
  {
    goto LABEL_7;
  }

  start2 = [selectedTextRange3 start];
LABEL_10:
  v21 = start2;
  [(UITextInputArrowKeyHistory *)v11 setCursor:start2];

  startPosition = [(UITextInputArrowKeyHistory *)v11 startPosition];

  if (!startPosition)
  {
    cursor = [(UITextInputArrowKeyHistory *)v11 cursor];
    [(UITextInputArrowKeyHistory *)v11 setStartPosition:cursor];

    if (a4)
    {
      goto LABEL_12;
    }

LABEL_16:
    a5 = 0;
LABEL_17:
    [(UITextInputArrowKeyHistory *)v11 setAnchor:a5];
    goto LABEL_18;
  }

  if (!a4)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (!-[UITextInputArrowKeyHistory anchor](v11, "anchor") || [self _isEmptySelection])
  {
    goto LABEL_17;
  }

LABEL_18:
  [(UITextInputArrowKeyHistory *)v11 setAffinityDownstream:a6];

  return v11;
}

- (id)_moveToStartOfWord:()UITextInput_Internal withHistory:
{
  v6 = a4;
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [self _setHistory:v6 withExtending:a3 withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    tokenizer = [_selectableText tokenizer];
    cursor = [v9 cursor];
    v12 = [tokenizer isPosition:cursor withinTextUnit:1 inDirection:1];

    if (v12)
    {
LABEL_7:
      tokenizer2 = [_selectableText tokenizer];
      cursor2 = [v9 cursor];
      v24 = [tokenizer2 positionFromPosition:cursor2 toBoundary:1 inDirection:1];
      [v9 setCursor:v24];

      cursor3 = [v9 cursor];
      [v9 setStartPosition:cursor3];

      v26 = [self _setSelectionRangeWithHistory:v9];
      goto LABEL_9;
    }

    tokenizer3 = [_selectableText tokenizer];
    cursor4 = [v9 cursor];
    cursor7 = [tokenizer3 positionFromPosition:cursor4 toBoundary:1 inDirection:1];

    if (cursor7)
    {
LABEL_4:
      tokenizer4 = [_selectableText tokenizer];
      cursor5 = [v9 cursor];
      v18 = [tokenizer4 isPosition:cursor5 withinTextUnit:1 inDirection:1];

      if ((v18 & 1) == 0)
      {
        tokenizer5 = [_selectableText tokenizer];
        cursor6 = [v9 cursor];
        v21 = [tokenizer5 positionFromPosition:cursor6 toBoundary:1 inDirection:1];
        [v9 setCursor:v21];
      }

      goto LABEL_7;
    }

    cursor7 = [v9 cursor];
    v28 = 0;
    while (1)
    {
      beginningOfDocument = [_selectableText beginningOfDocument];
      v30 = [_selectableText comparePosition:beginningOfDocument toPosition:cursor7];

      if (!v30)
      {
        break;
      }

      if (v28 && ![_selectableText comparePosition:v28 toPosition:cursor7])
      {
        beginningOfDocument2 = [_selectableText beginningOfDocument];
        [v9 setCursor:beginningOfDocument2];

        cursor8 = [v9 cursor];
        [v9 setStartPosition:cursor8];

        break;
      }

      v31 = cursor7;

      tokenizer6 = [_selectableText tokenizer];
      cursor7 = [tokenizer6 positionFromPosition:v31 toBoundary:3 inDirection:1];

      tokenizer7 = [_selectableText tokenizer];
      v34 = [tokenizer7 isPosition:cursor7 atBoundary:3 inDirection:1];

      v28 = v31;
      if ((v34 & 1) == 0)
      {
        [v9 setCursor:cursor7];

        goto LABEL_4;
      }
    }

    v26 = [self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v26 = 0;
    v9 = v6;
  }

LABEL_9:

  return v26;
}

- (id)_moveToEndOfWord:()UITextInput_Internal withHistory:
{
  v6 = a4;
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [self _setHistory:v6 withExtending:a3 withAnchor:1 withAffinityDownstream:1];

    [v9 setAmount:0];
    tokenizer = [_selectableText tokenizer];
    cursor = [v9 cursor];
    v12 = [tokenizer isPosition:cursor withinTextUnit:1 inDirection:0];

    if ((v12 & 1) == 0)
    {
      tokenizer2 = [_selectableText tokenizer];
      cursor2 = [v9 cursor];
      v15 = [tokenizer2 positionFromPosition:cursor2 toBoundary:1 inDirection:0];

      if (v15)
      {
        [v9 setCursor:v15];
      }
    }

    tokenizer3 = [_selectableText tokenizer];
    cursor3 = [v9 cursor];
    v18 = [tokenizer3 positionFromPosition:cursor3 toBoundary:1 inDirection:0];
    [v9 setCursor:v18];

    cursor4 = [v9 cursor];

    if (!cursor4)
    {
      endOfDocument = [_selectableText endOfDocument];
      [v9 setCursor:endOfDocument];
    }

    cursor5 = [v9 cursor];
    [v9 setStartPosition:cursor5];

    v22 = [self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v22 = 0;
    v9 = v6;
  }

  return v22;
}

- (id)_moveToStartOfLine:()UITextInput_Internal withHistory:
{
  v6 = a4;
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (!selectedTextRange)
  {
    v17 = 0;
    v10 = v6;
    goto LABEL_11;
  }

  affinityDownstream = [v6 affinityDownstream];
  v10 = [self _setHistory:v6 withExtending:a3 withAnchor:2 withAffinityDownstream:1];

  [v10 setAmount:0];
  tokenizer = [_selectableText tokenizer];
  selectedTextRange2 = [_selectableText selectedTextRange];
  v13 = [selectedTextRange2 end];
  if (([tokenizer isPosition:v13 atBoundary:3 inDirection:1] & 1) == 0)
  {
    if (affinityDownstream)
    {
      tokenizer2 = [_selectableText tokenizer];
      cursor = [v10 cursor];
      v16 = [tokenizer2 isPosition:cursor atBoundary:4 inDirection:1];

      if (v16)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    tokenizer = [_selectableText tokenizer];
    selectedTextRange2 = [v10 cursor];
    v13 = [tokenizer positionFromPosition:selectedTextRange2 toBoundary:4 inDirection:1];
    [v10 setCursor:v13];
  }

LABEL_10:
  cursor2 = [v10 cursor];
  [v10 setStartPosition:cursor2];

  v17 = [self _setSelectionRangeWithHistory:v10];
LABEL_11:

  return v17;
}

- (id)_moveToEndOfLine:()UITextInput_Internal withHistory:
{
  v6 = a4;
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (!selectedTextRange)
  {
    v14 = 0;
    v10 = v6;
    goto LABEL_10;
  }

  affinityDownstream = [v6 affinityDownstream];
  v10 = [self _setHistory:v6 withExtending:a3 withAnchor:1 withAffinityDownstream:0];

  [v10 setAmount:0];
  tokenizer = [_selectableText tokenizer];
  selectedTextRange2 = [_selectableText selectedTextRange];
  v13 = [selectedTextRange2 end];
  if ([tokenizer isPosition:v13 atBoundary:3 inDirection:0])
  {
    goto LABEL_8;
  }

  if (affinityDownstream)
  {

LABEL_7:
    tokenizer = [_selectableText tokenizer];
    selectedTextRange2 = [v10 cursor];
    v13 = [tokenizer positionFromPosition:selectedTextRange2 toBoundary:4 inDirection:0];
    [v10 setCursor:v13];
LABEL_8:

    goto LABEL_9;
  }

  tokenizer2 = [_selectableText tokenizer];
  cursor = [v10 cursor];
  v17 = [tokenizer2 isPosition:cursor atBoundary:4 inDirection:0];

  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  cursor2 = [v10 cursor];
  [v10 setStartPosition:cursor2];

  v14 = [self _setSelectionRangeWithHistory:v10];
LABEL_10:

  return v14;
}

- (id)_moveToStartOfParagraph:()UITextInput_Internal withHistory:
{
  v6 = a4;
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [self _setHistory:v6 withExtending:a3 withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    tokenizer = [_selectableText tokenizer];
    cursor = [v9 cursor];
    v12 = [tokenizer isPosition:cursor atBoundary:3 inDirection:1];

    if (v12)
    {
      cursor2 = [v9 cursor];
      v14 = [tokenizer positionFromPosition:cursor2 toBoundary:0 inDirection:1];

      if (v14)
      {
        [v9 setCursor:v14];
      }
    }

    cursor3 = [v9 cursor];
    v16 = [tokenizer positionFromPosition:cursor3 toBoundary:3 inDirection:1];
    [v9 setCursor:v16];

    cursor4 = [v9 cursor];
    [v9 setStartPosition:cursor4];

    v18 = [self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v18 = 0;
    v9 = v6;
  }

  return v18;
}

- (id)_moveToEndOfParagraph:()UITextInput_Internal withHistory:
{
  v6 = a4;
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [self _setHistory:v6 withExtending:a3 withAnchor:1 withAffinityDownstream:0];

    [v9 setAmount:0];
    tokenizer = [_selectableText tokenizer];
    cursor = [v9 cursor];
    v12 = [tokenizer isPosition:cursor atBoundary:3 inDirection:0];

    if (v12)
    {
      cursor2 = [v9 cursor];
      v14 = [tokenizer positionFromPosition:cursor2 toBoundary:0 inDirection:0];

      if (v14)
      {
        [v9 setCursor:v14];
      }
    }

    cursor3 = [v9 cursor];
    v16 = [tokenizer positionFromPosition:cursor3 toBoundary:3 inDirection:0];
    [v9 setCursor:v16];

    cursor4 = [v9 cursor];
    [v9 setStartPosition:cursor4];

    v18 = [self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v18 = 0;
    v9 = v6;
  }

  return v18;
}

- (id)_moveToStartOfDocument:()UITextInput_Internal withHistory:
{
  v6 = a4;
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [self _setHistory:v6 withExtending:a3 withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    beginningOfDocument = [_selectableText beginningOfDocument];
    [v9 setCursor:beginningOfDocument];

    cursor = [v9 cursor];
    [v9 setStartPosition:cursor];

    v12 = [self _setSelectionRangeWithHistory:v9];
    v6 = v9;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_moveToEndOfDocument:()UITextInput_Internal withHistory:
{
  v6 = a4;
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [self _setHistory:v6 withExtending:a3 withAnchor:1 withAffinityDownstream:0];

    [v9 setAmount:0];
    endOfDocument = [_selectableText endOfDocument];
    [v9 setCursor:endOfDocument];

    cursor = [v9 cursor];
    [v9 setStartPosition:cursor];

    tokenizer = [_selectableText tokenizer];
    cursor2 = [v9 cursor];
    v14 = [tokenizer isPosition:cursor2 atBoundary:4 inDirection:3];

    if (v14)
    {
      [v9 setAffinityDownstream:1];
    }

    v15 = [self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v15 = 0;
    v9 = v6;
  }

  return v15;
}

- (id)_moveUp:()UITextInput_Internal withHistory:
{
  v6 = a4;
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    if (v6)
    {
      affinityDownstream = [v6 affinityDownstream];
    }

    else
    {
      affinityDownstream = [self _selectionAffinity] == 0;
    }

    v11 = [self _setHistory:v6 withExtending:a3 withAnchor:2 withAffinityDownstream:affinityDownstream];

    [v11 setAmount:{objc_msgSend(v11, "amount") + 1}];
    cursor = [v11 cursor];
    beginningOfDocument = [_selectableText beginningOfDocument];
    v14 = [_selectableText comparePosition:cursor toPosition:beginningOfDocument];

    if (v14)
    {
      startPosition = [v11 startPosition];
      if ([v11 amount] > 0)
      {
        v16 = 4;
      }

      else
      {
        v16 = 5;
      }

      amount = [v11 amount];
      if (amount >= 0)
      {
        v18 = amount;
      }

      else
      {
        v18 = -amount;
      }

      v19 = [_selectableText _positionFromPosition:startPosition inDirection:v16 offset:v18 withAffinityDownstream:{objc_msgSend(v11, "affinityDownstream")}];

      cursor2 = [v11 cursor];
      v21 = [_selectableText comparePosition:cursor2 toPosition:v19];

      if (v21)
      {
        [v11 setCursor:v19];
      }

      else
      {
        beginningOfDocument2 = [_selectableText beginningOfDocument];
        [v11 setCursor:beginningOfDocument2];

        [v11 setAmount:{objc_msgSend(v11, "amount") - 1}];
      }
    }

    else
    {
      [v11 setAmount:{objc_msgSend(v11, "amount") - 1}];
    }

    v10 = [self _setSelectionRangeWithHistory:v11];
  }

  else
  {
    v10 = 0;
    v11 = v6;
  }

  return v10;
}

- (id)_moveDown:()UITextInput_Internal withHistory:
{
  v6 = a4;
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    if (v6)
    {
      affinityDownstream = [v6 affinityDownstream];
    }

    else
    {
      affinityDownstream = [self _selectionAffinity] == 0;
    }

    v11 = [self _setHistory:v6 withExtending:a3 withAnchor:1 withAffinityDownstream:affinityDownstream];

    [v11 setAmount:{objc_msgSend(v11, "amount") - 1}];
    cursor = [v11 cursor];
    endOfDocument = [_selectableText endOfDocument];
    v14 = [_selectableText comparePosition:cursor toPosition:endOfDocument];

    if (v14)
    {
      startPosition = [v11 startPosition];
      if ([v11 amount] > 0)
      {
        v16 = 4;
      }

      else
      {
        v16 = 5;
      }

      amount = [v11 amount];
      if (amount >= 0)
      {
        v18 = amount;
      }

      else
      {
        v18 = -amount;
      }

      v19 = [_selectableText _positionFromPosition:startPosition inDirection:v16 offset:v18 withAffinityDownstream:{objc_msgSend(v11, "affinityDownstream")}];

      cursor2 = [v11 cursor];
      v21 = [_selectableText comparePosition:cursor2 toPosition:v19];

      if (v21)
      {
        [v11 setCursor:v19];
      }

      else
      {
        endOfDocument2 = [_selectableText endOfDocument];
        [v11 setCursor:endOfDocument2];

        [v11 setAmount:{objc_msgSend(v11, "amount") + 1}];
      }
    }

    else
    {
      [v11 setAmount:{objc_msgSend(v11, "amount") + 1}];
    }

    v10 = [self _setSelectionRangeWithHistory:v11];
  }

  else
  {
    v10 = 0;
    v11 = v6;
  }

  return v10;
}

- (id)_moveLeft:()UITextInput_Internal withHistory:
{
  v6 = a4;
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [self _setHistory:v6 withExtending:a3 withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    selectedTextRange2 = [_selectableText selectedTextRange];
    isEmpty = [selectedTextRange2 isEmpty];

    if ((isEmpty & 1) != 0 || a3)
    {
      cursor = [v9 cursor];
      v13 = [_selectableText positionFromPosition:cursor inDirection:3 offset:1];
      [v9 setCursor:v13];
    }

    cursor2 = [v9 cursor];
    [v9 setStartPosition:cursor2];

    v15 = [self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v15 = 0;
    v9 = v6;
  }

  return v15;
}

- (id)_moveRight:()UITextInput_Internal withHistory:
{
  v6 = a4;
  _selectableText = [self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [self _setHistory:v6 withExtending:a3 withAnchor:1 withAffinityDownstream:1];

    [v9 setAmount:0];
    selectedTextRange2 = [_selectableText selectedTextRange];
    isEmpty = [selectedTextRange2 isEmpty];

    if ((isEmpty & 1) != 0 || a3)
    {
      cursor = [v9 cursor];
      v13 = [_selectableText positionFromPosition:cursor inDirection:2 offset:1];
      [v9 setCursor:v13];
    }

    cursor2 = [v9 cursor];
    [v9 setStartPosition:cursor2];

    v15 = [self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v15 = 0;
    v9 = v6;
  }

  return v15;
}

- (id)_positionFromPosition:()UITextInput_Internal inDirection:offset:withAffinityDownstream:
{
  v8 = a3;
  _selectableText = [self _selectableText];
  v10 = [_selectableText positionFromPosition:v8 inDirection:a4 offset:a5];

  return v10;
}

- (void)_setSelectedTextRange:()UITextInput_Internal withAffinityDownstream:
{
  v7 = a3;
  if (objc_opt_respondsToSelector())
  {
    [self setSelectedTextRange:v7 withAffinityDownstream:a4];
  }

  else
  {
    _selectableText = [self _selectableText];
    [_selectableText setSelectedTextRange:v7];
  }
}

- (uint64_t)_selectionAffinity
{
  _selectableText = [self _selectableText];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    tokenizer = [_selectableText tokenizer];
    selectedTextRange = [_selectableText selectedTextRange];
    start = [selectedTextRange start];
    if ([tokenizer isPosition:start atBoundary:3 inDirection:1])
    {
    }

    else
    {
      tokenizer2 = [_selectableText tokenizer];
      selectedTextRange2 = [_selectableText selectedTextRange];
      v8 = [selectedTextRange2 end];
      v9 = [tokenizer2 isPosition:v8 atBoundary:4 inDirection:2];

      if (v9)
      {
        selectionAffinity = 1;
        goto LABEL_8;
      }
    }

    selectionAffinity = 0;
    goto LABEL_8;
  }

  selectionAffinity = [_selectableText selectionAffinity];
LABEL_8:

  return selectionAffinity;
}

- (void)_setGestureRecognizers
{
  v20 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {

    [self _setInternalGestureRecognizers];
  }

  else
  {
    v2 = +[UIKeyboardImpl activeInstance];
    markedTextOverlay = [v2 markedTextOverlay];
    [markedTextOverlay removeFromSuperview];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    interactions = [markedTextOverlay interactions];
    v5 = [interactions countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(interactions);
          }

          [markedTextOverlay removeInteraction:*(*(&v15 + 1) + 8 * i)];
        }

        v6 = [interactions countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    _selectableText = [self _selectableText];
    interactionAssistant = [_selectableText interactionAssistant];
    v11 = interactionAssistant;
    if (interactionAssistant)
    {
      [interactionAssistant setGestureRecognizers];
    }

    else if ([_selectableText _hasMarkedText] && objc_msgSend(v2, "hasEditableMarkedText"))
    {
      markedTextRange = [_selectableText markedTextRange];
      [_selectableText firstRectForRange:markedTextRange];
      [markedTextOverlay setFrame:?];

      textInputView = [_selectableText textInputView];
      [textInputView addSubview:markedTextOverlay];

      v14 = [[UITextPhraseBoundaryInteraction alloc] initWithTextInput:_selectableText];
      [markedTextOverlay addInteraction:v14];
    }
  }
}

- (uint64_t)_usesAsynchronousProtocol
{
  _selectableText = [self _selectableText];
  if (!+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [_selectableText conformsToProtocol:&unk_1F016CC30];
LABEL_9:
      v2 = v3;
      goto LABEL_11;
    }

LABEL_10:
    v2 = 0;
    goto LABEL_11;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([_selectableText conformsToProtocolCached:&unk_1F016C7B0] & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [_selectableText conformsToProtocolCached:&unk_1F016C810];
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v2 = 1;
LABEL_11:

  return v2;
}

- (uint64_t)_hasMarkedText
{
  _selectableText = [self _selectableText];
  if ([_selectableText _usesAsynchronousProtocol] && (!+[UIKBInputDelegateManager isAsyncTextInputEnabled](UIKBInputDelegateManager, "isAsyncTextInputEnabled") || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0))
  {
    hasMarkedText = [_selectableText hasMarkedText];
  }

  else
  {
    markedTextRange = [_selectableText markedTextRange];
    hasMarkedText = markedTextRange != 0;
  }

  return hasMarkedText;
}

- (void)_setMarkedText:()UITextInput_Internal selectedRange:
{
  v8 = MEMORY[0x1E696AAB0];
  v9 = a3;
  v10 = [[v8 alloc] initWithString:v9];

  [self _setAttributedMarkedText:v10 selectedRange:{a4, a5}];
}

- (void)_setAttributedMarkedText:()UITextInput_Internal selectedRange:
{
  v8 = a3;
  _selectableText = [self _selectableText];
  _hasMarkedText = [self _hasMarkedText];
  if (objc_opt_respondsToSelector())
  {
    [_selectableText setAttributedMarkedText:v8 selectedRange:{a4, a5}];
  }

  else
  {
    string = [v8 string];

    [_selectableText setMarkedText:string selectedRange:{a4, a5}];
    v8 = string;
  }

  _hasMarkedText2 = [self _hasMarkedText];
  if (_hasMarkedText != _hasMarkedText2)
  {
    if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
    {
      _selectionDisplayInteraction = [_selectableText _selectionDisplayInteraction];
      v13 = _selectableText;
      markedTextOverlay = _selectionDisplayInteraction;
    }

    else
    {
      markedTextOverlay = 0;
      v13 = _selectableText;
    }

    [v13 _setGestureRecognizers];
    _textSelectingContainer = [self _textSelectingContainer];
    interactionAssistant = [_textSelectingContainer interactionAssistant];
    if (interactionAssistant)
    {
      v21 = interactionAssistant;
      _textSelectingContainer2 = [self _textSelectingContainer];
      interactionAssistant2 = [_textSelectingContainer2 interactionAssistant];
      externalInteractions = [interactionAssistant2 externalInteractions];

      if (externalInteractions)
      {
        _textSelectingContainer3 = [self _textSelectingContainer];
        interactionAssistant3 = [_textSelectingContainer3 interactionAssistant];
        [interactionAssistant3 deactivateSelection];

        [_selectableText _setSelectionDisplayInteraction:markedTextOverlay];
      }
    }

    else
    {
    }

    goto LABEL_15;
  }

  if (_hasMarkedText2)
  {
    _textSelectingContainer4 = [self _textSelectingContainer];
    interactionAssistant4 = [_textSelectingContainer4 interactionAssistant];

    if (!interactionAssistant4)
    {
      v17 = +[UIKeyboardImpl activeInstance];
      markedTextOverlay = [v17 markedTextOverlay];

      markedTextRange = [_selectableText markedTextRange];
      [_selectableText firstRectForRange:markedTextRange];
      [markedTextOverlay setFrame:?];

LABEL_15:
    }
  }
}

- (void)_unmarkText
{
  _selectableText = [self _selectableText];
  _hasMarkedText = [self _hasMarkedText];
  [_selectableText unmarkText];
  if (_hasMarkedText)
  {
    if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
    {
      _selectionDisplayInteraction = [_selectableText _selectionDisplayInteraction];
      v4 = _selectableText;
      v5 = _selectionDisplayInteraction;
    }

    else
    {
      v5 = 0;
      v4 = _selectableText;
    }

    [v4 _setGestureRecognizers];
    _textSelectingContainer = [self _textSelectingContainer];
    interactionAssistant = [_textSelectingContainer interactionAssistant];
    if (interactionAssistant)
    {
      v8 = interactionAssistant;
      _textSelectingContainer2 = [self _textSelectingContainer];
      interactionAssistant2 = [_textSelectingContainer2 interactionAssistant];
      externalInteractions = [interactionAssistant2 externalInteractions];

      if (externalInteractions)
      {
        _textSelectingContainer3 = [self _textSelectingContainer];
        interactionAssistant3 = [_textSelectingContainer3 interactionAssistant];
        [interactionAssistant3 deactivateSelection];

        [_selectableText _setSelectionDisplayInteraction:v5];
      }
    }

    else
    {
    }
  }
}

- (uint64_t)_shouldPerformUICalloutBarButtonReplaceAction:()UITextInput_Internal forText:checkAutocorrection:
{
  v7 = a4;
  v8 = v7;
  if (sel_promptForReplace_ != a3 && sel__promptForReplace_ != a3)
  {
    if (sel__transliterateChinese_ == a3)
    {
      v14 = UIKeyboardEnabledInputModesAllowChineseTransliterationForText(v7);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (a5 && (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 autocorrectSpellingEnabled], v10, !v11) || (objc_msgSend(v8, "_containsCJScriptsOnly") & 1) != 0)
  {
LABEL_11:
    v14 = 0;
    goto LABEL_13;
  }

  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v13 = [v8 componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

  v14 = [v13 count] < 8;
LABEL_13:

  return v14;
}

- (id)_textInteraction
{
  textInputView = [self textInputView];
  _textInteraction = [textInputView _textInteraction];

  return _textInteraction;
}

- (id)inputAssistantItem
{
  textInputView = [self textInputView];
  inputAssistantItem = [textInputView inputAssistantItem];

  return inputAssistantItem;
}

- (id)_responderWindow
{
  textInputView = [self textInputView];
  _responderWindow = [textInputView _responderWindow];

  return _responderWindow;
}

- (id)_selectionDisplayInteraction
{
  textInputView = [self textInputView];
  _selectionDisplayInteraction = [textInputView _selectionDisplayInteraction];

  return _selectionDisplayInteraction;
}

@end