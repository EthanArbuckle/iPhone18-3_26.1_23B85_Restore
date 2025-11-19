@interface UIApplicationAuditIssuesAccessibility
+ (BOOL)_axAuditElementIsClipping:(id)a3;
+ (BOOL)_axAuditSetSwizzledImp:(void *)a3 orOrigImp:(void *)a4 forMethod:(objc_method *)a5 withSwizzling:(BOOL)a6;
+ (BOOL)_axAuditShouldElementBeCheckedForClipping:(id)a3;
+ (BOOL)_axAuditSwiftUIViewHasText:(id)a3;
+ (BOOL)_axAuditSwiftUIViewIsClipping:(id)a3;
+ (BOOL)_axAuditSwizzleAwayContentSize:(BOOL)a3;
+ (BOOL)_axAuditViewIsSwiftUI:(id)a3;
+ (CGRect)_axAuditBoundsForRange:(_NSRange)a3 onSwiftUIView:(id)a4;
+ (id)_accessibilityGetAllSubviews:(id)a3 withFiltering:(BOOL)a4;
+ (id)_accessibilityGetAllSwiftUISubviews:(id)a3 withFiltering:(BOOL)a4;
+ (id)_axAuditContrastDetectionForSwiftUIView:(id)a3;
+ (id)_axAuditCreateElementInfoDictionariesForSubviews:(id)a3;
+ (id)_axAuditDereferenceCellsForViewHierarchy:(id)a3;
+ (id)_axAuditFindAllCollectionViewsInHierarchyForElements:(id)a3;
+ (id)_axAuditFindAllCollectionViewsInHierarchyForView:(id)a3;
+ (id)_axAuditFindAllTablesInHierarchyForElements:(id)a3;
+ (id)_axAuditFindAllTablesInHierarchyForView:(id)a3;
+ (id)_axAuditFindDescendantInaccessibleElements:(id)a3 honorsGroups:(BOOL)a4;
+ (id)_axAuditFindElementsNotSupportingDynamicText:(id)a3;
+ (id)_axAuditFindFrontmostViewControllerForHierarchy:(id)a3;
+ (id)_axAuditGetAllFontSizes;
+ (id)_axAuditGetAllTableAndCollectionViewsForHierarchy:(id)a3;
+ (id)_axAuditGetAttrLabelFromSwiftUIView:(id)a3;
+ (id)_axAuditGetFontAttrFromAttributedString:(id)a3;
+ (id)_axAuditGetFontForElement:(id)a3;
+ (id)_axAuditGetFontForSwiftUIView:(id)a3;
+ (id)_axAuditGetIndexPathsDictionaryForCaptureActionForView:(id)a3;
+ (id)_axAuditGetIndexPathsDictionaryForUpdateActionForView:(id)a3;
+ (id)_axAuditGetOriginalContentOffsetForView:(id)a3;
+ (id)_axAuditGetTextFromObject:(id)a3;
+ (id)_axAuditHelperToFindRelevantSubviewsOfCellView:(id)a3;
+ (id)_axAuditMatchReferenceSubviews:(id)a3 againstNewSubviews:(id)a4;
+ (id)_axAuditUnlabeledIssueDictForElement:(id)a3 honorsGroups:(BOOL)a4;
+ (void)_axAuditCaptureReferenceToCellsForViewHierarchy:(id)a3;
+ (void)_axAuditCheckElementForClipping:(id)a3 storeIntoSet:(id)a4;
+ (void)_axAuditCheckSwiftUIViewForClipping:(id)a3 storeIntoSet:(id)a4;
+ (void)_axAuditForHierarchy:(id)a3 withTableOrCollectionViews:(id)a4 performAction:(id)a5 performBlockOnEachCell:(id)a6;
+ (void)_axAuditRemoveUIViewsFromArray:(id)a3 usingFilter:(id)a4;
+ (void)_axAuditRemoveUnsupportedCategories:(id)a3;
+ (void)_axAuditStoreClippedElementsIntoSet:(id)a3 forReferenceMatches:(id)a4;
+ (void)_axAuditStoreFontForElement:(id)a3 intoDictionary:(id)a4 forCurrentFont:(id)a5;
+ (void)_axAuditStoreFontForSwiftUIView:(id)a3 intoDictionary:(id)a4 forCurrentFont:(id)a5;
+ (void)_axAuditStoreFontsIntoDictionary:(id)a3 forReferenceMatches:(id)a4;
+ (void)_axAuditUIKitShouldReportFontSize:(id)a3;
+ (void)_axAuditUpdateClippingStatusForReferenceMatches:(id)a3;
+ (void)_axAuditUpdateFontsForReferenceMatches:(id)a3 forFontSize:(id)a4;
+ (void)_axAuditUpdateReferenceOfCellsForViewHierarchy:(id)a3 forFontSize:(id)a4;
+ (void)_axAuditUpdateRowHeightForTableAndCollectionViewsOfElements:(id)a3;
@end

