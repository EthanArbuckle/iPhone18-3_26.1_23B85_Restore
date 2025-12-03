@interface UIApplicationAuditIssuesAccessibility
+ (BOOL)_axAuditElementIsClipping:(id)clipping;
+ (BOOL)_axAuditSetSwizzledImp:(void *)imp orOrigImp:(void *)origImp forMethod:(objc_method *)method withSwizzling:(BOOL)swizzling;
+ (BOOL)_axAuditShouldElementBeCheckedForClipping:(id)clipping;
+ (BOOL)_axAuditSwiftUIViewHasText:(id)text;
+ (BOOL)_axAuditSwiftUIViewIsClipping:(id)clipping;
+ (BOOL)_axAuditSwizzleAwayContentSize:(BOOL)size;
+ (BOOL)_axAuditViewIsSwiftUI:(id)i;
+ (CGRect)_axAuditBoundsForRange:(_NSRange)range onSwiftUIView:(id)view;
+ (id)_accessibilityGetAllSubviews:(id)subviews withFiltering:(BOOL)filtering;
+ (id)_accessibilityGetAllSwiftUISubviews:(id)subviews withFiltering:(BOOL)filtering;
+ (id)_axAuditContrastDetectionForSwiftUIView:(id)view;
+ (id)_axAuditCreateElementInfoDictionariesForSubviews:(id)subviews;
+ (id)_axAuditDereferenceCellsForViewHierarchy:(id)hierarchy;
+ (id)_axAuditFindAllCollectionViewsInHierarchyForElements:(id)elements;
+ (id)_axAuditFindAllCollectionViewsInHierarchyForView:(id)view;
+ (id)_axAuditFindAllTablesInHierarchyForElements:(id)elements;
+ (id)_axAuditFindAllTablesInHierarchyForView:(id)view;
+ (id)_axAuditFindDescendantInaccessibleElements:(id)elements honorsGroups:(BOOL)groups;
+ (id)_axAuditFindElementsNotSupportingDynamicText:(id)text;
+ (id)_axAuditFindFrontmostViewControllerForHierarchy:(id)hierarchy;
+ (id)_axAuditGetAllFontSizes;
+ (id)_axAuditGetAllTableAndCollectionViewsForHierarchy:(id)hierarchy;
+ (id)_axAuditGetAttrLabelFromSwiftUIView:(id)view;
+ (id)_axAuditGetFontAttrFromAttributedString:(id)string;
+ (id)_axAuditGetFontForElement:(id)element;
+ (id)_axAuditGetFontForSwiftUIView:(id)view;
+ (id)_axAuditGetIndexPathsDictionaryForCaptureActionForView:(id)view;
+ (id)_axAuditGetIndexPathsDictionaryForUpdateActionForView:(id)view;
+ (id)_axAuditGetOriginalContentOffsetForView:(id)view;
+ (id)_axAuditGetTextFromObject:(id)object;
+ (id)_axAuditHelperToFindRelevantSubviewsOfCellView:(id)view;
+ (id)_axAuditMatchReferenceSubviews:(id)subviews againstNewSubviews:(id)newSubviews;
+ (id)_axAuditUnlabeledIssueDictForElement:(id)element honorsGroups:(BOOL)groups;
+ (void)_axAuditCaptureReferenceToCellsForViewHierarchy:(id)hierarchy;
+ (void)_axAuditCheckElementForClipping:(id)clipping storeIntoSet:(id)set;
+ (void)_axAuditCheckSwiftUIViewForClipping:(id)clipping storeIntoSet:(id)set;
+ (void)_axAuditForHierarchy:(id)hierarchy withTableOrCollectionViews:(id)views performAction:(id)action performBlockOnEachCell:(id)cell;
+ (void)_axAuditRemoveUIViewsFromArray:(id)array usingFilter:(id)filter;
+ (void)_axAuditRemoveUnsupportedCategories:(id)categories;
+ (void)_axAuditStoreClippedElementsIntoSet:(id)set forReferenceMatches:(id)matches;
+ (void)_axAuditStoreFontForElement:(id)element intoDictionary:(id)dictionary forCurrentFont:(id)font;
+ (void)_axAuditStoreFontForSwiftUIView:(id)view intoDictionary:(id)dictionary forCurrentFont:(id)font;
+ (void)_axAuditStoreFontsIntoDictionary:(id)dictionary forReferenceMatches:(id)matches;
+ (void)_axAuditUIKitShouldReportFontSize:(id)size;
+ (void)_axAuditUpdateClippingStatusForReferenceMatches:(id)matches;
+ (void)_axAuditUpdateFontsForReferenceMatches:(id)matches forFontSize:(id)size;
+ (void)_axAuditUpdateReferenceOfCellsForViewHierarchy:(id)hierarchy forFontSize:(id)size;
+ (void)_axAuditUpdateRowHeightForTableAndCollectionViewsOfElements:(id)elements;
@end

@implementation UIApplicationAuditIssuesAccessibility

+ (id)_accessibilityGetAllSubviews:(id)subviews withFiltering:(BOOL)filtering
{
  filteringCopy = filtering;
  v5 = [MEMORY[0x1E695DF70] axArrayByIgnoringNilElementsWithCount:{1, subviews}];
  array = [MEMORY[0x1E695DF70] array];
  if ([v5 count])
  {
    v7 = 0;
    v8 = *MEMORY[0x1E695F060];
    v9 = *(MEMORY[0x1E695F060] + 8);
    do
    {
      firstObject = [v5 firstObject];
      [v5 removeObjectAtIndex:0];
      if (!filteringCopy || (([firstObject bounds], v8 == v12) ? (v13 = v9 == v11) : (v13 = 0), !v13 && (objc_msgSend(firstObject, "bounds"), v15 = v14, v17 = v16, v19 = v18, v21 = v20, objc_msgSend(firstObject, "window"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(firstObject, "convertRect:toView:", v22, v15, v17, v19, v21), v24 = v23, v26 = v25, v22, objc_msgSend(MEMORY[0x1E69DCEB0], "mainScreen"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "bounds"), v29 = v28, v31 = v30, v27, (objc_msgSend(firstObject, "isHidden") & 1) == 0) && ((v32 = objc_msgSend(firstObject, "accessibilityElementsHidden"), v24 <= v29) ? (v33 = v26 <= v31) : (v33 = 0), v33 && (v32 & 1) == 0)))
      {
        if (([array containsObject:firstObject] & 1) == 0)
        {
          subviews = [firstObject subviews];
          [v5 addObjectsFromArray:subviews];
          [array addObject:firstObject];
        }
      }

      if (![v5 count])
      {
        break;
      }
    }

    while (v7++ < 0x270F);
  }

  return array;
}

+ (id)_accessibilityGetAllSwiftUISubviews:(id)subviews withFiltering:(BOOL)filtering
{
  filteringCopy = filtering;
  v5 = [MEMORY[0x1E695DF70] axArrayByIgnoringNilElementsWithCount:{1, subviews}];
  array = [MEMORY[0x1E695DF70] array];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v9 = v8;
  v11 = v10;

  if ([v5 count])
  {
    v12 = 0;
    v13 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
    do
    {
      firstObject = [v5 firstObject];
      [v5 removeObjectAtIndex:0];
      automationElements = 0;
      if (objc_opt_respondsToSelector())
      {
        automationElements = [firstObject automationElements];
      }

      if ([automationElements count])
      {
        [v5 addObjectsFromArray:automationElements];
      }

      else if (!filteringCopy || (objc_opt_respondsToSelector() & 1) == 0 || (([firstObject accessibilityFrame], v13 != v20) || v14 != v19) && v17 <= v9 && v18 <= v11)
      {
        [array addObject:firstObject];
      }

      if (![v5 count])
      {
        break;
      }
    }

    while (v12++ < 0x270F);
  }

  return array;
}

+ (id)_axAuditGetAllFontSizes
{
  v12[12] = *MEMORY[0x1E69E9840];
  v2 = ALLFONTSIZES;
  if (!ALLFONTSIZES)
  {
    v3 = *MEMORY[0x1E69DDC88];
    v12[0] = *MEMORY[0x1E69DDC68];
    v12[1] = v3;
    v4 = *MEMORY[0x1E69DDC70];
    v12[2] = *MEMORY[0x1E69DDC78];
    v12[3] = v4;
    v5 = *MEMORY[0x1E69DDC58];
    v12[4] = *MEMORY[0x1E69DDC60];
    v12[5] = v5;
    v6 = *MEMORY[0x1E69DDC40];
    v12[6] = *MEMORY[0x1E69DDC50];
    v12[7] = v6;
    v7 = *MEMORY[0x1E69DDC30];
    v12[8] = *MEMORY[0x1E69DDC38];
    v12[9] = v7;
    v8 = *MEMORY[0x1E69DDC20];
    v12[10] = *MEMORY[0x1E69DDC28];
    v12[11] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:12];
    v10 = ALLFONTSIZES;
    ALLFONTSIZES = v9;

    v2 = ALLFONTSIZES;
  }

  return v2;
}

