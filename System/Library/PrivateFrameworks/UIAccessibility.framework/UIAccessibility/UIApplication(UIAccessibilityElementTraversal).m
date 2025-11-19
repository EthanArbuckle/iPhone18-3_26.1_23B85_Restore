@interface UIApplication(UIAccessibilityElementTraversal)
- (id)_accessibilityElementWindowsWithOptions:()UIAccessibilityElementTraversal referenceWindow:;
- (id)_accessibilityElementWindowsWithOptions:()UIAccessibilityElementTraversal referenceWindow:allWindows:;
- (id)_accessibilityTraversalWindows;
- (id)_accessibilityViewChildrenWithOptions:()UIAccessibilityElementTraversal referenceWindow:;
- (uint64_t)_accessibilityEnumerateSiblingsWithParent:()UIAccessibilityElementTraversal options:usingBlock:;
- (void)_accessibilityAddKeyboardWindowToArray:()UIAccessibilityElementTraversal forModalWindow:;
@end

@implementation UIApplication(UIAccessibilityElementTraversal)

- (uint64_t)_accessibilityEnumerateSiblingsWithParent:()UIAccessibilityElementTraversal options:usingBlock:
{
  if (a3)
  {
    *a3 = 0;
  }

  return 1;
}

- (id)_accessibilityViewChildrenWithOptions:()UIAccessibilityElementTraversal referenceWindow:
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v7 = [a1 _accessibilityMainWindow];
  }

  v8 = [MEMORY[0x1E695DF70] array];
  v24 = v7;
  v25 = a1;
  v9 = [a1 _accessibilityElementWindowsWithOptions:v6 referenceWindow:v7];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0x1E69DD000uLL;
    v13 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [*(v12 + 592) _accessibilityElementsAndContainersDescendingFromViews:*(*(&v26 + 1) + 8 * i) options:v6 sorted:{objc_msgSend(v6, "sorted")}];
        if (v15)
        {
          if ([v6 shouldReturnScannerGroups] && objc_msgSend(v9, "count") >= 2)
          {
            v16 = v8;
            v17 = MEMORY[0x1E695DF90];
            v30 = @"GroupElements";
            v31 = v15;
            v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
            v19 = [v17 dictionaryWithDictionary:v18];

            [v19 setObject:&unk_1F1DC2650 forKeyedSubscript:@"GroupTraits"];
            v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v25, "_accessibilityScanningBehaviorTraits") | 0x10}];
            [v19 setObject:v20 forKeyedSubscript:@"GroupScanBehaviorTraits"];

            v21 = [v25 _accessibilityGroupIdentifier];
            if (v21)
            {
              [v19 setObject:v21 forKeyedSubscript:@"GroupIdentifier"];
            }

            v8 = v16;
            [v16 addObject:v19];

            v12 = 0x1E69DD000;
          }

          else
          {
            [v8 axSafelyAddObjectsFromArray:v15];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v11);
  }

  v22 = AXLogElementTraversal();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [UIApplication(UIAccessibilityElementTraversal) _accessibilityViewChildrenWithOptions:referenceWindow:];
  }

  return v8;
}

- (void)_accessibilityAddKeyboardWindowToArray:()UIAccessibilityElementTraversal forModalWindow:
{
  v5 = a3;
  v6 = a4;
  v7 = AXUIAllKeyboardWindows();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __104__UIApplication_UIAccessibilityElementTraversal___accessibilityAddKeyboardWindowToArray_forModalWindow___block_invoke;
  v10[3] = &unk_1E78AA9C0;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  [v7 enumerateObjectsUsingBlock:v10];
}

- (id)_accessibilityTraversalWindows
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = +[UIAccessibilityElementTraversalOptions options];
  [v3 setShouldIncludeStatusBarWindow:1];
  v4 = [a1 _accessibilityMainWindow];
  v5 = [a1 _accessibilityElementWindowsWithOptions:v3 referenceWindow:v4];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v2 axSafelyAddObjectsFromArray:{*(*(&v12 + 1) + 8 * i), v12}];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v2;
}

- (id)_accessibilityElementWindowsWithOptions:()UIAccessibilityElementTraversal referenceWindow:
{
  v6 = a3;
  v7 = a4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  AXPerformSafeBlock();
  v8 = [a1 _accessibilityElementWindowsWithOptions:v6 referenceWindow:v7 allWindows:v11[5]];
  _Block_object_dispose(&v10, 8);

  return v8;
}

