@interface _UICollectionLayoutSectionListSolver
- (CGPoint)orthogonalOffset;
- (CGRect)auxillaryHostPinningRect;
- (CGRect)contentFrameIncludingAuxiliaries;
- (CGRect)primaryContentFrame;
- (CGSize)auxillaryHostContentSize;
- (CGVector)orthogonalScrollingPrefetchingUnitVector;
- (NSIndexSet)pinnedSupplementaryIndexes;
- (_NSRange)preferredSizeGroupingRangeForItemAtIndex:(int64_t)index;
- (_UICollectionLayoutSolveResult)_resolveWithParameters:(void *)parameters;
- (double)_dimensionForRootGroupAlongAxis:(unint64_t)axis;
- (double)auxillaryHostPaddingBeforeBoundarySupplementaries;
- (id).cxx_construct;
- (id)_queryFramesIntersectingRect:(CGFloat)rect frameOffset:(CGFloat)offset;
- (id)auxillaryHostAuxillaryItems;
- (id)auxillaryHostContainer;
- (id)auxillaryHostPreferredSizes;
- (id)auxillaryHostSupplementaryEnroller;
- (id)frameForIndex:(int64_t)index;
- (id)initWithLayoutSection:(void *)section;
- (id)resolveWithParameters:(id)parameters preferredSizes:(id)sizes;
- (id)sectionSupplementaryFrameForIndex:(int64_t)index;
- (id)sectionSupplementaryFrameWithKind:(id)kind index:(int64_t)index;
- (id)supplementaryFrameWithKind:(id)kind index:(int64_t)index;
- (id)unpinnedSectionSupplementaryFrameForIndex:(int64_t)index;
- (id)unpinnedSectionSupplementaryFrameWithKind:(id)kind forIndex:(int64_t)index;
- (id)visualDescription;
- (int64_t)sectionSupplementaryKindIndexForEnrollmentIdentifier:(id)identifier;
- (uint64_t)_regionIndexForFrameIndex:(uint64_t)index startRegionIndex:(unint64_t)regionIndex endRegionIndex:(uint64_t)endRegionIndex;
- (unint64_t)containerSizeDependentAxes;
- (void)_solveSectionAuxiliariesWithSectionContentSize:(double)size;
- (void)setOrthogonalOffset:(CGPoint)offset;
- (void)setPreferredSizes:(uint64_t)sizes;
- (void)solveForContainer:(id)container supplementaryContainer:(id)supplementaryContainer traitCollection:(id)collection layoutAxis:(unint64_t)axis frameCount:(int64_t)count preferredSizes:(id)sizes layoutRTL:(BOOL)l;
- (void)updatePinnedSupplementaryItemsWithVisibleBounds:(CGRect)bounds;
- (void)updatePinnedSupplementaryItemsWithVisibleBounds:(CGRect)bounds overrideContentRectForPinning:(CGRect)pinning;
@end

@implementation _UICollectionLayoutSectionListSolver

- (CGSize)auxillaryHostContentSize
{
  layoutSection = [(_UICollectionLayoutSectionListSolver *)self layoutSection];
  scrollsOrthogonally = [layoutSection scrollsOrthogonally];
  layoutAxis = [(_UICollectionLayoutSectionListSolver *)self layoutAxis];
  if (self)
  {
    sectionGeometryTranslator = self->_sectionGeometryTranslator;
  }

  else
  {
    sectionGeometryTranslator = 0;
  }

  auxillaryHostContentSize = [(_UICollectionLayoutSectionGeometryTranslator *)sectionGeometryTranslator auxillaryHostContentSize];
  v9 = v8;
  v10 = layoutAxis == 2;
  if (layoutAxis == 1)
  {
    v10 = 2;
  }

  if (scrollsOrthogonally)
  {
    v11 = layoutAxis;
  }

  else
  {
    v11 = v10;
  }

  supplementaryContainer = [(_UICollectionLayoutSectionListSolver *)self supplementaryContainer];
  [supplementaryContainer contentSize];
  v15 = _UISizeValueForAxis(v11, v13, v14);

  v16 = _UISetSizeValueForAxis(v11, auxillaryHostContentSize, v9, v15);
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
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
  v2 = self->_layoutSection;
  v3 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [(NSCollectionLayoutSection *)v2 _paddingToBoundarySupplementaries];
    v3 = v4;
  }

  return v3;
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