+ (id)_axAuditFindAllTablesInHierarchyForView:(id)view
{
  viewCopy = view;
  v4 = objc_opt_new();
  do
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 addObject:viewCopy];
    }

    superview = [viewCopy superview];

    viewCopy = superview;
  }

  while (superview);
  v6 = [v4 copy];

  return v6;
}

+ (id)_axAuditFindAllTablesInHierarchyForElements:(id)elements
{
  v20 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = elementsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [self _axAuditFindAllTablesInHierarchyForView:{v11, v15}];
          if ([v12 count])
          {
            [v5 unionSet:v12];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

+ (id)_axAuditFindAllCollectionViewsInHierarchyForView:(id)view
{
  viewCopy = view;
  v4 = objc_opt_new();
  do
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 addObject:viewCopy];
    }

    superview = [viewCopy superview];

    viewCopy = superview;
  }

  while (superview);
  v6 = [v4 copy];

  return v6;
}

+ (id)_axAuditFindAllCollectionViewsInHierarchyForElements:(id)elements
{
  v20 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = elementsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [self _axAuditFindAllCollectionViewsInHierarchyForView:{v11, v15}];
          if ([v12 count])
          {
            [v5 unionSet:v12];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

+ (void)_axAuditUpdateRowHeightForTableAndCollectionViewsOfElements:(id)elements
{
  v27 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  v5 = [self _axAuditFindAllTablesInHierarchyForElements:elementsCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        [v10 beginUpdates];
        [v10 endUpdates];
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v11 = [self _axAuditFindAllCollectionViewsInHierarchyForElements:elementsCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * j);
        [v16 reloadData];
        [v16 layoutIfNeeded];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

+ (void)_axAuditRemoveUIViewsFromArray:(id)array usingFilter:(id)filter
{
  v30 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  filterCopy = filter;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  array = [MEMORY[0x1E695DF70] array];
  v8 = [arrayCopy count];
  if (v8)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      v11 = [arrayCopy objectAtIndex:i];
      if (filterCopy[2](filterCopy, v11))
      {
        [indexSet addIndex:i];
        [array addObject:v11];
      }
    }
  }

  [arrayCopy removeObjectsAtIndexes:{indexSet, indexSet}];
  indexSet2 = [MEMORY[0x1E696AD50] indexSet];
  v13 = [arrayCopy count];
  if (v13)
  {
    v14 = v13;
    for (j = 0; j != v14; ++j)
    {
      v16 = [arrayCopy objectAtIndex:j];
      window = [v16 window];

      if (window)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v18 = array;
        v19 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v26;
          do
          {
            v22 = 0;
            do
            {
              if (*v26 != v21)
              {
                objc_enumerationMutation(v18);
              }

              if ([v16 isDescendantOfView:*(*(&v25 + 1) + 8 * v22)])
              {
                [indexSet2 addIndex:j];
              }

              ++v22;
            }

            while (v20 != v22);
            v20 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v20);
        }
      }

      else
      {
        [indexSet2 addIndex:j];
      }
    }
  }

  [arrayCopy removeObjectsAtIndexes:indexSet2];
}

+ (id)_axAuditFindFrontmostViewControllerForHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  v4 = [MEMORY[0x1E695DF70] axArrayByIgnoringNilElementsWithCount:{1, hierarchyCopy}];
  if ([v4 count])
  {
    v5 = hierarchyCopy;
    do
    {
      firstObject = [v4 firstObject];
      [v4 removeObjectAtIndex:0];
      presentedViewController = [firstObject presentedViewController];

      if (presentedViewController)
      {
        presentedViewController2 = [firstObject presentedViewController];

        [MEMORY[0x1E695DF70] arrayWithObject:presentedViewController2];
        v4 = topViewController = v4;
        v5 = presentedViewController2;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([firstObject topViewController], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
        {
          v11 = MEMORY[0x1E695DF70];
          topViewController = [firstObject topViewController];
          v12 = [v11 arrayWithObject:topViewController];

          v4 = v12;
        }

        else
        {
          topViewController = [firstObject childViewControllers];
          [v4 addObjectsFromArray:topViewController];
        }
      }
    }

    while ([v4 count]);
  }

  else
  {
    v5 = hierarchyCopy;
  }

  return v5;
}

+ (id)_axAuditGetFontForElement:(id)element
{
  elementCopy = element;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textLabel = [elementCopy textLabel];
    font = [textLabel font];

    if (font)
    {
      goto LABEL_29;
    }

    detailTextLabel = [elementCopy detailTextLabel];
    font2 = [detailTextLabel font];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    detailTextLabel = [elementCopy attributedText];
    font2 = [UIApplicationAuditIssuesAccessibility _axAuditGetFontAttrFromAttributedString:detailTextLabel];
LABEL_6:
    font = font2;

    goto LABEL_9;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  v8 = [elementCopy safeValueForKey:@"font"];
  font = __UIAccessibilityCastAsClass();

LABEL_9:
  if (font)
  {
    goto LABEL_29;
  }

LABEL_10:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textLayoutManager = [elementCopy textLayoutManager];
    if (textLayoutManager)
    {
      objc_opt_class();
      textContentManager = [textLayoutManager textContentManager];
      v11 = __UIAccessibilityCastAsClass();

      if (v11)
      {
        textStorage = [v11 textStorage];
        if (textStorage)
        {
          font = [UIApplicationAuditIssuesAccessibility _axAuditGetFontAttrFromAttributedString:textStorage];
        }

        else
        {
          font = 0;
        }
      }

      else
      {
        font = 0;
      }
    }

    else
    {
      font = 0;
    }

    goto LABEL_28;
  }

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  if (![v14 isEqualToString:@"_UITextContainerView"])
  {

LABEL_19:
    textLayoutManager = [elementCopy _accessibilityAXAttributedValue];
    if ([textLayoutManager isAXAttributedString])
    {
      cfAttributedString = [textLayoutManager cfAttributedString];
    }

    else
    {
      cfAttributedString = 0;
    }

    goto LABEL_23;
  }

  v15 = objc_opt_respondsToSelector();

  if ((v15 & 1) == 0)
  {
    goto LABEL_19;
  }

  textLayoutManager = [elementCopy performSelector:sel_textStorage];
  cfAttributedString = textLayoutManager;
LABEL_23:
  font = [UIApplicationAuditIssuesAccessibility _axAuditGetFontAttrFromAttributedString:cfAttributedString];
LABEL_28:

LABEL_29:
  v17 = font;

  return v17;
}

