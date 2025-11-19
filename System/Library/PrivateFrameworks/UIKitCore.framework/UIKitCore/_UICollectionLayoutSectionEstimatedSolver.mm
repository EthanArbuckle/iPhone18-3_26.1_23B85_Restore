@interface _UICollectionLayoutSectionEstimatedSolver
- (CGPoint)orthogonalOffset;
- (CGRect)_adjustContentFrameForLastPartialSolutionIfNeededForContentFrame:(CGRect)a3 bookmarks:(id)a4;
- (CGRect)_rectWithContentInsetTrailingLayoutDimensionAddedToToRect:(CGRect)a3 insets:(NSDirectionalEdgeInsets)a4 layoutAxis:(unint64_t)a5;
- (CGRect)auxillaryHostPinningRect;
- (CGRect)contentFrameIncludingAuxiliaries;
- (CGRect)primaryContentFrame;
- (CGSize)auxillaryHostContentSize;
- (CGVector)orthogonalScrollingPrefetchingUnitVector;
- (NSIndexSet)pinnedSupplementaryIndexes;
- (_NSRange)_rangeOfBookmarksAffectedByResolveItems:(id)a3;
- (_NSRange)preferredSizeGroupingRangeForItemAtIndex:(int64_t)a3;
- (double)_dimensionForRootGroupAlongAxis:(unint64_t)a3;
- (double)auxillaryHostPaddingBeforeBoundarySupplementaries;
- (id)_sectionContainer;
- (id)_solveWithParameters:(id)a3;
- (id)auxillaryHostAuxillaryItems;
- (id)auxillaryHostContainer;
- (id)auxillaryHostPreferredSizes;
- (id)auxillaryHostSupplementaryEnroller;
- (id)frameForIndex:(int64_t)a3;
- (id)initWithLayoutSection:(void *)a1;
- (id)queryFramesIntersectingRect:(CGRect)a3 frameOffset:(CGPoint)a4;
- (id)resolveWithParameters:(id)a3 preferredSizes:(id)a4;
- (id)sectionSupplementaryFrameForIndex:(int64_t)a3;
- (id)sectionSupplementaryFrameWithKind:(id)a3 index:(int64_t)a4;
- (id)supplementaryFrameWithKind:(id)a3 index:(int64_t)a4;
- (id)unpinnedSectionSupplementaryFrameForIndex:(int64_t)a3;
- (id)unpinnedSectionSupplementaryFrameWithKind:(id)a3 forIndex:(int64_t)a4;
- (id)visualDescription;
- (int64_t)sectionSupplementaryKindIndexForEnrollmentIdentifier:(id)a3;
- (unint64_t)auxillaryHostLayoutAxis;
- (void)_configureInitialOrthogonalPrefetchingUnitVector;
- (void)_updateSolutionAuxillaryRangeIndexerKindDict:(id)a3 fromBookmark:(id)a4;
- (void)setOrthogonalOffset:(CGPoint)a3;
- (void)solveForContainer:(id)a3 supplementaryContainer:(id)a4 traitCollection:(id)a5 layoutAxis:(unint64_t)a6 frameCount:(int64_t)a7 preferredSizes:(id)a8 layoutRTL:(BOOL)a9;
- (void)updatePinnedSupplementaryItemsWithVisibleBounds:(CGRect)a3;
- (void)updatePinnedSupplementaryItemsWithVisibleBounds:(CGRect)a3 overrideContentRectForPinning:(CGRect)a4;
@end

@implementation _UICollectionLayoutSectionEstimatedSolver

- (id)_sectionContainer
{
  v4 = [(_UICollectionLayoutSectionEstimatedSolver *)self layoutSection];
  v5 = [(_UICollectionLayoutSectionEstimatedSolver *)self container];
  [v5 contentInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if ([(_UICollectionLayoutSectionEstimatedSolver *)self layoutAxis]== 2)
  {
    [v4 contentInsets];
    v9 = v9 + v14;
    [v4 contentInsets];
    v13 = v13 + v15;
  }

  else if ([(_UICollectionLayoutSectionEstimatedSolver *)self layoutAxis]== 1)
  {
    [v4 contentInsets];
    v7 = v7 + v16;
    [v4 contentInsets];
    v11 = v11 + v17;
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:1051 description:@"Unknown layout axis."];
  }

  v19 = [_UICollectionLayoutContainer alloc];
  v20 = [(_UICollectionLayoutSectionEstimatedSolver *)self container];
  [v20 contentSize];
  v23 = [(_UICollectionLayoutContainer *)v19 initWithContentSize:v21 contentInsets:v22, v7, v9, v11, v13];

  return v23;
}

- (id)auxillaryHostAuxillaryItems
{
  v2 = [(_UICollectionLayoutSectionEstimatedSolver *)self layoutSection];
  v3 = [v2 boundarySupplementaryItems];

  return v3;
}

- (CGRect)contentFrameIncludingAuxiliaries
{
  if (self)
  {
    v2 = self->_solutionState;
    v3 = v2;
    if (v2)
    {
      sectionGeometryTranslator = v2->_sectionGeometryTranslator;
      goto LABEL_4;
    }
  }

  else
  {
    v3 = 0;
  }

  sectionGeometryTranslator = 0;
LABEL_4:
  v5 = sectionGeometryTranslator;

  p_x = MEMORY[0x1E695F058];
  p_y = (MEMORY[0x1E695F058] + 8);
  p_width = (MEMORY[0x1E695F058] + 16);
  p_height = (MEMORY[0x1E695F058] + 24);
  if (v5)
  {
    p_height = &v5->_contentFrameIncludingAuxiliaries.size.height;
    p_width = &v5->_contentFrameIncludingAuxiliaries.size.width;
    p_y = &v5->_contentFrameIncludingAuxiliaries.origin.y;
    p_x = &v5->_contentFrameIncludingAuxiliaries.origin.x;
  }

  v10 = *p_x;
  v11 = *p_y;
  v12 = *p_width;
  v13 = *p_height;

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)_configureInitialOrthogonalPrefetchingUnitVector
{
  v3 = [(NSCollectionLayoutSection *)self->_layoutSection scrollsOrthogonally];
  v4 = 0.0;
  v5 = 0.0;
  if (v3)
  {
    layoutAxis = self->_layoutAxis;
    v5 = 1.0;
    v7 = layoutAxis == 2 ? 1.0 : 0.0;
    if (layoutAxis != 1)
    {
      v4 = v7;
      v5 = 0.0;
    }
  }

  [(_UICollectionLayoutSectionEstimatedSolver *)self setOrthogonalScrollingPrefetchingUnitVector:v4, v5];
}

- (unint64_t)auxillaryHostLayoutAxis
{
  if (self)
  {
    return *(self + 112);
  }

  return self;
}

- (id)auxillaryHostContainer
{
  if (!self || (v3 = self->_memoizedSupplementaryHostContainer) == 0)
  {
    if (![(NSCollectionLayoutSection *)self->_layoutSection supplementariesFollowContentInsets])
    {
      v14 = [(_UICollectionLayoutSectionEstimatedSolver *)self supplementaryContainer];
      memoizedSupplementaryHostContainer = self->_memoizedSupplementaryHostContainer;
      self->_memoizedSupplementaryHostContainer = v14;
LABEL_15:

      v3 = self->_memoizedSupplementaryHostContainer;
      goto LABEL_16;
    }

    containerLayoutAxis = self->_containerLayoutAxis;
    if (containerLayoutAxis == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = containerLayoutAxis == 2;
    }

    [(NSCollectionLayoutSection *)self->_layoutSection contentInsets];
    if (v5)
    {
      if (v5 == 2)
      {
        v10 = v6;
        v11 = v8;
        v12 = 0.0;
        v13 = 0.0;
LABEL_14:
        v16 = [_UICollectionLayoutContainer alloc];
        v14 = [(_UICollectionLayoutSectionEstimatedSolver *)self supplementaryContainer];
        [(_UICollectionLayoutContainer *)v14 contentSize];
        memoizedSupplementaryHostContainer = [(_UICollectionLayoutContainer *)v16 initWithContentSize:v17 contentInsets:v18, v10, v13, v11, v12];
        objc_storeStrong(&self->_memoizedSupplementaryHostContainer, memoizedSupplementaryHostContainer);
        goto LABEL_15;
      }

      v13 = v7;
      v12 = v9;
      v11 = 0.0;
    }

    else
    {
      v12 = 0.0;
      v11 = 0.0;
      v13 = 0.0;
    }

    v10 = 0.0;
    goto LABEL_14;
  }

LABEL_16:

  return v3;
}

