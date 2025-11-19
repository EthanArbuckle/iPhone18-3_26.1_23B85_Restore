@interface _UICollectionLayoutItemSolver
- (CGPoint)auxillaryHostAdditionalFrameOffset;
- (CGRect)auxillaryHostPinningRect;
- (CGSize)auxillaryHostContentSize;
- (NSString)description;
- (double)_additionalDimensionForRequiredEdgeSpacingAlongAxis:(void *)a3 group:(char)a4 trailingEdgeOnly:;
- (double)_frameOffsetForAdditionalFrameOffset:(uint64_t)a3 repeatOffset:(double)a4 repeatAxis:(double)a5 interSolutionSpacing:(double)a6;
- (double)contentFrame;
- (double)contentSizeForFrameCount:(uint64_t)a3 layoutAxis:;
- (double)layoutFrame;
- (double)offsetForEdgeSpacing;
- (id)_frameForAbsoluteIndex:(uint64_t)a3 additionalFrameOffset:(double)a4 interSolutionSpacing:(double)a5 repeatAxis:(double)a6;
- (id)_queryFramesWithQueryRect:(uint64_t)a3 additionalFrameOffset:(uint64_t)a4 itemIndexOffset:(CGFloat)a5 itemLimit:(CGFloat)a6 supplementaryRepeatOffset:(CGFloat)a7;
- (id)_queryFramesWithQueryRect:(uint64_t)a3 additionalFrameOffset:(uint64_t)a4 itemIndexOffset:(CGFloat)a5 supplementaryOffsets:(CGFloat)a6 itemLimit:(CGFloat)a7;
- (id)_supplementaryFrameWithKind:(uint64_t)a3 absoluteIndex:(uint64_t)a4 additionalFrameOffset:(double)a5 interSolutionSpacing:(double)a6 repeatAxis:(double)a7;
- (id)_supplementaryFrameWithKind:(uint64_t)a3 index:(double)a4 additionalFrameOffset:(double)a5;
- (id)auxillaryFrames;
- (id)auxillaryHostAuxillaryItems;
- (id)auxillaryHostContainer;
- (id)auxillaryHostPreferredSizes;
- (id)auxillaryHostSupplementaryEnroller;
- (id)auxillaryHostTraitCollection;
- (id)copyWithZone:(_NSZone *)a3;
- (id)frameForAbsoluteIndex:(uint64_t)a3 additionalFrameOffset:(double)a4 interSolutionSpacing:(double)a5 repeatAxis:(double)a6;
- (id)initWithItem:(void *)a1;
- (id)initWithItem:(void *)a3 supplementaryEnroller:(void *)a4 container:(void *)a5 layoutAxis:(void *)a6 traitCollection:(void *)a7 maxFrameCount:(char)a8 layoutRTL:(void *)a9 preferredSizes:(void *)a10 solverResult:(void *)a11 solutionRecursionDepth:;
- (id)itemFrames;
- (id)queryFramesApplyingFrameOffset:(double)a3;
- (id)queryFramesWithItemLimit:(void *)a1;
- (id)queryFramesWithQueryRect:(uint64_t)a3 additionalFrameOffset:(uint64_t)a4 itemIndexOffset:(CGFloat)a5 itemLimit:(CGFloat)a6 supplementaryRepeatOffset:(CGFloat)a7;
- (id)queryFramesWithQueryRect:(uint64_t)a3 additionalFrameOffset:(uint64_t)a4 itemIndexOffset:(CGFloat)a5 supplementaryOffsets:(CGFloat)a6 itemLimit:(CGFloat)a7;
- (id)supplementaryFrameWithKind:(uint64_t)a3 absoluteIndex:(uint64_t)a4 additionalFrameOffset:(double)a5 interSolutionSpacing:(double)a6 repeatAxis:(double)a7;
- (id)supplementaryFrameWithKind:(uint64_t)a3 index:(double)a4 additionalFrameOffset:(double)a5;
- (int64_t)auxillaryHostAuxillaryKind;
- (uint64_t)_layoutAxisForGroup:(uint64_t)a1;
- (unint64_t)_arrangeSolutionItems:(void *)a3 alongLayoutAxis:(void *)a4 forContainer:(double)a5 additionalLayoutOffset:(double)a6 interItemSpacing:;
- (unint64_t)auxillaryHostLayoutAxis;
- (void)_enumerateSolutionFramesForQueryRect:(uint64_t)a3 itemLimit:(CGFloat)a4 withHandler:(CGFloat)a5;
- (void)_solveForContainer:(uint64_t)a3 layoutAxis:(void *)a4 traitCollection:(uint64_t)a5 maxFrameCount:(char)a6 layoutRTL:(void *)a7 preferredSizes:(uint64_t)a8 largestKnownItemSize:(double)a9 solutionRecursionDepth:(double)a10;
- (void)_solveSingleItemWithPreferredSize:(double)a3 groupMaxItemSize:(double)a4;
- (void)errorDescription;
- (void)preferredSizeGroupingRanges;
- (void)setSolveResult:(uint64_t)a1;
- (void)supplementaryOffsets;
@end

@implementation _UICollectionLayoutItemSolver

- (void)supplementaryOffsets
{
  if (a1)
  {
    a1 = [(_UICollectionLayoutItemSolverState *)a1[6] supplementaryFrameOffsets];
    v1 = vars8;
  }

  return a1;
}

- (id)itemFrames
{
  if (a1)
  {
    v1 = [(_UICollectionLayoutItemSolverState *)*(a1 + 48) itemFrames];
    v2 = v1;
    v3 = MEMORY[0x1E695E0F0];
    if (v1)
    {
      v3 = v1;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)layoutFrame
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3 = [v2 size];
    v4 = *(a1 + 24);
    [*(a1 + 32) displayScale];
    [v3 _effectiveSizeForContainer:v4 displayScale:0 ignoringInsets:?];
    v6 = v5;
    v8 = v7;
    v9 = *(a1 + 48);
    if (v9 && [v3 isEstimated])
    {
      if ([v2 isGroup])
      {
        [(_UICollectionPreferredSize *)v6 preferredSizeForOriginalSize:v8 fittingSize:*(v9 + 120) layoutSize:_UICollectionPreferredSize, v3];
      }

      else
      {
        v10 = [(_UICollectionLayoutItemSolverState *)v9 itemFrames];
        if ([v10 count] != 1)
        {
          v16 = [MEMORY[0x1E696AAA8] currentHandler];
          v17 = [v2 _externalDescription];
          [v16 handleFailureInMethod:sel_layoutFrame object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:411 description:{@"Compositional Layout internal error: Unexpectedly found more than one item frame when computing the layout frame for item %@. Solve result: %@", v17, v9}];
        }

        v11 = [v10 objectAtIndexedSubscript:0];
        if (v11)
        {
          v12 = v11[12];
        }

        else
        {
          v12 = 0.0;
        }

        [(_UICollectionPreferredSize *)v6 preferredSizeForOriginalSize:v8 fittingSize:v12 layoutSize:_UICollectionPreferredSize, v3];
      }
    }

    if (!*(a1 + 72))
    {
      if ([v2 isGroup])
      {
        v13 = *(a1 + 88);
        v14 = [(_UICollectionLayoutItemSolver *)*(a1 + 72) _additionalDimensionForRequiredEdgeSpacingAlongAxis:v13 group:v2 trailingEdgeOnly:0];
        if (fabs(v14) >= 2.22044605e-16)
        {
          _UISetSizeValueForAxis(v13, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), v14);
        }
      }
    }
  }

  return 0.0;
}

- (double)contentFrame
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = [(_UICollectionLayoutItemSolver *)a1 layoutFrame];
  [*(a1 + 16) _effectiveContentInsets];
  if (v4 != 0.0 || v3 != 0.0 || v6 != 0.0 || v5 != 0.0)
  {
    return v2 + v4;
  }

  return v2;
}

- (void)errorDescription
{
  if (a1)
  {
    v2 = a1[6];
    if (v2)
    {
      v2 = v2[10];
    }

    a1 = v2;
    v1 = vars8;
  }

  return a1;
}

- (id)auxillaryHostAuxillaryItems
{
  v2 = self;
  if (self)
  {
    self = self->_item;
  }

  v3 = [(_UICollectionLayoutItemSolver *)self supplementaryItems];
  v4 = v3;
  v5 = MEMORY[0x1E695E0F0];
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  if (v2)
  {
    item = v2->_item;
  }

  else
  {
    item = 0;
  }

  v9 = [(NSCollectionLayoutItem *)item decorationItems];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  v12 = v11;

  v13 = [v7 arrayByAddingObjectsFromArray:v12];

  return v13;
}

- (void)preferredSizeGroupingRanges
{
  if (a1)
  {
    v2 = a1[6];
    if (v2)
    {
      v2 = v2[9];
    }

    if (!v2)
    {
      v2 = MEMORY[0x1E695E0F0];
    }

    a1 = v2;
    v1 = vars8;
  }

  return a1;
}

- (double)offsetForEdgeSpacing
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = *(a1 + 48);
  v3 = v2;
  if (v2)
  {
    v4 = v2[11];
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = *(a1 + 16);
    v8 = [v7 _externalDescription];
    [v6 handleFailureInMethod:sel_offsetForEdgeSpacing object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:455 description:{@"Compositional layout internal bug: Attempting to access edge spacing offset before solving. Item: %@", v8}];

    v4 = 0.0;
  }

  return v4;
}

