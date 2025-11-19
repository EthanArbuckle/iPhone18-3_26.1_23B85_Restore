@interface UICollectionLayoutItemSolver
@end

@implementation UICollectionLayoutItemSolver

void __44___UICollectionLayoutItemSolver__solveGroup__block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v55 = *MEMORY[0x1E69E9840];
  if (a3 >= 2)
  {
    v6 = *(a1 + 104);
    v7 = [MEMORY[0x1E696B098] valueWithRange:{a2, a3}];
    [v6 addObject:v7];

    v8 = *MEMORY[0x1E695F060];
    v9 = *(MEMORY[0x1E695F060] + 8);
    v10 = [*(a1 + 128) subarrayWithRange:{a2, a3}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v49 objects:v54 count:16];
    v12 = v9;
    v13 = v8;
    if (v11)
    {
      v14 = v11;
      v15 = *v50;
      v12 = v9;
      v13 = v8;
      do
      {
        v16 = 0;
        do
        {
          if (*v50 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v49 + 1) + 8 * v16);
          if (!v17)
          {
            v19 = 0;
            v18 = 0;
LABEL_20:
            v20 = 1;
            goto LABEL_10;
          }

          v18 = *(v17 + 8);
          v19 = v18;
          if (!v18)
          {
            goto LABEL_20;
          }

          v20 = 0;
          v18 = v18[2];
LABEL_10:
          v21 = [v18 layoutSize];
          if (![v21 isEstimated] || ((v20 & 1) != 0 ? (v22 = 0) : (v22 = v19[7]), -[_UICollectionPreferredSizes objectAtIndexedSubscript:](v22, 0), v23 = objc_claimAutoreleasedReturnValue(), v23, v23))
          {
            if (v17)
            {
              v24 = *(v17 + 40);
              v13 = fmax(*(v17 + 32), v13);
            }

            else
            {
              v24 = 0.0;
              v13 = fmax(v13, 0.0);
            }

            v12 = fmax(v24, v12);
          }

          ++v16;
        }

        while (v14 != v16);
        v25 = [v10 countByEnumeratingWithState:&v49 objects:v54 count:16];
        v14 = v25;
      }

      while (v25);
    }

    if (v8 != v13 || v9 != v12)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v27 = v10;
      v28 = [v27 countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (!v28)
      {
        goto LABEL_47;
      }

      v29 = v28;
      v30 = *v46;
      while (1)
      {
        v31 = 0;
        do
        {
          if (*v46 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v45 + 1) + 8 * v31);
          if (v32)
          {
            v33 = *(v32 + 8);
            v34 = v33;
            if (v33)
            {
              v35 = 0;
              v33 = v33[2];
              goto LABEL_36;
            }
          }

          else
          {
            v34 = 0;
            v33 = 0;
          }

          v35 = 1;
LABEL_36:
          v36 = [v33 layoutSize];
          if ([v36 _axesUniformAcrossSiblings])
          {
            [(_UICollectionLayoutItemSolver *)v34 setSolveResult:?];
            if (v35)
            {
              v37 = 0;
            }

            else
            {
              v37 = v34[7];
            }

            v38 = v37;
            v39 = [(_UICollectionPreferredSizes *)v38 objectAtIndexedSubscript:?];
            [(_UICollectionLayoutItemSolver *)v34 _solveSingleItemWithPreferredSize:v39 groupMaxItemSize:v13, v12];

            v40 = [(_UICollectionLayoutItemSolver *)v34 layoutFrame];
            if (v32)
            {
              *(v32 + 16) = v40;
              *(v32 + 24) = v41;
              *(v32 + 32) = v42;
              *(v32 + 40) = v43;
            }
          }

          ++v31;
        }

        while (v29 != v31);
        v44 = [v27 countByEnumeratingWithState:&v45 objects:v53 count:16];
        v29 = v44;
        if (!v44)
        {
LABEL_47:

          break;
        }
      }
    }
  }
}