+ (id)_axAuditGetFontForSwiftUIView:(id)view
{
  viewCopy = view;
  v4 = [objc_opt_class() _axAuditGetAttrLabelFromSwiftUIView:viewCopy];

  if (v4)
  {
    v5 = [UIApplicationAuditIssuesAccessibility _axAuditGetFontAttrFromAttributedString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_axAuditGetFontAttrFromAttributedString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__1;
    v26 = __Block_byref_object_dispose__1;
    v27 = 0;
    v5 = [stringCopy length];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__1;
    v20 = __Block_byref_object_dispose__1;
    v21 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0xBFF0000000000000;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __81__UIApplicationAuditIssuesAccessibility__axAuditGetFontAttrFromAttributedString___block_invoke;
    v11[3] = &unk_1E78AAA60;
    v11[4] = &v22;
    v11[5] = &v16;
    v11[6] = &v12;
    [v4 enumerateAttributesInRange:0 options:v5 usingBlock:{0, v11}];
    v6 = v23[5];
    if (!v6)
    {
      if (!v17[5] || v13[3] == -1.0)
      {
        v6 = 0;
      }

      else
      {
        v7 = [MEMORY[0x1E69DB878] fontWithName:? size:?];
        v8 = v23[5];
        v23[5] = v7;

        v6 = v23[5];
      }
    }

    v9 = v6;
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __81__UIApplicationAuditIssuesAccessibility__axAuditGetFontAttrFromAttributedString___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  v8 = *MEMORY[0x1E69DB648];
  v9 = [v7 objectForKey:*MEMORY[0x1E69DB648]];

  if (v9)
  {
    objc_opt_class();
    v10 = [v7 objectForKey:v8];
    v11 = __UIAccessibilityCastAsClass();

    v12 = *(a1[4] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    *a5 = 1;
  }

  else
  {
    v14 = MEMORY[0x1E6988E40];
    v15 = [v7 objectForKey:*MEMORY[0x1E6988E40]];
    if (v15)
    {
      v16 = v15;
      v17 = MEMORY[0x1E6988E48];
      v18 = [v7 objectForKey:*MEMORY[0x1E6988E48]];

      if (v18)
      {
        objc_opt_class();
        v19 = [v7 objectForKey:*v14];
        v20 = __UIAccessibilityCastAsClass();

        v21 = *(a1[5] + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v20;

        objc_opt_class();
        v23 = [v7 objectForKey:*v17];
        v24 = __UIAccessibilityCastAsClass();

        [v24 floatValue];
        *(*(a1[6] + 8) + 24) = v25;
        *a5 = 1;
      }
    }
  }
}

+ (id)_axAuditFindElementsNotSupportingDynamicText:(id)text
{
  v59 = *MEMORY[0x1E69E9840];
  textCopy = text;
  weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v5 = textCopy;
  v6 = [v5 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v54;
    v44 = *MEMORY[0x1E69DDC68];
    v40 = *v54;
    selfCopy = self;
    do
    {
      v9 = 0;
      v42 = v7;
      do
      {
        if (*v54 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v53 + 1) + 8 * v9);
        v11 = [v5 objectForKey:{v10, v35, v36, v37, v38, v39}];
        v12 = [v11 count];

        if (v12 >= 2)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            string = [self _axAuditGetTextFromObject:v10];
            if (![string length])
            {
              goto LABEL_40;
            }
          }

          else if ([objc_opt_class() _axAuditViewIsSwiftUI:v10])
          {
            v14 = [objc_opt_class() _axAuditGetAttrLabelFromSwiftUIView:v10];
            string = [v14 string];

            if (![objc_opt_class() _axAuditSwiftUIViewHasText:v10])
            {
              goto LABEL_40;
            }
          }

          else
          {
            string = 0;
          }

          v45 = string;
          v46 = v9;
          v15 = v44;
          array = [MEMORY[0x1E695DF70] array];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          _axAuditGetAllFontSizes = [self _axAuditGetAllFontSizes];
          v18 = [_axAuditGetAllFontSizes countByEnumeratingWithState:&v49 objects:v57 count:16];
          v48 = array;
          if (v18)
          {
            v19 = v18;
            v47 = 0;
            v20 = *v50;
            v21 = 0.0;
            v22 = 0.0;
            v23 = 0.0;
            do
            {
              v24 = 0;
              v25 = v22;
              do
              {
                if (*v50 != v20)
                {
                  objc_enumerationMutation(_axAuditGetAllFontSizes);
                }

                v26 = *(*(&v49 + 1) + 8 * v24);
                v27 = [v5 objectForKey:v10];
                v28 = [v27 objectForKey:v26];

                if (v28)
                {
                  v29 = [v27 objectForKeyedSubscript:v26];
                  [v29 pointSize];
                  v22 = v30;
                  if (v21 == 0.0)
                  {
                    v31 = v26;

                    v15 = v31;
                    v21 = v22;
                  }

                  else
                  {
                    if (v23 == 0.0)
                    {
                      v23 = v30;
                    }

                    if (v30 <= v25)
                    {
                      [v48 addObject:v26];
                      v47 = 1;
                    }
                  }

                  v25 = v22;
                }

                else
                {
                  v22 = v25;
                }

                ++v24;
              }

              while (v19 != v24);
              v19 = [_axAuditGetAllFontSizes countByEnumeratingWithState:&v49 objects:v57 count:16];
            }

            while (v19);

            if (v21 < v23)
            {
              v8 = v40;
              self = selfCopy;
              v7 = v42;
              string = v45;
              array = v48;
              if ((v47 & 1) == 0)
              {
LABEL_39:

                v9 = v46;
LABEL_40:

                goto LABEL_41;
              }

LABEL_36:
              [weakToStrongObjectsMapTable setObject:array forKey:v10];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || ([self _axAuditGetTextFromObject:v10], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "length"), v32, array = v48, v33))
              {
                [array componentsJoinedByString:{@", "}];
                v39 = v38 = string;
                v36 = @"AX Audit: Element: %@, with text: %@, does not support these font sizes:%@";
                v37 = v10;
                LOBYTE(v35) = 1;
                _AXLogWithFacility();

                array = v48;
              }

              goto LABEL_39;
            }

            v8 = v40;
            self = selfCopy;
            v7 = v42;
            string = v45;
            array = v48;
          }

          else
          {

            string = v45;
          }

          [array insertObject:v15 atIndex:0];
          goto LABEL_36;
        }

LABEL_41:
        ++v9;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v7);
  }

  return weakToStrongObjectsMapTable;
}

+ (void)_axAuditStoreFontForElement:(id)element intoDictionary:(id)dictionary forCurrentFont:(id)font
{
  elementCopy = element;
  dictionaryCopy = dictionary;
  fontCopy = font;
  v10 = [self _axAuditGetFontForElement:elementCopy];
  v11 = [self _axAuditGetTextFromObject:elementCopy];
  v12 = v11;
  if (v10 && v11)
  {
    v13 = [dictionaryCopy objectForKey:elementCopy];

    if (v13)
    {
      v14 = [dictionaryCopy objectForKey:elementCopy];
      dictionary = v14;
      v16 = v10;
      v17 = fontCopy;
    }

    else
    {
      LOBYTE(v18) = 1;
      _AXLogWithFacility();
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:v10 forKeyedSubscript:fontCopy];
      v14 = dictionaryCopy;
      v16 = dictionary;
      v17 = elementCopy;
    }

    [v14 setObject:v16 forKey:v17];
  }
}

+ (void)_axAuditStoreFontForSwiftUIView:(id)view intoDictionary:(id)dictionary forCurrentFont:(id)font
{
  viewCopy = view;
  dictionaryCopy = dictionary;
  fontCopy = font;
  v10 = [self _axAuditGetFontForSwiftUIView:viewCopy];
  if (v10)
  {
    v11 = [dictionaryCopy objectForKey:viewCopy];

    if (v11)
    {
      v12 = [dictionaryCopy objectForKey:viewCopy];
      dictionary = v12;
      v14 = v10;
      v15 = fontCopy;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:v10 forKeyedSubscript:fontCopy];
      v12 = dictionaryCopy;
      v14 = dictionary;
      v15 = viewCopy;
    }

    [v12 setObject:v14 forKey:v15];
  }
}

