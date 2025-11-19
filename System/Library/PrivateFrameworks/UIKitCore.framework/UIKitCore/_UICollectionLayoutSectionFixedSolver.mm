@interface _UICollectionLayoutSectionFixedSolver
- (CGPoint)orthogonalOffset;
- (CGRect)auxillaryHostPinningRect;
- (CGRect)contentFrameIncludingAuxiliaries;
- (CGRect)primaryContentFrame;
- (CGSize)auxillaryHostContentSize;
- (CGVector)orthogonalScrollingPrefetchingUnitVector;
- (NSIndexSet)pinnedSupplementaryIndexes;
- (_NSRange)preferredSizeGroupingRangeForItemAtIndex:(int64_t)a3;
- (double)_dimensionForRootGroupAlongAxis:(unint64_t)a3;
- (double)_sectionContainer;
- (double)auxillaryHostPaddingBeforeBoundarySupplementaries;
- (id)_queryFramesIntersectingRect:(CGFloat)a3 frameOffset:(CGFloat)a4;
- (id)auxillaryHostAuxillaryItems;
- (id)auxillaryHostContainer;
- (id)auxillaryHostSupplementaryEnroller;
- (id)frameForIndex:(int64_t)a3;
- (id)initWithLayoutSection:(id *)a1;
- (id)resolveWithParameters:(id)a3 preferredSizes:(id)a4;
- (id)sectionSupplementaryFrameForIndex:(int64_t)a3;
- (id)sectionSupplementaryFrameWithKind:(id)a3 index:(int64_t)a4;
- (id)supplementaryFrameWithKind:(id)a3 index:(int64_t)a4;
- (id)unpinnedSectionSupplementaryFrameForIndex:(int64_t)a3;
- (id)unpinnedSectionSupplementaryFrameWithKind:(id)a3 forIndex:(int64_t)a4;
- (id)visualDescription;
- (int64_t)sectionSupplementaryKindIndexForEnrollmentIdentifier:(id)a3;
- (unint64_t)containerSizeDependentAxes;
- (void)setOrthogonalOffset:(CGPoint)a3;
- (void)solveForContainer:(id)a3 supplementaryContainer:(id)a4 traitCollection:(id)a5 layoutAxis:(unint64_t)a6 frameCount:(int64_t)a7 preferredSizes:(id)a8 layoutRTL:(BOOL)a9;
- (void)updatePinnedSupplementaryItemsWithVisibleBounds:(CGRect)a3;
- (void)updatePinnedSupplementaryItemsWithVisibleBounds:(CGRect)a3 overrideContentRectForPinning:(CGRect)a4;
@end

@implementation _UICollectionLayoutSectionFixedSolver

- (double)_sectionContainer
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 container];
    [v2 contentInsets];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    if ([v1 layoutAxis] == 2)
    {
      v11 = [v1 layoutSection];
      [v11 contentInsets];
      v6 = v6 + v12;

      v13 = [v1 layoutSection];
      [v13 contentInsets];
      v10 = v10 + v14;
    }

    else if ([v1 layoutAxis] == 1)
    {
      v15 = [v1 layoutSection];
      [v15 contentInsets];
      v4 = v4 + v16;

      v13 = [v1 layoutSection];
      [v13 contentInsets];
      v8 = v8 + v17;
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:sel__sectionContainer object:v1 file:@"_UICollectionLayoutSectionFixedSolver.m" lineNumber:495 description:@"Unknown layout axis."];
    }

    v18 = [_UICollectionLayoutContainer alloc];
    v19 = [v1 container];
    [v19 contentSize];
    v1 = [(_UICollectionLayoutContainer *)v18 initWithContentSize:v20 contentInsets:v21, v4, v6, v8, v10];
  }

  return v1;
}

- (unint64_t)containerSizeDependentAxes
{
  solution = self->_solution;
  if (solution)
  {
    solution = *(solution + 40);
  }

  sectionAuxillarySolution = self->_sectionAuxillarySolution;
  if (sectionAuxillarySolution)
  {
    sectionAuxillarySolution = *(sectionAuxillarySolution + 56);
  }

  return sectionAuxillarySolution | solution;
}

- (id)auxillaryHostAuxillaryItems
{
  v2 = [(_UICollectionLayoutSectionFixedSolver *)self layoutSection];
  v3 = [v2 boundarySupplementaryItems];

  return v3;
}