- (CGSize)auxillaryHostContentSize
{
  if (self && self->_solutionState)
  {
    v3 = [(_UICollectionLayoutSectionEstimatedSolver *)self layoutAxis];
    v4 = self->_solutionState;
    v5 = v4;
    if (v4)
    {
      v4 = v4->_sectionGeometryTranslator;
    }

    v6 = [(_UICollectionLayoutSectionGeometryTranslator *)v4 auxillaryHostContentSize];
    v8 = v7;

    v9 = [(_UICollectionLayoutSectionEstimatedSolver *)self layoutSection];
    v10 = [v9 scrollsOrthogonally];
    v11 = v3 == 2;
    if (v3 == 1)
    {
      v11 = 2;
    }

    if (!v10)
    {
      v3 = v11;
    }

    v12 = [(_UICollectionLayoutSectionEstimatedSolver *)self supplementaryContainer];
    [v12 contentSize];
    v15 = _UISizeValueForAxis(v3, v13, v14);

    v16 = _UISetSizeValueForAxis(v3, v6, v8, v15);
    v18 = v17;
  }

  else
  {
    v16 = *MEMORY[0x1E695F060];
    v18 = *(MEMORY[0x1E695F060] + 8);
  }

  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (id)auxillaryHostSupplementaryEnroller
{
  v2 = objc_alloc_init(_UICollectionLayoutSupplementaryEnroller);

  return v2;
}

- (id)auxillaryHostPreferredSizes
{
  if (self)
  {
    self = self->_preferredSizes;
  }

  return self;
}

- (double)auxillaryHostPaddingBeforeBoundarySupplementaries
{
  v2 = [(_UICollectionLayoutSectionEstimatedSolver *)self layoutSection];
  v3 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v2 _paddingToBoundarySupplementaries];
    v3 = v4;
  }

  return v3;
}

- (CGPoint)orthogonalOffset
{
  x = self->_orthogonalOffset.x;
  y = self->_orthogonalOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)primaryContentFrame
{
  if (self)
  {
    v2 = self->_solutionState;
    v3 = v2;
    if (v2)
    {
      sectionGeometryTranslator = v2->_sectionGeometryTranslator;
      goto LABEL_4;
    }
  }

  else
  {
    v3 = 0;
  }

  sectionGeometryTranslator = 0;
LABEL_4:
  v5 = sectionGeometryTranslator;

  p_x = MEMORY[0x1E695F058];
  p_y = (MEMORY[0x1E695F058] + 8);
  p_width = (MEMORY[0x1E695F058] + 16);
  p_height = (MEMORY[0x1E695F058] + 24);
  if (v5)
  {
    p_height = &v5->_primaryContentFrame.size.height;
    p_width = &v5->_primaryContentFrame.size.width;
    p_y = &v5->_primaryContentFrame.origin.y;
    p_x = &v5->_primaryContentFrame.origin.x;
  }

  v10 = *p_x;
  v11 = *p_y;
  v12 = *p_width;
  v13 = *p_height;

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGVector)orthogonalScrollingPrefetchingUnitVector
{
  dx = self->_orthogonalScrollingPrefetchingUnitVector.dx;
  dy = self->_orthogonalScrollingPrefetchingUnitVector.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

- (id)initWithLayoutSection:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v9.receiver = a1;
  v9.super_class = _UICollectionLayoutSectionEstimatedSolver;
  v3 = objc_msgSendSuper2(&v9, sel_init);
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(v3 + 2, a2);
    v4[5] = 0;
    if (([a2 _isEmptySection] & 1) == 0)
    {
      v5 = [a2 group];
      v6 = [v5 size];
      *(v4 + 9) = [v6 isContainerSize] ^ 1;
    }

    v7 = *(MEMORY[0x1E695F050] + 16);
    *(v4 + 10) = *MEMORY[0x1E695F050];
    *(v4 + 11) = v7;
  }

  [v4[2] _checkForDuplicateSupplementaryItemKindsAndThrowIfFound];
  return v4;
}

- (void)solveForContainer:(id)a3 supplementaryContainer:(id)a4 traitCollection:(id)a5 layoutAxis:(unint64_t)a6 frameCount:(int64_t)a7 preferredSizes:(id)a8 layoutRTL:(BOOL)a9
{
  objc_storeStrong(&self->_container, a3);
  if (a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = a3;
  }

  objc_storeStrong(&self->_supplementaryContainer, v16);
  objc_storeStrong(&self->_traitCollection, a5);
  self->_containerLayoutAxis = a6;
  v17 = [(_UICollectionLayoutSectionEstimatedSolver *)self layoutSection];
  v18 = [v17 scrollsOrthogonally];
  v19 = a6 == 2;
  if (a6 == 1)
  {
    v19 = 2;
  }

  if (!v18)
  {
    v19 = a6;
  }

  self->_layoutAxis = v19;

  self->_frameCount = a7;
  objc_storeStrong(&self->_preferredSizes, a8);
  self->_layoutRTL = a9;
  v20 = +[_UICollectionLayoutSolveParameters parametersForFullResolve];
  v21 = [(_UICollectionLayoutSectionEstimatedSolver *)self _solveWithParameters:v20];

  [(_UICollectionLayoutSectionEstimatedSolver *)self _configureInitialOrthogonalPrefetchingUnitVector];
}

- (id)resolveWithParameters:(id)a3 preferredSizes:(id)a4
{
  objc_storeStrong(&self->_preferredSizes, a4);

  return [(_UICollectionLayoutSectionEstimatedSolver *)self _solveWithParameters:a3];
}

- (void)updatePinnedSupplementaryItemsWithVisibleBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(_UICollectionLayoutSectionEstimatedSolver *)self layoutSection];
  v9 = [v8 _isEmptySection];

  if ((v9 & 1) == 0)
  {
    if (self)
    {
      sectionSupplementarySolution = self->_sectionSupplementarySolution;
    }

    else
    {
      sectionSupplementarySolution = 0;
    }

    [(_UICollectionLayoutAuxillaryItemSolver *)&sectionSupplementarySolution->super.isa resolveSupplementaryItemsForVisibleBounds:y, width, height];
  }
}