- (id)_accessibilityElementWindowsWithOptions:()UIAccessibilityElementTraversal referenceWindow:allWindows:
{
  v107 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v73 = a5;
  v10 = [MEMORY[0x1E695DF70] array];
  if (!_TextEffectsWindow)
  {
    _TextEffectsWindow = NSClassFromString(&cfstr_Uitexteffectsw.isa);
    _CarPlayStatusBarWindow = NSClassFromString(&cfstr_DashboardDbdoc.isa);
    _StatusBarWindow = NSClassFromString(&cfstr_Uistatusbarwin.isa);
    _SBMainSwitcherWindow = NSClassFromString(&cfstr_Sbmainswitcher.isa);
    _SBBannerWindow = NSClassFromString(&cfstr_Sbnotification.isa);
    _SSScreenshotsWindow = NSClassFromString(&cfstr_Ssscreenshotsw.isa);
    _SBJindoWindow = NSClassFromString(&cfstr_Sbsystemapertu.isa);
  }

  if ([v9 _accessibilityIsIsolatedWindow])
  {
    v11 = [MEMORY[0x1E695DF70] arrayWithObject:v9];
    [v10 addObject:v11];

    goto LABEL_95;
  }

  v12 = objc_opt_new();
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = __117__UIApplication_UIAccessibilityElementTraversal___accessibilityElementWindowsWithOptions_referenceWindow_allWindows___block_invoke;
  v100[3] = &unk_1E78AA9E8;
  v72 = v12;
  v101 = v72;
  [v73 enumerateObjectsUsingBlock:v100];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 accessibilityViewIsModal])
  {
    v13 = [MEMORY[0x1E695DF70] array];
    [a1 _accessibilityAddKeyboardWindowToArray:v13 forModalWindow:v9];
    [v13 addObject:v9];
    [v10 addObject:v13];
    goto LABEL_94;
  }

  v13 = [MEMORY[0x1E695DFA8] set];
  v14 = [v72 allKeys];
  v15 = [v14 mutableCopy];

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = v15;
  v74 = [obj countByEnumeratingWithState:&v96 objects:v106 count:16];
  if (!v74)
  {
    goto LABEL_93;
  }

  v69 = *v97;
  v70 = v10;
  v71 = v9;
  do
  {
    v16 = 0;
    do
    {
      if (*v97 != v69)
      {
        objc_enumerationMutation(obj);
      }

      v77 = v16;
      v75 = *(*(&v96 + 1) + 8 * v16);
      v17 = [v72 objectForKeyedSubscript:?];
      v18 = [MEMORY[0x1E695DF70] array];
      v78 = [MEMORY[0x1E695DF70] array];
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v76 = v17;
      v19 = [v17 reverseObjectEnumerator];
      v20 = [v19 allObjects];

      v21 = [v20 countByEnumeratingWithState:&v92 objects:v105 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v93;
        v24 = -1.79769313e308;
        do
        {
          v25 = 0;
          do
          {
            if (*v93 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v26 = *(*(&v92 + 1) + 8 * v25);
            if (![v26 accessibilityIsWindow])
            {
              goto LABEL_39;
            }

            if ([v26 accessibilityElementsHidden])
            {
              goto LABEL_39;
            }

            [v26 alpha];
            if (v27 <= 0.0 || ([v26 isHidden] & 1) != 0)
            {
              goto LABEL_39;
            }

            [v26 windowLevel];
            if (v28 < v24)
            {
              goto LABEL_26;
            }

            if (![v26 isUserInteractionEnabled])
            {
              goto LABEL_26;
            }

            [v26 alpha];
            if (v29 <= 0.0 || ([v26 isHidden] & 1) != 0)
            {
              goto LABEL_26;
            }

            v33 = [v26 _accessibilityIsIsolatedWindow];
            v34 = v33;
            if (v33 && (![v8 shouldIncludeStatusBarWindow] || (objc_opt_isKindOfClass() & 1) == 0))
            {
              goto LABEL_39;
            }

            if (objc_opt_isKindOfClass())
            {
              goto LABEL_45;
            }

            if (objc_opt_isKindOfClass() & 1) == 0 || ([v26 isHidden])
            {
              if (v34)
              {
                v30 = 1;
              }

              else
              {
                if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_isKindOfClass() & 1) == 0)
                {
                  [v26 windowLevel];
                  if (v35 > v24)
                  {
                    [v78 removeAllObjects];
                  }

                  [v26 windowLevel];
                  v24 = v36;
                  [v78 addObject:v26];
                }

LABEL_26:
                v30 = 0;
              }

              if ([v8 shouldIncludeStatusBarWindow] && ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass() & 1) != 0))
              {
                [v26 _accessibilityWindowVisible];
                goto LABEL_32;
              }

              if ((v30 | [v26 _accessibilityWindowVisible]) == 1)
              {
LABEL_32:
                [v18 addObject:v26];
              }

              if (objc_opt_class() == _SBBannerWindow)
              {
                [v18 insertObject:v26 atIndex:0];
              }

              if (objc_opt_class() == _SSScreenshotsWindow)
              {
                v31 = [MEMORY[0x1E69898B0] server];
                v32 = [v31 isScreenshotWindowVisible];

                if (v32)
                {
                  [v18 insertObject:v26 atIndex:0];
                }
              }

              if ([v26 accessibilityViewIsModal])
              {
                goto LABEL_59;
              }

              goto LABEL_39;
            }

            v37 = [v26 subviews];
            v38 = [v37 count];

            if (v38)
            {
LABEL_45:
              [v18 addObject:v26];
            }

LABEL_39:
            ++v25;
          }

          while (v22 != v25);
          v39 = [v20 countByEnumeratingWithState:&v92 objects:v105 count:16];
          v22 = v39;
        }

        while (v39);
      }