- (CGRect)contentFrameIncludingAuxiliaries
{
  if (self && (v2 = self->_sectionGeometryTranslator) != 0)
  {
    x = v2->_contentFrameIncludingAuxiliaries.origin.x;
    y = v2->_contentFrameIncludingAuxiliaries.origin.y;
    width = v2->_contentFrameIncludingAuxiliaries.size.width;
    height = v2->_contentFrameIncludingAuxiliaries.size.height;
  }

  else
  {
    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
  }

  v7 = x;
  v8 = y;
  v9 = width;
  v10 = height;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (id)initWithLayoutSection:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    if (([a2 _isEmptySection] & 1) == 0)
    {
      v4 = [a2 group];
      v5 = [v4 containsEstimatedSizeItem];

      if (v5)
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        [v11 handleFailureInMethod:sel_initWithLayoutSection_ object:v2 file:@"_UICollectionLayoutSectionFixedSolver.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"!layoutSection.group.containsEstimatedSizeItem"}];
      }
    }

    v12.receiver = v2;
    v12.super_class = _UICollectionLayoutSectionFixedSolver;
    v6 = objc_msgSendSuper2(&v12, sel_init);
    v2 = v6;
    if (v6)
    {
      objc_storeStrong(v6 + 8, a2);
      v2[12] = 0;
      v7 = [a2 group];
      v8 = [v7 size];
      *(v2 + 8) = [v8 isContainerSize] ^ 1;

      v9 = *(MEMORY[0x1E695F050] + 16);
      *(v2 + 19) = *MEMORY[0x1E695F050];
      *(v2 + 21) = v9;
      [v2[8] _checkForDuplicateSupplementaryItemKindsAndThrowIfFound];
    }
  }

  return v2;
}