- (CGVector)orthogonalScrollingPrefetchingUnitVector
{
  dx = self->_orthogonalScrollingPrefetchingUnitVector.dx;
  dy = self->_orthogonalScrollingPrefetchingUnitVector.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

- (CGPoint)orthogonalOffset
{
  x = self->_orthogonalOffset.x;
  y = self->_orthogonalOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)auxillaryHostAuxillaryItems
{
  layoutSection = [(_UICollectionLayoutSectionListSolver *)self layoutSection];
  boundarySupplementaryItems = [layoutSection boundarySupplementaryItems];

  return boundarySupplementaryItems;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (id)auxillaryHostContainer
{
  if (!self || (v3 = self->_memoizedAuxillaryHostContainer) == 0)
  {
    if (![(NSCollectionLayoutSection *)self->_layoutSection supplementariesFollowContentInsets])
    {
      supplementaryContainer = [(_UICollectionLayoutSectionListSolver *)self supplementaryContainer];
      memoizedAuxillaryHostContainer = self->_memoizedAuxillaryHostContainer;
      self->_memoizedAuxillaryHostContainer = supplementaryContainer;
LABEL_14:

      v3 = self->_memoizedAuxillaryHostContainer;
      goto LABEL_15;
    }

    containerLayoutAxis = [(_UICollectionLayoutSectionListSolver *)self containerLayoutAxis];
    [(NSCollectionLayoutSection *)self->_layoutSection contentInsets];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [_UICollectionLayoutContainer alloc];
    supplementaryContainer = [(_UICollectionLayoutSectionListSolver *)self supplementaryContainer];
    [(_UICollectionLayoutContainer *)supplementaryContainer contentSize];
    v17 = containerLayoutAxis == 2;
    if (containerLayoutAxis == 1)
    {
      v17 = 2;
    }

    if (v17)
    {
      if (v17 == 2)
      {
        v12 = 0.0;
        v8 = 0.0;
LABEL_13:
        memoizedAuxillaryHostContainer = [(_UICollectionLayoutContainer *)v13 initWithContentSize:v15 contentInsets:v16, v6, v8, v10, v12];
        objc_storeStrong(&self->_memoizedAuxillaryHostContainer, memoizedAuxillaryHostContainer);
        goto LABEL_14;
      }

      v10 = 0.0;
    }

    else
    {
      v12 = 0.0;
      v10 = 0.0;
      v8 = 0.0;
    }

    v6 = 0.0;
    goto LABEL_13;
  }

LABEL_15:

  return v3;
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

- (id)auxillaryHostSupplementaryEnroller
{
  if (self)
  {
    self = self->_sectionSupplementaryEnroller;
  }

  return self;
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
    height = 0.0;
    if (self)
    {
      sectionGeometryTranslator = self->_sectionGeometryTranslator;
      width = 0.0;
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
      width = 0.0;
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

- (NSIndexSet)pinnedSupplementaryIndexes
{
  if (self)
  {
    sectionAuxillarySolution = self->_sectionAuxillarySolution;
    if (sectionAuxillarySolution)
    {
      self = sectionAuxillarySolution->_pinnedSupplementaryIndexes;
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

- (id)initWithLayoutSection:(void *)section
{
  if (!section)
  {
    return 0;
  }

  if (([a2 prefersListSolver] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_initWithLayoutSection_ object:section file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:353 description:{@"Invalid parameter not satisfying: %@", @"layoutSection.prefersListSolver"}];
  }

  v11.receiver = section;
  v11.super_class = _UICollectionLayoutSectionListSolver;
  v4 = objc_msgSendSuper2(&v11, sel_init);
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 13, a2);
    v5[17] = 0;
    group = [a2 group];
    v7 = [group size];
    *(v5 + 40) = [v7 isContainerSize] ^ 1;

    v8 = *(MEMORY[0x1E695F050] + 16);
    *(v5 + 12) = *MEMORY[0x1E695F050];
    *(v5 + 13) = v8;
    [v5[13] _checkForDuplicateSupplementaryItemKindsAndThrowIfFound];
  }

  return v5;
}

- (void)solveForContainer:(id)container supplementaryContainer:(id)supplementaryContainer traitCollection:(id)collection layoutAxis:(unint64_t)axis frameCount:(int64_t)count preferredSizes:(id)sizes layoutRTL:(BOOL)l
{
  v143 = *MEMORY[0x1E69E9840];
  [(_UICollectionLayoutSectionListSolver *)self setContainer:?];
  if (supplementaryContainer)
  {
    containerCopy = supplementaryContainer;
  }

  else
  {
    containerCopy = container;
  }

  [(_UICollectionLayoutSectionListSolver *)self setSupplementaryContainer:containerCopy];
  [(_UICollectionLayoutSectionListSolver *)self setTraitCollection:collection];
  [(_UICollectionLayoutSectionListSolver *)self setContainerLayoutAxis:axis];
  selfCopy = self;
  layoutSection = [(_UICollectionLayoutSectionListSolver *)self layoutSection];
  scrollsOrthogonally = [layoutSection scrollsOrthogonally];
  v17 = axis == 2;
  if (axis == 1)
  {
    v17 = 2;
  }

  if (scrollsOrthogonally)
  {
    axisCopy = v17;
  }

  else
  {
    axisCopy = axis;
  }

  [(_UICollectionLayoutSectionListSolver *)self setLayoutAxis:axisCopy];

  [(_UICollectionLayoutSectionListSolver *)self setFrameCount:count];
  [(_UICollectionLayoutSectionListSolver *)self setLayoutRTL:l];
  [(_UICollectionLayoutSectionListSolver *)self setPreferredSizes:sizes];
  if (self)
  {
    layoutAxis = [(_UICollectionLayoutSectionListSolver *)self layoutAxis];
    [(_UICollectionLayoutSectionListSolver *)self layoutSection];
    objc_claimAutoreleasedReturnValue();
    container = [(_UICollectionLayoutSectionListSolver *)self container];
    [container contentInsets];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    if ([(_UICollectionLayoutSectionListSolver *)self layoutAxis]== 2)
    {
      layoutSection2 = [(_UICollectionLayoutSectionListSolver *)self layoutSection];
      [layoutSection2 contentInsets];
      v30 = v29;

      layoutSection3 = [(_UICollectionLayoutSectionListSolver *)self layoutSection];
      [layoutSection3 contentInsets];
      v23 = v23 + v30;
      v27 = v27 + v32;
    }

    else if ([(_UICollectionLayoutSectionListSolver *)self layoutAxis]== 1)
    {
      layoutSection4 = [(_UICollectionLayoutSectionListSolver *)self layoutSection];
      [layoutSection4 contentInsets];
      v35 = v34;

      layoutSection3 = [(_UICollectionLayoutSectionListSolver *)self layoutSection];
      [layoutSection3 contentInsets];
      v21 = v21 + v35;
      v25 = v25 + v36;
    }

    else
    {
      layoutSection3 = [MEMORY[0x1E696AAA8] currentHandler];
      [layoutSection3 handleFailureInMethod:sel__sectionContainer object:self file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:872 description:@"Unknown layout axis."];
    }

    v37 = [_UICollectionLayoutContainer alloc];
    container2 = [(_UICollectionLayoutSectionListSolver *)self container];
    [container2 contentSize];
    v41 = [(_UICollectionLayoutContainer *)v37 initWithContentSize:v39 contentInsets:v40, v21, v23, v25, v27];

    v42 = [_UICollectionLayoutItemSolver alloc];
    layoutSection5 = [(_UICollectionLayoutSectionListSolver *)selfCopy layoutSection];
    group = [layoutSection5 group];
    v45 = [(_UICollectionLayoutItemSolver *)v42 initWithItem:group];

    v106 = v45;
    traitCollection = [(_UICollectionLayoutSectionListSolver *)selfCopy traitCollection];
    layoutRTL = [(_UICollectionLayoutSectionListSolver *)selfCopy layoutRTL];
    if (v45)
    {
      [(_UICollectionLayoutItemSolver *)v45 _solveForContainer:v41 layoutAxis:layoutAxis traitCollection:traitCollection maxFrameCount:0x7FFFFFFFFFFFFFFFLL layoutRTL:layoutRTL preferredSizes:0 largestKnownItemSize:0 solutionRecursionDepth:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    }

    itemFrames = [(_UICollectionLayoutItemSolver *)v45 itemFrames];
    v49 = [itemFrames count];

    if (v49 != 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__initialSolve object:selfCopy file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:564 description:{@"Invalid parameter not satisfying: %@", @"solution.itemFrames.count == 1"}];
    }

    itemFrames2 = [(_UICollectionLayoutItemSolver *)v45 itemFrames];
    v51 = [itemFrames2 objectAtIndexedSubscript:0];

    if (v51)
    {
      v53 = v51[10];
      v52 = v51[11];
      v54 = v51[12];
      v55 = v51[13];
    }

    else
    {
      v52 = 0.0;
      v54 = 0.0;
      v55 = 0.0;
      v53 = 0.0;
    }

    [(_UICollectionLayoutItemSolver *)v45 layoutFrame];
    v57 = v56;
    v59 = v58;
    _UISizeValueForAxis(layoutAxis, v54, v55);
    _UISizeValueForAxis(layoutAxis, v57, v59);
    auxillaryFrames = [(_UICollectionLayoutItemSolver *)v45 auxillaryFrames];
    v115 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v110 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    obj = auxillaryFrames;
    v60 = [obj countByEnumeratingWithState:&v136 objects:v142 count:16];
    if (!v60)
    {
LABEL_35:

      [(_UICollectionLayoutSectionListSolver *)selfCopy frameCount];
      [v110 count];
      [v115 count];
      layoutSection6 = [(_UICollectionLayoutSectionListSolver *)selfCopy layoutSection];
      [layoutSection6 interGroupSpacing];

      v133 = 0;
      v134 = 0;
      v135 = 0;
      std::vector<_UIAuxillarySolveResult>::reserve(&v133, [v110 count]);
      v130 = 0;
      v131 = 0;
      v132 = 0;
      std::vector<_UIAuxillarySolveResult>::reserve(&v130, [v115 count]);
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v112 = v110;
      v69 = [v112 countByEnumeratingWithState:&v126 objects:v141 count:16];
      if (v69)
      {
        v70 = *v127;
        do
        {
          v71 = 0;
          do
          {
            if (*v127 != v70)
            {
              objc_enumerationMutation(v112);
            }

            v72 = *(*(&v126 + 1) + 8 * v71);
            if (v72)
            {
              v74 = v72[10];
              v73 = v72[11];
              v76 = v72[12];
              v75 = v72[13];
              v77 = v72[2];
            }

            else
            {
              v77 = 0;
              v75 = 0;
              v76 = 0;
              v73 = 0;
              v74 = 0;
            }

            v78 = v134;
            if (v134 >= v135)
            {
              v80 = 0xAAAAAAAAAAAAAAABLL * ((v134 - v133) >> 4) + 1;
              if (v80 > 0x555555555555555)
              {
LABEL_85:
                std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
              }

              if (0x5555555555555556 * ((v135 - v133) >> 4) > v80)
              {
                v80 = 0x5555555555555556 * ((v135 - v133) >> 4);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v135 - v133) >> 4) >= 0x2AAAAAAAAAAAAAALL)
              {
                v81 = 0x555555555555555;
              }

              else
              {
                v81 = v80;
              }

              v121 = &v133;
              if (v81)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<_UIAuxillarySolveResult>>(v81);
              }

              v82 = 16 * ((v134 - v133) >> 4);
              v117 = 0;
              v118 = v82;
              v120 = 0;
              *(v82 + 40) = 0;
              *v82 = v74;
              *(v82 + 8) = v73;
              *(v82 + 16) = v76;
              *(v82 + 24) = v75;
              *(v82 + 32) = v77;
              objc_storeStrong((v82 + 40), v72);
              v119 = v82 + 48;
              std::vector<_UIAuxillarySolveResult>::__swap_out_circular_buffer(&v133, &v117);
              v79 = v134;
              std::__split_buffer<_UIAuxillarySolveResult>::~__split_buffer(&v117);
            }

            else
            {
              *(v134 + 40) = 0;
              *v78 = v74;
              *(v78 + 8) = v73;
              *(v78 + 16) = v76;
              *(v78 + 24) = v75;
              *(v78 + 32) = v77;
              objc_storeStrong((v78 + 40), v72);
              v79 = v78 + 48;
            }

            v134 = v79;
            ++v71;
          }

          while (v69 != v71);
          v83 = [v112 countByEnumeratingWithState:&v126 objects:v141 count:16];
          v69 = v83;
        }

        while (v83);
      }

      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v111 = v115;
      v84 = [v111 countByEnumeratingWithState:&v122 objects:v140 count:16];
      if (v84)
      {
        v85 = *v123;
        do
        {
          v86 = 0;
          do
          {
            if (*v123 != v85)
            {
              objc_enumerationMutation(v111);
            }

            v87 = *(*(&v122 + 1) + 8 * v86);
            if (v87)
            {
              v89 = v87[10];
              v88 = v87[11];
              v91 = v87[12];
              v90 = v87[13];
              v92 = v87[2];
            }

            else
            {
              v92 = 0;
              v90 = 0;
              v91 = 0;
              v88 = 0;
              v89 = 0;
            }

            v93 = v131;
            if (v131 >= v132)
            {
              v95 = 0xAAAAAAAAAAAAAAABLL * ((v131 - v130) >> 4) + 1;
              if (v95 > 0x555555555555555)
              {
                goto LABEL_85;
              }

              if (0x5555555555555556 * ((v132 - v130) >> 4) > v95)
              {
                v95 = 0x5555555555555556 * ((v132 - v130) >> 4);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v132 - v130) >> 4) >= 0x2AAAAAAAAAAAAAALL)
              {
                v96 = 0x555555555555555;
              }

              else
              {
                v96 = v95;
              }

              v121 = &v130;
              if (v96)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<_UIAuxillarySolveResult>>(v96);
              }

              v97 = 16 * ((v131 - v130) >> 4);
              v117 = 0;
              v118 = v97;
              v120 = 0;
              *(v97 + 40) = 0;
              *v97 = v89;
              *(v97 + 8) = v88;
              *(v97 + 16) = v91;
              *(v97 + 24) = v90;
              *(v97 + 32) = v92;
              objc_storeStrong((v97 + 40), v87);
              v119 = v97 + 48;
              std::vector<_UIAuxillarySolveResult>::__swap_out_circular_buffer(&v130, &v117);
              v94 = v131;
              std::__split_buffer<_UIAuxillarySolveResult>::~__split_buffer(&v117);
            }

            else
            {
              *(v131 + 40) = 0;
              *v93 = v89;
              *(v93 + 8) = v88;
              *(v93 + 16) = v91;
              *(v93 + 24) = v90;
              *(v93 + 32) = v92;
              objc_storeStrong((v93 + 40), v87);
              v94 = v93 + 48;
            }

            v131 = v94;
            ++v86;
          }

          while (v84 != v86);
          v98 = [v111 countByEnumeratingWithState:&v122 objects:v140 count:16];
          v84 = v98;
        }

        while (v98);
      }

      v145.origin.x = v53;
      v145.origin.y = v52;
      v145.size.width = v54;
      v145.size.height = v55;
      MinX = CGRectGetMinX(v145);
      v146.origin.x = v53;
      v146.origin.y = v52;
      v146.size.width = v54;
      v146.size.height = v55;
      MinY = CGRectGetMinY(v146);
      v147.origin.x = [(_UICollectionLayoutItemSolver *)v106 layoutFrame];
      v148.origin.x = MinX;
      v148.origin.y = MinY;
      v148.size.width = v54;
      v148.size.height = v55;
      CGRectUnion(v147, v148);
      operator new();
    }

    v61 = *v137;
LABEL_23:
    v62 = 0;
    while (1)
    {
      if (*v137 != v61)
      {
        objc_enumerationMutation(obj);
      }

      v63 = *(*(&v136 + 1) + 8 * v62);
      auxillaryItem = [(_UICollectionLayoutFramesQueryResult *)v63 auxillaryItem];
      if (!auxillaryItem)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:sel__initialSolve object:selfCopy file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:584 description:{@"Invalid parameter not satisfying: %@", @"auxilaryItem"}];
      }

      if (!v63)
      {
        goto LABEL_33;
      }

      v65 = v63[6];
      v66 = v115;
      if (v65 == 4)
      {
        goto LABEL_32;
      }

      if (v65 == 3)
      {
        break;
      }

LABEL_33:

      if (v60 == ++v62)
      {
        v60 = [obj countByEnumeratingWithState:&v136 objects:v142 count:16];
        if (!v60)
        {
          goto LABEL_35;
        }

        goto LABEL_23;
      }
    }

    v66 = v110;
