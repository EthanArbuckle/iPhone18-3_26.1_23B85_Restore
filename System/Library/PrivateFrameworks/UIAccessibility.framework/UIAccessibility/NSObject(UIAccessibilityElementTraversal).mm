@interface NSObject(UIAccessibilityElementTraversal)
- (BOOL)_accessibilityHasVisibleFrame;
- (id)_accessibilityElementsInDirectionWithCount:()UIAccessibilityElementTraversal options:;
- (id)_accessibilityLeafDescendantsWithCount:()UIAccessibilityElementTraversal shouldStopAtRemoteElement:options:treeLogger:;
- (id)_accessibilityParentFromOrderedChildrenContainer:()UIAccessibilityElementTraversal;
- (id)_accessibilityTreeAsString;
- (id)_accessibilityTreeAsStringWithOptions:()UIAccessibilityElementTraversal;
- (id)_accessibilityViewChildrenForEnumeratingSiblingsWithOptions:()UIAccessibilityElementTraversal;
- (uint64_t)_accessibilityAppendOrderedChildLeafDescendantsToArray:()UIAccessibilityElementTraversal count:shouldStopAtRemoteElement:options:treeLogger:;
- (uint64_t)_accessibilityCompareGeometryForViewOrDictionary:()UIAccessibilityElementTraversal;
- (uint64_t)_accessibilityEnumerateSiblingsWithParent:()UIAccessibilityElementTraversal options:usingBlock:;
- (uint64_t)_accessibilityIsLeafNodeWithOptions:()UIAccessibilityElementTraversal;
- (uint64_t)_accessibilityShouldBeAddedToViewChildrenWithOptions:()UIAccessibilityElementTraversal;
- (void)_accessibilityEnumerateSiblingsFromOrderedChildrenContainer:()UIAccessibilityElementTraversal fromChildAtIndex:headerIndex:footerIndex:options:usingBlock:;
- (void)_addAccessibilityElementsAndOrderedContainersWithOptions:()UIAccessibilityElementTraversal toCollection:;
- (void)_handleSupplementaryViewIfNeededWithElementOrOrderedChildrenContainer:()UIAccessibilityElementTraversal childOfElementOrOrderedChildrenContainer:headerIndex:footerIndex:allowedElementsForTraversal:;
@end

@implementation NSObject(UIAccessibilityElementTraversal)