- (void)updatePinnedSupplementaryItemsWithVisibleBounds:(CGRect)a3 overrideContentRectForPinning:(CGRect)a4
{
  self->_overrideContentRectForPinning = a4;
  [(_UICollectionLayoutSectionEstimatedSolver *)self updatePinnedSupplementaryItemsWithVisibleBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = *(MEMORY[0x1E695F050] + 16);
  self->_overrideContentRectForPinning.origin = *MEMORY[0x1E695F050];
  self->_overrideContentRectForPinning.size = v5;
}

- (id)queryFramesIntersectingRect:(CGRect)a3 frameOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  height = a3.size.height;
  width = a3.size.width;
  v8 = a3.origin.y;
  v9 = a3.origin.x;
  if (self)
  {
    solutionState = self->_solutionState;
  }

  else
  {
    solutionState = 0;
  }

  v12 = [(_UICollectionLayoutSectionEstimatedSolver *)self layoutSection];
  if (solutionState && ([v12 _isEmptySection] & 1) == 0)
  {
    sectionGeometryTranslator = solutionState->_sectionGeometryTranslator;
    v15 = [(_UICollectionLayoutSectionGeometryTranslator *)sectionGeometryTranslator contentRectForSectionRect:v9, v8, width, height];
    v38 = v16;
    v39 = v15;
    v35 = v17;
    v37 = v18;
    if (sectionGeometryTranslator)
    {
      v20 = *(sectionGeometryTranslator + 72);
      v19 = *(sectionGeometryTranslator + 80);
    }

    else
    {
      v19 = 0.0;
      v20 = 0.0;
    }

    v21 = x + v20;
    v22 = y + v19;
    bookmarks = solutionState->_bookmarks;
    geometricIndexer = solutionState->_geometricIndexer;
    v25 = [(_UICollectionLayoutSectionEstimatedSolver *)self layoutAxis];
    v26 = [(_UICollectionLayoutSectionEstimatedSolver *)self frameCount];
    v27 = objc_opt_new();
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __85___UICollectionLayoutSectionEstimatedSolver_queryFramesIntersectingRect_frameOffset___block_invoke;
    v40[3] = &unk_1E70FB068;
    v42 = bookmarks;
    v43 = v25;
    v44 = v39;
    v45 = v36;
    v46 = v38;
    v47 = v37;
    v48 = v9;
    v49 = v8;
    v50 = width;
    v51 = height;
    v52 = v26;
    v53 = v21;
    v54 = v22;
    v28 = v27;
    v41 = v28;
    if (geometricIndexer)
    {
      v56 = 0;
      ptr = geometricIndexer->_root.__ptr_;
      v31.f64[0] = v38;
      v30.f64[0] = v39;
      v30.f64[1] = v36;
      v31.f64[1] = v37;
      v55[0] = vaddq_f64(v30, vminnmq_f64(v31, 0));
      v55[1] = vabsq_f64(v31);
      _UIRTreeContainerNode<unsigned long>::enumerateElementsIntersecting(ptr, v55, &v56, v40);
    }

    if (self)
    {
      sectionSupplementarySolution = self->_sectionSupplementarySolution;
    }

    else
    {
      sectionSupplementarySolution = 0;
    }

    v33 = [(_UICollectionLayoutAuxillaryItemSolver *)sectionSupplementarySolution queryFramesIntersectingRect:v9 frameOffset:v8, width, height, x, y];
    if ([v33 count])
    {
      [v28 addObjectsFromArray:v33];
    }

    v13 = v28;
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

- (id)frameForIndex:(int64_t)a3
{
  if (self && (solutionState = self->_solutionState) != 0)
  {
    v6 = solutionState->_itemRangeIndexer;
    v7 = self->_solutionState;
    v8 = v7;
    if (v7)
    {
      bookmarks = v7->_bookmarks;
    }

    else
    {
      bookmarks = 0;
    }

    v10 = bookmarks;

    if (!v6 || (ptr = v6->_orderedRangeIndexerImpl.__ptr_, v36[0] = 0, v36[1] = 0, v37 = 0, _UIOrderedRangeIndexerImpl::binarySearchForLocation(ptr, a3, v36), v12 = 0, v37 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v13 = [(NSArray *)v10 objectAtIndexedSubscript:?];
      v14 = v13;
      if (v13)
      {
        v15 = a3 - *(v13 + 24);
        v13 = *(v13 + 8);
      }

      else
      {
        v15 = a3;
      }

      v16 = [(_UICollectionLayoutItemSolver *)v13 itemFrames];
      v17 = [v16 objectAtIndexedSubscript:v15];

      v18 = self->_solutionState;
      v19 = v18;
      if (v18)
      {
        sectionGeometryTranslator = v18->_sectionGeometryTranslator;
      }

      else
      {
        sectionGeometryTranslator = 0;
      }

      v21 = sectionGeometryTranslator;

      v22 = 0.0;
      v23 = 0.0;
      v24 = 0.0;
      v25 = 0.0;
      v26 = 0.0;
      if (v17)
      {
        v26 = *(v17 + 80);
        v23 = *(v17 + 88);
        v24 = *(v17 + 96);
        v25 = *(v17 + 104);
      }

      v27 = 0.0;
      if (v21)
      {
        v27 = v21[9];
        v22 = v21[10];
      }

      if (v14)
      {
        v29 = v14[5];
        v28 = v14[6];
      }

      else
      {
        v28 = 0.0;
        v29 = 0.0;
      }

      v30 = v22 + v28;
      v31 = v26 + v27 + v29;
      v32 = v23 + v30;
      v39.origin.x = v26;
      v39.origin.y = v23;
      v39.size.width = v24;
      v39.size.height = v25;
      Width = CGRectGetWidth(v39);
      v40.origin.x = v26;
      v40.origin.y = v23;
      v40.size.width = v24;
      v40.size.height = v25;
      Height = CGRectGetHeight(v40);
      v12 = [(_UICollectionLayoutFramesQueryResult *)v17 copyWithFrame:a3 index:v31, v32, Width, Height];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)supplementaryFrameWithKind:(id)a3 index:(int64_t)a4
{
  if (!self || !self->_solutionState)
  {
    v12 = 0;
    goto LABEL_27;
  }

  if (![a3 length])
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:253 description:{@"Invalid parameter not satisfying: %@", @"kind.length"}];

    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_31:
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"absoluteIndex >= 0"}];

    goto LABEL_5;
  }

  if (a4 < 0)
  {
    goto LABEL_31;
  }

LABEL_5:
  solutionState = self->_solutionState;
  if (solutionState)
  {
    solutionState = solutionState->_sectionGeometryTranslator;
  }

  v9 = solutionState;
  v10 = [(_UICollectionLayoutAuxillaryItemSolver *)&self->_sectionSupplementarySolution->super.isa supplementaryFrameWithKind:a3 index:a4 additionalFrameOffset:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  if (v10)
  {
    v11 = v10;
    v12 = v11;
  }

  else
  {
    v13 = [(_UICollectionLayoutSectionEstimatedSolver *)self layoutSection];
    v14 = self->_solutionState;
    if (v14)
    {
      v14 = v14->_auxillaryRangeIndexerKindDict;
    }

    v15 = v14;
    v16 = self->_solutionState;
    v17 = v16;
    if (v16)
    {
      bookmarks = v16->_bookmarks;
    }

    else
    {
      bookmarks = 0;
    }

    v19 = bookmarks;

    v20 = [(_UICollectionLayoutSolutionState *)v15 objectForKeyedSubscript:a3];
    v21 = v20;
    if (v20 && (v22 = *(v20 + 8), v35[0] = 0, v35[1] = 0, v36 = 0, _UIOrderedRangeIndexerImpl::binarySearchForLocation(v22, a4, v35), v36 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v23 = [(NSArray *)v19 objectAtIndexedSubscript:?];
      v24 = v23;
      v25 = 0.0;
      if (v23)
      {
        v26 = *(v23 + 40);
        v27 = *(v23 + 48);
        v28 = *(v23 + 8);
        v23 = v24[2];
      }

      else
      {
        v28 = 0;
        v26 = 0.0;
        v27 = 0.0;
      }

      v29 = a4 - [v23 offsetForElementKind:a3];
      v30 = 0.0;
      if (v9)
      {
        v30 = v9[9];
        v25 = v9[10];
      }

      v31 = [(_UICollectionLayoutItemSolver *)v28 supplementaryFrameWithKind:a3 index:v29 additionalFrameOffset:v26 + v30, v27 + v25];
      v11 = v31;
      if (v31)
      {
        v12 = [(_UICollectionLayoutFramesQueryResult *)v31 copyWithIndex:a4];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

LABEL_27:

  return v12;
}

- (id)sectionSupplementaryFrameForIndex:(int64_t)a3
{
  if (self)
  {
    if (self->_solutionState || ([MEMORY[0x1E696AAA8] currentHandler], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "handleFailureInMethod:object:file:lineNumber:description:", a2, self, @"_UICollectionLayoutSectionEstimatedSolver.m", 290, @"Invalid parameter not satisfying: %@", @"self.solutionState"), v14, self))
    {
      sectionSupplementarySolution = self->_sectionSupplementarySolution;
      goto LABEL_4;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:0 file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:290 description:{@"Invalid parameter not satisfying: %@", @"self.solutionState"}];
  }

  sectionSupplementarySolution = 0;
LABEL_4:
  v7 = [(_UICollectionLayoutAuxillaryItemSolver *)&sectionSupplementarySolution->super.isa supplementaryFrames];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:291 description:{@"Invalid parameter not satisfying: %@", @"index < self.sectionSupplementarySolution.supplementaryFrames.count"}];

    if (self)
    {
      goto LABEL_6;
    }
  }

  else if (self)
  {
LABEL_6:
    v9 = self->_sectionSupplementarySolution;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  v10 = [(_UICollectionLayoutAuxillaryItemSolver *)&v9->super.isa supplementaryFrames];
  v11 = [v10 objectAtIndexedSubscript:a3];

  return v11;
}

- (id)unpinnedSectionSupplementaryFrameForIndex:(int64_t)a3
{
  if (self)
  {
    sectionSupplementarySolution = self->_sectionSupplementarySolution;
  }

  else
  {
    sectionSupplementarySolution = 0;
  }

  v7 = sectionSupplementarySolution;
  v8 = [(_UICollectionLayoutAuxillaryItemSolver *)v7 unpinnedFramesOfPinnedSupplementaries];

  if (v8)
  {
    if (!self || !self->_solutionState)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:303 description:{@"Invalid parameter not satisfying: %@", @"self.solutionState"}];
    }

    v9 = [(_UICollectionLayoutAuxillaryItemSolver *)v7 unpinnedFramesOfPinnedSupplementaries];
    v10 = [v9 count];

    if (v10 <= a3)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:304 description:{@"Invalid parameter not satisfying: %@", @"index < sectionSupplementarySolution.unpinnedFramesOfPinnedSupplementaries.count"}];
    }

    v11 = [(_UICollectionLayoutAuxillaryItemSolver *)v7 unpinnedFramesOfPinnedSupplementaries];
    v12 = [v11 objectAtIndexedSubscript:a3];
  }

  else
  {
    v12 = [(_UICollectionLayoutSectionEstimatedSolver *)self sectionSupplementaryFrameForIndex:a3];
  }

  return v12;
}

