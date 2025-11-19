@interface UICollectionLayoutSectionEstimatedSolver
@end

@implementation UICollectionLayoutSectionEstimatedSolver

void __85___UICollectionLayoutSectionEstimatedSolver_queryFramesIntersectingRect_frameOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 1);
    v6 = *(v3 + 3);
    v7 = *(v3 + 4);
    v9 = *(v3 + 5);
    v8 = *(v3 + 6);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v5 = 0;
    v8 = 0.0;
    v9 = 0.0;
  }

  v10 = _UIPointValueForAxis(*(a1 + 48), v9, v8);
  v11 = _UIPointValueForAxis(*(a1 + 48), *(a1 + 56), *(a1 + 64));
  v12 = _UISetPointValueForAxis(*(a1 + 48), *(a1 + 56), *(a1 + 64), v11 - v10);
  v14 = v13;
  Width = CGRectGetWidth(*(a1 + 88));
  Height = CGRectGetHeight(*(a1 + 88));
  v17 = *(a1 + 120);
  if (v4)
  {
    v18 = v4[2];
  }

  else
  {
    v18 = 0;
  }

  if (v7 + v6 >= v17)
  {
    v19 = v17 - v6;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(_UICollectionLayoutItemSolver *)v5 queryFramesWithQueryRect:v6 additionalFrameOffset:v18 itemIndexOffset:v19 supplementaryOffsets:v12 itemLimit:v14, Width, Height, v9 + *(a1 + 128), v8 + *(a1 + 136)];
  [*(a1 + 32) addObjectsFromArray:v20];
}

id __66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (!v2)
  {
    v3 = [_UICollectionLayoutItemSolver alloc];
    v4 = [*(*(a1 + 32) + 16) group];
    v5 = [(_UICollectionLayoutItemSolver *)v3 initWithItem:v4];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(a1 + 56);
    v9 = *(*(*(a1 + 48) + 8) + 40);
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) traitCollection];
    v12 = [*(a1 + 32) layoutRTL];
    if (v9)
    {
      [(_UICollectionLayoutItemSolver *)v9 _solveForContainer:v10 layoutAxis:v8 traitCollection:v11 maxFrameCount:0x7FFFFFFFFFFFFFFFLL layoutRTL:v12 preferredSizes:0 largestKnownItemSize:0 solutionRecursionDepth:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    }

    v2 = *(*(*(a1 + 48) + 8) + 40);
  }

  return v2;
}

uint64_t __66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    v3 = (*(*(a1 + 56) + 16))();
    v4 = [(_UICollectionLayoutItemSolver *)v3 supplementaryOffsets];
    v5 = [v4 elementKinds];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [(_UICollectionLayoutItemSolver *)v3 supplementaryOffsets];
      v8 = [v7 offsetsByApplyingOffsets:*(*(*(a1 + 64) + 8) + 40)];

      if (!v3)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v8 = 0;
      if (!v3)
      {
        goto LABEL_21;
      }
    }

    v9 = *(v3 + 48);
    if (v9)
    {
      v10 = *(v9 + 56);
LABEL_9:
      if (!*(*(a1 + 32) + 56))
      {
        goto LABEL_17;
      }

      v11 = *(*(*(a1 + 72) + 8) + 24);
      v12 = *(a1 + 40);
      if (v12)
      {
        v13 = [(_UICollectionPreferredSizes *)v12 indexes];
        v14 = [v13 countOfIndexesInRange:{v11, v10}];

        v15 = *(a1 + 40);
        if (v15 && v8)
        {
          v16 = [(_UICollectionPreferredSizes *)v15 containsSupplementaryOffsets:v8];
          v1 = 0;
          if (v14 || (v16 & 1) != 0)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        if (v14)
        {
LABEL_17:
          v1 = 0;
LABEL_19:

          return v1;
        }
      }

LABEL_18:
      v17 = [(_UILabelConfiguration *)*(a1 + 48) _content];
      v18 = [v17 countOfIndexesInRange:{v11, v10}] == 0;

      v19 = [(_UICollectionLayoutSolveParameters *)*(a1 + 48) invalidatedAuxillaryOffsets];
      v20 = [v19 overlapsOffsets:v8];

      v1 = v18 & (v20 ^ 1u);
      goto LABEL_19;
    }

LABEL_21:
    v10 = 0;
    goto LABEL_9;
  }

  return 1;
}