LABEL_59:

      [v13 addObjectsFromArray:v18];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __117__UIApplication_UIAccessibilityElementTraversal___accessibilityElementWindowsWithOptions_referenceWindow_allWindows___block_invoke_2;
      aBlock[3] = &unk_1E78AAA10;
      aBlock[4] = v75;
      v40 = _Block_copy(aBlock);
      v41 = [*MEMORY[0x1E69DDA98] keyWindow];
      if ([v73 containsObject:v41])
      {
        v42 = v41;
      }

      else
      {
        v42 = 0;
      }

      v43 = v42;

      v44 = v78;
      if (v43 && (![v78 count] || (objc_msgSend(v78, "containsObject:", v43) & 1) == 0) && (objc_msgSend(v13, "containsObject:", v43) & 1) == 0)
      {
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v45 = v78;
        v46 = [v45 countByEnumeratingWithState:&v87 objects:v104 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = *v88;
          while (2)
          {
            for (i = 0; i != v47; ++i)
            {
              if (*v88 != v48)
              {
                objc_enumerationMutation(v45);
              }

              if ([*(*(&v87 + 1) + 8 * i) accessibilityViewIsModal])
              {

                v44 = v78;
                goto LABEL_78;
              }
            }

            v47 = [v45 countByEnumeratingWithState:&v87 objects:v104 count:16];
            if (v47)
            {
              continue;
            }

            break;
          }
        }

        v44 = v78;
        if (([v43 accessibilityElementsHidden] & 1) == 0 && v40[2](v40, v43))
        {
          [v18 addObject:v43];
          [v13 addObject:v43];
        }
      }

LABEL_78:
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v50 = v44;
      v51 = [v50 countByEnumeratingWithState:&v83 objects:v103 count:16];
      if (v51)
      {
        v52 = v51;
        v53 = *v84;
        do
        {
          for (j = 0; j != v52; ++j)
          {
            if (*v84 != v53)
            {
              objc_enumerationMutation(v50);
            }

            v55 = *(*(&v83 + 1) + 8 * j);
            if (([v13 containsObject:v55] & 1) == 0)
            {
              [v18 addObject:v55];
              [v13 addObject:v55];
            }
          }

          v52 = [v50 countByEnumeratingWithState:&v83 objects:v103 count:16];
        }

        while (v52);
      }

      v9 = v71;
      if (v71 && ([v13 containsObject:v71] & 1) == 0 && v40[2](v40, v71))
      {
        [v18 addObject:v71];
        [v13 addObject:v71];
      }

      [v13 addObjectsFromArray:v18];
      v10 = v70;
      [v70 addObject:v18];

      v16 = v77 + 1;
    }

    while (v77 + 1 != v74);
    v74 = [obj countByEnumeratingWithState:&v96 objects:v106 count:16];
  }

  while (v74);
LABEL_93:

LABEL_94:
LABEL_95:
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v56 = v10;
  v57 = [v56 countByEnumeratingWithState:&v79 objects:v102 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v80;
    do
    {
      for (k = 0; k != v58; ++k)
      {
        if (*v80 != v59)
        {
          objc_enumerationMutation(v56);
        }

        v61 = *(*(&v79 + 1) + 8 * k);
        v62 = [v61 count];
        if (v62 - 1 >= 0)
        {
          v63 = v62;
          do
          {
            v64 = [v61 objectAtIndexedSubscript:--v63];
            if (([v64 accessibilityElementsHidden] & 1) != 0 || (objc_msgSend(v64, "alpha"), v65 <= 0.0))
            {
              [v61 removeObjectAtIndex:v63];
            }
          }

          while (v63 > 0);
        }
      }

      v58 = [v56 countByEnumeratingWithState:&v79 objects:v102 count:16];
    }

    while (v58);
  }

  v66 = AXLogElementTraversal();
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
  {
    [UIApplication(UIAccessibilityElementTraversal) _accessibilityElementWindowsWithOptions:referenceWindow:allWindows:];
  }

  return v56;
}

@end