- (id)unpinnedSectionSupplementaryFrameWithKind:(id)a3 forIndex:(int64_t)a4
{
  if (a3 && [a3 length])
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:311 description:{@"Invalid parameter not satisfying: %@", @"index >= 0"}];

    if (self)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:310 description:{@"Invalid parameter not satisfying: %@", @"kind != nil && kind.length > 0"}];

  if (a4 < 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (self)
  {
LABEL_5:
    sectionSupplementarySolution = self->_sectionSupplementarySolution;
    goto LABEL_6;
  }

LABEL_11:
  sectionSupplementarySolution = 0;
LABEL_6:

  return [(_UICollectionLayoutAuxillaryItemSolver *)&sectionSupplementarySolution->super.isa unpinnedSupplementaryFrameWithKind:a3 index:a4];
}

- (int64_t)sectionSupplementaryKindIndexForEnrollmentIdentifier:(id)a3
{
  if (a3)
  {
    if (self)
    {
LABEL_3:
      sectionSupplementaryEnroller = self->_sectionSupplementaryEnroller;
      goto LABEL_4;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:317 description:{@"Invalid parameter not satisfying: %@", @"enrollmentIdentifier"}];

    if (self)
    {
      goto LABEL_3;
    }
  }

  sectionSupplementaryEnroller = 0;
LABEL_4:

  return [(_UICollectionLayoutSupplementaryEnroller *)sectionSupplementaryEnroller kindIndexForEnrollmentIdentifier:a3];
}

- (id)sectionSupplementaryFrameWithKind:(id)a3 index:(int64_t)a4
{
  if ([a3 length])
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:324 description:{@"Invalid parameter not satisfying: %@", @"index>=0"}];

    if (self)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  [v12 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:323 description:{@"Invalid parameter not satisfying: %@", @"kind.length"}];

  if (a4 < 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (self)
  {
LABEL_4:
    sectionSupplementarySolution = self->_sectionSupplementarySolution;
    goto LABEL_5;
  }

LABEL_10:
  sectionSupplementarySolution = 0;
LABEL_5:
  v9 = *MEMORY[0x1E695EFF8];
  v10 = *(MEMORY[0x1E695EFF8] + 8);

  return [(_UICollectionLayoutAuxillaryItemSolver *)&sectionSupplementarySolution->super.isa supplementaryFrameWithKind:a3 index:a4 additionalFrameOffset:v9, v10];
}

- (id)visualDescription
{
  v15[1] = *MEMORY[0x1E69E9840];
  [(_UICollectionLayoutContainer *)self->_container contentSize];
  v4 = v3;
  [(_UICollectionLayoutContainer *)self->_container contentSize];
  v6 = v5;
  v7 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v4, v5}];
  v8 = [(_UICollectionLayoutSectionEstimatedSolver *)self queryFramesIntersectingRect:0.0, 0.0, v4, v6];
  v9 = [v8 valueForKey:@"frame"];
  v15[0] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v11 = [v10 arrayByAddingObjectsFromArray:v9];

  v12 = [[_UIASCIIArtFramesRenderer alloc] initWithFrames:v11];
  v13 = [(_UIASCIIArtFramesRenderer *)v12 description];

  return v13;
}

- (NSIndexSet)pinnedSupplementaryIndexes
{
  if (self)
  {
    location = self[2]._internal._singleRange._range.location;
    if (location)
    {
      return *(location + 40);
    }

    else
    {
      return 0;
    }
  }

  return self;
}

