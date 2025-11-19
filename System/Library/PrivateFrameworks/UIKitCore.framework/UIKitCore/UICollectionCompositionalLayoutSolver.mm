@interface UICollectionCompositionalLayoutSolver
@end

@implementation UICollectionCompositionalLayoutSolver

void __79___UICollectionCompositionalLayoutSolver_traitsRequiringInvalidationForChanges__block_invoke()
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (dyld_program_sdk_at_least())
  {
    v6[0] = 0x1EFE323E0;
    v0 = MEMORY[0x1E695DEC8];
    v1 = v6;
    v2 = 1;
  }

  else
  {
    v5[0] = 0x1EFE323F8;
    v5[1] = 0x1EFE32440;
    v5[2] = 0x1EFE323E0;
    v0 = MEMORY[0x1E695DEC8];
    v1 = v5;
    v2 = 3;
  }

  v3 = [v0 arrayWithObjects:v1 count:v2];
  v4 = qword_1ED4932F0;
  qword_1ED4932F0 = v3;
}

void __96___UICollectionCompositionalLayoutSolver_updatePinnedSectionSupplementaryItemsForVisibleBounds___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 8);
    v7 = [*(v5 + 16) _extensionBehavior];
    v9 = *(v5 + 24);
    v8 = *(v5 + 32);
    v10 = *(v5 + 40);
    v11 = *(v5 + 48);
  }

  else
  {
    v7 = [0 _extensionBehavior];
    v6 = 0;
    v8 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
  }

  v111[0] = 0;
  if (v7)
  {
    v12 = [*(a1 + 40) indexGreaterThanIndex:v2];
    if (v12 == v2 + 1)
    {
      v13 = [*(a1 + 32) objectAtIndexedSubscript:v12];
      v14 = v13;
      if (v13)
      {
        v13 = v13[2];
      }

      v15 = [v13 _extensionBehavior];
      if (v15)
      {
        v16 = v15;
        v17 = *(a1 + 48);
        v18 = _UIDirectionalEdgeForPreEdgeOnLayoutAxis(*(a1 + 72));
        v9 = [(_UICollectionCompositionalLayoutSolver *)v17 _frameByExtendingGlobalSectionFrame:v14 toOverlapPinnedSupplementaryInSection:v18 onEdge:v9 visibleBounds:v8 extensionBehavior:v10 didExtend:v11, *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), v16, v111];
        v8 = v19;
        v10 = v20;
        v11 = v21;
      }
    }

    v22 = [*(a1 + 40) indexLessThanIndex:v2];
    if (v22 == v2 - 1)
    {
      v23 = [*(a1 + 32) objectAtIndexedSubscript:v22];
      v24 = v23;
      if (v23)
      {
        v23 = v23[2];
      }

      v25 = [v23 _extensionBehavior];
      if (v25)
      {
        v26 = v25;
        v27 = *(a1 + 48);
        v28 = _UIDirectionalEdgeForPostEdgeOnLayoutAxis(*(a1 + 72));
        v9 = [(_UICollectionCompositionalLayoutSolver *)v27 _frameByExtendingGlobalSectionFrame:v24 toOverlapPinnedSupplementaryInSection:v28 onEdge:v9 visibleBounds:v8 extensionBehavior:v10 didExtend:v11, *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), v26, v111];
        v8 = v29;
        v10 = v30;
        v11 = v31;
      }
    }

    v32 = v111[0];
    if (v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v32 = 0;
    if (v5)
    {
LABEL_17:
      v33 = *(v5 + 56);
      v34 = *(v5 + 64);
      v35 = *(v5 + 72);
      v36 = *(v5 + 80);
      goto LABEL_18;
    }
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
LABEL_18:
  v112.origin.x = v9;
  v112.origin.y = v8;
  v112.size.width = v10;
  v112.size.height = v11;
  if (!CGRectEqualToRect(v112, *&v33))
  {
    v101 = v32;
    v37 = v2;
    v103 = v7;
    v38 = v10;
    if (v5)
    {
      v39 = [_UICollectionSectionSolutionBookmark alloc];
      v40 = *(v5 + 24);
      v41 = *(v5 + 32);
      v42 = *(v5 + 40);
      v43 = *(v5 + 48);
      v44 = *(v5 + 88);
      v45 = *(v5 + 96);
      v46 = *(v5 + 8);
      v47 = *(v5 + 104);
      v48 = *(v5 + 16);
      v49 = v46;
      v50 = v40;
      v10 = v38;
      v51 = [(_UICollectionSectionSolutionBookmark *)&v39->super.isa initWithSolution:v49 globalFrame:v44 globalPinningFrame:v45 insetEnvironment:v48 supplementaryInsetEnvironment:v47 section:v50 preferredSizes:v41, v42, v43, v9, v8, v38, v11];
    }

    else
    {
      v51 = 0;
    }

    v2 = v37;
    [*(a1 + 32) setObject:v51 atIndexedSubscript:v37];

    *(*(*(a1 + 64) + 8) + 24) = 1;
    v7 = v103;
    v32 = v101;
  }

  v113.origin.x = v9;
  v113.origin.y = v8;
  v113.size.width = v10;
  v113.size.height = v11;
  v114 = CGRectIntersection(v113, *(a1 + 80));
  x = v114.origin.x;
  y = v114.origin.y;
  width = v114.size.width;
  height = v114.size.height;
  if (v7 || !CGRectIsEmpty(v114) && (v118.origin.x = x, v118.origin.y = y, v118.size.width = width, v118.size.height = height, !CGRectIsNull(v118)))
  {
    v115.origin.x = x;
    v115.origin.y = y;
    v115.size.width = width;
    v115.size.height = height;
    IsEmpty = CGRectIsEmpty(v115);
    v57 = MEMORY[0x1E695EFF8];
    if (IsEmpty)
    {
      v116.origin.x = v9;
      v116.origin.y = v8;
      v116.size.width = v10;
      v116.size.height = v11;
      v58 = CGRectGetWidth(v116);
      v117.origin.x = v9;
      v117.origin.y = v8;
      v117.size.width = v10;
      v117.size.height = v11;
      v59 = CGRectGetHeight(v117);
      v60 = 0.0;
      v61 = 0.0;
      if ((v32 & 1) == 0)
      {
LABEL_25:
        [v6 updatePinnedSupplementaryItemsWithVisibleBounds:{v60, v61, v58, v59}];
LABEL_41:
        v94 = [v6 pinnedSupplementaryIndexes];
        v105[0] = MEMORY[0x1E69E9820];
        v105[1] = 3221225472;
        v105[2] = __96___UICollectionCompositionalLayoutSolver_updatePinnedSectionSupplementaryItemsForVisibleBounds___block_invoke_2;
        v105[3] = &unk_1E70FA820;
        v95 = v6;
        v96 = *(a1 + 112);
        v109 = v2;
        v110 = v96;
        v97 = *(a1 + 48);
        v98 = *(a1 + 56);
        v106 = v95;
        v107 = v97;
        v108 = v98;
        [v94 enumerateIndexesUsingBlock:v105];

        goto LABEL_42;
      }
    }

    else
    {
      v99 = v10;
      v100 = v8;
      if (v5)
      {
        v62 = *(v5 + 24);
        v63 = *(v5 + 32);
        v64 = *(v5 + 40);
        v65 = *(v5 + 48);
      }

      else
      {
        v63 = 0.0;
        v64 = 0.0;
        v65 = 0.0;
        v62 = 0.0;
      }

      v66 = _UIRectSubtractingRectYieldingDirectionalInsets(v62, v63, v64, v65, x, y, width, height);
      v68 = v67;
      v70 = v69;
      v72 = v71;
      v74 = *v57;
      v73 = v57[1];
      if (v5)
      {
        v75 = *(v5 + 8);
      }

      else
      {
        v75 = 0;
      }

      [v75 contentFrameIncludingAuxiliaries];
      v60 = v68 + v74;
      v58 = v76 - (v72 + v68);
      v61 = v66 + v73;
      v59 = v77 - (v66 + v70);
      v10 = v99;
      v8 = v100;
      if ((v32 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v102 = v59;
    v104 = v58;
    if (v5)
    {
      v78 = *(v5 + 24);
      v79 = *(v5 + 32);
      v80 = *(v5 + 40);
      v81 = *(v5 + 48);
    }

    else
    {
      v79 = 0.0;
      v80 = 0.0;
      v81 = 0.0;
      v78 = 0.0;
    }

    v82 = _UIRectSubtractingRectYieldingDirectionalInsets(v78, v79, v80, v81, v9, v8, v10, v11);
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v90 = *v57;
    v89 = v57[1];
    if (v5)
    {
      v91 = *(v5 + 8);
    }

    else
    {
      v91 = 0;
    }

    [v91 contentFrameIncludingAuxiliaries];
    [v6 updatePinnedSupplementaryItemsWithVisibleBounds:v60 overrideContentRectForPinning:{v61, v104, v102, v84 + v90, v82 + v89, v92 - (v88 + v84), v93 - (v82 + v86)}];
    goto LABEL_41;
  }

LABEL_42:
}

void __96___UICollectionCompositionalLayoutSolver_updatePinnedSectionSupplementaryItemsForVisibleBounds___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) sectionSupplementaryFrameForIndex:a2];
  if (v3)
  {
    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x1E696AC88] indexPathForItem:v4 inSection:*(a1 + 56)];
  v6 = [(_UICollectionLayoutFramesQueryResult *)v3 supplementaryItem];
  v7 = [v6 elementKind];

  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:351 description:@"Could not determine supplementary elementKind."];
  }

  v8 = *(a1 + 40);
  v11[0] = v5;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(_UICollectionCompositionalLayoutSolver *)v8 invalidateCachedSupplementaryAttributesForElementKind:v7 atIndexPaths:v9];

  [*(a1 + 48) addInvalidatedSupplementaryForKind:v7 indexPath:v5];
}