- (unint64_t)auxillaryHostLayoutAxis
{
  if (!self)
  {
    v5 = [0 isGroup];
    item = 0;
    if (v5)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (![(NSCollectionLayoutItem *)self->_item isGroup])
  {
    return 0;
  }

  item = self->_item;
LABEL_4:

  return [(_UICollectionLayoutItemSolver *)self _layoutAxisForGroup:?];
}

- (int64_t)auxillaryHostAuxillaryKind
{
  if (self)
  {
    self = self->_item;
  }

  if ([(_UICollectionLayoutItemSolver *)self isGroup])
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

- (id)auxillaryHostContainer
{
  v24 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if ([(NSCollectionLayoutItem *)self->_item isGroup])
    {
      container = self->_container;
LABEL_4:
      v4 = container;
      goto LABEL_17;
    }
  }

  else
  {
    v5 = [0 isGroup];
    container = 0;
    if (v5)
    {
      goto LABEL_4;
    }
  }

  if (CGRectIsNull(self->_uncommittedSolvedItemFrame))
  {
    if (os_variant_has_internal_diagnostics())
    {
      v8 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_11;
      }

      v7 = self->_item;
      v9 = [(NSCollectionLayoutItem *)v7 _externalDescription];
      v22 = 138412290;
      v23 = v9;
      _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "UIKit internal bug: Solver for item %@ queried for auxiliary host container without having solved the item. Using fallback behavior.", &v22, 0xCu);
    }

    else
    {
      v6 = *(__UILogGetCategoryCachedImpl("Assert", &auxillaryHostContainer___s_category) + 8);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
LABEL_12:
        [(UITraitCollection *)self->_traitCollection displayScale];
        v11 = v10;
        v12 = self->_container;
        v13 = self->_item;
        [(NSCollectionLayoutItem *)v13 _insetSizeForContainer:v12 displayScale:v11];
        width = v14;
        height = v16;

        v18 = [(_UICollectionPreferredSizes *)self->_preferredSizes objectAtIndexedSubscript:?];
        if (v18)
        {
          v19 = [(NSCollectionLayoutItem *)self->_item size];
          width = [(_UICollectionPreferredSize *)v18 preferredSizeForOriginalSize:v19 layoutSize:width, height];
          height = v20;
        }

        goto LABEL_16;
      }

      v7 = self->_item;
      v8 = v6;
      v9 = [(NSCollectionLayoutItem *)v7 _externalDescription];
      v22 = 138412290;
      v23 = v9;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "UIKit internal bug: Solver for item %@ queried for auxiliary host container without having solved the item. Using fallback behavior.", &v22, 0xCu);
    }

LABEL_11:
    goto LABEL_12;
  }

  width = self->_uncommittedSolvedItemFrame.size.width;
  height = self->_uncommittedSolvedItemFrame.size.height;
LABEL_16:
  v4 = [[_UICollectionLayoutContainer alloc] initWithContentSize:height contentInsets:0.0, 0.0, 0.0, 0.0];
LABEL_17:

  return v4;
}

- (id)auxillaryHostPreferredSizes
{
  if (self)
  {
    self = self->_preferredSizes;
  }

  return self;
}

- (id)auxillaryFrames
{
  if (a1)
  {
    v1 = [(_UICollectionLayoutItemSolverState *)*(a1 + 48) auxillaryFrames];
    v2 = v1;
    v3 = MEMORY[0x1E695E0F0];
    if (v1)
    {
      v3 = v1;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)auxillaryHostTraitCollection
{
  if (self)
  {
    self = self->_traitCollection;
  }

  return self;
}

- (CGPoint)auxillaryHostAdditionalFrameOffset
{
  v3 = *MEMORY[0x1E695EFF8];
  v2 = *(MEMORY[0x1E695EFF8] + 8);
  if (!self)
  {
    v10 = [0 isGroup];
    item = 0;
    if (v10)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (([(NSCollectionLayoutItem *)self->_item isGroup]& 1) == 0)
  {
    item = self->_item;
LABEL_4:
    [(NSCollectionLayoutItem *)item _effectiveContentInsets];
    v2 = v6;
    v3 = v7;
  }

LABEL_5:
  v8 = v3;
  v9 = v2;
  result.y = v9;
  result.x = v8;
  return result;
}

- (id)auxillaryHostSupplementaryEnroller
{
  if (self)
  {
    supplementaryEnroller = self->_supplementaryEnroller;
    if (supplementaryEnroller)
    {
      goto LABEL_3;
    }

    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:1594 description:{@"Invalid parameter not satisfying: %@", @"self.supplementaryEnroller"}];

    if (self)
    {
      supplementaryEnroller = self->_supplementaryEnroller;
      goto LABEL_3;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:0 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1594 description:{@"Invalid parameter not satisfying: %@", @"self.supplementaryEnroller"}];
  }

  supplementaryEnroller = 0;
LABEL_3:

  return supplementaryEnroller;
}

- (CGSize)auxillaryHostContentSize
{
  v2 = self;
  v25 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_item;
  }

  if ([(_UICollectionLayoutItemSolver *)self isGroup])
  {
    [(_UICollectionLayoutItemSolver *)v2 contentFrame];
    width = v3;
    height = v5;
    goto LABEL_15;
  }

  if (!CGRectIsNull(v2->_uncommittedSolvedItemFrame))
  {
    width = v2->_uncommittedSolvedItemFrame.size.width;
    height = v2->_uncommittedSolvedItemFrame.size.height;
    goto LABEL_15;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v9 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    v8 = v2->_item;
    v10 = [(NSCollectionLayoutItem *)v8 _externalDescription];
    v23 = 138412290;
    v24 = v10;
    _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "UIKit internal bug: Solver for item %@ queried for auxiliary host content size without having solved the item. Using fallback behavior.", &v23, 0xCu);
LABEL_9:

LABEL_10:
    goto LABEL_11;
  }

  v7 = *(__UILogGetCategoryCachedImpl("Assert", &auxillaryHostContentSize___s_category) + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = v2->_item;
    v9 = v7;
    v10 = [(NSCollectionLayoutItem *)v8 _externalDescription];
    v23 = 138412290;
    v24 = v10;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "UIKit internal bug: Solver for item %@ queried for auxiliary host content size without having solved the item. Using fallback behavior.", &v23, 0xCu);
    goto LABEL_9;
  }

LABEL_11:
  v11 = [(_UICollectionPreferredSizes *)v2->_preferredSizes objectAtIndexedSubscript:?];
  v12 = [(NSCollectionLayoutItem *)v2->_item size];
  [(UITraitCollection *)v2->_traitCollection displayScale];
  v14 = v13;
  item = v2->_item;
  container = v2->_container;
  v17 = item;
  [(NSCollectionLayoutItem *)v17 _insetSizeForContainer:container displayScale:v14];
  width = v18;
  height = v19;

  if (v11)
  {
    width = [(_UICollectionPreferredSize *)v11 preferredSizeForOriginalSize:v12 layoutSize:width, height];
    height = v20;
  }

LABEL_15:
  v21 = width;
  v22 = height;
  result.height = v22;
  result.width = v21;
  return result;
}

- (id)initWithItem:(void *)a3 supplementaryEnroller:(void *)a4 container:(void *)a5 layoutAxis:(void *)a6 traitCollection:(void *)a7 maxFrameCount:(char)a8 layoutRTL:(void *)a9 preferredSizes:(void *)a10 solverResult:(void *)a11 solutionRecursionDepth:
{
  if (!a1)
  {
    return 0;
  }

  v22.receiver = a1;
  v22.super_class = _UICollectionLayoutItemSolver;
  v18 = objc_msgSendSuper2(&v22, sel_init);
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(v18 + 2, a2);
    objc_storeStrong(v19 + 8, a3);
    objc_storeStrong(v19 + 3, a4);
    v19[11] = a5;
    objc_storeStrong(v19 + 4, a6);
    v19[10] = a7;
    *(v19 + 8) = a8;
    objc_storeStrong(v19 + 7, a9);
    objc_storeStrong(v19 + 6, a10);
    v19[9] = a11;
    v20 = *(MEMORY[0x1E695F050] + 16);
    *(v19 + 7) = *MEMORY[0x1E695F050];
    *(v19 + 8) = v20;
  }

  return v19;
}

- (id)initWithItem:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = objc_alloc_init(_UICollectionLayoutSupplementaryEnroller);
  v5 = [(_UICollectionLayoutItemSolver *)a1 initWithItem:a2 supplementaryEnroller:v4 container:0 layoutAxis:0 traitCollection:0 maxFrameCount:0 layoutRTL:0 preferredSizes:0 solverResult:0 solutionRecursionDepth:0];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v17 = [_UICollectionLayoutItemSolver allocWithZone:a3];
  if (self)
  {
    v4 = self->_item;
    v5 = self->_supplementaryEnroller;
    v6 = self->_container;
    layoutAxis = self->_layoutAxis;
    v8 = self->_traitCollection;
    maxFrameCount = self->_maxFrameCount;
    layoutRTL = self->_layoutRTL;
    v11 = self->_preferredSizes;
    v12 = self->_solveResult;
    solutionRecursionDepth = self->_solutionRecursionDepth;
  }

  else
  {
    v12 = 0;
    layoutRTL = 0;
    v8 = 0;
    v6 = 0;
    v4 = 0;
    v5 = 0;
    layoutAxis = 0;
    maxFrameCount = 0;
    v11 = 0;
    solutionRecursionDepth = 0;
  }

  v14 = [(_UICollectionLayoutItemSolver *)v17 initWithItem:v4 supplementaryEnroller:v5 container:v6 layoutAxis:layoutAxis traitCollection:v8 maxFrameCount:maxFrameCount layoutRTL:layoutRTL preferredSizes:v11 solverResult:v12 solutionRecursionDepth:solutionRecursionDepth];

  *(v14 + 6) = self->_largestKnownItemSize;
  size = self->_uncommittedSolvedItemFrame.size;
  *(v14 + 7) = self->_uncommittedSolvedItemFrame.origin;
  *(v14 + 8) = size;
  return v14;
}

- (void)_solveForContainer:(uint64_t)a3 layoutAxis:(void *)a4 traitCollection:(uint64_t)a5 maxFrameCount:(char)a6 layoutRTL:(void *)a7 preferredSizes:(uint64_t)a8 largestKnownItemSize:(double)a9 solutionRecursionDepth:(double)a10
{
  v339 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v19 = a1;
  if (a5 < 0)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = a1;
    [v21 handleFailureInMethod:sel__solveForContainer_layoutAxis_traitCollection_maxFrameCount_layoutRTL_preferredSizes_largestKnownItemSize_solutionRecursionDepth_ object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:552 description:{@"Invalid parameter not satisfying: %@", @"maxFrameCount >= 0"}];

    if (a7)
    {
      goto LABEL_4;
    }
  }

  else if (a7)
  {
LABEL_4:
    v20 = a7;
    goto LABEL_7;
  }

  v20 = objc_alloc_init(_UICollectionPreferredSizes);