+ (void)_axAuditRemoveUnsupportedCategories:(id)categories
{
  v43 = *MEMORY[0x1E69E9840];
  categoriesCopy = categories;
  array = [MEMORY[0x1E695DF70] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v4 = categoriesCopy;
  v26 = [v4 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v26)
  {
    v24 = v4;
    v25 = *v37;
    do
    {
      v5 = 0;
      do
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(v4);
        }

        v6 = *(*(&v36 + 1) + 8 * v5);
        if (v6)
        {
          v27 = v5;
          array2 = [MEMORY[0x1E695DF70] array];
          v8 = [v4 objectForKey:v6];
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v9 = [v8 countByEnumeratingWithState:&v32 objects:v41 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v33;
            do
            {
              v12 = 0;
              do
              {
                if (*v33 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v32 + 1) + 8 * v12);
                v14 = v6;
                while ([v14 _accessibilitySupportsContentSizeCategory:v13])
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    superview = [v14 superview];

                    v14 = superview;
                    if (superview)
                    {
                      continue;
                    }
                  }

                  goto LABEL_18;
                }

                [array2 addObject:v13];
LABEL_18:
                ++v12;
              }

              while (v12 != v10);
              v10 = [v8 countByEnumeratingWithState:&v32 objects:v41 count:16];
            }

            while (v10);
          }

          [v8 removeObjectsForKeys:array2];
          allKeys = [v8 allKeys];
          v17 = [allKeys count];

          if (!v17)
          {
            [array addObject:v6];
          }

          v4 = v24;
          v5 = v27;
        }

        ++v5;
      }

      while (v5 != v26);
      v26 = [v4 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v26);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = array;
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      v22 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [v4 removeObjectForKey:*(*(&v28 + 1) + 8 * v22++)];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v20);
  }
}

+ (void)_axAuditCheckElementForClipping:(id)clipping storeIntoSet:(id)set
{
  clippingCopy = clipping;
  setCopy = set;
  if ([self _axAuditElementIsClipping:clippingCopy])
  {
    [setCopy addObject:clippingCopy];
  }
}

