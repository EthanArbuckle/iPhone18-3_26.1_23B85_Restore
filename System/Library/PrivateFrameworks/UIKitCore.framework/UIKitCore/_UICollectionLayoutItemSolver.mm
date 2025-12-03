@interface _UICollectionLayoutItemSolver
- (CGPoint)auxillaryHostAdditionalFrameOffset;
- (CGRect)auxillaryHostPinningRect;
- (CGSize)auxillaryHostContentSize;
- (NSString)description;
- (double)_additionalDimensionForRequiredEdgeSpacingAlongAxis:(void *)axis group:(char)group trailingEdgeOnly:;
- (double)_frameOffsetForAdditionalFrameOffset:(uint64_t)offset repeatOffset:(double)repeatOffset repeatAxis:(double)axis interSolutionSpacing:(double)spacing;
- (double)contentFrame;
- (double)contentSizeForFrameCount:(uint64_t)count layoutAxis:;
- (double)layoutFrame;
- (double)offsetForEdgeSpacing;
- (id)_frameForAbsoluteIndex:(uint64_t)index additionalFrameOffset:(double)offset interSolutionSpacing:(double)spacing repeatAxis:(double)axis;
- (id)_queryFramesWithQueryRect:(uint64_t)rect additionalFrameOffset:(uint64_t)offset itemIndexOffset:(CGFloat)indexOffset itemLimit:(CGFloat)limit supplementaryRepeatOffset:(CGFloat)repeatOffset;
- (id)_queryFramesWithQueryRect:(uint64_t)rect additionalFrameOffset:(uint64_t)offset itemIndexOffset:(CGFloat)indexOffset supplementaryOffsets:(CGFloat)offsets itemLimit:(CGFloat)limit;
- (id)_supplementaryFrameWithKind:(uint64_t)kind absoluteIndex:(uint64_t)index additionalFrameOffset:(double)offset interSolutionSpacing:(double)spacing repeatAxis:(double)axis;
- (id)_supplementaryFrameWithKind:(uint64_t)kind index:(double)index additionalFrameOffset:(double)offset;
- (id)auxillaryFrames;
- (id)auxillaryHostAuxillaryItems;
- (id)auxillaryHostContainer;
- (id)auxillaryHostPreferredSizes;
- (id)auxillaryHostSupplementaryEnroller;
- (id)auxillaryHostTraitCollection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)frameForAbsoluteIndex:(uint64_t)index additionalFrameOffset:(double)offset interSolutionSpacing:(double)spacing repeatAxis:(double)axis;
- (id)initWithItem:(void *)item;
- (id)initWithItem:(void *)item supplementaryEnroller:(void *)enroller container:(void *)container layoutAxis:(void *)axis traitCollection:(void *)collection maxFrameCount:(char)count layoutRTL:(void *)l preferredSizes:(void *)self0 solverResult:(void *)self1 solutionRecursionDepth:;
- (id)itemFrames;
- (id)queryFramesApplyingFrameOffset:(double)offset;
- (id)queryFramesWithItemLimit:(void *)limit;
- (id)queryFramesWithQueryRect:(uint64_t)rect additionalFrameOffset:(uint64_t)offset itemIndexOffset:(CGFloat)indexOffset itemLimit:(CGFloat)limit supplementaryRepeatOffset:(CGFloat)repeatOffset;
- (id)queryFramesWithQueryRect:(uint64_t)rect additionalFrameOffset:(uint64_t)offset itemIndexOffset:(CGFloat)indexOffset supplementaryOffsets:(CGFloat)offsets itemLimit:(CGFloat)limit;
- (id)supplementaryFrameWithKind:(uint64_t)kind absoluteIndex:(uint64_t)index additionalFrameOffset:(double)offset interSolutionSpacing:(double)spacing repeatAxis:(double)axis;
- (id)supplementaryFrameWithKind:(uint64_t)kind index:(double)index additionalFrameOffset:(double)offset;
- (int64_t)auxillaryHostAuxillaryKind;
- (uint64_t)_layoutAxisForGroup:(uint64_t)group;
- (unint64_t)_arrangeSolutionItems:(void *)items alongLayoutAxis:(void *)axis forContainer:(double)container additionalLayoutOffset:(double)offset interItemSpacing:;
- (unint64_t)auxillaryHostLayoutAxis;
- (void)_enumerateSolutionFramesForQueryRect:(uint64_t)rect itemLimit:(CGFloat)limit withHandler:(CGFloat)handler;
- (void)_solveForContainer:(uint64_t)container layoutAxis:(void *)axis traitCollection:(uint64_t)collection maxFrameCount:(char)count layoutRTL:(void *)l preferredSizes:(uint64_t)sizes largestKnownItemSize:(double)size solutionRecursionDepth:(double)self0;
- (void)_solveSingleItemWithPreferredSize:(double)size groupMaxItemSize:(double)itemSize;
- (void)errorDescription;
- (void)preferredSizeGroupingRanges;
- (void)setSolveResult:(uint64_t)result;
- (void)supplementaryOffsets;
@end

@implementation _UICollectionLayoutItemSolver

- (void)supplementaryOffsets
{
  if (self)
  {
    self = [(_UICollectionLayoutItemSolverState *)self[6] supplementaryFrameOffsets];
    v1 = vars8;
  }

  return self;
}