void *__96___UICollectionCompositionalLayoutSolver_updatePinnedSectionSupplementaryItemsForVisibleBounds___block_invoke_3(uint64_t a1, double *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    v6 = a2[7];
    v7 = a2[8];
    v8 = a2[9];
    v9 = a2[10];
    v10 = *(a2 + 1);
  }

  else
  {
    v10 = 0;
    v9 = 0.0;
    v8 = 0.0;
    v7 = 0.0;
    v6 = 0.0;
  }

  return [(_UICollectionCompositionalLayoutSolver *)v5 _updateSectionIndexer:v10 frame:a3 solution:v6 section:v7, v8, v9];
}

void __96___UICollectionCompositionalLayoutSolver_updatePinnedSectionSupplementaryItemsForVisibleBounds___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 272);
  }

  else
  {
    v5 = 0;
  }

  v6 = [(_UICollectionLayoutAuxillaryItemSolver *)v5 supplementaryFrames];
  v21 = [v6 objectAtIndexedSubscript:a2];

  if (v21)
  {
    v7 = *(v21 + 2);
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AC88] indexPathWithIndex:v7];
  v9 = [(_UICollectionLayoutFramesQueryResult *)v21 supplementaryItem];
  v10 = [v9 elementKind];

  v11 = [(_UICollectionCompositionalLayoutSolver *)*(a1 + 32) _cachedSupplementaryAttributesForElementKind:v10 indexPath:v8];
  if (v11)
  {
    [(_UICollectionCompositionalLayoutSolver *)*(a1 + 32) _invalidateAttributes:v11];
  }

  [*(a1 + 40) addInvalidatedSupplementaryForKind:v10 indexPath:v8];
  if (v21)
  {
    v13 = *(v21 + 10);
    v12 = *(v21 + 11);
    v14 = *(v21 + 12);
    v15 = *(v21 + 13);
  }

  else
  {
    v12 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v13 = 0.0;
  }

  v16 = v13 + *(a1 + 48);
  v17 = v12 + *(a1 + 56);
  v23.origin.x = v13;
  v23.origin.y = v12;
  v23.size.width = v14;
  v23.size.height = v15;
  Width = CGRectGetWidth(v23);
  v24.origin.x = v13;
  v24.origin.y = v12;
  v24.size.width = v14;
  v24.size.height = v15;
  Height = CGRectGetHeight(v24);
  v20 = [(_UICollectionCompositionalLayoutSolver *)*(a1 + 32) _createAndCacheLayoutAttributesForSupplementaryItemAtIndexPath:v8 elementKind:v10 frame:v21 queryResult:v16, v17, Width, Height];
}

void __97___UICollectionCompositionalLayoutSolver__unpinnedFramesOfSupplementariesPinnedToEdge_ofSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) unpinnedSectionSupplementaryFrameForIndex:a2];
  v5 = [(_UICollectionLayoutFramesQueryResult *)v4 auxillaryItem];
  v6 = [v5 boundarySupplementaryItem];

  if (v6)
  {
    v7 = [v6 alignment];
    v8 = *(a1 + 64);
    if (v8 == 1)
    {
      if ((v7 - 2) >= 3)
      {
        v9 = 8 * ((v7 - 6) < 3);
      }

      else
      {
        v9 = 2;
      }
    }

    else if (v8 == 2 && (v7 - 1) < 8)
    {
      v9 = qword_18A678B90[v7 - 1];
    }

    else
    {
      v9 = 0;
    }

    if (v9 == *(a1 + 72))
    {
      v13 = *(*(*(a1 + 56) + 8) + 40);
      if (v13)
      {
        [v13 addObject:v4];
      }

      else
      {
        v14 = [MEMORY[0x1E695DF70] arrayWithObject:v4];
        v15 = *(*(a1 + 56) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;
      }
    }
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v17 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      v20 = 138413058;
      v21 = v18;
      v22 = 2048;
      v23 = a2;
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = v4;
      _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "UIKit internal bug: Compositional solver found a section with supplementaries pinned at indexes %@, but the supplementary at index %zd is not pinned.\nSection bookmark: %@. Pinned supplementary frame: %@", &v20, 0x2Au);
    }
  }

  else
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_1) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v20 = 138413058;
      v21 = v11;
      v22 = 2048;
      v23 = a2;
      v24 = 2112;
      v25 = v12;
      v26 = 2112;
      v27 = v4;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "UIKit internal bug: Compositional solver found a section with supplementaries pinned at indexes %@, but the supplementary at index %zd is not pinned.\nSection bookmark: %@. Pinned supplementary frame: %@", &v20, 0x2Au);
    }
  }
}