+ (BOOL)_axAuditElementIsClipping:(id)clipping
{
  clippingCopy = clipping;
  if ([self _axAuditShouldElementBeCheckedForClipping:clippingCopy])
  {
    [clippingCopy frame];
    [clippingCopy alignmentRectForFrame:?];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [clippingCopy sizeThatFits:{v9, v11}];
    v15 = v13;
    v16 = v14;
    v17 = v10 + 5.0 < v13 && v13 != *MEMORY[0x1E69DE788];
    v18 = v12 + 5.0 < v14 && v14 != *MEMORY[0x1E69DE788];
    v26.origin.x = v6;
    v26.origin.y = v8;
    v26.size.width = v10;
    v26.size.height = v12;
    v19 = CGRectEqualToRect(v26, *MEMORY[0x1E695F058]);
    v20 = *(MEMORY[0x1E695F060] + 8);
    v21 = v10 == *MEMORY[0x1E695F060];
    if (v12 != v20)
    {
      v21 = 0;
    }

    v22 = v19 || v21;
    v23 = v15 == *MEMORY[0x1E695F060];
    if (v16 != v20)
    {
      v23 = 0;
    }

    v24 = ((v22 | v23) ^ 1) & (v17 || v18);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (void)_axAuditCheckSwiftUIViewForClipping:(id)clipping storeIntoSet:(id)set
{
  clippingCopy = clipping;
  setCopy = set;
  if ([self _axAuditSwiftUIViewIsClipping:clippingCopy])
  {
    [setCopy addObject:clippingCopy];
  }
}

+ (BOOL)_axAuditSwiftUIViewIsClipping:(id)clipping
{
  clippingCopy = clipping;
  if ([self _axAuditSwiftUIViewHasText:clippingCopy])
  {
    v5 = [objc_opt_class() _axAuditGetAttrLabelFromSwiftUIView:clippingCopy];
    v6 = v5;
    if (v5 && [v5 length] >= 2)
    {
      [objc_opt_class() _axAuditBoundsForRange:0 onSwiftUIView:{1, clippingCopy}];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [objc_opt_class() _axAuditBoundsForRange:1 onSwiftUIView:{1, clippingCopy}];
      v45 = v17;
      v46 = v16;
      v43 = v19;
      v44 = v18;
      [objc_opt_class() _axAuditBoundsForRange:objc_msgSend(v6 onSwiftUIView:{"length") - 1, 1, clippingCopy}];
      v41 = v21;
      v42 = v20;
      v39 = v23;
      v40 = v22;
      [objc_opt_class() _axAuditBoundsForRange:objc_msgSend(v6 onSwiftUIView:{"length") - 2, 1, clippingCopy}];
      v49 = v25;
      v50 = v24;
      v47 = v27;
      v48 = v26;
      if (objc_opt_respondsToSelector())
      {
        [clippingCopy accessibilityFrame];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
      }

      else
      {
        v29 = *MEMORY[0x1E695F058];
        v31 = *(MEMORY[0x1E695F058] + 8);
        v33 = *(MEMORY[0x1E695F058] + 16);
        v35 = *(MEMORY[0x1E695F058] + 24);
      }

      if (AX_CGRectAlmostEqualToRect() && (v51.origin.x = v9, v51.origin.y = v11, v51.size.width = v13, v51.size.height = v15, v55.origin.x = v29, v55.origin.y = v31, v55.size.width = v33, v55.size.height = v35, !CGRectEqualToRect(v51, v55)))
      {
        v52.origin.y = v45;
        v52.origin.x = v46;
        v52.size.height = v43;
        v52.size.width = v44;
        v56.origin.x = v29;
        v56.origin.y = v31;
        v56.size.width = v33;
        v56.size.height = v35;
        v36 = !CGRectEqualToRect(v52, v56);
      }

      else
      {
        LOBYTE(v36) = 0;
      }

      if (AX_CGRectAlmostEqualToRect() && (v53.origin.x = v42, v53.origin.y = v41, v53.size.width = v40, v53.size.height = v39, v57.origin.x = v29, v57.origin.y = v31, v57.size.width = v33, v57.size.height = v35, !CGRectEqualToRect(v53, v57)))
      {
        v54.origin.y = v49;
        v54.origin.x = v50;
        v54.size.height = v47;
        v54.size.width = v48;
        v58.origin.x = v29;
        v58.origin.y = v31;
        v58.size.width = v33;
        v58.size.height = v35;
        v37 = !CGRectEqualToRect(v54, v58);
      }

      else
      {
        LOBYTE(v37) = 0;
      }

      v7 = v36 || v37;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)_axAuditShouldElementBeCheckedForClipping:(id)clipping
{
  clippingCopy = clipping;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      delegate = [clippingCopy delegate];
      if (objc_opt_respondsToSelector() & 1) != 0 && ([delegate textFieldShouldBeginEditing:clippingCopy])
      {
        v6 = 0;
LABEL_18:

        goto LABEL_19;
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([clippingCopy isEditable] & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([clippingCopy isScrollEnabled] & 1) == 0)
      {
        superview = [clippingCopy superview];
        if (!superview || (v8 = superview, [clippingCopy superview], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "conformsToProtocol:", &unk_1F1E10CA0), v9, v8, (v10 & 1) == 0))
        {
          delegate = [self _axAuditGetTextFromObject:clippingCopy];
          v6 = [delegate length] != 0;
          goto LABEL_18;
        }
      }
    }
  }

  v6 = 0;
LABEL_19:

  return v6;
}

+ (id)_axAuditContrastDetectionForSwiftUIView:(id)view
{
  v27[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if ([self _axAuditSwiftUIViewHasText:viewCopy])
  {
    v5 = [self _axAuditGetAttrLabelFromSwiftUIView:viewCopy];
    v6 = v5;
    if (v5)
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x3032000000;
      v24 = __Block_byref_object_copy__1;
      v25 = __Block_byref_object_dispose__1;
      v26 = 0;
      v7 = [v5 length];
      v8 = *MEMORY[0x1E69DB650];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __81__UIApplicationAuditIssuesAccessibility__axAuditContrastDetectionForSwiftUIView___block_invoke;
      v20[3] = &unk_1E78AAA88;
      v20[4] = &v21;
      [v6 enumerateAttribute:v8 inRange:0 options:v7 usingBlock:{0, v20}];
      if (v22[5])
      {
        v9 = [UIViewAuditIssuesAccessibility _axAuditHexValueForColor:?];
      }

      else
      {
        v9 = 0;
      }

      v11 = [UIApplicationAuditIssuesAccessibility _axAuditGetFontAttrFromAttributedString:v6];
      v12 = v11;
      if (v11)
      {
        v13 = MEMORY[0x1E696AD98];
        [v11 pointSize];
        v14 = [v13 numberWithDouble:?];
      }

      else
      {
        v14 = 0;
      }

      LOBYTE(v19) = 1;
      _AXLogWithFacility();
      string = [v6 string];
      string2 = [v6 string];
      v17 = [UIAccessibilityAuditUtilities dictionaryWithAXAuditIssue:4001 element:viewCopy additionalInfo:0 identifier:string foregroundColor:v9 backgroundColor:0 fontSize:v14 elementRect:0 text:string2];
      v27[0] = v17;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];

      _Block_object_dispose(&v21, 8);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __81__UIApplicationAuditIssuesAccessibility__axAuditContrastDetectionForSwiftUIView___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *a5 = 1;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

+ (BOOL)_axAuditSwiftUIViewHasText:(id)text
{
  textCopy = text;
  if ([objc_opt_class() _axAuditViewIsSwiftUI:textCopy])
  {
    v4 = [objc_opt_class() _axAuditGetAttrLabelFromSwiftUIView:textCopy];
    if (v4)
    {
      [objc_opt_class() _axAuditBoundsForRange:0 onSwiftUIView:{objc_msgSend(v4, "length"), textCopy}];
      v5 = !CGRectEqualToRect(v7, *MEMORY[0x1E695F058]);
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (CGRect)_axAuditBoundsForRange:(_NSRange)range onSwiftUIView:(id)view
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  v9 = *(MEMORY[0x1E695F058] + 16);
  v10 = *(MEMORY[0x1E695F058] + 24);
  if ([objc_opt_class() _axAuditViewIsSwiftUI:viewCopy] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [viewCopy _accessibilityBoundsForRange:{location, length}];
    v7 = v11;
    v8 = v12;
    v9 = v13;
    v10 = v14;
  }

  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

+ (id)_axAuditGetAttrLabelFromSwiftUIView:(id)view
{
  viewCopy = view;
  if ([objc_opt_class() _axAuditViewIsSwiftUI:viewCopy] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [viewCopy performSelector:sel_accessibilityAttributedLabel];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)_axAuditViewIsSwiftUI:(id)i
{
  iCopy = i;
  NSClassFromString(&cfstr_SwiftuiAccessi.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (id)_axAuditFindDescendantInaccessibleElements:(id)elements honorsGroups:(BOOL)groups
{
  groupsCopy = groups;
  v115 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  array = [MEMORY[0x1E695DF70] array];
  v6 = MEMORY[0x1E695DF70];
  v92 = elementsCopy;
  subviews = [elementsCopy subviews];
  v8 = [v6 arrayWithArray:subviews];

  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  v93 = v8;
  if ([v8 count])
  {
    v10 = 0;
    v11 = !groupsCopy;
    do
    {
      firstObject = [v93 firstObject];
      [v93 removeObjectAtIndex:0];
      if (([firstObject accessibilityElementsHidden] & 1) == 0)
      {
        [firstObject bounds];
        if (v13 >= 1.0)
        {
          [firstObject bounds];
          v14 = v15 < 1.0;
        }

        else
        {
          v14 = 1;
        }

        [firstObject alpha];
        v17 = v16;
        isAccessibilityElement = [firstObject isAccessibilityElement];
        if (((isAccessibilityElement | v11) & 1) == 0)
        {
          isAccessibilityElement = [firstObject accessibilityContainerType] == 4;
        }

        v19 = [objc_opt_class() _axAuditFindAllTablesInHierarchyForView:firstObject];
        v20 = [v19 count];

        if (!v20 || (NSClassFromString(&cfstr_Uitablecellacc.isa), isKindOfClass = objc_opt_isKindOfClass(), objc_opt_class(), v22 = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0) && (v22 & 1) == 0)
        {
          subviews2 = [firstObject subviews];
          v24 = ([subviews2 count] != 0) | isAccessibilityElement | v14;

          if ((v17 > 0.0) & ~v24 | isAccessibilityElement & 1)
          {
            if (((v17 > 0.0) & ~v24) != 0)
            {
              v25 = array2;
            }

            else
            {
              v25 = array3;
            }

            [v25 addObject:firstObject];
          }

          if (([firstObject isAccessibilityElement] & 1) == 0)
          {
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            subviews3 = [firstObject subviews];
            v27 = [subviews3 countByEnumeratingWithState:&v107 objects:v114 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v108;
              do
              {
                for (i = 0; i != v28; ++i)
                {
                  if (*v108 != v29)
                  {
                    objc_enumerationMutation(subviews3);
                  }

                  v31 = *(*(&v107 + 1) + 8 * i);
                  if (([v93 containsObject:v31] & 1) == 0)
                  {
                    [v93 addObject:v31];
                  }
                }

                v28 = [subviews3 countByEnumeratingWithState:&v107 objects:v114 count:16];
              }

              while (v28);
            }
          }
        }
      }

      if (![v93 count])
      {
        break;
      }
    }

    while (v10++ < 0x270F);
  }

  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v90 = [array2 count];
  if (v90)
  {
    for (j = 0; j != v90; ++j)
    {
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v34 = array3;
      v35 = [v34 countByEnumeratingWithState:&v103 objects:v113 count:16];
      if (v35)
      {
        v36 = *v104;
        while (2)
        {
          for (k = 0; k != v35; ++k)
          {
            if (*v104 != v36)
            {
              objc_enumerationMutation(v34);
            }

            v38 = *(*(&v103 + 1) + 8 * k);
            v39 = [array2 objectAtIndex:j];
            [v38 bounds];
            [v38 convertRect:v92 toView:?];
            v41 = v40;
            v43 = v42;
            v45 = v44;
            v47 = v46;
            [v39 bounds];
            [v39 convertRect:v92 toView:?];
            v49 = v48;
            v51 = v50;
            v53 = v52;
            v55 = v54;
            subviews4 = [v38 subviews];
            if ([subviews4 count])
            {
            }

            else
            {
              v117.origin.x = v41;
              v117.origin.y = v43;
              v117.size.width = v45;
              v117.size.height = v47;
              v118.origin.x = v49;
              v118.origin.y = v51;
              v118.size.width = v53;
              v118.size.height = v55;
              v57 = CGRectIntersectsRect(v117, v118);

              if (v57)
              {
                v64 = 0;
                LOBYTE(v35) = 1;
                goto LABEL_56;
              }
            }

            v58 = vabdd_f64(v43, v51);
            v59 = vabdd_f64(v45, v53);
            v60 = vabdd_f64(v47, v55);
            if (vabdd_f64(v41, v49) <= 20.0 && v58 <= 20.0 && v59 <= 50.0 && v60 <= 50.0)
            {
              LOBYTE(v35) = 0;
              v64 = 1;
LABEL_56:

              goto LABEL_57;
            }
          }

          v35 = [v34 countByEnumeratingWithState:&v103 objects:v113 count:16];
          if (v35)
          {
            continue;
          }

          break;
        }
      }

      v64 = 0;
LABEL_57:

      if ((v35 & 1) != 0 || v64)
      {
        [indexSet addIndex:j];
      }
    }
  }

  [array2 removeObjectsAtIndexes:indexSet];
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = array2;
  v88 = [obj countByEnumeratingWithState:&v99 objects:v112 count:16];
  if (v88)
  {
    v87 = *v100;
    do
    {
      for (m = 0; m != v88; ++m)
      {
        if (*v100 != v87)
        {
          objc_enumerationMutation(obj);
        }

        v66 = *(*(&v99 + 1) + 8 * m);
        v67 = [UIViewAuditIssuesAccessibility _axAuditTextCandidateForView:v66, v80];
        v68 = MEMORY[0x1E696B098];
        [v66 bounds];
        [v66 convertRect:v92 toView:?];
        v69 = [v68 valueWithCGRect:?];
        if ([v67 count])
        {
          v89 = v67;
          v91 = m;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v70 = v67;
          v71 = [v70 countByEnumeratingWithState:&v95 objects:v111 count:16];
          if (v71)
          {
            v72 = v71;
            v73 = *v96;
            do
            {
              for (n = 0; n != v72; ++n)
              {
                if (*v96 != v73)
                {
                  objc_enumerationMutation(v70);
                }

                v75 = *(*(&v95 + 1) + 8 * n);
                v76 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%li", 1007, v82, v83];
                [v75 setObject:v76 forKey:@"AXAuditIssueTypeKey"];

                [v75 setObject:v69 forKey:@"AXAuditIssueElementRectKey"];
                [v75 setObject:v66 forKey:@"AXAuditIssueElementKey"];
                v77 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v75];
                [array addObject:v77];

                v82 = @"AX Audit: Element: %@ is inaccessible and has text.";
                v83 = v66;
                LOBYTE(v81) = 1;
                _AXLogWithFacility();
              }

              v72 = [v70 countByEnumeratingWithState:&v95 objects:v111 count:{16, v81, @"AX Audit: Element: %@ is inaccessible and has text.", v66}];
            }

            while (v72);
          }

          v67 = v89;
          m = v91;
        }

        else
        {
          v78 = [UIAccessibilityAuditUtilities dictionaryWithAXAuditIssue:1006 element:v66 additionalInfo:0 identifier:0 foregroundColor:0 backgroundColor:0 fontSize:0 elementRect:v69 text:0];
          [array addObject:v78];

          v82 = @"AX Audit: Element: %@ is inaccessible.";
          v83 = v66;
          LOBYTE(v80) = 1;
          _AXLogWithFacility();
        }
      }

      v88 = [obj countByEnumeratingWithState:&v99 objects:v112 count:16];
    }

    while (v88);
  }

  return array;
}

+ (id)_axAuditUnlabeledIssueDictForElement:(id)element honorsGroups:(BOOL)groups
{
  groupsCopy = groups;
  elementCopy = element;
  accessibilityContainerType = [elementCopy accessibilityContainerType];
  v7 = 0;
  if (groupsCopy && accessibilityContainerType == 4)
  {
    accessibilityLabel = [elementCopy accessibilityLabel];
    if ([accessibilityLabel length])
    {
      v7 = 0;
LABEL_5:

      goto LABEL_8;
    }

    accessibilityValue = [elementCopy accessibilityValue];
    v10 = [accessibilityValue length];

    if (!v10)
    {
      accessibilityLabel = elementCopy;
      window = [accessibilityLabel window];

      if (window)
      {
        superview = [accessibilityLabel superview];
        [accessibilityLabel frame];
        [superview convertPoint:0 toView:?];
        v15 = v14;
        v17 = v16;

        [accessibilityLabel bounds];
        v19 = v18;
        [accessibilityLabel bounds];
        v20 = [MEMORY[0x1E696B098] valueWithCGRect:{v15, v17, v19}];
      }

      else
      {
        v20 = 0;
      }

      v7 = [UIAccessibilityAuditUtilities dictionaryWithAXAuditIssue:1000 element:accessibilityLabel additionalInfo:0 identifier:0 foregroundColor:0 backgroundColor:0 fontSize:0 elementRect:v20 text:0];

      goto LABEL_5;
    }

    v7 = 0;
  }

LABEL_8:

  return v7;
}

+ (id)_axAuditGetAllTableAndCollectionViewsForHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  array = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] axArrayByIgnoringNilElementsWithCount:{1, hierarchyCopy}];
  if ([v5 count])
  {
    v6 = 0;
    do
    {
      firstObject = [v5 firstObject];
      [v5 removeObjectAtIndex:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        [array addObject:firstObject];
      }

      subviews = [firstObject subviews];
      [v5 addObjectsFromArray:subviews];

      if (![v5 count])
      {
        break;
      }
    }

    while (v6++ < 0x270F);
  }

  return array;
}

+ (id)_axAuditGetIndexPathsDictionaryForCaptureActionForView:(id)view
{
  viewCopy = view;
  dictionary = [cellReferenceMapTable objectForKey:viewCopy];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [cellReferenceMapTable setObject:dictionary forKey:viewCopy];
  }

  dictionary2 = [dictionary objectForKey:@"Index Paths"];
  if (!dictionary2)
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:dictionary2 forKey:@"Index Paths"];
  }

  v6 = [dictionary objectForKey:@"Content Offset"];
  if (!v6)
  {
    if (objc_opt_respondsToSelector())
    {
      objc_opt_class();
      v7 = [viewCopy safeValueForKey:@"contentOffset"];
      v6 = __UIAccessibilityCastAsClass();

      if (v6)
      {
        [dictionary setObject:v6 forKey:@"Content Offset"];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return dictionary2;
}

+ (id)_axAuditGetIndexPathsDictionaryForUpdateActionForView:(id)view
{
  v3 = [cellReferenceMapTable objectForKey:view];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:@"Index Paths"];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_axAuditGetOriginalContentOffsetForView:(id)view
{
  v3 = [cellReferenceMapTable objectForKey:view];
  v4 = [v3 objectForKey:@"Content Offset"];

  return v4;
}

+ (void)_axAuditForHierarchy:(id)hierarchy withTableOrCollectionViews:(id)views performAction:(id)action performBlockOnEachCell:(id)cell
{
  v75 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  actionCopy = action;
  cellCopy = cell;
  v50 = [actionCopy isEqualToString:@"Capture Cell References"];
  v11 = [actionCopy isEqualToString:@"Update Cell References Key"];
  v44 = actionCopy;
  v48 = [actionCopy isEqualToString:@"Dereference Cells"];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = viewsCopy;
  v51 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
  if (v51)
  {
    v49 = *v68;
    v46 = v11 | v48;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v68 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v67 + 1) + 8 * i);
        if (v50)
        {
          v14 = [self _axAuditGetIndexPathsDictionaryForCaptureActionForView:*(*(&v67 + 1) + 8 * i)];
        }

        else if (v46)
        {
          v14 = [self _axAuditGetIndexPathsDictionaryForUpdateActionForView:*(*(&v67 + 1) + 8 * i)];
          if (!v14)
          {
            continue;
          }
        }

        else
        {
          v14 = 0;
        }

        v53 = i;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        objc_opt_class();
        v16 = objc_opt_isKindOfClass();
        v17 = v16;
        if (isKindOfClass)
        {
          indexPathsForVisibleRows = [v13 indexPathsForVisibleRows];
        }

        else if (v16)
        {
          indexPathsForVisibleRows = [v13 indexPathsForVisibleItems];
        }

        else
        {
          indexPathsForVisibleRows = 0;
        }

        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v54 = indexPathsForVisibleRows;
        v19 = [v54 countByEnumeratingWithState:&v63 objects:v73 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v64;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v64 != v21)
              {
                objc_enumerationMutation(v54);
              }

              v23 = *(*(&v63 + 1) + 8 * j);
              if (isKindOfClass)
              {
                v24 = [v13 cellForRowAtIndexPath:*(*(&v63 + 1) + 8 * j)];
              }

              else
              {
                if ((v17 & 1) == 0)
                {
                  continue;
                }

                v24 = [v13 cellForItemAtIndexPath:*(*(&v63 + 1) + 8 * j)];
              }

              v25 = v24;
              if (v24)
              {
                cellCopy[2](cellCopy, v24, v14, v23);
              }
            }

            v20 = [v54 countByEnumeratingWithState:&v63 objects:v73 count:16];
          }

          while (v20);
        }

        if (isKindOfClass)
        {
          _accessibilityIndicesOfVisibleHeadersAndFooters = [v13 _accessibilityIndicesOfVisibleHeadersAndFooters];
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v27 = [_accessibilityIndicesOfVisibleHeadersAndFooters countByEnumeratingWithState:&v59 objects:v72 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v60;
            do
            {
              for (k = 0; k != v28; ++k)
              {
                if (*v60 != v29)
                {
                  objc_enumerationMutation(_accessibilityIndicesOfVisibleHeadersAndFooters);
                }

                v31 = *(*(&v59 + 1) + 8 * k);
                v32 = [v13 headerViewForSection:{objc_msgSend(v31, "integerValue")}];
                v33 = [v13 footerViewForSection:{objc_msgSend(v31, "integerValue")}];
                if (v32)
                {
                  (cellCopy)[2](cellCopy, v32, v14, v31);
                }

                if (v33)
                {
                  (cellCopy)[2](cellCopy, v33, v14, v31);
                }
              }

              v28 = [_accessibilityIndicesOfVisibleHeadersAndFooters countByEnumeratingWithState:&v59 objects:v72 count:16];
            }

            while (v28);
          }

LABEL_54:

          goto LABEL_55;
        }

        if (v17)
        {
          _accessibilityIndicesOfVisibleHeadersAndFooters = v13;
          _accessibilityIndexPathToOtherCollectionViewItems = [_accessibilityIndicesOfVisibleHeadersAndFooters _accessibilityIndexPathToOtherCollectionViewItems];
          if ([_accessibilityIndexPathToOtherCollectionViewItems count])
          {
            v45 = _accessibilityIndicesOfVisibleHeadersAndFooters;
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v35 = _accessibilityIndexPathToOtherCollectionViewItems;
            v36 = [v35 countByEnumeratingWithState:&v55 objects:v71 count:16];
            if (v36)
            {
              v37 = v36;
              v38 = *v56;
              do
              {
                for (m = 0; m != v37; ++m)
                {
                  if (*v56 != v38)
                  {
                    objc_enumerationMutation(v35);
                  }

                  v40 = *(*(&v55 + 1) + 8 * m);
                  v41 = [v35 objectForKeyedSubscript:v40];
                  cellCopy[2](cellCopy, v41, v14, v40);
                }

                v37 = [v35 countByEnumeratingWithState:&v55 objects:v71 count:16];
              }

              while (v37);
            }

            _accessibilityIndicesOfVisibleHeadersAndFooters = v45;
          }

          goto LABEL_54;
        }

LABEL_55:
        i = v53;
        if (v48)
        {
          v42 = [self _axAuditGetOriginalContentOffsetForView:v13];
          v43 = v42;
          if (v42)
          {
            [v42 CGPointValue];
            [v13 setContentOffset:?];
          }
        }
      }

      v51 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
    }

    while (v51);
  }
}