@implementation UIApplicationAuditIssuesAccessibility

+ (id)_accessibilityGetAllSubviews:(id)a3 withFiltering:(BOOL)a4
{
  v4 = a4;
  v5 = [MEMORY[0x1E695DF70] axArrayByIgnoringNilElementsWithCount:{1, a3}];
  v6 = [MEMORY[0x1E695DF70] array];
  if ([v5 count])
  {
    v7 = 0;
    v8 = *MEMORY[0x1E695F060];
    v9 = *(MEMORY[0x1E695F060] + 8);
    do
    {
      v10 = [v5 firstObject];
      [v5 removeObjectAtIndex:0];
      if (!v4 || (([v10 bounds], v8 == v12) ? (v13 = v9 == v11) : (v13 = 0), !v13 && (objc_msgSend(v10, "bounds"), v15 = v14, v17 = v16, v19 = v18, v21 = v20, objc_msgSend(v10, "window"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "convertRect:toView:", v22, v15, v17, v19, v21), v24 = v23, v26 = v25, v22, objc_msgSend(MEMORY[0x1E69DCEB0], "mainScreen"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "bounds"), v29 = v28, v31 = v30, v27, (objc_msgSend(v10, "isHidden") & 1) == 0) && ((v32 = objc_msgSend(v10, "accessibilityElementsHidden"), v24 <= v29) ? (v33 = v26 <= v31) : (v33 = 0), v33 && (v32 & 1) == 0)))
      {
        if (([v6 containsObject:v10] & 1) == 0)
        {
          v34 = [v10 subviews];
          [v5 addObjectsFromArray:v34];
          [v6 addObject:v10];
        }
      }

      if (![v5 count])
      {
        break;
      }
    }

    while (v7++ < 0x270F);
  }

  return v6;
}

+ (id)_accessibilityGetAllSwiftUISubviews:(id)a3 withFiltering:(BOOL)a4
{
  v4 = a4;
  v5 = [MEMORY[0x1E695DF70] axArrayByIgnoringNilElementsWithCount:{1, a3}];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;

  if ([v5 count])
  {
    v12 = 0;
    v13 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
    do
    {
      v15 = [v5 firstObject];
      [v5 removeObjectAtIndex:0];
      v16 = 0;
      if (objc_opt_respondsToSelector())
      {
        v16 = [v15 automationElements];
      }

      if ([v16 count])
      {
        [v5 addObjectsFromArray:v16];
      }

      else if (!v4 || (objc_opt_respondsToSelector() & 1) == 0 || (([v15 accessibilityFrame], v13 != v20) || v14 != v19) && v17 <= v9 && v18 <= v11)
      {
        [v6 addObject:v15];
      }

      if (![v5 count])
      {
        break;
      }
    }

    while (v12++ < 0x270F);
  }

  return v6;
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

+ (id)_axAuditFindAllTablesInHierarchyForView:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  do
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 addObject:v3];
    }

    v5 = [v3 superview];

    v3 = v5;
  }

  while (v5);
  v6 = [v4 copy];

  return v6;
}

+ (id)_axAuditFindAllTablesInHierarchyForElements:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
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
          v12 = [a1 _axAuditFindAllTablesInHierarchyForView:{v11, v15}];
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

+ (id)_axAuditFindAllCollectionViewsInHierarchyForView:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  do
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 addObject:v3];
    }

    v5 = [v3 superview];

    v3 = v5;
  }

  while (v5);
  v6 = [v4 copy];

  return v6;
}

+ (id)_axAuditFindAllCollectionViewsInHierarchyForElements:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
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
          v12 = [a1 _axAuditFindAllCollectionViewsInHierarchyForView:{v11, v15}];
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

+ (void)_axAuditUpdateRowHeightForTableAndCollectionViewsOfElements:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 _axAuditFindAllTablesInHierarchyForElements:v4];
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

  v11 = [a1 _axAuditFindAllCollectionViewsInHierarchyForElements:v4];
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

+ (void)_axAuditRemoveUIViewsFromArray:(id)a3 usingFilter:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AD50] indexSet];
  v24 = [MEMORY[0x1E695DF70] array];
  v8 = [v5 count];
  if (v8)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      v11 = [v5 objectAtIndex:i];
      if (v6[2](v6, v11))
      {
        [v7 addIndex:i];
        [v24 addObject:v11];
      }
    }
  }

  [v5 removeObjectsAtIndexes:{v7, v7}];
  v12 = [MEMORY[0x1E696AD50] indexSet];
  v13 = [v5 count];
  if (v13)
  {
    v14 = v13;
    for (j = 0; j != v14; ++j)
    {
      v16 = [v5 objectAtIndex:j];
      v17 = [v16 window];

      if (v17)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v18 = v24;
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
                [v12 addIndex:j];
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
        [v12 addIndex:j];
      }
    }
  }

  [v5 removeObjectsAtIndexes:v12];
}