void __102___UICollectionCompositionalLayoutSolver_updateVisibleBoundsForDynamicAnimator_previousVisibleBounds___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = [_UICollectionViewItemKey collectionItemKeyForLayoutAttributes:a2];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v26];
  v7 = [(_UICollectionCompositionalLayoutDynamicAnimator *)*(a1 + 32) behaviorForIdentifier:v26];

  v8 = v26;
  if (!v7)
  {
    v9 = [_UICollectionLayoutVisibleItem alloc];
    if (a4)
    {
      v10 = *(a4 + 40);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [(_UICollectionLayoutVisibleItem *)v9 initWithLayoutAttributes:a2 layoutItem:v11];

    v13 = [_UICollectionCompositionalLayoutDynamicBehavior alloc];
    if (v13)
    {
      v27.receiver = v13;
      v27.super_class = _UICollectionCompositionalLayoutDynamicBehavior;
      v14 = objc_msgSendSuper2(&v27, sel_init);
      v15 = v14;
      if (v14)
      {
        objc_storeStrong(v14 + 6, v12);
        [v15 setAction:&__block_literal_global_521_0];
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = *(a1 + 32);
    if (!v16)
    {
      goto LABEL_16;
    }

    if (v15)
    {
      v17 = v15[6];
      if (v17)
      {
        v18 = v17;
        v19 = *(v17 + 2);
LABEL_11:
        v20 = v19;
        v21 = [_UICollectionViewItemKey collectionItemKeyForLayoutAttributes:v20];

        if (!v21)
        {
          v25 = [MEMORY[0x1E696AAA8] currentHandler];
          [v25 handleFailureInMethod:sel_addItemBehavior_ object:v16 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3585 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
        }

        v22 = [v16[42] objectForKeyedSubscript:v21];
        if (v22)
        {
          [v16 removeBehavior:v22];
          [v16[42] removeObjectForKey:v21];
        }

        [v16[42] setObject:v15 forKeyedSubscript:v21];
        [v16 addBehavior:v15];

LABEL_16:
        v8 = v26;
        goto LABEL_17;
      }
    }

    else
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:sel_addItemBehavior_ object:v16 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3581 description:{@"Invalid parameter not satisfying: %@", @"visibleItemBehavior"}];
    }

    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:sel_addItemBehavior_ object:v16 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3583 description:{@"Invalid parameter not satisfying: %@", @"visibleItem"}];

    v18 = 0;
    v19 = 0;
    goto LABEL_11;
  }

LABEL_17:
}

void __102___UICollectionCompositionalLayoutSolver_updateVisibleBoundsForDynamicAnimator_previousVisibleBounds___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9 = [(_UICollectionCompositionalLayoutDynamicAnimator *)*(a1 + 32) behaviorForIdentifier:a2];
  if (v9)
  {
    v4 = v9[6];
    if (v4)
    {
      v4 = v4[2];
    }

    v5 = v4;
    [(_UICollectionCompositionalLayoutSolver *)*(a1 + 40) _invalidateAttributes:v5];
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    if (!a2)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel_removeItemBehaviorForIdentifier_ object:v6 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3599 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
    }

    v7 = [v6[42] objectForKeyedSubscript:a2];
    if (v7)
    {
      [v6 removeBehavior:v7];
      [v6[42] removeObjectForKey:a2];
    }
  }
}

void __76___UICollectionCompositionalLayoutSolver_enumeratePinnedSupplementaryItems___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 184) objectAtIndexedSubscript:a2];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 pinnedSupplementaryIndexes];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76___UICollectionCompositionalLayoutSolver_enumeratePinnedSupplementaryItems___block_invoke_2;
  v10[3] = &unk_1E70FACA8;
  v11 = v7;
  v13 = a2;
  v12 = *(a1 + 32);
  v9 = v7;
  [v8 enumerateIndexesUsingBlock:v10];
}

void __76___UICollectionCompositionalLayoutSolver_enumeratePinnedSupplementaryItems___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) sectionSupplementaryFrameForIndex:a2];
  v10 = v3;
  if (v3)
  {
    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x1E696AC88] indexPathForItem:v4 inSection:*(a1 + 56)];
  v6 = *(a1 + 40);
  v7 = [(_UICollectionLayoutFramesQueryResult *)v10 auxillaryItem];
  v8 = [v7 elementKind];
  v9 = [(_UICollectionCompositionalLayoutSolver *)v6 layoutAttributesForSupplementaryViewOfKind:v8 withIndexPath:v5];

  (*(*(a1 + 48) + 16))();
}

void __76___UICollectionCompositionalLayoutSolver_enumeratePinnedSupplementaryItems___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 272);
  }

  else
  {
    v5 = 0;
  }

  v6 = [(_UICollectionLayoutAuxillaryItemSolver *)v5 supplementaryFrames];
  v12 = [v6 objectAtIndexedSubscript:a2];

  if (v12)
  {
    v7 = v12[2];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AC88] indexPathWithIndex:v7];
  v9 = [(_UICollectionLayoutFramesQueryResult *)v12 supplementaryItem];
  v10 = [v9 elementKind];

  v11 = [(_UICollectionCompositionalLayoutSolver *)*(a1 + 32) layoutAttributesForSupplementaryViewOfKind:v10 withIndexPath:v8];
  (*(*(a1 + 40) + 16))();
}

void __89___UICollectionCompositionalLayoutSolver_mutatedVisibleItemsForElementsForVisibleBounds___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a3 || ([*(*(*(a1 + 32) + 8) + 40) containsObject:a2] & 1) != 0)
  {
    return;
  }

  v8 = [_UICollectionLayoutVisibleItem alloc];
  if (a4)
  {
    v9 = *(a4 + 40);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v21 = [(_UICollectionLayoutVisibleItem *)v8 initWithLayoutAttributes:a2 layoutItem:v10];

  v11 = *(*(*(a1 + 40) + 8) + 40);
  if (!v11)
  {
    v14 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    goto LABEL_10;
  }

  v12 = [v11 objectForKey:a3];
  if (!v12)
  {
LABEL_10:
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v21, 0}];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v13 forKey:a3];
    goto LABEL_11;
  }

  v13 = v12;
  [v12 addObject:v21];
LABEL_11:
  v17 = *(*(*(a1 + 32) + 8) + 40);
  if (v17)
  {
    [v17 addObject:a2];
  }

  else
  {
    v18 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{a2, 0}];
    v19 = *(*(a1 + 32) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }
}

void __89___UICollectionCompositionalLayoutSolver_mutatedVisibleItemsForElementsForVisibleBounds___block_invoke_2()
{
  v0 = *(__UILogGetCategoryCachedImpl("UICompositionalLayout", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke_2___s_category) + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_ERROR, "note: the section invalidation handler cannot currently mutate visible items for layouts containing estimated items. Please file an enhancement request on UICollectionView.", v1, 2u);
  }
}

void __95___UICollectionCompositionalLayoutSolver_resolveSolutionForUpdate_container_ignoreEmptyUpdate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) initialSectionIndexForFinalSectionIndex:?];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    if (v6 < *(a1 + 56))
    {
      v8 = *(a1 + 40);
      if (v8)
      {
        v9 = *(v8 + 184);
      }

      else
      {
        v9 = 0;
      }

      v10 = [v9 objectAtIndexedSubscript:v7];
      v15 = v10;
      if (v10)
      {
        v11 = *(v10 + 16);
        v12 = v11;
        if (v11 && ([v11 isEqual:a2] & 1) == 0)
        {
          v13 = *(a1 + 48);
          v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
          [v13 removeObjectForKey:v14];
        }
      }

      else
      {
        v12 = 0;
      }
    }
  }
}

