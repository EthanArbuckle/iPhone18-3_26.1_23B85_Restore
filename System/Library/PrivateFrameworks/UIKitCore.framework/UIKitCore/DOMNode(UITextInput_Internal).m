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
  v1 = [a1 _selectableText];
  v2 = [v1 inputDelegate];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v3 = v2;
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
  v2 = [v1 lastEventSource];

  return v2;
}

- (void)set_textInputSource:()UITextInput_Internal
{
  v5 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];

  if (v5)
  {
    v6 = (objc_opt_respondsToSelector() & 1) != 0 && [a1 keyboardType] == 122;
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
      v8 = a1;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
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
  v2 = [a1 _selectableText];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 selectedTextRange];
    if (v4)
    {
      v5 = [a1 _nsrangeForTextRange:v4];
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
  v1 = [a1 _selectableText];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 selectedTextRange];
    if (v3)
    {
      v4 = [v2 markedTextRange];
      v5 = v4;
      if (!v4 || ([v4 start], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "start"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v2, "offsetFromPosition:toPosition:", v6, v7), v7, v6, v8 < 0))
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = [v3 start];
        v10 = [v3 end];
        [v2 offsetFromPosition:v9 toPosition:v10];
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
  v2 = [a1 _selectableText];
  v1 = [v2 _fullRange];
  [v2 setSelectedTextRange:v1];
}

- (uint64_t)_indexForTextPosition:()UITextInput_Internal
{
  v4 = a3;
  v5 = [a1 _selectableText];
  v6 = [v5 beginningOfDocument];
  v7 = [v5 offsetFromPosition:v6 toPosition:v4];

  return v7;
}

- (uint64_t)_nsrangeForTextRange:()UITextInput_Internal
{
  v4 = a3;
  v5 = [a1 _selectableText];
  v6 = [v4 start];
  v7 = [a1 _indexForTextPosition:v6];

  v8 = [v4 start];
  v9 = [v4 end];

  [v5 offsetFromPosition:v8 toPosition:v9];
  return v7;
}

- (id)_textRangeFromNSRange:()UITextInput_Internal
{
  v6 = [a1 _selectableText];
  v7 = [v6 beginningOfDocument];
  v8 = [v6 positionFromPosition:v7 offset:a3];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v6 endOfDocument];
  }

  v11 = v10;

  v12 = [v6 positionFromPosition:v11 offset:a4];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v6 endOfDocument];
  }

  v15 = v14;

  v16 = [v6 textRangeFromPosition:v11 toPosition:v15];

  return v16;
}

- (id)_textRangeFromDirectionalRange:()UITextInput_Internal
{
  v6 = [a1 _selectableText];
  v7 = [v6 selectedTextRange];
  v8 = [v7 start];
  v9 = [v6 positionFromPosition:v8 offset:a3];

  v10 = [v6 positionFromPosition:v9 offset:a4];
  v11 = [v6 textRangeFromPosition:v9 toPosition:v10];

  return v11;
}