+ (id)_axAuditFindFrontmostViewControllerForHierarchy:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] axArrayByIgnoringNilElementsWithCount:{1, v3}];
  if ([v4 count])
  {
    v5 = v3;
    do
    {
      v6 = [v4 firstObject];
      [v4 removeObjectAtIndex:0];
      v7 = [v6 presentedViewController];

      if (v7)
      {
        v8 = [v6 presentedViewController];

        [MEMORY[0x1E695DF70] arrayWithObject:v8];
        v4 = v9 = v4;
        v5 = v8;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v6 topViewController], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
        {
          v11 = MEMORY[0x1E695DF70];
          v9 = [v6 topViewController];
          v12 = [v11 arrayWithObject:v9];

          v4 = v12;
        }

        else
        {
          v9 = [v6 childViewControllers];
          [v4 addObjectsFromArray:v9];
        }
      }
    }

    while ([v4 count]);
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

+ (id)_axAuditGetFontForElement:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 textLabel];
    v5 = [v4 font];

    if (v5)
    {
      goto LABEL_29;
    }

    v6 = [v3 detailTextLabel];
    v7 = [v6 font];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v3 attributedText];
    v7 = [UIApplicationAuditIssuesAccessibility _axAuditGetFontAttrFromAttributedString:v6];
LABEL_6:
    v5 = v7;

    goto LABEL_9;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  v8 = [v3 safeValueForKey:@"font"];
  v5 = __UIAccessibilityCastAsClass();

LABEL_9:
  if (v5)
  {
    goto LABEL_29;
  }

LABEL_10:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v3 textLayoutManager];
    if (v9)
    {
      objc_opt_class();
      v10 = [v9 textContentManager];
      v11 = __UIAccessibilityCastAsClass();

      if (v11)
      {
        v12 = [v11 textStorage];
        if (v12)
        {
          v5 = [UIApplicationAuditIssuesAccessibility _axAuditGetFontAttrFromAttributedString:v12];
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_28;
  }

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  if (![v14 isEqualToString:@"_UITextContainerView"])
  {

LABEL_19:
    v9 = [v3 _accessibilityAXAttributedValue];
    if ([v9 isAXAttributedString])
    {
      v16 = [v9 cfAttributedString];
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_23;
  }

  v15 = objc_opt_respondsToSelector();

  if ((v15 & 1) == 0)
  {
    goto LABEL_19;
  }

  v9 = [v3 performSelector:sel_textStorage];
  v16 = v9;
LABEL_23:
  v5 = [UIApplicationAuditIssuesAccessibility _axAuditGetFontAttrFromAttributedString:v16];
LABEL_28:

LABEL_29:
  v17 = v5;

  return v17;
}

+ (id)_axAuditGetFontForSwiftUIView:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _axAuditGetAttrLabelFromSwiftUIView:v3];

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

+ (id)_axAuditGetFontAttrFromAttributedString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__1;
    v26 = __Block_byref_object_dispose__1;
    v27 = 0;
    v5 = [v3 length];
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

+ (id)_axAuditFindElementsNotSupportingDynamicText:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v43 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v54;
    v44 = *MEMORY[0x1E69DDC68];
    v40 = *v54;
    v41 = a1;
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
            v13 = [a1 _axAuditGetTextFromObject:v10];
            if (![v13 length])
            {
              goto LABEL_40;
            }
          }

          else if ([objc_opt_class() _axAuditViewIsSwiftUI:v10])
          {
            v14 = [objc_opt_class() _axAuditGetAttrLabelFromSwiftUIView:v10];
            v13 = [v14 string];

            if (![objc_opt_class() _axAuditSwiftUIViewHasText:v10])
            {
              goto LABEL_40;
            }
          }

          else
          {
            v13 = 0;
          }

          v45 = v13;
          v46 = v9;
          v15 = v44;
          v16 = [MEMORY[0x1E695DF70] array];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v17 = [a1 _axAuditGetAllFontSizes];
          v18 = [v17 countByEnumeratingWithState:&v49 objects:v57 count:16];
          v48 = v16;
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
                  objc_enumerationMutation(v17);
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
              v19 = [v17 countByEnumeratingWithState:&v49 objects:v57 count:16];
            }

            while (v19);

            if (v21 < v23)
            {
              v8 = v40;
              a1 = v41;
              v7 = v42;
              v13 = v45;
              v16 = v48;
              if ((v47 & 1) == 0)
              {
LABEL_39:

                v9 = v46;
LABEL_40:

                goto LABEL_41;
              }

LABEL_36:
              [v43 setObject:v16 forKey:v10];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || ([a1 _axAuditGetTextFromObject:v10], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "length"), v32, v16 = v48, v33))
              {
                [v16 componentsJoinedByString:{@", "}];
                v39 = v38 = v13;
                v36 = @"AX Audit: Element: %@, with text: %@, does not support these font sizes:%@";
                v37 = v10;
                LOBYTE(v35) = 1;
                _AXLogWithFacility();

                v16 = v48;
              }

              goto LABEL_39;
            }

            v8 = v40;
            a1 = v41;
            v7 = v42;
            v13 = v45;
            v16 = v48;
          }

          else
          {

            v13 = v45;
          }

          [v16 insertObject:v15 atIndex:0];
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

  return v43;
}