LABEL_7:
  v22 = *(v19 + 56);
  *(v19 + 56) = v20;

  objc_storeStrong((v19 + 24), a2);
  *(a1 + 88) = a3;
  objc_storeStrong((a1 + 32), a4);
  v23 = a1;
  *(a1 + 8) = a6;
  *(a1 + 72) = a8;
  *(a1 + 80) = a5;
  *(a1 + 96) = a9;
  *(a1 + 104) = a10;
  v24 = *(a1 + 48);
  *(a1 + 48) = 0;

  if (!a8)
  {
    v25 = objc_alloc_init(_UICollectionLayoutSupplementaryEnroller);
    v26 = *(a1 + 64);
    *(a1 + 64) = v25;
  }

  if (![*(a1 + 16) isGroup])
  {
    v56 = [(_UICollectionPreferredSizes *)*(a1 + 56) objectAtIndexedSubscript:?];
    v23 = a1;
    [(_UICollectionLayoutItemSolver *)a1 _solveSingleItemWithPreferredSize:v56 groupMaxItemSize:*(a1 + 96), *(a1 + 104)];

    goto LABEL_209;
  }

  if ([*(a1 + 16) hasCustomGroupItemProvider])
  {
    if (![*(a1 + 16) isGroup])
    {
      goto LABEL_209;
    }

    v27 = *(a1 + 16);
    [*(a1 + 32) displayScale];
    v29 = v28;
    v30 = [*(a1 + 16) size];
    [v30 _effectiveSizeForContainer:*(a1 + 24) displayScale:1 ignoringInsets:v29];
    v32 = v31;
    v34 = v33;

    v35 = [_UICollectionLayoutContainer alloc];
    [*(a1 + 16) _effectiveContentInsets];
    v40 = [(_UICollectionLayoutContainer *)v35 initWithContentSize:v32 contentInsets:v34, v36, v37, v38, v39];
    v41 = [[_UICollectionLayoutEnvironment alloc] initWithContainer:v40 traitCollection:*(a1 + 32) dataSourceSnapshot:0];
    v42 = [v27 customGroupItemProvider];
    v43 = (v42)[2](v42, v41);

    v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v45 = [[_UICollectionLayoutAuxillaryItemSolver alloc] initWithAuxillaryHost:a1];
    v46 = [(_UICollectionLayoutAuxillaryItemSolver *)v45 supplementaryFrames];
    aBlock = MEMORY[0x1E69E9820];
    v330 = 3221225472;
    v331 = __66___UICollectionLayoutItemSolver__solveWithCustomGroupItemProvider__block_invoke;
    v332 = &unk_1E70FADE8;
    v47 = v44;
    v333 = v47;
    [v46 enumerateObjectsUsingBlock:&aBlock];

    buf.receiver = 0;
    buf.super_class = &buf;
    v308 = 0x4010000000;
    v309 = "";
    v48 = *(MEMORY[0x1E695F058] + 16);
    v310[0] = *MEMORY[0x1E695F058];
    v310[1] = v48;
    v336[0] = MEMORY[0x1E69E9820];
    v336[1] = 3221225472;
    v336[2] = __66___UICollectionLayoutItemSolver__solveWithCustomGroupItemProvider__block_invoke_2;
    v336[3] = &unk_1E70FAF10;
    p_buf = &buf;
    v336[4] = a1;
    v49 = v47;
    v337 = v49;
    [v43 enumerateObjectsUsingBlock:v336];
    v50 = [_UICollectionLayoutItemSolverState alloc];
    v51 = [v43 count];
    v52 = [(_UICollectionLayoutAuxillaryItemSolver *)v45 supplementaryFrames];
    v53 = [v52 count];
    v54 = [(_UICollectionLayoutItemSolverState *)v50 initWithSolutionFrames:v49 itemFrameCount:v51 supplementaryFrameCount:v53 solvedFittingFrame:MEMORY[0x1E695E0F0] preferredSizeGroupingRanges:0 additionalOffsetForOutermostGroup:*(buf.super_class + 4) errorDescription:*(buf.super_class + 5), *(buf.super_class + 6), *(buf.super_class + 7), *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];

    v55 = *(a1 + 48);
    *(a1 + 48) = v54;

    _Block_object_dispose(&buf, 8);
    goto LABEL_208;
  }

  v57 = *(a1 + 16);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v252 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = a1;
    [v252 handleFailureInMethod:sel__solveGroup object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:636 description:@"Cannot solve for a non-group item."];
  }

  v59 = *(v23 + 16);
  v60 = *(v23 + 24);
  v271 = *(v23 + 32);
  v61 = *(v23 + 64);
  v285 = *(v23 + 72);
  [v60 contentInsets];
  v263 = v60;
  [v60 contentSize];
  v62 = *(v23 + 88);
  v274 = v59;
  v63 = [(_UICollectionLayoutItemSolver *)v23 _layoutAxisForGroup:v59];
  if (v63 == 1)
  {
    v64 = 2;
  }

  else
  {
    v64 = v63 == 2;
  }

  v266 = *(v23 + 8);
  v267 = v62;
  v278 = v63;
  if (v63)
  {
    if (v62)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v253 = [MEMORY[0x1E696AAA8] currentHandler];
    [v253 handleFailureInMethod:sel__solveGroup object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:649 description:@"No valid layout axis detected."];

    if (v62)
    {
      goto LABEL_21;
    }
  }

  v254 = [MEMORY[0x1E696AAA8] currentHandler];
  [v254 handleFailureInMethod:sel__solveGroup object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:650 description:@"No valid layout axis detected."];

LABEL_21:
  v65 = [v274 size];
  v264 = [v65 _isEstimatedForAxis:v278];

  v66 = [v274 interItemSpacing];
  [v66 spacing];
  v260 = v67;

  [v271 displayScale];
  v69 = v68;
  v70 = [v274 size];
  [v70 _effectiveSizeForContainer:v263 displayScale:0 ignoringInsets:v69];
  v72 = v71;
  v74 = v73;

  v75 = a1;
  if (*(a1 + 72))
  {
    goto LABEL_37;
  }

  v76 = [v274 edgeSpacing];
  if ([v76 _hasSpacing])
  {
    if (v62 == 2)
    {
      v78 = [v76 top];
      if ([v78 isFlexibleSpacing])
      {
      }

      else
      {
        v82 = [v76 bottom];
        v83 = [v82 isFlexibleSpacing];

        if (!v83)
        {
          goto LABEL_36;
        }
      }

      v81 = *(__UILogGetCategoryCachedImpl("CollectionLayout", &qword_1ED49CCA0) + 8);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.receiver) = 0;
        goto LABEL_35;
      }
    }

    else if (v62 == 1)
    {
      v77 = [v76 leading];
      if ([v77 isFlexibleSpacing])
      {
      }

      else
      {
        v79 = [v76 trailing];
        v80 = [v79 isFlexibleSpacing];

        if (!v80)
        {
          goto LABEL_36;
        }
      }

      v81 = *(__UILogGetCategoryCachedImpl("CollectionLayout", &_MergedGlobals_1033) + 8);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.receiver) = 0;
LABEL_35:
        _os_log_impl(&dword_188A29000, v81, OS_LOG_TYPE_ERROR, "A NSCollectionLayoutGroup has specified flexible edge spacing along primary layout axis; flexible spacing will be ignored but any required spacing will be applied.", &buf, 2u);
      }
    }
  }

LABEL_36:

  v75 = a1;