- (void)solveForContainer:(id)a3 supplementaryContainer:(id)a4 traitCollection:(id)a5 layoutAxis:(unint64_t)a6 frameCount:(int64_t)a7 preferredSizes:(id)a8 layoutRTL:(BOOL)a9
{
  [(_UICollectionLayoutSectionFixedSolver *)self setContainer:a3, a4, a5, a6, a7, a8];
  if (a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = a3;
  }

  [(_UICollectionLayoutSectionFixedSolver *)self setSupplementaryContainer:v15];
  [(_UICollectionLayoutSectionFixedSolver *)self setTraitCollection:a5];
  [(_UICollectionLayoutSectionFixedSolver *)self setContainerLayoutAxis:a6];
  v16 = [(_UICollectionLayoutSectionFixedSolver *)self layoutSection];
  v17 = [v16 scrollsOrthogonally];
  v18 = a6 == 2;
  if (a6 == 1)
  {
    v18 = 2;
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = a6;
  }

  [(_UICollectionLayoutSectionFixedSolver *)self setLayoutAxis:v19];

  [(_UICollectionLayoutSectionFixedSolver *)self setFrameCount:a7];
  [(_UICollectionLayoutSectionFixedSolver *)self setLayoutRTL:a9];
  if (self)
  {
    v20 = [(_UICollectionLayoutSectionFixedSolver *)self layoutSection];
    v21 = [v20 _isEmptySection];

    if ((v21 & 1) == 0)
    {
      v92 = [(_UICollectionLayoutSectionFixedSolver *)self _sectionContainer];
      v22 = [(_UICollectionLayoutSectionFixedSolver *)self layoutAxis];
      v23 = [_UICollectionLayoutItemSolver alloc];
      v24 = [(_UICollectionLayoutSectionFixedSolver *)self layoutSection];
      v25 = [v24 group];
      v26 = [(_UICollectionLayoutItemSolver *)v23 initWithItem:v25];

      v27 = [(_UICollectionLayoutSectionFixedSolver *)self traitCollection];
      v28 = [(_UICollectionLayoutSectionFixedSolver *)self layoutRTL];
      if (v26)
      {
        v29 = *MEMORY[0x1E695F060];
        v30 = *(MEMORY[0x1E695F060] + 8);
        [(_UICollectionLayoutItemSolver *)v26 _solveForContainer:v92 layoutAxis:v22 traitCollection:v27 maxFrameCount:0x7FFFFFFFFFFFFFFFLL layoutRTL:v28 preferredSizes:0 largestKnownItemSize:0 solutionRecursionDepth:*MEMORY[0x1E695F060], v30];

        objc_storeStrong(&self->_solution, v26);
        v31 = [(_UICollectionLayoutItemSolver *)v26 errorDescription];
        errorDescription = self->_errorDescription;
        self->_errorDescription = v31;

        v33 = v26[6];
        if (v33)
        {
          v34 = v33[7];
          if (v34)
          {
            [(_UICollectionLayoutItemSolver *)v26 layoutFrame];
            v36 = v35;
            v38 = v37;
            v39 = _UISizeValueForAxis(v22, v35, v37);
            v40 = [(_UICollectionLayoutSectionFixedSolver *)self frameCount]/ v34;
            v41 = [(_UICollectionLayoutSectionFixedSolver *)self frameCount]% v34;
            v42 = [(_UICollectionLayoutItemSolver *)v26 contentSizeForFrameCount:v41 layoutAxis:v22];
            if (v41)
            {
              v44 = v42;
              v45 = v43;
              v46 = v39;
              if ([(_UICollectionLayoutSectionFixedSolver *)self shouldAdjustContentSizeForPartialLastGroupSolution])
              {
                v46 = _UISizeValueForAxis(v22, v44, v45);
              }
            }

            else
            {
              v46 = 0.0;
            }

            v47 = v41 <= 0 ? v40 : v40 + 1;
            v48 = v47 < 1;
            v49 = v47 - 1;
            if (!v48)
            {
              v50 = v49;
              v51 = [(_UICollectionLayoutSectionFixedSolver *)self layoutSection];
              [v51 interGroupSpacing];
              v53 = v52 * v50;

              v54 = _UISetSizeValueForAxis(v22, v36, v38, v39 * v40 + v46 + v53);
              v56 = v55;
              goto LABEL_26;
            }
          }
        }
      }

      else
      {

        objc_storeStrong(&self->_solution, 0);
        v57 = [(_UICollectionLayoutItemSolver *)0 errorDescription];
        v58 = self->_errorDescription;
        self->_errorDescription = v57;

        v29 = *MEMORY[0x1E695F060];
        v30 = *(MEMORY[0x1E695F060] + 8);
      }

      v56 = v30;
      v54 = v29;
LABEL_26:
      v59 = [_UICollectionLayoutSectionGeometryTranslator alloc];
      v60 = [(_UICollectionLayoutSectionFixedSolver *)self containerLayoutAxis];
      layoutRTL = self->_layoutRTL;
      v62 = [(_UICollectionLayoutSectionFixedSolver *)self layoutSection];
      [v62 contentInsets];
      v67 = [(_UICollectionLayoutSectionGeometryTranslator *)v59 initWithPrimaryContentSize:v60 sectionAuxiliarySolutionSize:layoutRTL layoutAxis:v54 layoutRTL:v56 sectionInsets:v29 contentFrameSupplementaryOffset:v30, v63, v64, v65, v66, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
      objc_storeStrong(&self->_sectionGeometryTranslator, v67);

      v68 = objc_alloc_init(_UICollectionLayoutSupplementaryEnroller);
      objc_storeStrong(&self->_sectionSupplementaryEnroller, v68);

      v69 = [[_UICollectionLayoutAuxillaryItemSolver alloc] initWithAuxillaryHost:?];
      objc_storeStrong(&self->_sectionAuxillarySolution, v69);

      sectionAuxillarySolution = self->_sectionAuxillarySolution;
      if (sectionAuxillarySolution && (sectionAuxillarySolution->_hostContentSizeInsets.top != 0.0 || sectionAuxillarySolution->_hostContentSizeInsets.bottom != 0.0 || sectionAuxillarySolution->_hostContentSizeInsets.leading != 0.0 || sectionAuxillarySolution->_hostContentSizeInsets.trailing != 0.0))
      {
        width = sectionAuxillarySolution->_contentSize.width;
        height = sectionAuxillarySolution->_contentSize.height;
        v73 = [_UICollectionLayoutSectionGeometryTranslator alloc];
        v74 = [(_UICollectionLayoutSectionFixedSolver *)self containerLayoutAxis];
        v75 = self->_layoutRTL;
        v76 = [(_UICollectionLayoutSectionFixedSolver *)self layoutSection];
        [v76 contentInsets];
        v80 = v79;
        v82 = v81;
        v83 = self->_sectionAuxillarySolution;
        if (v83)
        {
          x = v83->_hostContentOffset.x;
          y = v83->_hostContentOffset.y;
        }

        else
        {
          y = 0.0;
          x = 0.0;
        }

        v86 = [(_UICollectionLayoutSectionGeometryTranslator *)v73 initWithPrimaryContentSize:v74 sectionAuxiliarySolutionSize:v75 layoutAxis:v54 layoutRTL:v56 sectionInsets:width contentFrameSupplementaryOffset:height, v80, v82, v77, v78, x, y];
        sectionGeometryTranslator = self->_sectionGeometryTranslator;
        self->_sectionGeometryTranslator = v86;
      }

      v88 = [(NSCollectionLayoutSection *)self->_layoutSection scrollsOrthogonally];
      v89 = 0.0;
      v90 = 0.0;
      if (v88)
      {
        layoutAxis = self->_layoutAxis;
        if (layoutAxis == 1)
        {
          v90 = 1.0;
        }

        else if (layoutAxis == 2)
        {
          v89 = 1.0;
        }
      }

      [(_UICollectionLayoutSectionFixedSolver *)self setOrthogonalScrollingPrefetchingUnitVector:v89, v90];
    }
  }
}

- (id)resolveWithParameters:(id)a3 preferredSizes:(id)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionFixedSolver.m" lineNumber:94 description:@"This solver does not handle estimated items so this method does nothing. Are you calling this in error?"];

  v7 = objc_alloc_init(_UICollectionLayoutSolveResult);

  return v7;
}

