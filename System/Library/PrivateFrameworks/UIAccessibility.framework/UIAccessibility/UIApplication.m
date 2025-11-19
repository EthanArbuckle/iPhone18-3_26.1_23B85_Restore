@interface UIApplication
@end

@implementation UIApplication

void __104__UIApplication_UIAccessibilityElementTraversal___accessibilityAddKeyboardWindowToArray_forModalWindow___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  if (!v18)
  {
    goto LABEL_18;
  }

  if (([*(a1 + 32) _accessibilityIsModalWithKeyboard] & 1) == 0)
  {
    [v18 windowLevel];
    v4 = v3;
    [*(a1 + 32) windowLevel];
    if (vabdd_f64(v4, v5) >= 3.0)
    {
      [v18 windowLevel];
      if (v6 != *MEMORY[0x1E69DE330])
      {
        goto LABEL_18;
      }
    }
  }

  [*(a1 + 32) windowLevel];
  v8 = v7;
  [v18 windowLevel];
  v10 = v9;
  v11 = [MEMORY[0x1E69DCD68] sharedInstance];
  if ([v11 isOnScreen])
  {
    v12 = [MEMORY[0x1E69DCD68] sharedInstance];
    v13 = [v12 _currentInputView];

    if (!v13)
    {
      v14 = 1;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v14 = [*MEMORY[0x1E69DDA98] _accessibilitySoftwareKeyboardActive];
LABEL_10:
  if (([v18 isHidden] & 1) == 0)
  {
    v15 = *(a1 + 32);
    if (v15 != v18)
    {
      v16 = [v15 _accessibilityIsModalWithKeyboard];
      v17 = v8 <= v10 ? v14 : 0;
      if ((v16 & 1) != 0 || v17)
      {
        [*(a1 + 40) axSafelyAddObject:v18];
      }
    }
  }

LABEL_18:
}

uint64_t __106__UIApplication_UIAccessibilityElementTraversal___accessibilityElementWindowsWithOptions_referenceWindow___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 40) = [*MEMORY[0x1E69DDA98] _accessibilityAllWindowsOnlyVisibleWindows:1];

  return MEMORY[0x1EEE66BB8]();
}

void __117__UIApplication_UIAccessibilityElementTraversal___accessibilityElementWindowsWithOptions_referenceWindow_allWindows___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v3 screen];
  v13 = [v12 coordinateSpace];
  [v3 convertRect:v13 toCoordinateSpace:{v5, v7, v9, v11}];
  v15 = v14;
  v17 = v16;

  v18 = *(a1 + 32);
  v26[0] = v15;
  v26[1] = v17;
  v19 = [MEMORY[0x1E696B098] valueWithBytes:v26 objCType:"{CGPoint=dd}"];
  v20 = [v18 objectForKeyedSubscript:v19];

  if (!v20)
  {
    v20 = [MEMORY[0x1E695DF70] array];
  }

  v21 = [v3 windowScene];
  v22 = [v21 activationState];

  if (!v22)
  {
    [v20 addObject:v3];
  }

  v23 = *(a1 + 32);
  v25[0] = v15;
  v25[1] = v17;
  v24 = [MEMORY[0x1E696B098] valueWithBytes:v25 objCType:"{CGPoint=dd}"];
  [v23 setObject:v20 forKeyedSubscript:v24];
}

BOOL __117__UIApplication_UIAccessibilityElementTraversal___accessibilityElementWindowsWithOptions_referenceWindow_allWindows___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v3 screen];
  v13 = [v12 coordinateSpace];
  [v3 convertRect:v13 toCoordinateSpace:{v5, v7, v9, v11}];
  v15 = v14;
  v17 = v16;

  [*(a1 + 32) CGPointValue];
  return v17 == v19 && v15 == v18;
}

uint64_t __68__UIApplication_UIAccessibility___accessibilityIsAppReadyToBeProbed__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) safeBoolForKey:@"_isActivating"];
  *(*(*(a1 + 40) + 8) + 24) = result ^ 1;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  return result;
}

@end