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
  v2 = [a1 _accessibilityTextStylingCustomRotor:10];
  v3 = [a1 _accessibilityTextStylingCustomRotor:11];
  v4 = [a1 _accessibilityTextStylingCustomRotor:12];
  v5 = [a1 _accessibilityMisspelledRotor];
  v6 = [a1 _accessibilityTextStylingCustomRotor:UIAccessibilityCustomSystemRotorTypePlainText];
  v7 = [a1 _accessibilityTextStylingCustomRotor:UIAccessibilityCustomSystemRotorTypeColorChange];
  v8 = [a1 _accessibilityTextStylingCustomRotor:UIAccessibilityCustomSystemRotorTypeFontChange];
  v9 = [a1 _accessibilityTextStylingCustomRotor:UIAccessibilityCustomSystemRotorTypeStyleChange];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
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
  v29 = [v5 currentItem];
  v8 = [v29 targetRange];
  v30 = v5;
  v9 = [v5 searchDirection];
  v10 = [v8 start];
  v32 = v9 != 1;
  v33 = [v7 textStylingAtPosition:v10 inDirection:v32];

  v11 = 0;
  v12 = 0;
  v13 = 0;
  for (i = v6; ; v6 = i)
  {
    if (v9 == 1)
    {
      [v8 end];
    }

    else
    {
      [v8 start];
    }
    v14 = ;
    v15 = [v7 textStylingAtPosition:v14 inDirection:v32];

    if (!v6[2](v6, v15, v33))
    {
      break;
    }

    if (v9 == 1 && !v11)
    {
      v11 = [v8 start];
      goto LABEL_13;
    }

    if (v9 != 1 && !v12)
    {
      v12 = [v8 end];
LABEL_17:
      v16 = [v8 start];
      v17 = v7;
      v18 = v16;
      v19 = -1;
      goto LABEL_18;
    }

LABEL_12:
    if (v9 != 1)
    {
      goto LABEL_17;
    }

LABEL_13:
    v16 = [v8 end];
    v17 = v7;
    v18 = v16;
    v19 = 1;
LABEL_18:
    v20 = [v17 positionFromPosition:v18 offset:v19];

    v21 = v8;
    v8 = [v7 textRangeFromPosition:v20 toPosition:v20];

    v22 = [v8 start];
    if (!v22 || (v23 = v22, [v8 end], v24 = objc_claimAutoreleasedReturnValue(), v24, v23, !v24))
    {

      v6 = i;
      goto LABEL_24;
    }

    v13 = v21;
  }

  if (v11)
  {
    v25 = [v13 end];

    v21 = v13;
    v12 = v25;
    goto LABEL_24;
  }

  if (!v12)
  {
    v11 = 0;
    goto LABEL_12;
  }

  v11 = [v13 start];
  v21 = v13;
LABEL_24:

  if (v12 || !v11)
  {
    if (v12 && !v11)
    {
      v11 = [v7 beginningOfDocument];
    }
  }

  else
  {
    v12 = [v7 endOfDocument];
  }

  v26 = 0;
  if (v11 && v12)
  {
    v26 = [v7 textRangeFromPosition:v11 toPosition:v12];
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
  block[4] = a1;
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
  if ((objc_opt_respondsToSelector() & 1) == 0 || [a1 spellCheckingType] != 1)
  {
    v11 = [a1 _accessibilityTextChecker];
    if (v11)
    {
      goto LABEL_8;
    }

    v12 = *MEMORY[0x1E695E8E0];
    v13 = 0.0;
    do
    {
      CFRunLoopRunInMode(v12, 0.2, 0);
      v14 = [a1 _accessibilityTextChecker];
      v11 = v14;
      if (v14)
      {
        break;
      }

      v13 = v13 + 0.2;
    }

    while (v13 < 1.5);
    if (v14)
    {
LABEL_8:
      v15 = [v10 string];
      v16 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
      v17 = [v16 currentInputMode];
      if (v17)
      {
        if (a6)
        {
LABEL_10:
          v18 = [v17 primaryLanguage];
          v19 = [v11 rangeOfMisspelledWordInString:v15 range:a4 startingAt:a5 wrap:a4 language:{0, v18}];

LABEL_23:
          goto LABEL_24;
        }
      }

      else
      {
        v17 = [v16 currentSystemInputMode];
        if (a6)
        {
          goto LABEL_10;
        }
      }

      v28 = v16;
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
          v22 = [v17 primaryLanguage];
          v23 = [v11 rangeOfMisspelledWordInString:v15 range:a4 startingAt:a5 wrap:a4 language:{0, v22}];
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

      v16 = v28;
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
  if ([a1 conformsToProtocol:&unk_1F1E10CA0])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIAccessibilityCustomSystemRotorType-%d", a3];
    v6 = [a1 _accessibilityValueForKey:v5];
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
      v12[4] = a1;
      v12[5] = a3;
      v10 = [v9 initWithSystemType:a3 itemSearchBlock:v12];
      [v10 setVisibleInTouchRotor:a3 == 13];
      [a1 _accessibilitySetRetainedValue:v10 forKey:v5];
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