- (id)itemFrames
{
  if (self)
  {
    itemFrames = [(_UICollectionLayoutItemSolverState *)*(self + 48) itemFrames];
    v2 = itemFrames;
    v3 = MEMORY[0x1E695E0F0];
    if (itemFrames)
    {
      v3 = itemFrames;
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
  if (self)
  {
    v2 = *(self + 16);
    v3 = [v2 size];
    v4 = *(self + 24);
    [*(self + 32) displayScale];
    [v3 _effectiveSizeForContainer:v4 displayScale:0 ignoringInsets:?];
    v6 = v5;
    v8 = v7;
    v9 = *(self + 48);
    if (v9 && [v3 isEstimated])
    {
      if ([v2 isGroup])
      {
        [(_UICollectionPreferredSize *)v6 preferredSizeForOriginalSize:v8 fittingSize:*(v9 + 120) layoutSize:_UICollectionPreferredSize, v3];
      }

      else
      {
        itemFrames = [(_UICollectionLayoutItemSolverState *)v9 itemFrames];
        if ([itemFrames count] != 1)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          _externalDescription = [v2 _externalDescription];
          [currentHandler handleFailureInMethod:sel_layoutFrame object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:411 description:{@"Compositional Layout internal error: Unexpectedly found more than one item frame when computing the layout frame for item %@. Solve result: %@", _externalDescription, v9}];
        }

        v11 = [itemFrames objectAtIndexedSubscript:0];
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

    if (!*(self + 72))
    {
      if ([v2 isGroup])
      {
        v13 = *(self + 88);
        v14 = [(_UICollectionLayoutItemSolver *)*(self + 72) _additionalDimensionForRequiredEdgeSpacingAlongAxis:v13 group:v2 trailingEdgeOnly:0];
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
  if (!self)
  {
    return 0.0;
  }

  layoutFrame = [(_UICollectionLayoutItemSolver *)self layoutFrame];
  [*(self + 16) _effectiveContentInsets];
  if (v4 != 0.0 || v3 != 0.0 || v6 != 0.0 || v5 != 0.0)
  {
    return layoutFrame + v4;
  }

  return layoutFrame;
}

- (void)errorDescription
{
  if (self)
  {
    v2 = self[6];
    if (v2)
    {
      v2 = v2[10];
    }

    self = v2;
    v1 = vars8;
  }

  return self;
}

- (id)auxillaryHostAuxillaryItems
{
  selfCopy = self;
  if (self)
  {
    self = self->_item;
  }

  supplementaryItems = [(_UICollectionLayoutItemSolver *)self supplementaryItems];
  v4 = supplementaryItems;
  v5 = MEMORY[0x1E695E0F0];
  if (supplementaryItems)
  {
    v6 = supplementaryItems;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  if (selfCopy)
  {
    item = selfCopy->_item;
  }

  else
  {
    item = 0;
  }

  decorationItems = [(NSCollectionLayoutItem *)item decorationItems];
  v10 = decorationItems;
  if (decorationItems)
  {
    v11 = decorationItems;
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
  if (self)
  {
    v2 = self[6];
    if (v2)
    {
      v2 = v2[9];
    }

    if (!v2)
    {
      v2 = MEMORY[0x1E695E0F0];
    }

    self = v2;
    v1 = vars8;
  }

  return self;
}

- (double)offsetForEdgeSpacing
{
  if (!self)
  {
    return 0.0;
  }

  v2 = *(self + 48);
  v3 = v2;
  if (v2)
  {
    v4 = v2[11];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = *(self + 16);
    _externalDescription = [v7 _externalDescription];
    [currentHandler handleFailureInMethod:sel_offsetForEdgeSpacing object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:455 description:{@"Compositional layout internal bug: Attempting to access edge spacing offset before solving. Item: %@", _externalDescription}];

    v4 = 0.0;
  }

  return v4;
}

- (unint64_t)auxillaryHostLayoutAxis
{
  if (!self)
  {
    isGroup = [0 isGroup];
    item = 0;
    if (isGroup)
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
    isGroup = [0 isGroup];
    container = 0;
    if (isGroup)
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
      _externalDescription = [(NSCollectionLayoutItem *)v7 _externalDescription];
      v22 = 138412290;
      v23 = _externalDescription;
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
      _externalDescription = [(NSCollectionLayoutItem *)v7 _externalDescription];
      v22 = 138412290;
      v23 = _externalDescription;
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
  if (self)
  {
    auxillaryFrames = [(_UICollectionLayoutItemSolverState *)*(self + 48) auxillaryFrames];
    v2 = auxillaryFrames;
    v3 = MEMORY[0x1E695E0F0];
    if (auxillaryFrames)
    {
      v3 = auxillaryFrames;
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
    isGroup = [0 isGroup];
    item = 0;
    if (isGroup)
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

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:1594 description:{@"Invalid parameter not satisfying: %@", @"self.supplementaryEnroller"}];

    if (self)
    {
      supplementaryEnroller = self->_supplementaryEnroller;
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:0 file:@"_UICollectionLayoutItemSolver.m" lineNumber:1594 description:{@"Invalid parameter not satisfying: %@", @"self.supplementaryEnroller"}];
  }

  supplementaryEnroller = 0;
LABEL_3:

  return supplementaryEnroller;
}

- (CGSize)auxillaryHostContentSize
{
  selfCopy = self;
  v25 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_item;
  }

  if ([(_UICollectionLayoutItemSolver *)self isGroup])
  {
    [(_UICollectionLayoutItemSolver *)selfCopy contentFrame];
    width = v3;
    height = v5;
    goto LABEL_15;
  }

  if (!CGRectIsNull(selfCopy->_uncommittedSolvedItemFrame))
  {
    width = selfCopy->_uncommittedSolvedItemFrame.size.width;
    height = selfCopy->_uncommittedSolvedItemFrame.size.height;
    goto LABEL_15;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v9 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    v8 = selfCopy->_item;
    _externalDescription = [(NSCollectionLayoutItem *)v8 _externalDescription];
    v23 = 138412290;
    v24 = _externalDescription;
    _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "UIKit internal bug: Solver for item %@ queried for auxiliary host content size without having solved the item. Using fallback behavior.", &v23, 0xCu);
LABEL_9:

LABEL_10:
    goto LABEL_11;
  }

  v7 = *(__UILogGetCategoryCachedImpl("Assert", &auxillaryHostContentSize___s_category) + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = selfCopy->_item;
    v9 = v7;
    _externalDescription = [(NSCollectionLayoutItem *)v8 _externalDescription];
    v23 = 138412290;
    v24 = _externalDescription;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "UIKit internal bug: Solver for item %@ queried for auxiliary host content size without having solved the item. Using fallback behavior.", &v23, 0xCu);
    goto LABEL_9;
  }

LABEL_11:
  v11 = [(_UICollectionPreferredSizes *)selfCopy->_preferredSizes objectAtIndexedSubscript:?];
  v12 = [(NSCollectionLayoutItem *)selfCopy->_item size];
  [(UITraitCollection *)selfCopy->_traitCollection displayScale];
  v14 = v13;
  item = selfCopy->_item;
  container = selfCopy->_container;
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

- (id)initWithItem:(void *)item supplementaryEnroller:(void *)enroller container:(void *)container layoutAxis:(void *)axis traitCollection:(void *)collection maxFrameCount:(char)count layoutRTL:(void *)l preferredSizes:(void *)self0 solverResult:(void *)self1 solutionRecursionDepth:
{
  if (!self)
  {
    return 0;
  }

  v22.receiver = self;
  v22.super_class = _UICollectionLayoutItemSolver;
  v18 = objc_msgSendSuper2(&v22, sel_init);
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(v18 + 2, a2);
    objc_storeStrong(v19 + 8, item);
    objc_storeStrong(v19 + 3, enroller);
    v19[11] = container;
    objc_storeStrong(v19 + 4, axis);
    v19[10] = collection;
    *(v19 + 8) = count;
    objc_storeStrong(v19 + 7, l);
    objc_storeStrong(v19 + 6, sizes);
    v19[9] = result;
    v20 = *(MEMORY[0x1E695F050] + 16);
    *(v19 + 7) = *MEMORY[0x1E695F050];
    *(v19 + 8) = v20;
  }

  return v19;
}

- (id)initWithItem:(void *)item
{
  if (!item)
  {
    return 0;
  }

  v4 = objc_alloc_init(_UICollectionLayoutSupplementaryEnroller);
  v5 = [(_UICollectionLayoutItemSolver *)item initWithItem:a2 supplementaryEnroller:v4 container:0 layoutAxis:0 traitCollection:0 maxFrameCount:0 layoutRTL:0 preferredSizes:0 solverResult:0 solutionRecursionDepth:0];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v17 = [_UICollectionLayoutItemSolver allocWithZone:zone];
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

- (void)_solveForContainer:(uint64_t)container layoutAxis:(void *)axis traitCollection:(uint64_t)collection maxFrameCount:(char)count layoutRTL:(void *)l preferredSizes:(uint64_t)sizes largestKnownItemSize:(double)size solutionRecursionDepth:(double)self0
{
  v339 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  selfCopy2 = self;
  if (collection < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    selfCopy2 = self;
    [currentHandler handleFailureInMethod:sel__solveForContainer_layoutAxis_traitCollection_maxFrameCount_layoutRTL_preferredSizes_largestKnownItemSize_solutionRecursionDepth_ object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:552 description:{@"Invalid parameter not satisfying: %@", @"maxFrameCount >= 0"}];

    if (l)
    {
      goto LABEL_4;
    }
  }

  else if (l)
  {
LABEL_4:
    lCopy = l;
    goto LABEL_7;
  }

  lCopy = objc_alloc_init(_UICollectionPreferredSizes);
LABEL_7:
  v22 = *(selfCopy2 + 56);
  *(selfCopy2 + 56) = lCopy;

  objc_storeStrong((selfCopy2 + 24), a2);
  *(self + 88) = container;
  objc_storeStrong((self + 32), axis);
  selfCopy11 = self;
  *(self + 8) = count;
  *(self + 72) = sizes;
  *(self + 80) = collection;
  *(self + 96) = size;
  *(self + 104) = depth;
  v24 = *(self + 48);
  *(self + 48) = 0;

  if (!sizes)
  {
    v25 = objc_alloc_init(_UICollectionLayoutSupplementaryEnroller);
    v26 = *(self + 64);
    *(self + 64) = v25;
  }

  if (![*(self + 16) isGroup])
  {
    v56 = [(_UICollectionPreferredSizes *)*(self + 56) objectAtIndexedSubscript:?];
    selfCopy11 = self;
    [(_UICollectionLayoutItemSolver *)self _solveSingleItemWithPreferredSize:v56 groupMaxItemSize:*(self + 96), *(self + 104)];

    goto LABEL_209;
  }

  if ([*(self + 16) hasCustomGroupItemProvider])
  {
    if (![*(self + 16) isGroup])
    {
      goto LABEL_209;
    }

    v27 = *(self + 16);
    [*(self + 32) displayScale];
    v29 = v28;
    v30 = [*(self + 16) size];
    [v30 _effectiveSizeForContainer:*(self + 24) displayScale:1 ignoringInsets:v29];
    v32 = v31;
    v34 = v33;

    v35 = [_UICollectionLayoutContainer alloc];
    [*(self + 16) _effectiveContentInsets];
    v40 = [(_UICollectionLayoutContainer *)v35 initWithContentSize:v32 contentInsets:v34, v36, v37, v38, v39];
    v41 = [[_UICollectionLayoutEnvironment alloc] initWithContainer:v40 traitCollection:*(self + 32) dataSourceSnapshot:0];
    customGroupItemProvider = [v27 customGroupItemProvider];
    v43 = (customGroupItemProvider)[2](customGroupItemProvider, v41);

    v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v45 = [[_UICollectionLayoutAuxillaryItemSolver alloc] initWithAuxillaryHost:self];
    supplementaryFrames = [(_UICollectionLayoutAuxillaryItemSolver *)v45 supplementaryFrames];
    aBlock = MEMORY[0x1E69E9820];
    v330 = 3221225472;
    v331 = __66___UICollectionLayoutItemSolver__solveWithCustomGroupItemProvider__block_invoke;
    v332 = &unk_1E70FADE8;
    v47 = v44;
    v333 = v47;
    [supplementaryFrames enumerateObjectsUsingBlock:&aBlock];

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
    v336[4] = self;
    v49 = v47;
    v337 = v49;
    [v43 enumerateObjectsUsingBlock:v336];
    v50 = [_UICollectionLayoutItemSolverState alloc];
    v51 = [v43 count];
    supplementaryFrames2 = [(_UICollectionLayoutAuxillaryItemSolver *)v45 supplementaryFrames];
    v53 = [supplementaryFrames2 count];
    v54 = [(_UICollectionLayoutItemSolverState *)v50 initWithSolutionFrames:v49 itemFrameCount:v51 supplementaryFrameCount:v53 solvedFittingFrame:MEMORY[0x1E695E0F0] preferredSizeGroupingRanges:0 additionalOffsetForOutermostGroup:*(buf.super_class + 4) errorDescription:*(buf.super_class + 5), *(buf.super_class + 6), *(buf.super_class + 7), *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];

    v55 = *(self + 48);
    *(self + 48) = v54;

    _Block_object_dispose(&buf, 8);
    goto LABEL_208;
  }

  v57 = *(self + 16);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    selfCopy11 = self;
    [currentHandler2 handleFailureInMethod:sel__solveGroup object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:636 description:@"Cannot solve for a non-group item."];
  }

  v59 = *(selfCopy11 + 16);
  v60 = *(selfCopy11 + 24);
  v271 = *(selfCopy11 + 32);
  v61 = *(selfCopy11 + 64);
  v285 = *(selfCopy11 + 72);
  [v60 contentInsets];
  v263 = v60;
  [v60 contentSize];
  v62 = *(selfCopy11 + 88);
  v274 = v59;
  v63 = [(_UICollectionLayoutItemSolver *)selfCopy11 _layoutAxisForGroup:v59];
  if (v63 == 1)
  {
    v64 = 2;
  }

  else
  {
    v64 = v63 == 2;
  }

  v266 = *(selfCopy11 + 8);
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
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:sel__solveGroup object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:649 description:@"No valid layout axis detected."];

    if (v62)
    {
      goto LABEL_21;
    }
  }

  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:sel__solveGroup object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:650 description:@"No valid layout axis detected."];

LABEL_21:
  v65 = [v274 size];
  v264 = [v65 _isEstimatedForAxis:v278];

  interItemSpacing = [v274 interItemSpacing];
  [interItemSpacing spacing];
  v260 = v67;

  [v271 displayScale];
  v69 = v68;
  v70 = [v274 size];
  [v70 _effectiveSizeForContainer:v263 displayScale:0 ignoringInsets:v69];
  v72 = v71;
  v74 = v73;

  selfCopy7 = self;
  if (*(self + 72))
  {
    goto LABEL_37;
  }

  edgeSpacing = [v274 edgeSpacing];
  if ([edgeSpacing _hasSpacing])
  {
    if (v62 == 2)
    {
      v78 = [edgeSpacing top];
      if ([v78 isFlexibleSpacing])
      {
      }

      else
      {
        bottom = [edgeSpacing bottom];
        isFlexibleSpacing = [bottom isFlexibleSpacing];

        if (!isFlexibleSpacing)
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
      leading = [edgeSpacing leading];
      if ([leading isFlexibleSpacing])
      {
      }

      else
      {
        trailing = [edgeSpacing trailing];
        isFlexibleSpacing2 = [trailing isFlexibleSpacing];

        if (!isFlexibleSpacing2)
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

  selfCopy7 = self;
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
    v152 = [v150 stringWithFormat:@"There is no room for this NSCollectionLayoutGroup to fit into its parent group or section, or it has no room for any subitems itself. Inspect the parent and ensure the contentInsets (%@) do not result in a negative effectiveContentSize when applied to size: %@.", v151, v152];

    [v274 contentInsets];
    if (v157 != 0.0 || v154 != 0.0 || v156 != 0.0 || v155 != 0.0)
    {
      [v274 contentInsets];
      v158 = NSStringFromDirectionalEdgeInsets(v343);
      v159 = NSStringFromCGSize(v259);
      [v152 appendFormat:@"\nAlso ensure that the group's contentInsets (%@) leave space for its subitems after being applied to the group's effective size (%@).", v158, v159];
    }

    _externalDescription = [v274 _externalDescription];
    [v152 appendFormat:@"\nGroup: %@", _externalDescription];

    v161 = [_UICollectionLayoutItemSolverState alloc];
    v162 = [(_UICollectionLayoutItemSolverState *)v161 initWithSolutionFrames:0 itemFrameCount:0 supplementaryFrameCount:MEMORY[0x1E695E0F0] solvedFittingFrame:v152 preferredSizeGroupingRanges:*MEMORY[0x1E695F058] additionalOffsetForOutermostGroup:*(MEMORY[0x1E695F058] + 8) errorDescription:*(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    v163 = *(self + 48);
    *(self + 48) = v162;

    goto LABEL_207;
  }

  v256 = *(selfCopy7 + 80);
  subitems = [v274 subitems];
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
  selfCopy10 = self;
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
    v280 = [subitems objectAtIndexedSubscript:v319];
    v101 = [_UICollectionLayoutItemSolver alloc];
    obj = v101 ? [(_UICollectionLayoutItemSolver *)v101 initWithItem:v280 supplementaryEnroller:v61 container:0 layoutAxis:0 traitCollection:0 maxFrameCount:0 layoutRTL:0 preferredSizes:0 solverResult:0 solutionRecursionDepth:0]: 0;
    v102 = [(_UICollectionPreferredSizes *)*(selfCopy10 + 56) preferredSizesApplyingFrameOffset:v320 supplementaryBaseOffsets:?];
    [(_UICollectionLayoutItemSolver *)obj _solveForContainer:v322 layoutAxis:v98 traitCollection:v271 maxFrameCount:v316 layoutRTL:v266 preferredSizes:v102 largestKnownItemSize:*(selfCopy10 + 72) + 1 solutionRecursionDepth:*(selfCopy10 + 96), *(selfCopy10 + 104)];
    v272 = v102;
    errorDescription = [(_UICollectionLayoutItemSolver *)obj errorDescription];
    v104 = errorDescription == 0;

    if (!v104)
    {
      break;
    }

    layoutSize = [v280 layoutSize];
    _containerSizeDependentAxes = [layoutSize _containerSizeDependentAxes];
    v107 = obj;
    if (obj)
    {
      v107 = obj[6];
      if (v107)
      {
        v107 = v107[7];
      }
    }

    v265 = _containerSizeDependentAxes & v278;
    if (v107 >= v316)
    {
      v107 = v316;
    }

    v268 = v107;
    v275 = layoutSize;
    if (v100 >= 2.22044605e-16)
    {
      v108 = BYTE2(v323);
      if ((([*(&v322 + 1) count] != 0) & (((_containerSizeDependentAxes & v278) != v278) | v108)) == 1)
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
    edgeSpacing2 = [v113 edgeSpacing];
    [edgeSpacing2 edgeOutsets];
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
        layoutFrame = [(_UICollectionLayoutItemSolver *)obj layoutFrame];
        v130 = v128;
        *(v128 + 2) = layoutFrame;
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
      preferredSizeGroupingRanges = [(_UICollectionLayoutItemSolver *)obj preferredSizeGroupingRanges];
      v136 = [preferredSizeGroupingRanges countByEnumeratingWithState:&v311 objects:v336 count:16];
      if (v136)
      {
        v137 = *v312;
        do
        {
          for (i = 0; i != v136; ++i)
          {
            if (*v312 != v137)
            {
              objc_enumerationMutation(preferredSizeGroupingRanges);
            }

            rangeValue = [*(*(&v311 + 1) + 8 * i) rangeValue];
            v140 = v321;
            v142 = [MEMORY[0x1E696B098] valueWithRange:{v317 + rangeValue, v141}];
            [v140 addObject:v142];
          }

          v136 = [preferredSizeGroupingRanges countByEnumeratingWithState:&v311 objects:v336 count:16];
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
      if (v143 >= [subitems count])
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
      _externalDescription2 = [v274 _externalDescription];
      v169 = [v167 stringWithFormat:@"NSCollectionLayoutItem created with invalid combination of spacing and size specified. This group cannot fit even a single item. Inspect the spacing and size of the items in this group and ensure that they fit into the group when its effective size is %@.\nGroup: %@", v168, _externalDescription2];
      v171 = *(&v323 + 1);
      *(&v323 + 1) = v169;

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

    selfCopy10 = self;
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

  selfCopy10 = self;
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

  if (v285 || *(selfCopy10 + 72))
  {
    v174 = *MEMORY[0x1E695EFF8];
    v173 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    edgeSpacing3 = [v274 edgeSpacing];
    if (([edgeSpacing3 _hasSpacing] & 1) != 0 && (v267 - 1) < 2)
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
      v234 = edgeSpacing3;
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
        isFlexibleSpacing3 = [v244 isFlexibleSpacing];

        leading2 = [v235 leading];
        leading3 = leading2;
        if (!isFlexibleSpacing3)
        {
          v241 = 0.0;
        }

        [leading2 spacing];
        v174 = v248;
        v173 = v173 + v241;
      }

      else
      {

        leading3 = [v235 leading];
        [leading3 spacing];
        v250 = v249;
        leading4 = [v235 leading];
        if (![leading4 isFlexibleSpacing])
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
  interItemSpacing2 = [v274 interItemSpacing];
  [(_UICollectionLayoutItemSolver *)v175 _arrangeSolutionItems:v278 alongLayoutAxis:v99 forContainer:interItemSpacing2 additionalLayoutOffset:v174 interItemSpacing:v173];

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
    if (([*(self + 16) isGroup] & 1) == 0)
    {
      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler5 handleFailureInMethod:sel__transformGroupArrangementItemsForRTL_ object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:1249 description:{@"Invalid parameter not satisfying: %@", @"self.item.isGroup"}];
    }

    if (([*(self + 16) ignoresRTL] & 1) == 0)
    {
      [*(self + 32) displayScale];
      v184 = v183;
      v185 = [*(self + 16) size];
      [v185 _effectiveSizeForContainer:*(self + 24) displayScale:0 ignoringInsets:v184];
      v187 = v186;

      memset(&v326, 0, sizeof(v326));
      CGAffineTransformMakeTranslation(&v326, v187, 0.0);
      memset(&v325, 0, sizeof(v325));
      *v327 = v326;
      CGAffineTransformScale(&v325, v327, -1.0, 1.0);
      [*(self + 16) isCustomGroup];
      *v327 = MEMORY[0x1E69E9820];
      *&v327[8] = 3221225472;
      *&v327[16] = __71___UICollectionLayoutItemSolver__transformGroupArrangementItemsForRTL___block_invoke;
      *&v327[24] = &__block_descriptor_80_e58_v32__0___UICollectionSolutionGroupArrangementItem_8Q16_B24l;
      *&v327[32] = v325;
      [v182 enumerateObjectsUsingBlock:v327];
    }
  }

  v273 = [[_UICollectionLayoutAuxillaryItemSolver alloc] initWithAuxillaryHost:self];
  supplementaryFrames3 = [(_UICollectionLayoutAuxillaryItemSolver *)v273 supplementaryFrames];
  v188 = [supplementaryFrames3 count];
  *(&v317 + 1) += v188;
  if (!v285)
  {
    v301 = 0u;
    v302 = 0u;
    v299 = 0u;
    v300 = 0u;
    v189 = supplementaryFrames3;
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

  obja = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:supplementaryFrames3];
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

        v204 = [(_UICollectionLayoutItemSolver *)v202 queryFramesApplyingFrameOffset:v203, v204];

        [obja addObjectsFromArray:v204];
        if (!v285)
        {
          v293 = 0u;
          v294 = 0u;
          v291 = 0u;
          v292 = 0u;
          v206 = v204;
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
    v217 = [(_UICollectionLayoutItemSolver *)*(self + 72) _additionalDimensionForRequiredEdgeSpacingAlongAxis:v267 group:v274 trailingEdgeOnly:1];
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
  v173 = [(_UICollectionLayoutItemSolverState *)v230 initWithSolutionFrames:v221 itemFrameCount:v317 supplementaryFrameCount:*(&v317 + 1) solvedFittingFrame:v321 preferredSizeGroupingRanges:*(&v323 + 1) additionalOffsetForOutermostGroup:x errorDescription:y, width, height, v174, v173];
  [(_UICollectionLayoutItemSolver *)self setSolveResult:v173];

  __destructor_8_s64_s72_s80_s88_s96_s112(&v315);
LABEL_207:

LABEL_208:
  selfCopy11 = self;
LABEL_209:
  if (*(selfCopy11 + 48))
  {
    v286 = [*(selfCopy11 + 16) size];
    *(self + 40) = [v286 _containerSizeDependentAxes];
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

    container = [v4 stringWithFormat:@"<%@: %p: item=%p container=%@ (yet to be solved)>", v6, self, v9, container];;
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
  container = [v27 stringWithFormat:@"<%@: %p: solutionFrames=%@ item=%p; container:%@; itemCount=%@; supplementaryCount=%@; maxFrameCount:%@>", v6, self, v12, v13, v14, v18, v21, v23];;

LABEL_19:

  return container;
}

- (id)queryFramesApplyingFrameOffset:(double)offset
{
  v27 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = *(self + 48);
    if (v4)
    {
      if (*MEMORY[0x1E695EFF8] == a2 && *(MEMORY[0x1E695EFF8] + 8) == offset)
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
        v9 = *(self + 48);
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
              offset = [(_UICollectionLayoutFramesQueryResult *)v15 copyWithOffset:v16 index:v18 supplementaryEnrollmentIdentifier:a2, offset];

              [v8 addObject:{offset, v22}];
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

- (double)contentSizeForFrameCount:(uint64_t)count layoutAxis:
{
  if (!self)
  {
    return 0.0;
  }

  if (a2 < 1)
  {
    return *MEMORY[0x1E695F060];
  }

  v5 = *(self + 48);
  if (!v5)
  {
    return *MEMORY[0x1E695F060];
  }

  if (*(v5 + 56) <= a2)
  {
    [(_UICollectionLayoutItemSolver *)self contentFrame];
    return v25;
  }

  else
  {
    if ((count - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_contentSizeForFrameCount_layoutAxis_ object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:237 description:@"Unknown layout axis."];
    }

    [(_UICollectionLayoutItemSolver *)self contentFrame];
    v34 = v7;
    v35 = v8;
    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
    itemFrames = [(_UICollectionLayoutItemSolver *)self itemFrames];
    v14 = [itemFrames count];

    if (v14)
    {
      v15 = 0;
      v36 = x;
      v37 = y;
      v38 = height;
      v39 = width;
      do
      {
        itemFrames2 = [(_UICollectionLayoutItemSolver *)self itemFrames];
        v17 = [itemFrames2 objectAtIndexedSubscript:v15];

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
        itemFrames3 = [(_UICollectionLayoutItemSolver *)self itemFrames];
        v23 = [itemFrames3 count];
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
    v30 = _UISizeValueForAxis(count, MaxX, MaxY);
    v31 = _UISizeValueForAxis(count, v28, v29) - v30;
    v32 = _UISizeValueForAxis(count, v34, v35);
    return _UISetSizeValueForAxis(count, v34, v35, v32 + v31);
  }
}

- (id)_queryFramesWithQueryRect:(uint64_t)rect additionalFrameOffset:(uint64_t)offset itemIndexOffset:(CGFloat)indexOffset supplementaryOffsets:(CGFloat)offsets itemLimit:(CGFloat)limit
{
  if (self)
  {
    if (offset < 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__queryFramesWithQueryRect_additionalFrameOffset_itemIndexOffset_supplementaryOffsets_itemLimit_ object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:1278 description:{@"Invalid parameter not satisfying: %@", @"itemLimit >= 0"}];
    }

    if (*(self + 48))
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
      v23[4] = rect;
      v23[5] = self;
      *&v23[9] = a9;
      *&v23[10] = a10;
      v23[6] = &v24;
      [(_UICollectionLayoutItemSolver *)self _enumerateSolutionFramesForQueryRect:offset itemLimit:v23 withHandler:indexOffset, offsets, limit, a8];
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

- (id)queryFramesWithItemLimit:(void *)limit
{
  if (limit)
  {
    limit = [(_UICollectionLayoutItemSolver *)limit _queryFramesWithQueryRect:0 additionalFrameOffset:a2 itemIndexOffset:*MEMORY[0x1E695F058] supplementaryOffsets:*(MEMORY[0x1E695F058] + 8) itemLimit:*(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    v2 = vars8;
  }

  return limit;
}

- (id)queryFramesWithQueryRect:(uint64_t)rect additionalFrameOffset:(uint64_t)offset itemIndexOffset:(CGFloat)indexOffset supplementaryOffsets:(CGFloat)offsets itemLimit:(CGFloat)limit
{
  if (self)
  {
    self = [(_UICollectionLayoutItemSolver *)self _queryFramesWithQueryRect:a2 additionalFrameOffset:rect itemIndexOffset:offset supplementaryOffsets:indexOffset itemLimit:offsets, limit, a8, a9, a10];
    v10 = vars8;
  }

  return self;
}

- (id)queryFramesWithQueryRect:(uint64_t)rect additionalFrameOffset:(uint64_t)offset itemIndexOffset:(CGFloat)indexOffset itemLimit:(CGFloat)limit supplementaryRepeatOffset:(CGFloat)repeatOffset
{
  if (self)
  {
    self = [(_UICollectionLayoutItemSolver *)self _queryFramesWithQueryRect:a2 additionalFrameOffset:rect itemIndexOffset:offset itemLimit:indexOffset supplementaryRepeatOffset:limit, repeatOffset, a8, a9, a10];
    v10 = vars8;
  }

  return self;
}

- (id)_queryFramesWithQueryRect:(uint64_t)rect additionalFrameOffset:(uint64_t)offset itemIndexOffset:(CGFloat)indexOffset itemLimit:(CGFloat)limit supplementaryRepeatOffset:(CGFloat)repeatOffset
{
  if (self)
  {
    v20 = *(self + 64);
    if (v20)
    {
      if ((rect & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__queryFramesWithQueryRect_additionalFrameOffset_itemIndexOffset_itemLimit_supplementaryRepeatOffset_ object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:1322 description:{@"Invalid parameter not satisfying: %@", @"supplementaryEnroller"}];

      if ((rect & 0x8000000000000000) == 0)
      {
LABEL_4:
        if ((offset & 0x8000000000000000) == 0)
        {
LABEL_5:
          if (*(self + 48))
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
            v26[4] = self;
            offsetCopy = offset;
            v27 = v20;
            v28 = &v34;
            [(_UICollectionLayoutItemSolver *)self _enumerateSolutionFramesForQueryRect:rect itemLimit:v26 withHandler:indexOffset, limit, repeatOffset, a8];
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
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:sel__queryFramesWithQueryRect_additionalFrameOffset_itemIndexOffset_itemLimit_supplementaryRepeatOffset_ object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:1324 description:{@"Invalid parameter not satisfying: %@", @"supplementaryRepeatOffset >= 0"}];

        goto LABEL_5;
      }
    }

    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:sel__queryFramesWithQueryRect_additionalFrameOffset_itemIndexOffset_itemLimit_supplementaryRepeatOffset_ object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:1323 description:{@"Invalid parameter not satisfying: %@", @"itemLimit >= 0"}];

    if ((offset & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  v21 = 0;
LABEL_9:

  return v21;
}

- (id)frameForAbsoluteIndex:(uint64_t)index additionalFrameOffset:(double)offset interSolutionSpacing:(double)spacing repeatAxis:(double)axis
{
  if (self)
  {
    self = [(_UICollectionLayoutItemSolver *)self _frameForAbsoluteIndex:a2 additionalFrameOffset:index interSolutionSpacing:offset repeatAxis:spacing, axis];
    v6 = vars8;
  }

  return self;
}

- (id)_frameForAbsoluteIndex:(uint64_t)index additionalFrameOffset:(double)offset interSolutionSpacing:(double)spacing repeatAxis:(double)axis
{
  if (self)
  {
    v12 = *(self + 48);
    if (v12 && (v13 = *(v12 + 56)) != 0)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
LABEL_5:
        v14 = [(_UICollectionLayoutItemSolver *)self _frameOffsetForAdditionalFrameOffset:index repeatOffset:offset repeatAxis:spacing interSolutionSpacing:axis];
        v16 = v15;
        itemFrames = [(_UICollectionLayoutItemSolver *)self itemFrames];
        v18 = [itemFrames objectAtIndexedSubscript:a2 % v13];

        v19 = [(_UICollectionLayoutFramesQueryResult *)v18 copyWithOffset:a2 index:0 supplementaryEnrollmentIdentifier:v14, v16];
        goto LABEL_6;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__frameForAbsoluteIndex_additionalFrameOffset_interSolutionSpacing_repeatAxis_ object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:1436 description:{@"Invalid parameter not satisfying: %@", @"itemCount"}];

      v13 = 0;
      if ((a2 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__frameForAbsoluteIndex_additionalFrameOffset_interSolutionSpacing_repeatAxis_ object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:1437 description:{@"Invalid parameter not satisfying: %@", @"absoluteIndex>=0"}];

    goto LABEL_5;
  }

  v19 = 0;
LABEL_6:

  return v19;
}

- (id)supplementaryFrameWithKind:(uint64_t)kind index:(double)index additionalFrameOffset:(double)offset
{
  if (self)
  {
    self = [(_UICollectionLayoutItemSolver *)self _supplementaryFrameWithKind:a2 index:kind additionalFrameOffset:index, offset];
    v5 = vars8;
  }

  return self;
}

- (id)_supplementaryFrameWithKind:(uint64_t)kind index:(double)index additionalFrameOffset:(double)offset
{
  if (!self)
  {
    offset = 0;
    goto LABEL_9;
  }

  if (![a2 length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__supplementaryFrameWithKind_index_additionalFrameOffset_ object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:1451 description:{@"Invalid parameter not satisfying: %@", @"kind.length"}];

    if ((kind & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__supplementaryFrameWithKind_index_additionalFrameOffset_ object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:1452 description:{@"Invalid parameter not satisfying: %@", @"index >= 0"}];

    goto LABEL_4;
  }

  if (kind < 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (!*(self + 48))
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:sel__supplementaryFrameWithKind_index_additionalFrameOffset_ object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:1453 description:{@"Invalid parameter not satisfying: %@", @"self.solveResult"}];
  }

  v10 = [_UICollectionLayoutFramesQueryResult kindIndexKeyForKind:a2 index:kind];
  supplementaryDictByKindIndex = [(_UICollectionLayoutItemSolverState *)*(self + 48) supplementaryDictByKindIndex];
  v12 = [supplementaryDictByKindIndex objectForKeyedSubscript:v10];

  if (v12)
  {
    v13 = *(v12 + 56);
  }

  else
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:sel__supplementaryFrameWithKind_index_additionalFrameOffset_ object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:1457 description:@"Failed to retrieve the supplementary frame for kind+index key."];

    v13 = 0;
  }

  v14 = v13;
  offset = [(_UICollectionLayoutFramesQueryResult *)v12 copyWithOffset:kind index:v14 supplementaryEnrollmentIdentifier:index, offset];

LABEL_9:

  return offset;
}

- (id)supplementaryFrameWithKind:(uint64_t)kind absoluteIndex:(uint64_t)index additionalFrameOffset:(double)offset interSolutionSpacing:(double)spacing repeatAxis:(double)axis
{
  if (self)
  {
    self = [(_UICollectionLayoutItemSolver *)self _supplementaryFrameWithKind:a2 absoluteIndex:kind additionalFrameOffset:index interSolutionSpacing:offset repeatAxis:spacing, axis];
    v7 = vars8;
  }

  return self;
}

- (id)_supplementaryFrameWithKind:(uint64_t)kind absoluteIndex:(uint64_t)index additionalFrameOffset:(double)offset interSolutionSpacing:(double)spacing repeatAxis:(double)axis
{
  if (self)
  {
    v14 = *(self + 48);
    if (!v14)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__supplementaryFrameWithKind_absoluteIndex_additionalFrameOffset_interSolutionSpacing_repeatAxis_ object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:1469 description:{@"Invalid parameter not satisfying: %@", @"self.solveResult"}];

      v14 = *(self + 48);
    }

    supplementaryFrameOffsets = [(_UICollectionLayoutItemSolverState *)v14 supplementaryFrameOffsets];
    if (![a2 length])
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:sel__supplementaryFrameWithKind_absoluteIndex_additionalFrameOffset_interSolutionSpacing_repeatAxis_ object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:1473 description:{@"Invalid parameter not satisfying: %@", @"kind.length"}];
    }

    [supplementaryFrameOffsets rangeForElementKind:a2];
    v17 = v16;
    if (v16)
    {
      if ((kind & 0x8000000000000000) == 0)
      {
LABEL_8:
        v18 = [(_UICollectionLayoutItemSolver *)self _frameOffsetForAdditionalFrameOffset:index repeatOffset:offset repeatAxis:spacing interSolutionSpacing:axis];
        v20 = v19;
        v21 = [_UICollectionLayoutFramesQueryResult kindIndexKeyForKind:a2 index:kind % v17];
        supplementaryDictByKindIndex = [(_UICollectionLayoutItemSolverState *)*(self + 48) supplementaryDictByKindIndex];
        v23 = [supplementaryDictByKindIndex objectForKeyedSubscript:v21];

        if (v23)
        {
          v24 = *(v23 + 56);
        }

        else
        {
          v24 = 0;
        }

        v25 = v24;
        v26 = [(_UICollectionLayoutFramesQueryResult *)v23 copyWithOffset:kind index:v25 supplementaryEnrollmentIdentifier:v18, v20];

        goto LABEL_11;
      }
    }

    else
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:sel__supplementaryFrameWithKind_absoluteIndex_additionalFrameOffset_interSolutionSpacing_repeatAxis_ object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:1475 description:{@"Invalid parameter not satisfying: %@", @"kindCount"}];

      if ((kind & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }
    }

    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:sel__supplementaryFrameWithKind_absoluteIndex_additionalFrameOffset_interSolutionSpacing_repeatAxis_ object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:1476 description:{@"Invalid parameter not satisfying: %@", @"absoluteIndex>=0"}];

    goto LABEL_8;
  }

  v26 = 0;
LABEL_11:

  return v26;
}

- (double)_additionalDimensionForRequiredEdgeSpacingAlongAxis:(void *)axis group:(char)group trailingEdgeOnly:
{
  v4 = 0.0;
  if (!self)
  {
    edgeSpacing = [axis edgeSpacing];
    if ([edgeSpacing _hasSpacing])
    {
      if (a2 == 2)
      {
        if ((group & 1) == 0)
        {
          a2 = [edgeSpacing top];
          [a2 spacing];
          v4 = v10;
        }

        bottom = [edgeSpacing bottom];
      }

      else
      {
        if (a2 != 1)
        {
          return v4;
        }

        if ((group & 1) == 0)
        {
          a2 = [edgeSpacing leading];
          [a2 spacing];
          v4 = v8;
        }

        bottom = [edgeSpacing trailing];
      }

      v11 = bottom;
      [bottom spacing];
      v4 = v4 + v12;

      if ((group & 1) == 0)
      {
      }
    }
  }

  return v4;
}

- (void)setSolveResult:(uint64_t)result
{
  if (result)
  {
    objc_storeStrong((result + 48), a2);
  }
}

- (void)_solveSingleItemWithPreferredSize:(double)size groupMaxItemSize:(double)itemSize
{
  if (self)
  {
    [*(self + 32) displayScale];
    v9 = v8;
    v10 = [*(self + 16) size];
    [v10 _effectiveSizeForContainer:*(self + 24) displayScale:0 ignoringInsets:v9];
    v12 = v11;
    v14 = v13;

    if (a2)
    {
      fittingSize = [(_UICollectionPreferredSize *)a2 fittingSize];
      v16 = [*(self + 16) size];
      v12 = [(_UICollectionPreferredSize *)v12 preferredSizeForOriginalSize:v14 fittingSize:fittingSize layoutSize:_UICollectionPreferredSize, v16];
      v14 = v17;
    }

    layoutSize = [*(self + 16) layoutSize];
    _axesUniformAcrossSiblings = [layoutSize _axesUniformAcrossSiblings];

    if ((_axesUniformAcrossSiblings & (size > 0.0)) != 0)
    {
      sizeCopy = size;
    }

    else
    {
      sizeCopy = v12;
    }

    if (((itemSize > 0.0) & (_axesUniformAcrossSiblings >> 1)) != 0)
    {
      itemSizeCopy = itemSize;
    }

    else
    {
      itemSizeCopy = v14;
    }

    if (_axesUniformAcrossSiblings)
    {
      v14 = itemSizeCopy;
      v22 = sizeCopy;
    }

    else
    {
      v22 = v12;
    }

    [*(self + 16) _effectiveContentInsets];
    v24 = v23 + 0.0;
    v26 = v22 - (v25 + v23);
    v28 = v27 + 0.0;
    *(self + 112) = v23 + 0.0;
    *(self + 120) = v27 + 0.0;
    v30 = v14 - (v27 + v29);
    *(self + 128) = v26;
    *(self + 136) = v30;
    if (a2)
    {
      v31 = *(a2 + 48);
    }

    else
    {
      v31 = 0;
    }

    *(self + 9) = v31 & 1;
    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    auxillaryHostAuxillaryItems = [self auxillaryHostAuxillaryItems];
    supplementaryFrames = [auxillaryHostAuxillaryItems count];

    if (supplementaryFrames)
    {
      v34 = [[_UICollectionLayoutAuxillaryItemSolver alloc] initWithAuxillaryHost:self];
      supplementaryFrames = [(_UICollectionLayoutAuxillaryItemSolver *)v34 supplementaryFrames];
    }

    v35 = MEMORY[0x1E695E0F0];
    if (supplementaryFrames)
    {
      v35 = supplementaryFrames;
    }

    v36 = v35;

    [v43 addObjectsFromArray:v36];
    v37 = [_UICollectionLayoutFramesQueryResult alloc];
    if (v37)
    {
      v38 = [(_UICollectionLayoutFramesQueryResult *)&v37->super.isa initWithFrame:0 pinningAlignment:0 adjustedForPinning:0x7FFFFFFFFFFFFFFFLL visibleRectDisplacement:1 index:*(self + 16) zIndex:0 resultKind:v24 item:v28 auxillaryKind:v26 supplementaryEnrollmentIdentifier:v30, 0.0, 0];
    }

    else
    {
      v38 = 0;
    }

    [v43 addObject:v38];
    v39 = [_UICollectionLayoutItemSolverState alloc];
    v40 = [v36 count];
    v41 = [(_UICollectionLayoutItemSolverState *)v39 initWithSolutionFrames:v43 itemFrameCount:1 supplementaryFrameCount:v40 solvedFittingFrame:MEMORY[0x1E695E0F0] preferredSizeGroupingRanges:0 additionalOffsetForOutermostGroup:*MEMORY[0x1E695F058] errorDescription:*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    v42 = *(self + 48);
    *(self + 48) = v41;
  }
}

- (uint64_t)_layoutAxisForGroup:(uint64_t)group
{
  groupCopy = group;
  if (group)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__layoutAxisForGroup_ object:groupCopy file:@"_UICollectionLayoutItemSolver.m" lineNumber:1131 description:@"Must be an item group."];
    }

    if ([a2 isGroup])
    {
      v4 = a2;
      if ([v4 isVerticalGroup])
      {
        groupCopy = 2;
      }

      else if ([v4 isHorizontalGroup])
      {
        groupCopy = 1;
      }

      else if ([v4 isCustomGroup])
      {
        groupCopy = 2;
      }

      else
      {
        groupCopy = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return groupCopy;
}

- (unint64_t)_arrangeSolutionItems:(void *)items alongLayoutAxis:(void *)axis forContainer:(double)container additionalLayoutOffset:(double)offset interItemSpacing:
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
  isFlexibleSpacing = [axis isFlexibleSpacing];
  [items contentInsets];
  v17 = v16;
  [items contentInsets];
  v18 = container + v17;
  v20 = offset + v19;
  [axis spacing];
  v22 = v21;
  if ([self count])
  {
    itemsCopy = items;
    v66 = v12;
    v23 = 0;
    v24 = 0;
    v25 = 0.0;
    do
    {
      v26 = [self objectAtIndexedSubscript:v24];
      item = [(_UICollectionSolutionGroupArrangementItem *)v26 item];
      edgeSpacing = [item edgeSpacing];

      v29 = 0.0;
      v30 = 0.0;
      if (v26)
      {
        v29 = v26[4];
        v30 = v26[5];
      }

      v31 = v25 + _UISizeValueForAxis(a2, v29, v30);
      [edgeSpacing spacingForEdge:v13];
      v33 = v32;
      [edgeSpacing spacingForEdge:v14];
      v35 = v31 + v33 + v34;
      v36 = v23 + [edgeSpacing isSpacingFlexibleForEdge:v13];
      v37 = v36 + [edgeSpacing isSpacingFlexibleForEdge:v14];
      v38 = [self count];
      if (v24 == v38 - 1)
      {
        v25 = v35;
      }

      else
      {
        v25 = v22 + v35;
      }

      v23 = v37 + ((v24++ != v38 - 1) & isFlexibleSpacing);
    }

    while (v24 < [self count]);
    if (v23 <= 0)
    {
      v49 = 0.0;
    }

    else
    {
      [itemsCopy contentInsets];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
      [itemsCopy contentSize];
      v49 = (_UISizeValueForAxis(a2, v47 - (v42 + v46), v48 - (v40 + v44)) - v25) / v23;
      if (isFlexibleSpacing)
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
  result = [self count];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v53 = [self objectAtIndexedSubscript:i];
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
      if (i != [self count] - 1)
      {
        v50 = v22 + v50;
      }

      result = [self count];
    }
  }

  return result;
}

- (void)_enumerateSolutionFramesForQueryRect:(uint64_t)rect itemLimit:(CGFloat)limit withHandler:(CGFloat)handler
{
  if (a2 < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__enumerateSolutionFramesForQueryRect_itemLimit_withHandler_ object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:1369 description:{@"Invalid parameter not satisfying: %@", @"itemLimit >= 0"}];

    if (rect)
    {
      goto LABEL_3;
    }
  }

  else if (rect)
  {
    goto LABEL_3;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:sel__enumerateSolutionFramesForQueryRect_itemLimit_withHandler_ object:self file:@"_UICollectionLayoutItemSolver.m" lineNumber:1370 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

LABEL_3:
  v10 = *(self + 48);
  if (v10)
  {
    v52.origin.x = limit;
    v52.size.width = a6;
    v52.origin.y = handler;
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
    limitCopy = limit;
    handlerCopy = handler;
    v42 = a6;
    v43 = a7;
    rectCopy = rect;
    v44 = a2;
    if (v11)
    {
      goto LABEL_10;
    }

    v54.origin.x = [(_UICollectionLayoutItemSolver *)self contentFrame];
    v54.origin.y = v20;
    v54.size.width = v21;
    v54.size.height = v22;
    v53.origin.x = limit;
    v53.size.width = a6;
    v53.origin.y = handler;
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
        v27.f64[0] = limit;
        v26.f64[0] = a6;
        v27.f64[1] = handler;
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

- (double)_frameOffsetForAdditionalFrameOffset:(uint64_t)offset repeatOffset:(double)repeatOffset repeatAxis:(double)axis interSolutionSpacing:(double)spacing
{
  if (a2)
  {
    [(_UICollectionLayoutItemSolver *)self layoutFrame];
    v12 = _UISizeValueForAxis(offset, v10, v11);
    return repeatOffset + _UISetPointValueForAxis(offset, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), (v12 + spacing) * a2);
  }

  return repeatOffset;
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