+ (void)_axAuditCaptureReferenceToCellsForViewHierarchy:(id)hierarchy
{
  v4 = MEMORY[0x1E696AD18];
  hierarchyCopy = hierarchy;
  weakToStrongObjectsMapTable = [v4 weakToStrongObjectsMapTable];
  v7 = cellReferenceMapTable;
  cellReferenceMapTable = weakToStrongObjectsMapTable;

  v8 = [self _axAuditGetAllTableAndCollectionViewsForHierarchy:hierarchyCopy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__UIApplicationAuditIssuesAccessibility__axAuditCaptureReferenceToCellsForViewHierarchy___block_invoke;
  aBlock[3] = &__block_descriptor_40_e64_v32__0__UIView_8__NSMutableDictionary_16__NSObject_NSCopying__24l;
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  [self _axAuditForHierarchy:hierarchyCopy withTableOrCollectionViews:v8 performAction:@"Capture Cell References" performBlockOnEachCell:v9];
}

void __89__UIApplicationAuditIssuesAccessibility__axAuditCaptureReferenceToCellsForViewHierarchy___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) _axAuditHelperToFindRelevantSubviewsOfCellView:a2];
  if ([v8 count])
  {
    v9 = [*(a1 + 32) _axAuditCreateElementInfoDictionariesForSubviews:v8];
    [v10 setObject:v9 forKey:v7];
  }
}