LABEL_37:
  v269 = [v274 count];
  [v274 _effectiveContentInsets];
  if (v85 >= 0.5)
  {
    v88 = v85;
  }

  else
  {
    v88 = v72 * v85;
  }

  if (v87 >= 0.5)
  {
    v89 = v87;
  }

  else
  {
    v89 = v72 * v87;
  }

  if (v84 >= 0.5)
  {
    v90 = v84;
  }

  else
  {
    v90 = v74 * v84;
  }

  if (v86 >= 0.5)
  {
    v91 = v86;
  }

  else
  {
    v91 = v74 * v86;
  }

  v261 = [[_UICollectionLayoutContainer alloc] initWithContentSize:v72 contentInsets:v74, v90, v88, v91, v89];
  [v261 effectiveContentSize];
  v259.width = v92;
  v259.height = v93;
  v94 = _UISizeValueForAxis(v278, v92, v93);
  v95 = v264;
  if (v94 > 0.0)
  {
    v95 = 1;
  }

  v257 = *(MEMORY[0x1E695F060] + 8);
  v258 = *MEMORY[0x1E695F060];
  v96 = v74 == v257 && v72 == *MEMORY[0x1E695F060];
  if (v96 || (v95 & 1) == 0)
  {
    v150 = MEMORY[0x1E696AD60];
    [v263 contentInsets];
    v151 = NSStringFromDirectionalEdgeInsets(v342);
    [v263 contentSize];
    v152 = NSStringFromCGSize(v341);
    v153 = [v150 stringWithFormat:@"There is no room for this NSCollectionLayoutGroup to fit into its parent group or section, or it has no room for any subitems itself. Inspect the parent and ensure the contentInsets (%@) do not result in a negative effectiveContentSize when applied to size: %@.", v151, v152];

    [v274 contentInsets];
    if (v157 != 0.0 || v154 != 0.0 || v156 != 0.0 || v155 != 0.0)
    {
      [v274 contentInsets];
      v158 = NSStringFromDirectionalEdgeInsets(v343);
      v159 = NSStringFromCGSize(v259);
      [v153 appendFormat:@"\nAlso ensure that the group's contentInsets (%@) leave space for its subitems after being applied to the group's effective size (%@).", v158, v159];
    }

    v160 = [v274 _externalDescription];
    [v153 appendFormat:@"\nGroup: %@", v160];

    v161 = [_UICollectionLayoutItemSolverState alloc];
    v162 = [(_UICollectionLayoutItemSolverState *)v161 initWithSolutionFrames:0 itemFrameCount:0 supplementaryFrameCount:MEMORY[0x1E695E0F0] solvedFittingFrame:v153 preferredSizeGroupingRanges:*MEMORY[0x1E695F058] additionalOffsetForOutermostGroup:*(MEMORY[0x1E695F058] + 8) errorDescription:*(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    v163 = *(a1 + 48);
    *(a1 + 48) = v162;

    goto LABEL_207;
  }

  v256 = *(v75 + 80);
  v270 = [v274 subitems];
  v323 = 0u;
  v322 = 0u;
  v321 = 0u;
  v315 = v94;
  v316 = v256;
  v317 = 0u;
  v318 = 0u;
  v319 = 0u;
  v320 = objc_opt_new();
  *&v321 = objc_opt_new();
  v97 = a1;
  v98 = v267;
  *(&v321 + 1) = objc_opt_new();
  v99 = v261;
  *&v322 = v99;
  *(&v322 + 1) = objc_opt_new();
  LODWORD(v323) = 0x1000000;
  *(&v323 + 1) = 0;
  if (v316 < 1)
  {
    goto LABEL_135;
  }

  v100 = fabs(v260);
  while (1)
  {
    v280 = [v270 objectAtIndexedSubscript:v319];
    v101 = [_UICollectionLayoutItemSolver alloc];
    obj = v101 ? [(_UICollectionLayoutItemSolver *)v101 initWithItem:v280 supplementaryEnroller:v61 container:0 layoutAxis:0 traitCollection:0 maxFrameCount:0 layoutRTL:0 preferredSizes:0 solverResult:0 solutionRecursionDepth:0]: 0;
    v102 = [(_UICollectionPreferredSizes *)*(v97 + 56) preferredSizesApplyingFrameOffset:v320 supplementaryBaseOffsets:?];
    [(_UICollectionLayoutItemSolver *)obj _solveForContainer:v322 layoutAxis:v98 traitCollection:v271 maxFrameCount:v316 layoutRTL:v266 preferredSizes:v102 largestKnownItemSize:*(v97 + 72) + 1 solutionRecursionDepth:*(v97 + 96), *(v97 + 104)];
    v272 = v102;
    v103 = [(_UICollectionLayoutItemSolver *)obj errorDescription];
    v104 = v103 == 0;

    if (!v104)
    {
      break;
    }

    v105 = [v280 layoutSize];
    v106 = [v105 _containerSizeDependentAxes];
    v107 = obj;
    if (obj)
    {
      v107 = obj[6];
      if (v107)
      {
        v107 = v107[7];
      }
    }

    v265 = v106 & v278;
    if (v107 >= v316)
    {
      v107 = v316;
    }

    v268 = v107;
    v275 = v105;
    if (v100 >= 2.22044605e-16)
    {
      v108 = BYTE2(v323);
      if ((([*(&v322 + 1) count] != 0) & (((v106 & v278) != v278) | v108)) == 1)
      {
        v315 = v315 - v260;
      }
    }

    [(_UICollectionLayoutItemSolver *)obj layoutFrame];
    v111 = _UISizeValueForAxis(v278, v109, v110);
    v315 = v315 - v111;
    if (obj)
    {
      v112 = obj[2];
    }

    else
    {
      v112 = 0;
    }

    v113 = v112;
    v114 = [v113 edgeSpacing];
    [v114 edgeOutsets];
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v122 = v121;

    v123 = _UITotalEdgeDimensionsForLayoutAxis(v278, v116, v118, v120, v122);
    v124 = v315 - v123;
    v315 = v124;
    v125 = v275;
    if (v269 <= 0)
    {
      BYTE3(v323) = (v124 >= -0.25) | v264 & 1;
      if (!((v124 >= -0.25) | v264 & 1))
      {
        v134 = [*(&v322 + 1) count];
        if (obj)
        {
          if (!v134 && *(obj + 9) == 1)
          {
            BYTE3(v323) = 1;
          }
        }
      }
    }

    if (BYTE3(v323) == 1)
    {
      v126 = [_UICollectionSolutionGroupArrangementItem alloc];
      if (v126 && (buf.receiver = v126, buf.super_class = _UICollectionSolutionGroupArrangementItem, v127 = objc_msgSendSuper2(&buf, sel_init), (v128 = v127) != 0))
      {
        objc_storeStrong(v127 + 1, obj);
        v129 = [(_UICollectionLayoutItemSolver *)obj layoutFrame];
        v130 = v128;
        *(v128 + 2) = v129;
        v128[3] = v131;
        v128[4] = v132;
        v128[5] = v133;
      }

      else
      {
        v130 = 0;
      }

      v262 = v130;
      [*(&v322 + 1) addObject:?];
      v313 = 0u;
      v314 = 0u;
      v311 = 0u;
      v312 = 0u;
      v135 = [(_UICollectionLayoutItemSolver *)obj preferredSizeGroupingRanges];
      v136 = [v135 countByEnumeratingWithState:&v311 objects:v336 count:16];
      if (v136)
      {
        v137 = *v312;
        do
        {
          for (i = 0; i != v136; ++i)
          {
            if (*v312 != v137)
            {
              objc_enumerationMutation(v135);
            }

            v139 = [*(*(&v311 + 1) + 8 * i) rangeValue];
            v140 = v321;
            v142 = [MEMORY[0x1E696B098] valueWithRange:{v317 + v139, v141}];
            [v140 addObject:v142];
          }

          v136 = [v135 countByEnumeratingWithState:&v311 objects:v336 count:16];
        }

        while (v136);
      }

      if (([v280 isGroup] & 1) == 0)
      {
        [*(&v321 + 1) addIndex:{objc_msgSend(*(&v322 + 1), "count") - 1}];
        if ((v323 & 1) == 0)
        {
          if ([v275 _axesUniformAcrossSiblings])
          {
            LOBYTE(v323) = 1;
          }
        }
      }

      if ((BYTE1(v323) & 1) == 0 && v265 == v278)
      {
        BYTE1(v323) = 1;
      }

      *&v319 = v319 + 1;
      v143 = v319;
      if (v143 >= [v270 count])
      {
        *&v319 = 0;
        ++*(&v318 + 1);
      }

      *(&v319 + 1) += v268;
      v316 -= v268;
      *&v317 = v268 + v317;
      v144 = obj;
      if (obj)
      {
        v144 = obj[6];
        if (v144)
        {
          v144 = v144[8];
        }
      }

      *(&v317 + 1) += v144;
      if (v269 < 1)
      {
        v149 = v264;
        if (*(&v318 + 1) <= 0)
        {
          v149 = 0;
        }

        if (v149 == 1)
        {
LABEL_105:
          BYTE3(v323) = 0;
        }
      }

      else
      {
        *&v318 = v318 + 1;
        if (v318 >= v269)
        {
          goto LABEL_105;
        }
      }

      v125 = v275;
      goto LABEL_107;
    }

    if (![*(&v322 + 1) count])
    {
      v167 = MEMORY[0x1E696AEC0];
      v168 = NSStringFromCGSize(v259);
      v169 = [v274 _externalDescription];
      v170 = [v167 stringWithFormat:@"NSCollectionLayoutItem created with invalid combination of spacing and size specified. This group cannot fit even a single item. Inspect the spacing and size of the items in this group and ensure that they fit into the group when its effective size is %@.\nGroup: %@", v168, v169];
      v171 = *(&v323 + 1);
      *(&v323 + 1) = v170;

      goto LABEL_134;
    }

LABEL_107:
    if ((BYTE3(v323) & 1) == 0 && (BYTE2(v323) & 1) == 0 && v100 >= 2.22044605e-16 && (BYTE1(v323) & 1) != 0 && [*(&v322 + 1) count] >= 2)
    {
      v145 = _UISetSizeValueForAxis(v278, v258, v257, -v260 * ([*(&v322 + 1) count] - 1));
      v147 = [[_UICollectionLayoutContainer alloc] initWithContentSize:v259.height + v146 contentInsets:0.0, 0.0, 0.0, 0.0];
      v315 = v94;
      v316 = v256;
      v317 = 0u;
      v318 = 0u;
      v319 = 0u;
      if (v320)
      {
        [v320[1] removeAllObjects];
      }

      [v321 removeAllObjects];
      [*(&v321 + 1) removeAllIndexes];
      objc_storeStrong(&v322, v147);
      [*(&v322 + 1) removeAllObjects];
      LODWORD(v323) = 0x1000000;
      v148 = *(&v323 + 1);
      *(&v323 + 1) = 0;

      BYTE2(v323) = 1;
      v125 = v275;
    }

    v97 = a1;
    v98 = v267;
    if (BYTE3(v323) != 1 || v316 < 1)
    {
      goto LABEL_135;
    }
  }

  if (!obj)
  {
    v165 = 0;
    goto LABEL_235;
  }

  v164 = obj[6];
  v165 = v164;
  if (!v164)
  {
LABEL_235:
    v166 = 0;
    goto LABEL_133;
  }

  v166 = *(v164 + 10);
LABEL_133:
  objc_storeStrong(&v323 + 1, v166);

  BYTE3(v323) = 0;
LABEL_134:

  v97 = a1;
LABEL_135:
  if (v323 == 1)
  {
    v172 = *(&v321 + 1);
    buf.receiver = MEMORY[0x1E69E9820];
    buf.super_class = 3254779904;
    v308 = __44___UICollectionLayoutItemSolver__solveGroup__block_invoke;
    v309 = &__block_descriptor_152_e8_32n41_8_8_t0w64_s64_s72_s80_s88_s96_t104w4_s112_e24_v32__0__NSRange_QQ_8_B24l;
    __copy_constructor_8_8_t0w64_s64_s72_s80_s88_s96_t104w4_s112(v310, &v315);
    [v172 enumerateRangesUsingBlock:&buf];
    __destructor_8_s64_s72_s80_s88_s96_s112(v310);
  }

  if (v285 || *(v97 + 72))
  {
    v174 = *MEMORY[0x1E695EFF8];
    v173 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    v232 = [v274 edgeSpacing];
    if (([v232 _hasSpacing] & 1) != 0 && (v267 - 1) < 2)
    {
      aBlock = MEMORY[0x1E69E9820];
      v330 = 3221225472;
      v331 = __107___UICollectionLayoutItemSolver__outerContainerOffsetForGroup_groupComputedSize_container_outerLayoutAxis___block_invoke;
      v332 = &unk_1E70FAF38;
      v333 = v263;
      v334 = v72;
      v335 = v74;
      v233 = _Block_copy(&aBlock);
      *v327 = MEMORY[0x1E69E9820];
      *&v327[8] = 3221225472;
      *&v327[16] = __107___UICollectionLayoutItemSolver__outerContainerOffsetForGroup_groupComputedSize_container_outerLayoutAxis___block_invoke_2;
      *&v327[24] = &unk_1E70FAF60;
      v234 = v232;
      *&v327[32] = v234;
      objb = _Block_copy(v327);
      *&v326.a = MEMORY[0x1E69E9820];
      *&v326.b = 3221225472;
      *&v326.c = __107___UICollectionLayoutItemSolver__outerContainerOffsetForGroup_groupComputedSize_container_outerLayoutAxis___block_invoke_3;
      *&v326.d = &unk_1E70FAF88;
      v235 = v234;
      *&v326.tx = v235;
      v236 = _Block_copy(&v326);
      if (v267 == 1)
      {
        v237 = 2;
      }

      else
      {
        v237 = v267 == 2;
      }

      v238 = objb[2](objb, v237);
      v239 = v233[2](v233, v237);
      v236[2](v236, v237);
      if (v238 < 1)
      {
        v241 = 0.0;
      }

      else
      {
        v241 = (v239 - v240) / v238;
      }

      v242 = [v235 top];
      [v242 spacing];
      v173 = v243;
      if (v267 == 1)
      {
        v244 = [v235 top];
        v245 = [v244 isFlexibleSpacing];

        v246 = [v235 leading];
        v247 = v246;
        if (!v245)
        {
          v241 = 0.0;
        }

        [v246 spacing];
        v174 = v248;
        v173 = v173 + v241;
      }

      else
      {

        v247 = [v235 leading];
        [v247 spacing];
        v250 = v249;
        v251 = [v235 leading];
        if (![v251 isFlexibleSpacing])
        {
          v241 = 0.0;
        }

        v174 = v250 + v241;
      }
    }

    else
    {
      v174 = *MEMORY[0x1E695EFF8];
      v173 = *(MEMORY[0x1E695EFF8] + 8);
    }
  }

  v175 = *(&v322 + 1);
  v176 = [v274 interItemSpacing];
  [(_UICollectionLayoutItemSolver *)v175 _arrangeSolutionItems:v278 alongLayoutAxis:v99 forContainer:v176 additionalLayoutOffset:v174 interItemSpacing:v173];

  v305 = 0u;
  v306 = 0u;
  v303 = 0u;
  v304 = 0u;
  v177 = *(&v322 + 1);
  v178 = [v177 countByEnumeratingWithState:&v303 objects:&aBlock count:16];
  if (v178)
  {
    v179 = *v304;
    do
    {
      for (j = 0; j != v178; ++j)
      {
        if (*v304 != v179)
        {
          objc_enumerationMutation(v177);
        }

        v328 = *(*(&v303 + 1) + 8 * j);
        v181 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v328 count:1];
        [(_UICollectionLayoutItemSolver *)v181 _arrangeSolutionItems:v64 alongLayoutAxis:v99 forContainer:0 additionalLayoutOffset:v174 interItemSpacing:v173];
      }

      v178 = [v177 countByEnumeratingWithState:&v303 objects:&aBlock count:16];
    }

    while (v178);
  }

  if (v266 && ([v274 ignoresRTL] & 1) == 0)
  {
    v182 = *(&v322 + 1);
    if (([*(a1 + 16) isGroup] & 1) == 0)
    {
      v255 = [MEMORY[0x1E696AAA8] currentHandler];
      [v255 handleFailureInMethod:sel__transformGroupArrangementItemsForRTL_ object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1249 description:{@"Invalid parameter not satisfying: %@", @"self.item.isGroup"}];
    }

    if (([*(a1 + 16) ignoresRTL] & 1) == 0)
    {
      [*(a1 + 32) displayScale];
      v184 = v183;
      v185 = [*(a1 + 16) size];
      [v185 _effectiveSizeForContainer:*(a1 + 24) displayScale:0 ignoringInsets:v184];
      v187 = v186;

      memset(&v326, 0, sizeof(v326));
      CGAffineTransformMakeTranslation(&v326, v187, 0.0);
      memset(&v325, 0, sizeof(v325));
      *v327 = v326;
      CGAffineTransformScale(&v325, v327, -1.0, 1.0);
      [*(a1 + 16) isCustomGroup];
      *v327 = MEMORY[0x1E69E9820];
      *&v327[8] = 3221225472;
      *&v327[16] = __71___UICollectionLayoutItemSolver__transformGroupArrangementItemsForRTL___block_invoke;
      *&v327[24] = &__block_descriptor_80_e58_v32__0___UICollectionSolutionGroupArrangementItem_8Q16_B24l;
      *&v327[32] = v325;
      [v182 enumerateObjectsUsingBlock:v327];
    }
  }

  v273 = [[_UICollectionLayoutAuxillaryItemSolver alloc] initWithAuxillaryHost:a1];
  v276 = [(_UICollectionLayoutAuxillaryItemSolver *)v273 supplementaryFrames];
  v188 = [v276 count];
  *(&v317 + 1) += v188;
  if (!v285)
  {
    v301 = 0u;
    v302 = 0u;
    v299 = 0u;
    v300 = 0u;
    v189 = v276;
    v190 = [v189 countByEnumeratingWithState:&v299 objects:v327 count:16];
    if (v190)
    {
      v191 = *v300;
      do
      {
        for (k = 0; k != v190; ++k)
        {
          if (*v300 != v191)
          {
            objc_enumerationMutation(v189);
          }

          v193 = *(*(&v299 + 1) + 8 * k);
          if (v193)
          {
            v193 = v193[7];
          }

          v194 = v193;
          [(_UICollectionLayoutSupplementaryEnroller *)v61 commitEnrollment:v194];
        }

        v190 = [v189 countByEnumeratingWithState:&v299 objects:v327 count:16];
      }

      while (v190);
    }
  }

  obja = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v276];
  v297 = 0u;
  v298 = 0u;
  v295 = 0u;
  v296 = 0u;
  v279 = *(&v322 + 1);
  v195 = [v279 countByEnumeratingWithState:&v295 objects:&v326 count:16];
  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  if (v195)
  {
    v281 = *v296;
    do
    {
      v200 = 0;
      do
      {
        if (*v296 != v281)
        {
          objc_enumerationMutation(v279);
        }

        v201 = *(*(&v295 + 1) + 8 * v200);
        if (v201)
        {
          v202 = *(v201 + 8);
          v203 = *(v201 + 16);
          v204 = *(v201 + 24);
        }

        else
        {
          v202 = 0;
          v204 = 0.0;
          v203 = 0.0;
        }

        v205 = [(_UICollectionLayoutItemSolver *)v202 queryFramesApplyingFrameOffset:v203, v204];

        [obja addObjectsFromArray:v205];
        if (!v285)
        {
          v293 = 0u;
          v294 = 0u;
          v291 = 0u;
          v292 = 0u;
          v206 = v205;
          v207 = [v206 countByEnumeratingWithState:&v291 objects:&v325 count:16];
          if (v207)
          {
            v208 = *v292;
            do
            {
              for (m = 0; m != v207; ++m)
              {
                if (*v292 != v208)
                {
                  objc_enumerationMutation(v206);
                }

                v210 = *(*(&v291 + 1) + 8 * m);
                if (v210 && (*(v210 + 32) & 0xFFFFFFFFFFFFFFFELL) == 2)
                {
                  v211 = *(v210 + 56);
                  [(_UICollectionLayoutSupplementaryEnroller *)v61 commitEnrollment:v211];
                }
              }

              v207 = [v206 countByEnumeratingWithState:&v291 objects:&v325 count:16];
            }

            while (v207);
          }
        }

        if (v201)
        {
          v212 = *(v201 + 16);
          v213 = *(v201 + 24);
          v214 = *(v201 + 32);
          v215 = *(v201 + 40);
        }

        else
        {
          v213 = 0;
          v214 = 0;
          v215 = 0;
          v212 = 0;
        }

        v344.origin.x = x;
        v344.origin.y = y;
        v344.size.width = width;
        v344.size.height = height;
        v345 = CGRectUnion(v344, *&v212);
        x = v345.origin.x;
        y = v345.origin.y;
        width = v345.size.width;
        height = v345.size.height;

        ++v200;
      }

      while (v200 != v195);
      v216 = [v279 countByEnumeratingWithState:&v295 objects:&v326 count:16];
      v195 = v216;
    }

    while (v216);
  }

  if (!v285)
  {
    v217 = [(_UICollectionLayoutItemSolver *)*(a1 + 72) _additionalDimensionForRequiredEdgeSpacingAlongAxis:v267 group:v274 trailingEdgeOnly:1];
    v218 = _UISetSizeValueForAxis(v267, v258, v257, v217);
    v220 = v219;
    [(_UICollectionLayoutSupplementaryEnroller *)v61 pruneUncommittedEnrollments];
    width = width + v218;
    height = height + v220;
  }

  v289 = 0u;
  v290 = 0u;
  v287 = 0u;
  v288 = 0u;
  v221 = obja;
  v222 = [v221 countByEnumeratingWithState:&v287 objects:v324 count:16];
  if (v222)
  {
    v223 = 0;
    v224 = *v288;
    do
    {
      for (n = 0; n != v222; ++n)
      {
        if (*v288 != v224)
        {
          objc_enumerationMutation(v221);
        }

        v226 = *(*(&v287 + 1) + 8 * n);
        if (v226)
        {
          v227 = *(v226 + 32);
          if (v227 == 1)
          {
            v228 = v223++;
LABEL_203:
            *(v226 + 16) = v228;
            continue;
          }

          if (!v285 && (v227 & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            v229 = *(v226 + 56);
            v228 = [(_UICollectionLayoutSupplementaryEnroller *)v61 kindIndexForEnrollmentIdentifier:v229];

            goto LABEL_203;
          }
        }
      }

      v222 = [v221 countByEnumeratingWithState:&v287 objects:v324 count:16];
    }

    while (v222);
  }

  v230 = [_UICollectionLayoutItemSolverState alloc];
  v231 = [(_UICollectionLayoutItemSolverState *)v230 initWithSolutionFrames:v221 itemFrameCount:v317 supplementaryFrameCount:*(&v317 + 1) solvedFittingFrame:v321 preferredSizeGroupingRanges:*(&v323 + 1) additionalOffsetForOutermostGroup:x errorDescription:y, width, height, v174, v173];
  [(_UICollectionLayoutItemSolver *)a1 setSolveResult:v231];

  __destructor_8_s64_s72_s80_s88_s96_s112(&v315);
LABEL_207:

LABEL_208:
  v23 = a1;
LABEL_209:
  if (*(v23 + 48))
  {
    v286 = [*(v23 + 16) size];
    *(a1 + 40) = [v286 _containerSizeDependentAxes];
  }
}