LABEL_32:
    [v66 addObject:v63];
    goto LABEL_33;
  }

  if (sizes)
  {
    indexes = [(_UICollectionPreferredSizes *)sizes indexes];
    v101 = [_UICollectionLayoutSolveParameters alloc];
    v102 = [(_UICollectionLayoutSolveParameters *)&v101->super.isa initWithInvalidatedIndexes:indexes scrollOffset:*MEMORY[0x1E695EFF8] visibleBounds:*(MEMORY[0x1E695EFF8] + 8), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v103 = [(_UICollectionLayoutSectionListSolver *)self _resolveWithParameters:v102];
  }
}

- (void)setPreferredSizes:(uint64_t)sizes
{
  if (sizes)
  {
    objc_storeStrong((sizes + 96), a2);
  }
}

- (_UICollectionLayoutSolveResult)_resolveWithParameters:(void *)parameters
{
  if (parameters)
  {
    if (parameters[2] == parameters[1])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__resolveWithParameters_ object:parameters file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:647 description:{@"Invalid parameter not satisfying: %@", @"_regions.size()"}];
    }

    _content = [(_UILabelConfiguration *)a2 _content];
    v5 = objc_alloc_init(_UICollectionLayoutSolveResult);
    if (a2 && ((*(a2 + 24) & 1) != 0 || [*(a2 + 8) count] || objc_msgSend(*(a2 + 16), "count")))
    {
      if (v5)
      {
        [(NSMutableIndexSet *)v5->_invalidatedIndexes addIndexes:_content];
      }

      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __63___UICollectionLayoutSectionListSolver__resolveWithParameters___block_invoke;
      v66[3] = &unk_1E70F4548;
      v66[4] = parameters;
      [_content enumerateIndexesUsingBlock:v66];
      if ([_content count])
      {
        firstIndex = [_content firstIndex];
        v8 = parameters[1];
        v7 = parameters[2];
        v9 = v7 - v8;
        if (v7 - v8 <= 151)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler2 handleFailureInMethod:sel__recomputeRegionOffsetsStartingAtFrameIndex_ object:parameters file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:806 description:{@"Invalid parameter not satisfying: %@", @"regionCount > 0"}];

          v8 = parameters[1];
          v7 = parameters[2];
        }

        v10 = v7 - v8;
        if (!v10 || (v11 = [_UICollectionLayoutSectionListSolver _regionIndexForFrameIndex:parameters startRegionIndex:firstIndex endRegionIndex:0x86BCA1AF286BCA1BLL * (v10 >> 3) - 1], v11 == 0x7FFFFFFFFFFFFFFFLL))
        {
          currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler3 handleFailureInMethod:sel__recomputeRegionOffsetsStartingAtFrameIndex_ object:parameters file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:810 description:{@"Invalid parameter not satisfying: %@", @"regionIndex != NSNotFound"}];

          v8 = parameters[1];
          v11 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v13 = v11 - (v11 > 0);
        v14 = v8 + 152 * v13;
        v60 = *(v14 + 16);
        v15 = *(v14 + 64);
        v16 = *(v14 + 72);
        v17 = *(v14 + 80);
        v18 = *(v14 + 88);
        v68.origin.x = v15;
        v68.origin.y = v16;
        v68.size.width = v17;
        v68.size.height = v18;
        Height = CGRectGetHeight(v68);
        v19 = *(v14 + 24);
        v20 = *(v14 + 8);
        v69.origin.x = v15;
        v69.origin.y = v16;
        v69.size.width = v17;
        v69.size.height = v18;
        MinX = CGRectGetMinX(v69);
        v22 = *(v14 + 16);
        v70.origin.x = v15;
        v70.origin.y = v16;
        v70.size.width = v17;
        v70.size.height = v18;
        v71.size.width = CGRectGetWidth(v70);
        v71.size.height = (Height + v19) * v20;
        v71.origin.x = MinX;
        v71.origin.y = v22;
        v23 = CGRectGetHeight(v71);
        v24 = 0x86BCA1AF286BCA1BLL * (v9 >> 3);
        v25 = v13 + 1;
        if (v13 + 1 < v24)
        {
          v26 = v60 + v23;
          v27 = 152 * v13 + 160;
          do
          {
            v28 = parameters[1] + v27;
            v61 = v26;
            *(v28 + 8) = v26;
            v29 = *(v28 + 56);
            v30 = *(v28 + 64);
            v31 = *(v28 + 72);
            v32 = *(v28 + 80);
            v72.origin.x = v29;
            v72.origin.y = v30;
            v72.size.width = v31;
            v72.size.height = v32;
            v64 = CGRectGetHeight(v72);
            v33 = *(v28 + 16);
            v34 = *v28;
            v73.origin.x = v29;
            v73.origin.y = v30;
            v73.size.width = v31;
            v73.size.height = v32;
            v35 = CGRectGetMinX(v73);
            v36 = *(v28 + 8);
            v74.origin.x = v29;
            v74.origin.y = v30;
            v74.size.width = v31;
            v74.size.height = v32;
            v75.size.width = CGRectGetWidth(v74);
            v75.size.height = (v64 + v33) * v34;
            v75.origin.x = v35;
            v75.origin.y = v36;
            v26 = v61 + CGRectGetHeight(v75);
            ++v25;
            v27 += 152;
          }

          while (v25 < v24);
        }
      }

      layoutSection = [parameters layoutSection];
      [layoutSection interGroupSpacing];
      v65 = v38;

      v39 = parameters[2];
      v40 = *(v39 - 88);
      v41 = *(v39 - 80);
      v42 = *(v39 - 72);
      v43 = *(v39 - 64);
      v76.origin.x = v40;
      v76.origin.y = v41;
      v76.size.width = v42;
      v76.size.height = v43;
      v62 = CGRectGetHeight(v76);
      v44 = *(v39 - 128);
      v45 = *(v39 - 144);
      v77.origin.x = v40;
      v77.origin.y = v41;
      v77.size.width = v42;
      v77.size.height = v43;
      v46 = CGRectGetMinX(v77);
      v47 = *(v39 - 136);
      v78.origin.x = v40;
      v78.origin.y = v41;
      v78.size.width = v42;
      v78.size.height = v43;
      Width = CGRectGetWidth(v78);
      if (parameters[19] < 1)
      {
        v49 = 0.0;
      }

      else
      {
        v79.size.width = Width;
        v79.size.height = (v62 + v44) * v45;
        v79.origin.x = v46;
        v79.origin.y = v47;
        v49 = CGRectGetMaxY(v79) - v65;
      }

      container = [parameters container];
      [container effectiveContentSize];
      v52 = v51;
      v54 = v53;

      v55 = _UISetSizeValueForAxis(parameters[17], v52, v54, v49);
      [(_UICollectionLayoutSectionListSolver *)parameters _solveSectionAuxiliariesWithSectionContentSize:v55, v56];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)resolveWithParameters:(id)parameters preferredSizes:(id)sizes
{
  [(_UICollectionLayoutSectionListSolver *)self setPreferredSizes:sizes];

  return [(_UICollectionLayoutSectionListSolver *)self _resolveWithParameters:parameters];
}