id *__66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_3(uint64_t a1)
{
  v2 = [_UICollectionLayoutItemSolver alloc];
  v3 = [*(*(a1 + 32) + 16) group];
  v4 = [(_UICollectionLayoutItemSolver *)v2 initWithItem:v3];

  v5 = [(_UICollectionPreferredSizes *)*(a1 + 40) preferredSizesApplyingFrameOffset:*(*(*(a1 + 64) + 8) + 40) supplementaryBaseOffsets:?];
  v6 = *(a1 + 48);
  v7 = *(a1 + 72);
  v8 = [*(a1 + 32) traitCollection];
  v9 = [*(a1 + 32) layoutRTL];
  if (v4)
  {
    [(_UICollectionLayoutItemSolver *)v4 _solveForContainer:v6 layoutAxis:v7 traitCollection:v8 maxFrameCount:0x7FFFFFFFFFFFFFFFLL layoutRTL:v9 preferredSizes:v5 largestKnownItemSize:0 solutionRecursionDepth:*(a1 + 80), *(a1 + 88)];
  }

  return v4;
}

void *__66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_4(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UICollectionLayoutSectionEstimatedSolver _solveWithParameters:]_block_invoke_4"];
    [v14 handleFailureInFunction:v15 file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:552 description:{@"Invalid parameter not satisfying: %@", @"nextBookmarkIndex != NSNotFound"}];

    v2 = *(*(*(a1 + 40) + 8) + 24);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 104);
    v5 = v4;
    if (v4)
    {
      v4 = v4[2];
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = [v4 count];

  if (v2 >= v6)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UICollectionLayoutSectionEstimatedSolver _solveWithParameters:]_block_invoke_4"];
    [v16 handleFailureInFunction:v17 file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:553 description:{@"Invalid parameter not satisfying: %@", @"nextBookmarkIndex < self.solutionState.bookmarks.count"}];
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 104);
    v9 = v8;
    if (v8)
    {
      v8 = v8[2];
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = [v8 objectAtIndexedSubscript:*(*(*(a1 + 40) + 8) + 24)];

  if (v10)
  {
    v11 = v10[1];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  ++*(*(*(a1 + 40) + 8) + 24);

  return v11;
}

id __66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_5(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  if (!v1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UICollectionLayoutSectionEstimatedSolver _solveWithParameters:]_block_invoke_5"];
    [v4 handleFailureInFunction:v5 file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:562 description:{@"Invalid parameter not satisfying: %@", @"solution"}];
  }

  v2 = [v1 copy];

  return v2;
}

void *__66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_6(uint64_t a1)
{
  v2 = *(*(*(a1 + 56) + 8) + 24);
  if (v2 >= *(a1 + 104))
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UICollectionLayoutSectionEstimatedSolver _solveWithParameters:]_block_invoke_6"];
    [v25 handleFailureInFunction:v26 file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:568 description:{@"Invalid parameter not satisfying: %@", @"resolveOffset<resolveBookmarkRange.length"}];

    v2 = *(*(*(a1 + 56) + 8) + 24);
  }

  v3 = *(a1 + 96) + v2;
  *(*(*(a1 + 64) + 8) + 24) = v3;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 104);
    v6 = v5;
    if (v5)
    {
      v5 = v5[2];
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = [v5 objectAtIndexedSubscript:v3];

  if (v7 && (v8 = v7[1]) != 0)
  {
    v9 = v8;
    v10 = v8[6];
    if (v10)
    {
      v11 = 0;
      v12 = *(v10 + 56);
      v13 = *(v10 + 64);
    }

    else
    {
      v12 = 0;
      v11 = 0;
      v13 = 0;
    }
  }

  else
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UICollectionLayoutSectionEstimatedSolver _solveWithParameters:]_block_invoke_6"];
    [v27 handleFailureInFunction:v28 file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:573 description:{@"Invalid parameter not satisfying: %@", @"solution"}];

    v12 = 0;
    v9 = 0;
    v13 = 0;
    v11 = 1;
  }

  v14 = [(_UICollectionPreferredSizes *)*(a1 + 40) preferredSizesApplyingFrameOffset:*(*(*(a1 + 80) + 8) + 40) supplementaryBaseOffsets:?];
  v15 = *(a1 + 48);
  v16 = *(a1 + 112);
  v17 = [*(a1 + 32) traitCollection];
  v18 = [*(a1 + 32) layoutRTL];
  if (v11)
  {

    v20 = 0;
    v19 = 0;
  }

  else
  {
    [(_UICollectionLayoutItemSolver *)v9 _solveForContainer:v15 layoutAxis:v16 traitCollection:v17 maxFrameCount:0x7FFFFFFFFFFFFFFFLL layoutRTL:v18 preferredSizes:v14 largestKnownItemSize:0 solutionRecursionDepth:*(a1 + 120), *(a1 + 128)];

    v19 = v9[6];
    if (v19)
    {
      v20 = *(v19 + 56);
      v19 = *(v19 + 64);
    }

    else
    {
      v20 = 0;
    }
  }

  v21 = *(*(a1 + 88) + 8);
  if ((*(v21 + 24) & 1) == 0)
  {
    v23 = v12 != v20 || v13 != v19;
    *(v21 + 24) = v23;
  }

  ++*(*(*(a1 + 56) + 8) + 24);

  return v9;
}