+ (void)_axAuditUpdateReferenceOfCellsForViewHierarchy:(id)hierarchy forFontSize:(id)size
{
  sizeCopy = size;
  hierarchyCopy = hierarchy;
  v8 = [self _axAuditGetAllTableAndCollectionViewsForHierarchy:hierarchyCopy];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __100__UIApplicationAuditIssuesAccessibility__axAuditUpdateReferenceOfCellsForViewHierarchy_forFontSize___block_invoke;
  v14 = &unk_1E78AAAD0;
  v15 = sizeCopy;
  selfCopy = self;
  v9 = sizeCopy;
  v10 = _Block_copy(&v11);
  [self _axAuditForHierarchy:hierarchyCopy withTableOrCollectionViews:v8 performAction:@"Update Cell References Key" performBlockOnEachCell:{v10, v11, v12, v13, v14}];
}

void __100__UIApplicationAuditIssuesAccessibility__axAuditUpdateReferenceOfCellsForViewHierarchy_forFontSize___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 40);
  v8 = a4;
  v9 = a3;
  v12 = [v7 _axAuditHelperToFindRelevantSubviewsOfCellView:a2];
  v10 = [v9 objectForKey:v8];

  v11 = [*(a1 + 40) _axAuditMatchReferenceSubviews:v10 againstNewSubviews:v12];
  [*(a1 + 40) _axAuditUpdateFontsForReferenceMatches:v11 forFontSize:*(a1 + 32)];
  [*(a1 + 40) _axAuditUpdateClippingStatusForReferenceMatches:v11];
}

+ (id)_axAuditDereferenceCellsForViewHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  v5 = [self _axAuditGetAllTableAndCollectionViewsForHierarchy:hierarchyCopy];
  weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  v8 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{weakToStrongObjectsMapTable, @"Font Info for Cells", weakObjectsHashTable, @"Clipping Info for Cells", 0}];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__UIApplicationAuditIssuesAccessibility__axAuditDereferenceCellsForViewHierarchy___block_invoke;
  aBlock[3] = &unk_1E78AAAF8;
  v16 = weakObjectsHashTable;
  selfCopy = self;
  v15 = weakToStrongObjectsMapTable;
  v9 = weakObjectsHashTable;
  v10 = weakToStrongObjectsMapTable;
  v11 = _Block_copy(aBlock);
  [self _axAuditForHierarchy:hierarchyCopy withTableOrCollectionViews:v5 performAction:@"Dereference Cells" performBlockOnEachCell:v11];

  v12 = cellReferenceMapTable;
  cellReferenceMapTable = 0;

  return v8;
}

void __82__UIApplicationAuditIssuesAccessibility__axAuditDereferenceCellsForViewHierarchy___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 48);
  v8 = a4;
  v9 = a3;
  v12 = [v7 _axAuditHelperToFindRelevantSubviewsOfCellView:a2];
  v10 = [v9 objectForKey:v8];

  v11 = [*(a1 + 48) _axAuditMatchReferenceSubviews:v10 againstNewSubviews:v12];
  [*(a1 + 48) _axAuditStoreFontsIntoDictionary:*(a1 + 32) forReferenceMatches:v11];
  [*(a1 + 48) _axAuditStoreClippedElementsIntoSet:*(a1 + 40) forReferenceMatches:v11];
}

+ (id)_axAuditHelperToFindRelevantSubviewsOfCellView:(id)view
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] arrayWithObject:view];
  array = [MEMORY[0x1E695DF70] array];
  if ([v4 count])
  {
    v5 = 0;
    v21 = v4;
    do
    {
      firstObject = [v4 firstObject];
      [v4 removeObjectAtIndex:0];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = [self _axAuditGetFontForElement:firstObject];
          v8 = [self _axAuditGetTextFromObject:firstObject];
          v9 = v8;
          if (v7 && v8)
          {
            v23 = v8;
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v10 = array;
            v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v25;
              while (2)
              {
                for (i = 0; i != v12; ++i)
                {
                  if (*v25 != v13)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v15 = *(*(&v24 + 1) + 8 * i);
                  v16 = [self _axAuditGetFontForElement:v15];
                  v17 = [self _axAuditGetTextFromObject:v15];
                  if ([v7 isEqual:v16] && objc_msgSend(v23, "isEqualToString:", v17))
                  {

                    goto LABEL_18;
                  }
                }

                v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
                if (v12)
                {
                  continue;
                }

                break;
              }
            }

            [v10 addObject:firstObject];
LABEL_18:
            v4 = v21;
            v9 = v23;
          }

          subviews = [firstObject subviews];
          [v4 addObjectsFromArray:subviews];
        }
      }

      if (![v4 count])
      {
        break;
      }
    }

    while (v5++ < 0x270F);
  }

  return array;
}

