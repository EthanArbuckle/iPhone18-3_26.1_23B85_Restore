@interface _UICollectionLayoutItemSolverState
- (id)initWithSolutionFrames:(void *)frames itemFrameCount:(void *)count supplementaryFrameCount:(void *)frameCount solvedFittingFrame:(void *)frame preferredSizeGroupingRanges:(double)ranges additionalOffsetForOutermostGroup:(double)group errorDescription:(double)description;
- (void)_generateMemoizedSolutionFramesBasedData;
- (void)auxillaryFrames;
- (void)itemFrames;
- (void)supplementaryDictByKindIndex;
- (void)supplementaryFrameOffsets;
@end

@implementation _UICollectionLayoutItemSolverState

- (void)itemFrames
{
  if (self)
  {
    selfCopy = self;
    v3 = self[1];
    if (!v3)
    {
      [(_UICollectionLayoutItemSolverState *)self _generateMemoizedSolutionFramesBasedData];
      v3 = selfCopy[1];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)_generateMemoizedSolutionFramesBasedData
{
  v36 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (*(self + 24))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__generateMemoizedSolutionFramesBasedData object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:1725 description:{@"Invalid parameter not satisfying: %@", @"!_supplementaryDictByKindIndex"}];
    }

    if (*(self + 16))
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:sel__generateMemoizedSolutionFramesBasedData object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:1726 description:{@"Invalid parameter not satisfying: %@", @"!_auxillaryFrames"}];
    }

    if (*(self + 8))
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:sel__generateMemoizedSolutionFramesBasedData object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:1727 description:{@"Invalid parameter not satisfying: %@", @"!_itemFrames"}];
    }

    if (!*(self + 48))
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler4 handleFailureInMethod:sel__generateMemoizedSolutionFramesBasedData object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:1728 description:{@"Invalid parameter not satisfying: %@", @"_solutionFrames"}];
    }

    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v30 = objc_alloc_init(_UICollectionLayoutAuxillaryOffsets);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    selfCopy = self;
    v4 = *(self + 48);
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
              auxillaryItem = [(_UICollectionLayoutFramesQueryResult *)v9 auxillaryItem];
              if (!auxillaryItem)
              {
                currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
                [currentHandler5 handleFailureInMethod:sel__generateMemoizedSolutionFramesBasedData object:selfCopy file:@"_UICollectionLayoutItemSolver.m" lineNumber:1747 description:{@"Invalid parameter not satisfying: %@", @"auxillaryItem"}];
              }

              elementKind = [auxillaryItem elementKind];
              if (![elementKind length])
              {
                currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
                [currentHandler6 handleFailureInMethod:sel__generateMemoizedSolutionFramesBasedData object:selfCopy file:@"_UICollectionLayoutItemSolver.m" lineNumber:1749 description:{@"Invalid parameter not satisfying: %@", @"kind.length"}];
              }

              v13 = [_UICollectionLayoutFramesQueryResult kindIndexKeyForKind:elementKind index:v9[2]];
              if (!v13)
              {
                currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
                [currentHandler7 handleFailureInMethod:sel__generateMemoizedSolutionFramesBasedData object:selfCopy file:@"_UICollectionLayoutItemSolver.m" lineNumber:1752 description:{@"Invalid parameter not satisfying: %@", @"kindIndexKey"}];
              }

              [v29 setObject:v9 forKeyedSubscript:v13];
              [(_UICollectionLayoutAuxillaryOffsets *)v30 incrementCountForElementKind:elementKind];
            }
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v6);
    }

    v16 = selfCopy[1];
    selfCopy[1] = v2;
    v17 = v2;

    v18 = selfCopy[2];
    selfCopy[2] = v3;
    v19 = v3;

    v20 = selfCopy[3];
    selfCopy[3] = v29;
    v21 = v29;

    v22 = selfCopy[4];
    selfCopy[4] = v30;
  }
}

- (void)supplementaryFrameOffsets
{
  if (self)
  {
    selfCopy = self;
    v3 = self[4];
    if (!v3)
    {
      [(_UICollectionLayoutItemSolverState *)self _generateMemoizedSolutionFramesBasedData];
      v3 = selfCopy[4];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)auxillaryFrames
{
  if (self)
  {
    selfCopy = self;
    v3 = self[2];
    if (!v3)
    {
      [(_UICollectionLayoutItemSolverState *)self _generateMemoizedSolutionFramesBasedData];
      v3 = selfCopy[2];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (id)initWithSolutionFrames:(void *)frames itemFrameCount:(void *)count supplementaryFrameCount:(void *)frameCount solvedFittingFrame:(void *)frame preferredSizeGroupingRanges:(double)ranges additionalOffsetForOutermostGroup:(double)group errorDescription:(double)description
{
  if (!self)
  {
    return 0;
  }

  v30.receiver = self;
  v30.super_class = _UICollectionLayoutItemSolverState;
  v23 = objc_msgSendSuper2(&v30, sel_init);
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(v23 + 6, a2);
    v24[7] = frames;
    v24[8] = count;
    *(v24 + 13) = ranges;
    *(v24 + 14) = group;
    *(v24 + 15) = description;
    *(v24 + 16) = a10;
    v25 = [frameCount copy];
    v26 = v24[9];
    v24[9] = v25;

    *(v24 + 11) = a11;
    *(v24 + 12) = a12;
    v27 = [frame copy];
    v28 = v24[10];
    v24[10] = v27;
  }

  return v24;
}

- (void)supplementaryDictByKindIndex
{
  if (self)
  {
    selfCopy = self;
    v3 = self[3];
    if (!v3)
    {
      [(_UICollectionLayoutItemSolverState *)self _generateMemoizedSolutionFramesBasedData];
      v3 = selfCopy[3];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

@end