+ (void)_axAuditStoreFontForElement:(id)a3 intoDictionary:(id)a4 forCurrentFont:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [a1 _axAuditGetFontForElement:v19];
  v11 = [a1 _axAuditGetTextFromObject:v19];
  v12 = v11;
  if (v10 && v11)
  {
    v13 = [v8 objectForKey:v19];

    if (v13)
    {
      v14 = [v8 objectForKey:v19];
      v15 = v14;
      v16 = v10;
      v17 = v9;
    }

    else
    {
      LOBYTE(v18) = 1;
      _AXLogWithFacility();
      v15 = [MEMORY[0x1E695DF90] dictionary];
      [v15 setObject:v10 forKeyedSubscript:v9];
      v14 = v8;
      v16 = v15;
      v17 = v19;
    }

    [v14 setObject:v16 forKey:v17];
  }
}

+ (void)_axAuditStoreFontForSwiftUIView:(id)a3 intoDictionary:(id)a4 forCurrentFont:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [a1 _axAuditGetFontForSwiftUIView:v16];
  if (v10)
  {
    v11 = [v8 objectForKey:v16];

    if (v11)
    {
      v12 = [v8 objectForKey:v16];
      v13 = v12;
      v14 = v10;
      v15 = v9;
    }

    else
    {
      v13 = [MEMORY[0x1E695DF90] dictionary];
      [v13 setObject:v10 forKeyedSubscript:v9];
      v12 = v8;
      v14 = v13;
      v15 = v16;
    }

    [v12 setObject:v14 forKey:v15];
  }
}

+ (void)_axAuditRemoveUnsupportedCategories:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v23 = [MEMORY[0x1E695DF70] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v4 = v3;
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
          v7 = [MEMORY[0x1E695DF70] array];
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
                    v15 = [v14 superview];

                    v14 = v15;
                    if (v15)
                    {
                      continue;
                    }
                  }

                  goto LABEL_18;
                }

                [v7 addObject:v13];
LABEL_18:
                ++v12;
              }

              while (v12 != v10);
              v10 = [v8 countByEnumeratingWithState:&v32 objects:v41 count:16];
            }

            while (v10);
          }

          [v8 removeObjectsForKeys:v7];
          v16 = [v8 allKeys];
          v17 = [v16 count];

          if (!v17)
          {
            [v23 addObject:v6];
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
  v18 = v23;
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

+ (void)_axAuditCheckElementForClipping:(id)a3 storeIntoSet:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([a1 _axAuditElementIsClipping:v7])
  {
    [v6 addObject:v7];
  }
}

+ (BOOL)_axAuditElementIsClipping:(id)a3
{
  v4 = a3;
  if ([a1 _axAuditShouldElementBeCheckedForClipping:v4])
  {
    [v4 frame];
    [v4 alignmentRectForFrame:?];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v4 sizeThatFits:{v9, v11}];
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

+ (void)_axAuditCheckSwiftUIViewForClipping:(id)a3 storeIntoSet:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([a1 _axAuditSwiftUIViewIsClipping:v7])
  {
    [v6 addObject:v7];
  }
}

+ (BOOL)_axAuditSwiftUIViewIsClipping:(id)a3
{
  v4 = a3;
  if ([a1 _axAuditSwiftUIViewHasText:v4])
  {
    v5 = [objc_opt_class() _axAuditGetAttrLabelFromSwiftUIView:v4];
    v6 = v5;
    if (v5 && [v5 length] >= 2)
    {
      [objc_opt_class() _axAuditBoundsForRange:0 onSwiftUIView:{1, v4}];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [objc_opt_class() _axAuditBoundsForRange:1 onSwiftUIView:{1, v4}];
      v45 = v17;
      v46 = v16;
      v43 = v19;
      v44 = v18;
      [objc_opt_class() _axAuditBoundsForRange:objc_msgSend(v6 onSwiftUIView:{"length") - 1, 1, v4}];
      v41 = v21;
      v42 = v20;
      v39 = v23;
      v40 = v22;
      [objc_opt_class() _axAuditBoundsForRange:objc_msgSend(v6 onSwiftUIView:{"length") - 2, 1, v4}];
      v49 = v25;
      v50 = v24;
      v47 = v27;
      v48 = v26;
      if (objc_opt_respondsToSelector())
      {
        [v4 accessibilityFrame];
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

+ (BOOL)_axAuditShouldElementBeCheckedForClipping:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 delegate];
      if (objc_opt_respondsToSelector() & 1) != 0 && ([v5 textFieldShouldBeginEditing:v4])
      {
        v6 = 0;
LABEL_18:

        goto LABEL_19;
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v4 isEditable] & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v4 isScrollEnabled] & 1) == 0)
      {
        v7 = [v4 superview];
        if (!v7 || (v8 = v7, [v4 superview], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "conformsToProtocol:", &unk_1F1E10CA0), v9, v8, (v10 & 1) == 0))
        {
          v5 = [a1 _axAuditGetTextFromObject:v4];
          v6 = [v5 length] != 0;
          goto LABEL_18;
        }
      }
    }
  }

  v6 = 0;
