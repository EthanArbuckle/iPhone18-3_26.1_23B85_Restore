@interface UIView(UIAccessibilityElementTraversal)
+ (id)_accessibilityElementsAndContainersDescendingFromViews:()UIAccessibilityElementTraversal options:sorted:;
+ (id)_subviewsReplacedByModalViewSubviewsIfNecessary:()UIAccessibilityElementTraversal;
- (id)_accessibilitySubviewsForGettingElementsWithOptions:()UIAccessibilityElementTraversal;
- (id)_accessibilityViewChildrenWithOptions:()UIAccessibilityElementTraversal;
- (uint64_t)_accessibilityShouldBeProcessed:()UIAccessibilityElementTraversal;
- (uint64_t)_accessibilityShouldUseSupplementaryViews;
@end

@implementation UIView(UIAccessibilityElementTraversal)

+ (id)_subviewsReplacedByModalViewSubviewsIfNecessary:()UIAccessibilityElementTraversal
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  reverseObjectEnumerator = [v3 reverseObjectEnumerator];
  v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (!v5)
  {
    v7 = 0;
LABEL_36:

    goto LABEL_37;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v41;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v41 != v8)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v10 = *(*(&v40 + 1) + 8 * i);
      if ([v10 accessibilityViewIsModal] && objc_msgSend(v10, "_accessibilityViewIsVisible"))
      {
        v11 = v10;

        v7 = v11;
      }
    }

    v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v40 objects:v46 count:16];
  }

  while (v6);

  if (v7)
  {
    _accessibilityObscuredScreenAllowedViews = [v7 _accessibilityObscuredScreenAllowedViews];
    v13 = [_accessibilityObscuredScreenAllowedViews mutableCopy];

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    _accessibilityWindow = [v7 _accessibilityWindow];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v16 = v3;
    v17 = [v16 countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v37;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v36 + 1) + 8 * j);
          if ([v13 containsObject:v21])
          {
            [v14 addObject:v21];
            [v13 removeObject:v21];
          }

          if (v21 == v7)
          {
            [v14 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v18);
    }

    v31 = v16;

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    reverseObjectEnumerator = v13;
    v22 = [reverseObjectEnumerator countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v33;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v26 = *(*(&v32 + 1) + 8 * k);
          _accessibilityWindow2 = [v26 _accessibilityWindow];
          v28 = _accessibilityWindow2;
          if (v26 != _accessibilityWindow)
          {
            if (_accessibilityWindow == _accessibilityWindow2 || (AXUIKeyboardWindow(), v29 = objc_claimAutoreleasedReturnValue(), v29, v28 != v29))
            {
              [v14 addObject:v26];
            }
          }
        }

        v23 = [reverseObjectEnumerator countByEnumeratingWithState:&v32 objects:v44 count:16];
      }

      while (v23);
    }

    v3 = v14;
    goto LABEL_36;
  }

LABEL_37:

  return v3;
}

- (uint64_t)_accessibilityShouldUseSupplementaryViews
{
  if ([self _accessibilityHasOrderedChildren])
  {
    return 1;
  }

  return [self isAccessibilityElement];
}