- (uint64_t)_characterInRelationToCaretSelection:()UITextInput_Internal
{
  v5 = [a1 _selectableText];
  v6 = [v5 selectedTextRange];
  if (v6 && (v7 = v6, [v5 selectedTextRange], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEmpty"), v8, v7, v9))
  {
    v10 = [a1 _characterInRelationToRangedSelection:a3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (uint64_t)_characterInRelationToRangedSelection:()UITextInput_Internal
{
  v4 = [a1 _selectableText];
  v5 = [v4 selectedTextRange];

  if (!v5)
  {
    goto LABEL_4;
  }

  if (a3 > -101)
  {
    if ((a3 & 0x80000000) == 0)
    {
      v7 = [v4 selectedTextRange];
      v8 = [v7 end];

      if (a3)
      {
        v9 = [v4 positionFromPosition:v8 offset:a3];

        v8 = v9;
      }

      if (!v8)
      {
        goto LABEL_17;
      }

LABEL_11:
      v12 = [v4 positionFromPosition:v8 offset:1];
      if (v12)
      {
        v13 = v12;
        v14 = [v4 textRangeFromPosition:v8 toPosition:v12];
        v15 = [v4 textInRange:v14];
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
    v10 = [v4 selectedTextRange];
    v11 = [v10 start];
    v8 = [v4 positionFromPosition:v11 offset:a3];

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
  v7 = [a1 _selectableText];
  v8 = [v7 positionFromPosition:v6 offset:a4];

  v9 = [v7 positionFromPosition:v8 offset:1];
  v10 = [v7 textRangeFromPosition:v8 toPosition:v9];
  v11 = [v7 textInRange:v10];
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
  v2 = [a1 _selectableText];
  v3 = [v2 selectedTextRange];
  if (v3)
  {
    v4 = [v2 selectedTextRange];
    v5 = [v4 isEmpty];

    if (v5)
    {
      v6 = [v2 selectedTextRange];
      v7 = [v6 start];
      v8 = [a1 _rangeOfEnclosingWord:v7];

      if (v8)
      {
        v3 = [v2 textInRange:v8];
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)_fullText
{
  v1 = [a1 _selectableText];
  v2 = [v1 beginningOfDocument];
  v3 = [v1 endOfDocument];
  v4 = [v1 textRangeFromPosition:v2 toPosition:v3];

  v5 = [v1 textInRange:v4];

  return v5;
}

- (void)_setSelectionToPosition:()UITextInput_Internal
{
  if (a3)
  {
    v4 = a3;
    v6 = [a1 _selectableText];
    v5 = [v6 textRangeFromPosition:v4 toPosition:v4];

    if (v5)
    {
      [v6 setSelectedTextRange:v5];
    }
  }
}

- (BOOL)_selectionAtWordStart
{
  v2 = [a1 _selectableText];
  v3 = [v2 selectedTextRange];
  v4 = [v3 start];
  v5 = [a1 _rangeOfEnclosingWord:v4];

  if (v5)
  {
    v6 = [v5 start];
    v7 = [v2 selectedTextRange];
    v8 = [v7 start];
    v9 = [v2 comparePosition:v6 toPosition:v8];

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
  v1 = [a1 _selectableText];
  v2 = [v1 selectedTextRange];
  v3 = [v2 start];

  if (v3)
  {
    v4 = [v1 beginningOfDocument];
    v5 = [v1 comparePosition:v4 toPosition:v3] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_selectionAtDocumentEnd
{
  v1 = [a1 _selectableText];
  v2 = [v1 selectedTextRange];
  v3 = [v2 end];

  if (v3)
  {
    v4 = [v1 endOfDocument];
    v5 = [v1 comparePosition:v4 toPosition:v3] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isEmptySelection
{
  v1 = [a1 _selectableText];
  v2 = [v1 selectedTextRange];
  v3 = [v2 start];
  v4 = [v2 end];
  v5 = [v1 comparePosition:v3 toPosition:v4] == 0;

  return v5;
}

- (uint64_t)_hasMarkedTextOrRangedSelection
{
  v1 = [a1 _selectableText];
  v2 = [v1 markedTextRange];
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = [v1 selectedTextRange];
    if (v4)
    {
      v5 = [v1 selectedTextRange];
      v3 = [v5 isEmpty] ^ 1;
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
  v5 = [a1 _selectableText];
  if (a3)
  {
    v15 = v5;
    v6 = [v5 selectedTextRange];

    v5 = v15;
    if (v6)
    {
      v7 = [v15 selectedTextRange];
      v8 = [v7 start];

      v9 = [v15 selectedTextRange];
      v10 = [v9 end];

      if (a3 < 1)
      {
        v13 = [a1 _clampedpositionFromPosition:v8 offset:a3];
        v12 = v8;
        v8 = v13;
      }

      else
      {
        v11 = [a1 _clampedpositionFromPosition:v10 offset:a3];
        v12 = v10;
        v10 = v11;
      }

      v14 = [v15 textRangeFromPosition:v8 toPosition:v10];
      [v15 setSelectedTextRange:v14];

      v5 = v15;
    }
  }
}

- (void)_moveCurrentSelection:()UITextInput_Internal
{
  v5 = [a1 _selectableText];
  if (a3)
  {
    v14 = v5;
    v6 = [v5 selectedTextRange];

    v5 = v14;
    if (v6)
    {
      v7 = [v14 selectedTextRange];
      v8 = [v7 isEmpty];

      if (v8)
      {
        v9 = [v14 selectedTextRange];
        v10 = [v9 start];
      }

      else
      {
        v11 = [v14 selectedTextRange];
        v10 = [v11 end];

        if (a3 < 1)
        {
          a3 = (a3 + 1);
        }

        else
        {
          a3 = (a3 - 1);
        }
      }

      v12 = [a1 _clampedpositionFromPosition:v10 offset:a3];

      v13 = [v14 textRangeFromPosition:v12 toPosition:v12];
      if (v13)
      {
        [v14 setSelectedTextRange:v13];
      }

      v5 = v14;
    }
  }
}

- (void)_expandSelectionToBackwardDeletionClusterWithReinsertionOut:()UITextInput_Internal
{
  v24 = [a1 _selectableText];
  v4 = [v24 selectedTextRange];
  v5 = [v4 start];
  v6 = [v4 end];
  v7 = v5;
  if (!v4 || ([v4 isEmpty] & 1) != 0)
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

  v8 = [v24 textInRange:v4];
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

    v10 = [v24 positionFromPosition:v19 offset:-1];

    if (v10)
    {
      v17 = [v24 textRangeFromPosition:v10 toPosition:v19];
      if (v17)
      {
        v18 = [v24 textInRange:v17];
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
  v20 = v24;
  if (v23 && v16 >= 1)
  {
    v21 = v10;

    *v23 = [(__CFString *)v8 substringToIndex:v16];
    v20 = v24;
    v19 = v21;
  }

  if (v19 != v7 && v19 && v6)
  {
    v22 = [v20 textRangeFromPosition:v19 toPosition:v6];
    if (v22)
    {
      [v24 setSelectedTextRange:v22];
    }
  }

LABEL_29:
}

- (void)_expandSelectionToStartOfWordsBeforeCaretSelection:()UITextInput_Internal
{
  v10 = [a1 _selectableText];
  v4 = [v10 selectedTextRange];
  v5 = v4;
  if (a3 && v4)
  {
    v6 = [v4 start];
    v7 = [v10 _positionAtStartOfWords:a3 beforePosition:v6];

    if (v7)
    {
      v8 = [v5 end];
      v9 = [v10 textRangeFromPosition:v7 toPosition:v8];
      [v10 setSelectedTextRange:v9];
    }
  }
}

- (id)_positionWithinRange:()UITextInput_Internal farthestInDirection:
{
  v6 = a3;
  v7 = [a1 _selectableText];
  v8 = v7;
  if (a4 == 1)
  {
    v9 = [v6 start];
    goto LABEL_7;
  }

  if (!a4)
  {
    v9 = [v6 end];
LABEL_7:
    v10 = v9;
    goto LABEL_8;
  }

  if (v6)
  {
    v9 = [v7 positionWithinRange:v6 farthestInDirection:a4];
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
  v9 = [a1 _selectableText];
  if (v8)
  {
    v10 = -3;
    while (!__CFADD__(v10++, 1))
    {
      v12 = [v9 tokenizer];
      v13 = [v12 positionFromPosition:v8 toBoundary:a4 inDirection:a5];

      if (!v13)
      {
        v17 = 0;
        v8 = 0;
        goto LABEL_12;
      }

      v14 = [v9 tokenizer];
      if ([v14 isPosition:v13 atBoundary:a4 inDirection:a5])
      {

LABEL_11:
        v17 = v13;
        v8 = v17;
        goto LABEL_12;
      }

      v15 = [v9 tokenizer];
      v16 = [v15 isPosition:v13 atBoundary:a4 inDirection:{objc_msgSend(a1, "_opposingDirectionFromDirection:", a5)}];

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
  v7 = [a1 _selectableText];
  v8 = v7;
  if (!a3 || !v6)
  {
    v6 = v6;
    v10 = v6;
    goto LABEL_13;
  }

  v9 = [v7 tokenizer];
  v10 = [v9 rangeEnclosingPosition:v6 withGranularity:1 inDirection:1];

  if (v10)
  {
    goto LABEL_4;
  }

  v18 = [v8 tokenizer];
  v19 = [v18 positionFromPosition:v6 toBoundary:1 inDirection:1];

  if (!v19)
  {
    v10 = 0;
    goto LABEL_13;
  }

  v20 = [v8 tokenizer];
  v10 = [v20 rangeEnclosingPosition:v19 withGranularity:1 inDirection:1];

  if (v10)
  {
LABEL_4:
    v11 = [v10 start];

    if (a3 >= 2)
    {
      v12 = a3 - 1;
      while (1)
      {
        v13 = [v8 tokenizer];
        v14 = [v13 positionFromPosition:v11 toBoundary:1 inDirection:1];

        if (!v14)
        {
          break;
        }

        v15 = [v8 tokenizer];
        v16 = [v15 positionFromPosition:v14 toBoundary:1 inDirection:1];

        if (!v16)
        {
          break;
        }

        v11 = v16;
        if (!--v12)
        {
          goto LABEL_12;
        }
      }
    }

    v16 = v11;
LABEL_12:
    v6 = v16;

    v10 = v6;
  }

LABEL_13:

  return v10;
}

- (void)_setCaretSelectionAtEndOfSelection
{
  v6 = [a1 _selectableText];
  v1 = [v6 selectedTextRange];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 end];
    v4 = [v2 end];
    v5 = [v6 textRangeFromPosition:v3 toPosition:v4];
    [v6 setSelectedTextRange:v5];
  }
}

- (void)_deleteByWord
{
  v9 = [a1 _selectableText];
  v2 = [v9 selectedTextRange];
  v3 = [v9 inputDelegate];
  [v3 textWillChange:v9];

  if ([v2 isEmpty])
  {
    v4 = [v2 start];
    v5 = [v9 _positionAtStartOfWords:1 beforePosition:v4];

    if (v5)
    {
      v6 = [v2 end];
      v7 = [v9 textRangeFromPosition:v5 toPosition:v6];

      v2 = v7;
    }
  }

  [a1 _deleteTextRange:v2];
  v8 = [v9 inputDelegate];
  [v8 textDidChange:v9];
}

- (void)_deleteForwardByWord
{
  v17 = [a1 _selectableText];
  v2 = [v17 selectedTextRange];
  v3 = [v17 inputDelegate];
  [v3 textWillChange:v17];

  if ([v2 isEmpty])
  {
    v4 = [a1 _selectableText];
    v5 = v4;
    if (v2)
    {
      v6 = [v4 tokenizer];
      v7 = [v2 end];
      v8 = [v6 rangeEnclosingPosition:v7 withGranularity:1 inDirection:0];

      if (v8 || ([v5 tokenizer], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "end"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "positionFromPosition:toBoundary:inDirection:", v14, 1, 0), v15 = objc_claimAutoreleasedReturnValue(), v14, v13, v15) && (objc_msgSend(v5, "tokenizer"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "rangeEnclosingPosition:withGranularity:inDirection:", v15, 1, 0), v8 = objc_claimAutoreleasedReturnValue(), v16, v15, v8))
      {
        v9 = [v2 start];
        v10 = [v8 end];
        v11 = [v5 textRangeFromPosition:v9 toPosition:v10];

        v2 = v11;
      }
    }
  }

  [a1 _deleteTextRange:v2];
  v12 = [v17 inputDelegate];
  [v12 textDidChange:v17];
}

- (void)_deleteToStartOfLine
{
  v12 = [a1 _selectableText];
  v2 = [v12 selectedTextRange];
  v3 = [v12 inputDelegate];
  [v3 textWillChange:v12];

  if ([v2 isEmpty])
  {
    v4 = [v12 tokenizer];
    v5 = [v2 start];
    v6 = [v4 positionFromPosition:v5 toBoundary:4 inDirection:1];

    if (v6)
    {
      v7 = [v2 start];
      v8 = [v12 comparePosition:v7 toPosition:v6];

      if (v8 == 1)
      {
        v9 = [v2 start];
        v10 = [v12 textRangeFromPosition:v6 toPosition:v9];

        v2 = v10;
      }
    }
  }

  [a1 _deleteTextRange:v2];
  v11 = [v12 inputDelegate];
  [v11 textDidChange:v12];
}

- (void)_deleteToEndOfLine
{
  v12 = [a1 _selectableText];
  v2 = [v12 selectedTextRange];
  v3 = [v12 inputDelegate];
  [v3 textWillChange:v12];

  if ([v2 isEmpty])
  {
    v4 = [v12 tokenizer];
    v5 = [v2 end];
    v6 = [v4 positionFromPosition:v5 toBoundary:4 inDirection:0];

    if (v6)
    {
      v7 = [v2 end];
      v8 = [v12 comparePosition:v6 toPosition:v7];

      if (v8 == 1)
      {
        v9 = [v2 end];
        v10 = [v12 textRangeFromPosition:v9 toPosition:v6];

        v2 = v10;
      }
    }
  }

  [a1 _deleteTextRange:v2];
  v11 = [v12 inputDelegate];
  [v11 textDidChange:v12];
}

- (void)_deleteToEndOfParagraph
{
  v12 = [a1 _selectableText];
  v2 = [v12 selectedTextRange];
  v3 = [v12 inputDelegate];
  [v3 textWillChange:v12];

  if ([v2 isEmpty])
  {
    v4 = [v12 tokenizer];
    v5 = [v2 end];
    v6 = [v4 positionFromPosition:v5 toBoundary:3 inDirection:0];

    if (v6)
    {
      v7 = [v2 end];
      v8 = [v12 comparePosition:v6 toPosition:v7];

      if (v8 == 1)
      {
        v9 = [v2 end];
        v10 = [v12 textRangeFromPosition:v9 toPosition:v6];

        v2 = v10;
      }
    }
  }

  [a1 _deleteTextRange:v2];
  v11 = [v12 inputDelegate];
  [v11 textDidChange:v12];
}

- (void)_deleteTextRange:()UITextInput_Internal
{
  v4 = a3;
  v9 = [a1 _selectableText];
  v5 = [v9 selectedTextRange];
  [v9 setSelectedTextRange:v4];

  v6 = [v9 selectedTextRange];
  v7 = [v6 isEmpty];

  if ((v7 & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = v9;
      if ([v8 keyboardInputShouldDelete:v8])
      {
        [v8 deleteBackward];
      }

      else
      {
        [v8 setSelectedTextRange:v5];
      }
    }

    else
    {
      [v9 deleteBackward];
    }
  }
}

- (void)_deleteBackwardAndNotify:()UITextInput_Internal
{
  v1 = [a1 _keyInput];
  [v1 deleteBackward];
}

- (void)_deleteForwardAndNotify:()UITextInput_Internal
{
  v12 = [a1 _selectableText];
  v2 = [v12 selectedTextRange];
  v3 = [v12 inputDelegate];
  [v3 textWillChange:v12];

  if ([v2 isEmpty])
  {
    v4 = [v12 tokenizer];
    v5 = [v2 end];
    v6 = [v4 positionFromPosition:v5 toBoundary:0 inDirection:0];

    if (v6)
    {
      v7 = [v2 end];
      v8 = [v12 comparePosition:v6 toPosition:v7];

      if (v8 == 1)
      {
        v9 = [v2 end];
        v10 = [v12 textRangeFromPosition:v9 toPosition:v6];

        v2 = v10;
      }
    }
  }

  [a1 _deleteTextRange:v2];
  v11 = [v12 inputDelegate];
  [v11 textDidChange:v12];
}

- (void)_transpose
{
  v18 = [a1 _selectableText];
  v1 = [v18 selectedTextRange];
  if ([v1 isEmpty])
  {
    v2 = [v18 inputDelegate];
    [v2 textWillChange:v18];

    v3 = [v18 tokenizer];
    v4 = [v1 start];
    v5 = [v3 positionFromPosition:v4 toBoundary:0 inDirection:1];

    v6 = [v18 tokenizer];
    v7 = [v1 end];
    v8 = [v6 positionFromPosition:v7 toBoundary:0 inDirection:0];

    if (v5 && v8)
    {
      v9 = [v1 start];
      v10 = [v18 textRangeFromPosition:v5 toPosition:v9];

      v11 = [v1 end];
      v12 = [v18 textRangeFromPosition:v11 toPosition:v8];

      if (v10 && v12)
      {
        v13 = [v18 textInRange:v10];
        v14 = [v18 textInRange:v12];
        v15 = [v14 stringByAppendingString:v13];
        v16 = [v18 textRangeFromPosition:v5 toPosition:v8];
        if (v16)
        {
          [v18 replaceRange:v16 withText:v15];
        }
      }
    }

    v17 = [v18 inputDelegate];
    [v17 textDidChange:v18];
  }
}

- (void)_replaceCurrentWordWithText:()UITextInput_Internal
{
  v8 = a3;
  v4 = [a1 _selectableText];
  v5 = [v4 selectedTextRange];
  v6 = [v5 start];
  v7 = [a1 _rangeOfEnclosingWord:v6];

  if (v7)
  {
    [v4 replaceRange:v7 withText:v8];
  }
}

- (void)_replaceDocumentWithText:()UITextInput_Internal
{
  v7 = a3;
  v4 = [a1 _selectableText];
  v5 = [a1 _fullRange];
  v6 = v5;
  if (v5)
  {
    if (([v5 isEmpty] & 1) == 0)
    {
      [v4 replaceRange:v6 withText:&stru_1EFB14550];
    }

    [v4 insertText:v7];
  }
}

- (void)_scrollRectToVisible:()UITextInput_Internal animated:
{
  v14 = [a1 _selectableText];
  v12 = [v14 textInputView];
  if (objc_opt_respondsToSelector())
  {
    v13 = [v12 performSelector:sel__enclosingScrollerIncludingSelf];
    [v13 convertRect:v12 fromView:{a2, a3, a4, a5}];
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
  v8 = [a1 _selectableText];
  if (![v6 length])
  {
    v11 = [v8 textRangeFromPosition:v7 toPosition:v7];
    goto LABEL_30;
  }

  v9 = [v8 _rangeOfEnclosingWord:v7];
  if (v9)
  {
    v10 = [v8 textInRange:v9];
  }

  else
  {
    v10 = 0;
  }

  if (![v10 isEqualToString:v6])
  {
    v13 = [v8 positionFromPosition:v7 offset:{-objc_msgSend(v6, "length")}];
    if (!v13)
    {
      v13 = [v8 beginningOfDocument];
    }

    v14 = [v8 textRangeFromPosition:v13 toPosition:v7];

    if (v14)
    {
      v15 = [v8 textInRange:v14];

      v16 = [v15 length];
      if (v16 <= [v6 length])
      {
        v12 = v14;
        v10 = v15;
LABEL_25:
        v21 = [a1 _normalizedStringForRangeComparison:v10];
        v22 = [a1 _normalizedStringForRangeComparison:v6];
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
        v18 = v13;
        v13 = [v8 positionFromPosition:v13 offset:1];

        if (!v13)
        {
          break;
        }

        if ([v8 comparePosition:v13 toPosition:v7] != -1)
        {

          break;
        }

        v12 = [v8 textRangeFromPosition:v13 toPosition:v7];

        if (!v12)
        {
          goto LABEL_24;
        }

        v10 = [v8 textInRange:v12];

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

      v13 = 0;
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
    v7 = [a1 _selectableText];
    v8 = [v7 tokenizer];
    v9 = [v8 rangeEnclosingPosition:v6 withGranularity:a3 inDirection:0];

    if (!v9)
    {
      v10 = [v7 tokenizer];
      v9 = [v10 rangeEnclosingPosition:v6 withGranularity:a3 inDirection:1];
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
  v1 = [a1 _selectableText];
  v2 = [v1 beginningOfDocument];
  v3 = [v1 endOfDocument];
  v4 = [v1 textRangeFromPosition:v2 toPosition:v3];

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

  v7 = [a1 _selectableText];
  v8 = [a1 _rangeOfTextUnit:a3 enclosingPosition:v6];
  if (!v8)
  {
    v9 = [v7 tokenizer];
    v10 = 1;
    v11 = [v9 positionFromPosition:v6 toBoundary:a3 inDirection:1];

    v12 = v11;
    if (!v11)
    {
      v13 = [v7 tokenizer];
      v12 = [v13 positionFromPosition:v6 toBoundary:a3 inDirection:0];

      if (!v12)
      {
        v15 = 0;
        goto LABEL_11;
      }

      v10 = 0;
    }

    v14 = [v7 tokenizer];
    v15 = [v14 rangeEnclosingPosition:v12 withGranularity:a3 inDirection:v10];

    if (v11)
    {
      v16 = [v15 start];
      if (v16)
      {
        v17 = v7;
        v18 = v16;
        v19 = v6;
LABEL_13:
        v8 = [v17 textRangeFromPosition:v18 toPosition:v19];
LABEL_15:

        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_11:
    v16 = [v15 end];
    if (v16)
    {
      v17 = v7;
      v18 = v6;
      v19 = v16;
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
  v7 = [a1 _nsrangeForTextRange:a3];
  v9 = v8;
  v10 = [a1 _nsrangeForTextRange:v6];
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
  v7 = [a1 _nsrangeForTextRange:a3];
  v9 = v8;
  v10 = [a1 _nsrangeForTextRange:v6];
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
  v8 = a1;
  v9 = [v6 start];
  v10 = [v7 start];
  if ([v8 comparePosition:v9 toPosition:v10] == 1)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  v12 = [v11 start];

  v13 = [v6 end];
  v14 = [v7 end];
  if ([v8 comparePosition:v13 toPosition:v14] == -1)
  {
    v15 = v6;
  }

  else
  {
    v15 = v7;
  }

  v16 = [v15 end];

  v17 = [v8 textRangeFromPosition:v12 toPosition:v16];

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
      v10 = a1;
      v11 = [v6 start];
      v12 = [v8 start];
      v13 = [v10 comparePosition:v11 toPosition:v12];

      v14 = [v6 end];
      v15 = [v8 end];
      v16 = v13 | [v10 comparePosition:v14 toPosition:v15];

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
    v8 = [a1 _findDocumentBoundaryFromPosition:v6];
  }

  else if (a4 == 1)
  {
    v8 = [a1 _findPleasingWordBoundaryFromPosition:v6];
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
  v5 = [a1 _selectableText];
  v6 = [v5 tokenizer];
  if ([v6 isPosition:v4 atBoundary:4 inDirection:0])
  {
    goto LABEL_2;
  }

  v9 = [v6 isPosition:v4 withinTextUnit:1 inDirection:0];
  v10 = [v5 tokenizer];
  v11 = v10;
  if (v9)
  {
    v12 = [v10 rangeEnclosingPosition:v4 withGranularity:1 inDirection:0];

    v13 = [v12 start];
    v14 = [v5 offsetFromPosition:v13 toPosition:v4];

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

  v15 = [v10 isPosition:v4 atBoundary:1 inDirection:1];

  if (v15)
  {
LABEL_2:
    v7 = v4;
LABEL_3:
    v8 = v7;
    goto LABEL_12;
  }

  v16 = [v5 tokenizer];
  v8 = [v16 positionFromPosition:v4 toBoundary:1 inDirection:0];

  if (!v8)
  {
    v7 = [v5 endOfDocument];
    goto LABEL_3;
  }

LABEL_12:

  return v8;
}

- (id)_findDocumentBoundaryFromPosition:()UITextInput_Internal
{
  v4 = a3;
  v5 = [a1 _selectableText];
  v6 = [v5 beginningOfDocument];
  v7 = [v5 endOfDocument];
  v8 = [v5 offsetFromPosition:v6 toPosition:v4];
  v9 = [v5 offsetFromPosition:v4 toPosition:v7];

  if (v8 <= v9)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;
  v12 = v11;

  return v11;
}

- (id)_underlineRectsByDocumentLineForSelectionRange:()UITextInput_Internal
{
  v4 = a3;
  v5 = [a1 _selectableText];
  v6 = [v5 tokenizer];
  v7 = [v4 start];
  v8 = [v6 rangeEnclosingPosition:v7 withGranularity:4 inDirection:0];

  v9 = [v4 end];
  v10 = [v6 rangeEnclosingPosition:v9 withGranularity:4 inDirection:0];

  if (!v8 || !v10 || ([v8 isEmpty] & 1) != 0 || (objc_msgSend(v10, "isEmpty") & 1) != 0 || (objc_msgSend(v8, "isEqual:", v10) & 1) != 0)
  {
    goto LABEL_9;
  }

  v11 = [v8 start];
  v12 = [v10 start];
  if ([v11 isEqual:v12])
  {

LABEL_9:
    v15 = [v5 selectionRectsForRange:v4];
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
  v17 = [v4 start];
  v18 = [v8 end];
  v19 = [v5 textRangeFromPosition:v17 toPosition:v18];

  v29 = v19;
  [a1 _updateSelectedRects:v15 byTrimmingWhitespaceInRange:v19 inDocument:v5];
  v20 = [v8 end];
  v21 = [v6 rangeEnclosingPosition:v20 withGranularity:4 inDirection:0];

  if (v21)
  {
    while (([v21 isEqual:v10] & 1) == 0)
    {
      v22 = [v21 end];
      v23 = [v6 rangeEnclosingPosition:v22 withGranularity:4 inDirection:0];

      if ([v23 isEqual:v21])
      {

        break;
      }

      v24 = [v5 selectionRectsForRange:v21];
      [v15 addObjectsFromArray:v24];

      v21 = v23;
      if (!v23)
      {
        break;
      }
    }
  }

  v25 = [v10 start];
  v26 = [v4 end];
  v27 = [v5 textRangeFromPosition:v25 toPosition:v26];

  if (v27)
  {
    [a1 _updateSelectedRects:v15 byTrimmingWhitespaceInRange:v27 inDocument:v5];
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
    v11 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v12 = [v10 stringByTrimmingCharactersInSet:v11];

    if ([v12 length])
    {
      v13 = [v7 start];
      v14 = [v9 positionFromPosition:v13 offset:{objc_msgSend(v12, "length")}];

      v15 = [v7 start];
      v16 = [v9 textRangeFromPosition:v15 toPosition:v14];

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
    v5 = [a1 _selectableText];
    v58 = v4;
    v6 = v4;
    v7 = [v5 tokenizer];
    v8 = [v6 start];
    v9 = [v7 positionFromPosition:v8 toBoundary:2 inDirection:1];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v5 beginningOfDocument];
    }

    v12 = v11;

    v13 = [v6 start];
    v14 = [v5 offsetFromPosition:v12 toPosition:v13];

    if (v14 >= 65)
    {
      v15 = [v6 start];
      v16 = [v5 positionFromPosition:v15 offset:-64];

      v12 = [v7 positionFromPosition:v16 toBoundary:1 inDirection:0];

      if (!v12)
      {
        v17 = [v6 start];
        v18 = [v5 positionFromPosition:v17 offset:-64];

        v12 = [v7 positionFromPosition:v18 toBoundary:0 inDirection:0];
      }

      v19 = [v6 start];
      v20 = [v5 comparePosition:v12 toPosition:v19];

      if (v20 == 1)
      {
        v21 = [v6 start];
        v22 = [v7 positionFromPosition:v21 toBoundary:0 inDirection:1];
        v23 = v22;
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = [v6 start];
        }

        v25 = v24;

        v12 = v25;
      }
    }

    v26 = [v6 end];
    v27 = [v7 positionFromPosition:v26 toBoundary:2 inDirection:0];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = [v5 endOfDocument];
    }

    v30 = v29;

    v31 = [v6 end];
    v32 = [v5 offsetFromPosition:v31 toPosition:v30];

    if (v32 >= 65)
    {
      v33 = [v6 end];
      v34 = [v5 positionFromPosition:v33 offset:64];

      v30 = [v7 positionFromPosition:v34 toBoundary:1 inDirection:1];

      if (!v30)
      {
        v35 = [v6 end];
        v36 = [v5 positionFromPosition:v35 offset:64];

        v30 = [v7 positionFromPosition:v36 toBoundary:0 inDirection:1];
      }

      v37 = [v6 end];
      v38 = [v5 comparePosition:v37 toPosition:v30];

      if (v38 == 1)
      {
        v39 = [v6 end];
        v40 = [v7 positionFromPosition:v39 toBoundary:0 inDirection:0];
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

    v57 = v7;
    v59 = [v5 textRangeFromPosition:v12 toPosition:v30];
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v44 = [v5 keyboardType], v45 = 420, v44 != 3) && v44 != 10 && v44 != 120)
    {
      v45 = 428;
    }

    v46 = [v5 beginningOfDocument];
    v56 = v12;
    v47 = [v5 offsetFromPosition:v46 toPosition:v12];

    v48 = [a1 _nsrangeForTextRange:v6];
    v50 = v49;
    v51 = [v5 textInRange:v59];
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
      v54 = [a1 _textRangeFromNSRange:?];

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
    v8 = [a1 _selectableText];
    v9 = v8;
    if (a4 < 1)
    {
      v10 = [v8 positionFromPosition:v7 offset:a4];
      if (!v10)
      {
        v10 = [v9 beginningOfDocument];
      }
    }

    else
    {
      v10 = [v8 positionFromPosition:v7 offset:a4];
      if (!v10)
      {
        v10 = [v9 endOfDocument];
      }
    }

    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  return v11;
}

- (id)_rangeFromCurrentRangeWithDelta:()UITextInput_Internal
{
  v6 = [a1 _selectableText];
  v7 = [v6 selectedTextRange];
  v8 = v7;
  if (a3 | a4)
  {
    v10 = a4 + a3;
    v11 = [v7 start];
    v12 = [v8 end];
    if (a3)
    {
      v13 = [v6 positionFromPosition:v11 offset:a3];

      v11 = v13;
      if (!v13)
      {
        if (a3 < 0)
        {
          [v6 beginningOfDocument];
        }

        else
        {
          [v6 endOfDocument];
        }
        v11 = ;
      }
    }

    if (v10)
    {
      v14 = [v6 positionFromPosition:v12 offset:v10];

      v12 = v14;
      if (!v14)
      {
        if (v10 < 0)
        {
          v15 = v11;
        }

        else
        {
          v15 = [v6 endOfDocument];
        }

        v12 = v15;
      }
    }

    v16 = [v6 textRangeFromPosition:v11 toPosition:v12];
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
    v9 = v7;
  }

  return v9;
}

- (id)_textColorForCaretSelection
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 textColorForCaretSelection];
  }

  else
  {
    v3 = [a1 _selectableText];
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 selectedTextRange];
      v5 = [v4 end];

      if (v5)
      {
        v6 = [v3 endOfDocument];
        if (v6 && [v3 comparePosition:v6 toPosition:v5] == -1)
        {
          v7 = v6;

          v5 = v7;
        }

        v8 = [v3 textStylingAtPosition:v5 inDirection:0];
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

      v2 = [v8 objectForKey:v9];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (id)_fontForCaretSelection
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 fontForCaretSelection];
  }

  else
  {
    v3 = [a1 _selectableText];
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 selectedTextRange];
      v5 = [v4 end];

      if (v5)
      {
        v6 = [v3 endOfDocument];
        if (v6 && [v3 comparePosition:v6 toPosition:v5] == -1)
        {
          v7 = v6;

          v5 = v7;
        }

        v8 = [v3 textStylingAtPosition:v5 inDirection:0];
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

      v2 = [v8 objectForKey:v9];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (void)_updateSelectionWithTextRange:()UITextInput_Internal withAffinityDownstream:
{
  v6 = a3;
  v7 = [a1 _selectableText];
  [v7 _setSelectedTextRange:v6 withAffinityDownstream:a4];
}

- (id)_setSelectionRangeWithHistory:()UITextInput_Internal
{
  v4 = a3;
  v5 = [a1 _selectableText];
  v6 = [v4 cursor];

  if (!v6)
  {
    goto LABEL_19;
  }

  if ([v4 anchor] == 1)
  {
    v7 = [v4 cursor];
LABEL_5:
    [v4 setEnd:v7];
    goto LABEL_6;
  }

  v8 = [v4 anchor];
  v7 = [v4 cursor];
  [v4 setStart:v7];
  if (v8 != 2)
  {
    goto LABEL_5;
  }

LABEL_6:

  v9 = [v4 start];
  v10 = [v4 end];
  v11 = [v5 comparePosition:v9 toPosition:v10];

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

  v13 = [v4 start];
  v14 = [v4 end];
  v15 = [v5 textRangeFromPosition:v13 toPosition:v14];

  [a1 _updateSelectionWithTextRange:v15 withAffinityDownstream:{objc_msgSend(v4, "affinityDownstream")}];
  if ([v4 anchor])
  {
    if ([v4 anchor] == 1)
    {
      [v5 _lastRectForRange:v15];
    }

    else
    {
      [v5 firstRectForRange:v15];
    }

    [v5 _scrollRectToVisible:0 animated:?];
  }

  else if (objc_opt_respondsToSelector())
  {
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    v17 = *MEMORY[0x1E69E3030];
    v18 = [a1 webView];
    [v16 postNotificationName:v17 object:v18];
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

  v12 = [a1 _selectableText];
  v13 = [v12 selectedTextRange];
  v14 = [v13 start];
  [(UITextInputArrowKeyHistory *)v11 setStart:v14];

  v15 = [v12 selectedTextRange];
  v16 = [v15 end];
  [(UITextInputArrowKeyHistory *)v11 setEnd:v16];

  v17 = [(UITextInputArrowKeyHistory *)v11 anchor];
  v18 = [v12 selectedTextRange];
  v19 = v18;
  if (a5 == 2)
  {
    if (v17 == 1)
    {
LABEL_7:
      v20 = [v18 end];
      goto LABEL_10;
    }
  }

  else if (v17 != 2)
  {
    goto LABEL_7;
  }

  v20 = [v18 start];
LABEL_10:
  v21 = v20;
  [(UITextInputArrowKeyHistory *)v11 setCursor:v20];

  v22 = [(UITextInputArrowKeyHistory *)v11 startPosition];

  if (!v22)
  {
    v23 = [(UITextInputArrowKeyHistory *)v11 cursor];
    [(UITextInputArrowKeyHistory *)v11 setStartPosition:v23];

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
  if (!-[UITextInputArrowKeyHistory anchor](v11, "anchor") || [a1 _isEmptySelection])
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
  v7 = [a1 _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [a1 _setHistory:v6 withExtending:a3 withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    v10 = [v7 tokenizer];
    v11 = [v9 cursor];
    v12 = [v10 isPosition:v11 withinTextUnit:1 inDirection:1];

    if (v12)
    {
LABEL_7:
      v22 = [v7 tokenizer];
      v23 = [v9 cursor];
      v24 = [v22 positionFromPosition:v23 toBoundary:1 inDirection:1];
      [v9 setCursor:v24];

      v25 = [v9 cursor];
      [v9 setStartPosition:v25];

      v26 = [a1 _setSelectionRangeWithHistory:v9];
      goto LABEL_9;
    }

    v13 = [v7 tokenizer];
    v14 = [v9 cursor];
    v15 = [v13 positionFromPosition:v14 toBoundary:1 inDirection:1];

    if (v15)
    {
LABEL_4:
      v16 = [v7 tokenizer];
      v17 = [v9 cursor];
      v18 = [v16 isPosition:v17 withinTextUnit:1 inDirection:1];

      if ((v18 & 1) == 0)
      {
        v19 = [v7 tokenizer];
        v20 = [v9 cursor];
        v21 = [v19 positionFromPosition:v20 toBoundary:1 inDirection:1];
        [v9 setCursor:v21];
      }

      goto LABEL_7;
    }

    v15 = [v9 cursor];
    v28 = 0;
    while (1)
    {
      v29 = [v7 beginningOfDocument];
      v30 = [v7 comparePosition:v29 toPosition:v15];

      if (!v30)
      {
        break;
      }

      if (v28 && ![v7 comparePosition:v28 toPosition:v15])
      {
        v35 = [v7 beginningOfDocument];
        [v9 setCursor:v35];

        v36 = [v9 cursor];
        [v9 setStartPosition:v36];

        break;
      }

      v31 = v15;

      v32 = [v7 tokenizer];
      v15 = [v32 positionFromPosition:v31 toBoundary:3 inDirection:1];

      v33 = [v7 tokenizer];
      v34 = [v33 isPosition:v15 atBoundary:3 inDirection:1];

      v28 = v31;
      if ((v34 & 1) == 0)
      {
        [v9 setCursor:v15];

        goto LABEL_4;
      }
    }

    v26 = [a1 _setSelectionRangeWithHistory:v9];
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
  v7 = [a1 _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [a1 _setHistory:v6 withExtending:a3 withAnchor:1 withAffinityDownstream:1];

    [v9 setAmount:0];
    v10 = [v7 tokenizer];
    v11 = [v9 cursor];
    v12 = [v10 isPosition:v11 withinTextUnit:1 inDirection:0];

    if ((v12 & 1) == 0)
    {
      v13 = [v7 tokenizer];
      v14 = [v9 cursor];
      v15 = [v13 positionFromPosition:v14 toBoundary:1 inDirection:0];

      if (v15)
      {
        [v9 setCursor:v15];
      }
    }

    v16 = [v7 tokenizer];
    v17 = [v9 cursor];
    v18 = [v16 positionFromPosition:v17 toBoundary:1 inDirection:0];
    [v9 setCursor:v18];

    v19 = [v9 cursor];

    if (!v19)
    {
      v20 = [v7 endOfDocument];
      [v9 setCursor:v20];
    }

    v21 = [v9 cursor];
    [v9 setStartPosition:v21];

    v22 = [a1 _setSelectionRangeWithHistory:v9];
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
  v7 = [a1 _selectableText];
  v8 = [v7 selectedTextRange];

  if (!v8)
  {
    v17 = 0;
    v10 = v6;
    goto LABEL_11;
  }

  v9 = [v6 affinityDownstream];
  v10 = [a1 _setHistory:v6 withExtending:a3 withAnchor:2 withAffinityDownstream:1];

  [v10 setAmount:0];
  v11 = [v7 tokenizer];
  v12 = [v7 selectedTextRange];
  v13 = [v12 end];
  if (([v11 isPosition:v13 atBoundary:3 inDirection:1] & 1) == 0)
  {
    if (v9)
    {
      v14 = [v7 tokenizer];
      v15 = [v10 cursor];
      v16 = [v14 isPosition:v15 atBoundary:4 inDirection:1];

      if (v16)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v11 = [v7 tokenizer];
    v12 = [v10 cursor];
    v13 = [v11 positionFromPosition:v12 toBoundary:4 inDirection:1];
    [v10 setCursor:v13];
  }

LABEL_10:
  v18 = [v10 cursor];
  [v10 setStartPosition:v18];

  v17 = [a1 _setSelectionRangeWithHistory:v10];
LABEL_11:

  return v17;
}

- (id)_moveToEndOfLine:()UITextInput_Internal withHistory:
{
  v6 = a4;
  v7 = [a1 _selectableText];
  v8 = [v7 selectedTextRange];

  if (!v8)
  {
    v14 = 0;
    v10 = v6;
    goto LABEL_10;
  }

  v9 = [v6 affinityDownstream];
  v10 = [a1 _setHistory:v6 withExtending:a3 withAnchor:1 withAffinityDownstream:0];

  [v10 setAmount:0];
  v11 = [v7 tokenizer];
  v12 = [v7 selectedTextRange];
  v13 = [v12 end];
  if ([v11 isPosition:v13 atBoundary:3 inDirection:0])
  {
    goto LABEL_8;
  }

  if (v9)
  {

LABEL_7:
    v11 = [v7 tokenizer];
    v12 = [v10 cursor];
    v13 = [v11 positionFromPosition:v12 toBoundary:4 inDirection:0];
    [v10 setCursor:v13];
LABEL_8:

    goto LABEL_9;
  }

  v15 = [v7 tokenizer];
  v16 = [v10 cursor];
  v17 = [v15 isPosition:v16 atBoundary:4 inDirection:0];

  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v18 = [v10 cursor];
  [v10 setStartPosition:v18];

  v14 = [a1 _setSelectionRangeWithHistory:v10];
LABEL_10:

  return v14;
}

- (id)_moveToStartOfParagraph:()UITextInput_Internal withHistory:
{
  v6 = a4;
  v7 = [a1 _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [a1 _setHistory:v6 withExtending:a3 withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    v10 = [v7 tokenizer];
    v11 = [v9 cursor];
    v12 = [v10 isPosition:v11 atBoundary:3 inDirection:1];

    if (v12)
    {
      v13 = [v9 cursor];
      v14 = [v10 positionFromPosition:v13 toBoundary:0 inDirection:1];

      if (v14)
      {
        [v9 setCursor:v14];
      }
    }

    v15 = [v9 cursor];
    v16 = [v10 positionFromPosition:v15 toBoundary:3 inDirection:1];
    [v9 setCursor:v16];

    v17 = [v9 cursor];
    [v9 setStartPosition:v17];

    v18 = [a1 _setSelectionRangeWithHistory:v9];
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
  v7 = [a1 _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [a1 _setHistory:v6 withExtending:a3 withAnchor:1 withAffinityDownstream:0];

    [v9 setAmount:0];
    v10 = [v7 tokenizer];
    v11 = [v9 cursor];
    v12 = [v10 isPosition:v11 atBoundary:3 inDirection:0];

    if (v12)
    {
      v13 = [v9 cursor];
      v14 = [v10 positionFromPosition:v13 toBoundary:0 inDirection:0];

      if (v14)
      {
        [v9 setCursor:v14];
      }
    }

    v15 = [v9 cursor];
    v16 = [v10 positionFromPosition:v15 toBoundary:3 inDirection:0];
    [v9 setCursor:v16];

    v17 = [v9 cursor];
    [v9 setStartPosition:v17];

    v18 = [a1 _setSelectionRangeWithHistory:v9];
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
  v7 = [a1 _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [a1 _setHistory:v6 withExtending:a3 withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    v10 = [v7 beginningOfDocument];
    [v9 setCursor:v10];

    v11 = [v9 cursor];
    [v9 setStartPosition:v11];

    v12 = [a1 _setSelectionRangeWithHistory:v9];
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
  v7 = [a1 _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [a1 _setHistory:v6 withExtending:a3 withAnchor:1 withAffinityDownstream:0];

    [v9 setAmount:0];
    v10 = [v7 endOfDocument];
    [v9 setCursor:v10];

    v11 = [v9 cursor];
    [v9 setStartPosition:v11];

    v12 = [v7 tokenizer];
    v13 = [v9 cursor];
    v14 = [v12 isPosition:v13 atBoundary:4 inDirection:3];

    if (v14)
    {
      [v9 setAffinityDownstream:1];
    }

    v15 = [a1 _setSelectionRangeWithHistory:v9];
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
  v7 = [a1 _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    if (v6)
    {
      v9 = [v6 affinityDownstream];
    }

    else
    {
      v9 = [a1 _selectionAffinity] == 0;
    }

    v11 = [a1 _setHistory:v6 withExtending:a3 withAnchor:2 withAffinityDownstream:v9];

    [v11 setAmount:{objc_msgSend(v11, "amount") + 1}];
    v12 = [v11 cursor];
    v13 = [v7 beginningOfDocument];
    v14 = [v7 comparePosition:v12 toPosition:v13];

    if (v14)
    {
      v15 = [v11 startPosition];
      if ([v11 amount] > 0)
      {
        v16 = 4;
      }

      else
      {
        v16 = 5;
      }

      v17 = [v11 amount];
      if (v17 >= 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = -v17;
      }

      v19 = [v7 _positionFromPosition:v15 inDirection:v16 offset:v18 withAffinityDownstream:{objc_msgSend(v11, "affinityDownstream")}];

      v20 = [v11 cursor];
      v21 = [v7 comparePosition:v20 toPosition:v19];

      if (v21)
      {
        [v11 setCursor:v19];
      }

      else
      {
        v22 = [v7 beginningOfDocument];
        [v11 setCursor:v22];

        [v11 setAmount:{objc_msgSend(v11, "amount") - 1}];
      }
    }

    else
    {
      [v11 setAmount:{objc_msgSend(v11, "amount") - 1}];
    }

    v10 = [a1 _setSelectionRangeWithHistory:v11];
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
  v7 = [a1 _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    if (v6)
    {
      v9 = [v6 affinityDownstream];
    }

    else
    {
      v9 = [a1 _selectionAffinity] == 0;
    }

    v11 = [a1 _setHistory:v6 withExtending:a3 withAnchor:1 withAffinityDownstream:v9];

    [v11 setAmount:{objc_msgSend(v11, "amount") - 1}];
    v12 = [v11 cursor];
    v13 = [v7 endOfDocument];
    v14 = [v7 comparePosition:v12 toPosition:v13];

    if (v14)
    {
      v15 = [v11 startPosition];
      if ([v11 amount] > 0)
      {
        v16 = 4;
      }

      else
      {
        v16 = 5;
      }

      v17 = [v11 amount];
      if (v17 >= 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = -v17;
      }

      v19 = [v7 _positionFromPosition:v15 inDirection:v16 offset:v18 withAffinityDownstream:{objc_msgSend(v11, "affinityDownstream")}];

      v20 = [v11 cursor];
      v21 = [v7 comparePosition:v20 toPosition:v19];

      if (v21)
      {
        [v11 setCursor:v19];
      }

      else
      {
        v22 = [v7 endOfDocument];
        [v11 setCursor:v22];

        [v11 setAmount:{objc_msgSend(v11, "amount") + 1}];
      }
    }

    else
    {
      [v11 setAmount:{objc_msgSend(v11, "amount") + 1}];
    }

    v10 = [a1 _setSelectionRangeWithHistory:v11];
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
  v7 = [a1 _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [a1 _setHistory:v6 withExtending:a3 withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    v10 = [v7 selectedTextRange];
    v11 = [v10 isEmpty];

    if ((v11 & 1) != 0 || a3)
    {
      v12 = [v9 cursor];
      v13 = [v7 positionFromPosition:v12 inDirection:3 offset:1];
      [v9 setCursor:v13];
    }

    v14 = [v9 cursor];
    [v9 setStartPosition:v14];

    v15 = [a1 _setSelectionRangeWithHistory:v9];
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
  v7 = [a1 _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [a1 _setHistory:v6 withExtending:a3 withAnchor:1 withAffinityDownstream:1];

    [v9 setAmount:0];
    v10 = [v7 selectedTextRange];
    v11 = [v10 isEmpty];

    if ((v11 & 1) != 0 || a3)
    {
      v12 = [v9 cursor];
      v13 = [v7 positionFromPosition:v12 inDirection:2 offset:1];
      [v9 setCursor:v13];
    }

    v14 = [v9 cursor];
    [v9 setStartPosition:v14];

    v15 = [a1 _setSelectionRangeWithHistory:v9];
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
  v9 = [a1 _selectableText];
  v10 = [v9 positionFromPosition:v8 inDirection:a4 offset:a5];

  return v10;
}

- (void)_setSelectedTextRange:()UITextInput_Internal withAffinityDownstream:
{
  v7 = a3;
  if (objc_opt_respondsToSelector())
  {
    [a1 setSelectedTextRange:v7 withAffinityDownstream:a4];
  }

  else
  {
    v6 = [a1 _selectableText];
    [v6 setSelectedTextRange:v7];
  }
}

- (uint64_t)_selectionAffinity
{
  v1 = [a1 _selectableText];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v3 = [v1 tokenizer];
    v4 = [v1 selectedTextRange];
    v5 = [v4 start];
    if ([v3 isPosition:v5 atBoundary:3 inDirection:1])
    {
    }

    else
    {
      v6 = [v1 tokenizer];
      v7 = [v1 selectedTextRange];
      v8 = [v7 end];
      v9 = [v6 isPosition:v8 atBoundary:4 inDirection:2];

      if (v9)
      {
        v2 = 1;
        goto LABEL_8;
      }
    }

    v2 = 0;
    goto LABEL_8;
  }

  v2 = [v1 selectionAffinity];
LABEL_8:

  return v2;
}

- (void)_setGestureRecognizers
{
  v20 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {

    [a1 _setInternalGestureRecognizers];
  }

  else
  {
    v2 = +[UIKeyboardImpl activeInstance];
    v3 = [v2 markedTextOverlay];
    [v3 removeFromSuperview];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [v3 interactions];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v4);
          }

          [v3 removeInteraction:*(*(&v15 + 1) + 8 * i)];
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    v9 = [a1 _selectableText];
    v10 = [v9 interactionAssistant];
    v11 = v10;
    if (v10)
    {
      [v10 setGestureRecognizers];
    }

    else if ([v9 _hasMarkedText] && objc_msgSend(v2, "hasEditableMarkedText"))
    {
      v12 = [v9 markedTextRange];
      [v9 firstRectForRange:v12];
      [v3 setFrame:?];

      v13 = [v9 textInputView];
      [v13 addSubview:v3];

      v14 = [[UITextPhraseBoundaryInteraction alloc] initWithTextInput:v9];
      [v3 addInteraction:v14];
    }
  }
}

- (uint64_t)_usesAsynchronousProtocol
{
  v1 = [a1 _selectableText];
  if (!+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [v1 conformsToProtocol:&unk_1F016CC30];
LABEL_9:
      v2 = v3;
      goto LABEL_11;
    }

LABEL_10:
    v2 = 0;
    goto LABEL_11;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v1 conformsToProtocolCached:&unk_1F016C7B0] & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [v1 conformsToProtocolCached:&unk_1F016C810];
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
  v1 = [a1 _selectableText];
  if ([v1 _usesAsynchronousProtocol] && (!+[UIKBInputDelegateManager isAsyncTextInputEnabled](UIKBInputDelegateManager, "isAsyncTextInputEnabled") || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0))
  {
    v2 = [v1 hasMarkedText];
  }

  else
  {
    v3 = [v1 markedTextRange];
    v2 = v3 != 0;
  }

  return v2;
}

- (void)_setMarkedText:()UITextInput_Internal selectedRange:
{
  v8 = MEMORY[0x1E696AAB0];
  v9 = a3;
  v10 = [[v8 alloc] initWithString:v9];

  [a1 _setAttributedMarkedText:v10 selectedRange:{a4, a5}];
}

- (void)_setAttributedMarkedText:()UITextInput_Internal selectedRange:
{
  v8 = a3;
  v27 = [a1 _selectableText];
  v9 = [a1 _hasMarkedText];
  if (objc_opt_respondsToSelector())
  {
    [v27 setAttributedMarkedText:v8 selectedRange:{a4, a5}];
  }

  else
  {
    v10 = [v8 string];

    [v27 setMarkedText:v10 selectedRange:{a4, a5}];
    v8 = v10;
  }

  v11 = [a1 _hasMarkedText];
  if (v9 != v11)
  {
    if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
    {
      v12 = [v27 _selectionDisplayInteraction];
      v13 = v27;
      v14 = v12;
    }

    else
    {
      v14 = 0;
      v13 = v27;
    }

    [v13 _setGestureRecognizers];
    v19 = [a1 _textSelectingContainer];
    v20 = [v19 interactionAssistant];
    if (v20)
    {
      v21 = v20;
      v22 = [a1 _textSelectingContainer];
      v23 = [v22 interactionAssistant];
      v24 = [v23 externalInteractions];

      if (v24)
      {
        v25 = [a1 _textSelectingContainer];
        v26 = [v25 interactionAssistant];
        [v26 deactivateSelection];

        [v27 _setSelectionDisplayInteraction:v14];
      }
    }

    else
    {
    }

    goto LABEL_15;
  }

  if (v11)
  {
    v15 = [a1 _textSelectingContainer];
    v16 = [v15 interactionAssistant];

    if (!v16)
    {
      v17 = +[UIKeyboardImpl activeInstance];
      v14 = [v17 markedTextOverlay];

      v18 = [v27 markedTextRange];
      [v27 firstRectForRange:v18];
      [v14 setFrame:?];

LABEL_15:
    }
  }
}

- (void)_unmarkText
{
  v14 = [a1 _selectableText];
  v2 = [a1 _hasMarkedText];
  [v14 unmarkText];
  if (v2)
  {
    if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
    {
      v3 = [v14 _selectionDisplayInteraction];
      v4 = v14;
      v5 = v3;
    }

    else
    {
      v5 = 0;
      v4 = v14;
    }

    [v4 _setGestureRecognizers];
    v6 = [a1 _textSelectingContainer];
    v7 = [v6 interactionAssistant];
    if (v7)
    {
      v8 = v7;
      v9 = [a1 _textSelectingContainer];
      v10 = [v9 interactionAssistant];
      v11 = [v10 externalInteractions];

      if (v11)
      {
        v12 = [a1 _textSelectingContainer];
        v13 = [v12 interactionAssistant];
        [v13 deactivateSelection];

        [v14 _setSelectionDisplayInteraction:v5];
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

  v12 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v13 = [v8 componentsSeparatedByCharactersInSet:v12];

  v14 = [v13 count] < 8;
LABEL_13:

  return v14;
}

- (id)_textInteraction
{
  v1 = [a1 textInputView];
  v2 = [v1 _textInteraction];

  return v2;
}

- (id)inputAssistantItem
{
  v1 = [a1 textInputView];
  v2 = [v1 inputAssistantItem];

  return v2;
}

- (id)_responderWindow
{
  v1 = [a1 textInputView];
  v2 = [v1 _responderWindow];

  return v2;
}

- (id)_selectionDisplayInteraction
{
  v1 = [a1 textInputView];
  v2 = [v1 _selectionDisplayInteraction];

  return v2;
}

@end