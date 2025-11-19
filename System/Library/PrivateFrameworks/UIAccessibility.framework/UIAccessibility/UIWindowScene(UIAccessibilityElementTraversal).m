@interface UIWindowScene(UIAccessibilityElementTraversal)
- (id)_accessibilityTraversalWindows;
- (id)_accessibilityTraversalWindowsWithOptions:()UIAccessibilityElementTraversal;
- (id)_accessibilityViewChildrenWithOptions:()UIAccessibilityElementTraversal;
@end

@implementation UIWindowScene(UIAccessibilityElementTraversal)

- (id)_accessibilityTraversalWindows
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = +[UIAccessibilityElementTraversalOptions options];
  [v2 setShouldIncludeStatusBarWindow:1];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [a1 _accessibilityTraversalWindowsWithOptions:v2];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 axSafelyAddObjectsFromArray:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_accessibilityTraversalWindowsWithOptions:()UIAccessibilityElementTraversal
{
  v4 = a3;
  v5 = [a1 _visibleWindows];
  v6 = [v5 mutableCopy];

  [v6 sortWithOptions:16 usingComparator:&__block_literal_global_560];
  v7 = MEMORY[0x1E69DDA98];
  v8 = [*MEMORY[0x1E69DDA98] _accessibilityMainWindow];
  v9 = [v8 windowScene];

  if (v9 != a1)
  {
    v10 = [*v7 _accessibilityMainWindowInWindows:v6];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [a1 keyWindow];
    }

    v13 = v12;

    v8 = v13;
  }

  v14 = [*v7 _accessibilityElementWindowsWithOptions:v4 referenceWindow:v8 allWindows:v6];

  return v14;
}

- (id)_accessibilityViewChildrenWithOptions:()UIAccessibilityElementTraversal
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [*MEMORY[0x1E69DDA98] connectedScenes];
  v7 = [v6 containsObject:a1];

  v25 = v7;
  if (v7)
  {
    v8 = [a1 _accessibilityLeadingMultitaskingElements];
    [v5 axSafelyAddObjectsFromArray:v8];
  }

  v26 = a1;
  v9 = [a1 _accessibilityTraversalWindowsWithOptions:v4];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0x1E69DD000uLL;
    v13 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [*(v12 + 592) _accessibilityElementsAndContainersDescendingFromViews:*(*(&v27 + 1) + 8 * i) options:v4 sorted:{objc_msgSend(v4, "sorted")}];
        if (v15)
        {
          if ([v4 shouldReturnScannerGroups] && objc_msgSend(v9, "count") >= 2)
          {
            v16 = v5;
            v17 = MEMORY[0x1E695DF90];
            v31 = @"GroupElements";
            v32 = v15;
            v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
            v19 = [v17 dictionaryWithDictionary:v18];

            [v19 setObject:&unk_1F1DC2650 forKeyedSubscript:@"GroupTraits"];
            v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v26, "_accessibilityScanningBehaviorTraits") | 0x10}];
            [v19 setObject:v20 forKeyedSubscript:@"GroupScanBehaviorTraits"];

            v21 = [v26 _accessibilityGroupIdentifier];
            if (v21)
            {
              [v19 setObject:v21 forKeyedSubscript:@"GroupIdentifier"];
            }

            v5 = v16;
            [v16 addObject:v19];

            v12 = 0x1E69DD000;
          }

          else
          {
            [v5 axSafelyAddObjectsFromArray:v15];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v11);
  }

  if (v25)
  {
    v22 = [v26 _accessibilityTrailingMultitaskingElements];
    [v5 axSafelyAddObjectsFromArray:v22];
  }

  v23 = AXLogElementTraversal();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [UIWindowScene(UIAccessibilityElementTraversal) _accessibilityViewChildrenWithOptions:];
  }

  return v5;
}

@end