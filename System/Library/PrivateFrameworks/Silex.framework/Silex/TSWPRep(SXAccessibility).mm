@interface TSWPRep(SXAccessibility)
- (double)_accessibilityFrameForRange:()SXAccessibility;
- (double)accessibilityFrameForLineNumber:()SXAccessibility;
- (id)_STAXColumnForLineIndex:()SXAccessibility;
- (id)_STAXColumnForStorageRelativeCharIndex:()SXAccessibility;
- (id)_accessibilityNextElementsForSpeakThis;
- (id)_accessibilityRawRangeForUITextRange:()SXAccessibility;
- (id)_accessibilityTextOperations;
- (id)_accessibilityTextRectsForSpeakThisStringRange:()SXAccessibility;
- (id)_sxaxTextInputEditor;
- (id)accessibilityAttributedValue;
- (id)accessibilityContentForLineNumber:()SXAccessibility;
- (id)accessibilityLanguage;
- (id)sxaxNameForEditRotorAction:()SXAccessibility;
- (uint64_t)_accessibilityLineEndPosition;
- (uint64_t)_accessibilityLineRangeForPosition:()SXAccessibility;
- (uint64_t)_accessibilityLineStartPosition;
- (uint64_t)_accessibilityRangeForLineNumber:()SXAccessibility;
- (uint64_t)_accessibilitySelectedTextRange;
- (uint64_t)accessibilityEditOperationAction:()SXAccessibility;
- (uint64_t)accessibilityLineNumberForPoint:()SXAccessibility;
- (unint64_t)_sxaxStorageRelativeRangeOfLineFragmentAtStorageRelativeCharIndex:()SXAccessibility;
- (void)_accessibilitySetSelectedTextRange:()SXAccessibility;
@end

@implementation TSWPRep(SXAccessibility)

- (id)accessibilityAttributedValue
{
  storage = [self storage];
  range = [self range];
  v5 = [storage substringWithRange:{range, v4}];

  v6 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v5];
  storage2 = [self storage];
  range2 = [self range];
  v10 = v9;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __56__TSWPRep_SXAccessibility__accessibilityAttributedValue__block_invoke;
  v27[3] = &unk_1E84FF8A0;
  v27[4] = self;
  v11 = v6;
  v28 = v11;
  [storage2 enumerateSmartFieldsWithAttributeKind:6 inRange:range2 usingBlock:{v10, v27}];

  v12 = [v5 length];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0;
  storage3 = [self storage];
  range3 = [self range];
  v16 = v15;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __56__TSWPRep_SXAccessibility__accessibilityAttributedValue__block_invoke_2;
  v21[3] = &unk_1E84FF8C8;
  v17 = v11;
  v24 = 0;
  v25 = v12;
  v22 = v17;
  v23 = v26;
  [storage3 enumerateWithAttributeKind:2 inRange:range3 usingBlock:{v16, v21}];

  v18 = v22;
  v19 = v17;

  _Block_object_dispose(v26, 8);

  return v19;
}

- (id)accessibilityLanguage
{
  storage = [self storage];
  range = [self range];
  v5 = [storage languageForTextRange:range useStringTokenizer:v4 useCreationLanguage:{0, 0}];

  v6 = MEMORY[0x1DA7166A0](v5);

  return v6;
}