uint64_t __130___UICollectionCompositionalLayoutSolver_updatePreferredSizeIfNeededForPreferredLayoutAttributes_withOriginalAttributes_debugger___block_invoke(uint64_t a1, void *a2, id *a3, void *a4, void *a5, void *a6)
{
  v9 = a3;
  [a3 size];
  v13 = v12;
  v15 = v14;
  [a4 size];
  v17 = v16;
  v19 = v18;
  v88 = a4;
  if (*(a1 + 48) == 1)
  {
    v20 = a2;
  }

  else
  {
    v21 = [(_UILabelConfiguration *)a4 _content];
    v20 = [(_UICollectionPreferredSizes *)a2 objectForKeyedSubscript:v21];
  }

  v22 = [*(a1 + 32) length];
  v23 = *(a1 + 32);
  if (v22 == 1)
  {
    v24 = [v23 indexAtPosition:0];
  }

  else
  {
    v24 = [v23 item];
  }

  v25 = v24;
  v26 = [a5 layoutSize];
  v27 = [(_UICollectionPreferredSizes *)v20 objectAtIndexedSubscript:v25];
  v28 = [a5 size];
  v29 = [v28 _axesUniformAcrossSiblings];

  if (!v27 && v29)
  {
    v30 = *(a1 + 40);
    if (v30)
    {
      v85 = v25;
      v31 = MEMORY[0x1E696AEC0];
      v32 = [a5 _externalDescription];
      v33 = [v31 stringWithFormat:@"received preferred size for item with uniformAcrossSiblings dimension: %@", v32];
      *v99 = v17;
      *&v99[1] = v19;
      v34 = [MEMORY[0x1E696B098] valueWithBytes:v99 objCType:"{CGSize=dd}"];
      *v98 = v13;
      *&v98[1] = v15;
      v35 = [MEMORY[0x1E696B098] valueWithBytes:v98 objCType:"{CGSize=dd}"];
      v36 = @"preferredSize";
      v37 = v30;
      v38 = v88;
      v39 = v33;
      v40 = 0;
      v41 = v34;
LABEL_46:
      [v37 recordPreferredAttributesChangeForElementWithAttributes:v38 reason:v39 changedAttribute:v36 fromValue:v40 toValue:v41 layoutGeneratedValue:v35];
      goto LABEL_47;
    }

LABEL_48:
    v76 = [_UICollectionPreferredSize alloc];
    v77 = [a5 size];
    v60 = [(_UICollectionPreferredSize *)v76 initWithOriginalSize:v77 fittingSize:a6 layoutSize:v13 additionalData:v15, v17, v19];

    [(_UICollectionPreferredSizes *)v20 setObject:v60 atIndexedSubscript:v25];
    v63 = 1;
    goto LABEL_49;
  }

  if ([v26 isEstimated])
  {
    v42 = [(_UICollectionPreferredSize *)v13 preferredSizeForOriginalSize:v15 fittingSize:v17 layoutSize:_UICollectionPreferredSize, v26];
    v44 = v43;
    ShouldRespectPreferredSizeOnEstimatedAxisOnly = _UICollectionViewCompositionalLayoutShouldRespectPreferredSizeOnEstimatedAxisOnly();
    if (ShouldRespectPreferredSizeOnEstimatedAxisOnly)
    {
      v46 = v42;
    }

    else
    {
      v46 = v17;
    }

    if (ShouldRespectPreferredSizeOnEstimatedAxisOnly)
    {
      v47 = v44;
    }

    else
    {
      v47 = v19;
    }

    v48 = _UISizeEqualToSizeWithPrecision(v13, v15, v46, v47, 0.0001);
    if (v27 && !v48 && v29)
    {
      v49 = [(_UICollectionPreferredSize *)v27 fittingSize];
      v51 = _UISizeEqualToSizeWithPrecision(v49, v50, v17, v19, 0.0001);
      v52 = *(a1 + 40);
      if (v52)
      {
        v86 = v25;
        v53 = MEMORY[0x1E696AEC0];
        v82 = v51;
        v81 = [a5 _externalDescription];
        v80 = [v53 stringWithFormat:@"preferred size changed for item with uniformAcrossSiblings dimension: %@", v81];
        v54 = MEMORY[0x1E696B098];
        v97[0] = [(_UICollectionPreferredSize *)v27 fittingSize];
        v97[1] = v55;
        [v54 valueWithBytes:v97 objCType:?];
        v56 = v79 = v9;
        *v96 = v17;
        *&v96[1] = v19;
        v57 = [MEMORY[0x1E696B098] valueWithBytes:v96 objCType:"{CGSize=dd}"];
        *v95 = v13;
        *&v95[1] = v15;
        v58 = [MEMORY[0x1E696B098] valueWithBytes:v95 objCType:"{CGSize=dd}"];
        [v52 recordPreferredAttributesChangeForElementWithAttributes:v88 reason:v80 changedAttribute:@"preferredSize" fromValue:v56 toValue:v57 layoutGeneratedValue:v58];

        v25 = v86;
        v9 = v79;

        v51 = v82;
      }

      if (!v51)
      {
        goto LABEL_48;
      }

      goto LABEL_27;
    }

    if (!v48)
    {
      if (!*(a1 + 40))
      {
        goto LABEL_48;
      }

      v83 = *(a1 + 40);
      v85 = v25;
      v64 = MEMORY[0x1E696AEC0];
      v32 = [a5 _externalDescription];
      v33 = [v64 stringWithFormat:@"preferred size changed for item: %@", v32];
      v65 = MEMORY[0x1E696B098];
      v94[0] = [(_UICollectionPreferredSize *)v27 fittingSize];
      v94[1] = v66;
      v34 = [v65 valueWithBytes:v94 objCType:"{CGSize=dd}"];
      *v93 = v17;
      *&v93[1] = v19;
      v35 = [MEMORY[0x1E696B098] valueWithBytes:v93 objCType:"{CGSize=dd}"];
      *v92 = v13;
      *&v92[1] = v15;
      v67 = [MEMORY[0x1E696B098] valueWithBytes:v92 objCType:"{CGSize=dd}"];
      [v83 recordPreferredAttributesChangeForElementWithAttributes:v88 reason:v33 changedAttribute:@"preferredSize" fromValue:v34 toValue:v35 layoutGeneratedValue:v67];

LABEL_47:
      v25 = v85;
      goto LABEL_48;
    }
  }

  if (!v27)
  {
    v59 = 0;
    goto LABEL_29;
  }

LABEL_27:
  if (*(v27 + 48))
  {
    goto LABEL_38;
  }

  v59 = *(v27 + 56);
LABEL_29:
  v60 = v59;
  v61 = a6;
  v62 = v61;
  if (v60 == v61)
  {

    v63 = 0;
LABEL_49:

    goto LABEL_50;
  }

  if (!v61 || !v60)
  {

    goto LABEL_38;
  }

  v87 = [v60 isEqual:v61];

  if ((v87 & 1) == 0)
  {
LABEL_38:
    v68 = *(a1 + 40);
    if (!v68)
    {
      goto LABEL_48;
    }

    v84 = a6;
    if (v27)
    {
      v69 = *(v27 + 48);
    }

    else
    {
      v69 = 0;
    }

    v85 = v25;
    v70 = MEMORY[0x1E696AEC0];
    v71 = [a5 _externalDescription];
    v32 = v71;
    if ((v69 & 1) == 0)
    {
      v33 = [v70 stringWithFormat:@"Additional preferred sizing data changed for item: %@", v71];
      if (v27)
      {
        v75 = *(v27 + 56);
      }

      else
      {
        v75 = 0;
      }

      a6 = v84;
      v34 = v75;
      v35 = [(UICollectionViewLayoutAttributes *)v9 _preferredSizingData];
      v36 = @"additionalData";
      v37 = v68;
      v38 = v88;
      v39 = v33;
      v40 = v34;
      v41 = v84;
      goto LABEL_46;
    }

    v33 = [v70 stringWithFormat:@"dirty preferred size for item: %@", v71];
    v72 = MEMORY[0x1E696B098];
    v91[0] = [(_UICollectionPreferredSize *)v27 fittingSize];
    v91[1] = v73;
    v34 = [v72 valueWithBytes:v91 objCType:"{CGSize=dd}"];
    *v90 = v17;
    *&v90[1] = v19;
    v35 = [MEMORY[0x1E696B098] valueWithBytes:v90 objCType:"{CGSize=dd}"];
    *v89 = v13;
    *&v89[1] = v15;
    v74 = [MEMORY[0x1E696B098] valueWithBytes:v89 objCType:"{CGSize=dd}"];
    [v68 recordPreferredAttributesChangeForElementWithAttributes:v88 reason:v33 changedAttribute:@"preferredSize" fromValue:v34 toValue:v35 layoutGeneratedValue:v74];

    a6 = v84;
    goto LABEL_47;
  }

  v63 = 0;
LABEL_50:

  return v63;
}