LABEL_19:

  return v6;
}

+ (id)_axAuditContrastDetectionForSwiftUIView:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([a1 _axAuditSwiftUIViewHasText:v4])
  {
    v5 = [a1 _axAuditGetAttrLabelFromSwiftUIView:v4];
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
      v15 = [v6 string];
      v16 = [v6 string];
      v17 = [UIAccessibilityAuditUtilities dictionaryWithAXAuditIssue:4001 element:v4 additionalInfo:0 identifier:v15 foregroundColor:v9 backgroundColor:0 fontSize:v14 elementRect:0 text:v16];
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

+ (BOOL)_axAuditSwiftUIViewHasText:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() _axAuditViewIsSwiftUI:v3])
  {
    v4 = [objc_opt_class() _axAuditGetAttrLabelFromSwiftUIView:v3];
    if (v4)
    {
      [objc_opt_class() _axAuditBoundsForRange:0 onSwiftUIView:{objc_msgSend(v4, "length"), v3}];
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

+ (CGRect)_axAuditBoundsForRange:(_NSRange)a3 onSwiftUIView:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  v9 = *(MEMORY[0x1E695F058] + 16);
  v10 = *(MEMORY[0x1E695F058] + 24);
  if ([objc_opt_class() _axAuditViewIsSwiftUI:v6] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 _accessibilityBoundsForRange:{location, length}];
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

+ (id)_axAuditGetAttrLabelFromSwiftUIView:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() _axAuditViewIsSwiftUI:v3] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 performSelector:sel_accessibilityAttributedLabel];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)_axAuditViewIsSwiftUI:(id)a3
{
  v3 = a3;
  NSClassFromString(&cfstr_SwiftuiAccessi.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (id)_axAuditFindDescendantInaccessibleElements:(id)a3 honorsGroups:(BOOL)a4
{
  v4 = a4;
  v115 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v94 = [MEMORY[0x1E695DF70] array];
  v6 = MEMORY[0x1E695DF70];
  v92 = v5;
  v7 = [v5 subviews];
  v8 = [v6 arrayWithArray:v7];

  v9 = [MEMORY[0x1E695DF70] array];
  v85 = [MEMORY[0x1E695DF70] array];
  v93 = v8;
  if ([v8 count])
  {
    v10 = 0;
    v11 = !v4;
    do
    {
      v12 = [v93 firstObject];
      [v93 removeObjectAtIndex:0];
      if (([v12 accessibilityElementsHidden] & 1) == 0)
      {
        [v12 bounds];
        if (v13 >= 1.0)
        {
          [v12 bounds];
          v14 = v15 < 1.0;
        }

        else
        {
          v14 = 1;
        }

        [v12 alpha];
        v17 = v16;
        v18 = [v12 isAccessibilityElement];
        if (((v18 | v11) & 1) == 0)
        {
          v18 = [v12 accessibilityContainerType] == 4;
        }

        v19 = [objc_opt_class() _axAuditFindAllTablesInHierarchyForView:v12];
        v20 = [v19 count];

        if (!v20 || (NSClassFromString(&cfstr_Uitablecellacc.isa), isKindOfClass = objc_opt_isKindOfClass(), objc_opt_class(), v22 = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0) && (v22 & 1) == 0)
        {
          v23 = [v12 subviews];
          v24 = ([v23 count] != 0) | v18 | v14;

          if ((v17 > 0.0) & ~v24 | v18 & 1)
          {
            if (((v17 > 0.0) & ~v24) != 0)
            {
              v25 = v9;
            }

            else
            {
              v25 = v85;
            }

            [v25 addObject:v12];
          }

          if (([v12 isAccessibilityElement] & 1) == 0)
          {
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            v26 = [v12 subviews];
            v27 = [v26 countByEnumeratingWithState:&v107 objects:v114 count:16];
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
                    objc_enumerationMutation(v26);
                  }

                  v31 = *(*(&v107 + 1) + 8 * i);
                  if (([v93 containsObject:v31] & 1) == 0)
                  {
                    [v93 addObject:v31];
                  }
                }

                v28 = [v26 countByEnumeratingWithState:&v107 objects:v114 count:16];
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

  v84 = [MEMORY[0x1E696AD50] indexSet];
  v90 = [v9 count];
  if (v90)
  {
    for (j = 0; j != v90; ++j)
    {
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v34 = v85;
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
            v39 = [v9 objectAtIndex:j];
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
            v56 = [v38 subviews];
            if ([v56 count])
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
        [v84 addIndex:j];
      }
    }
  }

  [v9 removeObjectsAtIndexes:v84];
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = v9;
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
                [v94 addObject:v77];

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
          [v94 addObject:v78];

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

  return v94;
}

+ (id)_axAuditUnlabeledIssueDictForElement:(id)a3 honorsGroups:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 accessibilityContainerType];
  v7 = 0;
  if (v4 && v6 == 4)
  {
    v8 = [v5 accessibilityLabel];
    if ([v8 length])
    {
      v7 = 0;
LABEL_5:

      goto LABEL_8;
    }

    v9 = [v5 accessibilityValue];
    v10 = [v9 length];

    if (!v10)
    {
      v8 = v5;
      v12 = [v8 window];

      if (v12)
      {
        v13 = [v8 superview];
        [v8 frame];
        [v13 convertPoint:0 toView:?];
        v15 = v14;
        v17 = v16;

        [v8 bounds];
        v19 = v18;
        [v8 bounds];
        v20 = [MEMORY[0x1E696B098] valueWithCGRect:{v15, v17, v19}];
      }

      else
      {
        v20 = 0;
      }

      v7 = [UIAccessibilityAuditUtilities dictionaryWithAXAuditIssue:1000 element:v8 additionalInfo:0 identifier:0 foregroundColor:0 backgroundColor:0 fontSize:0 elementRect:v20 text:0];

      goto LABEL_5;
    }

    v7 = 0;
  }

LABEL_8:

  return v7;
}

+ (id)_axAuditGetAllTableAndCollectionViewsForHierarchy:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] axArrayByIgnoringNilElementsWithCount:{1, v3}];
  if ([v5 count])
  {
    v6 = 0;
    do
    {
      v7 = [v5 firstObject];
      [v5 removeObjectAtIndex:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        [v4 addObject:v7];
      }

      v8 = [v7 subviews];
      [v5 addObjectsFromArray:v8];

      if (![v5 count])
      {
        break;
      }
    }

    while (v6++ < 0x270F);
  }

  return v4;
}

