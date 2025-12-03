@interface NSObject(UIAccessibilityTextAttributeRotor)
- (id)_accessibilityAttributeMatcher:()UIAccessibilityTextAttributeRotor;
- (id)_accessibilityCommonStylingRotors;
- (id)_accessibilityTextStylingCustomRotor:()UIAccessibilityTextAttributeRotor;
- (uint64_t)_accessibilityMisspelledWordIn:()UIAccessibilityTextAttributeRotor searchRange:next:;
- (void)_accessibilityNextTextRangeUsingTextStyling:()UIAccessibilityTextAttributeRotor attributeMatch:;
@end

@implementation NSObject(UIAccessibilityTextAttributeRotor)

- (id)_accessibilityCommonStylingRotors
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [self _accessibilityTextStylingCustomRotor:10];
  v3 = [self _accessibilityTextStylingCustomRotor:11];
  v4 = [self _accessibilityTextStylingCustomRotor:12];
  _accessibilityMisspelledRotor = [self _accessibilityMisspelledRotor];
  v6 = [self _accessibilityTextStylingCustomRotor:UIAccessibilityCustomSystemRotorTypePlainText];
  v7 = [self _accessibilityTextStylingCustomRotor:UIAccessibilityCustomSystemRotorTypeColorChange];
  v8 = [self _accessibilityTextStylingCustomRotor:UIAccessibilityCustomSystemRotorTypeFontChange];
  v9 = [self _accessibilityTextStylingCustomRotor:UIAccessibilityCustomSystemRotorTypeStyleChange];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = _accessibilityMisspelledRotor;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];

  return v10;
}

- (void)_accessibilityNextTextRangeUsingTextStyling:()UIAccessibilityTextAttributeRotor attributeMatch:
{
  v5 = a3;
  v6 = a4;
  v7 = __UIAccessibilityCastAsProtocol();
  currentItem = [v5 currentItem];
  targetRange = [currentItem targetRange];
  v30 = v5;
  searchDirection = [v5 searchDirection];
  start = [targetRange start];
  v32 = searchDirection != 1;
  v33 = [v7 textStylingAtPosition:start inDirection:v32];

  start2 = 0;
  endOfDocument = 0;
  v13 = 0;
  for (i = v6; ; v6 = i)
  {
    if (searchDirection == 1)
    {
      [targetRange end];
    }

    else
    {
      [targetRange start];
    }
    v14 = ;
    v15 = [v7 textStylingAtPosition:v14 inDirection:v32];

    if (!v6[2](v6, v15, v33))
    {
      break;
    }

    if (searchDirection == 1 && !start2)
    {
      start2 = [targetRange start];
      goto LABEL_13;
    }

    if (searchDirection != 1 && !endOfDocument)
    {
      endOfDocument = [targetRange end];
LABEL_17:
      start3 = [targetRange start];
      v17 = v7;
      v18 = start3;
      v19 = -1;
      goto LABEL_18;
    }

LABEL_12:
    if (searchDirection != 1)
    {
      goto LABEL_17;
    }

LABEL_13:
    start3 = [targetRange end];
    v17 = v7;
    v18 = start3;
    v19 = 1;
LABEL_18:
    v20 = [v17 positionFromPosition:v18 offset:v19];

    v21 = targetRange;
    targetRange = [v7 textRangeFromPosition:v20 toPosition:v20];

    start4 = [targetRange start];
    if (!start4 || (v23 = start4, [targetRange end], v24 = objc_claimAutoreleasedReturnValue(), v24, v23, !v24))
    {

      v6 = i;
      goto LABEL_24;
    }

    v13 = v21;
  }

  if (start2)
  {
    v25 = [v13 end];

    v21 = v13;
    endOfDocument = v25;
    goto LABEL_24;
  }

  if (!endOfDocument)
  {
    start2 = 0;
    goto LABEL_12;
  }

  start2 = [v13 start];
  v21 = v13;
LABEL_24:

  if (endOfDocument || !start2)
  {
    if (endOfDocument && !start2)
    {
      start2 = [v7 beginningOfDocument];
    }
  }

  else
  {
    endOfDocument = [v7 endOfDocument];
  }

  v26 = 0;
  if (start2 && endOfDocument)
  {
    v26 = [v7 textRangeFromPosition:start2 toPosition:endOfDocument];
  }

  v27 = v26;

  return v26;
}

