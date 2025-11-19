@interface _UICollectionLayoutItemSolverState
- (id)initWithSolutionFrames:(void *)a3 itemFrameCount:(void *)a4 supplementaryFrameCount:(void *)a5 solvedFittingFrame:(void *)a6 preferredSizeGroupingRanges:(double)a7 additionalOffsetForOutermostGroup:(double)a8 errorDescription:(double)a9;
- (void)_generateMemoizedSolutionFramesBasedData;
- (void)auxillaryFrames;
- (void)itemFrames;
- (void)supplementaryDictByKindIndex;
- (void)supplementaryFrameOffsets;
@end

@implementation _UICollectionLayoutItemSolverState

- (void)itemFrames
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[1];
    if (!v3)
    {
      [(_UICollectionLayoutItemSolverState *)a1 _generateMemoizedSolutionFramesBasedData];
      v3 = v2[1];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)_generateMemoizedSolutionFramesBasedData
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 24))
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:sel__generateMemoizedSolutionFramesBasedData object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1725 description:{@"Invalid parameter not satisfying: %@", @"!_supplementaryDictByKindIndex"}];
    }

    if (*(a1 + 16))
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:sel__generateMemoizedSolutionFramesBasedData object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1726 description:{@"Invalid parameter not satisfying: %@", @"!_auxillaryFrames"}];
    }

    if (*(a1 + 8))
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      [v25 handleFailureInMethod:sel__generateMemoizedSolutionFramesBasedData object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1727 description:{@"Invalid parameter not satisfying: %@", @"!_itemFrames"}];
    }

    if (!*(a1 + 48))
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      [v26 handleFailureInMethod:sel__generateMemoizedSolutionFramesBasedData object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1728 description:{@"Invalid parameter not satisfying: %@", @"_solutionFrames"}];
    }

    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v30 = objc_alloc_init(_UICollectionLayoutAuxillaryOffsets);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v28 = a1;
    v4 = *(a1 + 48);
    v5 = [v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v32;
      do
      {
        v8 = 0;
        do
        {
          if (*v32 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v31 + 1) + 8 * v8);
          if (v9)
          {
            v10 = v9[4];
            if (v10 == 1)
            {
              [v2 addObject:*(*(&v31 + 1) + 8 * v8)];
            }

            else if ((v10 & 0xFFFFFFFFFFFFFFFELL) == 2)
            {
              [v3 addObject:*(*(&v31 + 1) + 8 * v8)];
              v11 = [(_UICollectionLayoutFramesQueryResult *)v9 auxillaryItem];
              if (!v11)
              {
                v14 = [MEMORY[0x1E696AAA8] currentHandler];
                [v14 handleFailureInMethod:sel__generateMemoizedSolutionFramesBasedData object:v28 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1747 description:{@"Invalid parameter not satisfying: %@", @"auxillaryItem"}];
              }

              v12 = [v11 elementKind];
              if (![v12 length])
              {
                v15 = [MEMORY[0x1E696AAA8] currentHandler];
                [v15 handleFailureInMethod:sel__generateMemoizedSolutionFramesBasedData object:v28 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1749 description:{@"Invalid parameter not satisfying: %@", @"kind.length"}];
              }

              v13 = [_UICollectionLayoutFramesQueryResult kindIndexKeyForKind:v12 index:v9[2]];
              if (!v13)
              {
                v27 = [MEMORY[0x1E696AAA8] currentHandler];
                [v27 handleFailureInMethod:sel__generateMemoizedSolutionFramesBasedData object:v28 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1752 description:{@"Invalid parameter not satisfying: %@", @"kindIndexKey"}];
              }

              [v29 setObject:v9 forKeyedSubscript:v13];
              [(_UICollectionLayoutAuxillaryOffsets *)v30 incrementCountForElementKind:v12];
            }
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v6);
    }

    v16 = v28[1];
    v28[1] = v2;
    v17 = v2;

    v18 = v28[2];
    v28[2] = v3;
    v19 = v3;

    v20 = v28[3];
    v28[3] = v29;
    v21 = v29;

    v22 = v28[4];
    v28[4] = v30;
  }
}

- (void)supplementaryFrameOffsets
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[4];
    if (!v3)
    {
      [(_UICollectionLayoutItemSolverState *)a1 _generateMemoizedSolutionFramesBasedData];
      v3 = v2[4];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)auxillaryFrames
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[2];
    if (!v3)
    {
      [(_UICollectionLayoutItemSolverState *)a1 _generateMemoizedSolutionFramesBasedData];
      v3 = v2[2];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (id)initWithSolutionFrames:(void *)a3 itemFrameCount:(void *)a4 supplementaryFrameCount:(void *)a5 solvedFittingFrame:(void *)a6 preferredSizeGroupingRanges:(double)a7 additionalOffsetForOutermostGroup:(double)a8 errorDescription:(double)a9
{
  if (!a1)
  {
    return 0;
  }

  v30.receiver = a1;
  v30.super_class = _UICollectionLayoutItemSolverState;
  v23 = objc_msgSendSuper2(&v30, sel_init);
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(v23 + 6, a2);
    v24[7] = a3;
    v24[8] = a4;
    *(v24 + 13) = a7;
    *(v24 + 14) = a8;
    *(v24 + 15) = a9;
    *(v24 + 16) = a10;
    v25 = [a5 copy];
    v26 = v24[9];
    v24[9] = v25;

    *(v24 + 11) = a11;
    *(v24 + 12) = a12;
    v27 = [a6 copy];
    v28 = v24[10];
    v24[10] = v27;
  }

  return v24;
}

- (void)supplementaryDictByKindIndex
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[3];
    if (!v3)
    {
      [(_UICollectionLayoutItemSolverState *)a1 _generateMemoizedSolutionFramesBasedData];
      v3 = v2[3];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

@end