- (NSString)description
{
  if (self)
  {
    solveResult = self->_solveResult;
  }

  else
  {
    solveResult = 0;
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (!solveResult)
  {
    if (self)
    {
      v9 = self->_item;
      container = self->_container;
    }

    else
    {
      v9 = 0;
      container = 0;
    }

    v24 = [v4 stringWithFormat:@"<%@: %p: item=%p container=%@ (yet to be solved)>", v6, self, v9, container];;
    goto LABEL_19;
  }

  v27 = v4;
  v7 = MEMORY[0x1E696AD98];
  if (!self)
  {
    v9 = 0;
    goto LABEL_25;
  }

  v8 = self->_solveResult;
  v9 = v8;
  if (!v8)
  {
LABEL_25:
    solutionFrames = 0;
    goto LABEL_7;
  }

  solutionFrames = v8->_solutionFrames;
LABEL_7:
  v11 = solutionFrames;
  v12 = [v7 numberWithUnsignedInteger:{-[NSArray count](v11, "count")}];
  if (self)
  {
    v13 = self->_item;
    v14 = self->_container;
    v15 = MEMORY[0x1E696AD98];
    v16 = self->_solveResult;
    if (v16)
    {
      itemFrameCount = v16->_itemFrameCount;
    }

    else
    {
      itemFrameCount = 0;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
    itemFrameCount = 0;
    v15 = MEMORY[0x1E696AD98];
  }

  v18 = [v15 numberWithInteger:itemFrameCount];
  if (self && (v19 = self->_solveResult) != 0)
  {
    supplementaryFrameCount = v19->_supplementaryFrameCount;
  }

  else
  {
    supplementaryFrameCount = 0;
  }

  v21 = [MEMORY[0x1E696AD98] numberWithInteger:supplementaryFrameCount];
  if (self)
  {
    maxFrameCount = self->_maxFrameCount;
  }

  else
  {
    maxFrameCount = 0;
  }

  v23 = [MEMORY[0x1E696AD98] numberWithInteger:maxFrameCount];
  v24 = [v27 stringWithFormat:@"<%@: %p: solutionFrames=%@ item=%p; container:%@; itemCount=%@; supplementaryCount=%@; maxFrameCount:%@>", v6, self, v12, v13, v14, v18, v21, v23];;

LABEL_19:

  return v24;
}

- (id)queryFramesApplyingFrameOffset:(double)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      if (*MEMORY[0x1E695EFF8] == a2 && *(MEMORY[0x1E695EFF8] + 8) == a3)
      {
        v8 = *(v4 + 48);
      }

      else
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = *(a1 + 48);
        if (v9)
        {
          v9 = v9[6];
        }

        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          do
          {
            v14 = 0;
            do
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v22 + 1) + 8 * v14);
              if (v15)
              {
                v16 = *(v15 + 16);
                v17 = *(v15 + 56);
              }

              else
              {
                v16 = 0;
                v17 = 0;
              }

              v18 = v17;
              v19 = [(_UICollectionLayoutFramesQueryResult *)v15 copyWithOffset:v16 index:v18 supplementaryEnrollmentIdentifier:a2, a3];

              [v8 addObject:{v19, v22}];
              ++v14;
            }

            while (v12 != v14);
            v20 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
            v12 = v20;
          }

          while (v20);
        }
      }
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)contentSizeForFrameCount:(uint64_t)a3 layoutAxis:
{
  if (!a1)
  {
    return 0.0;
  }

  if (a2 < 1)
  {
    return *MEMORY[0x1E695F060];
  }

  v5 = *(a1 + 48);
  if (!v5)
  {
    return *MEMORY[0x1E695F060];
  }

  if (*(v5 + 56) <= a2)
  {
    [(_UICollectionLayoutItemSolver *)a1 contentFrame];
    return v25;
  }

  else
  {
    if ((a3 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      [v33 handleFailureInMethod:sel_contentSizeForFrameCount_layoutAxis_ object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:237 description:@"Unknown layout axis."];
    }

    [(_UICollectionLayoutItemSolver *)a1 contentFrame];
    v34 = v7;
    v35 = v8;
    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
    v13 = [(_UICollectionLayoutItemSolver *)a1 itemFrames];
    v14 = [v13 count];

    if (v14)
    {
      v15 = 0;
      v36 = x;
      v37 = y;
      v38 = height;
      v39 = width;
      do
      {
        v16 = [(_UICollectionLayoutItemSolver *)a1 itemFrames];
        v17 = [v16 objectAtIndexedSubscript:v15];

        if (v17)
        {
          v18 = v17[10];
          v19 = v17[11];
          v21 = v17[12];
          v20 = v17[13];
        }

        else
        {
          v19 = 0.0;
          v21 = 0.0;
          v20 = 0.0;
          v18 = 0.0;
        }

        v40.origin.x = x;
        v40.origin.y = y;
        v40.size.width = width;
        v40.size.height = height;
        v48.origin.x = v18;
        v48.origin.y = v19;
        v48.size.width = v21;
        v48.size.height = v20;
        v41 = CGRectUnion(v40, v48);
        x = v41.origin.x;
        y = v41.origin.y;
        width = v41.size.width;
        height = v41.size.height;
        if (v15 < a2)
        {
          v42.origin.x = v36;
          v42.origin.y = v37;
          v42.size.height = v38;
          v42.size.width = v39;
          v49.origin.x = v18;
          v49.origin.y = v19;
          v49.size.width = v21;
          v49.size.height = v20;
          v43 = CGRectUnion(v42, v49);
          v36 = v43.origin.x;
          v37 = v43.origin.y;
          v38 = v43.size.height;
          v39 = v43.size.width;
        }

        ++v15;
        v22 = [(_UICollectionLayoutItemSolver *)a1 itemFrames];
        v23 = [v22 count];
      }

      while (v15 < v23);
    }

    else
    {
      v38 = height;
      v39 = width;
      v36 = x;
      v37 = y;
    }

    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    MaxX = CGRectGetMaxX(v44);
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    MaxY = CGRectGetMaxY(v45);
    v46.origin.x = v36;
    v46.origin.y = v37;
    v46.size.width = v39;
    v46.size.height = v38;
    v28 = CGRectGetMaxX(v46);
    v47.origin.x = v36;
    v47.origin.y = v37;
    v47.size.width = v39;
    v47.size.height = v38;
    v29 = CGRectGetMaxY(v47);
    v30 = _UISizeValueForAxis(a3, MaxX, MaxY);
    v31 = _UISizeValueForAxis(a3, v28, v29) - v30;
    v32 = _UISizeValueForAxis(a3, v34, v35);
    return _UISetSizeValueForAxis(a3, v34, v35, v32 + v31);
  }
}

- (id)_queryFramesWithQueryRect:(uint64_t)a3 additionalFrameOffset:(uint64_t)a4 itemIndexOffset:(CGFloat)a5 supplementaryOffsets:(CGFloat)a6 itemLimit:(CGFloat)a7
{
  if (a1)
  {
    if (a4 < 0)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:sel__queryFramesWithQueryRect_additionalFrameOffset_itemIndexOffset_supplementaryOffsets_itemLimit_ object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1278 description:{@"Invalid parameter not satisfying: %@", @"itemLimit >= 0"}];
    }

    if (*(a1 + 48))
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x3032000000;
      v27 = __Block_byref_object_copy__30;
      v28 = __Block_byref_object_dispose__30;
      v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __128___UICollectionLayoutItemSolver__queryFramesWithQueryRect_additionalFrameOffset_itemIndexOffset_supplementaryOffsets_itemLimit___block_invoke;
      v23[3] = &unk_1E70FAFF0;
      v23[7] = a2;
      v23[8] = sel__queryFramesWithQueryRect_additionalFrameOffset_itemIndexOffset_supplementaryOffsets_itemLimit_;
      v23[4] = a3;
      v23[5] = a1;
      *&v23[9] = a9;
      *&v23[10] = a10;
      v23[6] = &v24;
      [(_UICollectionLayoutItemSolver *)a1 _enumerateSolutionFramesForQueryRect:a4 itemLimit:v23 withHandler:a5, a6, a7, a8];
      v20 = v25[5];
      _Block_object_dispose(&v24, 8);
    }

    else
    {
      v20 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)queryFramesWithItemLimit:(void *)a1
{
  if (a1)
  {
    a1 = [(_UICollectionLayoutItemSolver *)a1 _queryFramesWithQueryRect:0 additionalFrameOffset:a2 itemIndexOffset:*MEMORY[0x1E695F058] supplementaryOffsets:*(MEMORY[0x1E695F058] + 8) itemLimit:*(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    v2 = vars8;
  }

  return a1;
}

- (id)queryFramesWithQueryRect:(uint64_t)a3 additionalFrameOffset:(uint64_t)a4 itemIndexOffset:(CGFloat)a5 supplementaryOffsets:(CGFloat)a6 itemLimit:(CGFloat)a7
{
  if (a1)
  {
    a1 = [(_UICollectionLayoutItemSolver *)a1 _queryFramesWithQueryRect:a2 additionalFrameOffset:a3 itemIndexOffset:a4 supplementaryOffsets:a5 itemLimit:a6, a7, a8, a9, a10];
    v10 = vars8;
  }

  return a1;
}

- (id)queryFramesWithQueryRect:(uint64_t)a3 additionalFrameOffset:(uint64_t)a4 itemIndexOffset:(CGFloat)a5 itemLimit:(CGFloat)a6 supplementaryRepeatOffset:(CGFloat)a7
{
  if (a1)
  {
    a1 = [(_UICollectionLayoutItemSolver *)a1 _queryFramesWithQueryRect:a2 additionalFrameOffset:a3 itemIndexOffset:a4 itemLimit:a5 supplementaryRepeatOffset:a6, a7, a8, a9, a10];
    v10 = vars8;
  }

  return a1;
}

- (id)_queryFramesWithQueryRect:(uint64_t)a3 additionalFrameOffset:(uint64_t)a4 itemIndexOffset:(CGFloat)a5 itemLimit:(CGFloat)a6 supplementaryRepeatOffset:(CGFloat)a7
{
  if (a1)
  {
    v20 = *(a1 + 64);
    if (v20)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:sel__queryFramesWithQueryRect_additionalFrameOffset_itemIndexOffset_itemLimit_supplementaryRepeatOffset_ object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1322 description:{@"Invalid parameter not satisfying: %@", @"supplementaryEnroller"}];

      if ((a3 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if ((a4 & 0x8000000000000000) == 0)
        {
LABEL_5:
          if (*(a1 + 48))
          {
            v34 = 0;
            v35 = &v34;
            v36 = 0x3032000000;
            v37 = __Block_byref_object_copy__30;
            v38 = __Block_byref_object_dispose__30;
            v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = __133___UICollectionLayoutItemSolver__queryFramesWithQueryRect_additionalFrameOffset_itemIndexOffset_itemLimit_supplementaryRepeatOffset___block_invoke;
            v26[3] = &unk_1E70FB018;
            v30 = a9;
            v31 = a10;
            v32 = sel__queryFramesWithQueryRect_additionalFrameOffset_itemIndexOffset_itemLimit_supplementaryRepeatOffset_;
            v29 = a2;
            v26[4] = a1;
            v33 = a4;
            v27 = v20;
            v28 = &v34;
            [(_UICollectionLayoutItemSolver *)a1 _enumerateSolutionFramesForQueryRect:a3 itemLimit:v26 withHandler:a5, a6, a7, a8];
            v21 = v35[5];

            _Block_object_dispose(&v34, 8);
          }

          else
          {
            v21 = MEMORY[0x1E695E0F0];
          }

          goto LABEL_9;
        }

LABEL_14:
        v25 = [MEMORY[0x1E696AAA8] currentHandler];
        [v25 handleFailureInMethod:sel__queryFramesWithQueryRect_additionalFrameOffset_itemIndexOffset_itemLimit_supplementaryRepeatOffset_ object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1324 description:{@"Invalid parameter not satisfying: %@", @"supplementaryRepeatOffset >= 0"}];

        goto LABEL_5;
      }
    }

    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:sel__queryFramesWithQueryRect_additionalFrameOffset_itemIndexOffset_itemLimit_supplementaryRepeatOffset_ object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1323 description:{@"Invalid parameter not satisfying: %@", @"itemLimit >= 0"}];

    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  v21 = 0;
LABEL_9:

  return v21;
}

- (id)frameForAbsoluteIndex:(uint64_t)a3 additionalFrameOffset:(double)a4 interSolutionSpacing:(double)a5 repeatAxis:(double)a6
{
  if (a1)
  {
    a1 = [(_UICollectionLayoutItemSolver *)a1 _frameForAbsoluteIndex:a2 additionalFrameOffset:a3 interSolutionSpacing:a4 repeatAxis:a5, a6];
    v6 = vars8;
  }

  return a1;
}

- (id)_frameForAbsoluteIndex:(uint64_t)a3 additionalFrameOffset:(double)a4 interSolutionSpacing:(double)a5 repeatAxis:(double)a6
{
  if (a1)
  {
    v12 = *(a1 + 48);
    if (v12 && (v13 = *(v12 + 56)) != 0)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
LABEL_5:
        v14 = [(_UICollectionLayoutItemSolver *)a1 _frameOffsetForAdditionalFrameOffset:a3 repeatOffset:a4 repeatAxis:a5 interSolutionSpacing:a6];
        v16 = v15;
        v17 = [(_UICollectionLayoutItemSolver *)a1 itemFrames];
        v18 = [v17 objectAtIndexedSubscript:a2 % v13];

        v19 = [(_UICollectionLayoutFramesQueryResult *)v18 copyWithOffset:a2 index:0 supplementaryEnrollmentIdentifier:v14, v16];
        goto LABEL_6;
      }
    }

    else
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:sel__frameForAbsoluteIndex_additionalFrameOffset_interSolutionSpacing_repeatAxis_ object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1436 description:{@"Invalid parameter not satisfying: %@", @"itemCount"}];

      v13 = 0;
      if ((a2 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }
    }

    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:sel__frameForAbsoluteIndex_additionalFrameOffset_interSolutionSpacing_repeatAxis_ object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1437 description:{@"Invalid parameter not satisfying: %@", @"absoluteIndex>=0"}];

    goto LABEL_5;
  }

  v19 = 0;