+ (id)_axAuditGetIndexPathsDictionaryForCaptureActionForView:(id)a3
{
  v3 = a3;
  v4 = [cellReferenceMapTable objectForKey:v3];
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    [cellReferenceMapTable setObject:v4 forKey:v3];
  }

  v5 = [v4 objectForKey:@"Index Paths"];
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    [v4 setObject:v5 forKey:@"Index Paths"];
  }

  v6 = [v4 objectForKey:@"Content Offset"];
  if (!v6)
  {
    if (objc_opt_respondsToSelector())
    {
      objc_opt_class();
      v7 = [v3 safeValueForKey:@"contentOffset"];
      v6 = __UIAccessibilityCastAsClass();

      if (v6)
      {
        [v4 setObject:v6 forKey:@"Content Offset"];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v5;
}

+ (id)_axAuditGetIndexPathsDictionaryForUpdateActionForView:(id)a3
{
  v3 = [cellReferenceMapTable objectForKey:a3];
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

+ (id)_axAuditGetOriginalContentOffsetForView:(id)a3
{
  v3 = [cellReferenceMapTable objectForKey:a3];
  v4 = [v3 objectForKey:@"Content Offset"];

  return v4;
}

+ (void)_axAuditForHierarchy:(id)a3 withTableOrCollectionViews:(id)a4 performAction:(id)a5 performBlockOnEachCell:(id)a6
{
  v75 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v50 = [v9 isEqualToString:@"Capture Cell References"];
  v11 = [v9 isEqualToString:@"Update Cell References Key"];
  v44 = v9;
  v48 = [v9 isEqualToString:@"Dereference Cells"];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v8;
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
          v14 = [a1 _axAuditGetIndexPathsDictionaryForCaptureActionForView:*(*(&v67 + 1) + 8 * i)];
        }

        else if (v46)
        {
          v14 = [a1 _axAuditGetIndexPathsDictionaryForUpdateActionForView:*(*(&v67 + 1) + 8 * i)];
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
          v18 = [v13 indexPathsForVisibleRows];
        }

        else if (v16)
        {
          v18 = [v13 indexPathsForVisibleItems];
        }

        else
        {
          v18 = 0;
        }

        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v54 = v18;
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
                v10[2](v10, v24, v14, v23);
              }
            }

            v20 = [v54 countByEnumeratingWithState:&v63 objects:v73 count:16];
          }

          while (v20);
        }

        if (isKindOfClass)
        {
          v26 = [v13 _accessibilityIndicesOfVisibleHeadersAndFooters];
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v27 = [v26 countByEnumeratingWithState:&v59 objects:v72 count:16];
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
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v59 + 1) + 8 * k);
                v32 = [v13 headerViewForSection:{objc_msgSend(v31, "integerValue")}];
                v33 = [v13 footerViewForSection:{objc_msgSend(v31, "integerValue")}];
                if (v32)
                {
                  (v10)[2](v10, v32, v14, v31);
                }

                if (v33)
                {
                  (v10)[2](v10, v33, v14, v31);
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v59 objects:v72 count:16];
            }

            while (v28);
          }