void __129___UICollectionCompositionalLayoutSolver__layoutAttributesOfFirstElementEligibleForPreferredSizingContentOffsetAdjustmentInRect___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  if (a4 && a4[4] == 1)
  {
    [a2 frame];
    v9 = 1;
    if (CGRectContainsPoint(v27, *(a1 + 64)))
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a5 = 1;
      return;
    }
  }

  else
  {
    v9 = 0;
  }

  [a2 frame];
  v12 = _UIPointValueForAxis(*(a1 + 96), v10, v11) - *(a1 + 104);
  v13 = [(_UICollectionLayoutFramesQueryResult *)a4 auxillaryItem];
  if (v9)
  {
    v14 = *(*(a1 + 40) + 8);
    v16 = *(v14 + 24);
    v15 = (v14 + 24);
    if (v12 < v16)
    {
      v25 = v13;
      v17 = 32;
LABEL_9:
      *v15 = v12;
      v18 = *(*(a1 + v17) + 8);
      v19 = a2;
      v20 = *(v18 + 40);
      *(v18 + 40) = v19;
LABEL_12:

      v13 = v25;
      goto LABEL_13;
    }
  }

  if (v13)
  {
    v25 = v13;
    v20 = [v13 boundarySupplementaryItem];
    if ([v20 pinToVisibleBounds])
    {
      goto LABEL_12;
    }

    v21 = [v25 decorationItem];
    v22 = [v21 isBackgroundDecoration];

    v13 = v25;
    if ((v22 & 1) == 0)
    {
      v23 = *(*(a1 + 48) + 8);
      v24 = *(v23 + 24);
      v15 = (v23 + 24);
      if (v12 < v24)
      {
        v17 = 56;
        goto LABEL_9;
      }
    }
  }

LABEL_13:
}

void __108___UICollectionCompositionalLayoutSolver_resolveForInvalidatedPreferredAttributes_scrollOffset_visibleRect___block_invoke(void *a1, _DWORD *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = [a2 indexPath];
  if ([v4 length] == 1)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = [v4 section];
  }

  if ([v4 length] == 1)
  {
    v6 = [v4 indexAtPosition:0];
  }

  else
  {
    v6 = [v4 item];
  }

  v7 = v6;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = *(*(a1[6] + 8) + 40);
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    v8 = [v9 objectForKeyedSubscript:v10];

    if (!v8)
    {
      v8 = objc_alloc_init(_UICollectionLayoutSolveParameters);
      v11 = *(*(a1[6] + 8) + 40);
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
      [v11 setObject:v8 forKeyedSubscript:v12];
    }
  }

  if (a2)
  {
    v13 = a2[72];
    if (v13)
    {
      if (v8)
      {
        [(NSMutableIndexSet *)v8->_invalidatedIndexes addIndex:v7];
      }
    }

    else if ((v13 & 2) == 0)
    {
      v14 = [(_UILabelConfiguration *)a2 _content];
      if (v5 == 0x7FFFFFFFFFFFFFFFLL && ((v15 = a1[4]) == 0 ? (v16 = 0) : (v16 = *(v15 + 272)), -[_UICollectionLayoutAuxillaryItemSolver elementKinds](v16), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 containsObject:v14], v17, v18))
      {
        v19 = a1[5];
        v21[0] = v4;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
        [v19 invalidateSupplementaryElementsOfKind:v14 atIndexPaths:v20];
      }

      else
      {
        [(_UICollectionLayoutSolveParameters *)v8 addAuxillaryIndex:v7 elementKind:v14];
      }
    }
  }
}

void __108___UICollectionCompositionalLayoutSolver_resolveForInvalidatedPreferredAttributes_scrollOffset_visibleRect___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 integerValue];
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[23];
  }

  v7 = v6;
  v8 = [v7 objectAtIndexedSubscript:v5];

  if (v8)
  {
    v9 = *(v8 + 8);
    v10 = *(v8 + 104);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = v10;
  [v9 contentFrameIncludingAuxiliaries];
  v57 = v12;
  v14 = v13;
  if (v8)
  {
    v16 = *(v8 + 24);
    v15 = *(v8 + 32);
    v17 = *(v8 + 40);
    v18 = *(v8 + 48);
  }

  else
  {
    v15 = 0.0;
    v17 = 0;
    v18 = 0;
    v16 = 0.0;
  }

  v19 = v16;
  v20 = v15;
  v69 = CGRectIntersection(*(a1 + 48), *(&v17 - 2));
  x = v69.origin.x;
  y = v69.origin.y;
  width = v69.size.width;
  height = v69.size.height;
  v25 = CGRectGetWidth(v69);
  v70.origin.x = x;
  v70.origin.y = y;
  v70.size.width = width;
  v70.size.height = height;
  v26 = CGRectGetHeight(v70);
  v27 = *(a1 + 32);
  if (v27)
  {
    v28 = v27[14];
    v29 = v28;
    if (v28)
    {
      v27 = v28[8];
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  v58 = v27;

  if (a3)
  {
    v30 = x - v16;
    v32 = *(a1 + 80);
    v31 = *(a1 + 88);
    a3 = [a3 copy];
    *(a3 + 32) = v32;
    *(a3 + 40) = v31;
    *(a3 + 48) = v30;
    *(a3 + 56) = y - v15;
    *(a3 + 64) = v25;
    *(a3 + 72) = v26;
  }

  v33 = [v9 resolveWithParameters:a3 preferredSizes:v11];
  v34 = [v9 errorDescription];

  if (v34 && v58)
  {
    v35 = [v9 container];
    if (v8)
    {
      v36 = *(v8 + 88);
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;
    v38 = [v9 errorDescription];
    (v58[2])(v58, v5, v35, v37, v38, 1);
  }

  [v9 contentFrameIncludingAuxiliaries];
  v40 = v39;
  v42 = v41;
  v43 = *(a1 + 32);
  if (v43)
  {
    v44 = *(v43 + 88);
  }

  else
  {
    v44 = 0;
  }

  if ([v44 containsIndex:v5])
  {
    v45 = [v9 layoutAxis];
    if ((v45 - 1) <= 1)
    {
      v46 = v45;
      v47 = _UISizeValueForAxis(v45, v57, v14);
      if (vabdd_f64(v47, _UISizeValueForAxis(v46, v40, v42)) > 0.1)
      {
        v48 = [(UICollectionViewLayoutInvalidationContext *)*(a1 + 40) _orthogonalSectionsWithContentSizeChanges];
        [v48 addIndex:v5];
      }
    }
  }

  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v50 = [(_UILabelConfiguration *)v33 _content];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __108___UICollectionCompositionalLayoutSolver_resolveForInvalidatedPreferredAttributes_scrollOffset_visibleRect___block_invoke_3;
  v66[3] = &unk_1E70FAA50;
  v67 = v49;
  v68 = v5;
  v51 = v49;
  [v50 enumerateIndexesUsingBlock:v66];

  [*(a1 + 40) invalidateItemsAtIndexPaths:v51];
  v52 = [(_UICollectionLayoutSolveResult *)v33 invalidatedAuxillaryKinds];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __108___UICollectionCompositionalLayoutSolver_resolveForInvalidatedPreferredAttributes_scrollOffset_visibleRect___block_invoke_4;
  v59[3] = &unk_1E70FAAA0;
  v60 = v33;
  v61 = v9;
  v53 = *(a1 + 96);
  v64 = v5;
  v65 = v53;
  v54 = *(a1 + 40);
  v62 = *(a1 + 32);
  v63 = v54;
  v55 = v9;
  v56 = v33;
  [v52 enumerateObjectsUsingBlock:v59];
}

void __108___UICollectionCompositionalLayoutSolver_resolveForInvalidatedPreferredAttributes_scrollOffset_visibleRect___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:a2 inSection:*(a1 + 40)];
  [*(a1 + 32) addObject:v3];
}

void __108___UICollectionCompositionalLayoutSolver_resolveForInvalidatedPreferredAttributes_scrollOffset_visibleRect___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = [(_UICollectionLayoutSolveResult *)*(a1 + 32) indexesForInvalidatedAuxillariesOfKind:a2];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __108___UICollectionCompositionalLayoutSolver_resolveForInvalidatedPreferredAttributes_scrollOffset_visibleRect___block_invoke_5;
  v7[3] = &unk_1E70FAA78;
  v8 = *(a1 + 40);
  v9 = a2;
  v5 = *(a1 + 72);
  v12 = *(a1 + 64);
  v13 = v5;
  v6 = *(a1 + 56);
  v10 = *(a1 + 48);
  v11 = v6;
  [v4 enumerateIndexesUsingBlock:v7];
}