LABEL_6:

  return v19;
}

- (id)supplementaryFrameWithKind:(uint64_t)a3 index:(double)a4 additionalFrameOffset:(double)a5
{
  if (a1)
  {
    a1 = [(_UICollectionLayoutItemSolver *)a1 _supplementaryFrameWithKind:a2 index:a3 additionalFrameOffset:a4, a5];
    v5 = vars8;
  }

  return a1;
}

- (id)_supplementaryFrameWithKind:(uint64_t)a3 index:(double)a4 additionalFrameOffset:(double)a5
{
  if (!a1)
  {
    v15 = 0;
    goto LABEL_9;
  }

  if (![a2 length])
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:sel__supplementaryFrameWithKind_index_additionalFrameOffset_ object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1451 description:{@"Invalid parameter not satisfying: %@", @"kind.length"}];

    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:sel__supplementaryFrameWithKind_index_additionalFrameOffset_ object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1452 description:{@"Invalid parameter not satisfying: %@", @"index >= 0"}];

    goto LABEL_4;
  }

  if (a3 < 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (!*(a1 + 48))
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:sel__supplementaryFrameWithKind_index_additionalFrameOffset_ object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1453 description:{@"Invalid parameter not satisfying: %@", @"self.solveResult"}];
  }

  v10 = [_UICollectionLayoutFramesQueryResult kindIndexKeyForKind:a2 index:a3];
  v11 = [(_UICollectionLayoutItemSolverState *)*(a1 + 48) supplementaryDictByKindIndex];
  v12 = [v11 objectForKeyedSubscript:v10];

  if (v12)
  {
    v13 = *(v12 + 56);
  }

  else
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:sel__supplementaryFrameWithKind_index_additionalFrameOffset_ object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1457 description:@"Failed to retrieve the supplementary frame for kind+index key."];

    v13 = 0;
  }

  v14 = v13;
  v15 = [(_UICollectionLayoutFramesQueryResult *)v12 copyWithOffset:a3 index:v14 supplementaryEnrollmentIdentifier:a4, a5];