- (void)updatePinnedSupplementaryItemsWithVisibleBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = objc_alloc_init(_UICollectionLayoutSupplementaryEnroller);
  v9 = v8;
  if (self)
  {
    objc_storeStrong(&self->_sectionSupplementaryEnroller, v8);

    sectionAuxillarySolution = self->_sectionAuxillarySolution;
  }

  else
  {

    sectionAuxillarySolution = 0;
  }

  [(_UICollectionLayoutAuxillaryItemSolver *)&sectionAuxillarySolution->super.isa resolveSupplementaryItemsForVisibleBounds:y, width, height];
}

- (void)updatePinnedSupplementaryItemsWithVisibleBounds:(CGRect)bounds overrideContentRectForPinning:(CGRect)pinning
{
  self->_overrideContentRectForPinning = pinning;
  [(_UICollectionLayoutSectionListSolver *)self updatePinnedSupplementaryItemsWithVisibleBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v5 = *(MEMORY[0x1E695F050] + 16);
  self->_overrideContentRectForPinning.origin = *MEMORY[0x1E695F050];
  self->_overrideContentRectForPinning.size = v5;
}

- (id)_queryFramesIntersectingRect:(CGFloat)rect frameOffset:(CGFloat)offset
{
  if (self)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = *(self + 80);
    v10 = v9;
    if (v9)
    {
      v95 = v9[9];
      v98 = v9[10];
    }

    else
    {
      v98 = 0.0;
      v95 = 0.0;
    }

    v11 = [(_UICollectionLayoutSectionGeometryTranslator *)v9 contentRectForSectionRect:a2, rect, offset, a5];
    rect_16 = v13;
    rect_24 = v12;
    rect_8 = v14;
    v15 = v11;
    if ([self frameCount] >= 1)
    {
      v17 = *(self + 8);
      v16 = *(self + 16);
      v18 = v16 - v17;
      if (v16 != v17)
      {
        rect = v15;
        [self contentFrameIncludingAuxiliaries];
        v136.size.width = v19;
        v136.size.height = v20;
        v136.origin.x = 0.0;
        v136.origin.y = 0.0;
        v118.origin.x = v15;
        v118.size.height = rect_8;
        v118.size.width = rect_16;
        v118.origin.y = rect_24;
        if (CGRectIntersectsRect(v118, v136))
        {
          v21 = *(self + 8);
          v22 = *(v21 + 64);
          v23 = *(v21 + 72);
          v24 = *(v21 + 80);
          v25 = *(v21 + 88);
          v119.origin.x = v22;
          v119.origin.y = v23;
          v119.size.width = v24;
          v119.size.height = v25;
          Height = CGRectGetHeight(v119);
          v26 = *(v21 + 24);
          v27 = *(v21 + 8);
          v120.origin.x = v22;
          v120.origin.y = v23;
          v120.size.width = v24;
          v120.size.height = v25;
          MinX = CGRectGetMinX(v120);
          v29 = *(v21 + 16);
          v121.origin.x = v22;
          v121.origin.y = v23;
          v121.size.width = v24;
          v121.size.height = v25;
          v122.size.width = CGRectGetWidth(v121);
          v122.size.height = (Height + v26) * v27;
          v122.origin.x = MinX;
          v122.origin.y = v29;
          v137.origin.x = rect;
          v137.size.height = rect_8;
          v137.size.width = rect_16;
          v137.origin.y = rect_24;
          if (CGRectIntersectsRect(v122, v137))
          {
            v30 = 0;
            rectCopy4 = rect;
LABEL_21:
            v51 = rect_16;
            v50 = rect_24;
            v52 = rect_8;
            MaxY = CGRectGetMaxY(*&rectCopy4);
            v96 = 0x86BCA1AF286BCA1BLL * (v18 >> 3);
            if (v30 < v96)
            {
              v106 = a7 + v98;
              do
              {
                v53 = *(self + 8) + 152 * v30;
                v54 = *(v53 + 64);
                v55 = *(v53 + 72);
                v56 = *(v53 + 80);
                v57 = *(v53 + 88);
                v127.origin.x = v54;
                v127.origin.y = v55;
                v127.size.width = v56;
                v127.size.height = v57;
                v101 = CGRectGetHeight(v127);
                v58 = *(v53 + 24);
                v99 = *(v53 + 8);
                v128.origin.x = v54;
                v128.origin.y = v55;
                v128.size.width = v56;
                v128.size.height = v57;
                v59 = CGRectGetMinX(v128);
                v60 = *(v53 + 16);
                v129.origin.x = v54;
                v129.origin.y = v55;
                v129.size.width = v56;
                v129.size.height = v57;
                v130.size.width = CGRectGetWidth(v129);
                v130.size.height = (v101 + v58) * v99;
                v130.origin.x = v59;
                v130.origin.y = v60;
                if (CGRectGetMinY(v130) > MaxY)
                {
                  break;
                }

                if (*(v53 + 8))
                {
                  v131.origin.x = rect;
                  v131.size.width = rect_16;
                  v131.origin.y = rect_24;
                  v131.size.height = rect_8;
                  MinY = CGRectGetMinY(v131);
                  v62 = CGRectGetHeight(*(v53 + 64));
                  v63 = *v53;
                  v64 = *(v53 + 16);
                  v65 = *v53;
                  if (MinY > v64)
                  {
                    v66 = (MinY - v64) / (v62 + *(v53 + 24)) + v63;
                    v65 = (v63 + *(v53 + 8) - 1) >= v66 ? v66 : (v63 + *(v53 + 8) - 1);
                    if (v65 < v63)
                    {
                      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                      v92 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSInteger _UIRegionSolveResult::firstFrameIndexMatchingQueryRect(CGRect) const"];
                      [currentHandler handleFailureInFunction:v92 file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:227 description:{@"Invalid parameter not satisfying: %@", @"firstIndex >= _range.location && firstIndex <= maxIndex"}];
                    }
                  }

                  if (v65 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v132.origin.x = rect;
                    v132.size.width = rect_16;
                    v132.origin.y = rect_24;
                    v132.size.height = rect_8;
                    v67 = CGRectGetMaxY(v132);
                    v68 = *v53 + *(v53 + 8) - 1;
                    if (v65 <= v68)
                    {
                      v69 = v67;
                      while (1)
                      {
                        v70 = _UIRegionSolveResult::boundingFrameForIndex(v53, v65);
                        v72 = v71;
                        v74 = v73;
                        v76 = v75;
                        v133.origin.x = rect;
                        v133.size.width = rect_16;
                        v133.origin.y = rect_24;
                        v133.size.height = rect_8;
                        v139.origin.x = v70;
                        v139.origin.y = v72;
                        v139.size.width = v74;
                        v139.size.height = v76;
                        v77 = CGRectIntersectsRect(v133, v139);
                        v134.origin.x = v70;
                        v134.origin.y = v72;
                        v134.size.width = v74;
                        v134.size.height = v76;
                        v78 = CGRectGetMinY(v134);
                        if (v77)
                        {
                          v79 = v106 + v78;
                          v135 = CGRectOffset(*(v53 + 32), a6 + v95 + 0.0, v106 + v78);
                          x = v135.origin.x;
                          y = v135.origin.y;
                          width = v135.size.width;
                          v83 = v135.size.height;
                          v85 = *(v53 + 120);
                          v84 = *(v53 + 128);
                          while (v85 != v84)
                          {
                            v116.x = a6 + v95 + 0.0;
                            v116.y = v79;
                            v86 = _UIAuxillarySolveResult::queryResultForIndexAndOffset(v85, v65, v116);
                            [v8 addObject:v86];

                            v85 = (v85 + 48);
                          }

                          v88 = *(v53 + 96);
                          v87 = *(v53 + 104);
                          while (v88 != v87)
                          {
                            v117.x = a6 + v95 + 0.0;
                            v117.y = v79;
                            v89 = _UIAuxillarySolveResult::queryResultForIndexAndOffset(v88, v65, v117);
                            [v8 addObject:v89];

                            v88 = (v88 + 48);
                          }

                          v90 = [(_UICollectionLayoutFramesQueryResult *)*(v53 + 144) copyWithFrame:v65 index:x, y, width, v83];
                          [v8 addObject:v90];

                          if (v65 >= v68)
                          {
                            break;
                          }
                        }

                        else if (v65 >= v68 || v78 > v69)
                        {
                          break;
                        }

                        ++v65;
                      }
                    }
                  }
                }

                ++v30;
              }

              while (v30 != v96);
            }

            goto LABEL_48;
          }

          v32 = *(self + 16) - *(self + 8);
          rectCopy3 = rect;
          if (v32 >= 152)
          {
            v34 = 0;
            v35 = -1 - 0x79435E50D79435E5 * (v32 >> 3);
            while (1)
            {
              v36 = *(self + 136);
              v100 = _UIRectMinPointValueAlongAxis(v36, rectCopy3, rect_24);
              v30 = (v35 + v34) / 2;
              v37 = *(self + 8) + 152 * v30;
              v38 = *(v37 + 64);
              v39 = *(v37 + 72);
              v40 = *(v37 + 80);
              v41 = *(v37 + 88);
              v123.origin.x = v38;
              v123.origin.y = v39;
              v123.size.width = v40;
              v123.size.height = v41;
              v105 = CGRectGetHeight(v123);
              v42 = *(v37 + 24);
              v43 = *(v37 + 8);
              v124.origin.x = v38;
              v124.origin.y = v39;
              v124.size.width = v40;
              v124.size.height = v41;
              v44 = CGRectGetMinX(v124);
              v45 = *(v37 + 16);
              v125.origin.x = v38;
              v125.origin.y = v39;
              v125.size.width = v40;
              v125.size.height = v41;
              v46 = CGRectGetWidth(v125);
              v47 = _UIRectMinPointValueAlongAxis(v36, v44, v45);
              v126.origin.x = v44;
              v126.origin.y = v45;
              v126.size.width = v46;
              v126.size.height = (v105 + v42) * v43;
              v138.origin.x = rect;
              v138.size.height = rect_8;
              v138.size.width = rect_16;
              v138.origin.y = rect_24;
              v48 = CGRectIntersectsRect(v126, v138);
              if (v100 >= v47 && v48)
              {
                break;
              }

              rectCopy3 = rect;
              if (v100 >= v47)
              {
                v34 = v30 + 1;
                if (v30 >= v35)
                {
                  goto LABEL_48;
                }
              }

              else
              {
                v35 = v30 - 1;
                if (v34 >= v30)
                {
                  goto LABEL_48;
                }
              }
            }

            rectCopy4 = rect;
            goto LABEL_21;
          }
        }
      }
    }

LABEL_48:
    v93 = [(_UICollectionLayoutAuxillaryItemSolver *)*(self + 64) queryFramesIntersectingRect:a2 frameOffset:rect, offset, a5, a6, a7];
    [v8 addObjectsFromArray:v93];

    goto LABEL_49;
  }

  v8 = 0;
LABEL_49:

  return v8;
}