- (id)_accessibilityNextElementsForSpeakThis
{
  v11[1] = *MEMORY[0x1E69E9840];
  interactiveCanvasController = [self interactiveCanvasController];
  [interactiveCanvasController layoutIfNeeded];

  interactiveCanvasController2 = [self interactiveCanvasController];
  canvasView = [interactiveCanvasController2 canvasView];

  v5 = [canvasView sxaxNextSpeakThisElementFromElement:self];
  v6 = v5;
  if (v5)
  {
    v11[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TSWPRep_0;
    v7 = objc_msgSendSuper2(&v10, sel__accessibilityNextElementsForSpeakThis);
  }

  v8 = v7;

  return v8;
}

- (uint64_t)accessibilityLineNumberForPoint:()SXAccessibility
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  columns = [self columns];
  v6 = [columns countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(columns);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        countLines = [v11 countLines];
        if (countLines >= 1)
        {
          v13 = countLines;
          v14 = 0;
          v15 = countLines + v8;
          while (1)
          {
            [v11 boundsOfLineFragmentAtIndex:v14];
            v27.x = a2;
            v27.y = a3;
            if (CGRectContainsPoint(v28, v27))
            {
              goto LABEL_14;
            }

            ++v8;
            if (v13 == ++v14)
            {
              v8 = v15;
              break;
            }
          }
        }
      }

      v7 = [columns countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  columns = [MEMORY[0x1E69D5768] currentHandler];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[TSWPRep(SXAccessibility) accessibilityLineNumberForPoint:]"];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Text/Tangier/TSWPRep+SXAccessibility.m"];
  v26.x = a2;
  v26.y = a3;
  v18 = NSStringFromCGPoint(v26);
  [columns handleFailureInFunction:v16 file:v17 lineNumber:92 description:{@"Line not found for natural point: %@", v18}];

  v8 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:

  return v8;
}

- (id)accessibilityContentForLineNumber:()SXAccessibility
{
  v5 = [self _STAXColumnForLineIndex:?];
  v6 = [v5 rangeOfLineFragmentAtIndex:a3];
  v8 = v7;
  storage = [self storage];
  v10 = [storage substringWithRange:{v6, v8}];

  return v10;
}

- (double)accessibilityFrameForLineNumber:()SXAccessibility
{
  v5 = [self _STAXColumnForLineIndex:?];
  [v5 boundsOfLineFragmentAtIndex:a3];
  [self SXAXConvertNaturalRectToScreenSpace:?];
  v7 = v6;

  return v7;
}