LABEL_54:

          goto LABEL_55;
        }

        if (v17)
        {
          v26 = v13;
          v34 = [v26 _accessibilityIndexPathToOtherCollectionViewItems];
          if ([v34 count])
          {
            v45 = v26;
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v35 = v34;
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
                  v10[2](v10, v41, v14, v40);
                }

                v37 = [v35 countByEnumeratingWithState:&v55 objects:v71 count:16];
              }

              while (v37);
            }

            v26 = v45;
          }

          goto LABEL_54;
        }

LABEL_55:
        i = v53;
        if (v48)
        {
          v42 = [a1 _axAuditGetOriginalContentOffsetForView:v13];
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

+ (void)_axAuditCaptureReferenceToCellsForViewHierarchy:(id)a3
{
  v4 = MEMORY[0x1E696AD18];
  v5 = a3;
  v6 = [v4 weakToStrongObjectsMapTable];
  v7 = cellReferenceMapTable;
  cellReferenceMapTable = v6;

  v8 = [a1 _axAuditGetAllTableAndCollectionViewsForHierarchy:v5];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__UIApplicationAuditIssuesAccessibility__axAuditCaptureReferenceToCellsForViewHierarchy___block_invoke;
  aBlock[3] = &__block_descriptor_40_e64_v32__0__UIView_8__NSMutableDictionary_16__NSObject_NSCopying__24l;
  aBlock[4] = a1;
  v9 = _Block_copy(aBlock);
  [a1 _axAuditForHierarchy:v5 withTableOrCollectionViews:v8 performAction:@"Capture Cell References" performBlockOnEachCell:v9];
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

+ (void)_axAuditUpdateReferenceOfCellsForViewHierarchy:(id)a3 forFontSize:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _axAuditGetAllTableAndCollectionViewsForHierarchy:v7];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __100__UIApplicationAuditIssuesAccessibility__axAuditUpdateReferenceOfCellsForViewHierarchy_forFontSize___block_invoke;
  v14 = &unk_1E78AAAD0;
  v15 = v6;
  v16 = a1;
  v9 = v6;
  v10 = _Block_copy(&v11);
  [a1 _axAuditForHierarchy:v7 withTableOrCollectionViews:v8 performAction:@"Update Cell References Key" performBlockOnEachCell:{v10, v11, v12, v13, v14}];
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

+ (id)_axAuditDereferenceCellsForViewHierarchy:(id)a3
{
  v4 = a3;
  v5 = [a1 _axAuditGetAllTableAndCollectionViewsForHierarchy:v4];
  v6 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  v8 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v6, @"Font Info for Cells", v7, @"Clipping Info for Cells", 0}];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__UIApplicationAuditIssuesAccessibility__axAuditDereferenceCellsForViewHierarchy___block_invoke;
  aBlock[3] = &unk_1E78AAAF8;
  v16 = v7;
  v17 = a1;
  v15 = v6;
  v9 = v7;
  v10 = v6;
  v11 = _Block_copy(aBlock);
  [a1 _axAuditForHierarchy:v4 withTableOrCollectionViews:v5 performAction:@"Dereference Cells" performBlockOnEachCell:v11];

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

+ (id)_axAuditHelperToFindRelevantSubviewsOfCellView:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] arrayWithObject:a3];
  v22 = [MEMORY[0x1E695DF70] array];
  if ([v4 count])
  {
    v5 = 0;
    v21 = v4;
    do
    {
      v6 = [v4 firstObject];
      [v4 removeObjectAtIndex:0];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = [a1 _axAuditGetFontForElement:v6];
          v8 = [a1 _axAuditGetTextFromObject:v6];
          v9 = v8;
          if (v7 && v8)
          {
            v23 = v8;
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v10 = v22;
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
                  v16 = [a1 _axAuditGetFontForElement:v15];
                  v17 = [a1 _axAuditGetTextFromObject:v15];
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

            [v10 addObject:v6];
LABEL_18:
            v4 = v21;
            v9 = v23;
          }

          v18 = [v6 subviews];
          [v4 addObjectsFromArray:v18];
        }
      }

      if (![v4 count])
      {
        break;
      }
    }

    while (v5++ < 0x270F);
  }

  return v22;
}