void __108___UICollectionCompositionalLayoutSolver_resolveForInvalidatedPreferredAttributes_scrollOffset_visibleRect___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) supplementaryFrameWithKind:*(a1 + 40) index:a2];
  v5 = [MEMORY[0x1E696AC88] indexPathForItem:a2 inSection:*(a1 + 64)];
  if (v4)
  {
    v6 = v4[4];
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:*(a1 + 72) object:*(a1 + 48) file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:1711 description:{@"Invalid parameter not satisfying: %@", @"result"}];
  }

  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:*(a1 + 72) object:*(a1 + 48) file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:1712 description:{@"Invalid parameter not satisfying: %@", @"result.isAuxillary"}];

  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = v4[4];
LABEL_3:
  if (v6 == 3)
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 40);
    v14 = v5;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    [v10 invalidateDecorationElementsOfKind:v11 atIndexPaths:v9];
    goto LABEL_7;
  }

  if (v6 == 2)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 40);
    v15[0] = v5;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [v7 invalidateSupplementaryElementsOfKind:v8 atIndexPaths:v9];
LABEL_7:
  }

LABEL_8:
}

void __98___UICollectionCompositionalLayoutSolver_itemsWithoutPreferredSizesInGroupsWithItemsAtIndexPaths___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:a2 inSection:*(a1 + 40)];
  [*(a1 + 32) addObject:v3];
}

void __75___UICollectionCompositionalLayoutSolver__anchorForAuxiliaryElementOfKind___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 supplementaryFrameWithKind:*(a1 + 32) index:0];
  if (v7)
  {
    v8 = v7[6];
    if (v8 == 2)
    {
      v9 = *(*(a1 + 40) + 8);
    }

    else
    {
      v9 = *(*(a1 + 40) + 8);
      if (v8 != 4)
      {
        *(v9 + 24) = 0;
        goto LABEL_10;
      }

      v8 = 3;
    }

    *(v9 + 24) = v8;
LABEL_10:
    *a4 = 1;
  }
}

void __101___UICollectionCompositionalLayoutSolver_extendedAttributesQueryIncludingOrthogonalScrollingRegions___block_invoke(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 56) == 1)
  {
    v4 = [a2 indexPath];
    if ([v4 length] >= 2)
    {
      v5 = [v4 section];
      if (*(a1 + 48) != v5)
      {
        v6 = v5;
        v7 = *(a1 + 32);
        v8 = v7 ? *(v7 + 88) : 0;
        v9 = [v8 containsIndex:v6];
        if (a2)
        {
          if (v9)
          {
            v10 = a2[72];
            if ((v10 & 3) != 0)
            {
              if ((v10 & 2) == 0)
              {
                if (v10)
                {
                  return;
                }

                goto LABEL_15;
              }

              v15 = *(a1 + 32);
              v12 = [a2 indexPath];
              v13 = [(_UILabelConfiguration *)a2 _content];
              v14 = [(_UICollectionCompositionalLayoutSolver *)v15 orthogonalScrollingSectionDecorationShouldScrollWithContentForIndexPath:v12 elementKind:v13];
            }

            else
            {
              v11 = *(a1 + 32);
              v12 = [a2 indexPath];
              v13 = [(_UILabelConfiguration *)a2 _content];
              v14 = [(_UICollectionCompositionalLayoutSolver *)v11 orthogonalScrollingSectionSupplementaryShouldScrollWithContentForIndexPath:v12 elementKind:v13];
            }

            v16 = v14;

            if (v16)
            {
              return;
            }
          }
        }
      }
    }
  }

LABEL_15:
  v17 = *(a1 + 40);

  [v17 addObject:a2];
}

void __76___UICollectionCompositionalLayoutSolver__attributesQueryInfosForQueryRect___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  if (v4)
  {
    v5 = v4;
    if (![v4[2] scrollsOrthogonally])
    {
      return;
    }

    v6 = v5[1];
  }

  else
  {
    v18 = [0 scrollsOrthogonally];
    v6 = 0;
    if ((v18 & 1) == 0)
    {
      return;
    }
  }

  [v6 orthogonalOffset];
  v8 = v7;
  v10 = v9;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v20.size.width = *(a1 + 64);
  v20.size.height = *(a1 + 72);
  v20.origin.x = v11;
  v20.origin.y = v12;
  Width = CGRectGetWidth(v20);
  Height = CGRectGetHeight(*(a1 + 48));
  v15 = [_UICollectionLayoutExtendedAttributesQueryInfo alloc];
  if (v15)
  {
    v19.receiver = v15;
    v19.super_class = _UICollectionLayoutExtendedAttributesQueryInfo;
    v16 = objc_msgSendSuper2(&v19, sel_init);
    v17 = v16;
    if (v16)
    {
      *(v16 + 2) = v8 + v11;
      *(v16 + 3) = v10 + v12;
      *(v16 + 4) = Width;
      *(v16 + 5) = Height;
      *(v16 + 1) = a2;
    }
  }

  else
  {
    v17 = 0;
  }

  [*(a1 + 32) addObject:v17];
}

void __72___UICollectionCompositionalLayoutSolver__solveRetainingPreferredSizes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 184);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 objectAtIndexedSubscript:a3];
  v9 = v8;
  if (*(a1 + 48) == 1 && v8 != 0)
  {
    v11 = *(v8 + 104);
    if (v11)
    {
      v19 = v8;
      v12 = [*(v11 + 16) count];
      v9 = v19;
      if (v12 || (v13 = [*(v11 + 24) count], v9 = v19, v13))
      {
        v14 = v9[2];
        if ([v14 isEqual:a2])
        {
          v15 = v19[13];
          v16 = [(_UICollectionPreferredSizes *)v15 copyByDirtyingPreferredSizes];
          v17 = *(a1 + 40);
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
          [v17 setObject:v16 forKeyedSubscript:v18];
        }

        v9 = v19;
      }
    }
  }
}