void __66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_7(void *a1, void *a2)
{
  v4 = [(_UICollectionLayoutItemSolver *)a2 errorDescription];

  if (v4)
  {
    *(*(a1[5] + 8) + 24) = 0;
    v5 = [(_UICollectionLayoutItemSolver *)a2 errorDescription];
    v6 = a1[4];
    v7 = *(v6 + 64);
    *(v6 + 64) = v5;
  }

  else
  {
    v8 = *(*(a1[6] + 8) + 40);
    v9 = [(_UICollectionLayoutItemSolver *)a2 supplementaryOffsets];
    [(_UICollectionLayoutAuxillaryOffsets *)v8 incrementCountsFromOffsets:v9];

    if (a2)
    {
      v10 = a2[6];
      if (v10)
      {
        v10 = *(v10 + 56);
      }
    }

    else
    {
      v10 = 0;
    }

    *(*(a1[7] + 8) + 24) += v10;
    *(*(a1[5] + 8) + 24) -= v10;
    v11 = *(a1[5] + 8);
    if ((*(v11 + 24) & 0x8000000000000000) != 0)
    {
      *(v11 + 24) = 0;
    }

    v12 = *(*(a1[8] + 8) + 40);

    [v12 addObject:a2];
  }
}

uint64_t __66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_8(void *a1)
{
  if (!a1[5])
  {
    return 6;
  }

  v1 = a1[4];
  if (v1 && (*(v1 + 24) & 1) != 0)
  {
    return 2;
  }

  if (a1[7])
  {
    return 3;
  }

  return 2;
}

uint64_t __66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_9(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 40) + 8) + 24) < 1)
  {
    return 6;
  }

  if ((*(*(a1 + 32) + 16))(*(a1 + 32), a2))
  {
    return 5;
  }

  return 2;
}

void __66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    if (!a1[7])
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UICollectionLayoutSectionEstimatedSolver _solveWithParameters:]_block_invoke_10"];
      [v10 handleFailureInFunction:v11 file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:764 description:{@"Invalid parameter not satisfying: %@", @"resolveBookmarkRange.length"}];
    }

    if (a1[6])
    {
      v5 = 0;
      do
      {
        v6 = a1[4];
        if (v6)
        {
          v7 = *(v6 + 104);
          v8 = v7;
          if (v7)
          {
            v7 = v7[2];
          }
        }

        else
        {
          v8 = 0;
          v7 = 0;
        }

        v9 = [v7 objectAtIndexedSubscript:v5];

        (*(a1[5] + 16))();
        ++v5;
      }

      while (v5 < a1[6]);
    }
  }
}