LABEL_9:

  return v15;
}

- (id)supplementaryFrameWithKind:(uint64_t)a3 absoluteIndex:(uint64_t)a4 additionalFrameOffset:(double)a5 interSolutionSpacing:(double)a6 repeatAxis:(double)a7
{
  if (a1)
  {
    a1 = [(_UICollectionLayoutItemSolver *)a1 _supplementaryFrameWithKind:a2 absoluteIndex:a3 additionalFrameOffset:a4 interSolutionSpacing:a5 repeatAxis:a6, a7];
    v7 = vars8;
  }

  return a1;
}

- (id)_supplementaryFrameWithKind:(uint64_t)a3 absoluteIndex:(uint64_t)a4 additionalFrameOffset:(double)a5 interSolutionSpacing:(double)a6 repeatAxis:(double)a7
{
  if (a1)
  {
    v14 = *(a1 + 48);
    if (!v14)
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      [v28 handleFailureInMethod:sel__supplementaryFrameWithKind_absoluteIndex_additionalFrameOffset_interSolutionSpacing_repeatAxis_ object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1469 description:{@"Invalid parameter not satisfying: %@", @"self.solveResult"}];

      v14 = *(a1 + 48);
    }

    v15 = [(_UICollectionLayoutItemSolverState *)v14 supplementaryFrameOffsets];
    if (![a2 length])
    {
      v29 = [MEMORY[0x1E696AAA8] currentHandler];
      [v29 handleFailureInMethod:sel__supplementaryFrameWithKind_absoluteIndex_additionalFrameOffset_interSolutionSpacing_repeatAxis_ object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1473 description:{@"Invalid parameter not satisfying: %@", @"kind.length"}];
    }

    [v15 rangeForElementKind:a2];
    v17 = v16;
    if (v16)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
LABEL_8:
        v18 = [(_UICollectionLayoutItemSolver *)a1 _frameOffsetForAdditionalFrameOffset:a4 repeatOffset:a5 repeatAxis:a6 interSolutionSpacing:a7];
        v20 = v19;
        v21 = [_UICollectionLayoutFramesQueryResult kindIndexKeyForKind:a2 index:a3 % v17];
        v22 = [(_UICollectionLayoutItemSolverState *)*(a1 + 48) supplementaryDictByKindIndex];
        v23 = [v22 objectForKeyedSubscript:v21];

        if (v23)
        {
          v24 = *(v23 + 56);
        }

        else
        {
          v24 = 0;
        }

        v25 = v24;
        v26 = [(_UICollectionLayoutFramesQueryResult *)v23 copyWithOffset:a3 index:v25 supplementaryEnrollmentIdentifier:v18, v20];

        goto LABEL_11;
      }
    }

    else
    {
      v30 = [MEMORY[0x1E696AAA8] currentHandler];
      [v30 handleFailureInMethod:sel__supplementaryFrameWithKind_absoluteIndex_additionalFrameOffset_interSolutionSpacing_repeatAxis_ object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1475 description:{@"Invalid parameter not satisfying: %@", @"kindCount"}];

      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }
    }

    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:sel__supplementaryFrameWithKind_absoluteIndex_additionalFrameOffset_interSolutionSpacing_repeatAxis_ object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1476 description:{@"Invalid parameter not satisfying: %@", @"absoluteIndex>=0"}];

    goto LABEL_8;
  }

  v26 = 0;
LABEL_11:

  return v26;
}

- (double)_additionalDimensionForRequiredEdgeSpacingAlongAxis:(void *)a3 group:(char)a4 trailingEdgeOnly:
{
  v4 = 0.0;
  if (!a1)
  {
    v7 = [a3 edgeSpacing];
    if ([v7 _hasSpacing])
    {
      if (a2 == 2)
      {
        if ((a4 & 1) == 0)
        {
          a2 = [v7 top];
          [a2 spacing];
          v4 = v10;
        }

        v9 = [v7 bottom];
      }

      else
      {
        if (a2 != 1)
        {
          return v4;
        }

        if ((a4 & 1) == 0)
        {
          a2 = [v7 leading];
          [a2 spacing];
          v4 = v8;
        }

        v9 = [v7 trailing];
      }

      v11 = v9;
      [v9 spacing];
      v4 = v4 + v12;

      if ((a4 & 1) == 0)
      {
      }
    }
  }

  return v4;
}

- (void)setSolveResult:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