void __66___UICollectionLayoutItemSolver__solveWithCustomGroupItemProvider__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  [a2 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  *(*(*(a1 + 48) + 8) + 32) = CGRectUnion(*(*(*(a1 + 48) + 8) + 32), v19);
  v14 = [_UICollectionLayoutFramesQueryResult alloc];
  v15 = [a2 zIndex];
  if (v14)
  {
    v16 = [(_UICollectionLayoutFramesQueryResult *)&v14->super.isa initWithFrame:0 pinningAlignment:a3 adjustedForPinning:v15 visibleRectDisplacement:1 index:*(*(a1 + 32) + 16) zIndex:0 resultKind:v7 item:v9 auxillaryKind:v11 supplementaryEnrollmentIdentifier:v13, 0.0, 0];
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  [*(a1 + 40) addObject:v16];
}

double __107___UICollectionLayoutItemSolver__outerContainerOffsetForGroup_groupComputedSize_container_outerLayoutAxis___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    [*(a1 + 32) effectiveContentSize];
    v4 = v6;
    v5 = 48;
  }

  else
  {
    result = 0.0;
    if (a2 != 1)
    {
      return result;
    }

    [*(a1 + 32) effectiveContentSize];
    v5 = 40;
  }

  return v4 - *(a1 + v5);
}

uint64_t __107___UICollectionLayoutItemSolver__outerContainerOffsetForGroup_groupComputedSize_container_outerLayoutAxis___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v6 = [*(a1 + 32) top];
    v4 = [v6 isFlexibleSpacing];

    v5 = [*(a1 + 32) bottom];
  }

  else
  {
    if (a2 != 1)
    {
      return 0;
    }

    v3 = [*(a1 + 32) leading];
    v4 = [v3 isFlexibleSpacing];

    v5 = [*(a1 + 32) trailing];
  }

  v7 = v5;
  v8 = [v5 isFlexibleSpacing];

  v9 = 1;
  if (v4)
  {
    v9 = 2;
  }

  if (v8)
  {
    return v9;
  }

  else
  {
    return v4;
  }
}

double __107___UICollectionLayoutItemSolver__outerContainerOffsetForGroup_groupComputedSize_container_outerLayoutAxis___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v4 = [*(a1 + 32) top];
    [v4 spacing];
    v6 = v8;
    v7 = [*(a1 + 32) bottom];
    goto LABEL_5;
  }

  v3 = 0.0;
  if (a2 == 1)
  {
    v4 = [*(a1 + 32) leading];
    [v4 spacing];
    v6 = v5;
    v7 = [*(a1 + 32) trailing];
LABEL_5:
    v9 = v7;
    [v7 spacing];
    v3 = v6 + v10;
  }

  return v3;
}

double __124___UICollectionLayoutItemSolver__arrangeSolutionItems_alongLayoutAxis_forContainer_additionalLayoutOffset_interItemSpacing___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [(_UICollectionSolutionGroupArrangementItem *)a2 item];
  v6 = [v5 edgeSpacing];

  [v6 spacingForEdge:a3];
  v8 = v7;
  if ([v6 isSpacingFlexibleForEdge:a3])
  {
    return v8 + *(a1 + 32);
  }

  return v8;
}

void __71___UICollectionLayoutItemSolver__transformGroupArrangementItemsForRTL___block_invoke(_OWORD *a1, void *a2)
{
  v4 = [(_UICollectionSolutionGroupArrangementItem *)a2 item];
  if (([v4 ignoresRTL] & 1) == 0)
  {
    if (a2)
    {
      v5 = a2[2];
      v6 = a2[3];
      v7 = a2[4];
      v8 = a2[5];
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v5 = 0;
    }

    v9 = a1[3];
    *&v10.a = a1[2];
    *&v10.c = v9;
    *&v10.tx = a1[4];
    v11 = CGRectApplyAffineTransform(*&v5, &v10);
    if (a2)
    {
      *(a2 + 2) = v11;
    }
  }
}