uint64_t __66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_11(void *a1)
{
  if (*(*(a1[6] + 8) + 24) < 1)
  {
    return 6;
  }

  if (*(*(a1[7] + 8) + 24) < a1[12])
  {
    return 3;
  }

  if ((*(*(a1[8] + 8) + 24) & 1) != 0 || !(*(a1[5] + 16))())
  {
    return 2;
  }

  v3 = *(*(a1[9] + 8) + 24);
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  v4 = a1[4];
  if (v4)
  {
    v5 = *(v4 + 104);
    v6 = v5;
    if (v5)
    {
      v5 = v5[2];
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = [v5 count];

  if (v3 >= v7)
  {
LABEL_12:
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UICollectionLayoutSectionEstimatedSolver _solveWithParameters:]_block_invoke_11"];
    [v8 handleFailureInFunction:v9 file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:703 description:{@"Invalid parameter not satisfying: %@", @"lastResolvedBookmarkIndex != NSNotFound && lastResolvedBookmarkIndex < self.solutionState.bookmarks.count"}];
  }

  *(*(a1[10] + 8) + 24) = *(*(a1[9] + 8) + 24) + 1;
  v10 = *(*(a1[10] + 8) + 24);
  v11 = a1[4];
  if (v11)
  {
    v12 = *(v11 + 104);
    v13 = v12;
    if (v12)
    {
      v12 = v12[2];
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = [v12 count];

  if (v10 >= v14)
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

uint64_t __66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_12(void *a1)
{
  if (*(*(a1[5] + 8) + 24) < 1)
  {
    return 6;
  }

  v13 = v3;
  v14 = v1;
  v7 = *(*(a1[6] + 8) + 24);
  v8 = a1[4];
  if (v8)
  {
    v9 = *(v8 + 104);
    v10 = v9;
    if (v9)
    {
      v9 = v9[2];
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = [v9 count];

  if (v7 >= v11)
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

uint64_t __66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_13(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 40) + 8) + 24) < 1)
  {
    return 6;
  }

  if ((*(*(a1 + 32) + 16))(*(a1 + 32), a2))
  {
    return 5;
  }

  return 2;
}

_UIOrderedRangeIndexerImpl *__85___UICollectionLayoutSectionEstimatedSolver__rangeOfBookmarksAffectedByResolveItems___block_invoke(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 8);
    v8[0] = 0;
    v8[1] = 0;
    v9 = 0;
    result = _UIOrderedRangeIndexerImpl::binarySearchForLocation(v4, a2, v8);
    v6 = v9;
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return result;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);

  return [v7 addIndex:v6];
}

void __85___UICollectionLayoutSectionEstimatedSolver__rangeOfBookmarksAffectedByResolveItems___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v4)
  {
    v5 = [(_UICollectionLayoutSolveParameters *)*(a1 + 40) indexesForInvalidatedAuxillariesOfKind:a2];
    if (v5)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __85___UICollectionLayoutSectionEstimatedSolver__rangeOfBookmarksAffectedByResolveItems___block_invoke_3;
      v7[3] = &unk_1E70F43F0;
      v8 = v4;
      v9 = *(a1 + 56);
      [v5 enumerateIndexesUsingBlock:v7];
    }

    else
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:*(a1 + 64) object:*(a1 + 48) file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:1005 description:{@"Invalid parameter not satisfying: %@", @"elementKindIndexes"}];
    }
  }
}

_UIOrderedRangeIndexerImpl *__85___UICollectionLayoutSectionEstimatedSolver__rangeOfBookmarksAffectedByResolveItems___block_invoke_3(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 8);
    v8[0] = 0;
    v8[1] = 0;
    v9 = 0;
    result = _UIOrderedRangeIndexerImpl::binarySearchForLocation(v4, a2, v8);
    v6 = v9;
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return result;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);

  return [v7 addIndex:v6];
}

void __103___UICollectionLayoutSectionEstimatedSolver__updateSolutionAuxillaryRangeIndexerKindDict_fromBookmark___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) rangeForElementKind:a2];
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = [*(a1 + 40) objectForKeyedSubscript:a2];
    if (v8 || (v9 = objc_alloc_init(_UIOrderedRangeIndexer), [*(a1 + 40) setObject:v9 forKeyedSubscript:a2], (v8 = v9) != 0))
    {
      v10 = v8;
      v12.location = v6;
      v12.length = v7;
      _UIOrderedRangeIndexerImpl::appendRange(*(v8 + 8), v12);
    }

    else
    {
      v10 = 0;
    }
  }
}

@end