- (id)_accessibilitySubviewsForGettingElementsWithOptions:()UIAccessibilityElementTraversal
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = a3;
  _accessibilitySubviews = [self _accessibilitySubviews];
  reverseObjectEnumerator = [_accessibilitySubviews reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v8 = AXLogElementTraversal();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [UIView(UIAccessibilityElementTraversal) _accessibilitySubviewsForGettingElementsWithOptions:];
  }

  if ([v4 shouldUseAllSubviews])
  {
    v9 = allObjects;
    goto LABEL_45;
  }

  v9 = [MEMORY[0x1E69DD250] _subviewsReplacedByModalViewSubviewsIfNecessary:allObjects];

  v10 = AXLogElementTraversal();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [UIView(UIAccessibilityElementTraversal) _accessibilitySubviewsForGettingElementsWithOptions:];
  }

  if (([v4 shouldIncludeKeyboardObscuredElements] & 1) == 0)
  {
    v54 = v4;
    v11 = v9;
    selfCopy = self;
    _accessibilitySoftwareKeyboardActive = [*MEMORY[0x1E69DDA98] _accessibilitySoftwareKeyboardActive];
    activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
    v60 = AXUIAllKeyboardWindows();
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v65 objects:v70 count:16];
    if (!v16)
    {
      goto LABEL_39;
    }

    v17 = v16;
    v18 = *v66;
    v56 = selfCopy;
    v57 = v9;
    v55 = _accessibilitySoftwareKeyboardActive;
    v59 = v15;
    while (1)
    {
      v19 = 0;
      do
      {
        if (*v66 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v65 + 1) + 8 * v19);
        if (v20 != selfCopy)
        {
          if (v20 == activeKeyboard)
          {
            v21 = 0;
          }

          else
          {
            v21 = _accessibilitySoftwareKeyboardActive;
          }

          if (v21 != 1)
          {
            goto LABEL_34;
          }

          if ([*(*(&v65 + 1) + 8 * v19) _accessibilityIsDescendantOfElement:activeKeyboard])
          {
            goto LABEL_34;
          }

          window = [v20 window];
          v23 = [v60 containsObject:window];

          v15 = v59;
          if (v23)
          {
            goto LABEL_34;
          }

          [v20 accessibilityFrame];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;
          AXDeviceGetMainScreenBounds();
          v76.origin.x = v32;
          v76.origin.y = v33;
          v76.size.width = v34;
          v76.size.height = v35;
          v73.origin.x = v25;
          v73.origin.y = v27;
          v73.size.width = v29;
          v73.size.height = v31;
          v74 = CGRectIntersection(v73, v76);
          x = v74.origin.x;
          y = v74.origin.y;
          width = v74.size.width;
          height = v74.size.height;
          if (CGRectIsEmpty(v74))
          {
            goto LABEL_34;
          }

          [activeKeyboard accessibilityFrame];
          v77.origin.x = x;
          v77.origin.y = y;
          v77.size.width = width;
          v77.size.height = height;
          if (!CGRectContainsRect(v75, v77))
          {
            goto LABEL_34;
          }

          window2 = [v20 window];
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v40 = v60;
          v41 = [v40 countByEnumeratingWithState:&v61 objects:v69 count:16];
          v42 = 3.40282347e38;
          if (v41)
          {
            v43 = v41;
            v44 = *v62;
            v42 = 3.40282347e38;
            do
            {
              for (i = 0; i != v43; ++i)
              {
                if (*v62 != v44)
                {
                  objc_enumerationMutation(v40);
                }

                v46 = *(*(&v61 + 1) + 8 * i);
                [v46 level];
                if (v47 < v42)
                {
                  [v46 level];
                  v42 = v48;
                }
              }

              v43 = [v40 countByEnumeratingWithState:&v61 objects:v69 count:16];
            }

            while (v43);
          }

          if (([v40 containsObject:window2] & 1) == 0)
          {
            [window2 level];
            if (v49 > v42)
            {

              selfCopy = v56;
              v9 = v57;
              _accessibilitySoftwareKeyboardActive = v55;
              v15 = v59;
LABEL_34:
              [v9 addObject:v20];
              goto LABEL_35;
            }
          }

          selfCopy = v56;
          v9 = v57;
          _accessibilitySoftwareKeyboardActive = v55;
          v15 = v59;
        }

LABEL_35:
        ++v19;
      }

      while (v19 != v17);
      v50 = [v15 countByEnumeratingWithState:&v65 objects:v70 count:16];
      v17 = v50;
      if (!v50)
      {
LABEL_39:

        v51 = AXLogElementTraversal();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          [UIView(UIAccessibilityElementTraversal) _accessibilitySubviewsForGettingElementsWithOptions:];
        }

        v4 = v54;
        break;
      }
    }
  }

  v52 = AXLogElementTraversal();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    [UIView(UIAccessibilityElementTraversal) _accessibilitySubviewsForGettingElementsWithOptions:];
  }