BOOL __110___UICollectionCompositionalLayoutSolver__validatedRoundedFrame_forElementOfCategory_atIndexPath_elementKind___block_invoke(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (CGRectIsInfinite(*&a1))
  {
    return 0;
  }

  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  IsNull = CGRectIsNull(v12);
  v10 = (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  v11 = (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v10;
  return !IsNull && v11;
}

uint64_t __110___UICollectionCompositionalLayoutSolver__validatedRoundedFrame_forElementOfCategory_atIndexPath_elementKind___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = _UIStringFromCollectionElementCategory(*(a1 + 56));
  v5 = [*(a1 + 32) _ui_shortDescription];
  [a2 appendFormat:@" Element category: %@; indexPath: %@;", v4, v5];

  if (*(a1 + 40))
  {
    [a2 appendFormat:@"; elementKind: %@", *(a1 + 40)];
  }

  if ([*(a1 + 32) length] == 2)
  {
    v6 = -[_UICollectionCompositionalLayoutSolver _existingSectionDefinitionForSectionIndex:](*(a1 + 48), [*(a1 + 32) section]);
    v7 = v6;
    if (v6)
    {
      v8 = [v6 group];
      v9 = [v8 _externalDescription];
      [a2 appendFormat:@"\nSection: %@;\nGroup: %@", v7, v9];
    }
  }

  return [a2 appendFormat:@"\nInspect the layout definition responsible for creating this item and ensure that it does not result in an infinite or null frame, or a frame with members that aren't finite (inf/NaN)."];
}

void __85___UICollectionCompositionalLayoutSolver__layoutAttributesForElementsInRect_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  v142 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = [(_UICollectionSectionSolutionBookmark *)v3 contentInsetsOffset];
  v6 = v5;
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = [(_UICollectionSectionSolutionBookmark *)v3 sectionAuxiliaryContentInsetsOffset];
  v124 = v10;
  v125 = v9;
  if (v3)
  {
    v11 = v3[1];
    v131 = *(v3 + 7);
    v133 = *(v3 + 8);
    v12 = *(v3 + 9);
    v13 = *(v3 + 10);
  }

  else
  {
    v11 = 0;
    v133 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v131 = 0.0;
  }

  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v16 = [v11 layoutSection];
  v17 = [v16 scrollsOrthogonally];

  v128 = v6;
  v129 = v4;
  v126 = v8;
  v127 = v7;
  v122 = v15;
  v123 = v14;
  if (v17)
  {
    v18 = [v11 layoutAxis];
    [v11 contentFrameIncludingAuxiliaries];
    v20 = v19;
    v22 = v21;
    v23 = [v11 layoutSection];
    [v23 contentInsets];
    v28 = _UITotalEdgeDimensionsForLayoutAxis(v18, v24, v25, v26, v27);

    v29 = _UISizeClampToMinimumSizeForAxis(v18, v12, v13, v20, v22);
    v31 = v30;
    v32 = v29 + _UISetSizeValueForAxis(v18, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), v28);
    v130 = v31 + v33;
  }

  else
  {
    v130 = v13;
    v32 = v12;
  }

  v34 = [(_UICollectionSectionSolutionBookmark *)v3 contentInsetsOffset];
  v35 = *(a1 + 80);
  v36 = *(a1 + 88);
  v37 = *(a1 + 96);
  v38 = *(a1 + 104);
  v39 = v35 - v34;
  v41 = v36 - v40;
  v143.origin.x = v35;
  v143.origin.y = v36;
  v143.size.width = v37;
  v143.size.height = v38;
  Width = CGRectGetWidth(v143);
  v144.origin.x = v35;
  v144.origin.y = v36;
  v144.size.width = v37;
  v144.size.height = v38;
  v145.size.height = CGRectGetHeight(v144);
  v145.origin.x = v39;
  v145.origin.y = v41;
  v145.size.width = Width;
  v155.size.height = v130;
  v155.origin.x = v131;
  v155.origin.y = v133;
  v155.size.width = v32;
  v146 = CGRectIntersection(v145, v155);
  x = v146.origin.x;
  y = v146.origin.y;
  v45 = v146.size.width;
  height = v146.size.height;
  v132 = v3;
  if (!CGRectIsEmpty(v146))
  {
    v147.origin.x = x;
    v147.origin.y = y;
    v147.size.width = v45;
    v147.size.height = height;
    v47 = CGRectGetWidth(v147);
    v148.origin.x = x;
    v148.origin.y = y;
    v148.size.width = v45;
    v148.size.height = height;
    v48 = CGRectGetHeight(v148);
    if (v3)
    {
      v49 = *(v3 + 3);
      v50 = *(v3 + 4);
    }

    else
    {
      v50 = 0.0;
      v49 = 0.0;
    }

    [v11 queryFramesIntersectingRect:x - v131 frameOffset:{y - v133, v47, v48, v49, v50}];
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v51 = v140 = 0u;
    v52 = [v51 countByEnumeratingWithState:&v137 objects:v141 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = v127 + v129;
      v55 = v128 + v126;
      v56 = *v138;
      v134 = v51;
      do
      {
        v57 = 0;
        do
        {
          if (*v138 != v56)
          {
            objc_enumerationMutation(v51);
          }

          v58 = *(*(&v137 + 1) + 8 * v57);
          if (v58)
          {
            v59 = *(v58 + 32);
            if (v59 == 1)
            {
              v60 = *(v58 + 80);
              v61 = *(v58 + 88);
              v62 = *(v58 + 96);
              v63 = *(v58 + 104);
              v149.origin.x = v60;
              v149.origin.y = v61;
              v149.size.width = v62;
              v149.size.height = v63;
              v64 = CGRectGetWidth(v149);
              v150.origin.x = v60;
              v150.origin.y = v61;
              v150.size.width = v62;
              v150.size.height = v63;
              v65 = CGRectGetHeight(v150);
              v66 = [MEMORY[0x1E696AC88] indexPathForItem:*(v58 + 16) inSection:a2];
              v67 = *(a1 + 40);
              if (v67)
              {
                v68 = *(v67 + 208);
              }

              else
              {
                v68 = 0;
              }

              v69 = [v68 objectForKeyedSubscript:v66];
              if (!v69)
              {
                if (*(v58 + 24) == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v70 = 0;
                }

                else
                {
                  v70 = *(v58 + 24);
                }

                v69 = [(_UICollectionCompositionalLayoutSolver *)*(a1 + 40) _createAndCacheLayoutAttributesForItemAtIndexPath:v66 frame:v70 zIndex:v54 + v60, v55 + v61, v64, v65];
              }

              v71 = v69;
              goto LABEL_38;
            }

            if ((v59 & 0xFFFFFFFFFFFFFFFELL) != 2)
            {
              goto LABEL_39;
            }

            v72 = v11;
            v73 = [(_UICollectionLayoutFramesQueryResult *)*(*(&v137 + 1) + 8 * v57) auxillaryItem];
            if (!v73)
            {
              v89 = [MEMORY[0x1E696AAA8] currentHandler];
              [v89 handleFailureInMethod:*(a1 + 112) object:*(a1 + 40) file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2779 description:@"Failed to get the associated auxillary definition for this query result."];
            }

            v74 = [v73 elementKind];
            if (![v74 length])
            {
              v90 = [MEMORY[0x1E696AAA8] currentHandler];
              [v90 handleFailureInMethod:*(a1 + 112) object:*(a1 + 40) file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2781 description:@"Failed to get the element kind from the supplementary."];
            }

            v66 = [MEMORY[0x1E696AC88] indexPathForItem:*(v58 + 16) inSection:a2];
            v75 = *(v58 + 32);
            if (v75 == 3)
            {
              v83 = *(v58 + 80);
              v84 = *(v58 + 88);
              v85 = *(v58 + 96);
              v86 = *(v58 + 104);
              v153.origin.x = v83;
              v153.origin.y = v84;
              v153.size.width = v85;
              v153.size.height = v86;
              v87 = CGRectGetWidth(v153);
              v154.origin.x = v83;
              v154.origin.y = v84;
              v154.size.width = v85;
              v154.size.height = v86;
              v88 = CGRectGetHeight(v154);
              v82 = [(_UICollectionCompositionalLayoutSolver *)*(a1 + 40) _cachedDecorationAttributesForElementKind:v74 indexPath:v66];
              if (!v82)
              {
                v82 = -[_UICollectionCompositionalLayoutSolver _createAndCacheLayoutAttributesForDecorationItemAtIndexPath:elementKind:frame:additionalContentInset:zIndex:](*(a1 + 40), v66, v74, [v73 zIndex], v54 + v83, v55 + v84, v87, v88, 0.0, 0.0, 0.0, 0.0);
              }

LABEL_35:
              v71 = v82;
            }

            else
            {
              if (v75 == 2)
              {
                v76 = *(v58 + 80);
                v77 = *(v58 + 88);
                v78 = *(v58 + 96);
                v79 = *(v58 + 104);
                v151.origin.x = v76;
                v151.origin.y = v77;
                v151.size.width = v78;
                v151.size.height = v79;
                v80 = CGRectGetWidth(v151);
                v152.origin.x = v76;
                v152.origin.y = v77;
                v152.size.width = v78;
                v152.size.height = v79;
                v81 = CGRectGetHeight(v152);
                v82 = [(_UICollectionCompositionalLayoutSolver *)*(a1 + 40) _cachedSupplementaryAttributesForElementKind:v74 indexPath:v66];
                if (!v82)
                {
                  v82 = [(_UICollectionCompositionalLayoutSolver *)*(a1 + 40) _createAndCacheLayoutAttributesForSupplementaryItemAtIndexPath:v66 elementKind:v74 frame:v58 queryResult:v123 + v125 + v76, v124 + v122 + v77, v80, v81];
                }

                goto LABEL_35;
              }

              v71 = 0;
            }

            v11 = v72;
            v51 = v134;
LABEL_38:
            (*(*(a1 + 48) + 16))();
          }

LABEL_39:
          if (*(*(*(a1 + 56) + 8) + 24))
          {

            return;
          }

          ++v57;
        }

        while (v53 != v57);
        v91 = [v51 countByEnumeratingWithState:&v137 objects:v141 count:16];
        v53 = v91;
      }

      while (v91);
    }

    v3 = v132;
  }

  if (v3)
  {
    v92 = v3[2];
  }

  else
  {
    v92 = 0;
  }

  v93 = [v92 decorationItems];
  v94 = [v93 count];
  if (v94 >= 1)
  {
    v95 = v94;
    v96 = 0;
    v135 = v93;
    do
    {
      v97 = [v93 objectAtIndexedSubscript:v96];
      if ([v97 isBackgroundDecoration])
      {
        v98 = [v97 elementKind];
        v99 = [MEMORY[0x1E696AC88] indexPathForItem:v96 inSection:a2];
        v100 = [(_UICollectionCompositionalLayoutSolver *)*(a1 + 40) _cachedDecorationAttributesForElementKind:v98 indexPath:v99];
        if (v100)
        {
          v101 = v100;
          [v100 frame];
          v103 = v102;
          v105 = v104;
          v107 = v106;
          v109 = v108;
        }

        else
        {
          v103 = [_UICollectionCompositionalLayoutSolver _globalFrameForBackgroundDecoration:v132 forSectionWithBookmark:?];
          v105 = v110;
          v107 = v111;
          v109 = v112;
          v113 = *(a1 + 40);
          [v97 contentInsets];
          v101 = -[_UICollectionCompositionalLayoutSolver _createAndCacheLayoutAttributesForDecorationItemAtIndexPath:elementKind:frame:additionalContentInset:zIndex:](v113, v99, v98, [v97 zIndex], v103, v105, v107, v109, v114, v115, v116, v117);
        }

        v118 = [_UICollectionLayoutFramesQueryResult alloc];
        v119 = [v97 zIndex];
        v120 = [MEMORY[0x1E696AFB0] UUID];
        v121 = [(_UICollectionLayoutFramesQueryResult *)&v118->super.isa initWithFrame:0 pinningAlignment:v96 adjustedForPinning:v119 visibleRectDisplacement:3 index:v97 zIndex:2 resultKind:v103 item:v105 auxillaryKind:v107 supplementaryEnrollmentIdentifier:v109, 0.0, v120];

        (*(*(a1 + 48) + 16))();
        LOBYTE(v119) = *(*(*(a1 + 56) + 8) + 24);

        v93 = v135;
        if (v119)
        {
          break;
        }
      }

      ++v96;
    }

    while (v96 < v95);
  }
}