- (id)visualDescription
{
  v28[2] = *MEMORY[0x1E69E9840];
  container = [(_UICollectionLayoutSectionListSolver *)self container];
  [container contentSize];
  v5 = v4;
  container2 = [(_UICollectionLayoutSectionListSolver *)self container];
  [container2 contentSize];
  v8 = v7;

  [(_UICollectionLayoutSectionListSolver *)self contentFrameIncludingAuxiliaries];
  v10 = v9;
  v12 = v11;
  layoutSection = [(_UICollectionLayoutSectionListSolver *)self layoutSection];
  [layoutSection contentInsets];
  v15 = v14;
  layoutSection2 = [(_UICollectionLayoutSectionListSolver *)self layoutSection];
  [layoutSection2 contentInsets];
  v18 = v17;

  v19 = [(_UICollectionLayoutSectionListSolver *)self _queryFramesIntersectingRect:0.0 frameOffset:v10, v12, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
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

- (id)frameForIndex:(int64_t)index
{
  frameCount = [(_UICollectionLayoutSectionListSolver *)self frameCount];
  v6 = 0;
  if (frameCount > index && self)
  {
    solution = self->_solution;
    if (solution && (solveResult = solution->_solveResult) != 0 && solveResult->_itemFrameCount == 1)
    {
      begin = self->_regions.__begin_;
      v10 = self->_regions.__end_ - begin;
      if (!v10 || (v11 = [_UICollectionLayoutSectionListSolver _regionIndexForFrameIndex:index startRegionIndex:0x86BCA1AF286BCA1BLL * (v10 >> 3) - 1 endRegionIndex:?], v11 == 0x7FFFFFFFFFFFFFFFLL))
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel__regionForFrameIndex_ object:self file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:881 description:{@"Invalid parameter not satisfying: %@", @"regionIndex != NSNotFound"}];

        begin = self->_regions.__begin_;
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v13 = begin + 152 * v11;
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

      if (index < *v13 || (index - *v13) >= *(v13 + 1))
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGRect _UIRegionSolveResult::frameForIndex(NSInteger) const"];
        [currentHandler2 handleFailureInFunction:v25 file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"NSLocationInRange(index, _range)"}];
      }

      v18 = *(v13 + 4);
      v19 = *(v13 + 5);
      v20 = *(v13 + 6);
      v21 = *(v13 + 7);
      v22 = *(v13 + 2) + (CGRectGetHeight(*(v13 + 2)) + *(v13 + 3)) * (index - *v13);
      v27.origin.x = v18;
      v27.origin.y = v19;
      v27.size.width = v20;
      v27.size.height = v21;
      v28 = CGRectOffset(v27, 0.0, v22);
      v29 = CGRectOffset(v28, x, y);
      v6 = [(_UICollectionLayoutFramesQueryResult *)*(v13 + 18) copyWithFrame:index index:v29.origin.x, v29.origin.y, v29.size.width, v29.size.height];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)supplementaryFrameWithKind:(id)kind index:(int64_t)index
{
  if ([kind length])
  {
    if ((index & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_28:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:474 description:{@"Invalid parameter not satisfying: %@", @"index >= 0"}];

    if (self)
    {
      goto LABEL_4;
    }

LABEL_29:
    sectionAuxillarySolution = 0;
    goto LABEL_5;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:473 description:{@"Invalid parameter not satisfying: %@", @"kind.length"}];

  if (index < 0)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (!self)
  {
    goto LABEL_29;
  }

LABEL_4:
  sectionAuxillarySolution = self->_sectionAuxillarySolution;
LABEL_5:
  v9 = [(_UICollectionLayoutAuxillaryItemSolver *)&sectionAuxillarySolution->super.isa supplementaryFrameWithKind:kind index:index additionalFrameOffset:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  if (v9)
  {
    goto LABEL_23;
  }

  if (self)
  {
    solution = self->_solution;
  }

  else
  {
    solution = 0;
  }

  supplementaryOffsets = [(_UICollectionLayoutItemSolver *)solution supplementaryOffsets];
  elementKinds = [supplementaryOffsets elementKinds];
  v13 = [elementKinds containsObject:kind];

  if ((v13 & 1) == 0)
  {
    goto LABEL_22;
  }

  if (!self)
  {
    v16 = 0;
    begin = MEMORY[8];
    goto LABEL_32;
  }

  begin = self->_regions.__begin_;
  v15 = self->_regions.__end_ - begin;
  if (!v15 || (v16 = [_UICollectionLayoutSectionListSolver _regionIndexForFrameIndex:index startRegionIndex:0x86BCA1AF286BCA1BLL * (v15 >> 3) - 1 endRegionIndex:?], v16 == 0x7FFFFFFFFFFFFFFFLL))
  {
LABEL_22:
    v9 = 0;
    goto LABEL_23;
  }

  sectionGeometryTranslator = self->_sectionGeometryTranslator;
  if (sectionGeometryTranslator)
  {
    x = sectionGeometryTranslator->_primaryContentFrame.origin.x;
    y = sectionGeometryTranslator->_primaryContentFrame.origin.y;
    goto LABEL_14;
  }

LABEL_32:
  y = 0.0;
  x = 0.0;
LABEL_14:
  v20 = begin + 152 * v16;
  v21 = _UIRegionSolveResult::boundingFrameForIndex(v20, index);
  v23 = v22;
  v24 = *(v20 + 12);
  v25 = *(v20 + 13);
  while (v24 != v25)
  {
    auxillaryItem = [(_UICollectionLayoutFramesQueryResult *)*(v24 + 5) auxillaryItem];
    elementKind = [auxillaryItem elementKind];

    LOBYTE(auxillaryItem) = [elementKind isEqualToString:kind];
    if (auxillaryItem)
    {
      goto LABEL_26;
    }

    v24 = (v24 + 48);
  }

  v24 = *(v20 + 15);
  v28 = *(v20 + 16);
  if (v24 == v28)
  {
    goto LABEL_22;
  }

  while (1)
  {
    auxillaryItem2 = [(_UICollectionLayoutFramesQueryResult *)*(v24 + 5) auxillaryItem];
    elementKind2 = [auxillaryItem2 elementKind];

    LOBYTE(auxillaryItem2) = [elementKind2 isEqualToString:kind];
    if (auxillaryItem2)
    {
      break;
    }

    v9 = 0;
    v24 = (v24 + 48);
    if (v24 == v28)
    {
      goto LABEL_23;
    }
  }

LABEL_26:
  v35.x = x + v21;
  v35.y = y + v23;
  v9 = _UIAuxillarySolveResult::queryResultForIndexAndOffset(v24, index, v35);
LABEL_23:

  return v9;
}

- (id)unpinnedSectionSupplementaryFrameWithKind:(id)kind forIndex:(int64_t)index
{
  if (kind && [kind length])
  {
    if ((index & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:503 description:{@"Invalid parameter not satisfying: %@", @"index >= 0"}];

    if (self)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:502 description:{@"Invalid parameter not satisfying: %@", @"kind != nil && kind.length > 0"}];

  if (index < 0)
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
  v9 = [(_UICollectionLayoutAuxillaryItemSolver *)&sectionAuxillarySolution->super.isa unpinnedSupplementaryFrameWithKind:kind index:index];

  return v9;
}

- (id)sectionSupplementaryFrameForIndex:(int64_t)index
{
  selfCopy = self;
  if (self)
  {
    self = self->_sectionAuxillarySolution;
  }

  supplementaryFrames = [(_UICollectionLayoutAuxillaryItemSolver *)&self->super.isa supplementaryFrames];
  v7 = [supplementaryFrames count];

  if (v7 <= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:509 description:{@"Invalid parameter not satisfying: %@", @"index < self.sectionAuxillarySolution.supplementaryFrames.count"}];

    if (!selfCopy)
    {
      goto LABEL_11;
    }
  }

  else if (!selfCopy)
  {
    goto LABEL_11;
  }

  if (selfCopy->_sectionGeometryTranslator)
  {
LABEL_6:
    p_isa = &selfCopy->_sectionAuxillarySolution->super.isa;
    goto LABEL_7;
  }

LABEL_11:
  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:510 description:{@"Invalid parameter not satisfying: %@", @"self.sectionGeometryTranslator"}];

  if (selfCopy)
  {
    goto LABEL_6;
  }

  p_isa = 0;
LABEL_7:
  supplementaryFrames2 = [(_UICollectionLayoutAuxillaryItemSolver *)p_isa supplementaryFrames];
  v10 = [supplementaryFrames2 objectAtIndexedSubscript:index];

  return v10;
}

- (id)unpinnedSectionSupplementaryFrameForIndex:(int64_t)index
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
  unpinnedFramesOfPinnedSupplementaries = [(_UICollectionLayoutAuxillaryItemSolver *)v7 unpinnedFramesOfPinnedSupplementaries];

  if (unpinnedFramesOfPinnedSupplementaries)
  {
    unpinnedFramesOfPinnedSupplementaries2 = [(_UICollectionLayoutAuxillaryItemSolver *)v7 unpinnedFramesOfPinnedSupplementaries];
    v10 = [unpinnedFramesOfPinnedSupplementaries2 count];

    if (v10 <= index)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:523 description:{@"Invalid parameter not satisfying: %@", @"index < sectionAuxillarySolution.unpinnedFramesOfPinnedSupplementaries.count"}];

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
      unpinnedFramesOfPinnedSupplementaries3 = [(_UICollectionLayoutAuxillaryItemSolver *)v7 unpinnedFramesOfPinnedSupplementaries];
      v12 = [unpinnedFramesOfPinnedSupplementaries3 objectAtIndexedSubscript:index];

      goto LABEL_9;
    }

LABEL_13:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:524 description:{@"Invalid parameter not satisfying: %@", @"self.sectionGeometryTranslator"}];

    goto LABEL_7;
  }

  v12 = [(_UICollectionLayoutSectionListSolver *)self sectionSupplementaryFrameForIndex:index];