LABEL_45:

  return v9;
}

+ (id)_accessibilityElementsAndContainersDescendingFromViews:()UIAccessibilityElementTraversal options:sorted:
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  array = [MEMORY[0x1E695DF70] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        _accessibilityAdditionalElements = [v13 _accessibilityAdditionalElements];
        v15 = [_accessibilityAdditionalElements ax_filteredArrayUsingBlock:&__block_literal_global_546];
        [array axSafelyAddObjectsFromArray:v15];

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v16 = [v13 _accessibilitySubviewsForGettingElementsWithOptions:v7];
        v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v27;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v27 != v19)
              {
                objc_enumerationMutation(v16);
              }

              [*(*(&v26 + 1) + 8 * j) _addAccessibilityElementsAndOrderedContainersWithOptions:v7 toCollection:array];
            }

            v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v18);
        }

        _accessibilityAdditionalElements2 = [v13 _accessibilityAdditionalElements];
        v22 = [_accessibilityAdditionalElements2 ax_filteredArrayUsingBlock:&__block_literal_global_548];
        [array axSafelyAddObjectsFromArray:v22];
      }

      v10 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  if (a5)
  {
    [array sortUsingSelector:sel__accessibilityCompareGeometryForViewOrDictionary_];
  }

  return array;
}

- (id)_accessibilityViewChildrenWithOptions:()UIAccessibilityElementTraversal
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  _accessibilityIsSortingInUpperFrame = [self _accessibilityIsSortingInUpperFrame];
  if ((_accessibilityIsSortingInUpperFrame & 1) == 0)
  {
    [self _accessibilitySetIsSortingInUpperFrame:1];
  }

  v6 = objc_opt_class();
  v10[0] = self;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [v6 _accessibilityElementsAndContainersDescendingFromViews:v7 options:v4 sorted:{objc_msgSend(v4, "sorted") & (_accessibilityIsSortingInUpperFrame ^ 1)}];

  if ((_accessibilityIsSortingInUpperFrame & 1) == 0)
  {
    [self _accessibilitySetIsSortingInUpperFrame:0];
  }

  return v8;
}

- (uint64_t)_accessibilityShouldBeProcessed:()UIAccessibilityElementTraversal
{
  v4 = a3;
  if ([v4 includeWindowlessViews])
  {
    [self frame];
    if (v5 > 1.0)
    {
      [self frame];
      if (v6 > 1.0 && ([self isHidden] & 1) == 0)
      {
        [self alpha];
        if (v7 > 0.0)
        {
          goto LABEL_24;
        }
      }
    }
  }

  if (([self _accessibilityViewIsVisible] & 1) != 0 || objc_msgSend(v4, "includeHiddenViews"))
  {
    [self accessibilityFrame];
    v10 = v9 < 1.0 && v8 < 1.0;
    if (!v10 || [self _accessibilityOverridesInvalidFrames])
    {
      if ((UIAccessibilityIsWidgetExtension() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_24;
        }

        v12 = [self _accessibilityAncestorIsKindOf:objc_opt_class()];
        if (v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {

          goto LABEL_24;
        }

        v14 = [self _accessibilityAncestorIsKindOf:objc_opt_class()];

        if (v14)
        {
          goto LABEL_24;
        }
      }

      _accessibilityContainerToStopVisibilityCheck = [*MEMORY[0x1E69DDA98] _accessibilityContainerToStopVisibilityCheck];
      if (_accessibilityContainerToStopVisibilityCheck)
      {

LABEL_24:
        v13 = 1;
        goto LABEL_25;
      }

      if (([self _accessibilityIsFrameOutOfBounds] & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  v13 = 0;
LABEL_25:

  return v13;
}

@end