void __128___UICollectionLayoutItemSolver__queryFramesWithQueryRect_additionalFrameOffset_itemIndexOffset_supplementaryOffsets_itemLimit___block_invoke(uint64_t a1, id *a2)
{
  if (a2)
  {
    v4 = a2[4];
    if (v4 == 1)
    {
      v5 = a2[2] + *(a1 + 56);
      goto LABEL_11;
    }

    if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      if (*(a1 + 32))
      {
        v5 = a2[2] + [*(a1 + 32) offsetForElementKind:{objc_msgSend(-[_UICollectionLayoutFramesQueryResult auxillaryItem](a2), "elementKind")}];
      }

      else
      {
        v5 = a2[2];
      }

LABEL_11:
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }
  }

  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"_UICollectionLayoutItemSolver.m" lineNumber:1300 description:@"Unknown frame type. Please file a radar!"];

LABEL_8:
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"_UICollectionLayoutItemSolver.m" lineNumber:1304 description:{@"Invalid parameter not satisfying: %@", @"adjustedIndex != NSNotFound"}];

  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (!a2)
  {
    v8 = 0;
    goto LABEL_13;
  }

LABEL_12:
  v8 = a2[7];
LABEL_13:
  v9 = v8;
  v10 = [(_UICollectionLayoutFramesQueryResult *)a2 copyWithOffset:v5 index:v9 supplementaryEnrollmentIdentifier:*(a1 + 72), *(a1 + 80)];

  [*(*(*(a1 + 48) + 8) + 40) addObject:v10];
}

void __133___UICollectionLayoutItemSolver__queryFramesWithQueryRect_additionalFrameOffset_itemIndexOffset_itemLimit_supplementaryRepeatOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 32);
    if (v4 == 1)
    {
      v5 = (*(a1 + 56) + *(a2 + 16));
      goto LABEL_12;
    }

    if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v6 = [(_UICollectionLayoutFramesQueryResult *)a2 auxillaryItem];
      if (!v6)
      {
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        [v12 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"_UICollectionLayoutItemSolver.m" lineNumber:1345 description:{@"Invalid parameter not satisfying: %@", @"auxillaryItem"}];
      }

      v7 = [v6 elementKind];
      if (![v7 length])
      {
        v13 = [MEMORY[0x1E696AAA8] currentHandler];
        [v13 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"_UICollectionLayoutItemSolver.m" lineNumber:1347 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
      }

      v8 = [(_UICollectionLayoutSupplementaryEnroller *)*(a1 + 40) countForKind:v7];
      if (v8 <= 0)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        [v14 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"_UICollectionLayoutItemSolver.m" lineNumber:1349 description:@"Failed to determine element kind count. Enrollment issue?"];
      }

      v5 = (*(a2 + 16) + *(a1 + 88) * v8);
LABEL_12:
      v9 = *(a2 + 56);
      v15 = [(_UICollectionLayoutFramesQueryResult *)a2 copyWithOffset:v5 index:v9 supplementaryEnrollmentIdentifier:*(a1 + 64), *(a1 + 72)];

      v10 = v15;
      if (v15)
      {
        goto LABEL_14;
      }
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"_UICollectionLayoutItemSolver.m" lineNumber:1357 description:@"Failed to compute a result during item query."];

  v10 = 0;
LABEL_14:
  v16 = v10;
  [*(*(*(a1 + 48) + 8) + 40) addObject:v10];
}

uint64_t __92___UICollectionLayoutItemSolver__enumerateSolutionFramesForQueryRect_itemLimit_withHandler___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 48) objectAtIndexedSubscript:a2];
  v6 = v5;
  if (*(a1 + 96) != 1 || (*(a1 + 97) & 1) != 0 || (!v5 ? (v8 = 0, v9 = 0, v10 = 0, v7 = 0) : (v7 = v5[10], v8 = v5[11], v9 = v5[12], v10 = v5[13]), result = CGRectIntersectsRect(*&v7, *(a1 + 56)), result))
  {
    result = (*(*(a1 + 32) + 16))();
  }

  if (v6)
  {
    if (v6[4] == 1)
    {
      ++*(*(*(a1 + 40) + 8) + 24);
    }

    if (*(a1 + 96) == 1 && v6[4] == 1 && *(*(*(a1 + 40) + 8) + 24) >= *(a1 + 88))
    {
      *a3 = 1;
    }
  }

  return result;
}

@end