uint64_t __85___UICollectionCompositionalLayoutSolver__layoutAttributesForElementsInRect_handler___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 40) + 16))();
  *a3 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __75___UICollectionCompositionalLayoutSolver__registerDecorationItemsIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a2 decorationItems];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        if ([v8 _registrationViewClass])
        {
          v9 = *(a1 + 32);
          if (v9)
          {
            v10 = *(v9 + 112);
            v11 = v10;
            if (v10)
            {
              v10 = *(v10 + 7);
            }
          }

          else
          {
            v11 = 0;
            v10 = 0;
          }

          (*(v10 + 2))(v10, v8);
        }

        ++v7;
      }

      while (v5 != v7);
      v12 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v5 = v12;
    }

    while (v12);
  }
}

void __138___UICollectionCompositionalLayoutSolver__updateResultsNotingDeletedItemAndSectionAuxillaries_returningStartingGroupAuxillariesForUpdate___block_invoke(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if (!a4 || (*(a4 + 32) & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return;
  }

  v7 = [a2 indexPath];
  v8 = v7;
  v9 = *(a4 + 48);
  if (v9 == 2)
  {
    if ([v7 length] < 2)
    {
      return;
    }

    v11 = [v8 section];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL || [*(a1 + 32) finalSectionIndexForInitialSectionIndex:v11] != 0x7FFFFFFFFFFFFFFFLL)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v9 != 3)
  {
    if (v9 != 4)
    {
      return;
    }

    v10 = [*(a1 + 32) finalIndexPathForInitialIndexPath:v7];

    if (v10)
    {
      return;
    }

LABEL_12:
    v12 = *(a1 + 40);
    v13 = [(_UILabelConfiguration *)a2 _content];
    if (a2)
    {
      v14 = (a2[288] & 3) == 0;
    }

    else
    {
      v14 = 0;
    }

    v15 = v13;
    [(_UICollectionCompositionalLayoutSolverResolveResult *)v12 addDeletedAuxillaryOfElementKind:v13 atIndexPath:v8 isSupplementary:v14];
    goto LABEL_15;
  }

  v15 = [_UICollectionViewItemKey collectionItemKeyForLayoutAttributes:a2];
  [*(a1 + 48) addObject:?];
LABEL_15:
}

void __154___UICollectionCompositionalLayoutSolver__updateResultNotingInsertedItemAndSectionAuxillaries_forVisibleGroupAuxillaryAttributesBeforeResolve_withUpdate___block_invoke(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 indexPath];
  if (a4 && (*(a4 + 32) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v8 = v7;
    v9 = *(a4 + 48);
    switch(v9)
    {
      case 2:
        if ([v7 length] < 2)
        {
          return;
        }

        v14 = [v8 section];
        if (v14 == 0x7FFFFFFFFFFFFFFFLL || [*(a1 + 32) initialSectionIndexForFinalSectionIndex:v14] != 0x7FFFFFFFFFFFFFFFLL)
        {
          return;
        }

        v15 = *(a1 + 40);
        v16 = [(_UILabelConfiguration *)a2 _content];
        if (a2)
        {
          v17 = (a2[288] & 3) == 0;
        }

        else
        {
          v17 = 0;
        }

        v18 = v16;
        [(_UICollectionCompositionalLayoutSolverResolveResult *)v15 addInsertedAuxillaryOfElementKind:v16 atIndexPath:v8 isSupplementary:v17];
        break;
      case 3:
        v18 = [_UICollectionViewItemKey collectionItemKeyForLayoutAttributes:a2];
        [*(a1 + 48) addObject:?];
        break;
      case 4:
        v10 = [*(a1 + 32) initialIndexPathForFinalIndexPath:v7];

        if (v10)
        {
          return;
        }

        v11 = *(a1 + 40);
        v18 = [(_UILabelConfiguration *)a2 _content];
        v12 = [a2 indexPath];
        if (a2)
        {
          v13 = (a2[288] & 3) == 0;
        }

        else
        {
          v13 = 0;
        }

        [(_UICollectionCompositionalLayoutSolverResolveResult *)v11 addInsertedAuxillaryOfElementKind:v18 atIndexPath:v12 isSupplementary:v13];

        break;
      default:
        return;
    }
  }
}

@end