LABEL_9:

  return v12;
}

- (int64_t)sectionSupplementaryKindIndexForEnrollmentIdentifier:(id)identifier
{
  if (identifier)
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:530 description:{@"Invalid parameter not satisfying: %@", @"enrollmentIdentifier"}];

    if (self)
    {
      goto LABEL_3;
    }
  }

  sectionSupplementaryEnroller = 0;
LABEL_4:

  return [(_UICollectionLayoutSupplementaryEnroller *)sectionSupplementaryEnroller kindIndexForEnrollmentIdentifier:identifier];
}

- (id)sectionSupplementaryFrameWithKind:(id)kind index:(int64_t)index
{
  if ([kind length])
  {
    if ((index & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:537 description:{@"Invalid parameter not satisfying: %@", @"index>=0"}];

    if (!self)
    {
      goto LABEL_11;
    }

    goto LABEL_4;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:536 description:{@"Invalid parameter not satisfying: %@", @"kind.length"}];

  if (index < 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (!self)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (self->_sectionGeometryTranslator)
  {
LABEL_5:
    sectionAuxillarySolution = self->_sectionAuxillarySolution;
    goto LABEL_6;
  }

LABEL_11:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:538 description:{@"Invalid parameter not satisfying: %@", @"self.sectionGeometryTranslator"}];

  if (self)
  {
    goto LABEL_5;
  }

  sectionAuxillarySolution = 0;
LABEL_6:
  v9 = [(_UICollectionLayoutAuxillaryItemSolver *)&sectionAuxillarySolution->super.isa supplementaryFrameWithKind:kind index:index];

  return v9;
}

- (_NSRange)preferredSizeGroupingRangeForItemAtIndex:(int64_t)index
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = 0;
  result.length = v4;
  result.location = v3;
  return result;
}