- (_NSRange)preferredSizeGroupingRangeForItemAtIndex:(int64_t)a3
{
  if (self)
  {
    self = self->_solutionState;
    v4 = self;
    if (self)
    {
      self = self->_layoutAxis;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = [(_UIOrderedRangeIndexer *)self rangeContainingLocation:a3];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (void)setOrthogonalOffset:(CGPoint)a3
{
  layoutAxis = self->_layoutAxis;
  if (layoutAxis == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = layoutAxis == 2;
  }

  v6 = _UISetPointValueForAxis(v5, a3.x, a3.y, 0.0);
  v8 = v7;
  v9 = 1.0;
  x = self->_orthogonalOffset.x;
  y = self->_orthogonalOffset.y;
  v12 = v6 < x;
  v13 = v6 <= x;
  v14 = -1.0;
  if (!v12)
  {
    v14 = 0.0;
  }

  if (!v13)
  {
    v14 = 1.0;
  }

  if (v8 <= y)
  {
    v9 = 0.0;
    if (v8 < y)
    {
      v9 = -1.0;
    }
  }

  [(_UICollectionLayoutSectionEstimatedSolver *)self setOrthogonalScrollingPrefetchingUnitVector:v14, v9];
  self->_orthogonalOffset.x = v6;
  self->_orthogonalOffset.y = v8;
}

- (double)_dimensionForRootGroupAlongAxis:(unint64_t)a3
{
  v5 = [(_UICollectionLayoutSectionEstimatedSolver *)self _sectionContainer];
  v6 = [(_UICollectionLayoutSectionEstimatedSolver *)self traitCollection];
  [v6 displayScale];
  v8 = v7;

  v9 = [(_UICollectionLayoutSectionEstimatedSolver *)self layoutSection];
  v10 = [v9 group];
  v11 = [v10 size];
  [v11 _effectiveSizeForContainer:v5 displayScale:0 ignoringInsets:v8];
  v13 = v12;
  v15 = v14;

  v16 = _UISizeValueForAxis(a3, v13, v15);
  return v16;
}

- (id)_solveWithParameters:(id)a3
{
  v308 = *MEMORY[0x1E69E9840];
  v184 = objc_alloc_init(_UICollectionLayoutSolveResult);
  v193 = self;
  v4 = [(_UICollectionLayoutSectionEstimatedSolver *)self layoutSection];
  v5 = [v4 _isEmptySection];

  if (v5)
  {
    goto LABEL_166;
  }

  layoutAxis = v193->_layoutAxis;
  [(_UICollectionLayoutContainer *)v193->_container contentSize];
  v189 = [(_UICollectionLayoutSectionEstimatedSolver *)v193 _sectionContainer];
  v166 = v193->_preferredSizes;
  v167 = [(NSCollectionLayoutSection *)v193->_layoutSection group];
  v160 = [v167 layoutSize];
  v6 = [v160 _axesUniformAcrossSiblings];
  if (v6)
  {
    v177 = [v167 containsEstimatedSizeItem];
  }

  else
  {
    v177 = 0;
  }

  v299[0] = 0;
  v299[1] = v299;
  v299[2] = 0x2020000000;
  v299[3] = 0;
  v298[0] = 0;
  v298[1] = v298;
  v298[2] = 0x2020000000;
  v298[3] = 0x7FFFFFFFFFFFFFFFLL;
  v297[0] = 0;
  v297[1] = v297;
  v297[2] = 0x2020000000;
  v297[3] = 0x7FFFFFFFFFFFFFFFLL;
  v295[0] = 0;
  v295[1] = v295;
  v295[2] = 0x2020000000;
  v296 = 0;
  location = &v193->_solutionState;
  v7 = v193->_solutionState;
  if (v7)
  {
    v8 = v7;
    if (v6)
    {
      v9 = v7->_bookmarks;
      v181 = [(NSArray *)v9 count];

      v10 = 0;
LABEL_9:
      v12 = [(_UICollectionPreferredSizes *)v193->_preferredSizes largestItemSize];
      v14 = v13;
      v15 = [v167 subitems];
      v16 = [v15 count] == 1;

      goto LABEL_16;
    }

    if (a3 && ([*(a3 + 1) count] || objc_msgSend(*(a3 + 2), "count")))
    {
      v10 = [(_UICollectionLayoutSectionEstimatedSolver *)v193 _rangeOfBookmarksAffectedByResolveItems:a3];
      v11 = v17;
    }

    else
    {
      v11 = 0;
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v181 = 0;
    v11 = 0;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  v16 = 0;
  v12 = *MEMORY[0x1E695F060];
  v14 = *(MEMORY[0x1E695F060] + 8);
  v181 = v11;
LABEL_16:
  v18 = [v167 subitems];
  v19 = v18;
  if (v16)
  {
    v20 = [v18 objectAtIndexedSubscript:0];
    v21 = [v20 layoutSize];
    v22 = [v21 widthDimension];
    v23 = [v22 isEstimated];
    if (v23 && ([v21 widthDimension], v16 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v16, "isUniformAcrossSiblings") & 1) == 0))
    {

      v26 = 0;
    }

    else
    {
      v24 = [v21 heightDimension];
      if ([v24 isEstimated])
      {
        v25 = [v21 heightDimension];
        v187 = [v25 isUniformAcrossSiblings];

        if (v23)
        {
        }

        if ((v187 & 1) == 0)
        {
          v26 = 0;
          goto LABEL_35;
        }
      }

      else
      {

        if (v23)
        {
        }
      }

      v27 = [v160 _axesUniformAcrossSiblings];
      v22 = [v20 auxillaryItems];
      if ([v22 count])
      {
        v28 = 0;
      }

      else
      {
        v28 = v27 == v6;
      }

      v26 = v28;
    }

LABEL_35:
    goto LABEL_36;
  }

  v26 = 0;
LABEL_36:

  frameCount = v193->_frameCount;
  v291 = 0;
  v292 = &v291;
  v293 = 0x2020000000;
  v294 = 0;
  v287 = 0;
  v288 = &v287;
  v289 = 0x2020000000;
  v161 = frameCount;
  v290 = frameCount;
  v281 = 0;
  v282 = &v281;
  v283 = 0x3032000000;
  v284 = __Block_byref_object_copy__31;
  v285 = __Block_byref_object_dispose__31;
  v286 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v279[0] = 0;
  v279[1] = v279;
  v279[2] = 0x3032000000;
  v279[3] = __Block_byref_object_copy__31;
  v279[4] = __Block_byref_object_dispose__31;
  v280 = objc_alloc_init(_UICollectionLayoutAuxillaryOffsets);
  v277[0] = 0;
  v277[1] = v277;
  v277[2] = 0x3032000000;
  v277[3] = __Block_byref_object_copy__31;
  v277[4] = __Block_byref_object_dispose__31;
  v278 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke;
  aBlock[3] = &unk_1E70FB090;
  v275 = v277;
  aBlock[4] = v193;
  v30 = v189;
  v274 = v30;
  v276 = layoutAxis;
  v31 = _Block_copy(aBlock);
  v268[0] = MEMORY[0x1E69E9820];
  v268[1] = 3221225472;
  v268[2] = __66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_2;
  v268[3] = &unk_1E70FB0B8;
  v272 = v26;
  v32 = v31;
  v270 = v279;
  v271 = &v291;
  v268[4] = v193;
  v268[5] = v166;
  v269 = v32;
  v268[6] = a3;
  v33 = _Block_copy(v268);
  v261[0] = MEMORY[0x1E69E9820];
  v261[1] = 3221225472;
  v261[2] = __66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_3;
  v261[3] = &unk_1E70FB0E0;
  v261[4] = v193;
  v261[5] = v166;
  v263 = &v291;
  v264 = v279;
  v34 = v30;
  v262 = v34;
  v265 = layoutAxis;
  v266 = v12;
  v267 = v14;
  v163 = _Block_copy(v261);
  v260[0] = MEMORY[0x1E69E9820];
  v260[1] = 3221225472;
  v260[2] = __66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_4;
  v260[3] = &unk_1E70FB108;
  v260[5] = v297;
  v260[4] = v193;
  v162 = _Block_copy(v260);
  v258[0] = MEMORY[0x1E69E9820];
  v258[1] = 3221225472;
  v258[2] = __66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_5;
  v258[3] = &unk_1E70FB130;
  v156 = v32;
  v259 = v156;
  v164 = _Block_copy(v258);
  v246[0] = MEMORY[0x1E69E9820];
  v246[1] = 3221225472;
  v246[2] = __66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_6;
  v246[3] = &unk_1E70FB158;
  v253 = v10;
  v254 = v181;
  v248 = v299;
  v249 = v298;
  v246[4] = v193;
  v246[5] = v166;
  v250 = &v291;
  v251 = v279;
  v255 = layoutAxis;
  v256 = v12;
  v257 = v14;
  v154 = v34;
  v247 = v154;
  v252 = v295;
  v165 = _Block_copy(v246);
  v245[0] = MEMORY[0x1E69E9820];
  v245[1] = 3221225472;
  v245[2] = __66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_7;
  v245[3] = &unk_1E70FB180;
  v245[5] = &v287;
  v245[4] = v193;
  v245[6] = v279;
  v245[7] = &v291;
  v245[8] = &v281;
  v35 = _Block_copy(v245);
  v226 = xmmword_18A678C50;
  v227 = 1;
  v243 = 0u;
  v228 = 0u;
  v229 = 0u;
  v230 = 0u;
  v231 = 0u;
  v232 = 0u;
  v233 = 0u;
  v234 = 0u;
  v235 = 0u;
  v236 = 0u;
  v237 = 0u;
  v238 = 0u;
  v239 = 0u;
  v240 = 0u;
  v241 = 0u;
  v242 = 0u;
  v244 = 0;
  v225[0] = MEMORY[0x1E69E9820];
  v225[1] = 3221225472;
  v225[2] = __66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_8;
  v225[3] = &unk_1E70FB1A8;
  v225[5] = v161;
  v225[4] = a3;
  v225[6] = v10;
  v225[7] = v181;
  *(&v231 + 1) = _Block_copy(v225);
  v222[0] = MEMORY[0x1E69E9820];
  v222[1] = 3221225472;
  v222[2] = __66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_9;
  v222[3] = &unk_1E70FB1D0;
  v224 = &v287;
  v36 = v33;
  v223 = v36;
  *(&v233 + 1) = _Block_copy(v222);
  v218[0] = MEMORY[0x1E69E9820];
  v218[1] = 3221225472;
  v218[2] = __66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_10;
  v218[3] = &unk_1E70FB1F8;
  v221 = v181;
  v220 = v10;
  v218[4] = v193;
  v168 = v35;
  v219 = v168;
  *(&v234 + 1) = _Block_copy(v218);
  v209[0] = MEMORY[0x1E69E9820];
  v209[1] = 3221225472;
  v209[2] = __66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_11;
  v209[3] = &unk_1E70FB220;
  v211 = &v287;
  v212 = v299;
  v217 = v181;
  v216 = v10;
  v213 = v295;
  v37 = v36;
  v210 = v37;
  v209[4] = v193;
  v214 = v298;
  v215 = v297;
  *(&v235 + 1) = _Block_copy(v209);
  v208[0] = MEMORY[0x1E69E9820];
  v208[1] = 3221225472;
  v208[2] = __66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_12;
  v208[3] = &unk_1E70FB248;
  v208[6] = v297;
  v208[5] = &v287;
  v208[4] = v193;
  *(&v237 + 1) = _Block_copy(v208);
  v205[0] = MEMORY[0x1E69E9820];
  v205[1] = 3221225472;
  v205[2] = __66___UICollectionLayoutSectionEstimatedSolver__solveWithParameters___block_invoke_13;
  v205[3] = &unk_1E70FB1D0;
  v207 = &v287;
  v155 = v37;
  v206 = v155;
  v38 = 1;
  *(&v239 + 1) = _Block_copy(v205);
  v204 = 1;
  do
  {
    handleEvent(&v226, v38, 0, 0, &v204);
    v38 = v204;
    if (v204 > 4)
    {
      if (v204 != 5)
      {
        if (v204 == 6)
        {
          break;
        }

        if (v204 == 7)
        {
          v41 = [MEMORY[0x1E696AAA8] currentHandler];
          [v41 handleFailureInMethod:a2 object:v193 file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:783 description:@"Estimated section solver state machine failure. Please file a radar on UICollectionView."];
        }

LABEL_46:
        v40 = [MEMORY[0x1E696AAA8] currentHandler];
        [v40 handleFailureInMethod:a2 object:v193 file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:813 description:@"Unexpected state while performing resolve."];

        v39 = 0;
        goto LABEL_50;
      }

      v39 = v164[2]();
      (*(v168 + 2))(v168, v39);
    }

    else
    {
      switch(v204)
      {
        case 2:
          v39 = v163[2]();
          (*(v168 + 2))(v168, v39);
          break;
        case 3:
          v39 = v165[2]();
          (*(v168 + 2))(v168, v39);
          break;
        case 4:
          v39 = v162[2]();
          (*(v168 + 2))(v168, v39);
          break;
        default:
          goto LABEL_46;
      }
    }

LABEL_50:
  }

  while (v38 != 6);
  v153 = [(_UICollectionLayoutSectionEstimatedSolver *)v193 layoutSection];
  [v153 interGroupSpacing];
  v43 = *MEMORY[0x1E695EFF8];
  v42 = *(MEMORY[0x1E695EFF8] + 8);
  v45 = _UISetPointValueForAxis(layoutAxis, *MEMORY[0x1E695EFF8], v42, v44);
  v173 = v46;
  v174 = v45;
  v180 = objc_alloc_init(_UIRTree);
  v186 = objc_alloc_init(_UIOrderedRangeIndexer);
  v47 = objc_alloc_init(_UIOrderedRangeIndexer);
  v178 = objc_alloc_init(_UICollectionLayoutAuxillaryOffsets);
  v179 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v292[3] = 0;
  v288[3] = v161;
  v48 = objc_alloc(MEMORY[0x1E695DF70]);
  v188 = [v48 initWithCapacity:{objc_msgSend(v282[5], "count")}];
  v193->_containerSizeDependentAxes = 0;
  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  obj = v282[5];
  v49 = [obj countByEnumeratingWithState:&v200 objects:v306 count:16];
  *v185 = *MEMORY[0x1E695F058];
  *&v185[8] = *(MEMORY[0x1E695F058] + 8);
  *&v185[16] = *(MEMORY[0x1E695F058] + 16);
  *&v185[24] = *(MEMORY[0x1E695F058] + 24);
  v157 = v42;
  v158 = v43;
  if (v49)
  {
    v175 = v49;
    v50 = 0;
    v176 = *v201;
    v51 = 2;
    if (layoutAxis != 1)
    {
      v51 = layoutAxis == 2;
    }

    v172 = v51;
    v52 = &selRef_allowsTickValuesOnly;
    v170 = *(MEMORY[0x1E695F060] + 8);
    v171 = *MEMORY[0x1E695F060];
    do
    {
      v190 = 0;
      v192 = v50;
      v152 = v52[387];
      do
      {
        if (*v201 != v176)
        {
          objc_enumerationMutation(obj);
        }

        if (v288[3] < 1)
        {
          v50 = v192;
          goto LABEL_137;
        }

        v53 = *(*(&v200 + 1) + 8 * v190);
        if (v192)
        {
          v54 = v173 + v42;
        }

        else
        {
          v54 = v42;
        }

        if (v192)
        {
          v55 = v174 + v43;
        }

        else
        {
          v55 = v43;
        }

        [(_UICollectionLayoutItemSolver *)*(*(&v200 + 1) + 8 * v190) layoutFrame];
        v57 = v56;
        v59 = v58;
        v60 = [(_UICollectionLayoutItemSolver *)v53 offsetForEdgeSpacing];
        v62 = _UIPointValueForAxis(v172, v60, v61);
        v63 = _UISetSizeValueForAxis(v172, v171, v170, v62);
        v65 = v64;
        v66 = [(_UICollectionLayoutItemSolver *)v53 supplementaryOffsets];
        v195 = [v66 offsetsByApplyingOffsets:v178];
        [(_UICollectionLayoutAuxillaryOffsets *)&v178->super.isa incrementCountsFromOffsets:v66];
        v183 = v66;
        v67 = [_UICollectionEstimatedSolutionBookmark alloc];
        if (v67)
        {
          v68 = v292[3];
          v69 = v288[3];
          if (!v53)
          {
            v106 = [MEMORY[0x1E696AAA8] currentHandler];
            [v106 handleFailureInMethod:v152 object:v67 file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:1246 description:{@"Invalid parameter not satisfying: %@", @"solution"}];
          }

          if (v69 <= 0)
          {
            v107 = [MEMORY[0x1E696AAA8] currentHandler];
            [v107 handleFailureInMethod:v152 object:v67 file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:1247 description:{@"Invalid parameter not satisfying: %@", @"maxItemFrameCount > 0"}];
          }

          if (!v195)
          {
            v108 = [MEMORY[0x1E696AAA8] currentHandler];
            [v108 handleFailureInMethod:v152 object:v67 file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:1248 description:{@"Invalid parameter not satisfying: %@", @"supplementaryOffsets"}];
          }

          if (v53 && (v70 = *(v53 + 48)) != 0)
          {
            v71 = *(v70 + 56);
          }

          else
          {
            v71 = 0;
          }

          v300.receiver = v67;
          v300.super_class = _UICollectionEstimatedSolutionBookmark;
          v72 = [(_UICollectionLayoutSectionEstimatedSolver *)&v300 init];
          v67 = v72;
          if (v72)
          {
            if (v71 >= v69)
            {
              v73 = v69;
            }

            else
            {
              v73 = v71;
            }

            objc_storeStrong(v72 + 1, v53);
            v67->_solutionFrame.origin.x = v55;
            v67->_solutionFrame.origin.y = v54;
            v67->_solutionFrame.size.width = v57;
            v67->_solutionFrame.size.height = v59;
            v67->_itemRange.location = v68;
            v67->_itemRange.length = v73;
            if (v53 && (v74 = *(v53 + 48)) != 0 && v73 < *(v74 + 56))
            {
              v75 = objc_alloc_init(_UICollectionLayoutAuxillaryOffsets);
              v76 = [(_UICollectionLayoutItemSolver *)v53 queryFramesWithItemLimit:v73];
              v304 = 0u;
              v303 = 0u;
              v302 = 0u;
              v301 = 0u;
              v77 = [v76 countByEnumeratingWithState:&v301 objects:&v307 count:16];
              if (v77)
              {
                v78 = *v302;
                do
                {
                  for (i = 0; i != v77; ++i)
                  {
                    if (*v302 != v78)
                    {
                      objc_enumerationMutation(v76);
                    }

                    v80 = *(*(&v301 + 1) + 8 * i);
                    if (v80 && (v80[4] & 0xFFFFFFFFFFFFFFFELL) == 2)
                    {
                      v81 = [(_UICollectionLayoutFramesQueryResult *)v80 auxillaryItem];
                      v82 = [v81 elementKind];
                      [(_UICollectionLayoutAuxillaryOffsets *)v75 incrementCountForElementKind:v82];
                    }
                  }

                  v77 = [v76 countByEnumeratingWithState:&v301 objects:&v307 count:16];
                }

                while (v77);
              }

              v83 = [(_UICollectionLayoutAuxillaryOffsets *)v75 offsetsByRebasingOnOffsets:v195];
            }

            else
            {
              v83 = v195;
            }

            supplementaryOffsets = v67->_supplementaryOffsets;
            v67->_supplementaryOffsets = v83;
          }
        }

        if (v53)
        {
          v85 = *(v53 + 40);
        }

        else
        {
          v85 = 0;
        }

        v193->_containerSizeDependentAxes |= v85;
        v86 = [v188 count];
        [v188 addObject:v67];
        v87 = v57 + v63;
        v88 = v59 + v65;
        [(_UIRTree *)v180 insertFrame:v86 forIndex:v55, v54, v87, v88];
        if (v67)
        {
          itemRange = v67->_itemRange;
        }

        else
        {
          itemRange.length = 0;
          itemRange.location = 0;
        }

        if (v186)
        {
          _UIOrderedRangeIndexerImpl::appendRange(v186->_orderedRangeIndexerImpl.__ptr_, itemRange);
        }

        if ((v177 & 1) == 0)
        {
          v198 = 0u;
          v199 = 0u;
          v196 = 0u;
          v197 = 0u;
          v90 = [(_UICollectionLayoutItemSolver *)v53 preferredSizeGroupingRanges];
          v91 = [v90 countByEnumeratingWithState:&v196 objects:v305 count:16];
          if (v91)
          {
            v92 = *v197;
            do
            {
              for (j = 0; j != v91; ++j)
              {
                if (*v197 != v92)
                {
                  objc_enumerationMutation(v90);
                }

                v94 = [*(*(&v196 + 1) + 8 * j) rangeValue];
                if (v47)
                {
                  v310.length = v95;
                  v310.location = v292[3] + v94;
                  _UIOrderedRangeIndexerImpl::appendRange(v47->_orderedRangeIndexerImpl.__ptr_, v310);
                }
              }

              v91 = [v90 countByEnumeratingWithState:&v196 objects:v305 count:16];
            }

            while (v91);
          }
        }

        [(_UICollectionLayoutSectionEstimatedSolver *)v193 _updateSolutionAuxillaryRangeIndexerKindDict:v179 fromBookmark:v67];
        if (v181)
        {
          if (v67)
          {
            v96 = v67->_itemRange.location;
            length = v67->_itemRange.length;
          }

          else
          {
            length = 0;
            v96 = 0;
          }

          if (v184)
          {
            [(NSMutableIndexSet *)v184->_invalidatedIndexes addIndexesInRange:v96, length];
          }

          if (v67)
          {
            v98 = v67->_supplementaryOffsets;
          }

          else
          {
            v98 = 0;
          }

          v99 = v98;
          [(_UICollectionLayoutSolveResult *)v184 addInvalidatedSupplementariesWithOffsets:v99];
        }

        v50 = v67;

        v315.origin.x = v55;
        v315.origin.y = v54;
        v315.size.width = v87;
        v315.size.height = v88;
        *v185 = CGRectUnion(*v185, v315);
        v312.origin.x = v55;
        v312.origin.y = v54;
        v312.size.width = v87;
        v312.size.height = v88;
        MaxX = CGRectGetMaxX(v312);
        v313.origin.x = v55;
        v313.origin.y = v54;
        v313.size.width = v87;
        v313.size.height = v88;
        MaxY = CGRectGetMaxY(v313);
        v102 = _UIPointValueForAxis(layoutAxis, MaxX, MaxY);
        v43 = _UISetPointValueForAxis(layoutAxis, v43, v42, v102);
        v42 = v103;
        if (v53)
        {
          v104 = *(v53 + 48);
          if (v104)
          {
            v104 = *(v104 + 56);
          }

          v292[3] += v104;
          v105 = *(v53 + 48);
          if (v105)
          {
            v105 = *(v105 + 56);
          }
        }

        else
        {
          v105 = 0;
        }

        v288[3] = (v288[3] - v105) & ~((v288[3] - v105) >> 63);

        ++v190;
        v192 = v50;
      }

      while (v190 != v175);
      v109 = [obj countByEnumeratingWithState:&v200 objects:v306 count:16];
      v175 = v109;
      v52 = &selRef_allowsTickValuesOnly;
    }

    while (v109);
  }

  else
  {
    v50 = 0;
  }

LABEL_137:

  [(_UICollectionLayoutSectionEstimatedSolver *)v193 _adjustContentFrameForLastPartialSolutionIfNeededForContentFrame:v188 bookmarks:*v185, *&v185[8], *&v185[16], *&v185[24]];
  v111 = v110;
  v113 = v112;
  v115 = v114;
  v117 = v116;
  containerLayoutAxis = v193->_containerLayoutAxis;
  v119 = [_UICollectionLayoutSectionGeometryTranslator alloc];
  layoutRTL = v193->_layoutRTL;
  [(NSCollectionLayoutSection *)v193->_layoutSection contentInsets];
  v125 = [(_UICollectionLayoutSectionGeometryTranslator *)v119 initWithPrimaryContentSize:layoutRTL sectionAuxiliarySolutionSize:v115 layoutAxis:v117 layoutRTL:*MEMORY[0x1E695F060] sectionInsets:*(MEMORY[0x1E695F060] + 8) contentFrameSupplementaryOffset:v121, v122, v123, v124, v158, v157];
  v126 = v177;
  if (!v47)
  {
    v126 = 0;
  }

  if (v126 == 1)
  {
    v311.location = 0;
    v311.length = v161;
    _UIOrderedRangeIndexerImpl::appendRange(v47->_orderedRangeIndexerImpl.__ptr_, v311);
  }

  v127 = [_UICollectionLayoutSolutionState alloc];
  if (v127)
  {
    if (!v188)
    {
      v148 = [MEMORY[0x1E696AAA8] currentHandler];
      [v148 handleFailureInMethod:sel_initWithGeometryTranslator_bookmarks_geometricIndexer_itemRangeIndexer_preferredSizeGroupingIndexer_auxillaryRangeIndexerDict_ object:v127 file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:1302 description:{@"Invalid parameter not satisfying: %@", @"bookmarks"}];
    }

    if (!v180)
    {
      v149 = [MEMORY[0x1E696AAA8] currentHandler];
      [v149 handleFailureInMethod:sel_initWithGeometryTranslator_bookmarks_geometricIndexer_itemRangeIndexer_preferredSizeGroupingIndexer_auxillaryRangeIndexerDict_ object:v127 file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:1303 description:{@"Invalid parameter not satisfying: %@", @"geometricIndexer"}];
    }

    if (!v186)
    {
      v150 = [MEMORY[0x1E696AAA8] currentHandler];
      [v150 handleFailureInMethod:sel_initWithGeometryTranslator_bookmarks_geometricIndexer_itemRangeIndexer_preferredSizeGroupingIndexer_auxillaryRangeIndexerDict_ object:v127 file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:1304 description:{@"Invalid parameter not satisfying: %@", @"itemRangeIndexer"}];
    }

    if (!v179)
    {
      v151 = [MEMORY[0x1E696AAA8] currentHandler];
      [v151 handleFailureInMethod:sel_initWithGeometryTranslator_bookmarks_geometricIndexer_itemRangeIndexer_preferredSizeGroupingIndexer_auxillaryRangeIndexerDict_ object:v127 file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:1305 description:{@"Invalid parameter not satisfying: %@", @"auxillaryRangeIndexerDict"}];
    }

    v307.receiver = v127;
    v307.super_class = _UICollectionLayoutSolutionState;
    v128 = [(_UICollectionLayoutSectionEstimatedSolver *)&v307 init];
    v127 = v128;
    if (v128)
    {
      objc_storeStrong(&v128->_layoutSection, v188);
      objc_storeStrong(&v127->_geometricIndexer, v180);
      objc_storeStrong(&v127->_itemRangeIndexer, v186);
      objc_storeStrong(&v127->_preferredSizeGroupingIndexer, v47);
      objc_storeStrong(&v127->_auxillaryRangeIndexerKindDict, v179);
      objc_storeStrong(&v127->_sectionGeometryTranslator, v125);
    }
  }

  objc_storeStrong(location, v127);
  v314.origin.x = v111;
  v314.origin.y = v113;
  v314.size.width = v115;
  v314.size.height = v117;
  IsEmpty = CGRectIsEmpty(v314);
  v130 = objc_alloc_init(_UICollectionLayoutSupplementaryEnroller);
  objc_storeStrong(&v193->_sectionSupplementaryEnroller, v130);

  v131 = [[_UICollectionLayoutAuxillaryItemSolver alloc] initWithAuxillaryHost:v193];
  v132 = v131;
  if (v131)
  {
    v193->_containerSizeDependentAxes |= *(v131 + 56);
    if (*(v131 + 144) != 0.0 || *(v131 + 160) != 0.0 || *(v131 + 152) != 0.0 || *(v131 + 168) != 0.0 || IsEmpty)
    {
      v134 = *(v131 + 112);
      v133 = *(v131 + 120);
      goto LABEL_158;
    }
  }

  else
  {
    v133 = 0.0;
    v134 = 0.0;
    if (IsEmpty)
    {
LABEL_158:
      v135 = [_UICollectionLayoutSectionGeometryTranslator alloc];
      v136 = v193->_layoutRTL;
      [(NSCollectionLayoutSection *)v193->_layoutSection contentInsets];
      v140 = v139;
      v142 = v141;
      if (v132)
      {
        v144 = v132[16];
        v143 = v132[17];
      }

      else
      {
        v143 = 0.0;
        v144 = 0.0;
      }

      v145 = [(_UICollectionLayoutSectionGeometryTranslator *)v135 initWithPrimaryContentSize:v136 sectionAuxiliarySolutionSize:v115 layoutAxis:v117 layoutRTL:v134 sectionInsets:v133 contentFrameSupplementaryOffset:v140, v142, v137, v138, v144, v143];
      if (*location)
      {
        objc_storeStrong(*location + 1, v145);
      }
    }
  }

  objc_storeStrong(&v193->_sectionSupplementarySolution, v132);

  for (k = 32; k != 288; k += 32)
  {
    __destructor_8_sb0_AB8s24n1_S_sb8_sb16_AE(&v226 + k);
  }

  _Block_object_dispose(v277, 8);
  _Block_object_dispose(v279, 8);

  _Block_object_dispose(&v281, 8);
  _Block_object_dispose(&v287, 8);
  _Block_object_dispose(&v291, 8);
  _Block_object_dispose(v295, 8);
  _Block_object_dispose(v297, 8);
  _Block_object_dispose(v298, 8);
  _Block_object_dispose(v299, 8);

LABEL_166:

  return v184;
}

- (_NSRange)_rangeOfBookmarksAffectedByResolveItems:(id)a3
{
  if (a3)
  {
    if (self)
    {
      goto LABEL_3;
    }

LABEL_15:
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:981 description:{@"Invalid parameter not satisfying: %@", @"self.solutionState"}];

    goto LABEL_21;
  }

  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:980 description:{@"Invalid parameter not satisfying: %@", @"resolveItems"}];

  if (!self)
  {
    goto LABEL_15;
  }

LABEL_3:
  p_solutionState = &self->_solutionState;
  solutionState = self->_solutionState;
  if (solutionState)
  {
LABEL_4:
    solutionState = solutionState->_itemRangeIndexer;
    goto LABEL_5;
  }

  v29 = [MEMORY[0x1E696AAA8] currentHandler];
  [v29 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:981 description:{@"Invalid parameter not satisfying: %@", @"self.solutionState"}];

  if (!self)
  {
LABEL_21:
    v10 = 0;
    v8 = 0;
    goto LABEL_22;
  }

  p_solutionState = &self->_solutionState;
  solutionState = self->_solutionState;
  if (solutionState)
  {
    goto LABEL_4;
  }

LABEL_5:
  v8 = solutionState;
  v9 = *p_solutionState;
  v10 = v9;
  if (v9)
  {
    auxillaryRangeIndexerKindDict = v9->_auxillaryRangeIndexerKindDict;
    goto LABEL_7;
  }

LABEL_22:
  auxillaryRangeIndexerKindDict = 0;
LABEL_7:
  v12 = auxillaryRangeIndexerKindDict;

  if (!v8)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:985 description:{@"Invalid parameter not satisfying: %@", @"itemRangeIndexer"}];

    if (v12)
    {
      goto LABEL_9;
    }

LABEL_17:
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:986 description:{@"Invalid parameter not satisfying: %@", @"auxillaryRangeIndexerKindDict"}];

    goto LABEL_9;
  }

  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_9:
  v13 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v14 = [(_UILabelConfiguration *)a3 _content];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __85___UICollectionLayoutSectionEstimatedSolver__rangeOfBookmarksAffectedByResolveItems___block_invoke;
  v36[3] = &unk_1E70F43F0;
  v15 = v8;
  v37 = v15;
  v16 = v13;
  v38 = v16;
  [v14 enumerateIndexesUsingBlock:v36];

  v17 = [(_UICollectionLayoutSolveResult *)a3 invalidatedAuxillaryKinds];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __85___UICollectionLayoutSectionEstimatedSolver__rangeOfBookmarksAffectedByResolveItems___block_invoke_2;
  v30[3] = &unk_1E70FB270;
  v18 = v12;
  v31 = v18;
  v32 = a3;
  v35 = a2;
  v33 = self;
  v19 = v16;
  v34 = v19;
  [v17 enumerateObjectsUsingBlock:v30];

  if ([v19 count] && (v20 = objc_msgSend(v19, "firstIndex"), v21 = objc_msgSend(v19, "lastIndex"), v21 >= v20))
  {
    v22 = v21 - v20 + 1;
  }

  else
  {
    v22 = 0;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v23 = v20;
  v24 = v22;
  result.length = v24;
  result.location = v23;
  return result;
}