- (void)_solveSingleItemWithPreferredSize:(double)a3 groupMaxItemSize:(double)a4
{
  if (a1)
  {
    [*(a1 + 32) displayScale];
    v9 = v8;
    v10 = [*(a1 + 16) size];
    [v10 _effectiveSizeForContainer:*(a1 + 24) displayScale:0 ignoringInsets:v9];
    v12 = v11;
    v14 = v13;

    if (a2)
    {
      v15 = [(_UICollectionPreferredSize *)a2 fittingSize];
      v16 = [*(a1 + 16) size];
      v12 = [(_UICollectionPreferredSize *)v12 preferredSizeForOriginalSize:v14 fittingSize:v15 layoutSize:_UICollectionPreferredSize, v16];
      v14 = v17;
    }

    v18 = [*(a1 + 16) layoutSize];
    v19 = [v18 _axesUniformAcrossSiblings];

    if ((v19 & (a3 > 0.0)) != 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = v12;
    }

    if (((a4 > 0.0) & (v19 >> 1)) != 0)
    {
      v21 = a4;
    }

    else
    {
      v21 = v14;
    }

    if (v19)
    {
      v14 = v21;
      v22 = v20;
    }

    else
    {
      v22 = v12;
    }

    [*(a1 + 16) _effectiveContentInsets];
    v24 = v23 + 0.0;
    v26 = v22 - (v25 + v23);
    v28 = v27 + 0.0;
    *(a1 + 112) = v23 + 0.0;
    *(a1 + 120) = v27 + 0.0;
    v30 = v14 - (v27 + v29);
    *(a1 + 128) = v26;
    *(a1 + 136) = v30;
    if (a2)
    {
      v31 = *(a2 + 48);
    }

    else
    {
      v31 = 0;
    }

    *(a1 + 9) = v31 & 1;
    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v32 = [a1 auxillaryHostAuxillaryItems];
    v33 = [v32 count];

    if (v33)
    {
      v34 = [[_UICollectionLayoutAuxillaryItemSolver alloc] initWithAuxillaryHost:a1];
      v33 = [(_UICollectionLayoutAuxillaryItemSolver *)v34 supplementaryFrames];
    }

    v35 = MEMORY[0x1E695E0F0];
    if (v33)
    {
      v35 = v33;
    }

    v36 = v35;

    [v43 addObjectsFromArray:v36];
    v37 = [_UICollectionLayoutFramesQueryResult alloc];
    if (v37)
    {
      v38 = [(_UICollectionLayoutFramesQueryResult *)&v37->super.isa initWithFrame:0 pinningAlignment:0 adjustedForPinning:0x7FFFFFFFFFFFFFFFLL visibleRectDisplacement:1 index:*(a1 + 16) zIndex:0 resultKind:v24 item:v28 auxillaryKind:v26 supplementaryEnrollmentIdentifier:v30, 0.0, 0];
    }

    else
    {
      v38 = 0;
    }

    [v43 addObject:v38];
    v39 = [_UICollectionLayoutItemSolverState alloc];
    v40 = [v36 count];
    v41 = [(_UICollectionLayoutItemSolverState *)v39 initWithSolutionFrames:v43 itemFrameCount:1 supplementaryFrameCount:v40 solvedFittingFrame:MEMORY[0x1E695E0F0] preferredSizeGroupingRanges:0 additionalOffsetForOutermostGroup:*MEMORY[0x1E695F058] errorDescription:*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    v42 = *(a1 + 48);
    *(a1 + 48) = v41;
  }
}

- (uint64_t)_layoutAxisForGroup:(uint64_t)a1
{
  v2 = a1;
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:sel__layoutAxisForGroup_ object:v2 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1131 description:@"Must be an item group."];
    }

    if ([a2 isGroup])
    {
      v4 = a2;
      if ([v4 isVerticalGroup])
      {
        v2 = 2;
      }

      else if ([v4 isHorizontalGroup])
      {
        v2 = 1;
      }

      else if ([v4 isCustomGroup])
      {
        v2 = 2;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

- (unint64_t)_arrangeSolutionItems:(void *)a3 alongLayoutAxis:(void *)a4 forContainer:(double)a5 additionalLayoutOffset:(double)a6 interItemSpacing:
{
  if (a2 == 1)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 == 2;
  }

  v13 = _UIDirectionalEdgeForPreEdgeOnLayoutAxis(a2);
  v14 = _UIDirectionalEdgeForPostEdgeOnLayoutAxis(a2);
  v15 = [a4 isFlexibleSpacing];
  [a3 contentInsets];
  v17 = v16;
  [a3 contentInsets];
  v18 = a5 + v17;
  v20 = a6 + v19;
  [a4 spacing];
  v22 = v21;
  if ([a1 count])
  {
    v65 = a3;
    v66 = v12;
    v23 = 0;
    v24 = 0;
    v25 = 0.0;
    do
    {
      v26 = [a1 objectAtIndexedSubscript:v24];
      v27 = [(_UICollectionSolutionGroupArrangementItem *)v26 item];
      v28 = [v27 edgeSpacing];

      v29 = 0.0;
      v30 = 0.0;
      if (v26)
      {
        v29 = v26[4];
        v30 = v26[5];
      }

      v31 = v25 + _UISizeValueForAxis(a2, v29, v30);
      [v28 spacingForEdge:v13];
      v33 = v32;
      [v28 spacingForEdge:v14];
      v35 = v31 + v33 + v34;
      v36 = v23 + [v28 isSpacingFlexibleForEdge:v13];
      v37 = v36 + [v28 isSpacingFlexibleForEdge:v14];
      v38 = [a1 count];
      if (v24 == v38 - 1)
      {
        v25 = v35;
      }

      else
      {
        v25 = v22 + v35;
      }

      v23 = v37 + ((v24++ != v38 - 1) & v15);
    }

    while (v24 < [a1 count]);
    if (v23 <= 0)
    {
      v49 = 0.0;
    }

    else
    {
      [v65 contentInsets];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
      [v65 contentSize];
      v49 = (_UISizeValueForAxis(a2, v47 - (v42 + v46), v48 - (v40 + v44)) - v25) / v23;
      if (v15)
      {
        v22 = v22 + v49;
      }
    }

    v12 = v66;
  }

  else
  {
    v49 = 0.0;
  }

  v50 = _UIPointValueForAxis(a2, v18, v20);
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v68 = __124___UICollectionLayoutItemSolver__arrangeSolutionItems_alongLayoutAxis_forContainer_additionalLayoutOffset_interItemSpacing___block_invoke;
  v69 = &__block_descriptor_40_e54_d24__0___UICollectionSolutionGroupArrangementItem_8Q16l;
  v70 = v49;
  result = [a1 count];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v53 = [a1 objectAtIndexedSubscript:i];
      v68(v67, v53, v13);
      v55 = 0.0;
      v56 = 0.0;
      v57 = 0.0;
      if (v53)
      {
        v57 = v53[2];
        v56 = v53[3];
      }

      v58 = v50 + v54;
      v59 = _UIPointValueForAxis(v12, v57, v56);
      v60 = _UISetPointValueForAxis(a2, v18, v20, v58);
      v18 = _UISetPointValueForAxis(v12, v60, v61, v59);
      v20 = v62;
      v63 = 0.0;
      if (v53)
      {
        v63 = v53[4];
        v55 = v53[5];
        v53[2] = v18;
        v53[3] = v62;
      }

      v64 = v58 + _UISizeValueForAxis(a2, v63, v55);
      v50 = v64 + v68(v67, v53, v14);
      if (i != [a1 count] - 1)
      {
        v50 = v22 + v50;
      }

      result = [a1 count];
    }
  }

  return result;
}

- (void)_enumerateSolutionFramesForQueryRect:(uint64_t)a3 itemLimit:(CGFloat)a4 withHandler:(CGFloat)a5
{
  if (a2 < 0)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:sel__enumerateSolutionFramesForQueryRect_itemLimit_withHandler_ object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1369 description:{@"Invalid parameter not satisfying: %@", @"itemLimit >= 0"}];

    if (a3)
    {
      goto LABEL_3;
    }
  }

  else if (a3)
  {
    goto LABEL_3;
  }

  v29 = [MEMORY[0x1E696AAA8] currentHandler];
  [v29 handleFailureInMethod:sel__enumerateSolutionFramesForQueryRect_itemLimit_withHandler_ object:a1 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1370 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

LABEL_3:
  v10 = *(a1 + 48);
  if (v10)
  {
    v52.origin.x = a4;
    v52.size.width = a6;
    v52.origin.y = a5;
    v52.size.height = a7;
    v11 = CGRectEqualToRect(v52, *MEMORY[0x1E695F058]);
    v12 = *(v10 + 40);
    v13 = *(v10 + 48);
    if (!v12)
    {
      v14 = objc_alloc_init(_UIRTree);
      v15 = *(v10 + 48);
      *&v48.f64[0] = MEMORY[0x1E69E9820];
      *&v48.f64[1] = 3221225472;
      *&v49.f64[0] = __63___UICollectionLayoutItemSolverState__generateGeometricIndexer__block_invoke;
      *&v49.f64[1] = &unk_1E70FADE8;
      v16 = v14;
      v50 = v16;
      [v15 enumerateObjectsUsingBlock:&v48];
      v17 = *(v10 + 40);
      *(v10 + 40) = v16;
      v18 = v16;

      v12 = *(v10 + 40);
    }

    v19 = v12;

    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x2020000000;
    v47[3] = 0;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v35 = __92___UICollectionLayoutItemSolver__enumerateSolutionFramesForQueryRect_itemLimit_withHandler___block_invoke;
    v36 = &unk_1E70FB040;
    v38 = v47;
    v39 = v13;
    v45 = a2 > 0;
    v46 = v11;
    v40 = a4;
    v41 = a5;
    v42 = a6;
    v43 = a7;
    v37 = a3;
    v44 = a2;
    if (v11)
    {
      goto LABEL_10;
    }

    v54.origin.x = [(_UICollectionLayoutItemSolver *)a1 contentFrame];
    v54.origin.y = v20;
    v54.size.width = v21;
    v54.size.height = v22;
    v53.origin.x = a4;
    v53.size.width = a6;
    v53.origin.y = a5;
    v53.size.height = a7;
    v23 = !CGRectContainsRect(v53, v54);
    if (a2 >= 1)
    {
      LOBYTE(v23) = 0;
    }

    if (v23)
    {
      if (v19)
      {
        v51[0] = 0;
        v25 = v19[1];
        v27.f64[0] = a4;
        v26.f64[0] = a6;
        v27.f64[1] = a5;
        v26.f64[1] = a7;
        v48 = vaddq_f64(v27, vminnmq_f64(v26, 0));
        v49 = vabsq_f64(v26);
        _UIRTreeContainerNode<unsigned long>::enumerateElementsIntersecting(v25, &v48, v51, v34);
      }
    }

    else
    {
LABEL_10:
      v24 = 0;
      LOBYTE(v48.f64[0]) = 0;
      do
      {
        if (v24 >= [v13 count])
        {
          break;
        }

        v35(v34, v24++, &v48);
      }

      while (LOBYTE(v48.f64[0]) != 1);
    }

    _Block_object_dispose(v47, 8);
  }
}

- (double)_frameOffsetForAdditionalFrameOffset:(uint64_t)a3 repeatOffset:(double)a4 repeatAxis:(double)a5 interSolutionSpacing:(double)a6
{
  if (a2)
  {
    [(_UICollectionLayoutItemSolver *)a1 layoutFrame];
    v12 = _UISizeValueForAxis(a3, v10, v11);
    return a4 + _UISetPointValueForAxis(a3, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), (v12 + a6) * a2);
  }

  return a4;
}

- (CGRect)auxillaryHostPinningRect
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  [(_UICollectionLayoutItemSolver *)self auxillaryHostContentSize];
  v5 = v4;
  v7 = v6;
  v8 = v2;
  v9 = v3;
  result.size.height = v7;
  result.size.width = v5;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

@end