+ (id)_axAuditCreateElementInfoDictionariesForSubviews:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v4;
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
        v13 = [a1 _axAuditGetTextFromObject:v10];
        v14 = [MEMORY[0x1E695DF90] dictionary];
        v23[0] = @"Class Name";
        v23[1] = @"Text";
        v24[0] = v12;
        v24[1] = v13;
        v23[2] = @"Font Dictionary";
        v23[3] = @"Clipping Status";
        v24[2] = v14;
        v24[3] = MEMORY[0x1E695E110];
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:4];
        v16 = [v15 mutableCopy];
        [v5 addObject:v16];
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  return v5;
}

+ (id)_axAuditMatchReferenceSubviews:(id)a3 againstNewSubviews:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v5 = a4;
  v26 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v5;
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
        v10 = [a1 _axAuditGetTextFromObject:v7];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v11 = v23;
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
                [v26 setObject:v16 forKey:v27];
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

  return v26;
}

+ (void)_axAuditUpdateFontsForReferenceMatches:(id)a3 forFontSize:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v6 objectForKey:v12];
        v14 = [a1 _axAuditGetFontForElement:v12];
        if (v14)
        {
          v15 = [v13 objectForKey:@"Font Dictionary"];
          [v15 setObject:v14 forKey:v7];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

+ (void)_axAuditUpdateClippingStatusForReferenceMatches:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v3 objectForKey:{v8, v12}];
        v10 = [v9 objectForKey:@"Clipping Status"];
        v11 = [v10 BOOLValue];

        if (v11)
        {

          goto LABEL_13;
        }

        if ([UIApplicationAuditIssuesAccessibility _axAuditElementIsClipping:v8])
        {
          [v9 setObject:MEMORY[0x1E695E118] forKey:@"Clipping Status"];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

+ (id)_axAuditGetTextFromObject:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    v4 = [v3 safeValueForKey:@"text"];
    v5 = __UIAccessibilityCastAsClass();

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![v5 length])
    {
      v15 = [v3 placeholder];

      v5 = v15;
      if (v15)
      {
        goto LABEL_19;
      }
    }

    else if (v5)
    {
      goto LABEL_19;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v3 textLayoutManager];
    if (v6)
    {
      objc_opt_class();
      v7 = [v6 textContentManager];
      v8 = __UIAccessibilityCastAsClass();

      if (v8)
      {
        v9 = [v8 textStorage];
        v10 = v9;
        if (v9)
        {
          v11 = v9;

          v3 = v11;
        }
      }
    }
  }

  else
  {
    v12 = objc_opt_class();
    v6 = NSStringFromClass(v12);
    if ([v6 isEqualToString:@"_UITextContainerView"])
    {
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }

      [v3 performSelector:sel_textStorage];
      v3 = v6 = v3;
    }
  }

LABEL_16:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 string];
  }

  else
  {
    v5 = 0;
  }

LABEL_19:

  return v5;
}

+ (void)_axAuditStoreFontsIntoDictionary:(id)a3 forReferenceMatches:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v6 objectForKey:v11];
        v13 = [v12 objectForKey:@"Font Dictionary"];
        if (v13)
        {
          [v5 setObject:v13 forKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

+ (void)_axAuditStoreClippedElementsIntoSet:(id)a3 forReferenceMatches:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
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
        v12 = [v6 objectForKey:v11];
        v13 = [v12 objectForKey:@"Clipping Status"];
        v14 = [v13 BOOLValue];

        if (v14)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

+ (void)_axAuditUIKitShouldReportFontSize:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 copy];
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
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = *MEMORY[0x1E69DDC48];
  v12[0] = *MEMORY[0x1E69DDC80];
  v9 = [v3 copy];

  v12[1] = @"UIContentSizeCategoryTextLegibilityEnabledKey";
  v13[0] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithBool:UIAccessibilityIsBoldTextEnabled()];
  v13[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v7 postNotificationName:v8 object:v6 userInfo:v11];
}

+ (BOOL)_axAuditSwizzleAwayContentSize:(BOOL)a3
{
  v3 = a3;
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

  v9 = [a1 _axAuditSetSwizzledImp:axAuditSwizzlePreferredContentSizeCategory1 orOrigImp:_axAuditOrigPreferredContentSizeCategory1 forMethod:InstanceMethod withSwizzling:{v3, v11, v12, v13, v14, v15, v16}];
  return v9 & [a1 _axAuditSetSwizzledImp:axAuditSwizzlePreferredContentSizeCategory2 orOrigImp:_axAuditOrigPreferredContentSizeCategory2 forMethod:v8 withSwizzling:v3];
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

+ (BOOL)_axAuditSetSwizzledImp:(void *)a3 orOrigImp:(void *)a4 forMethod:(objc_method *)a5 withSwizzling:(BOOL)a6
{
  if (a5)
  {
    if (!a6)
    {
      a3 = a4;
    }

    method_setImplementation(a5, a3);
  }

  return a5 != 0;
}

@end