- (void)_updateSolutionAuxillaryRangeIndexerKindDict:(id)a3 fromBookmark:(id)a4
{
  if (a4)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:1060 description:{@"Invalid parameter not satisfying: %@", @"solutionAuxillaryRangeIndexerKindDict"}];

    if (a4)
    {
      goto LABEL_4;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_5;
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  [v12 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:1059 description:{@"Invalid parameter not satisfying: %@", @"solutionBookmark"}];

  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(a4 + 2);
LABEL_5:
  v9 = v8;
  v10 = [v9 elementKinds];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __103___UICollectionLayoutSectionEstimatedSolver__updateSolutionAuxillaryRangeIndexerKindDict_fromBookmark___block_invoke;
  v14[3] = &unk_1E70FB298;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  [v10 enumerateObjectsUsingBlock:v14];
}

- (CGRect)_adjustContentFrameForLastPartialSolutionIfNeededForContentFrame:(CGRect)a3 bookmarks:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([a4 count] && -[_UICollectionLayoutSectionEstimatedSolver shouldAdjustContentSizeForPartialLastGroupSolution](self, "shouldAdjustContentSizeForPartialLastGroupSolution"))
  {
    v11 = [a4 lastObject];
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 8);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = [(_UICollectionLayoutSectionEstimatedSolver *)self layoutAxis];
    if ((v15 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      [v34 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:1093 description:@"Unknown layout axis."];

      if (v12)
      {
        goto LABEL_7;
      }
    }

    else if (v12)
    {
LABEL_7:
      v16 = *(v12 + 4);
      if (v14)
      {
        v17 = v14[6];
        if (v17)
        {
          v17 = *(v17 + 56);
        }
      }

      else
      {
        v17 = 0;
      }

      if (v16 >= v17)
      {
        goto LABEL_13;
      }

      v18 = v12[7];
      v19 = v12[8];
      goto LABEL_12;
    }

    if (!v14)
    {
      goto LABEL_13;
    }

    v35 = v14[6];
    if (!v35 || *(v35 + 56) <= 0)
    {
      goto LABEL_13;
    }

    v16 = 0;
    v18 = 0.0;
    v19 = 0.0;
LABEL_12:
    v20 = [(_UICollectionLayoutItemSolver *)v14 contentSizeForFrameCount:v16 layoutAxis:v15];
    v22 = v21;
    v23 = _UISizeValueForAxis(v15, v18, v19);
    v24 = _UISizeValueForAxis(v15, v20, v22) - v23;
    v25 = _UISizeValueForAxis(v15, width, height);
    v26 = _UISetSizeValueForAxis(v15, width, height, v25 + v24);
    v28 = v27;
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    MinX = CGRectGetMinX(v36);
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    y = CGRectGetMinY(v37);
    height = v28;
    width = v26;
    x = MinX;
LABEL_13:
  }

  v30 = x;
  v31 = y;
  v32 = width;
  v33 = height;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (CGRect)_rectWithContentInsetTrailingLayoutDimensionAddedToToRect:(CGRect)a3 insets:(NSDirectionalEdgeInsets)a4 layoutAxis:(unint64_t)a5
{
  trailing = a4.trailing;
  bottom = a4.bottom;
  leading = a4.leading;
  top = a4.top;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a5 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionEstimatedSolver.m" lineNumber:1123 description:{@"Invalid parameter not satisfying: %@", @"layoutAxis == UIAxisVertical || layoutAxis == UIAxisHorizontal"}];
  }

  v14 = _UITrailingOffsetForInsetsAlongAxis(a5, top, leading, bottom, trailing);
  v15 = _UISizeValueForAxis(a5, width, height);
  v16 = _UISetSizeValueForAxis(a5, width, height, v14 + v15);
  v18 = v17;
  v19 = x;
  v20 = y;
  result.size.height = v18;
  result.size.width = v16;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)auxillaryHostPinningRect
{
  if (self && self->_solutionState)
  {
    x = self->_overrideContentRectForPinning.origin.x;
    y = self->_overrideContentRectForPinning.origin.y;
    width = self->_overrideContentRectForPinning.size.width;
    height = self->_overrideContentRectForPinning.size.height;
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    if (CGRectIsNull(v13))
    {
      v7 = self->_solutionState;
      y = 0.0;
      if (v7)
      {
        sectionGeometryTranslator = v7->_sectionGeometryTranslator;
        width = 0.0;
        height = 0.0;
        x = 0.0;
        if (sectionGeometryTranslator)
        {
          x = sectionGeometryTranslator->_contentFrameIncludingAuxiliaries.origin.x;
          y = sectionGeometryTranslator->_contentFrameIncludingAuxiliaries.origin.y;
          width = sectionGeometryTranslator->_contentFrameIncludingAuxiliaries.size.width;
          height = sectionGeometryTranslator->_contentFrameIncludingAuxiliaries.size.height;
        }
      }

      else
      {
        width = 0.0;
        height = 0.0;
        x = 0.0;
      }
    }
  }

  else
  {
    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
  }

  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

@end