- (id)_STAXColumnForLineIndex:()SXAccessibility
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E69D5768] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[TSWPRep(SXAccessibility) _STAXColumnForLineIndex:]"];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Text/Tangier/TSWPRep+SXAccessibility.m"];
    [currentHandler handleFailureInFunction:v6 file:v7 lineNumber:116 description:@"Invalid line index"];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  columns = [self columns];
  v9 = [columns countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(columns);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v11 += [v14 countLines];
        if (v11 > a3)
        {
          v15 = v14;
          goto LABEL_13;
        }
      }

      v10 = [columns countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (double)_accessibilityFrameForRange:()SXAccessibility
{
  v2 = [self sxaxStorageRelativeRangeFromRepRelativeRange:?];
  v4 = v3;
  v5 = [self _STAXColumnForStorageRelativeCharIndex:v2];
  if (v5)
  {
    v6 = [MEMORY[0x1E69D5728] selectionWithRange:{v2, v4}];
    v7 = [v5 rectsForSelection:v6];
    firstObject = [v7 firstObject];
    [firstObject CGRectValue];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [self SXAXConvertNaturalRectToScreenSpace:{v10, v12, v14, v16}];
    v18 = v17;
  }

  else
  {
    v18 = *MEMORY[0x1E695F058];
  }

  return v18;
}

- (uint64_t)_accessibilitySelectedTextRange
{
  selection = [self selection];
  range = [selection range];
  v5 = [self sxaxRepRelativeRangeFromStorageRelativeRange:{range, v4}];

  return v5;
}

- (void)_accessibilitySetSelectedTextRange:()SXAccessibility
{
  v2 = [self sxaxStorageRelativeRangeFromRepRelativeRange:?];
  v7 = [MEMORY[0x1E69D5728] selectionWithRange:{v2, v3}];
  objc_opt_class();
  interactiveCanvasController = [self interactiveCanvasController];
  v5 = [interactiveCanvasController beginEditingRep:self];
  v6 = TSUDynamicCast();

  [v6 setSelection:v7];
  UIAccessibilityPostNotification(*MEMORY[0x1E69DB5D0], 0);
}

- (uint64_t)_accessibilityLineStartPosition
{
  selection = [self selection];
  range = [selection range];
  v5 = v4;
  v6 = *MEMORY[0x1E69D5760];
  v7 = *(MEMORY[0x1E69D5760] + 8);

  if (v6 == range && v7 == v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  selection2 = [self selection];
  range2 = [selection2 range];
  v12 = v11 + range2 - 1;

  v13 = [self _sxaxStorageRelativeRangeOfLineFragmentAtStorageRelativeCharIndex:v12];
  return [self sxaxRepRelativeRangeFromStorageRelativeRange:{v13, v14}];
}

- (uint64_t)_accessibilityLineRangeForPosition:()SXAccessibility
{
  [self range];
  if (v5 < a3)
  {
    return *MEMORY[0x1E69D5760];
  }

  if (a3)
  {
    [self range];
    v8 = a3 - (v7 == a3);
  }

  else
  {
    v8 = 0;
  }

  v9 = [self _sxaxStorageRelativeRangeOfLineFragmentAtStorageRelativeCharIndex:{objc_msgSend(self, "sxaxStorageRelativeRangeFromRepRelativeRange:", v8, 0)}];
  return [self sxaxRepRelativeRangeFromStorageRelativeRange:{v9, v10}];
}

- (uint64_t)_accessibilityLineEndPosition
{
  selection = [self selection];
  range = [selection range];
  v5 = v4;

  v6 = [self _sxaxStorageRelativeRangeOfLineFragmentAtStorageRelativeCharIndex:range + v5];
  v8 = [self sxaxRepRelativeRangeFromStorageRelativeRange:{v6, v7}];
  return v8 + v9;
}

- (unint64_t)_sxaxStorageRelativeRangeOfLineFragmentAtStorageRelativeCharIndex:()SXAccessibility
{
  v4 = *MEMORY[0x1E69D5760];
  v5 = [self _STAXColumnForStorageRelativeCharIndex:?];
  v6 = v5;
  if (v5)
  {
    countLines = [v5 countLines];
    if (countLines >= 1)
    {
      v8 = countLines;
      v9 = 0;
      while (1)
      {
        v10 = [v6 rangeOfLineFragmentAtIndex:v9];
        if (v10 <= a3 && v10 + v11 > a3)
        {
          break;
        }

        if (v8 == ++v9)
        {
          goto LABEL_9;
        }
      }

      v4 = v10;
    }
  }

LABEL_9:

  return v4;
}

- (id)_STAXColumnForStorageRelativeCharIndex:()SXAccessibility
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  columns = [self columns];
  v5 = [columns countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(columns);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 range] <= a3)
        {
          range = [v9 range];
          if (range + v11 > a3)
          {
            v12 = v9;
            goto LABEL_12;
          }
        }
      }

      v6 = [columns countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (uint64_t)_accessibilityRangeForLineNumber:()SXAccessibility
{
  v4 = a3 & ~(a3 >> 63);
  v5 = [self _STAXColumnForLineIndex:v4];
  v6 = [v5 rangeOfLineFragmentAtIndex:v4];
  v8 = [self sxaxRepRelativeRangeFromStorageRelativeRange:{v6, v7}];

  return v8;
}

- (id)_accessibilityTextRectsForSpeakThisStringRange:()SXAccessibility
{
  v39 = *MEMORY[0x1E69E9840];
  if (a4 && ([self hasBeenRemoved] & 1) == 0)
  {
    v33 = objc_opt_new();
    [self range];
    if (a3 <= v8)
    {
      v15 = [self sxaxStorageRelativeRangeFromRepRelativeRange:{a3, a4}];
      v30 = v16;
      v31 = v15;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      obj = [self columns];
      v32 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v32)
      {
        v29 = *v35;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v35 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v34 + 1) + 8 * i);
            v41.location = [v18 range];
            v43.length = v30;
            v43.location = v31;
            v19 = NSIntersectionRange(v41, v43);
            if (v19.length)
            {
              v20 = [v18 lineIndexForCharIndex:v19.location eol:0];
              v21 = [v18 lineIndexForCharIndex:v19.length + v19.location - 1 eol:0];
              if (v20 <= v21)
              {
                v22 = v21;
                do
                {
                  v42.location = [v18 rangeOfLineFragmentAtIndex:v20];
                  v44 = v19;
                  v23 = [objc_alloc(MEMORY[0x1E69D5728]) initWithRange:{NSIntersectionRange(v42, v44).location, v42.length}];
                  [self rectForSelection:v23];
                  if (v24 * v25 > 0.0)
                  {
                    [self SXAXConvertNaturalRectToScreenSpace:?];
                    v26 = [MEMORY[0x1E696B098] valueWithCGRect:?];
                    [v33 addObject:v26];
                  }

                  ++v20;
                }

                while (v20 <= v22);
              }
            }
          }

          v32 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v32);
      }
    }

    else
    {
      _accessibilityNextElementsForSpeakThis = [self _accessibilityNextElementsForSpeakThis];
      firstObject = [_accessibilityNextElementsForSpeakThis firstObject];

      if (firstObject)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [self range];
          v12 = [firstObject _accessibilityTextRectsForSpeakThisStringRange:{a3 - v11, a4}];
          [v33 addObjectsFromArray:v12];
        }

        if (![v33 count])
        {
          v13 = MEMORY[0x1E696B098];
          [firstObject accessibilityFrame];
          v14 = [v13 valueWithCGRect:?];
          [v33 addObject:v14];
        }
      }
    }

    v7 = [v33 copy];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)_accessibilityRawRangeForUITextRange:()SXAccessibility
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v6 = v5;
  if (v5)
  {
    range = [v5 range];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TSWPRep_0;
    range = objc_msgSendSuper2(&v10, sel__accessibilityRawRangeForUITextRange_, v4);
  }

  v8 = range;

  return v8;
}