- (id)_accessibilityAttributeMatcher:()UIAccessibilityTextAttributeRotor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__NSObject_UIAccessibilityTextAttributeRotor___accessibilityAttributeMatcher___block_invoke;
  block[3] = &unk_1E78AB028;
  block[4] = self;
  if (_accessibilityAttributeMatcher__onceToken != -1)
  {
    dispatch_once(&_accessibilityAttributeMatcher__onceToken, block);
  }

  v4 = _accessibilityAttributeMatcher__Matchers;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (uint64_t)_accessibilityMisspelledWordIn:()UIAccessibilityTextAttributeRotor searchRange:next:
{
  v10 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0 || [self spellCheckingType] != 1)
  {
    _accessibilityTextChecker = [self _accessibilityTextChecker];
    if (_accessibilityTextChecker)
    {
      goto LABEL_8;
    }

    v12 = *MEMORY[0x1E695E8E0];
    v13 = 0.0;
    do
    {
      CFRunLoopRunInMode(v12, 0.2, 0);
      _accessibilityTextChecker2 = [self _accessibilityTextChecker];
      _accessibilityTextChecker = _accessibilityTextChecker2;
      if (_accessibilityTextChecker2)
      {
        break;
      }

      v13 = v13 + 0.2;
    }

    while (v13 < 1.5);
    if (_accessibilityTextChecker2)
    {
LABEL_8:
      string = [v10 string];
      mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
      currentInputMode = [mEMORY[0x1E69DCBF0] currentInputMode];
      if (currentInputMode)
      {
        if (a6)
        {
LABEL_10:
          primaryLanguage = [currentInputMode primaryLanguage];
          v19 = [_accessibilityTextChecker rangeOfMisspelledWordInString:string range:a4 startingAt:a5 wrap:a4 language:{0, primaryLanguage}];

LABEL_23:
          goto LABEL_24;
        }
      }

      else
      {
        currentInputMode = [mEMORY[0x1E69DCBF0] currentSystemInputMode];
        if (a6)
        {
          goto LABEL_10;
        }
      }

      v28 = mEMORY[0x1E69DCBF0];
      v29 = v10;
      v20 = a4 + a5;
      if (a4 >= a4 + a5)
      {
        v21 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = 0x7FFFFFFFFFFFFFFFLL;
        do
        {
          primaryLanguage2 = [currentInputMode primaryLanguage];
          v23 = [_accessibilityTextChecker rangeOfMisspelledWordInString:string range:a4 startingAt:a5 wrap:a4 language:{0, primaryLanguage2}];
          v25 = v24;

          if (v23 == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          a4 = v23 + v25;
          v21 = v23;
          v26 = v20 >= v23 + v25;
          a5 = v20 - (v23 + v25);
        }

        while (a5 != 0 && v26);
      }

      if (v21 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = 0x7FFFFFFFLL;
      }

      else
      {
        v19 = v21;
      }

      mEMORY[0x1E69DCBF0] = v28;
      v10 = v29;
      goto LABEL_23;
    }
  }

  v19 = 0x7FFFFFFFLL;
LABEL_24:

  return v19;
}

- (id)_accessibilityTextStylingCustomRotor:()UIAccessibilityTextAttributeRotor
{
  if ([self conformsToProtocol:&unk_1F1E10CA0])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIAccessibilityCustomSystemRotorType-%d", a3];
    v6 = [self _accessibilityValueForKey:v5];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x1E69DC5F0]);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __84__NSObject_UIAccessibilityTextAttributeRotor___accessibilityTextStylingCustomRotor___block_invoke;
      v12[3] = &unk_1E78ABA70;
      v12[4] = self;
      v12[5] = a3;
      v10 = [v9 initWithSystemType:a3 itemSearchBlock:v12];
      [v10 setVisibleInTouchRotor:a3 == 13];
      [self _accessibilitySetRetainedValue:v10 forKey:v5];
      v7 = v10;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end