+ (id)_axAuditCreateElementInfoDictionariesForSubviews:(id)subviews
{
  v26 = *MEMORY[0x1E69E9840];
  subviewsCopy = subviews;
  array = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = subviewsCopy;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [self _axAuditGetTextFromObject:v10];
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v23[0] = @"Class Name";
        v23[1] = @"Text";
        v24[0] = v12;
        v24[1] = v13;
        v23[2] = @"Font Dictionary";
        v23[3] = @"Clipping Status";
        v24[2] = dictionary;
        v24[3] = MEMORY[0x1E695E110];
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:4];
        v16 = [v15 mutableCopy];
        [array addObject:v16];
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  return array;
}

+ (id)_axAuditMatchReferenceSubviews:(id)subviews againstNewSubviews:(id)newSubviews
{
  v38 = *MEMORY[0x1E69E9840];
  subviewsCopy = subviews;
  newSubviewsCopy = newSubviews;
  weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = newSubviewsCopy;
  v24 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v24)
  {
    v21 = *v33;
    do
    {
      v6 = 0;
      do
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v6;
        v7 = *(*(&v32 + 1) + 8 * v6);
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v27 = v7;
        v10 = [self _axAuditGetTextFromObject:v7];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v11 = subviewsCopy;
        v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v29;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v29 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v28 + 1) + 8 * i);
              v17 = [v16 objectForKey:@"Class Name"];
              v18 = [v16 objectForKey:@"Text"];
              if ([v9 isEqualToString:v17] && objc_msgSend(v10, "isEqualToString:", v18))
              {
                [weakToStrongObjectsMapTable setObject:v16 forKey:v27];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v13);
        }

        v6 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v24);
  }

  return weakToStrongObjectsMapTable;
}

+ (void)_axAuditUpdateFontsForReferenceMatches:(id)matches forFontSize:(id)size
{
  v21 = *MEMORY[0x1E69E9840];
  matchesCopy = matches;
  sizeCopy = size;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [matchesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(matchesCopy);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [matchesCopy objectForKey:v12];
        v14 = [self _axAuditGetFontForElement:v12];
        if (v14)
        {
          v15 = [v13 objectForKey:@"Font Dictionary"];
          [v15 setObject:v14 forKey:sizeCopy];
        }
      }

      v9 = [matchesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

+ (void)_axAuditUpdateClippingStatusForReferenceMatches:(id)matches
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  matchesCopy = matches;
  v4 = [matchesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(matchesCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [matchesCopy objectForKey:{v8, v12}];
        v10 = [v9 objectForKey:@"Clipping Status"];
        bOOLValue = [v10 BOOLValue];

        if (bOOLValue)
        {

          goto LABEL_13;
        }

        if ([UIApplicationAuditIssuesAccessibility _axAuditElementIsClipping:v8])
        {
          [v9 setObject:MEMORY[0x1E695E118] forKey:@"Clipping Status"];
        }
      }

      v5 = [matchesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

+ (id)_axAuditGetTextFromObject:(id)object
{
  objectCopy = object;
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    v4 = [objectCopy safeValueForKey:@"text"];
    string = __UIAccessibilityCastAsClass();

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![string length])
    {
      placeholder = [objectCopy placeholder];

      string = placeholder;
      if (placeholder)
      {
        goto LABEL_19;
      }
    }

    else if (string)
    {
      goto LABEL_19;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textLayoutManager = [objectCopy textLayoutManager];
    if (textLayoutManager)
    {
      objc_opt_class();
      textContentManager = [textLayoutManager textContentManager];
      v8 = __UIAccessibilityCastAsClass();

      if (v8)
      {
        textStorage = [v8 textStorage];
        v10 = textStorage;
        if (textStorage)
        {
          v11 = textStorage;

          objectCopy = v11;
        }
      }
    }
  }

  else
  {
    v12 = objc_opt_class();
    textLayoutManager = NSStringFromClass(v12);
    if ([textLayoutManager isEqualToString:@"_UITextContainerView"])
    {
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }

      [objectCopy performSelector:sel_textStorage];
      objectCopy = textLayoutManager = objectCopy;
    }
  }

LABEL_16:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    string = [objectCopy string];
  }

  else
  {
    string = 0;
  }

LABEL_19:

  return string;
}

+ (void)_axAuditStoreFontsIntoDictionary:(id)dictionary forReferenceMatches:(id)matches
{
  v19 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  matchesCopy = matches;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [matchesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(matchesCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [matchesCopy objectForKey:v11];
        v13 = [v12 objectForKey:@"Font Dictionary"];
        if (v13)
        {
          [dictionaryCopy setObject:v13 forKey:v11];
        }
      }

      v8 = [matchesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

+ (void)_axAuditStoreClippedElementsIntoSet:(id)set forReferenceMatches:(id)matches
{
  v20 = *MEMORY[0x1E69E9840];
  setCopy = set;
  matchesCopy = matches;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [matchesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(matchesCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [matchesCopy objectForKey:v11];
        v13 = [v12 objectForKey:@"Clipping Status"];
        bOOLValue = [v13 BOOLValue];

        if (bOOLValue)
        {
          [setCopy addObject:v11];
        }
      }

      v8 = [matchesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

+ (void)_axAuditUIKitShouldReportFontSize:(id)size
{
  v13[2] = *MEMORY[0x1E69E9840];
  sizeCopy = size;
  v4 = [sizeCopy copy];
  v5 = _axFontSizeToReturn;
  _axFontSizeToReturn = v4;

  if (dyld_program_sdk_at_least())
  {
    [MEMORY[0x1E69DCEB0] mainScreen];
  }

  else
  {
    [MEMORY[0x1E69DC668] sharedApplication];
  }
  v6 = ;
  AXPerformSafeBlock();
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = *MEMORY[0x1E69DDC48];
  v12[0] = *MEMORY[0x1E69DDC80];
  v9 = [sizeCopy copy];

  v12[1] = @"UIContentSizeCategoryTextLegibilityEnabledKey";
  v13[0] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithBool:UIAccessibilityIsBoldTextEnabled()];
  v13[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [defaultCenter postNotificationName:v8 object:v6 userInfo:v11];
}

+ (BOOL)_axAuditSwizzleAwayContentSize:(BOOL)size
{
  sizeCopy = size;
  v5 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v5, sel_preferredContentSizeCategory);
  v7 = objc_opt_class();
  v8 = class_getInstanceMethod(v7, sel_preferredContentSizeCategory);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __72__UIApplicationAuditIssuesAccessibility__axAuditSwizzleAwayContentSize___block_invoke;
  v14 = &__block_descriptor_48_e5_v8__0l;
  v15 = InstanceMethod;
  v16 = v8;
  if (_axAuditSwizzleAwayContentSize__onceToken != -1)
  {
    dispatch_once(&_axAuditSwizzleAwayContentSize__onceToken, &v11);
  }

  v9 = [self _axAuditSetSwizzledImp:axAuditSwizzlePreferredContentSizeCategory1 orOrigImp:_axAuditOrigPreferredContentSizeCategory1 forMethod:InstanceMethod withSwizzling:{sizeCopy, v11, v12, v13, v14, v15, v16}];
  return v9 & [self _axAuditSetSwizzledImp:axAuditSwizzlePreferredContentSizeCategory2 orOrigImp:_axAuditOrigPreferredContentSizeCategory2 forMethod:v8 withSwizzling:sizeCopy];
}

objc_method *__72__UIApplicationAuditIssuesAccessibility__axAuditSwizzleAwayContentSize___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    _axAuditOrigPreferredContentSizeCategory1 = method_getImplementation(v2);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = method_getImplementation(result);
    _axAuditOrigPreferredContentSizeCategory2 = result;
  }

  return result;
}

+ (BOOL)_axAuditSetSwizzledImp:(void *)imp orOrigImp:(void *)origImp forMethod:(objc_method *)method withSwizzling:(BOOL)swizzling
{
  if (method)
  {
    if (!swizzling)
    {
      imp = origImp;
    }

    method_setImplementation(method, imp);
  }

  return method != 0;
}

@end