- (void)updatePinnedSupplementaryItemsWithVisibleBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(_UICollectionLayoutSectionFixedSolver *)self layoutSection];
  v9 = [v8 _isEmptySection];

  if ((v9 & 1) == 0)
  {
    v10 = objc_alloc_init(_UICollectionLayoutSupplementaryEnroller);
    [(UIBackgroundConfiguration *)self _setBackgroundColor:v10];

    if (self)
    {
      sectionAuxillarySolution = self->_sectionAuxillarySolution;
    }

    else
    {
      sectionAuxillarySolution = 0;
    }

    [(_UICollectionLayoutAuxillaryItemSolver *)&sectionAuxillarySolution->super.isa resolveSupplementaryItemsForVisibleBounds:y, width, height];
  }
}

- (void)updatePinnedSupplementaryItemsWithVisibleBounds:(CGRect)a3 overrideContentRectForPinning:(CGRect)a4
{
  self->_overrideContentRectForPinning = a4;
  [(_UICollectionLayoutSectionFixedSolver *)self updatePinnedSupplementaryItemsWithVisibleBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = *(MEMORY[0x1E695F050] + 16);
  self->_overrideContentRectForPinning.origin = *MEMORY[0x1E695F050];
  self->_overrideContentRectForPinning.size = v5;
}

- (id)_queryFramesIntersectingRect:(CGFloat)a3 frameOffset:(CGFloat)a4
{
  if (a1)
  {
    v14 = [a1 layoutSection];
    if ([v14 _isEmptySection])
    {
      v15 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v16 = a1[6];
      v17 = a1[3];
      if (v16)
      {
        v18 = *(v16 + 72);
        rect2.origin.x = *(v16 + 80);
      }

      else
      {
        rect2.origin.x = 0.0;
        v18 = 0.0;
      }

      v61 = a2;
      v62 = a3;
      v63 = a4;
      v64 = a5;
      v19 = [(_UICollectionLayoutSectionGeometryTranslator *)v16 contentRectForSectionRect:a2, a3, a4, a5];
      v21 = v20;
      v72 = v23;
      v73 = v22;
      v24 = [a1 layoutAxis];
      v25 = [a1 frameCount];
      [(_UICollectionLayoutItemSolver *)v17 layoutFrame];
      v27 = v26;
      v29 = v28;
      v30 = _UISizeValueForAxis(v24, v26, v28);
      [v14 interGroupSpacing];
      v32 = v30 + v31;
      v33 = _UISetSizeValueForAxis(v24, v27, v29, v32);
      v35 = v34;
      v36 = _UIPointValueForAxis(v24, v19, v21);
      v80[5] = MEMORY[0x1E69E9820];
      v80[6] = 3221225472;
      v80[7] = __82___UICollectionLayoutSectionFixedSolver__queryFramesIntersectingRect_frameOffset___block_invoke;
      v80[8] = &__block_descriptor_40_e8_q16__0d8l;
      *&v80[9] = v32;
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __82___UICollectionLayoutSectionFixedSolver__queryFramesIntersectingRect_frameOffset___block_invoke_2;
      v80[3] = &__block_descriptor_40_e8_d16__0q8l;
      *&v80[4] = v32;
      *&rect2.origin.y = MEMORY[0x1E69E9820];
      *&rect2.size.width = 3221225472;
      *&rect2.size.height = __82___UICollectionLayoutSectionFixedSolver__queryFramesIntersectingRect_frameOffset___block_invoke_3;
      v75 = &__block_descriptor_64_e39__CGRect__CGPoint_dd__CGSize_dd__16__0q8lu32l8;
      v76 = v80;
      v77 = v24;
      v78 = v33;
      v79 = v35;
      if (v36 >= 0.0)
      {
        v37 = (v36 / v32);
      }

      else
      {
        v37 = 0;
      }

      v69 = v36;
      if (v17)
      {
        v38 = v17[6];
        if (v38)
        {
          v38 = *(v38 + 56);
        }
      }

      else
      {
        v38 = 0;
      }

      v65 = a6;
      v66 = a7;
      v67 = a7 + rect2.origin.x;
      v68 = a6 + v18;
      v39 = v38 * v37;
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v40 = [(_UICollectionLayoutItemSolver *)v17 offsetForEdgeSpacing];
      v70 = v41;
      v71 = v40;
      while (1)
      {
        v82.origin.x = (*&rect2.size.height)(&rect2.origin.y, v37);
        x = v82.origin.x;
        y = v82.origin.y;
        width = v82.size.width;
        height = v82.size.height;
        rect2.origin.x = v71 + v82.origin.x;
        v46 = v70 + v82.origin.y;
        v47 = CGRectGetWidth(v82);
        v83.origin.x = x;
        v83.origin.y = y;
        v83.size.width = width;
        v83.size.height = height;
        v87.size.height = CGRectGetHeight(v83);
        v84.origin.x = v19;
        v84.origin.y = v21;
        v84.size.width = v73;
        v84.size.height = v72;
        v87.origin.x = rect2.origin.x;
        v87.origin.y = v46;
        v87.size.width = v47;
        if (!CGRectIntersectsRect(v84, v87) || v25 <= v39)
        {
          break;
        }

        v49 = v67 + y;
        v50 = _UIPointValueForAxis(v24, x, y);
        v51 = _UISetPointValueForAxis(v24, v19, v21, v69 - v50);
        v53 = v52;
        v85.origin.x = v19;
        v85.origin.y = v21;
        v85.size.width = v73;
        v85.size.height = v72;
        v54 = CGRectGetWidth(v85);
        v86.size.width = v73;
        v55 = v54;
        v86.origin.x = v19;
        v86.origin.y = v21;
        v86.size.height = v72;
        v56 = CGRectGetHeight(v86);
        v57 = [(_UICollectionLayoutItemSolver *)v17 queryFramesWithQueryRect:v39 additionalFrameOffset:v25 - v39 itemIndexOffset:v37 itemLimit:v51 supplementaryRepeatOffset:v53, v55, v56, v68 + x, v49];
        [v15 addObjectsFromArray:v57];
        if (v17)
        {
          v58 = v17[6];
          if (v58)
          {
            v58 = *(v58 + 56);
          }
        }

        else
        {
          v58 = 0;
        }

        v39 += v58;

        ++v37;
      }

      v59 = [(_UICollectionLayoutAuxillaryItemSolver *)a1[4] queryFramesIntersectingRect:v61 frameOffset:v62, v63, v64, v65, v66];
      [v15 addObjectsFromArray:v59];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)visualDescription
{
  v28[2] = *MEMORY[0x1E69E9840];
  v3 = [(_UICollectionLayoutSectionFixedSolver *)self container];
  [v3 contentSize];
  v5 = v4;
  v6 = [(_UICollectionLayoutSectionFixedSolver *)self container];
  [v6 contentSize];
  v8 = v7;

  [(_UICollectionLayoutSectionFixedSolver *)self contentFrameIncludingAuxiliaries];
  v10 = v9;
  v12 = v11;
  v13 = [(_UICollectionLayoutSectionFixedSolver *)self layoutSection];
  [v13 contentInsets];
  v15 = v14;
  v16 = [(_UICollectionLayoutSectionFixedSolver *)self layoutSection];
  [v16 contentInsets];
  v18 = v17;

  v19 = [(_UICollectionLayoutSectionFixedSolver *)self _queryFramesIntersectingRect:0.0 frameOffset:v10, v12, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  v20 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v5, v8}];
  v21 = [MEMORY[0x1E696B098] valueWithCGRect:{v15, v18, v10, v12}];
  v28[0] = v20;
  v28[1] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v23 = [v19 valueForKey:@"frame"];
  v24 = [v22 arrayByAddingObjectsFromArray:v23];

  v25 = [[_UIASCIIArtFramesRenderer alloc] initWithFrames:v24];
  v26 = [(_UIASCIIArtFramesRenderer *)v25 description];

  return v26;
}

- (NSIndexSet)pinnedSupplementaryIndexes
{
  if (self)
  {
    isa = self[1].super.isa;
    if (isa)
    {
      return *(isa + 5);
    }

    else
    {
      return 0;
    }
  }

  return self;
}

- (CGRect)primaryContentFrame
{
  if (self && (v2 = self->_sectionGeometryTranslator) != 0)
  {
    x = v2->_primaryContentFrame.origin.x;
    y = v2->_primaryContentFrame.origin.y;
    width = v2->_primaryContentFrame.size.width;
    height = v2->_primaryContentFrame.size.height;
  }

  else
  {
    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
  }

  v7 = x;
  v8 = y;
  v9 = width;
  v10 = height;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (id)frameForIndex:(int64_t)a3
{
  v5 = 0;
  if ([(_UICollectionLayoutSectionFixedSolver *)self frameCount]> a3 && self)
  {
    solution = self->_solution;
    if (solution && (solveResult = solution->_solveResult) != 0 && solveResult->_itemFrameCount >= 1)
    {
      v8 = [(_UICollectionLayoutSectionFixedSolver *)self layoutSection];
      v9 = [(_UICollectionLayoutSectionFixedSolver *)self layoutAxis];
      [v8 interGroupSpacing];
      v11 = v10;
      sectionGeometryTranslator = self->_sectionGeometryTranslator;
      if (sectionGeometryTranslator)
      {
        x = sectionGeometryTranslator->_primaryContentFrame.origin.x;
        y = sectionGeometryTranslator->_primaryContentFrame.origin.y;
      }

      else
      {
        y = 0.0;
        x = 0.0;
      }

      v5 = [(_UICollectionLayoutItemSolver *)self->_solution frameForAbsoluteIndex:a3 additionalFrameOffset:v9 interSolutionSpacing:x repeatAxis:y, v11];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)supplementaryFrameWithKind:(id)a3 index:(int64_t)a4
{
  if ([a3 length])
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_22:
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionFixedSolver.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"index >= 0"}];

    if (self)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionFixedSolver.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"kind.length"}];

  if (a4 < 0)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (self)
  {
LABEL_4:
    v8 = self->_sectionGeometryTranslator;
    sectionAuxillarySolution = self->_sectionAuxillarySolution;
    goto LABEL_5;
  }

LABEL_23:
  v8 = 0;
  sectionAuxillarySolution = 0;
LABEL_5:
  v10 = [(_UICollectionLayoutAuxillaryItemSolver *)&sectionAuxillarySolution->super.isa supplementaryFrameWithKind:a3 index:a4 additionalFrameOffset:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  if (v10)
  {
    goto LABEL_18;
  }

  if (self)
  {
    solution = self->_solution;
  }

  else
  {
    solution = 0;
  }

  v12 = [(_UICollectionLayoutItemSolver *)solution supplementaryOffsets];
  v13 = [v12 elementKinds];
  v14 = [v13 containsObject:a3];

  if (!v14)
  {
    v10 = 0;
    goto LABEL_18;
  }

  v15 = [(_UICollectionLayoutSectionFixedSolver *)self layoutSection];
  v16 = [(_UICollectionLayoutSectionFixedSolver *)self layoutAxis];
  [v15 interGroupSpacing];
  v18 = v17;
  if (v8)
  {
    x = v8->_primaryContentFrame.origin.x;
    y = v8->_primaryContentFrame.origin.y;
    if (self)
    {
LABEL_11:
      v21 = self->_solution;
      goto LABEL_12;
    }
  }

  else
  {
    y = 0.0;
    x = 0.0;
    if (self)
    {
      goto LABEL_11;
    }
  }

  v21 = 0;
LABEL_12:
  v22 = [(_UICollectionLayoutItemSolver *)v21 supplementaryFrameWithKind:a3 absoluteIndex:a4 additionalFrameOffset:v16 interSolutionSpacing:x repeatAxis:y, v18];
  v10 = v22;
  if (v22 && *(v22 + 48) == 4 && [(_UICollectionLayoutSectionFixedSolver *)self frameCount]<= a4)
  {

    v10 = 0;
  }

LABEL_18:

  return v10;
}

- (id)sectionSupplementaryFrameForIndex:(int64_t)a3
{
  v5 = self;
  if (self)
  {
    self = self->_sectionAuxillarySolution;
  }

  v6 = [(_UICollectionLayoutAuxillaryItemSolver *)&self->super.isa supplementaryFrames];
  v7 = [v6 count];

  if (v7 <= a3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:v5 file:@"_UICollectionLayoutSectionFixedSolver.m" lineNumber:221 description:{@"Invalid parameter not satisfying: %@", @"index < self.sectionAuxillarySolution.supplementaryFrames.count"}];

    if (v5)
    {
      goto LABEL_5;
    }

LABEL_12:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:v5 file:@"_UICollectionLayoutSectionFixedSolver.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"self.sectionGeometryTranslator"}];

    p_isa = 0;
    goto LABEL_8;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (!v5->_sectionGeometryTranslator)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:v5 file:@"_UICollectionLayoutSectionFixedSolver.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"self.sectionGeometryTranslator"}];
  }

  p_isa = &v5->_sectionAuxillarySolution->super.isa;
LABEL_8:
  v9 = [(_UICollectionLayoutAuxillaryItemSolver *)p_isa supplementaryFrames];
  v10 = [v9 objectAtIndexedSubscript:a3];

  return v10;
}

- (id)unpinnedSectionSupplementaryFrameForIndex:(int64_t)a3
{
  if (self)
  {
    sectionAuxillarySolution = self->_sectionAuxillarySolution;
  }

  else
  {
    sectionAuxillarySolution = 0;
  }

  v7 = sectionAuxillarySolution;
  v8 = [(_UICollectionLayoutAuxillaryItemSolver *)v7 unpinnedFramesOfPinnedSupplementaries];

  if (v8)
  {
    v9 = [(_UICollectionLayoutAuxillaryItemSolver *)v7 unpinnedFramesOfPinnedSupplementaries];
    v10 = [v9 count];

    if (v10 <= a3)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionFixedSolver.m" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"index < sectionAuxillarySolution.unpinnedFramesOfPinnedSupplementaries.count"}];

      if (!self)
      {
        goto LABEL_13;
      }
    }

    else if (!self)
    {
      goto LABEL_13;
    }

    if (self->_sectionGeometryTranslator)
    {
LABEL_7:
      v11 = [(_UICollectionLayoutAuxillaryItemSolver *)v7 unpinnedFramesOfPinnedSupplementaries];
      v12 = [v11 objectAtIndexedSubscript:a3];

      goto LABEL_9;
    }

LABEL_13:
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionFixedSolver.m" lineNumber:236 description:{@"Invalid parameter not satisfying: %@", @"self.sectionGeometryTranslator"}];

    goto LABEL_7;
  }

  v12 = [(_UICollectionLayoutSectionFixedSolver *)self sectionSupplementaryFrameForIndex:a3];
LABEL_9:

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
    [v11 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionFixedSolver.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"index >= 0"}];

    if (self)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionFixedSolver.m" lineNumber:242 description:{@"Invalid parameter not satisfying: %@", @"kind != nil && kind.length > 0"}];

  if (a4 < 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (self)
  {
LABEL_5:
    sectionAuxillarySolution = self->_sectionAuxillarySolution;
    goto LABEL_6;
  }

LABEL_11:
  sectionAuxillarySolution = 0;
LABEL_6:

  return [(_UICollectionLayoutAuxillaryItemSolver *)&sectionAuxillarySolution->super.isa unpinnedSupplementaryFrameWithKind:a3 index:a4];
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
    [v8 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionFixedSolver.m" lineNumber:249 description:{@"Invalid parameter not satisfying: %@", @"enrollmentIdentifier"}];

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

LABEL_11:
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionFixedSolver.m" lineNumber:256 description:{@"Invalid parameter not satisfying: %@", @"index>=0"}];

    if (self)
    {
      goto LABEL_4;
    }

LABEL_12:
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionFixedSolver.m" lineNumber:257 description:{@"Invalid parameter not satisfying: %@", @"self.sectionGeometryTranslator"}];

    sectionAuxillarySolution = 0;
    goto LABEL_7;
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionFixedSolver.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"kind.length"}];

  if (a4 < 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (!self)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (!self->_sectionGeometryTranslator)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionFixedSolver.m" lineNumber:257 description:{@"Invalid parameter not satisfying: %@", @"self.sectionGeometryTranslator"}];
  }

  sectionAuxillarySolution = self->_sectionAuxillarySolution;