- (id)_accessibilityTextOperations
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  _sxaxTextInputEditor = [self _sxaxTextInputEditor];
  sxaxSupportedEditRotorActions = [self sxaxSupportedEditRotorActions];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [sxaxSupportedEditRotorActions countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(sxaxSupportedEditRotorActions);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([_sxaxTextInputEditor canPerformEditorAction:NSSelectorFromString(v9) withSender:0])
        {
          v10 = [self sxaxNameForEditRotorAction:v9];
          [array addObject:v10];
        }
      }

      v6 = [sxaxSupportedEditRotorActions countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [array copy];

  return v11;
}

- (uint64_t)accessibilityEditOperationAction:()SXAccessibility
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self sxaxSupportedEditRotorActions];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      v11 = [self sxaxNameForEditRotorAction:{v10, v17}];
      v12 = [v11 isEqualToString:v4];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = NSSelectorFromString(v10);

    if (v15)
    {
      interactiveCanvasController = [self interactiveCanvasController];
      [interactiveCanvasController makeEditorPerformAction:v15 withSender:0];
      v13 = 1;
      goto LABEL_12;
    }

    v13 = 0;
  }

  else
  {
LABEL_9:
    v13 = 0;
    interactiveCanvasController = v5;
LABEL_12:
  }

  return v13;
}

- (id)_sxaxTextInputEditor
{
  objc_opt_class();
  interactiveCanvasController = [self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];
  textInputEditor = [editorController textInputEditor];
  v5 = TSUDynamicCast();

  return v5;
}

- (id)sxaxNameForEditRotorAction:()SXAccessibility
{
  v3 = a3;
  if ([v3 isEqualToString:@"copy:"])
  {
    v4 = @"Copy";
LABEL_5:
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v6 = [mainBundle localizedStringForKey:v4 value:&stru_1F532F6C0 table:0];

    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"selectAll:"])
  {
    v4 = @"Select all";
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

@end