- (void)_solveSectionAuxiliariesWithSectionContentSize:(double)size
{
  v6 = [_UICollectionLayoutSectionGeometryTranslator alloc];
  v7 = *MEMORY[0x1E695F060];
  v8 = *(MEMORY[0x1E695F060] + 8);
  containerLayoutAxis = [self containerLayoutAxis];
  v10 = *(self + 41);
  layoutSection = [self layoutSection];
  [layoutSection contentInsets];
  v15 = [(_UICollectionLayoutSectionGeometryTranslator *)v6 initWithPrimaryContentSize:containerLayoutAxis sectionAuxiliarySolutionSize:v10 layoutAxis:a2 layoutRTL:size sectionInsets:v7 contentFrameSupplementaryOffset:v8, v11, v12, v13, v14, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  v16 = *(self + 80);
  *(self + 80) = v15;

  v17 = objc_alloc_init(_UICollectionLayoutSupplementaryEnroller);
  v18 = *(self + 72);
  *(self + 72) = v17;

  v19 = [[_UICollectionLayoutAuxillaryItemSolver alloc] initWithAuxillaryHost:self];
  v20 = *(self + 64);
  *(self + 64) = v19;

  v21 = *(self + 64);
  if (v21 && (v21[18] != 0.0 || v21[20] != 0.0 || v21[19] != 0.0 || v21[21] != 0.0))
  {
    v22 = v21[14];
    v23 = v21[15];
    v24 = [_UICollectionLayoutSectionGeometryTranslator alloc];
    containerLayoutAxis2 = [self containerLayoutAxis];
    v26 = *(self + 41);
    layoutSection2 = [self layoutSection];
    [layoutSection2 contentInsets];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = *(self + 64);
    v36 = v35;
    if (v35)
    {
      v38 = v35[16];
      v37 = v35[17];
    }

    else
    {
      v37 = 0.0;
      v38 = 0.0;
    }

    v39 = [(_UICollectionLayoutSectionGeometryTranslator *)v24 initWithPrimaryContentSize:containerLayoutAxis2 sectionAuxiliarySolutionSize:v26 layoutAxis:a2 layoutRTL:size sectionInsets:v22 contentFrameSupplementaryOffset:v23, v28, v30, v32, v34, v38, v37];
    v40 = *(self + 80);
    *(self + 80) = v39;
  }
}

- (uint64_t)_regionIndexForFrameIndex:(uint64_t)index startRegionIndex:(unint64_t)regionIndex endRegionIndex:(uint64_t)endRegionIndex
{
  if (endRegionIndex < 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = 0;
  while (v3 != endRegionIndex)
  {
    v4 = (endRegionIndex + v3) / 2;
    v5 = (*(index + 8) + 152 * v4);
    v6 = *v5;
    v7 = v5[1];
    if (regionIndex >= v6 && regionIndex - v6 < v7)
    {
      return (endRegionIndex + v3) / 2;
    }

    if (regionIndex >= v6)
    {
      v3 = v4 + 1;
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      if (v4 >= endRegionIndex)
      {
        return v11;
      }
    }

    else
    {
      endRegionIndex = v4 - 1;
      if (v3 >= v4)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  v9 = (*(index + 8) + 152 * v3);
  v10 = regionIndex - *v9 < v9[1] && regionIndex >= *v9;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if (v10)
  {
    return v3;
  }

  return v11;
}

- (void)setOrthogonalOffset:(CGPoint)offset
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:1061 description:@"Orthogonal support is unsupported for List solver."];
}

- (double)_dimensionForRootGroupAlongAxis:(unint64_t)axis
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:1066 description:@"Orthogonal support is unsupported for List solver."];

  return 0.0;
}

@end