LABEL_7:

  return [(_UICollectionLayoutAuxillaryItemSolver *)&sectionAuxillarySolution->super.isa supplementaryFrameWithKind:a3 index:a4];
}

- (_NSRange)preferredSizeGroupingRangeForItemAtIndex:(int64_t)a3
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = 0;
  result.length = v4;
  result.location = v3;
  return result;
}

- (CGSize)auxillaryHostContentSize
{
  v3 = [(_UICollectionLayoutSectionFixedSolver *)self layoutAxis];
  if (self)
  {
    sectionGeometryTranslator = self->_sectionGeometryTranslator;
  }

  else
  {
    sectionGeometryTranslator = 0;
  }

  v5 = [(_UICollectionLayoutSectionGeometryTranslator *)sectionGeometryTranslator auxillaryHostContentSize];
  v7 = v6;
  v8 = [(_UICollectionLayoutSectionFixedSolver *)self layoutSection];
  v9 = [v8 scrollsOrthogonally];
  v10 = v3 == 2;
  if (v3 == 1)
  {
    v10 = 2;
  }

  if (!v9)
  {
    v3 = v10;
  }

  v11 = [(_UICollectionLayoutSectionFixedSolver *)self supplementaryContainer];
  [v11 contentSize];
  v14 = _UISizeValueForAxis(v3, v12, v13);

  v15 = _UISetSizeValueForAxis(v3, v5, v7, v14);
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (CGRect)auxillaryHostPinningRect
{
  if (self)
  {
    x = self->_overrideContentRectForPinning.origin.x;
    y = self->_overrideContentRectForPinning.origin.y;
    width = self->_overrideContentRectForPinning.size.width;
    height = self->_overrideContentRectForPinning.size.height;
  }

  else
  {
    y = 0.0;
    width = 0.0;
    height = 0.0;
    x = 0.0;
  }

  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  if (CGRectIsNull(v12))
  {
    width = 0.0;
    if (self)
    {
      sectionGeometryTranslator = self->_sectionGeometryTranslator;
      height = 0.0;
      y = 0.0;
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
      height = 0.0;
      y = 0.0;
      x = 0.0;
    }
  }

  v8 = x;
  v9 = y;
  v10 = width;
  v11 = height;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (id)auxillaryHostContainer
{
  if (!self || (v3 = self->_memoizedAuxillaryHostContainer) == 0)
  {
    if (![(NSCollectionLayoutSection *)self->_layoutSection supplementariesFollowContentInsets])
    {
      v14 = [(_UICollectionLayoutSectionFixedSolver *)self supplementaryContainer];
      memoizedAuxillaryHostContainer = self->_memoizedAuxillaryHostContainer;
      self->_memoizedAuxillaryHostContainer = v14;
LABEL_15:

      v3 = self->_memoizedAuxillaryHostContainer;
      goto LABEL_16;
    }

    v4 = [(_UICollectionLayoutSectionFixedSolver *)self containerLayoutAxis];
    if (v4 == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = v4 == 2;
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
        v14 = [(_UICollectionLayoutSectionFixedSolver *)self supplementaryContainer];
        [(_UICollectionLayoutContainer *)v14 contentSize];
        memoizedAuxillaryHostContainer = [(_UICollectionLayoutContainer *)v16 initWithContentSize:v17 contentInsets:v18, v10, v13, v11, v12];
        objc_storeStrong(&self->_memoizedAuxillaryHostContainer, memoizedAuxillaryHostContainer);
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

- (id)auxillaryHostSupplementaryEnroller
{
  if (self)
  {
    self = self->_sectionSupplementaryEnroller;
  }

  return self;
}

- (double)auxillaryHostPaddingBeforeBoundarySupplementaries
{
  v2 = [(_UICollectionLayoutSectionFixedSolver *)self layoutSection];
  v3 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v2 _paddingToBoundarySupplementaries];
    v3 = v4;
  }

  return v3;
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

  [(_UICollectionLayoutSectionFixedSolver *)self setOrthogonalScrollingPrefetchingUnitVector:v14, v9];
  self->_orthogonalOffset.x = v6;
  self->_orthogonalOffset.y = v8;
}

- (double)_dimensionForRootGroupAlongAxis:(unint64_t)a3
{
  v5 = [(_UICollectionLayoutSectionFixedSolver *)self _sectionContainer];
  v6 = [(_UICollectionLayoutSectionFixedSolver *)self traitCollection];
  [v6 displayScale];
  v8 = v7;

  v9 = [(_UICollectionLayoutSectionFixedSolver *)self layoutSection];
  v10 = [v9 group];
  v11 = [v10 size];
  [v11 _effectiveSizeForContainer:v5 displayScale:0 ignoringInsets:v8];
  v13 = v12;
  v15 = v14;

  v16 = _UISizeValueForAxis(a3, v13, v15);
  return v16;
}

- (CGPoint)orthogonalOffset
{
  x = self->_orthogonalOffset.x;
  y = self->_orthogonalOffset.y;
  result.y = y;
  result.x = x;
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

@end