- (id)_accessibilityElementsInDirectionWithCount:()UIAccessibilityElementTraversal options:
{
  v7 = a4;
  if (!v7)
  {
    _AXAssert();
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_33:
    _AXAssert();
    goto LABEL_3;
  }

  if (!a3)
  {
    goto LABEL_33;
  }

LABEL_3:
  v8 = AXLogElementTraversal();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(NSObject(UIAccessibilityElementTraversal) *)v7 _accessibilityElementsInDirectionWithCount:a3 options:v8];
  }

  if ([v7 shouldReturnScannerGroups])
  {
    _AXAssert();
  }

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:a3];
  v10 = a1;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  while (v10)
  {
    v29 = a3;
    v30 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __96__NSObject_UIAccessibilityElementTraversal___accessibilityElementsInDirectionWithCount_options___block_invoke;
    v24[3] = &unk_1E78AA840;
    v27 = &v35;
    v11 = v7;
    v25 = v11;
    v12 = v9;
    v26 = v12;
    v28 = &v31;
    v13 = [v10 _accessibilityEnumerateSiblingsWithParent:&v30 options:v11 usingBlock:v24];
    v14 = v30;
    if ((v13 & 1) != 0 && (v32[3] & 1) == 0)
    {
      v16 = AXRemoteElementFromObject();
      v17 = v16;
      if (v16 && ([v16 onClientSide] & 1) == 0)
      {
        if (v14)
        {
          _AXAssert();
        }

        if (v36[3] >= a3)
        {
          _AXAssert();
        }

        [v12 addObject:v17];
      }

      v18 = [v11 allowedElementsForTraversal];
      if (v18)
      {
        v4 = [v11 allowedElementsForTraversal];
        if ([v4 containsObject:v14])
        {

          goto LABEL_24;
        }
      }

      v19 = [v14 _accessibilityIsRootElementForElementTraversal];
      v20 = v19;
      if (v18)
      {

        if (v20)
        {
          goto LABEL_24;
        }

LABEL_26:
        v21 = v14;
      }

      else
      {
        if ((v19 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_24:
        v21 = 0;
      }

      v15 = 1;
      v10 = v21;
      goto LABEL_28;
    }

    v15 = 0;
LABEL_28:

    if ((v15 & 1) == 0)
    {
      break;
    }
  }

  v22 = v9;
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v22;
}

- (id)_accessibilityTreeAsString
{
  v2 = [UIAccessibilityElementTraversalOptions voiceOverOptionsIncludingElementsFromOpaqueProviders:1 honorsGroups:0];
  v3 = [a1 _accessibilityTreeAsStringWithOptions:v2];

  return v3;
}

- (id)_accessibilityTreeAsStringWithOptions:()UIAccessibilityElementTraversal
{
  v4 = a3;
  v5 = objc_alloc_init(UIAccessibilityInMemoryStringBasedTreeLogger);
  [a1 _accessibilityTraverseTreeWithLogger:v5 options:v4];

  v6 = [(UIAccessibilityInMemoryStringBasedTreeLogger *)v5 stringRepresentation];

  return v6;
}

- (uint64_t)_accessibilityShouldBeAddedToViewChildrenWithOptions:()UIAccessibilityElementTraversal
{
  v4 = a3;
  if (([a1 _accessibilityShouldBeProcessed:v4] & 1) == 0)
  {
    v11 = a1;
    _AXAssert();
  }

  v5 = [v4 leafNodePredicate];
  if (v5 && (v6 = v5, [v4 leafNodePredicate], v7 = objc_claimAutoreleasedReturnValue(), v8 = (v7)[2](v7, a1), v7, v6, (v8 & 1) != 0) || (objc_msgSend(a1, "_accessibilityHasOrderedChildren") & 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = [a1 isAccessibilityElement];
  }

  return v9;
}

- (id)_accessibilityLeafDescendantsWithCount:()UIAccessibilityElementTraversal shouldStopAtRemoteElement:options:treeLogger:
{
  v51[1] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  if (!v10)
  {
    _AXAssert();
  }

  v12 = [v10 direction] == 2;
  if ([v10 forSpeakScreen] && objc_msgSend(a1, "_accessibilitySpeakThisShouldOnlyIncludeVisibleElements") && (objc_msgSend(v10, "shouldOnlyIncludeElementsWithVisibleFrame") & 1) == 0)
  {
    v13 = 1;
    [v10 setShouldOnlyIncludeElementsWithVisibleFrame:1];
  }

  else
  {
    v13 = 0;
  }

  v14 = [MEMORY[0x1E695DF70] array];
  if (![v10 shouldOnlyIncludeElementsWithVisibleFrame] || objc_msgSend(a1, "_accessibilityHasVisibleFrame"))
  {
    v36 = v13;
    v15 = v14;
    v16 = [a1 _accessibilityIsLeafNodeWithOptions:v10];
    v35 = a4;
    if (v16)
    {
      v17 = 0;
      v18 = v15;
    }

    else
    {
      if ([v10 shouldReturnScannerGroups] && objc_msgSend(a1, "_accessibilityIsScannerGroup"))
      {
        v18 = [MEMORY[0x1E695DF70] array];

        v17 = 1;
      }

      else
      {
        v17 = 0;
        v18 = v15;
      }

      if ([v10 shouldReturnScannerGroups])
      {
        if (a3)
        {
          _AXAssert();
        }

        v33 = v17;
        if ([v10 direction] != 1)
        {
          _AXAssert();
        }

        v19 = v11;
        if (v35)
        {
          _AXAssert();
        }

        v20 = [a1 _accessibilityScannerGroupElements];
        if (v20)
        {
          v21 = v20;
          [v18 addObjectsFromArray:v20];

          v11 = v19;
          if (v33)
          {
            goto LABEL_37;
          }

          goto LABEL_44;
        }

        v17 = v33;
      }
    }

    if (!a3 || [v15 count] < a3)
    {
      [v11 logElement:a1];
      if (v16)
      {
        [v15 addObject:a1];
        if ((v17 & 1) == 0)
        {
          goto LABEL_44;
        }

LABEL_37:
        v23 = MEMORY[0x1E695DF90];
        v50 = @"GroupElements";
        v51[0] = v18;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
        v25 = [v23 dictionaryWithDictionary:v24];

        v26 = [a1 _accessibilityScannerGroupTraits];
        if (v26)
        {
          v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v26];
          [v25 setObject:v27 forKeyedSubscript:@"GroupTraits"];
        }

        v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(a1, "_accessibilityScanningBehaviorTraits") | 0x10}];
        [v25 setObject:v28 forKeyedSubscript:@"GroupScanBehaviorTraits"];

        v29 = [a1 _accessibilityAXAttributedLabel];
        if ([v29 length])
        {
          [v25 setObject:v29 forKeyedSubscript:@"GroupLabel"];
        }

        v30 = [a1 _accessibilityGroupIdentifier];
        if (v30)
        {
          [v25 setObject:v30 forKeyedSubscript:@"GroupIdentifier"];
        }

        [v15 addObject:v25];

        goto LABEL_44;
      }

      v22 = 2 * v12;
      if ([a1 _accessibilityHasOrderedChildren])
      {
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __129__NSObject_UIAccessibilityElementTraversal___accessibilityLeafDescendantsWithCount_shouldStopAtRemoteElement_options_treeLogger___block_invoke;
        v44[3] = &unk_1E78AA868;
        v18 = v18;
        v45 = v18;
        v48 = a3;
        v49 = v35;
        v46 = v10;
        v47 = v11;
        [a1 accessibilityEnumerateContainerElementsWithOptions:2 * v12 usingBlock:v44];

        if ((v17 & 1) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }

      if (([a1 isAccessibilityElement] & 1) == 0)
      {
        v34 = [a1 _accessibilityViewChildrenWithOptions:v10];
        [v11 push];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __129__NSObject_UIAccessibilityElementTraversal___accessibilityLeafDescendantsWithCount_shouldStopAtRemoteElement_options_treeLogger___block_invoke_2;
        v37[3] = &unk_1E78AA890;
        v42 = a3 != 0;
        v38 = v15;
        v41 = a3;
        v43 = v35;
        v39 = v10;
        v32 = v11;
        v40 = v32;
        [v34 enumerateObjectsWithOptions:v22 usingBlock:v37];
        [v32 pop];

        if ((v17 & 1) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }
    }

    if (v17)
    {
      goto LABEL_37;
    }

LABEL_44:

    v13 = v36;
  }

  if (v13)
  {
    [v10 setShouldOnlyIncludeElementsWithVisibleFrame:0];
  }

  return v14;
}

- (uint64_t)_accessibilityIsLeafNodeWithOptions:()UIAccessibilityElementTraversal
{
  v5 = a3;
  v6 = [v5 leafNodePredicate];
  if (v6)
  {
    v3 = [v5 leafNodePredicate];
    if ((v3)[2](v3, a1))
    {

      v7 = 1;
LABEL_15:

      goto LABEL_16;
    }
  }

  v8 = [v5 leafNodePredicate];
  if (v8 || ![a1 isAccessibilityElement])
  {
    v10 = 0;
  }

  else
  {
    v9 = [a1 accessibilityTraits];
    v10 = (UIAccessibilityTraitSpacer & ~v9) != 0;
  }

  if (!v6)
  {
    if (v10)
    {
      goto LABEL_10;
    }

LABEL_12:
    v11 = AXRemoteElementFromObject();
    v6 = v11;
    if (v11)
    {
      v7 = [v11 onClientSide];
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_15;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_10:
  v7 = 1;
LABEL_16:

  return v7;
}

- (uint64_t)_accessibilityAppendOrderedChildLeafDescendantsToArray:()UIAccessibilityElementTraversal count:shouldStopAtRemoteElement:options:treeLogger:
{
  v12 = a3;
  v13 = a6;
  v32 = a7;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v14 = [v13 direction];
  if ([v12 count])
  {
    v15 = [v12 lastObject];
    v16 = AXRemoteElementFromObject();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_10:
    if (a5 && v16)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v16 = 0;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_3:
  v17 = [v12 count];
  if (v16)
  {
    v18 = a5;
  }

  else
  {
    v18 = 0;
  }

  if (v17 >= a4 || (v18 & 1) != 0)
  {
LABEL_12:
    if ([v12 count] > a4)
    {
      _AXAssert();
    }

    v19 = 1;
    *(v42 + 24) = 1;
    goto LABEL_36;
  }

LABEL_15:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __151__NSObject_UIAccessibilityElementTraversal___accessibilityAppendOrderedChildLeafDescendantsToArray_count_shouldStopAtRemoteElement_options_treeLogger___block_invoke;
  aBlock[3] = &unk_1E78AA8E0;
  v38 = 2 * (v14 != 1);
  v20 = v32;
  v34 = v20;
  v37 = &v41;
  v21 = v12;
  v35 = v21;
  v39 = a4;
  v40 = a5;
  v22 = v13;
  v36 = v22;
  v30 = a1;
  v31 = _Block_copy(aBlock);
  if ([a1 _accessibilityShouldUseSupplementaryViews] && (objc_msgSend(v22, "shouldExcludeSupplementaryViews") & 1) == 0)
  {
    if (v14 == 1)
    {
      [a1 _accessibilitySupplementaryHeaderViews];
    }

    else
    {
      [a1 _accessibilitySupplementaryFooterViews];
    }
    v24 = ;
    v31[2](v31, v24);

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v25 = *(v42 + 24);
  if ((v25 & 1) == 0)
  {
    [v20 push];
    if (a4)
    {
      v26 = a4 - [v21 count];
    }

    else
    {
      v26 = 0;
    }

    v27 = [v30 _accessibilityLeafDescendantsWithCount:v26 shouldStopAtRemoteElement:a5 options:v22 treeLogger:v20];
    [v21 addObjectsFromArray:v27];

    [v20 pop];
    if (a4)
    {
      v25 = [v21 count] >= a4;
    }

    else
    {
      v25 = 0;
    }

    *(v42 + 24) = v25;
  }

  if (((v23 | v25) & 1) == 0)
  {
    if (v14 == 1)
    {
      [v30 _accessibilitySupplementaryFooterViews];
    }

    else
    {
      [v30 _accessibilitySupplementaryHeaderViews];
    }
    v28 = ;
    v31[2](v31, v28);
  }

  v19 = *(v42 + 24);
LABEL_36:

  _Block_object_dispose(&v41, 8);
  return v19 & 1;
}

- (void)_accessibilityEnumerateSiblingsFromOrderedChildrenContainer:()UIAccessibilityElementTraversal fromChildAtIndex:headerIndex:footerIndex:options:usingBlock:
{
  v53 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a7;
  v16 = a8;
  v17 = [v15 direction];
  v18 = [v14 accessibilityElementCount];
  if ((a4 & 0x8000000000000000) == 0 && v18 > a4)
  {
    v34 = v18;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __165__NSObject_UIAccessibilityElementTraversal___accessibilityEnumerateSiblingsFromOrderedChildrenContainer_fromChildAtIndex_headerIndex_footerIndex_options_usingBlock___block_invoke;
    aBlock[3] = &unk_1E78AA908;
    v42 = &v43;
    v33 = v16;
    v19 = v16;
    v41 = v19;
    v35 = _Block_copy(aBlock);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __165__NSObject_UIAccessibilityElementTraversal___accessibilityEnumerateSiblingsFromOrderedChildrenContainer_fromChildAtIndex_headerIndex_footerIndex_options_usingBlock___block_invoke_2;
    v36[3] = &unk_1E78AA930;
    v38 = &v43;
    v39 = v17 == 1;
    v37 = v19;
    v20 = _Block_copy(v36);
    if (v17 == 1)
    {
      if (a5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 = [a1 _accessibilitySupplementaryHeaderViews];
        v20[2](v20, v21, a5 + 1);

        v35[2](v35, a1);
      }

      v22 = [a1 _accessibilitySupplementaryFooterViews];
      if (a6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = 0;
      }

      else
      {
        v23 = a6 + 1;
      }
    }

    else
    {
      if (a6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = [a1 _accessibilitySupplementaryFooterViews];
        v20[2](v20, v24, a6 - 1);

        v35[2](v35, a1);
      }

      v22 = [a1 _accessibilitySupplementaryHeaderViews];
      if (a5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = 0;
      }

      else
      {
        v23 = a5 - 1;
      }
    }

    v20[2](v20, v22, v23);

    if (v44[3])
    {
LABEL_16:

      _Block_object_dispose(&v43, 8);
      v16 = v33;
      goto LABEL_17;
    }

    if (v17 == 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = -1;
    }

    for (i = v25 + a4; ; i += v25)
    {
      if (v17 == 1)
      {
        if (i >= v34)
        {
          goto LABEL_16;
        }
      }

      else if (i < 0)
      {
        goto LABEL_16;
      }

      if (v44[3])
      {
        goto LABEL_16;
      }

      v27 = [v14 accessibilityElementAtIndex:i];
      if ([v27 _accessibilityShouldBeProcessed:v15])
      {
        break;
      }

      if (v27)
      {
        v29 = AXLogElementTraversal();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v48 = v14;
          v49 = 2112;
          v50 = v27;
          _os_log_impl(&dword_1A9B83000, v29, OS_LOG_TYPE_INFO, "Ordered container %@ gave us an element %@ that was invalid for the current element traversal options, so we are skipping over it. It was probably invisible.", buf, 0x16u);
        }
      }

      else
      {
        v29 = AXLogElementTraversal();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v48 = v14;
          v49 = 2048;
          v50 = i;
          v51 = 2048;
          v52 = v34;
          _os_log_error_impl(&dword_1A9B83000, v29, OS_LOG_TYPE_ERROR, "Ordered container %@ failed to provide an element at index %ld, but had count %ld.  This is probably an app accessibility bug.", buf, 0x20u);
        }
      }

LABEL_45:
    }

    v28 = [v27 _accessibilityIsLeafNodeWithOptions:v15];
    if (v17 == 1)
    {
      v29 = [v27 _accessibilitySupplementaryHeaderViews];
      v30 = [v27 _accessibilitySupplementaryFooterViews];
      if (v28)
      {
        v31 = 0;
LABEL_36:
        v20[2](v20, v29, v31);
      }
    }

    else
    {
      v29 = [v27 _accessibilitySupplementaryFooterViews];
      v30 = [v27 _accessibilitySupplementaryHeaderViews];
      if (v28)
      {
        v31 = [v29 count]- 1;
        goto LABEL_36;
      }
    }

    v35[2](v35, v27);
    if (v28)
    {
      if (v17 == 1)
      {
        v32 = 0;
      }

      else
      {
        v32 = [v30 count] - 1;
      }

      v20[2](v20, v30, v32);
    }

    goto LABEL_45;
  }

  _AXAssert();
LABEL_17:
}

- (id)_accessibilityParentFromOrderedChildrenContainer:()UIAccessibilityElementTraversal
{
  v4 = a3;
  v5 = a1;
  v6 = [v4 _accessibilitySupplementaryHeaderViews];
  v7 = [v4 _accessibilitySupplementaryFooterViews];
  v8 = v5;
  while (v8 != v4)
  {
    v9 = [v8 accessibilityContainer];

    if (!v9)
    {
      v8 = 0;
      break;
    }

    if ([v4 indexOfAccessibilityElement:v9] == 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend(v6, "containsObject:", v9) & 1) == 0)
    {
      v8 = v9;
      if (![v7 containsObject:v9])
      {
        continue;
      }
    }

    v10 = v9;
    v8 = v10;
    goto LABEL_10;
  }

  _AXLogWithFacility();
  v10 = 0;
LABEL_10:
  v11 = v10;

  return v10;
}

- (void)_handleSupplementaryViewIfNeededWithElementOrOrderedChildrenContainer:()UIAccessibilityElementTraversal childOfElementOrOrderedChildrenContainer:headerIndex:footerIndex:allowedElementsForTraversal:
{
  v12 = a7;
  v13 = [*a3 _accessibilitySupplementaryHeaderViews];
  v14 = [*a3 _accessibilitySupplementaryFooterViews];
  if (v13)
  {
    v15 = [v13 indexOfObject:a1];
    *a5 = v15;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = *a5;
    if (!v14)
    {
LABEL_7:
      if (v15 == 0x7FFFFFFFFFFFFFFFLL && *a6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    *a6 = [v14 indexOfObject:a1];
    v15 = *a5;
    goto LABEL_7;
  }

LABEL_9:
  *a4 = *a3;
  *a3 = [*a3 _accessibilityOrderedChildrenContainerWithinElements:v12];
  v16 = AXLogElementTraversal();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [(NSObject(UIAccessibilityElementTraversal) *)a3 _handleSupplementaryViewIfNeededWithElementOrOrderedChildrenContainer:v16 childOfElementOrOrderedChildrenContainer:v17 headerIndex:v18 footerIndex:v19 allowedElementsForTraversal:v20, v21, v22];
  }

LABEL_12:
}

- (uint64_t)_accessibilityEnumerateSiblingsWithParent:()UIAccessibilityElementTraversal options:usingBlock:
{
  v120 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [v8 direction];
  v11 = [v8 allowedElementsForTraversal];
  v12 = [a1 _accessibilityOrderedChildrenContainerWithinElements:v11];
  v13 = a1;
  v109 = 0x7FFFFFFFFFFFFFFFLL;
  v110 = 0x7FFFFFFFFFFFFFFFLL;
  v14 = AXLogElementTraversal();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [NSObject(UIAccessibilityElementTraversal) _accessibilityEnumerateSiblingsWithParent:options:usingBlock:];
  }

  if (v12)
  {
    v107 = v13;
    v108 = v12;
    [v13 _handleSupplementaryViewIfNeededWithElementOrOrderedChildrenContainer:&v108 childOfElementOrOrderedChildrenContainer:&v107 headerIndex:&v110 footerIndex:&v109 allowedElementsForTraversal:v11];
    v15 = v108;

    v16 = v107;
  }

  else
  {
    v15 = 0;
    v16 = v13;
  }

  v90 = v15;
  if (!(v11 | v15))
  {
    v78 = v10;
    v81 = a3;
    v87 = v16;
    v17 = AXLogElementTraversal();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [NSObject(UIAccessibilityElementTraversal) _accessibilityEnumerateSiblingsWithParent:v17 options:? usingBlock:?];
    }

    v18 = MEMORY[0x1E69DDA98];
    v19 = *MEMORY[0x1E69DDA98];
    v20 = [v19 connectedScenes];
    v84 = v19;
    v79 = [v19 _accessibilityActiveScenes];
    v21 = [v13 _accessibilityWindowScene];
    v22 = [MEMORY[0x1E69DD2F0] _keyWindowScene];
    v23 = [v13 _accessibilityWindow];
    v24 = [v23 _accessibilityIsIsolatedWindow];

    v91 = v13;
    if (v24)
    {
      v25 = *v18;
      v26 = [v13 _accessibilityWindow];
      v27 = [v25 _accessibilityViewChildrenWithOptions:v8 referenceWindow:v26];
LABEL_45:

      v16 = v87;
      v15 = v90;
      a3 = v81;
      v37 = v84;
LABEL_46:

      goto LABEL_47;
    }

    v44 = [v21 _accessibilityViewChildrenWithOptions:v8];
    v26 = [v44 mutableCopy];

    if (v21 == v22)
    {
      v103[0] = MEMORY[0x1E69E9820];
      v103[1] = 3221225472;
      v103[2] = __106__NSObject_UIAccessibilityElementTraversal___accessibilityEnumerateSiblingsWithParent_options_usingBlock___block_invoke;
      v103[3] = &unk_1E78AA958;
      v104 = v20;
      v46 = v26;
      v105 = v46;
      v106 = v8;
      [v79 enumerateObjectsUsingBlock:v103];

      v26 = v104;
    }

    else
    {
      if (![v79 containsObject:v21] || (objc_msgSend(v20, "containsObject:", v21) & 1) != 0)
      {
        goto LABEL_44;
      }

      v45 = [v22 _accessibilityViewChildrenWithOptions:v8];
      v46 = [v45 mutableCopy];

      [v46 addObjectsFromArray:v26];
    }

    v26 = v46;
LABEL_44:
    v51 = *v18;
    v52 = [v91 _accessibilityWindow];
    v27 = [v51 _accessibilityViewChildrenWithOptions:v8 referenceWindow:v52];

    goto LABEL_45;
  }

  if (!v11 || v15)
  {
    v38 = [v15 indexOfAccessibilityElement:v16];
    if (v38 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v47 = v38;
      v48 = v15;
      v49 = AXLogElementTraversal();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        [NSObject(UIAccessibilityElementTraversal) _accessibilityEnumerateSiblingsWithParent:options:usingBlock:];
      }

      [v16 _accessibilityEnumerateSiblingsFromOrderedChildrenContainer:v48 fromChildAtIndex:v47 headerIndex:v110 footerIndex:v109 options:v8 usingBlock:v9];
      v27 = 0;
      v50 = 1;
      v37 = v48;
      if (!a3)
      {
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    v39 = AXLogElementTraversal();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      [NSObject(UIAccessibilityElementTraversal) _accessibilityEnumerateSiblingsWithParent:v15 options:v39 usingBlock:?];
    }

    v40 = [v13 _accessibilityParentFromOrderedChildrenContainer:v15];
    if (!v40)
    {
      v74 = AXLogElementTraversal();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
      {
        [NSObject(UIAccessibilityElementTraversal) _accessibilityEnumerateSiblingsWithParent:options:usingBlock:];
      }

      v37 = v15;
      v27 = 0;
LABEL_63:
      v50 = 1;
      if (!a3)
      {
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    v78 = v10;
    v97 = v13;
    v98 = v40;
    v37 = v40;
    v91 = v13;
    v41 = v13;
    [v41 _handleSupplementaryViewIfNeededWithElementOrOrderedChildrenContainer:&v98 childOfElementOrOrderedChildrenContainer:&v97 headerIndex:&v110 footerIndex:&v109 allowedElementsForTraversal:v11];
    v42 = v98;

    v20 = v97;
    v79 = v42;
    v43 = [v42 indexOfAccessibilityElement:v20];
    if (v43 == 0x7FFFFFFFFFFFFFFFLL || v110 == 0x7FFFFFFFFFFFFFFFLL && v109 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = [v37 _accessibilityViewChildrenForEnumeratingSiblingsWithOptions:v8];
    }

    else
    {
      [v37 _accessibilityEnumerateSiblingsFromOrderedChildrenContainer:v15 fromChildAtIndex:v43 headerIndex:? footerIndex:? options:? usingBlock:?];
      v75 = v42;

      v27 = 0;
      v37 = v75;
    }

    goto LABEL_46;
  }

  v78 = v10;
  v91 = v13;
  v27 = [MEMORY[0x1E695DEC8] array];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v20 = v11;
  v28 = [v20 countByEnumeratingWithState:&v99 objects:v119 count:16];
  if (v28)
  {
    v29 = v28;
    v88 = v16;
    v76 = v11;
    v80 = v9;
    v82 = a3;
    v30 = *v100;
    v31 = MEMORY[0x1E695E0F0];
    while (1)
    {
      for (i = 0; i != v29; ++i)
      {
        v33 = v27;
        if (*v100 != v30)
        {
          objc_enumerationMutation(v20);
        }

        v34 = *(*(&v99 + 1) + 8 * i);
        if ([v34 isAccessibilityElement])
        {
          v35 = v31;
          if (![v34 _accessibilityIsLeafNodeWithOptions:v8])
          {
            goto LABEL_23;
          }

          v118 = v34;
          v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
        }

        else
        {
          v36 = [v34 _accessibilityViewChildrenForEnumeratingSiblingsWithOptions:v8];
        }

        v35 = v36;
LABEL_23:
        v27 = [v27 arrayByAddingObjectsFromArray:v35];
      }

      v29 = [v20 countByEnumeratingWithState:&v99 objects:v119 count:16];
      if (!v29)
      {
        v37 = 0;
        v9 = v80;
        a3 = v82;
        v11 = v76;
        v16 = v88;
        v15 = v90;
        goto LABEL_47;
      }
    }
  }

  v37 = 0;
LABEL_47:

  if (!v27)
  {
    goto LABEL_63;
  }

  v53 = [v27 count];
  if (!v53)
  {
    v64 = AXLogElementTraversal();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      [NSObject(UIAccessibilityElementTraversal) _accessibilityEnumerateSiblingsWithParent:options:usingBlock:];
    }

    goto LABEL_63;
  }

  v54 = v53;
  v55 = a3;
  v56 = [v27 indexOfObject:v91];
  if (v56 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v65 = v56;
    v89 = v16;
LABEL_66:
    v86 = v37;
    buf[0] = 0;
    if (v78 == 1)
    {
      if (v65 + 1 < v54)
      {
        v66 = v65 + 2;
        do
        {
          v67 = [v27 objectAtIndexedSubscript:v66 - 1];
          v9[2](v9, v67, buf);

          if (v66 >= v54)
          {
            break;
          }

          ++v66;
        }

        while ((buf[0] & 1) == 0);
      }
    }

    else
    {
      v68 = v65 - 1;
      if (v65 - 1 >= 0)
      {
        do
        {
          v69 = [v27 objectAtIndexedSubscript:v68];
          v9[2](v9, v69, buf);

          if (!v68)
          {
            break;
          }

          --v68;
        }

        while ((buf[0] & 1) == 0);
      }
    }

    v50 = 1;
    v16 = v89;
    v15 = v90;
    a3 = v55;
    v37 = v86;
    if (!v55)
    {
      goto LABEL_78;
    }

LABEL_77:
    v70 = v37;
    *a3 = v37;
    goto LABEL_78;
  }

  if ([v8 includeAncestorsOfSelfInSiblingMatch])
  {
    v89 = v16;
    v77 = v11;
    v83 = a3;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v57 = v27;
    v58 = [v57 countByEnumeratingWithState:&v93 objects:v117 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v94;
      v85 = v37;
LABEL_53:
      v61 = 0;
      while (1)
      {
        if (*v94 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = *(*(&v93 + 1) + 8 * v61);
        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 3221225472;
        v92[2] = __106__NSObject_UIAccessibilityElementTraversal___accessibilityEnumerateSiblingsWithParent_options_usingBlock___block_invoke_488;
        v92[3] = &unk_1E78AA760;
        v92[4] = v62;
        v63 = [v91 _accessibilityFindAncestor:v92 startWithSelf:0];
        if (v63)
        {
          break;
        }

        if (v59 == ++v61)
        {
          v59 = [v57 countByEnumeratingWithState:&v93 objects:v117 count:16];
          v37 = v85;
          if (v59)
          {
            goto LABEL_53;
          }

          goto LABEL_59;
        }
      }

      v72 = v63;
      v65 = [v57 indexOfObject:v63];

      v55 = v83;
      v11 = v77;
      v15 = v90;
      v37 = v85;
      if (v65 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_66;
      }
    }

    else
    {
LABEL_59:

      v55 = v83;
      v11 = v77;
      v15 = v90;
    }
  }

  v73 = AXLogElementTraversal();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    v112 = v91;
    v113 = 2114;
    v114 = v37;
    v115 = 2114;
    v116 = v27;
    _os_log_debug_impl(&dword_1A9B83000, v73, OS_LOG_TYPE_DEBUG, "Could not find %{public}@ in a list of sorted view [parent: %{public}@] siblings %{public}@.  If this happened right around a screen change, it might be okay, but otherwise this is probably a bug.", buf, 0x20u);
  }

  v50 = 0;
  a3 = v55;
  if (v55)
  {
    goto LABEL_77;
  }

LABEL_78:

  return v50;
}

- (id)_accessibilityViewChildrenForEnumeratingSiblingsWithOptions:()UIAccessibilityElementTraversal
{
  v4 = a3;
  v5 = [v4 alternateViewChildrenHandler];

  if (v5)
  {
    v6 = [v4 alternateViewChildrenHandler];
    v7 = (v6)[2](v6, a1, v4);
  }

  else
  {
    v7 = [a1 _accessibilityViewChildrenWithOptions:v4];
  }

  return v7;
}

- (uint64_t)_accessibilityCompareGeometryForViewOrDictionary:()UIAccessibilityElementTraversal
{
  v4 = a3;
  v5 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    do
    {
      v6 = [v5 objectForKey:@"GroupElements"];
      v7 = [v6 firstObject];

      objc_opt_class();
      v5 = v7;
    }

    while ((objc_opt_isKindOfClass() & 1) != 0);
  }

  else
  {
    v7 = v5;
  }

  v8 = v4;
  objc_opt_class();
  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
    do
    {
      v11 = [v10 objectForKey:@"GroupElements"];
      v9 = [v11 firstObject];

      objc_opt_class();
      v10 = v9;
    }

    while ((objc_opt_isKindOfClass() & 1) != 0);
  }

  if (!v7 || v9)
  {
    if (v7 || !v9)
    {
      v12 = 0;
      if (v7 && v9)
      {
        v12 = [v7 accessibilityCompareGeometry:v9];
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

- (BOOL)_accessibilityHasVisibleFrame
{
  if (AXDeviceIsPad())
  {
    if ([*MEMORY[0x1E69DDA98] safeBoolForKey:@"_isClassic"])
    {
      v2 = [a1 _accessibilityParentView];
      v3 = [v2 window];
      NSClassFromString(&cfstr_Uiclassicwindo.isa);
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        return 1;
      }
    }
  }

  [a1 _accessibilityVisibleFrame];
  return v7 > 2.0 && v6 > 2.0;
}

- (void)_addAccessibilityElementsAndOrderedContainersWithOptions:()UIAccessibilityElementTraversal toCollection:
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([a1 _accessibilityShouldBeProcessed:v6])
  {
    v8 = [a1 _accessibilityShouldBeAddedToViewChildrenWithOptions:v6];
    v9 = [a1 _accessibilityAdditionalElements];
    v10 = [v9 ax_filteredArrayUsingBlock:&__block_literal_global_497];
    [v7 axSafelyAddObjectsFromArray:v10];

    if (v8)
    {
      if ([a1 _accessibilityShouldUseSupplementaryViews] && (objc_msgSend(v6, "shouldExcludeSupplementaryViews") & 1) == 0)
      {
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v31 = [a1 _accessibilitySupplementaryHeaderViews];
        v32 = [v31 countByEnumeratingWithState:&v51 objects:v57 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v52;
          do
          {
            v35 = 0;
            do
            {
              if (*v52 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v51 + 1) + 8 * v35);
              if (v36 == a1)
              {
                _AXAssert();
              }

              else
              {
                [v36 _addAccessibilityElementsAndOrderedContainersWithOptions:v6 toCollection:v7];
              }

              ++v35;
            }

            while (v33 != v35);
            v33 = [v31 countByEnumeratingWithState:&v51 objects:v57 count:16];
          }

          while (v33);
        }

        [v7 addObject:a1];
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v37 = [a1 _accessibilitySupplementaryFooterViews];
        v38 = [v37 countByEnumeratingWithState:&v47 objects:v56 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v48;
          do
          {
            v41 = 0;
            do
            {
              if (*v48 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = *(*(&v47 + 1) + 8 * v41);
              if (v42 == a1)
              {
                _AXAssert();
              }

              [v42 _addAccessibilityElementsAndOrderedContainersWithOptions:v6 toCollection:v7];
              ++v41;
            }

            while (v39 != v41);
            v39 = [v37 countByEnumeratingWithState:&v47 objects:v56 count:16];
          }

          while (v39);
        }
      }

      else
      {
        [v7 addObject:a1];
      }

LABEL_33:
      v29 = [a1 _accessibilityAdditionalElements];
      v30 = [v29 ax_filteredArrayUsingBlock:&__block_literal_global_508];
      [v7 axSafelyAddObjectsFromArray:v30];

      goto LABEL_34;
    }

    v11 = v7;
    if ([v6 shouldReturnScannerGroups] && objc_msgSend(a1, "_accessibilityIsScannerGroup"))
    {
      v12 = [MEMORY[0x1E695DF70] array];

      v13 = 1;
    }

    else
    {
      v13 = 0;
      v12 = v11;
    }

    if ([v6 shouldReturnScannerGroups] && (objc_msgSend(a1, "_accessibilityScannerGroupElements"), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = v14;
      [v12 addObjectsFromArray:v14];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_22:
        if (v13)
        {
          if (([a1 _accessibilityScannerGroupTraits] & 0x20) == 0)
          {
            [v12 sortUsingSelector:sel__accessibilityCompareGeometryForViewOrDictionary_];
          }

          v20 = a1;
          v21 = MEMORY[0x1E695DF90];
          v22 = v12;
          v23 = [v21 dictionary];
          [v23 setObject:v22 forKeyedSubscript:@"GroupElements"];

          v24 = [v20 _accessibilityScannerGroupTraits];
          if (v24)
          {
            v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v24];
            [v23 setObject:v25 forKeyedSubscript:@"GroupTraits"];
          }

          v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v20, "_accessibilityScanningBehaviorTraits") | 0x10}];
          [v23 setObject:v26 forKeyedSubscript:@"GroupScanBehaviorTraits"];

          v27 = [v20 _accessibilityAXAttributedLabel];
          if (v27)
          {
            [v23 setObject:v27 forKeyedSubscript:@"GroupLabel"];
          }

          v28 = [v20 _accessibilityGroupIdentifier];
          if (v28)
          {
            [v23 setObject:v28 forKeyedSubscript:@"GroupIdentifier"];
          }

          [v11 addObject:v23];
        }

        goto LABEL_33;
      }

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v15 = [a1 _accessibilitySubviewsForGettingElementsWithOptions:{v6, 0}];
      v16 = [v15 countByEnumeratingWithState:&v43 objects:v55 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v44;
        do
        {
          v19 = 0;
          do
          {
            if (*v44 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [*(*(&v43 + 1) + 8 * v19++) _addAccessibilityElementsAndOrderedContainersWithOptions:v6 toCollection:v12];
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v43 objects:v55 count:16];
        }

        while (v17);
      }
    }

    goto LABEL_22;
  }

LABEL_34:
}

- (void)_accessibilityElementsInDirectionWithCount:()UIAccessibilityElementTraversal options:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a2;
  *&v3[12] = 2114;
  *&v3[14] = a1;
  OUTLINED_FUNCTION_1(&dword_1A9B83000, a2, a3, "Getting %lu accessibility elements, with options %{public}@.", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

- (void)_accessibilityEnumerateSiblingsWithParent:()UIAccessibilityElementTraversal options:usingBlock:.cold.3(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 _accessibilityElements];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1A9B83000, a2, OS_LOG_TYPE_DEBUG, "The node was not a direct child of the ancestor UIAccessibilityContainer (container elements %{public}@).  Time to go up the chain and find that child...", v4, 0xCu);
}

@end