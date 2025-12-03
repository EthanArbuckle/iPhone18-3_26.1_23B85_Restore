@interface _UICollectionCompositionalLayoutSolver
+ (CGFloat)_globalFrameForSolutionFrame:(CGFloat)frame solutionGlobalFrame:(CGFloat)globalFrame contentInsetsOffset:(double)offset container:(uint64_t)container;
+ (CGFloat)_queryResultForItemAtIndexPath:(void *)path dataSourceSnapshot:(void *)snapshot solutionBookmarks:(void *)bookmarks container:(void *)container globalFrame:;
+ (CGFloat)_queryResultForSectionSupplementaryViewOfKind:(void *)kind withIndexPath:(void *)path solutionBookmarks:(void *)bookmarks container:(void *)container globalFrame:;
+ (double)_globalFrameForBackgroundDecoration:(uint64_t)decoration forSectionWithBookmark:(id *)bookmark;
+ (id)traitsRequiringInvalidationForChanges;
+ (void)_globalFrameForSectionAuxiliaryFrame:(CGFloat)frame bookmark:(CGFloat)bookmark container:(uint64_t)container;
+ (void)_globalFrameForSolutionFrame:(CGFloat)frame bookmark:(CGFloat)bookmark container:(uint64_t)container;
- (BOOL)elementShouldAppearAboveOrthogonalScrollingContainer:(uint64_t)container;
- (BOOL)hasPinnedSupplementaryItems;
- (BOOL)shouldInvalidateForBoundsChange:(double)change requiresContainerUpdate:(double)update;
- (CGFloat)_frameByExtendingGlobalSectionFrame:(uint64_t)frame toOverlapPinnedSupplementaryInSection:(CGFloat)section onEdge:(CGFloat)edge visibleBounds:(CGFloat)bounds extensionBehavior:(CGFloat)behavior didExtend:(double)extend;
- (CGRect)_dynamicReferenceBounds;
- (CGRect)auxillaryHostPinningRect;
- (CGSize)auxillaryHostContentSize;
- (_BYTE)extendedAttributesQueryIncludingOrthogonalScrollingRegions:(double)regions;
- (_DWORD)_createAndCacheLayoutAttributesForSupplementaryItemAtIndexPath:(void *)path elementKind:(uint64_t)kind frame:(CGFloat)frame queryResult:(CGFloat)result;
- (_UICollectionCompositionalLayoutSolverResolveResult)_resolveOptionallyQueryingForSectionDefinitions:(int)definitions retainPreferredSizing:;
- (_UICollectionCompositionalLayoutSolverResolveResult)resolveForContainerChange:(uint64_t)change;
- (_UICollectionCompositionalLayoutSolverResolveResult)resolveForMarginsChange:(uint64_t)change;
- (_UICollectionCompositionalLayoutSolverResolveResult)resolveForUpdatingSectionDefinitionsWithContainer:(id *)container;
- (_UICollectionCompositionalLayoutSolverResolveResult)resolveSolutionForUpdate:(void *)update container:(int)container ignoreEmptyUpdate:;
- (_UICollectionLayoutUpdateContainerOffsetResult)updatePinnedSectionSupplementaryItemsForVisibleBounds:(CGFloat)bounds;
- (double)_containerByApplyingInsetsFromEnvironment:(double)environment toSize:(double)size onAxis:;
- (double)_firstBookmarkOffset;
- (double)_globalFrameForSolution:(double)solution offset:;
- (double)_validatedRoundedFrame:(uint64_t)frame forElementOfCategory:(uint64_t)category atIndexPath:(CGFloat)path elementKind:(CGFloat)kind;
- (double)contentSize;
- (double)orthogonalFrameWithOffsetElidedForItemWithLayoutAttributes:(CGFloat)attributes frame:(CGFloat)frame;
- (double)preUpdateFrameForDecorationViewOfKind:(void *)kind withInitialIndexPath:;
- (double)preUpdateFrameForItemAtInitialIndexPath:(uint64_t)path;
- (double)preUpdateFrameForSupplementaryViewOfKind:(void *)kind withInitialIndexPath:;
- (double)unpinnedFrameOfBoundarySupplementaryElementOfKind:(void *)kind withIndexPath:;
- (id)_attributesQueryInfosForQueryRect:(double)rect;
- (id)_cachedDecorationAttributesForElementKind:(uint64_t)kind indexPath:;
- (id)_cachedSupplementaryAttributesForElementKind:(uint64_t)kind indexPath:;
- (id)_createAndCacheLayoutAttributesForDecorationItemAtIndexPath:(void *)path elementKind:(uint64_t)kind frame:(double)frame additionalContentInset:(double)inset zIndex:(double)index;
- (id)_createAndCacheLayoutAttributesForItemAtIndexPath:(uint64_t)path frame:(CGFloat)frame zIndex:(CGFloat)index;
- (id)_existingSectionDefinitionForSectionIndex:(uint64_t)index;
- (id)_fetchUpdatedSectionDefinitionsFromSectionProvider;
- (id)_leadingSwipeActionsConfigurationForIndexPath:(uint64_t)path;
- (id)_snapshotBookmarks:(void *)bookmarks;
- (id)_trailingSwipeActionsConfigurationForIndexPath:(uint64_t)path;
- (id)auxillaryHostAuxillaryItems;
- (id)auxillaryHostContainer;
- (id)auxillaryHostPreferredSizes;
- (id)auxillaryHostSupplementaryEnroller;
- (id)auxillaryHostTraitCollection;
- (id)initWithContainer:(void *)container traitCollection:(void *)collection layoutAxis:(void *)axis dataSourceSnapshot:(uint64_t)snapshot options:(void *)options sectionProvider:;
- (id)itemsWithoutPreferredSizesInGroupsWithItemsAtIndexPaths:(uint64_t)paths;
- (id)layoutAttributesForDecorationViewOfKind:(void *)kind withIndexPath:;
- (id)layoutAttributesForElementsInRect:(CGFloat)rect;
- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(double)path withTargetPosition:(double)position;
- (id)layoutAttributesForItemAtIndexPath:(uint64_t)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(void *)kind withIndexPath:;
- (id)mutatedVisibleItemsForElementsForVisibleBounds:(double)bounds;
- (id)resolveForInvalidatedPreferredAttributes:(double)attributes scrollOffset:(double)offset visibleRect:(double)rect;
- (id)resolveForScrollViewLayoutAdjustmentsChange:(id *)change;
- (id)resolveForUpdatedGlobalSupplementaries:(void *)supplementaries;
- (id)restorableState;
- (id)sectionDescriptorForSectionIndex:(uint64_t)index;
- (uint64_t)_anchorForAuxiliaryElementOfKind:(uint64_t)kind;
- (uint64_t)_invalidateAllAttributes;
- (uint64_t)_sectionHasBackgroundDecorationView:(uint64_t)view;
- (uint64_t)_supportsSwipeActionsForIndexPath:(uint64_t)result;
- (uint64_t)_wantsSwipeActions;
- (uint64_t)elementShouldAppearBelowOrthogonalScrollingContainer:(uint64_t)container;
- (uint64_t)enumerateSectionDefinitionsWithBlock:(uint64_t)result;
- (uint64_t)orthogonalScrollingSectionDecorationShouldScrollWithContentForIndexPath:(uint64_t)path elementKind:;
- (uint64_t)orthogonalScrollingSectionSupplementaryShouldScrollWithContentForIndexPath:(uint64_t)path elementKind:;
- (uint64_t)shouldEmplaceElementOutsideSectionContainer:(uint64_t)container;
- (uint64_t)updatePreferredSizeIfNeededForPreferredLayoutAttributes:(void *)attributes withOriginalAttributes:(uint64_t)originalAttributes debugger:;
- (uint64_t)updateVisibleBoundsForDynamicAnimator:(CGFloat)animator previousVisibleBounds:(double)bounds;
- (unint64_t)auxillaryHostLayoutAxis;
- (void)_configureLayoutForSections:(uint64_t)sections;
- (void)_didEndSwiping;
- (void)_generateInsetsEnvironmentsForLayoutSection:(double *)section withParentInsetEnvironment:(void *)environment sectionEnv:(void *)env supplementaryEnv:;
- (void)_globalSupplementaryFrameOffset;
- (void)_injectPreferredSizingDataIntoToLayoutAttributes:(void *)attributes atIndexPath:;
- (void)_invalidateAttributes:(uint64_t)attributes;
- (void)_layoutAttributesForElementsInRect:(CGFloat)rect handler:(CGFloat)handler;
- (void)_recomputeSolutionBookmarksAndContentSize;
- (void)_restoreStateFromBookmarkSnapshots:(void *)snapshots bookmarks:(uint64_t)bookmarks update:;
- (void)_solveRetainingPreferredSizes:(id *)sizes;
- (void)_solveWithSectionLayouts:(void *)layouts preferredSizesDict:(void *)dict dataSourceSnapshot:(uint64_t)snapshot update:;
- (void)_updateBookmarkOffsetsForGlobalSupplementariesIfNeeded;
- (void)_updateGeometryTranslator;
- (void)_updateSectionIndexer:(void *)indexer frame:(uint64_t)frame solution:(double)solution section:(double)section;
- (void)_updateStyleForSwipeActionsConfiguration:(void *)configuration indexPath:;
- (void)_willBeginSwiping;
- (void)dealloc;
- (void)enumeratePinnedSupplementaryItems:(uint64_t)items;
- (void)finalizeCollectionViewUpdates;
- (void)invalidateCachedDecorationAttributesForElementKind:(uint64_t)kind atIndexPaths:;
- (void)invalidateCachedSupplementaryAttributesForElementKind:(uint64_t)kind atIndexPaths:;
- (void)prepareForCollectionViewUpdates;
- (void)prepareForPreferredAttributesQueryForView:(_DWORD *)view withLayoutAttributes:;
- (void)setDynamicsConfigurationHandler:(uint64_t)handler;
- (void)setOrthogonalOffset:(double)offset forSection:(double)section;
- (void)setSolutionBookmarks:(uint64_t)bookmarks;
@end

@implementation _UICollectionCompositionalLayoutSolver

+ (id)traitsRequiringInvalidationForChanges
{
  objc_opt_self();
  if (_MergedGlobals_205 != -1)
  {
    dispatch_once(&_MergedGlobals_205, &__block_literal_global_123_0);
  }

  v0 = qword_1ED4932F0;

  return v0;
}

- (uint64_t)_wantsSwipeActions
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(self + 184);
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = *v10;
    do
    {
      v4 = 0;
      do
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v9 + 1) + 8 * v4);
        if (v5)
        {
          v6 = *(v5 + 16);
        }

        else
        {
          v6 = 0;
        }

        if ([v6 _wantsSwipeActions])
        {
          v2 = 1;
          goto LABEL_16;
        }

        ++v4;
      }

      while (v2 != v4);
      v7 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v2 = v7;
    }

    while (v7);
  }

LABEL_16:

  return v2;
}

- (void)finalizeCollectionViewUpdates
{
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = [*(self + 208) count];
    v4 = *(self + 232);
    if (v4 <= 0x64)
    {
      v4 = 100;
    }

    if (v2 > v4)
    {
      v5 = v2;
      if (v2 / v4 >= 2)
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("UICollectionLayout", &finalizeCollectionViewUpdates___s_category);
        if (*CategoryCachedImpl)
        {
          v9 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = *(self + 232);
            v11 = 134218496;
            selfCopy = self;
            v13 = 2048;
            v14 = v10;
            v15 = 2048;
            v16 = v5;
            _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "finalizeCollectionViewUpdates: solver == %p; CompLayoutSolver clearing caches for large update becase item cache size changed from %lu to %lu during update.", &v11, 0x20u);
          }
        }

        [(_UICollectionCompositionalLayoutSolver *)self _invalidateAllAttributes];
      }
    }

    *(self + 232) = 0;
    objc_setProperty_nonatomic_copy(self, v3, 0, 240);
    v7 = *(self + 248);
    *(self + 248) = 0;

    v8 = *(self + 256);
    *(self + 256) = 0;
  }
}

- (void)prepareForCollectionViewUpdates
{
  if (self)
  {
    v2 = *(self + 208);
    *(self + 232) = [v2 count];

    objc_setProperty_nonatomic_copy(self, v3, *(self + 184), 240);
    objc_storeStrong((self + 248), *(self + 48));
    v4 = *(self + 72);

    objc_storeStrong((self + 256), v4);
  }
}

- (id)_fetchUpdatedSectionDefinitionsFromSectionProvider
{
  if (!self || !self->_sectionProvider)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2211 description:{@"Invalid parameter not satisfying: %@", @"self.sectionProvider != NULL"}];
  }

  if (!self->_container)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2212 description:{@"Invalid parameter not satisfying: %@", @"_container != nil"}];
  }

  numberOfSections = [(_UIDataSourceSnapshotter *)self->_dataSourceSnapshot numberOfSections];
  v4 = self->_container;
  if (dyld_program_sdk_at_least())
  {
    container = self->_container;
    if (container)
    {
      container = container->_insetsEnvironment;
    }

    v6 = container;
    [(_UICollectionLayoutContainer *)self->_container contentSize];
    v9 = [(_UIContentInsetsEnvironment *)v6 layoutContainerForContainerSize:v7 layoutAxis:v8];

    v4 = v9;
  }

  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:numberOfSections];
  options = self->_options;
  if (options)
  {
    v12 = options->_traitCollectionSourceProvider;
    v13 = v12;
    if (v12)
    {
      v14 = (*(v12 + 2))(v12);
      v16 = v15;
      goto LABEL_15;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = 0;
  v16 = 0;
LABEL_15:

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0;
  v41 = v16;
  v42 = v14;
  if (v14)
  {
    if (!v16)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2237 description:{@"Compositional layout internal error: trait collection source has a view (%@) but no invalidation action", v14}];
    }

    _UIBeginTrackingTraitUsage(v14, 0, __dst);
    v66 = __dst[8];
    v67 = __dst[9];
    v68 = __dst[10];
    v62 = __dst[4];
    v63 = __dst[5];
    v64 = __dst[6];
    v65 = __dst[7];
    v58 = __dst[0];
    v59 = __dst[1];
    v60 = __dst[2];
    v61 = __dst[3];
    v54 = *(&__dst[19] + 8);
    v55 = *(&__dst[20] + 8);
    v56 = *(&__dst[21] + 8);
    v50 = *(&__dst[15] + 8);
    v51 = *(&__dst[16] + 8);
    v19 = *&__dst[11];
    v57 = *(&__dst[22] + 1);
    v52 = *(&__dst[17] + 8);
    v53 = *(&__dst[18] + 8);
    v46 = *(&__dst[11] + 8);
    v47 = *(&__dst[12] + 8);
    v48 = *(&__dst[13] + 8);
    v49 = *(&__dst[14] + 8);
  }

  else
  {
    v19 = 0;
  }

  if (numberOfSections >= 1)
  {
    for (i = 0; i != numberOfSections; ++i)
    {
      if (self)
      {
        sectionProvider = self->_sectionProvider;
      }

      else
      {
        sectionProvider = 0;
      }

      v22 = sectionProvider[2](sectionProvider, v4, i);
      _emptySection = [v22 copy];

      if (!_emptySection)
      {
        if ([(_UIDataSourceSnapshotter *)self->_dataSourceSnapshot numberOfItemsInSection:i])
        {
          currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler4 handleFailureInMethod:a2 object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2246 description:@"Invalid section definition. Please specify a valid section definition when content is to be rendered for a section. This is a client error."];
        }

        _emptySection = [off_1E70ECB38 _emptySection];
      }

      [v10 addObject:_emptySection];
    }
  }

  if (v14)
  {
    TraitCollectionTSD = GetTraitCollectionTSD();
    memcpy(__dst, TraitCollectionTSD + 1, sizeof(__dst));
    v26 = v67;
    TraitCollectionTSD[9] = v66;
    TraitCollectionTSD[10] = v26;
    TraitCollectionTSD[11] = v68;
    v27 = v63;
    TraitCollectionTSD[5] = v62;
    TraitCollectionTSD[6] = v27;
    v28 = v65;
    TraitCollectionTSD[7] = v64;
    TraitCollectionTSD[8] = v28;
    v29 = v59;
    TraitCollectionTSD[1] = v58;
    TraitCollectionTSD[2] = v29;
    v30 = v61;
    TraitCollectionTSD[3] = v60;
    TraitCollectionTSD[4] = v30;
    v31 = v55;
    *(TraitCollectionTSD + 328) = v54;
    *(TraitCollectionTSD + 344) = v31;
    *(TraitCollectionTSD + 360) = v56;
    v32 = v51;
    *(TraitCollectionTSD + 264) = v50;
    *(TraitCollectionTSD + 280) = v32;
    v33 = v53;
    *(TraitCollectionTSD + 296) = v52;
    *(TraitCollectionTSD + 312) = v33;
    v34 = v47;
    *(TraitCollectionTSD + 200) = v46;
    *(TraitCollectionTSD + 216) = v34;
    v35 = v49;
    *(TraitCollectionTSD + 232) = v48;
    *(TraitCollectionTSD + 24) = v19;
    *(TraitCollectionTSD + 47) = v57;
    v36 = *&__dst[11];
    v37 = *&__dst[11] & ~v19;
    *(TraitCollectionTSD + 248) = v35;
    *&v43 = v37;
    *(&v43 + 1) = v19 & ~v36;
    v44 = v36 & v19;
    [(UIView *)v42 _recordTraitUsage:&v43 trackedStateDiff:[(_UICollectionCompositionalLayoutSolver *)self methodForSelector:sel__fetchUpdatedSectionDefinitionsFromSectionProvider] insideMethod:v41 withInvalidationAction:?];
    _UITraitUsageTrackingResultDestroy(__dst);
  }

  return v10;
}

- (id)auxillaryHostAuxillaryItems
{
  if (self)
  {
    self = self->_globalSupplementaryItems;
  }

  return self;
}

- (void)_updateGeometryTranslator
{
  v2 = *(self + 272);
  if (v2)
  {
    v3 = v2[14];
    v4 = v2[15];
    v5 = v2[16];
    v6 = v2[17];
  }

  else
  {
    v3 = 0.0;
    v4 = 0.0;
    v6 = 0.0;
    v5 = 0.0;
  }

  v7 = [[_UICollectionLayoutSectionGeometryTranslator alloc] initWithPrimaryContentSize:*(self + 17) sectionAuxiliarySolutionSize:*(self + 304) layoutAxis:*(self + 312) layoutRTL:v3 sectionInsets:v4 contentFrameSupplementaryOffset:0.0, 0.0, 0.0, 0.0, v5, v6];
  v8 = *(self + 200);
  *(self + 200) = v7;
}

- (double)contentSize
{
  if (!self)
  {
    return 0.0;
  }

  v1 = *(self + 200);
  if (v1)
  {
    return *(v1 + 120);
  }

  else
  {
    return *(self + 304);
  }
}

- (BOOL)hasPinnedSupplementaryItems
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 160) count];
    v3 = *(v1 + 272);
    if (v3)
    {
      v3 = v3[5];
    }

    v4 = v3;
    v5 = v2 | [v4 count];

    return v5 != 0;
  }

  return result;
}

- (uint64_t)_invalidateAllAttributes
{
  [*(self + 208) removeAllObjects];
  [*(self + 216) removeAllObjects];
  v2 = *(self + 224);

  return [v2 removeAllObjects];
}

- (void)_recomputeSolutionBookmarksAndContentSize
{
  v41 = *(self + 80);
  v50 = *(self + 64);
  v2 = [*(self + 184) count];
  selfCopy = self;
  v3 = *(self + 48);
  if (v3)
  {
    v3 = v3[1];
  }

  v45 = v3;
  v4 = MEMORY[0x1E695F058];
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = objc_alloc_init(_UIRTree);
  if (v2)
  {
    v5 = 0;
    v6 = 0;
    y = v4[1];
    x = *v4;
    v8 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);
    v39 = *(MEMORY[0x1E695F060] + 8);
    v40 = *MEMORY[0x1E695F060];
    v42 = fabs(v41);
    v46 = *MEMORY[0x1E695EFF8];
    v47 = v7;
    do
    {
      v9 = [*(selfCopy + 184) objectAtIndexedSubscript:{v6, *&v39, *&v40}];
      v10 = v9;
      if (v9)
      {
        v11 = *(v9 + 8);
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
      layoutSection = [v12 layoutSection];
      _isEmptySection = [layoutSection _isEmptySection];
      [layoutSection _preBoundaryPadding];
      v16 = v15;
      [layoutSection _postBoundaryPadding];
      v18 = v17;
      if (v42 >= 2.22044605e-16 && ((v5 ^ 1) & 1) == 0 && (_isEmptySection & 1) == 0)
      {
        v8 = v8 + _UISetPointValueForAxis(v50, v46, v47, v41);
        v7 = v7 + v19;
      }

      if (fabs(v16) >= 2.22044605e-16)
      {
        v8 = v8 + _UISetPointValueForAxis(v50, v46, v47, v16);
        v7 = v7 + v20;
      }

      v54 = 0;
      v55[0] = 0;
      [(_UICollectionCompositionalLayoutSolver *)selfCopy _generateInsetsEnvironmentsForLayoutSection:layoutSection withParentInsetEnvironment:v45 sectionEnv:v55 supplementaryEnv:&v54];
      v21 = v55[0];
      v22 = v54;
      v23 = [(_UICollectionCompositionalLayoutSolver *)selfCopy _globalFrameForSolution:v12 offset:v8];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v30 = [_UICollectionSectionSolutionBookmark alloc];
      if (v10)
      {
        v31 = v10[13];
      }

      else
      {
        v31 = 0;
      }

      v32 = [(_UICollectionSectionSolutionBookmark *)&v30->super.isa initWithSolution:v12 globalFrame:v21 globalPinningFrame:v22 insetEnvironment:layoutSection supplementaryInsetEnvironment:v31 section:v23 preferredSizes:v25, v27, v29, v23, v25, v27, v29];
      [v44 addObject:v32];
      v56.origin.y = y;
      v56.origin.x = x;
      v56.size.width = width;
      v56.size.height = height;
      v58.origin.x = v23;
      v58.origin.y = v25;
      v58.size.width = v27;
      v58.size.height = v29;
      v57 = CGRectUnion(v56, v58);
      y = v57.origin.y;
      x = v57.origin.x;
      width = v57.size.width;
      height = v57.size.height;
      [(_UICollectionCompositionalLayoutSolver *)selfCopy _updateSectionIndexer:v43 frame:v12 solution:v6 section:v23, v25, v27, v29];

      v33 = _UISizeValueForAxis(v50, v27, v29);
      v34 = _UIPointValueForAxis(v50, v8, v7);
      v8 = _UISetPointValueForAxis(v50, v8, v7, v33 + v34);
      v7 = v35;
      if (fabs(v18) >= 2.22044605e-16)
      {
        if (v2 == 1)
        {
          width = width + _UISetSizeValueForAxis(v50, v40, v39, v18);
          height = height + v36;
        }

        else
        {
          v8 = v8 + _UISetPointValueForAxis(v50, v46, v47, v18);
          v7 = v7 + v37;
        }
      }

      v5 |= _isEmptySection ^ 1;

      ++v6;
      --v2;
    }

    while (v2);
  }

  *(selfCopy + 304) = width;
  *(selfCopy + 312) = height;
  [(_UICollectionCompositionalLayoutSolver *)selfCopy setSolutionBookmarks:v44];
  v38 = *(selfCopy + 192);
  *(selfCopy + 192) = v43;
}

- (void)_updateBookmarkOffsetsForGlobalSupplementariesIfNeeded
{
  v54 = *MEMORY[0x1E69E9840];
  [(_UICollectionCompositionalLayoutSolver *)self _updateGeometryTranslator];
  selfCopy = self;
  v2 = *(self + 272);
  if (v2 && (v2[18] != 0.0 || v2[20] != 0.0 || v2[19] != 0.0 || v2[21] != 0.0))
  {
    v44 = objc_alloc_init(_UIRTree);
    v3 = *(self + 272);
    if (v3)
    {
      v5 = *(v3 + 144);
      v4 = *(v3 + 152);
    }

    else
    {
      v4 = 0.0;
      v5 = 0.0;
    }

    v6 = *(self + 64);
    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = *(selfCopy + 184);
    v7 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (!v7)
    {
LABEL_28:

      [(_UICollectionCompositionalLayoutSolver *)selfCopy setSolutionBookmarks:v43];
      v38 = *(selfCopy + 192);
      *(selfCopy + 192) = v44;

      return;
    }

    v8 = v7;
    if (v6)
    {
      if (v6 != 1)
      {
        if (v6 == 2)
        {
          v4 = 0.0;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v4 = 0.0;
    }

    v5 = 0.0;
LABEL_15:
    v9 = 0;
    v40 = *(MEMORY[0x1E695EFF8] + 8) - v5;
    v41 = *MEMORY[0x1E695EFF8] - v4;
    v42 = *v50;
    do
    {
      v10 = 0;
      do
      {
        if (*v50 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v49 + 1) + 8 * v10);
        if (v11)
        {
          v12 = *(v11 + 24);
          v13 = *(v11 + 32);
          v14 = *(v11 + 40);
          v15 = *(v11 + 48);
          v47 = v40 + v13;
          v48 = v41 + v12;
          v55.origin.x = v12;
          v55.origin.y = v13;
          v55.size.width = v14;
          v55.size.height = v15;
          Width = CGRectGetWidth(v55);
          v56.origin.x = v12;
          v56.origin.y = v13;
          v56.size.width = v14;
          v56.size.height = v15;
          Height = CGRectGetHeight(v56);
          v17 = *(v11 + 56);
          v18 = *(v11 + 64);
          v19 = *(v11 + 72);
          v20 = *(v11 + 80);
          v21 = v41 + v17;
          v57.origin.x = v17;
          v57.origin.y = v18;
          v57.size.width = v19;
          v57.size.height = v20;
          v22 = CGRectGetWidth(v57);
          v58.origin.x = v17;
          v58.origin.y = v18;
          v58.size.width = v19;
          v58.size.height = v20;
          v23 = CGRectGetHeight(v58);
          v24 = [_UICollectionSectionSolutionBookmark alloc];
          v25 = *(v11 + 88);
          v26 = *(v11 + 96);
          v27 = *(v11 + 8);
          v28 = *(v11 + 104);
          v29 = *(v11 + 16);
          v30 = v27;
          v31 = [(_UICollectionSectionSolutionBookmark *)&v24->super.isa initWithSolution:v30 globalFrame:v25 globalPinningFrame:v26 insetEnvironment:v29 supplementaryInsetEnvironment:v28 section:v48 preferredSizes:v47, Width, Height, v21, v40 + v18, v22, v23];

          [v43 addObject:v31];
          if (v31)
          {
            v32 = *(v31 + 7);
            v33 = *(v31 + 8);
            v34 = *(v31 + 9);
            v35 = *(v31 + 10);
          }

          else
          {
            v33 = 0.0;
            v34 = 0.0;
            v35 = 0.0;
            v32 = 0.0;
          }

          v36 = *(v11 + 8);
        }

        else
        {
          [v43 addObject:0];
          v31 = 0;
          v36 = 0;
          v32 = 0.0;
          v35 = 0.0;
          v34 = 0.0;
          v33 = 0.0;
        }

        [(_UICollectionCompositionalLayoutSolver *)selfCopy _updateSectionIndexer:v44 frame:v36 solution:v9++ section:v32, v33, v34, v35];

        ++v10;
      }

      while (v8 != v10);
      v37 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
      v8 = v37;
    }

    while (v37);
    goto LABEL_28;
  }
}

- (id)restorableState
{
  if (self && (v2 = [_UICollectionCompositionalLayoutSolverRestorableState alloc]) != 0)
  {
    v8.receiver = v2;
    v8.super_class = _UICollectionCompositionalLayoutSolverRestorableState;
    v3 = objc_msgSendSuper2(&v8, sel_init);
    if (v3)
    {
      v4 = *(self + 184);
      v5 = [_UICollectionCompositionalLayoutSolver _snapshotBookmarks:v4];
      v6 = *(v3 + 1);
      *(v3 + 1) = v5;

      objc_storeStrong(v3 + 2, *(self + 88));
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dealloc
{
  if (os_variant_has_internal_diagnostics())
  {
    if (*&self->_solverFlags)
    {
      v3 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v3, OS_LOG_TYPE_FAULT, "UICollectionView internal inconsistency: solver unexpectedly deallocating whilst solution bookmarks are locked. Please file a bug against UICollectionView with reproduction steps.", buf, 2u);
      }
    }
  }

  else if (*&self->_solverFlags)
  {
    v4 = *(__UILogGetCategoryCachedImpl("Assert", &dealloc___s_category_1) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "UICollectionView internal inconsistency: solver unexpectedly deallocating whilst solution bookmarks are locked. Please file a bug against UICollectionView with reproduction steps.", buf, 2u);
    }
  }

  v5.receiver = self;
  v5.super_class = _UICollectionCompositionalLayoutSolver;
  [(_UICollectionCompositionalLayoutSolver *)&v5 dealloc];
}

- (unint64_t)auxillaryHostLayoutAxis
{
  if (self)
  {
    return *(self + 64);
  }

  return self;
}

- (id)auxillaryHostContainer
{
  if (self)
  {
    self = self->_container;
  }

  return self;
}

- (CGSize)auxillaryHostContentSize
{
  if (!self)
  {
    width = 0.0;
    if (dyld_program_sdk_at_least())
    {
      v6 = 0;
      container = 0;
      height = 0.0;
      goto LABEL_7;
    }

    height = 0.0;
LABEL_13:
    v11 = width;
    v12 = height;
    goto LABEL_14;
  }

  width = self->_actualContentSize.width;
  height = self->_actualContentSize.height;
  if (!dyld_program_sdk_at_least())
  {
    goto LABEL_13;
  }

  layoutAxis = self->_layoutAxis;
  if (layoutAxis == 1)
  {
    v6 = 2;
  }

  else
  {
    v6 = layoutAxis == 2;
  }

  container = self->_container;
LABEL_7:
  [(_UICollectionLayoutContainer *)container effectiveContentSize];
  v10 = _UISizeValueForAxis(v6, v8, v9);

  v11 = _UISetSizeValueForAxis(v6, width, height, v10);
LABEL_14:
  result.height = v12;
  result.width = v11;
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
    self = self->_globalSupplementaryPreferredSizes;
  }

  return self;
}

- (id)auxillaryHostTraitCollection
{
  if (self)
  {
    self = self->_traitCollection;
  }

  return self;
}

- (void)_globalSupplementaryFrameOffset
{
  [*(self + 48) effectiveContentInsets];
  if (v3 != 0.0 || v2 != 0.0 || v5 != 0.0 || v4 != 0.0)
  {
    v6 = *(self + 64);
    if (v6 == 1)
    {
      v7 = 2;
    }

    else
    {
      v7 = v6 == 2;
    }

    v8 = _UILeadingOffsetForInsetsAlongAxis(v7, v2, v3);
    _UISetPointValueForAxis(v7, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v8);
  }
}

- (double)_firstBookmarkOffset
{
  if (![*(self + 184) count])
  {
    return *MEMORY[0x1E695EFF8];
  }

  firstObject = [*(self + 184) firstObject];
  if (firstObject)
  {
    v3 = firstObject[3];
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (id)initWithContainer:(void *)container traitCollection:(void *)collection layoutAxis:(void *)axis dataSourceSnapshot:(uint64_t)snapshot options:(void *)options sectionProvider:
{
  if (!self)
  {
    return 0;
  }

  v32.receiver = self;
  v32.super_class = _UICollectionCompositionalLayoutSolver;
  v13 = objc_msgSendSuper2(&v32, sel_init);
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(v13 + 14, snapshot);
    objc_storeStrong(v14 + 6, a2);
    objc_storeStrong(v14 + 7, container);
    v14[8] = collection;
    objc_storeStrong(v14 + 9, axis);
    if (snapshot)
    {
      v14[10] = *(snapshot + 16);
      *(v14 + 17) = *(snapshot + 8);
      v15 = *(snapshot + 24);
    }

    else
    {
      v15 = 0;
      v14[10] = 0;
      *(v14 + 17) = 0;
    }

    objc_storeStrong(v14 + 15, v15);
    if (snapshot)
    {
      v16 = *(snapshot + 32);
    }

    else
    {
      v16 = 0;
    }

    objc_storeStrong(v14 + 16, v16);
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = v14[26];
    v14[26] = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20 = v14[27];
    v14[27] = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v22 = v14[28];
    v14[28] = v21;

    if (snapshot)
    {
      objc_storeStrong(v14 + 17, *(snapshot + 40));
      v23 = *(snapshot + 9);
    }

    else
    {
      v31 = v14[17];
      v14[17] = 0;

      v23 = 0;
    }

    *(v14 + 16) = v23 & 1;
    if (container)
    {
      [container displayScale];
      v14[18] = v24;
      if (snapshot)
      {
LABEL_11:
        v25 = *(snapshot + 48);
LABEL_12:
        objc_storeStrong(v14 + 33, v25);
        v26 = [options copy];
        v27 = v14[19];
        v14[19] = v26;

        v14[37] = 3;
        goto LABEL_13;
      }
    }

    else
    {
      mainScreen = [objc_opt_self() mainScreen];
      [mainScreen scale];
      v14[18] = v30;

      if (snapshot)
      {
        goto LABEL_11;
      }
    }

    v25 = 0;
    goto LABEL_12;
  }

LABEL_13:
  [(_UICollectionCompositionalLayoutSolver *)v14 _solveRetainingPreferredSizes:?];
  return v14;
}

- (void)_solveRetainingPreferredSizes:(id *)sizes
{
  if (sizes)
  {
    numberOfSections = [sizes[9] numberOfSections];
    if (numberOfSections == [sizes[23] count])
    {
      v5 = a2;
    }

    else
    {
      v5 = 0;
    }

    _fetchUpdatedSectionDefinitionsFromSectionProvider = [sizes _fetchUpdatedSectionDefinitionsFromSectionProvider];
    if ([_fetchUpdatedSectionDefinitionsFromSectionProvider count] != numberOfSections)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__solveRetainingPreferredSizes_ object:sizes file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2275 description:{@"Compositional layout internal error: The number of NSCollectionLayoutSections returned (%ld) does not match the number of sections in the data source snapshot (%ld)", objc_msgSend(_fetchUpdatedSectionDefinitionsFromSectionProvider, "count"), numberOfSections}];
    }

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __72___UICollectionCompositionalLayoutSolver__solveRetainingPreferredSizes___block_invoke;
    v10[3] = &unk_1E70FAB68;
    v12 = v5;
    v10[4] = sizes;
    v11 = v7;
    v8 = v7;
    [_fetchUpdatedSectionDefinitionsFromSectionProvider enumerateObjectsUsingBlock:v10];
    [(_UICollectionCompositionalLayoutSolver *)sizes _configureLayoutForSections:_fetchUpdatedSectionDefinitionsFromSectionProvider];
    [(_UICollectionCompositionalLayoutSolver *)sizes _solveWithSectionLayouts:_fetchUpdatedSectionDefinitionsFromSectionProvider preferredSizesDict:v8 dataSourceSnapshot:sizes[9] update:0];
  }
}

- (_UICollectionLayoutUpdateContainerOffsetResult)updatePinnedSectionSupplementaryItemsForVisibleBounds:(CGFloat)bounds
{
  selfCopy = self;
  if (self)
  {
    v10 = objc_alloc_init(_UICollectionLayoutUpdateContainerOffsetResult);
    isa = selfCopy[4].super.isa;
    v12 = selfCopy[10].super.isa;
    v13 = [(NSMutableDictionary *)selfCopy[11]._invalidatedSupplementaryIndexesDict mutableCopy];
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 0;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __96___UICollectionCompositionalLayoutSolver_updatePinnedSectionSupplementaryItemsForVisibleBounds___block_invoke;
    v48[3] = &unk_1E70FA848;
    v14 = v13;
    v49 = v14;
    v15 = v12;
    v50 = v15;
    v51 = selfCopy;
    v55 = a2;
    boundsCopy = bounds;
    v57 = a4;
    v58 = a5;
    v53 = &v60;
    v54 = isa;
    v59 = sel_updatePinnedSectionSupplementaryItemsForVisibleBounds_;
    v16 = v10;
    v52 = v16;
    [(objc_class *)v15 enumerateIndexesUsingBlock:v48];
    [(_UICollectionCompositionalLayoutSolver *)selfCopy setSolutionBookmarks:v14];
    if (*(v61 + 24) == 1)
    {
      v17 = objc_alloc_init(_UIRTree);
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __96___UICollectionCompositionalLayoutSolver_updatePinnedSectionSupplementaryItemsForVisibleBounds___block_invoke_3;
      v46[3] = &unk_1E70FA870;
      v46[4] = selfCopy;
      v18 = v17;
      v47 = v18;
      [v14 enumerateObjectsUsingBlock:v46];
      v19 = selfCopy[12].super.isa;
      selfCopy[12].super.isa = v18;
      v20 = v18;
    }

    v21 = selfCopy[17].super.isa;
    v22 = v21;
    if (v21)
    {
      v23 = *(v21 + 5);
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    v25 = [v24 count];

    if (v25)
    {
      v26 = selfCopy[17].super.isa;
      v27 = v26;
      if (v26)
      {
        v28 = *(v26 + 5);
      }

      else
      {
        v28 = 0;
      }

      v29 = v28;
      v30 = [v29 count];

      if (v30)
      {
        [(_UICollectionCompositionalLayoutSolver *)selfCopy _globalSupplementaryFrameOffset];
        v32 = v31;
        v34 = v33;
      }

      else
      {
        v32 = *MEMORY[0x1E695EFF8];
        v34 = *(MEMORY[0x1E695EFF8] + 8);
      }

      v35 = selfCopy[17].super.isa;
      [(_UICollectionLayoutAuxillaryItemSolver *)v35 resolveSupplementaryItemsForVisibleBounds:a2, bounds, a4, a5];

      v36 = selfCopy[17].super.isa;
      v37 = v36;
      if (v36)
      {
        v38 = *(v36 + 5);
      }

      else
      {
        v38 = 0;
      }

      v39 = v38;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __96___UICollectionCompositionalLayoutSolver_updatePinnedSectionSupplementaryItemsForVisibleBounds___block_invoke_4;
      v42[3] = &unk_1E70FA898;
      v42[4] = selfCopy;
      v43 = v16;
      v44 = v32;
      v45 = v34;
      [v39 enumerateIndexesUsingBlock:v42];
    }

    v40 = v52;
    selfCopy = v16;

    _Block_object_dispose(&v60, 8);
  }

  return selfCopy;
}

- (CGFloat)_frameByExtendingGlobalSectionFrame:(uint64_t)frame toOverlapPinnedSupplementaryInSection:(CGFloat)section onEdge:(CGFloat)edge visibleBounds:(CGFloat)bounds extensionBehavior:(CGFloat)behavior didExtend:(double)extend
{
  if (!self)
  {
    return 0.0;
  }

  v18 = *(self + 64);
  if ((v18 - 1) <= 1)
  {
    if (a2)
    {
      v26 = *(a2 + 24);
      v27 = *(a2 + 32);
      v28 = *(a2 + 40);
      v29 = *(a2 + 48);
    }

    else
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v26 = 0;
    }

    if (CGRectIntersectsRect(*&v26, *&extend))
    {
      v30 = *(self + 64);
      if ((v30 - 1) > 1)
      {
        v35 = MEMORY[0x1E695E0F0];
      }

      else
      {
        if (a2)
        {
          v31 = *(a2 + 8);
        }

        else
        {
          v31 = 0;
        }

        v32 = v31;
        pinnedSupplementaryIndexes = [v32 pinnedSupplementaryIndexes];
        v34 = [pinnedSupplementaryIndexes count];
        v35 = MEMORY[0x1E695E0F0];
        if (v34)
        {
          v71 = 0;
          v72 = &v71;
          v73 = 0x3032000000;
          v74 = __Block_byref_object_copy__28;
          v75 = __Block_byref_object_dispose__28;
          v76 = 0;
          v64[0] = MEMORY[0x1E69E9820];
          v64[1] = 3221225472;
          v64[2] = __97___UICollectionCompositionalLayoutSolver__unpinnedFramesOfSupplementariesPinnedToEdge_ofSection___block_invoke;
          v64[3] = &unk_1E70FA8C0;
          v65 = v32;
          v66 = pinnedSupplementaryIndexes;
          v67 = a2;
          v69 = v30;
          frameCopy = frame;
          v68 = &v71;
          [v66 enumerateIndexesUsingBlock:v64];
          v36 = v72[5];
          if (!v36)
          {
            v36 = v35;
          }

          v35 = v36;

          _Block_object_dispose(&v71, 8);
        }
      }

      if ([v35 count] != 1)
      {
        goto LABEL_33;
      }

      v37 = [v35 objectAtIndexedSubscript:0];
      edgeCopy = edge;
      behaviorCopy = behavior;
      boundsCopy = bounds;
      if (v37)
      {
        v38 = v37[10];
        v39 = v37[11];
        v40 = v37[12];
        v41 = v37[13];
      }

      else
      {
        v39 = 0.0;
        v40 = 0.0;
        v41 = 0.0;
        v38 = 0.0;
      }

      [(_UICollectionCompositionalLayoutSolver *)v38 _globalFrameForSectionAuxiliaryFrame:v39 bookmark:v40 container:v41, _UICollectionCompositionalLayoutSolver, a2, *(self + 48)];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      extendCopy = extend;
      v50 = v49;
      v51 = _UIPointValueForAxis(v18, extendCopy, a9);
      v52 = _UISizeValueForAxis(v18, a10, a11);
      v53 = _UIPointValueForAxis(v18, v43, v45);
      v54 = _UISizeValueForAxis(v18, v47, v50);
      if (v53 > v51 || vabdd_f64(v53, v51) <= 0.001)
      {
        v55 = v53 + v54;
        if (v55 < v51 + v52 || vabdd_f64(v55, v51 + v52) <= 0.001)
        {
          if (v18 == 2)
          {
            v77.origin.x = v43;
            v77.origin.y = v45;
            v77.size.width = v47;
            v77.size.height = v50;
            MaxY = CGRectGetMaxY(v77);
            v78.origin.x = v43;
            v78.origin.y = v45;
            v78.size.width = v47;
            v78.size.height = v50;
            MinY = CGRectGetMinY(v78);
            v79.origin.x = section;
            v79.origin.y = edgeCopy;
            v79.size.width = boundsCopy;
            v79.size.height = behaviorCopy;
            if (MaxY > CGRectGetMaxY(v79))
            {
              v80.origin.x = section;
              v80.origin.y = edgeCopy;
              v80.size.width = boundsCopy;
              v80.size.height = behaviorCopy;
              CGRectGetMinY(v80);
LABEL_31:
              *a13 = 1;
              goto LABEL_32;
            }

            v85.origin.x = section;
            v85.origin.y = edgeCopy;
            v85.size.width = boundsCopy;
            v85.size.height = behaviorCopy;
            if (MinY < CGRectGetMinY(v85))
            {
              v86.origin.x = section;
              v86.origin.y = edgeCopy;
              v86.size.width = boundsCopy;
              v86.size.height = behaviorCopy;
              CGRectGetMaxY(v86);
              goto LABEL_31;
            }
          }

          else
          {
            v81.origin.x = v43;
            v81.origin.y = v45;
            v81.size.width = v47;
            v81.size.height = v50;
            MaxX = CGRectGetMaxX(v81);
            v82.origin.x = v43;
            v82.origin.y = v45;
            v82.size.width = v47;
            v82.size.height = v50;
            MinX = CGRectGetMinX(v82);
            v83.origin.x = section;
            v83.origin.y = edgeCopy;
            v83.size.width = boundsCopy;
            v83.size.height = behaviorCopy;
            if (MaxX > CGRectGetMaxX(v83))
            {
              v84.origin.x = section;
              v84.origin.y = edgeCopy;
              v84.size.width = boundsCopy;
              v84.size.height = behaviorCopy;
              CGRectGetMinX(v84);
              goto LABEL_31;
            }

            v87.origin.x = section;
            v87.origin.y = edgeCopy;
            v87.size.width = boundsCopy;
            v87.size.height = behaviorCopy;
            if (MinX < CGRectGetMinX(v87))
            {
              v88.origin.x = section;
              v88.origin.y = edgeCopy;
              v88.size.width = boundsCopy;
              v88.size.height = behaviorCopy;
              CGRectGetMaxX(v88);
              section = MinX;
              goto LABEL_31;
            }
          }
        }
      }

LABEL_32:

LABEL_33:
    }
  }

  return section;
}

- (void)invalidateCachedSupplementaryAttributesForElementKind:(uint64_t)kind atIndexPaths:
{
  if (self)
  {
    v4 = [*(self + 216) objectForKeyedSubscript:a2];
    if (v4)
    {
      v5 = v4;
      [v4 removeObjectsForKeys:kind];
      v4 = v5;
    }
  }
}

- (void)setSolutionBookmarks:(uint64_t)bookmarks
{
  if (os_variant_has_internal_diagnostics())
  {
    if (*(bookmarks + 8))
    {
      v4 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "UICollectionView internal inconsistency: attempted to update solution bookmarks that are locked. Please file a bug against UICollectionView with reproduction steps.", buf, 2u);
      }
    }
  }

  else if (*(bookmarks + 8))
  {
    v5 = *(__UILogGetCategoryCachedImpl("Assert", &setSolutionBookmarks____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "UICollectionView internal inconsistency: attempted to update solution bookmarks that are locked. Please file a bug against UICollectionView with reproduction steps.", v6, 2u);
    }
  }

  objc_storeStrong((bookmarks + 184), a2);
}

- (void)_updateSectionIndexer:(void *)indexer frame:(uint64_t)frame solution:(double)solution section:(double)section
{
  if (result)
  {
    v14 = result[8];
    if (v14 == 1)
    {
      v15 = 2;
    }

    else
    {
      v15 = v14 == 2;
    }

    [indexer contentFrameIncludingAuxiliaries];
    v18 = fmin(v16, v17);
    if (v18 > 0.0)
    {
      v19 = v17;
    }

    else
    {
      v19 = a8;
    }

    if (v18 > 0.0)
    {
      v20 = v16;
    }

    else
    {
      v20 = a7;
    }

    v21 = _UISetSizeValueForAxis(v15, v20, v19, 1.79769313e308);
    v23 = v22;
    v24 = _UISetPointValueForAxis(v15, solution, section, 0.0);

    return [(_UIRTree *)a2 insertFrame:frame forIndex:v24, v25, v21, v23];
  }

  return result;
}

- (id)_cachedSupplementaryAttributesForElementKind:(uint64_t)kind indexPath:
{
  if (self)
  {
    if (a2)
    {
      if (kind)
      {
LABEL_4:
        v6 = [*(self + 216) objectForKeyedSubscript:a2];
        v7 = v6;
        if (v6)
        {
          v8 = [v6 objectForKeyedSubscript:kind];
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_8;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__cachedSupplementaryAttributesForElementKind_indexPath_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2669 description:{@"Invalid parameter not satisfying: %@", @"elementKind"}];

      if (kind)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__cachedSupplementaryAttributesForElementKind_indexPath_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2670 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];

    goto LABEL_4;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (void)_invalidateAttributes:(uint64_t)attributes
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (attributes && a2)
  {
    v4 = a2[72];
    if (v4)
    {
      indexPath = [a2 indexPath];
      v11[0] = indexPath;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [*(attributes + 208) removeObjectsForKeys:v7];
    }

    else
    {
      indexPath = [a2 representedElementKind];
      indexPath2 = [a2 indexPath];
      v7 = indexPath2;
      if ((v4 & 2) != 0)
      {
        v9 = indexPath2;
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
        [(_UICollectionCompositionalLayoutSolver *)attributes invalidateCachedDecorationAttributesForElementKind:indexPath atIndexPaths:v8];
      }

      else
      {
        v10 = indexPath2;
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
        [(_UICollectionCompositionalLayoutSolver *)attributes invalidateCachedSupplementaryAttributesForElementKind:indexPath atIndexPaths:v8];
      }
    }
  }
}

- (_DWORD)_createAndCacheLayoutAttributesForSupplementaryItemAtIndexPath:(void *)path elementKind:(uint64_t)kind frame:(CGFloat)frame queryResult:(CGFloat)result
{
  if (!self)
  {
    v24 = 0;
    goto LABEL_36;
  }

  if (!a2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__createAndCacheLayoutAttributesForSupplementaryItemAtIndexPath_elementKind_frame_queryResult_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2591 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
  }

  if ([path length])
  {
    if (kind)
    {
      goto LABEL_6;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__createAndCacheLayoutAttributesForSupplementaryItemAtIndexPath_elementKind_frame_queryResult_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2592 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];

    if (kind)
    {
LABEL_6:
      if (*(kind + 24) == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = 0;
      }

      else
      {
        v16 = *(kind + 24);
      }

      goto LABEL_9;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:sel__createAndCacheLayoutAttributesForSupplementaryItemAtIndexPath_elementKind_frame_queryResult_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2593 description:{@"Invalid parameter not satisfying: %@", @"queryResult != nil"}];

  v16 = 0;
LABEL_9:
  if ([a2 length] >= 2)
  {
    v17 = -[_UICollectionCompositionalLayoutSolver _sectionHasBackgroundDecorationView:](self, [a2 section]);
    v18 = v16 <= 1 ? 1 : v16;
    if (v17)
    {
      v16 = v18;
    }
  }

  if (kind)
  {
    v19 = *(kind + 64);
    v20 = *(kind + 8);
    v21 = 1.0;
    if (_UIFloatingBarEnabled() && (v20 & 1) != 0)
    {
      +[_UIScrollPocketContainerInteraction _pinnedElementFadeDistance];
      if (v22 > 0.0)
      {
        v23 = *(kind + 72) / v22;
        if (v23 > 1.0)
        {
          v23 = 1.0;
        }

        v21 = 1.0 - v23 + v23 * 0.0;
      }

      v20 = 1;
    }
  }

  else
  {
    _UIFloatingBarEnabled();
    v20 = 0;
    v19 = 0;
    v21 = 1.0;
  }

  v24 = [*(self + 120) layoutAttributesForSupplementaryViewOfKind:path withIndexPath:a2];
  [v24 setFrame:{-[_UICollectionCompositionalLayoutSolver _validatedRoundedFrame:forElementOfCategory:atIndexPath:elementKind:](self, 1, a2, path, frame, result, a7, a8)}];
  [v24 setAlpha:v21];
  [v24 setZIndex:v16];
  [(UICollectionViewLayoutAttributes *)v24 _setPinningAlignment:v19];
  if (v24)
  {
    if (v20)
    {
      v25 = 0x8000;
    }

    else
    {
      v25 = 0;
    }

    v24[72] = v24[72] & 0xFFFF7FFF | v25;
  }

  [(_UICollectionCompositionalLayoutSolver *)self _injectPreferredSizingDataIntoToLayoutAttributes:v24 atIndexPath:a2];
  v26 = *(self + 40);
  if (v26)
  {
    (*(v26 + 16))(v26, v24);
  }

  if (path)
  {
    if (a2)
    {
      goto LABEL_32;
    }

LABEL_42:
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:sel__setCachedSupplementaryAttributesForElementKind_indexPath_attributes_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2682 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];

    if (v24)
    {
      goto LABEL_33;
    }

LABEL_43:
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler5 handleFailureInMethod:sel__setCachedSupplementaryAttributesForElementKind_indexPath_attributes_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2683 description:{@"Invalid parameter not satisfying: %@", @"attributes"}];

    goto LABEL_33;
  }

  currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler6 handleFailureInMethod:sel__setCachedSupplementaryAttributesForElementKind_indexPath_attributes_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2681 description:{@"Invalid parameter not satisfying: %@", @"elementKind"}];

  if (!a2)
  {
    goto LABEL_42;
  }

LABEL_32:
  if (!v24)
  {
    goto LABEL_43;
  }

LABEL_33:
  v27 = [*(self + 216) objectForKeyedSubscript:path];
  if (!v27)
  {
    v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [*(self + 216) setObject:v27 forKeyedSubscript:path];
  }

  [v27 setObject:v24 forKeyedSubscript:a2];

LABEL_36:

  return v24;
}

+ (void)_globalFrameForSectionAuxiliaryFrame:(CGFloat)frame bookmark:(CGFloat)bookmark container:(uint64_t)container
{
  objc_opt_self();
  if (a6)
  {
    v14 = a6[3];
    v13 = a6[4];
    v15 = a6[5];
    v16 = a6[6];
  }

  else
  {
    v13 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v14 = 0.0;
  }

  sectionAuxiliaryContentInsetsOffset = [(_UICollectionSectionSolutionBookmark *)a6 sectionAuxiliaryContentInsetsOffset];
  [(_UICollectionCompositionalLayoutSolver *)self _globalFrameForSolutionFrame:a2 solutionGlobalFrame:frame contentInsetsOffset:bookmark container:v14, _UICollectionCompositionalLayoutSolver, a7, v13, v15, v16, sectionAuxiliaryContentInsetsOffset];
}

- (uint64_t)updateVisibleBoundsForDynamicAnimator:(CGFloat)animator previousVisibleBounds:(double)bounds
{
  v128 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v9 = result;
    if (*(result + 104))
    {
      v18 = *(result + 168);
      v90 = v9;
      v19 = *(v9 + 176);
      v20 = [[_UICollectionLayoutContainer alloc] initWithContentSize:bounds contentInsets:a5, 0.0, 0.0, 0.0, 0.0];
      v21 = [_UICollectionLayoutEnvironment alloc];
      v22 = *(v90 + 72);
      v23 = *(v90 + 56);
      v82 = v20;
      v83 = [(_UICollectionLayoutEnvironment *)v21 initWithContainer:v20 traitCollection:v23 dataSourceSnapshot:v22];

      [v19 setCurrentVisibleBounds:{a2, animator, bounds, a5}];
      v81 = v19;
      v24 = v19;
      v25 = v90;
      [v24 setPreviousVisibleBounds:{a6, a7, a8, a9}];
      v113 = 0;
      v114 = &v113;
      v115 = 0x3032000000;
      v116 = __Block_byref_object_copy__28;
      v117 = __Block_byref_object_dispose__28;
      v118 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = __102___UICollectionCompositionalLayoutSolver_updateVisibleBoundsForDynamicAnimator_previousVisibleBounds___block_invoke;
      v110[3] = &unk_1E70FA8E8;
      v112 = &v113;
      v26 = v18;
      v111 = v26;
      [(_UICollectionCompositionalLayoutSolver *)v90 _layoutAttributesForElementsInRect:v110 handler:a2, animator, bounds, a5];
      v85 = v26;
      if (v26)
      {
        v27 = MEMORY[0x1E695DFD8];
        allKeys = [v26[42] allKeys];
        v29 = [v27 setWithArray:allKeys];
      }

      else
      {
        v29 = 0;
      }

      v84 = [v29 mutableCopy];

      [v84 minusSet:v114[5]];
      v107[0] = MEMORY[0x1E69E9820];
      v107[1] = 3221225472;
      v107[2] = __102___UICollectionCompositionalLayoutSolver_updateVisibleBoundsForDynamicAnimator_previousVisibleBounds___block_invoke_2;
      v107[3] = &unk_1E70FA910;
      v30 = v85;
      v108 = v30;
      v109 = v90;
      [v84 enumerateObjectsUsingBlock:v107];
      v88 = v30;
      if (v85)
      {
        v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        allValues = [v30[42] allValues];
        v33 = [allValues countByEnumeratingWithState:&v119 objects:v127 count:16];
        if (v33)
        {
          v34 = *v120;
          do
          {
            v35 = 0;
            do
            {
              if (*v120 != v34)
              {
                objc_enumerationMutation(allValues);
              }

              v36 = *(*(&v119 + 1) + 8 * v35);
              if (v36)
              {
                v37 = *(v36 + 48);
              }

              else
              {
                v37 = 0;
              }

              [v31 addObject:v37];
              ++v35;
            }

            while (v33 != v35);
            v38 = [allValues countByEnumeratingWithState:&v119 objects:v127 count:16];
            v33 = v38;
          }

          while (v38);
        }
      }

      else
      {
        v31 = 0;
      }

      v39 = *(v90 + 176);
      [v39 setDynamicItems:v31];

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      if (v85)
      {
        allValues2 = [v88[42] allValues];
      }

      else
      {
        allValues2 = 0;
      }

      v41 = [allValues2 countByEnumeratingWithState:&v103 objects:v126 count:16];
      if (v41)
      {
        v42 = *v104;
        do
        {
          v43 = 0;
          do
          {
            if (*v104 != v42)
            {
              objc_enumerationMutation(allValues2);
            }

            v44 = *(*(&v103 + 1) + 8 * v43);
            v45 = *(v90 + 176);
            childBehaviors = [v44 childBehaviors];
            if (v44)
            {
              v47 = v44[6];
            }

            else
            {
              v47 = 0;
            }

            v48 = v47;
            [v45 _setBehaviors:childBehaviors forItem:v48];

            ++v43;
          }

          while (v41 != v43);
          v49 = [allValues2 countByEnumeratingWithState:&v103 objects:v126 count:16];
          v41 = v49;
        }

        while (v49);
      }

      v50 = *(v90 + 104);
      v51 = *(v90 + 176);
      v50[2](v50, v51, v83);

      v52 = *(v90 + 176);
      _dirtyItems = [v52 _dirtyItems];

      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      obj = _dirtyItems;
      v54 = [obj countByEnumeratingWithState:&v99 objects:v125 count:16];
      if (v54)
      {
        v87 = *v100;
        do
        {
          v89 = v54;
          for (i = 0; i != v89; ++i)
          {
            if (*v100 != v87)
            {
              objc_enumerationMutation(obj);
            }

            v56 = *(*(&v99 + 1) + 8 * i);
            if (v56)
            {
              v57 = *(v56 + 24);
              v58 = *(v56 + 16);
            }

            else
            {
              v57 = 0;
              v58 = 0;
            }

            v59 = v58;
            v60 = [_UICollectionViewItemKey collectionItemKeyForLayoutAttributes:v59];

            v61 = [(_UICollectionCompositionalLayoutDynamicAnimator *)v88 behaviorForIdentifier:v60];
            childBehaviors2 = [v61 childBehaviors];
            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            v63 = childBehaviors2;
            v64 = [v63 countByEnumeratingWithState:&v95 objects:v124 count:16];
            if (v64)
            {
              v65 = *v96;
              do
              {
                for (j = 0; j != v64; ++j)
                {
                  if (*v96 != v65)
                  {
                    objc_enumerationMutation(v63);
                  }

                  [v61 removeChildBehavior:*(*(&v95 + 1) + 8 * j)];
                }

                v64 = [v63 countByEnumeratingWithState:&v95 objects:v124 count:16];
              }

              while (v64);
            }

            v67 = *(v90 + 176);
            v68 = [v67 behaviorsForItem:v56];

            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            v69 = v68;
            v70 = [v69 countByEnumeratingWithState:&v91 objects:v123 count:16];
            if (v70)
            {
              v71 = *v92;
              do
              {
                for (k = 0; k != v70; ++k)
                {
                  if (*v92 != v71)
                  {
                    objc_enumerationMutation(v69);
                  }

                  [v61 addChildBehavior:*(*(&v91 + 1) + 8 * k)];
                }

                v70 = [v69 countByEnumeratingWithState:&v91 objects:v123 count:16];
              }

              while (v70);
            }

            v25 = v90;
          }

          v54 = [obj countByEnumeratingWithState:&v99 objects:v125 count:16];
        }

        while (v54);
      }

      v73 = *(v25 + 176);
      [v73 _reset];

      if (v85)
      {
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        objectEnumerator = [v88[42] objectEnumerator];
        v75 = [objectEnumerator countByEnumeratingWithState:&v119 objects:v127 count:16];
        if (v75)
        {
          v76 = *v120;
          do
          {
            v77 = 0;
            do
            {
              if (*v120 != v76)
              {
                objc_enumerationMutation(objectEnumerator);
              }

              v78 = *(*(&v119 + 1) + 8 * v77);
              if (v78)
              {
                v79 = *(v78 + 48);
              }

              else
              {
                v79 = 0;
              }

              [v88 updateItemFromCurrentState:v79];
              ++v77;
            }

            while (v75 != v77);
            v80 = [objectEnumerator countByEnumeratingWithState:&v119 objects:v127 count:16];
            v75 = v80;
          }

          while (v80);
        }
      }

      _Block_object_dispose(&v113, 8);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)_layoutAttributesForElementsInRect:(CGFloat)rect handler:(CGFloat)handler
{
  v86 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__layoutAttributesForElementsInRect_handler_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2719 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v12 = *(self + 48);
  objc_opt_self();
  [v12 effectiveContentInsets];
  v13 = *MEMORY[0x1E695EFF8];
  v14 = *(MEMORY[0x1E695EFF8] + 8);
  v16 = v15 + *MEMORY[0x1E695EFF8];
  obj = v17 + v14;
  [*(self + 48) effectiveContentInsets];
  if (v19 == 0.0 && v18 == 0.0 && v21 == 0.0 && v20 == 0.0)
  {
    Width = a5;
    handlerCopy = handler;
    rectCopy = rect;
  }

  else
  {
    v25 = v14 - v18;
    rectCopy = rect + v13 - v19;
    handlerCopy = handler + v25;
    v87.origin.x = rect;
    v87.origin.y = handler;
    v87.size.width = a5;
    v87.size.height = Height;
    Width = CGRectGetWidth(v87);
    v88.origin.x = rect;
    v88.origin.y = handler;
    v88.size.width = a5;
    v88.size.height = Height;
    Height = CGRectGetHeight(v88);
  }

  _UINormalizeRectForPositiveOrigin(rectCopy, handlerCopy, Width, Height);
  v58 = v27;
  v59 = v26;
  v56 = v28;
  v57 = v29;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v30 = *(self + 184);
  v54 = *(self + 8);
  *(self + 8) = v54 | 1;
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __85___UICollectionCompositionalLayoutSolver__layoutAttributesForElementsInRect_handler___block_invoke;
  v67[3] = &unk_1E70FABB8;
  v72 = v16;
  v73 = obj;
  v74 = v59;
  v75 = v56;
  v76 = v58;
  v77 = v57;
  v55 = v30;
  v68 = v55;
  selfCopy = self;
  v70 = a2;
  v71 = &v79;
  v78 = sel__layoutAttributesForElementsInRect_handler_;
  if ([*(self + 264) count])
  {
    [(_UICollectionCompositionalLayoutSolver *)self _globalSupplementaryFrameOffset];
    [(_UICollectionLayoutAuxillaryItemSolver *)*(self + 272) queryFramesIntersectingRect:v59 frameOffset:v56, v58, v57, v31, v32];
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    obja = v64 = 0u;
    v33 = [obja countByEnumeratingWithState:&v63 objects:v85 count:16];
    if (v33)
    {
      v34 = *v64;
      do
      {
        v35 = 0;
        do
        {
          if (*v64 != v34)
          {
            objc_enumerationMutation(obja);
          }

          v36 = *(*(&v63 + 1) + 8 * v35);
          if (v36)
          {
            v37 = *(v36 + 2);
          }

          else
          {
            v37 = 0;
          }

          v38 = [MEMORY[0x1E696AC88] indexPathWithIndex:v37];
          if (v36)
          {
            v39 = *(v36 + 5);
          }

          else
          {
            v39 = 0;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:sel__layoutAttributesForElementsInRect_handler_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2856 description:@"Fatal: frame result.item is incorrect class."];
          }

          elementKind = [v39 elementKind];
          v41 = [(_UICollectionCompositionalLayoutSolver *)self _cachedSupplementaryAttributesForElementKind:elementKind indexPath:v38];
          if (!v41)
          {
            if (v36)
            {
              v42 = v36[10];
              v43 = v36[11];
              v44 = v36[12];
              v45 = v36[13];
            }

            else
            {
              v43 = 0.0;
              v44 = 0.0;
              v45 = 0.0;
              v42 = 0.0;
            }

            v41 = [(_UICollectionCompositionalLayoutSolver *)self _createAndCacheLayoutAttributesForSupplementaryItemAtIndexPath:v38 elementKind:elementKind frame:v36 queryResult:v42, v43, v44, v45];
          }

          (*(a2 + 16))(a2, v41, 0, v36, v80 + 3);
          v46 = *(v80 + 24);

          if (v46)
          {

            goto LABEL_37;
          }

          ++v35;
        }

        while (v33 != v35);
        v48 = [obja countByEnumeratingWithState:&v63 objects:v85 count:16];
        v33 = v48;
      }

      while (v48);
    }
  }

  v49 = *(self + 192);
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __85___UICollectionCompositionalLayoutSolver__layoutAttributesForElementsInRect_handler___block_invoke_2;
  v62[3] = &unk_1E70FABE0;
  v62[4] = &v79;
  v62[5] = v67;
  if (v49)
  {
    v84 = 0;
    v50 = *(v49 + 8);
    v52.f64[0] = v58;
    v51.f64[0] = v59;
    v51.f64[1] = v56;
    v52.f64[1] = v57;
    v83[0] = vaddq_f64(v51, vminnmq_f64(v52, 0));
    v83[1] = vabsq_f64(v52);
    _UIRTreeContainerNode<unsigned long>::enumerateElementsIntersecting(v50, v83, &v84, v62);
  }

  *(self + 8) = *(self + 8) & 0xFE | v54 & 1;
LABEL_37:

  _Block_object_dispose(&v79, 8);
}

- (void)invalidateCachedDecorationAttributesForElementKind:(uint64_t)kind atIndexPaths:
{
  if (self)
  {
    v4 = [*(self + 224) objectForKeyedSubscript:a2];
    if (v4)
    {
      v5 = v4;
      [v4 removeObjectsForKeys:kind];
      v4 = v5;
    }
  }
}

- (id)layoutAttributesForElementsInRect:(CGFloat)rect
{
  if (self)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __76___UICollectionCompositionalLayoutSolver_layoutAttributesForElementsInRect___block_invoke;
    v13[3] = &unk_1E70FA938;
    v11 = v10;
    v14 = v11;
    [(_UICollectionCompositionalLayoutSolver *)self _layoutAttributesForElementsInRect:v13 handler:a2, rect, a4, a5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (double)preUpdateFrameForItemAtInitialIndexPath:(uint64_t)path
{
  if (!path)
  {
    v18 = 0u;
    v19 = 0u;
    return *&v18;
  }

  v4 = *(path + 256);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  v6 = *(path + 248);
  if (!v6)
  {

    goto LABEL_7;
  }

  v7 = *(path + 240);

  if (!v7)
  {
LABEL_7:
    v16 = *(MEMORY[0x1E695F050] + 16);
    v18 = *MEMORY[0x1E695F050];
    v19 = v16;
    return *&v18;
  }

  v8 = *(MEMORY[0x1E695F050] + 16);
  v18 = *MEMORY[0x1E695F050];
  v19 = v8;
  v9 = *(path + 240);
  v12 = path + 248;
  v10 = *(path + 248);
  v11 = *(v12 + 8);
  v13 = v9;
  v14 = v11;
  v15 = [_UICollectionCompositionalLayoutSolver _queryResultForItemAtIndexPath:a2 dataSourceSnapshot:v14 solutionBookmarks:v13 container:v10 globalFrame:&v18];

  return *&v18;
}

+ (CGFloat)_queryResultForItemAtIndexPath:(void *)path dataSourceSnapshot:(void *)snapshot solutionBookmarks:(void *)bookmarks container:(void *)container globalFrame:
{
  objc_opt_self();
  if (a2)
  {
    if (-[CGFloat length](a2, "length") < 2 || [path globalIndexForIndexPath:a2] == 0x7FFFFFFFFFFFFFFFLL)
    {
      a2 = 0;
    }

    else
    {
      v11 = [snapshot objectAtIndexedSubscript:{-[CGFloat section](a2, "section")}];
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
      a2 = [v14 frameForIndex:{-[CGFloat item](a2, "item")}];

      if (a2)
      {
        [(_UICollectionCompositionalLayoutSolver *)a2[10] _globalFrameForSolutionFrame:a2[12] bookmark:a2[13] container:_UICollectionCompositionalLayoutSolver, v12, bookmarks];
        *container = v15;
        container[1] = v16;
        container[2] = v17;
        container[3] = v18;
      }
    }
  }

  return a2;
}

- (id)layoutAttributesForItemAtIndexPath:(uint64_t)path
{
  v2 = 0;
  if (path && a2)
  {
    v5 = [*(path + 208) objectForKeyedSubscript:a2];
    if (v5)
    {
      v2 = v5;
    }

    else
    {
      v6 = *(MEMORY[0x1E695F050] + 16);
      v15 = *MEMORY[0x1E695F050];
      v16 = v6;
      v7 = *(path + 72);
      v8 = *(path + 48);
      v9 = *(path + 184);
      v10 = v7;
      v11 = [_UICollectionCompositionalLayoutSolver _queryResultForItemAtIndexPath:a2 dataSourceSnapshot:v10 solutionBookmarks:v9 container:v8 globalFrame:&v15];

      if (v11)
      {
        if (v11[3] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = 0;
        }

        else
        {
          v12 = v11[3];
        }

        v13 = [(_UICollectionCompositionalLayoutSolver *)path _createAndCacheLayoutAttributesForItemAtIndexPath:a2 frame:v12 zIndex:*&v15, *(&v15 + 1), *&v16, *(&v16 + 1)];
      }

      else
      {
        v13 = 0;
      }

      v2 = v13;
    }
  }

  return v2;
}

- (id)_createAndCacheLayoutAttributesForItemAtIndexPath:(uint64_t)path frame:(CGFloat)frame zIndex:(CGFloat)index
{
  if (self)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__createAndCacheLayoutAttributesForItemAtIndexPath_frame_zIndex_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2567 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
    }

    v14 = [*(self + 208) objectForKeyedSubscript:a2];

    if (v14)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:sel__createAndCacheLayoutAttributesForItemAtIndexPath_frame_zIndex_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2568 description:{@"Invalid parameter not satisfying: %@", @"self.cachedItemAttributes[indexPath] == nil"}];
    }

    v15 = -[_UICollectionCompositionalLayoutSolver _sectionHasBackgroundDecorationView:](self, [a2 section]);
    v16 = [*(self + 120) layoutAttributesForCellWithIndexPath:a2];
    [v16 setFrame:{-[_UICollectionCompositionalLayoutSolver _validatedRoundedFrame:forElementOfCategory:atIndexPath:elementKind:](self, 0, a2, 0, frame, index, a6, a7)}];
    [v16 setZIndex:path];
    if (v15)
    {
      [v16 setZIndex:{objc_msgSend(v16, "zIndex") + 1}];
    }

    [(_UICollectionCompositionalLayoutSolver *)self _injectPreferredSizingDataIntoToLayoutAttributes:v16 atIndexPath:a2];
    v17 = *(self + 24);
    if (v17)
    {
      (*(v17 + 16))(v17, v16);
    }

    [*(self + 208) setObject:v16 forKeyedSubscript:a2];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (void)_globalFrameForSolutionFrame:(CGFloat)frame bookmark:(CGFloat)bookmark container:(uint64_t)container
{
  objc_opt_self();
  if (a6)
  {
    v14 = a6[3];
    v13 = a6[4];
    v15 = a6[5];
    v16 = a6[6];
  }

  else
  {
    v13 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v14 = 0.0;
  }

  contentInsetsOffset = [(_UICollectionSectionSolutionBookmark *)a6 contentInsetsOffset];
  [(_UICollectionCompositionalLayoutSolver *)self _globalFrameForSolutionFrame:a2 solutionGlobalFrame:frame contentInsetsOffset:bookmark container:v14, _UICollectionCompositionalLayoutSolver, a7, v13, v15, v16, contentInsetsOffset];
}

- (double)preUpdateFrameForSupplementaryViewOfKind:(void *)kind withInitialIndexPath:
{
  if (!self)
  {
    v33 = 0u;
    v34 = 0u;
    return *&v33;
  }

  v6 = *(self + 256);
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  v8 = *(self + 248);
  if (!v8)
  {

    goto LABEL_12;
  }

  v9 = *(self + 240);

  if (!v9)
  {
LABEL_12:
    v24 = *(MEMORY[0x1E695F050] + 16);
    v33 = *MEMORY[0x1E695F050];
    v34 = v24;
    return *&v33;
  }

  if ([kind length] == 1 && (-[_UICollectionLayoutAuxillaryItemSolver elementKinds](*(self + 272)), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "containsObject:", a2), v10, v11))
  {
    v12 = *(self + 272);
    v13 = -[_UICollectionLayoutAuxillaryItemSolver supplementaryFrameWithKind:index:](v12, a2, [kind indexAtPosition:0]);

    if (v13)
    {
      supplementaryItem = [(_UICollectionLayoutFramesQueryResult *)v13 supplementaryItem];
      if (!supplementaryItem)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel_preUpdateFrameForSupplementaryViewOfKind_withInitialIndexPath_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:715 description:@"Failed to resolve the global supplementary definition."];
      }

      [(_UICollectionCompositionalLayoutSolver *)self _globalSupplementaryFrameOffset];
      v15 = *(v13 + 80);
      v16 = *(v13 + 88);
      v17 = *(v13 + 96);
      v18 = *(v13 + 104);
      v20 = v15 + v19;
      v22 = v21 + v16;
      v35.origin.x = v15;
      v35.origin.y = v16;
      v35.size.width = v17;
      v35.size.height = v18;
      Width = CGRectGetWidth(v35);
      v36.origin.x = v15;
      v36.origin.y = v16;
      v36.size.width = v17;
      v36.size.height = v18;
      *&v33 = v20;
      *(&v33 + 1) = v22;
      *&v34 = Width;
      *(&v34 + 1) = CGRectGetHeight(v36);
    }

    else
    {
      v31 = *(MEMORY[0x1E695F050] + 16);
      v33 = *MEMORY[0x1E695F050];
      v34 = v31;
    }
  }

  else
  {
    v26 = *(MEMORY[0x1E695F050] + 16);
    v33 = *MEMORY[0x1E695F050];
    v34 = v26;
    v27 = *(self + 240);
    v28 = *(self + 248);
    v29 = v27;
    v30 = [_UICollectionCompositionalLayoutSolver _queryResultForSectionSupplementaryViewOfKind:a2 withIndexPath:kind solutionBookmarks:v29 container:v28 globalFrame:&v33];
  }

  return *&v33;
}

+ (CGFloat)_queryResultForSectionSupplementaryViewOfKind:(void *)kind withIndexPath:(void *)path solutionBookmarks:(void *)bookmarks container:(void *)container globalFrame:
{
  v11 = objc_opt_self();
  section = [kind section];
  item = [kind item];
  v14 = [path count];
  v15 = 0;
  if ((section & 0x8000000000000000) == 0 && section < v14)
  {
    v16 = [path objectAtIndexedSubscript:section];
    v17 = v16;
    if (v16)
    {
      v18 = *(v16 + 8);
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    v20 = [v19 supplementaryFrameWithKind:a2 index:item];
    v15 = v20;
    if (v20)
    {
      [(_UICollectionCompositionalLayoutSolver *)v20[10] _globalFrameForSectionAuxiliaryFrame:v20[12] bookmark:v20[13] container:_UICollectionCompositionalLayoutSolver, v17, bookmarks];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      if (!container)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel__queryResultForSectionSupplementaryViewOfKind_withIndexPath_solutionBookmarks_container_globalFrame_ object:v11 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:826 description:{@"Invalid parameter not satisfying: %@", @"outGlobalFrame != nil"}];
      }

      *container = v22;
      container[1] = v24;
      container[2] = v26;
      container[3] = v28;
    }
  }

  return v15;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(void *)kind withIndexPath:
{
  if (self)
  {
    v6 = [a2 length];
    height = 0;
    if (kind && v6)
    {
      v8 = [(_UICollectionCompositionalLayoutSolver *)self _cachedSupplementaryAttributesForElementKind:a2 indexPath:kind];
      if (v8)
      {
        height = v8;
LABEL_19:

        goto LABEL_20;
      }

      if ([kind length] == 1 && (-[_UICollectionLayoutAuxillaryItemSolver elementKinds](self[34]), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "containsObject:", a2), v9, v10))
      {
        v11 = self[34];
        v12 = -[_UICollectionLayoutAuxillaryItemSolver supplementaryFrameWithKind:index:](v11, a2, [kind indexAtPosition:0]);

        if (v12)
        {
          supplementaryItem = [(_UICollectionLayoutFramesQueryResult *)v12 supplementaryItem];
          if (!supplementaryItem)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:sel_layoutAttributesForSupplementaryViewOfKind_withIndexPath_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:751 description:@"Failed to resolve the global supplementary definition."];
          }

          [(_UICollectionCompositionalLayoutSolver *)self _globalSupplementaryFrameOffset];
          v14 = *(v12 + 80);
          v15 = *(v12 + 88);
          v16 = *(v12 + 96);
          v17 = *(v12 + 104);
          v19 = v14 + v18;
          v21 = v20 + v15;
          v38.origin.x = v14;
          v38.origin.y = v15;
          v38.size.width = v16;
          v38.size.height = v17;
          Width = CGRectGetWidth(v38);
          v39.origin.x = v14;
          v39.origin.y = v15;
          v39.size.width = v16;
          v39.size.height = v17;
          Height = CGRectGetHeight(v39);
          selfCopy2 = self;
          kindCopy2 = kind;
          v26 = a2;
          v27 = v19;
          v28 = v21;
          v29 = Width;
LABEL_16:
          height = [(_UICollectionCompositionalLayoutSolver *)selfCopy2 _createAndCacheLayoutAttributesForSupplementaryItemAtIndexPath:kindCopy2 elementKind:v26 frame:v12 queryResult:v27, v28, v29, Height];

LABEL_18:
          goto LABEL_19;
        }
      }

      else
      {
        v30 = *(MEMORY[0x1E695F050] + 16);
        v35 = *MEMORY[0x1E695F050];
        v36 = v30;
        v31 = [_UICollectionCompositionalLayoutSolver _queryResultForSectionSupplementaryViewOfKind:a2 withIndexPath:kind solutionBookmarks:self[23] container:self[6] globalFrame:&v35];
        v12 = v31;
        if (v31)
        {
          supplementaryItem = [(_UICollectionLayoutFramesQueryResult *)v31 supplementaryItem];
          if (!supplementaryItem)
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:sel_layoutAttributesForSupplementaryViewOfKind_withIndexPath_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:771 description:@"Invalid query result - supplementary item was nil."];
          }

          v28 = *(&v35 + 1);
          v27 = *&v35;
          Height = *(&v36 + 1);
          v29 = *&v36;
          selfCopy2 = self;
          kindCopy2 = kind;
          v26 = a2;
          goto LABEL_16;
        }
      }

      height = 0;
      goto LABEL_18;
    }
  }

  else
  {
    height = 0;
  }

LABEL_20:

  return height;
}

- (double)unpinnedFrameOfBoundarySupplementaryElementOfKind:(void *)kind withIndexPath:
{
  if (!self)
  {
    return 0.0;
  }

  if (a2)
  {
    if (kind)
    {
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_unpinnedFrameOfBoundarySupplementaryElementOfKind_withIndexPath_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:778 description:{@"Invalid parameter not satisfying: %@", @"elementKind != nil"}];

    if (kind)
    {
      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:sel_unpinnedFrameOfBoundarySupplementaryElementOfKind_withIndexPath_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:779 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];

LABEL_4:
  section = [kind section];
  v7 = self[23];
  v8 = v7;
  if ((section & 0x8000000000000000) != 0 || section >= [v7 count])
  {
    v15 = *MEMORY[0x1E695F050];
  }

  else if ([self[20] containsIndex:section])
  {
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(kind, "section")}];
    v10 = v9;
    if (v9)
    {
      v11 = *(v9 + 8);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = [v12 unpinnedSectionSupplementaryFrameForIndex:{objc_msgSend(kind, "item")}];
    if (v13)
    {
      [(_UICollectionCompositionalLayoutSolver *)v13[10] _globalFrameForSectionAuxiliaryFrame:v13[12] bookmark:v13[13] container:_UICollectionCompositionalLayoutSolver, v10, self[6]];
      v15 = v14;
    }

    else
    {
      v15 = *MEMORY[0x1E695F050];
    }
  }

  else
  {
    v17 = [(_UICollectionCompositionalLayoutSolver *)self layoutAttributesForSupplementaryViewOfKind:a2 withIndexPath:kind];
    v18 = v17;
    if (v17)
    {
      [v17 frame];
      v15 = v19;
    }

    else
    {
      v15 = *MEMORY[0x1E695F050];
    }
  }

  return v15;
}

- (double)preUpdateFrameForDecorationViewOfKind:(void *)kind withInitialIndexPath:
{
  if (!self)
  {
    return 0.0;
  }

  v6 = self[32];
  if (v6)
  {
    v7 = v6;
    v8 = self[31];
    if (v8)
    {
      v9 = self[30];

      if (v9)
      {
        v10 = [a2 length];
        if (kind)
        {
          if (v10 && [kind length] > 1)
          {
            section = [kind section];
            item = [kind item];
            v13 = self[30];
            v14 = [v13 objectAtIndexedSubscript:section];
            v15 = v14;
            if (v14)
            {
              v16 = *(v14 + 16);
            }

            else
            {
              v16 = 0;
            }

            v17 = v16;
            v18 = [v13 count];
            if ((section & 0x8000000000000000) != 0 || section >= v18)
            {
              v26 = *MEMORY[0x1E695F050];
LABEL_29:

              return v26;
            }

            v19 = [v17 _auxillaryItemForElementKind:a2 category:2];
            if (!v19)
            {
              if (v15)
              {
                v28 = v15[1];
              }

              else
              {
                v28 = 0;
              }

              v29 = v28;
              v30 = [v29 supplementaryFrameWithKind:a2 index:item];
              if (v30)
              {
                v31 = v30;
                if (*(v30 + 32) != 3)
                {
                  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                  [currentHandler handleFailureInMethod:sel_preUpdateFrameForDecorationViewOfKind_withInitialIndexPath_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:872 description:{@"Invalid parameter not satisfying: %@", @"result.isDecoration"}];
                }

                [(_UICollectionCompositionalLayoutSolver *)v31[10] _globalFrameForSolutionFrame:v31[12] bookmark:v31[13] container:_UICollectionCompositionalLayoutSolver, v15, self[31]];
                v26 = v32;
              }

              else
              {

                v26 = *MEMORY[0x1E695F050];
              }

              goto LABEL_28;
            }

            decorationItems = [v17 decorationItems];
            v21 = [decorationItems count];

            if (item >= v21)
            {
              currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler2 handleFailureInMethod:sel_preUpdateFrameForDecorationViewOfKind_withInitialIndexPath_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:860 description:{@"Invalid parameter not satisfying: %@", @"itemIndex < section.decorationItems.count"}];

              if (v15)
              {
                goto LABEL_15;
              }
            }

            else if (v15)
            {
LABEL_15:
              v22 = v15[2];
LABEL_16:
              decorationItems2 = [v22 decorationItems];
              v24 = [decorationItems2 objectAtIndexedSubscript:item];

              elementKind = [v24 elementKind];
              v26 = [_UICollectionCompositionalLayoutSolver _globalFrameForBackgroundDecoration:v15 forSectionWithBookmark:?];

LABEL_28:
              goto LABEL_29;
            }

            v22 = 0;
            goto LABEL_16;
          }
        }
      }
    }

    else
    {
    }
  }

  return *MEMORY[0x1E695F050];
}

+ (double)_globalFrameForBackgroundDecoration:(uint64_t)decoration forSectionWithBookmark:(id *)bookmark
{
  objc_opt_self();
  if (!bookmark)
  {
    return *MEMORY[0x1E695F050];
  }

  memoizedDescriptor = [(_UICollectionSectionSolutionBookmark *)bookmark memoizedDescriptor];
  v4 = bookmark[2];
  _clipsBackgroundDecorationsToContent = [v4 _clipsBackgroundDecorationsToContent];
  if (memoizedDescriptor)
  {
    v6 = 112;
    if (_clipsBackgroundDecorationsToContent)
    {
      v6 = 144;
    }

    v7 = *&memoizedDescriptor[v6];
  }

  else
  {
    v7 = 0.0;
  }

  if ((dyld_program_sdk_at_least() & 1) == 0 && [bookmark[2] scrollsOrthogonally])
  {
    v8 = bookmark[11];
    effectiveInsets = [(_UIContentInsetsEnvironment *)v8 effectiveInsets];
    _UITotalEdgeDimensionsForLayoutAxis([bookmark[1] layoutAxis], effectiveInsets, v10, v11, v12);
  }

  return v7;
}

- (id)layoutAttributesForDecorationViewOfKind:(void *)kind withIndexPath:
{
  if (!self)
  {
    goto LABEL_7;
  }

  v6 = [a2 length];
  v7 = 0;
  if (kind && v6)
  {
    if ([kind length] == 2)
    {
      v8 = [(_UICollectionCompositionalLayoutSolver *)self _cachedDecorationAttributesForElementKind:a2 indexPath:kind];
      if (v8)
      {
        v7 = v8;
LABEL_28:

        goto LABEL_29;
      }

      v9 = *(self + 184);
      section = [kind section];
      item = [kind item];
      v12 = [v9 count];
      v7 = 0;
      if ((section & 0x8000000000000000) != 0 || section >= v12)
      {
LABEL_27:

        goto LABEL_28;
      }

      v13 = [v9 objectAtIndexedSubscript:section];
      v14 = v13;
      if (v13)
      {
        v15 = *(v13 + 16);
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      v17 = [v16 _auxillaryItemForElementKind:a2 category:2];
      if (!v17)
      {
        if (v14)
        {
          v36 = *(v14 + 8);
        }

        else
        {
          v36 = 0;
        }

        v22 = v36;
        v37 = [v22 supplementaryFrameWithKind:a2 index:item];
        elementKind = v37;
        if (v37)
        {
          if (*(v37 + 32) != 3)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:sel_layoutAttributesForDecorationViewOfKind_withIndexPath_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:928 description:{@"Invalid parameter not satisfying: %@", @"result.isDecoration"}];
          }

          [(_UICollectionCompositionalLayoutSolver *)*(elementKind + 80) _globalFrameForSolutionFrame:*(elementKind + 96) bookmark:*(elementKind + 104) container:_UICollectionCompositionalLayoutSolver, v14, *(self + 48)];
          v39 = v38;
          v41 = v40;
          v43 = v42;
          v45 = v44;
          auxillaryItem = [(_UICollectionLayoutFramesQueryResult *)elementKind auxillaryItem];
          decorationItem = [auxillaryItem decorationItem];

          if (!decorationItem)
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:sel_layoutAttributesForDecorationViewOfKind_withIndexPath_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:935 description:{@"Invalid parameter not satisfying: %@", @"decorationItem"}];
          }

          v35 = -[_UICollectionCompositionalLayoutSolver _createAndCacheLayoutAttributesForDecorationItemAtIndexPath:elementKind:frame:additionalContentInset:zIndex:](self, kind, a2, [decorationItem zIndex], v39, v41, v43, v45, 0.0, 0.0, 0.0, 0.0);

          v17 = 0;
        }

        else
        {
          v35 = 0;
        }

        goto LABEL_26;
      }

      decorationItems = [v16 decorationItems];
      v19 = [decorationItems count];

      if (item >= v19)
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:sel_layoutAttributesForDecorationViewOfKind_withIndexPath_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:916 description:{@"Invalid parameter not satisfying: %@", @"itemIndex < section.decorationItems.count"}];

        if (v14)
        {
          goto LABEL_15;
        }
      }

      else if (v14)
      {
LABEL_15:
        v20 = *(v14 + 16);
LABEL_16:
        decorationItems2 = [v20 decorationItems];
        v22 = [decorationItems2 objectAtIndexedSubscript:item];

        elementKind = [v22 elementKind];
        v24 = [_UICollectionCompositionalLayoutSolver _globalFrameForBackgroundDecoration:v14 forSectionWithBookmark:?];
        v26 = v25;
        v28 = v27;
        v30 = v29;
        [v22 contentInsets];
        v35 = -[_UICollectionCompositionalLayoutSolver _createAndCacheLayoutAttributesForDecorationItemAtIndexPath:elementKind:frame:additionalContentInset:zIndex:](self, kind, elementKind, [v22 zIndex], v24, v26, v28, v30, v31, v32, v33, v34);
LABEL_26:

        v7 = v35;
        goto LABEL_27;
      }

      v20 = 0;
      goto LABEL_16;
    }

LABEL_7:
    v7 = 0;
  }

LABEL_29:

  return v7;
}

- (id)_cachedDecorationAttributesForElementKind:(uint64_t)kind indexPath:
{
  if (self)
  {
    if (a2)
    {
      if (kind)
      {
LABEL_4:
        v6 = [*(self + 224) objectForKeyedSubscript:a2];
        v7 = v6;
        if (v6)
        {
          v8 = [v6 objectForKeyedSubscript:kind];
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_8;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__cachedDecorationAttributesForElementKind_indexPath_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2694 description:{@"Invalid parameter not satisfying: %@", @"elementKind"}];

      if (kind)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__cachedDecorationAttributesForElementKind_indexPath_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2695 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];

    goto LABEL_4;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)_createAndCacheLayoutAttributesForDecorationItemAtIndexPath:(void *)path elementKind:(uint64_t)kind frame:(double)frame additionalContentInset:(double)inset zIndex:(double)index
{
  if (!self)
  {
    v24 = 0;
    goto LABEL_14;
  }

  if (!a2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__createAndCacheLayoutAttributesForDecorationItemAtIndexPath_elementKind_frame_additionalContentInset_zIndex_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2634 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
  }

  if (![path length])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__createAndCacheLayoutAttributesForDecorationItemAtIndexPath_elementKind_frame_additionalContentInset_zIndex_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2635 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
  }

  v24 = [*(self + 120) layoutAttributesForDecorationViewOfKind:path withIndexPath:a2];
  [v24 setFrame:{-[_UICollectionCompositionalLayoutSolver _validatedRoundedFrame:forElementOfCategory:atIndexPath:elementKind:](self, 2, a2, path, frame + a10, inset + a9, index - (a12 + a10), a8 - (a9 + a11))}];
  [v24 setZIndex:kind];
  [(_UICollectionCompositionalLayoutSolver *)self _injectPreferredSizingDataIntoToLayoutAttributes:v24 atIndexPath:a2];
  v25 = *(self + 32);
  if (v25)
  {
    (*(v25 + 16))(v25, v24);
  }

  if (path)
  {
    if (a2)
    {
      goto LABEL_10;
    }

LABEL_18:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:sel__setCachedDecorationAttributesForElementKind_indexPath_attributes_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2707 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];

    if (v24)
    {
      goto LABEL_11;
    }

LABEL_19:
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:sel__setCachedDecorationAttributesForElementKind_indexPath_attributes_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2708 description:{@"Invalid parameter not satisfying: %@", @"attributes"}];

    goto LABEL_11;
  }

  currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler5 handleFailureInMethod:sel__setCachedDecorationAttributesForElementKind_indexPath_attributes_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2706 description:{@"Invalid parameter not satisfying: %@", @"elementKind"}];

  if (!a2)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (!v24)
  {
    goto LABEL_19;
  }

LABEL_11:
  v26 = [*(self + 224) objectForKeyedSubscript:path];
  if (!v26)
  {
    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [*(self + 224) setObject:v26 forKeyedSubscript:path];
  }

  [v26 setObject:v24 forKeyedSubscript:a2];

LABEL_14:

  return v24;
}

- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(double)path withTargetPosition:(double)position
{
  if (self && [a2 length] >= 2)
  {
    section = [a2 section];
    if (section >= [*(self + 184) count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_layoutAttributesForInteractivelyMovingItemAtIndexPath_withTargetPosition_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:978 description:{@"Invalid parameter not satisfying: %@", @"sectionIndex < self.solutionBookmarks.count"}];
    }

    v9 = [*(self + 184) objectAtIndexedSubscript:section];
    v10 = v9;
    if (v9)
    {
      v9 = v9[2];
    }

    if ([v9 shouldRestrictOrthogonalAxisDuringInteractiveMovement])
    {
      v11 = *(self + 64);
      v12 = _UIPointValueForAxis(v11, path, position);
      v13 = [(_UICollectionCompositionalLayoutSolver *)self layoutAttributesForItemAtIndexPath:a2];
      [v13 center];
      [v13 setCenter:{_UISetPointValueForAxis(v11, v14, v15, v12)}];
      [v13 setZIndex:0x7FFFFFFFFFFFFFFFLL];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)enumeratePinnedSupplementaryItems:(uint64_t)items
{
  if (items && [(_UICollectionCompositionalLayoutSolver *)items hasPinnedSupplementaryItems])
  {
    v4 = *(items + 160);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76___UICollectionCompositionalLayoutSolver_enumeratePinnedSupplementaryItems___block_invoke;
    v8[3] = &unk_1E70FA960;
    v8[4] = items;
    v8[5] = a2;
    [v4 enumerateIndexesUsingBlock:v8];
    v5 = *(items + 272);
    if (v5)
    {
      v5 = v5[5];
    }

    v6 = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76___UICollectionCompositionalLayoutSolver_enumeratePinnedSupplementaryItems___block_invoke_3;
    v7[3] = &unk_1E70FA960;
    v7[4] = items;
    v7[5] = a2;
    [v6 enumerateIndexesUsingBlock:v7];
  }
}

- (void)setDynamicsConfigurationHandler:(uint64_t)handler
{
  if (handler)
  {
    v4 = [a2 copy];
    v5 = *(handler + 104);
    *(handler + 104) = v4;

    if (a2)
    {
      v6 = objc_alloc_init(_UICollectionLayoutDynamicsConfiguration);
      v7 = *(handler + 176);
      *(handler + 176) = v6;

      v8 = [_UICollectionCompositionalLayoutDynamicAnimator alloc];
      v9 = *(handler + 136);
      v18 = v9;
      if (v8)
      {
        if (!v9)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:sel_initWithReferenceSystem_invalidationHandler_ object:v8 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3541 description:{@"Invalid parameter not satisfying: %@", @"invalidationHandler"}];
        }

        v19.receiver = v8;
        v19.super_class = _UICollectionCompositionalLayoutDynamicAnimator;
        v8 = objc_msgSendSuper2(&v19, sel_initWithReferenceSystem_, handler);
        v10 = [v18 copy];
        invalidationHandler = v8->_invalidationHandler;
        v8->_invalidationHandler = v10;

        v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
        itemBehaviors = v8->_itemBehaviors;
        v8->_itemBehaviors = v12;
      }

      v14 = *(handler + 168);
      *(handler + 168) = v8;

      v15 = v18;
    }

    else
    {
      v16 = *(handler + 176);
      *(handler + 176) = 0;

      v15 = *(handler + 168);
      *(handler + 168) = 0;
    }
  }
}

- (id)mutatedVisibleItemsForElementsForVisibleBounds:(double)bounds
{
  v76 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v67 = 0;
    v68 = &v67;
    v69 = 0x3032000000;
    v70 = __Block_byref_object_copy__28;
    v71 = __Block_byref_object_dispose__28;
    v72 = 0;
    v65[0] = 0;
    v65[1] = v65;
    v65[2] = 0x3032000000;
    v65[3] = __Block_byref_object_copy__28;
    v65[4] = __Block_byref_object_dispose__28;
    v66 = 0;
    [(_UICollectionCompositionalLayoutSolver *)self _attributesQueryInfosForQueryRect:a2, bounds, a4, a5];
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    obj = v62 = 0u;
    v10 = [obj countByEnumeratingWithState:&v61 objects:v75 count:16];
    if (v10)
    {
      v11 = *v62;
      do
      {
        v12 = 0;
        do
        {
          if (*v62 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v61 + 1) + 8 * v12);
          if (v13)
          {
            v14 = v13[2];
            v15 = v13[3];
            v16 = v13[4];
            v17 = v13[5];
          }

          else
          {
            v15 = 0.0;
            v16 = 0.0;
            v17 = 0.0;
            v14 = 0.0;
          }

          v60[0] = MEMORY[0x1E69E9820];
          v60[1] = 3221225472;
          v60[2] = __89___UICollectionCompositionalLayoutSolver_mutatedVisibleItemsForElementsForVisibleBounds___block_invoke;
          v60[3] = &unk_1E70FA988;
          v60[4] = v65;
          v60[5] = &v67;
          [(_UICollectionCompositionalLayoutSolver *)self _layoutAttributesForElementsInRect:v60 handler:v14, v15, v16, v17];
          ++v12;
        }

        while (v10 != v12);
        v18 = [obj countByEnumeratingWithState:&v61 objects:v75 count:16];
        v10 = v18;
      }

      while (v18);
    }

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v49 = v68[5];
    v20 = 0;
    v21 = [v49 countByEnumeratingWithState:&v56 objects:v74 count:16];
    if (v21)
    {
      v51 = *v57;
      v22 = *MEMORY[0x1E695EFF8];
      v23 = *(MEMORY[0x1E695EFF8] + 8);
      do
      {
        v24 = 0;
        do
        {
          if (*v57 != v51)
          {
            objc_enumerationMutation(v49);
          }

          v25 = *(*(&v56 + 1) + 8 * v24);
          layoutSection = [v25 layoutSection];
          if (!layoutSection)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:sel_mutatedVisibleItemsForElementsForVisibleBounds_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:1103 description:{@"Invalid parameter not satisfying: %@", @"layoutSection"}];
          }

          if ([layoutSection _hasVisibleItemsHandler])
          {
            v27 = [v68[5] objectForKey:v25];
            if (!v27)
            {
              currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler2 handleFailureInMethod:sel_mutatedVisibleItemsForElementsForVisibleBounds_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:1107 description:{@"Invalid parameter not satisfying: %@", @"sectionVisibleItemCandidates"}];
            }

            layoutAxis = [v25 layoutAxis];
            [v25 orthogonalOffset];
            v31 = _UIPointValueForAxis(layoutAxis, v29, v30);
            v32 = _UISetPointValueForAxis(layoutAxis, v22, v23, v31);
            v34 = v33;
            if (!v20)
            {
              v35 = [[_UICollectionLayoutContainer alloc] initWithContentSize:a4 contentInsets:a5, 0.0, 0.0, 0.0, 0.0];
              v36 = [_UICollectionLayoutEnvironment alloc];
              v37 = *(self + 56);
              v38 = *(self + 72);
              v20 = [(_UICollectionLayoutEnvironment *)v36 initWithContainer:v35 traitCollection:v37 dataSourceSnapshot:v38];
            }

            visibleItemsInvalidationHandler = [layoutSection visibleItemsInvalidationHandler];
            (visibleItemsInvalidationHandler)[2](visibleItemsInvalidationHandler, v27, v20, a2 + v32, bounds + v34);

            if (*(self + 12))
            {
              if (mutatedVisibleItemsForElementsForVisibleBounds__once != -1)
              {
                dispatch_once(&mutatedVisibleItemsForElementsForVisibleBounds__once, &__block_literal_global_104);
              }
            }

            else
            {
              v54 = 0u;
              v55 = 0u;
              v52 = 0u;
              v53 = 0u;
              v40 = v27;
              v41 = [v40 countByEnumeratingWithState:&v52 objects:v73 count:16];
              if (v41)
              {
                v42 = *v53;
                do
                {
                  for (i = 0; i != v41; ++i)
                  {
                    if (*v53 != v42)
                    {
                      objc_enumerationMutation(v40);
                    }

                    v44 = *(*(&v52 + 1) + 8 * i);
                    if (v44 && *(v44 + 8) == 1)
                    {
                      [v19 addObject:?];
                    }
                  }

                  v41 = [v40 countByEnumeratingWithState:&v52 objects:v73 count:16];
                }

                while (v41);
              }
            }
          }

          ++v24;
        }

        while (v24 != v21);
        v47 = [v49 countByEnumeratingWithState:&v56 objects:v74 count:16];
        v21 = v47;
      }

      while (v47);
    }

    _Block_object_dispose(v65, 8);
    _Block_object_dispose(&v67, 8);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)_attributesQueryInfosForQueryRect:(double)rect
{
  v6 = [_UICollectionLayoutExtendedAttributesQueryInfo alloc];
  if (v6)
  {
    v29.receiver = v6;
    v29.super_class = _UICollectionLayoutExtendedAttributesQueryInfo;
    v7 = objc_msgSendSuper2(&v29, sel_init);
    v8 = v7;
    if (v7)
    {
      *(v7 + 2) = a2;
      *(v7 + 3) = rect;
      *(v7 + 4) = a4;
      *(v7 + 5) = a5;
      *(v7 + 1) = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v8, 0}];
  v10 = v9;
  if (*(self + 13) == 1)
  {
    v11 = *(self + 184);
    v12 = *(self + 192);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __76___UICollectionCompositionalLayoutSolver__attributesQueryInfosForQueryRect___block_invoke;
    v22[3] = &unk_1E70FAB40;
    v24 = v11;
    v25 = a2;
    rectCopy = rect;
    v27 = a4;
    v28 = a5;
    v13 = v9;
    v23 = v13;
    if (v12)
    {
      v31 = 0;
      v14 = *(v12 + 8);
      v15.f64[0] = a2;
      v16.f64[0] = a4;
      v15.f64[1] = rect;
      v16.f64[1] = a5;
      v29 = vaddq_f64(v15, vminnmq_f64(v16, 0));
      v30 = vabsq_f64(v16);
      _UIRTreeContainerNode<unsigned long>::enumerateElementsIntersecting(v14, &v29, &v31, v22);
      v13 = v23;
    }
  }

  return v10;
}

- (void)prepareForPreferredAttributesQueryForView:(_DWORD *)view withLayoutAttributes:
{
  if (!self || *(self + 12) != 1)
  {
    return;
  }

  if (view)
  {
    v6 = view[72] & 1;
    v7 = (view[72] & 3) == 0;
    if (view[72])
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (!v7)
  {
    return;
  }

LABEL_8:
  indexPath = [view indexPath];
  if ([indexPath length] == 1)
  {
    _content = [(_UILabelConfiguration *)view _content];
    elementKinds = [(_UICollectionLayoutAuxillaryItemSolver *)*(self + 272) elementKinds];
    v11 = [elementKinds containsObject:_content];

    if (v11)
    {
      v26 = -[_UICollectionLayoutAuxillaryItemSolver supplementaryFrameWithKind:index:](*(self + 272), _content, [indexPath indexAtPosition:0]);
      goto LABEL_22;
    }

LABEL_17:
    v26 = 0;
LABEL_26:

    v19 = v26;
    goto LABEL_27;
  }

  section = [indexPath section];
  if (section >= [*(self + 184) count])
  {
    goto LABEL_17;
  }

  _content = [(_UILabelConfiguration *)view _content];
  v13 = [*(self + 184) objectAtIndexedSubscript:section];
  v14 = v13;
  if (v6)
  {
    if (v13)
    {
      v15 = *(v13 + 8);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    v17 = [v16 frameForIndex:{objc_msgSend(indexPath, "item")}];
  }

  else
  {
    if (v13)
    {
      v18 = *(v13 + 8);
    }

    else
    {
      v18 = 0;
    }

    v16 = v18;
    v17 = [v16 supplementaryFrameWithKind:_content index:{objc_msgSend(indexPath, "item")}];
  }

  v26 = v17;

LABEL_22:
  v19 = v26;
  if (v26)
  {
    v20 = v26[5];
    indexPath = [v20 size];

    if (!indexPath)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_prepareForPreferredAttributesQueryForView_withLayoutAttributes_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:1178 description:{@"Invalid parameter not satisfying: %@", @"size"}];
    }

    widthDimension = [indexPath widthDimension];
    isEstimated = [widthDimension isEstimated];

    heightDimension = [indexPath heightDimension];
    isEstimated2 = [heightDimension isEstimated];

    [a2 _setShouldConstrainWidth:isEstimated ^ 1u];
    [a2 _setShouldConstrainHeight:isEstimated2 ^ 1u];
    goto LABEL_26;
  }

LABEL_27:
}

- (_UICollectionCompositionalLayoutSolverResolveResult)resolveSolutionForUpdate:(void *)update container:(int)container ignoreEmptyUpdate:
{
  v123 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy4 = self;
    if (a2)
    {
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
      v87 = v8;
      if (v8)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = 0;
    }

    v84 = v9;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    selfCopy4 = self;
    [currentHandler handleFailureInMethod:sel_resolveSolutionForUpdate_container_ignoreEmptyUpdate_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:1216 description:{@"Invalid parameter not satisfying: %@", @"updateTranslator != nil"}];

    v87 = 0;
    v9 = v84;
LABEL_4:
    v86 = v9;
    if (v9)
    {
      if (update)
      {
        goto LABEL_6;
      }
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      selfCopy4 = self;
      [currentHandler2 handleFailureInMethod:sel_resolveSolutionForUpdate_container_ignoreEmptyUpdate_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:1217 description:{@"Invalid parameter not satisfying: %@", @"finalDataSourceSnapshot != nil"}];

      if (update)
      {
        goto LABEL_6;
      }
    }

    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    selfCopy4 = self;
    [currentHandler3 handleFailureInMethod:sel_resolveSolutionForUpdate_container_ignoreEmptyUpdate_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:1218 description:{@"Invalid parameter not satisfying: %@", @"newContainer != nil"}];

LABEL_6:
    v93 = objc_alloc_init(_UICollectionCompositionalLayoutSolverResolveResult);
    if (container)
    {
      v10 = a2;
      if (a2)
      {
        v10 = *(a2 + 8);
      }

      v11 = v10;
      if ([v11 count])
      {
      }

      else
      {
        v12 = [update isEqual:*(selfCopy4 + 48)];

        if (v12)
        {
          [(_UICollectionCompositionalLayoutSolver *)selfCopy4 _invalidateAllAttributes];
LABEL_63:

          goto LABEL_64;
        }
      }
    }

    objc_storeStrong((selfCopy4 + 48), update);
    if (a2)
    {
      v13 = a2;
      selfCopy6 = self;
      v16 = *(a2 + 32);
      v15 = *(a2 + 40);
      v18 = *(a2 + 48);
      v17 = *(a2 + 56);
      v19 = *(a2 + 16);
    }

    else
    {
      v19 = 0;
      v17 = 0.0;
      v18 = 0.0;
      v15 = 0.0;
      v16 = 0.0;
      v13 = 0;
      selfCopy6 = self;
    }

    v20 = v13 == 0;
    v21 = v19;
    v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v119[0] = MEMORY[0x1E69E9820];
    v119[1] = 3221225472;
    v119[2] = __138___UICollectionCompositionalLayoutSolver__updateResultsNotingDeletedItemAndSectionAuxillaries_returningStartingGroupAuxillariesForUpdate___block_invoke;
    v119[3] = &unk_1E70FAC58;
    v120 = v21;
    v121 = v93;
    v23 = v22;
    v122 = v23;
    v24 = v21;
    [(_UICollectionCompositionalLayoutSolver *)selfCopy6 _layoutAttributesForElementsInRect:v119 handler:v16, v15, v18, v17];
    v25 = v122;
    v88 = v23;

    if (v20)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(a2 + 24);
    }

    objc_storeStrong((self + 72), v26);
    selfCopy8 = self;
    if (*(self + 12) == 1)
    {
      v91 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v28 = *(self + 184);
      v29 = [v28 countByEnumeratingWithState:&v115 objects:v119 count:16];
      if (v29)
      {
        v30 = *v116;
        do
        {
          v31 = 0;
          do
          {
            if (*v116 != v30)
            {
              objc_enumerationMutation(v28);
            }

            v32 = *(*(&v115 + 1) + 8 * v31);
            v33 = [_UICollectionCompositionalSolverPreferredSizesRebaseInfo alloc];
            p_isa = &v33->super.isa;
            if (v32)
            {
              v35 = *(v32 + 8);
              v32 = *(v32 + 104);
              if (!p_isa)
              {
                goto LABEL_27;
              }
            }

            else
            {
              v35 = 0;
              if (!v33)
              {
                goto LABEL_27;
              }
            }

            v104.receiver = p_isa;
            v104.super_class = _UICollectionCompositionalSolverPreferredSizesRebaseInfo;
            v36 = objc_msgSendSuper2(&v104, sel_init);
            p_isa = v36;
            if (v36)
            {
              objc_storeStrong(v36 + 1, v35);
              objc_storeStrong(p_isa + 2, v32);
            }

LABEL_27:

            [v91 addObject:p_isa];
            ++v31;
          }

          while (v29 != v31);
          v37 = [v28 countByEnumeratingWithState:&v115 objects:v119 count:16];
          v29 = v37;
        }

        while (v37);
      }

      v38 = *(self + 152);
      v104.receiver = 0;
      v104.super_class = &v104;
      *&v105 = 0x3032000000;
      *(&v105 + 1) = __Block_byref_object_copy__28;
      *&v106 = __Block_byref_object_dispose__28;
      *(&v106 + 1) = objc_alloc_init(MEMORY[0x1E695DF90]);
      if (a2)
      {
        v39 = *(a2 + 16);
      }

      else
      {
        v39 = 0;
      }

      v40 = v39;
      aBlock = MEMORY[0x1E69E9820];
      v109 = 3221225472;
      v110 = ___UICollectionLayoutCompositionalSolverRebasedPreferredSizesForSolutions_block_invoke;
      v111 = &unk_1E70FAC80;
      v112 = &v104;
      v41 = _Block_copy(&aBlock);
      *&v100 = MEMORY[0x1E69E9820];
      *(&v100 + 1) = 3221225472;
      *&v101 = ___UICollectionLayoutCompositionalSolverRebasedPreferredSizesForSolutions_block_invoke_2;
      *(&v101 + 1) = &unk_1E70FAD20;
      v42 = v40;
      *&v102 = v42;
      v43 = v41;
      *(&v102 + 1) = v43;
      [v91 enumerateObjectsUsingBlock:&v100];
      if (v38)
      {
        v44 = a2;
        if (a2)
        {
          v44 = *(a2 + 8);
        }

        v45 = v44;
        v99[0] = MEMORY[0x1E69E9820];
        v99[1] = 3221225472;
        v99[2] = ___UICollectionLayoutCompositionalSolverRebasedPreferredSizesForSolutions_block_invoke_6;
        v99[3] = &unk_1E70FAD48;
        v99[4] = &v104;
        [v45 enumerateObjectsUsingBlock:v99];
      }

      v46 = *(v104.super_class + 5);

      _Block_object_dispose(&v104, 8);
      selfCopy8 = self;
    }

    else
    {
      v46 = MEMORY[0x1E695E0F8];
    }

    v47 = [v46 mutableCopy];

    [v87 finalSectionCount];
    v48 = [selfCopy8[23] count];
    _fetchUpdatedSectionDefinitionsFromSectionProvider = [selfCopy8 _fetchUpdatedSectionDefinitionsFromSectionProvider];
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = __95___UICollectionCompositionalLayoutSolver_resolveSolutionForUpdate_container_ignoreEmptyUpdate___block_invoke;
    v94[3] = &unk_1E70FA9B0;
    v95 = v87;
    selfCopy9 = self;
    v97 = v47;
    v98 = v48;
    v92 = v47;
    [_fetchUpdatedSectionDefinitionsFromSectionProvider enumerateObjectsUsingBlock:v94];
    [(_UICollectionCompositionalLayoutSolverResolveResult *)v93 setSectionsWereRequeried:1];
    [(_UICollectionCompositionalLayoutSolver *)self _solveWithSectionLayouts:_fetchUpdatedSectionDefinitionsFromSectionProvider preferredSizesDict:v92 dataSourceSnapshot:v86 update:a2];
    [(_UICollectionCompositionalLayoutSolver *)self _configureLayoutForSections:_fetchUpdatedSectionDefinitionsFromSectionProvider];
    if (a2)
    {
      v51 = *(a2 + 32);
      v50 = *(a2 + 40);
      v53 = *(a2 + 48);
      v52 = *(a2 + 56);
      v54 = *(a2 + 16);
    }

    else
    {
      v54 = 0;
      v52 = 0.0;
      v53 = 0.0;
      v50 = 0.0;
      v51 = 0.0;
    }

    v55 = v54;
    v56 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    aBlock = MEMORY[0x1E69E9820];
    v109 = 3221225472;
    v110 = __154___UICollectionCompositionalLayoutSolver__updateResultNotingInsertedItemAndSectionAuxillaries_forVisibleGroupAuxillaryAttributesBeforeResolve_withUpdate___block_invoke;
    v111 = &unk_1E70FAC58;
    v112 = v55;
    v113 = v93;
    v57 = v56;
    v114 = v57;
    v58 = v55;
    [(_UICollectionCompositionalLayoutSolver *)self _layoutAttributesForElementsInRect:v51 handler:v50, v53, v52];
    v59 = v114;
    v60 = v57;

    v61 = [v60 mutableCopy];
    [v61 minusSet:v88];
    v106 = 0u;
    v107 = 0u;
    v104 = 0;
    v105 = 0u;
    v62 = v61;
    v63 = [v62 countByEnumeratingWithState:&v104 objects:v119 count:16];
    if (v63)
    {
      v64 = *v105;
      do
      {
        for (i = 0; i != v63; ++i)
        {
          if (*v105 != v64)
          {
            objc_enumerationMutation(v62);
          }

          v66 = *(v104.super_class + i);
          if (v66)
          {
            v67 = *(v66 + 32);
            if ((v67 - 1) <= 1)
            {
              v68 = v67 == 1;
              v69 = *(v66 + 16);
              v70 = *(v66 + 8);
              [(_UICollectionCompositionalLayoutSolverResolveResult *)v93 addInsertedAuxillaryOfElementKind:v69 atIndexPath:v70 isSupplementary:v68];
            }
          }
        }

        v63 = [v62 countByEnumeratingWithState:&v104 objects:v119 count:16];
      }

      while (v63);
    }

    v71 = [v88 mutableCopy];
    [v71 minusSet:v60];
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v72 = v71;
    v73 = [v72 countByEnumeratingWithState:&v100 objects:&v115 count:16];
    if (v73)
    {
      v74 = *v101;
      do
      {
        for (j = 0; j != v73; ++j)
        {
          if (*v101 != v74)
          {
            objc_enumerationMutation(v72);
          }

          v76 = *(*(&v100 + 1) + 8 * j);
          if (v76)
          {
            v77 = *(v76 + 32);
            if ((v77 - 1) <= 1)
            {
              v78 = v77 == 1;
              v79 = *(v76 + 16);
              v80 = *(v76 + 8);
              [(_UICollectionCompositionalLayoutSolverResolveResult *)v93 addDeletedAuxillaryOfElementKind:v79 atIndexPath:v80 isSupplementary:v78];
            }
          }
        }

        v73 = [v72 countByEnumeratingWithState:&v100 objects:&v115 count:16];
      }

      while (v73);
    }

    goto LABEL_63;
  }

  v93 = 0;
LABEL_64:

  return v93;
}

- (void)_solveWithSectionLayouts:(void *)layouts preferredSizesDict:(void *)dict dataSourceSnapshot:(uint64_t)snapshot update:
{
  selfCopy = self;
  [(_UICollectionCompositionalLayoutSolver *)self _invalidateAllAttributes];
  if (!dict)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__solveWithSectionLayouts_preferredSizesDict_dataSourceSnapshot_update_ object:selfCopy file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2329 description:{@"Invalid parameter not satisfying: %@", @"dataSourceSnapshot"}];
  }

  v8 = [a2 count];
  if (v8 != [dict numberOfSections])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__solveWithSectionLayouts_preferredSizesDict_dataSourceSnapshot_update_ object:selfCopy file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2330 description:{@"Invalid parameter not satisfying: %@", @"sectionLayouts.count == dataSourceSnapshot.numberOfSections"}];
  }

  if (!layouts)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:sel__solveWithSectionLayouts_preferredSizesDict_dataSourceSnapshot_update_ object:selfCopy file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2331 description:{@"Invalid parameter not satisfying: %@", @"sectionPreferredSizesDict"}];
  }

  numberOfSections = [dict numberOfSections];
  v10 = *(selfCopy + 112);
  if (v10)
  {
    v10 = v10[8];
  }

  v11 = *(selfCopy + 64);
  v82 = *(selfCopy + 80);
  v95 = v10;
  v12 = [_UICollectionCompositionalLayoutSolver _snapshotBookmarks:?];
  v92 = objc_alloc_init(MEMORY[0x1E695DF70]);
  obj = objc_alloc_init(_UIRTree);
  if (*(selfCopy + 17) == 1)
  {
    *(selfCopy + 15) = 1;
  }

  v13 = MEMORY[0x1E695F058];
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v84 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v83 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v14 = *(selfCopy + 48);
  if (v14)
  {
    v14 = v14[1];
  }

  v79 = v12;
  x = *v13;
  y = v13[1];
  width = v13[2];
  height = v13[3];
  v91 = v14;
  if (numberOfSections < 1)
  {
    v103 = 0;
    v101 = 0;
    _containsEstimatedSizeElement = 0;
  }

  else
  {
    dictCopy = dict;
    _containsEstimatedSizeElement = 0;
    v101 = 0;
    v19 = 0;
    v103 = 0;
    v20 = 0;
    v21 = *MEMORY[0x1E695EFF8];
    v22 = *(MEMORY[0x1E695EFF8] + 8);
    v80 = *(MEMORY[0x1E695F060] + 8);
    v81 = *MEMORY[0x1E695F060];
    v93 = v22;
    v94 = *MEMORY[0x1E695EFF8];
    v88 = a2;
    v87 = fabs(v82);
    do
    {
      v23 = [a2 objectAtIndexedSubscript:v20];
      [v23 _preBoundaryPadding];
      v25 = v24;
      [v23 _postBoundaryPadding];
      v97 = v26;
      v109 = 0;
      v110[0] = 0;
      [(_UICollectionCompositionalLayoutSolver *)selfCopy _generateInsetsEnvironmentsForLayoutSection:v23 withParentInsetEnvironment:v91 sectionEnv:v110 supplementaryEnv:&v109];
      v27 = v110[0];
      v28 = v109;
      [*(selfCopy + 48) effectiveContentSize];
      v108 = v27;
      v107 = [(_UICollectionCompositionalLayoutSolver *)v27 _containerByApplyingInsetsFromEnvironment:v11 toSize:v29 onAxis:v30];
      [*(selfCopy + 48) effectiveContentSize];
      v106 = v28;
      v105 = [(_UICollectionCompositionalLayoutSolver *)v28 _containerByApplyingInsetsFromEnvironment:v11 toSize:v31 onAxis:v32];
      _isEmptySection = [v23 _isEmptySection];
      v33 = [_UICollectionLayoutSectionSolver solverWithLayoutSection:v23 layoutAxis:v11];
      v34 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
      v35 = [layouts objectForKeyedSubscript:v34];
      v36 = v35;
      if (v35)
      {
        v37 = v35;
      }

      else
      {
        v37 = objc_alloc_init(_UICollectionPreferredSizes);
      }

      v38 = v37;

      if ([v23 scrollsOrthogonally])
      {
        [v84 addIndex:v20];
      }

      if ([v23 _clipsContentToBounds])
      {
        [v83 addIndex:v20];
      }

      if (!((v87 < 2.22044605e-16 || (v19 & 1) == 0) | _isEmptySection & 1))
      {
        v21 = v21 + _UISetPointValueForAxis(v11, v94, v93, v82);
        v22 = v22 + v39;
      }

      v98 = y;
      if (fabs(v25) >= 2.22044605e-16)
      {
        v21 = v21 + _UISetPointValueForAxis(v11, v94, v93, v25);
        v22 = v22 + v40;
      }

      v99 = x;
      r1 = width;
      v41 = height;
      LOBYTE(v77) = 0;
      [v33 solveForContainer:v107 supplementaryContainer:v105 traitCollection:*(selfCopy + 56) layoutAxis:v11 frameCount:objc_msgSend(dictCopy preferredSizes:"numberOfItemsInSection:" layoutRTL:{v20), v38, v77}];
      errorDescription = [v33 errorDescription];

      if (errorDescription && v95)
      {
        errorDescription2 = [v33 errorDescription];
        (v95[2])(v95, v20, v107, v108, errorDescription2, 0);
      }

      containerSizeDependentAxes = [v33 containerSizeDependentAxes];
      v44 = selfCopy;
      v45 = [(_UICollectionCompositionalLayoutSolver *)selfCopy _globalFrameForSolution:v33 offset:v21];
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v52 = _UISizeValueForAxis(v11, v48, v50);
      v53 = _UIPointValueForAxis(v11, v21, v22);
      v21 = _UISetPointValueForAxis(v11, v21, v22, v52 + v53);
      v22 = v54;
      pinnedBoundarySupplementaryItemIndexes = [v23 pinnedBoundarySupplementaryItemIndexes];
      v56 = [pinnedBoundarySupplementaryItemIndexes count];

      if (v56)
      {
        [indexSet addIndex:v20];
      }

      v57 = [[_UICollectionSectionSolutionBookmark alloc] initWithSolution:v33 globalFrame:v108 globalPinningFrame:v106 insetEnvironment:v23 supplementaryInsetEnvironment:v38 section:v45 preferredSizes:v47, v49, v51, v45, v47, v49, v51];
      [v92 addObject:v57];
      v111.origin.x = v45;
      v111.origin.y = v47;
      v111.size.width = v49;
      v111.size.height = v51;
      if (!CGRectIsEmpty(v111))
      {
        [(_UICollectionCompositionalLayoutSolver *)v44 _updateSectionIndexer:v33 frame:v20 solution:v45 section:v47, v49, v51];
      }

      v112.origin.y = v98;
      v112.origin.x = v99;
      v112.size.width = r1;
      v112.size.height = v41;
      v118.origin.x = v45;
      v118.origin.y = v47;
      v118.size.width = v49;
      v118.size.height = v51;
      v113 = CGRectUnion(v112, v118);
      x = v113.origin.x;
      y = v113.origin.y;
      width = v113.size.width;
      height = v113.size.height;
      if (fabs(v97) >= 2.22044605e-16)
      {
        if (numberOfSections == 1)
        {
          width = v113.size.width + _UISetSizeValueForAxis(v11, v81, v80, v97);
          height = height + v58;
        }

        else
        {
          v21 = v21 + _UISetPointValueForAxis(v11, v94, v93, v97);
          v22 = v22 + v59;
        }
      }

      _hasVisibleItemsHandler = [v23 _hasVisibleItemsHandler];
      if (_containsEstimatedSizeElement)
      {
        _containsEstimatedSizeElement = 1;
      }

      else
      {
        _containsEstimatedSizeElement = [v23 _containsEstimatedSizeElement];
      }

      v19 |= _isEmptySection ^ 1;
      v103 |= containerSizeDependentAxes;
      v101 += _hasVisibleItemsHandler;

      ++v20;
      --numberOfSections;
      selfCopy = v44;
      a2 = v88;
    }

    while (numberOfSections);
  }

  if (*(selfCopy + 16))
  {
    if (fabs(*(selfCopy + 144)) >= 2.22044605e-16)
    {
      v61 = *(selfCopy + 144);
    }

    else
    {
      v61 = 1.0;
    }

    v114.origin.x = x;
    v114.origin.y = y;
    v114.size.width = width;
    v114.size.height = height;
    CGRectGetMinX(v114);
    v115.origin.x = x;
    v115.origin.y = y;
    v115.size.width = width;
    v115.size.height = height;
    CGRectGetMinY(v115);
    v116.origin.x = x;
    v116.origin.y = y;
    v116.size.width = width;
    v116.size.height = height;
    v62 = round(v61 * CGRectGetWidth(v116)) / v61;
    v117.origin.x = x;
    v117.origin.y = y;
    v117.size.width = width;
    v117.size.height = height;
    height = round(v61 * CGRectGetHeight(v117)) / v61;
    width = v62;
  }

  [(_UICollectionCompositionalLayoutSolver *)selfCopy _restoreStateFromBookmarkSnapshots:v79 bookmarks:v92 update:snapshot];
  [(_UICollectionCompositionalLayoutSolver *)selfCopy setSolutionBookmarks:v92];
  *(selfCopy + 304) = width;
  *(selfCopy + 312) = height;
  objc_storeStrong((selfCopy + 192), obj);
  objc_storeStrong((selfCopy + 160), indexSet);
  *(selfCopy + 288) = v101;
  v63 = [[_UICollectionLayoutAuxillaryItemSolver alloc] initWithAuxillaryHost:selfCopy];
  objc_storeStrong((selfCopy + 272), v63);

  if (!*(selfCopy + 280))
  {
    v64 = objc_alloc_init(_UICollectionPreferredSizes);
    v65 = *(selfCopy + 280);
    *(selfCopy + 280) = v64;
  }

  v66 = *(selfCopy + 272);
  if (_containsEstimatedSizeElement)
  {
    v67 = 1;
    if (!v66)
    {
      goto LABEL_68;
    }
  }

  else
  {
    if (!v66)
    {
      v67 = 0;
      goto LABEL_68;
    }

    v67 = *(v66 + 32);
  }

  if (*(v66 + 144) != 0.0 || *(v66 + 160) != 0.0 || *(v66 + 152) != 0.0 || *(v66 + 168) != 0.0)
  {
    [(_UICollectionCompositionalLayoutSolver *)selfCopy _updateBookmarkOffsetsForGlobalSupplementariesIfNeeded];
    goto LABEL_60;
  }

LABEL_68:
  [(_UICollectionCompositionalLayoutSolver *)selfCopy _updateGeometryTranslator];
LABEL_60:
  v68 = *(selfCopy + 272);
  if (v68)
  {
    v68 = v68[5];
  }

  v69 = v68;
  v70 = [v69 count];

  if (v70)
  {
    [*(selfCopy + 48) contentSize];
    [(_UICollectionLayoutAuxillaryItemSolver *)*(selfCopy + 272) resolveSupplementaryItemsForVisibleBounds:0.0, v71, v72];
  }

  v73 = *(selfCopy + 272);
  if (v73)
  {
    v73 = *(v73 + 56);
  }

  *(selfCopy + 296) = v73 | v103;
  objc_storeStrong((selfCopy + 88), v84);
  *(selfCopy + 13) = [v84 count] != 0;
  *(selfCopy + 14) = [v83 count] != 0;
  objc_storeStrong((selfCopy + 96), v83);
  *(selfCopy + 12) = v67 & 1;
}

- (void)_configureLayoutForSections:(uint64_t)sections
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(sections + 112);
  if (v2 && *(v2 + 56))
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = a2;
    v23 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v23)
    {
      v22 = *v27;
      do
      {
        v4 = 0;
        do
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v25 = v4;
          v5 = *(*(&v26 + 1) + 8 * v4);
          v6 = *(sections + 112);
          if (!v6 || !*(v6 + 56))
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:sel__registerDecorationItemsIfNeeded_ object:sections file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3147 description:{@"Invalid parameter not satisfying: %@", @"self.options.decorationRegistrationHandler"}];
          }

          v24 = v5;
          _backgroundDecorationViewsRequiringCustomViewClassRegistration = [v5 _backgroundDecorationViewsRequiringCustomViewClassRegistration];
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v8 = [_backgroundDecorationViewsRequiringCustomViewClassRegistration countByEnumeratingWithState:&v31 objects:v36 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v32;
            do
            {
              v11 = 0;
              do
              {
                if (*v32 != v10)
                {
                  objc_enumerationMutation(_backgroundDecorationViewsRequiringCustomViewClassRegistration);
                }

                v12 = *(*(&v31 + 1) + 8 * v11);
                v13 = *(sections + 112);
                if (v13)
                {
                  v14 = v13[7];
                }

                else
                {
                  v14 = 0;
                }

                v15 = *(v14 + 16);
                v16 = v13;
                v15(v14, v12);

                ++v11;
              }

              while (v9 != v11);
              v17 = [_backgroundDecorationViewsRequiringCustomViewClassRegistration countByEnumeratingWithState:&v31 objects:v36 count:16];
              v9 = v17;
            }

            while (v17);
          }

          group = [v24 group];
          if ([group _hasDecorationItemRequiringRegistration])
          {
            v30[0] = MEMORY[0x1E69E9820];
            v30[1] = 3221225472;
            v30[2] = __75___UICollectionCompositionalLayoutSolver__registerDecorationItemsIfNeeded___block_invoke;
            v30[3] = &unk_1E70FAC08;
            v30[4] = sections;
            [group _enumerateItemsWithHandler:v30];
          }

          v4 = v25 + 1;
        }

        while (v25 + 1 != v23);
        v20 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
        v23 = v20;
      }

      while (v20);
    }
  }
}

- (_UICollectionCompositionalLayoutSolverResolveResult)resolveForContainerChange:(uint64_t)change
{
  if (change)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_resolveForContainerChange_ object:change file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:1272 description:{@"Invalid parameter not satisfying: %@", @"container"}];
    }

    v4 = objc_alloc_init(_UICollectionCompositionalLayoutSolverResolveResult);
    v5 = (change + 48);
    [*(change + 48) effectiveContentSize];
    v7 = v6;
    v9 = v8;
    [a2 effectiveContentSize];
    v11 = v10;
    v13 = v12;
    if (a2)
    {
      v14 = a2[1];
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v16 = *v5;
    if (*v5)
    {
      v16 = v16[1];
    }

    v17 = v16;
    v18 = [v15 isEqual:v17];

    objc_storeStrong((change + 48), a2);
    v19 = *(change + 184);
    v20 = [v19 count];
    numberOfSections = [*(change + 72) numberOfSections];

    if (v18 && v7 == v11 && v9 == v13 && v20 == numberOfSections)
    {
      v22 = [(_UICollectionCompositionalLayoutSolver *)change _resolveOptionallyQueryingForSectionDefinitions:1 retainPreferredSizing:?];

      [(_UICollectionCompositionalLayoutSolver *)change _recomputeSolutionBookmarksAndContentSize];
      [(_UICollectionLayoutAuxillaryItemSolver *)*(change + 272) resolve];
      [(_UICollectionCompositionalLayoutSolver *)change _updateBookmarkOffsetsForGlobalSupplementariesIfNeeded];
      v4 = v22;
    }

    else
    {
      v23 = dyld_program_sdk_at_least();
      [(_UICollectionCompositionalLayoutSolver *)change _solveRetainingPreferredSizes:v23];
      [(_UICollectionCompositionalLayoutSolverResolveResult *)v4 setSectionsWereRequeried:1];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_UICollectionCompositionalLayoutSolverResolveResult)_resolveOptionallyQueryingForSectionDefinitions:(int)definitions retainPreferredSizing:
{
  if (self)
  {
    [(_UICollectionCompositionalLayoutSolver *)self _invalidateAllAttributes];
    Bookmark = [(_UICollectionCompositionalLayoutSolver *)self _firstBookmarkOffset];
    v8 = v7;
    if (a2)
    {
      [self _fetchUpdatedSectionDefinitionsFromSectionProvider];
    }

    else
    {
      [*(self + 184) valueForKey:@"section"];
    }
    v9 = ;
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (definitions && [*(self + 184) count])
    {
      v11 = 0;
      do
      {
        v12 = [*(self + 184) objectAtIndexedSubscript:v11];
        v13 = v12;
        if (v12)
        {
          v12 = *(v12 + 104);
        }

        copyByDirtyingPreferredSizes = [(_UICollectionPreferredSizes *)v12 copyByDirtyingPreferredSizes];
        v15 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
        [v10 setObject:copyByDirtyingPreferredSizes forKeyedSubscript:v15];

        ++v11;
      }

      while (v11 < [*(self + 184) count]);
    }

    v16 = objc_alloc_init(_UICollectionCompositionalLayoutSolverResolveResult);
    [(_UICollectionCompositionalLayoutSolverResolveResult *)v16 setSectionsWereRequeried:a2];
    if (a2)
    {
      [(_UICollectionCompositionalLayoutSolver *)self _configureLayoutForSections:v9];
    }

    [(_UICollectionCompositionalLayoutSolver *)self _solveWithSectionLayouts:v9 preferredSizesDict:v10 dataSourceSnapshot:*(self + 72) update:0];
    v17 = [(_UICollectionCompositionalLayoutSolver *)self _firstBookmarkOffset]- Bookmark;
    v19 = v18 - v8;
    if (*(self + 16) == 1)
    {
      v17 = UIPointRoundToScale(v17, v19, *(self + 144));
    }

    [(_UICollectionCompositionalLayoutSolverResolveResult *)v16 setContentOffsetAdjustment:v17, v19];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (_UICollectionCompositionalLayoutSolverResolveResult)resolveForUpdatingSectionDefinitionsWithContainer:(id *)container
{
  if (container)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_resolveForUpdatingSectionDefinitionsWithContainer_ object:container file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:1300 description:{@"Invalid parameter not satisfying: %@", @"container != nil"}];
    }

    v4 = objc_alloc_init(_UICollectionCompositionalLayoutSolverResolveResult);
    objc_storeStrong(container + 6, a2);
    [(_UICollectionCompositionalLayoutSolver *)container _solveRetainingPreferredSizes:?];
    [(_UICollectionCompositionalLayoutSolverResolveResult *)v4 setSectionsWereRequeried:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_UICollectionCompositionalLayoutSolverResolveResult)resolveForMarginsChange:(uint64_t)change
{
  if (change)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_resolveForMarginsChange_ object:change file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:1311 description:{@"Invalid parameter not satisfying: %@", @"container"}];
    }

    v4 = objc_alloc_init(_UICollectionCompositionalLayoutSolverResolveResult);
    objc_storeStrong((change + 48), a2);
    [(_UICollectionCompositionalLayoutSolver *)change _recomputeSolutionBookmarksAndContentSize];
    [(_UICollectionLayoutAuxillaryItemSolver *)*(change + 272) resolve];
    [(_UICollectionCompositionalLayoutSolver *)change _updateBookmarkOffsetsForGlobalSupplementariesIfNeeded];
    [(_UICollectionCompositionalLayoutSolver *)change _invalidateAllAttributes];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)resolveForScrollViewLayoutAdjustmentsChange:(id *)change
{
  if (change)
  {
    changeCopy = change;
    objc_storeStrong(change + 6, a2);
    change = [(_UICollectionCompositionalLayoutSolver *)changeCopy _resolveOptionallyQueryingForSectionDefinitions:1 retainPreferredSizing:?];
    v2 = vars8;
  }

  return change;
}

- (id)resolveForUpdatedGlobalSupplementaries:(void *)supplementaries
{
  if (supplementaries)
  {
    supplementariesCopy = supplementaries;
    v4 = [a2 copy];
    v5 = *(supplementariesCopy + 264);
    *(supplementariesCopy + 264) = v4;

    supplementaries = [(_UICollectionCompositionalLayoutSolver *)supplementariesCopy _resolveOptionallyQueryingForSectionDefinitions:1 retainPreferredSizing:?];
    v2 = vars8;
  }

  return supplementaries;
}

- (BOOL)shouldInvalidateForBoundsChange:(double)change requiresContainerUpdate:(double)update
{
  if (result)
  {
    v9 = result;
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_shouldInvalidateForBoundsChange_requiresContainerUpdate_ object:v9 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:1368 description:{@"Invalid parameter not satisfying: %@", @"requiresContainerUpdate"}];
    }

    *a2 = 0;
    if ([(_UICollectionCompositionalLayoutSolver *)v9 hasPinnedSupplementaryItems]|| *(v9 + 288) > 0)
    {
      return 1;
    }

    [*(v9 + 48) contentSize];
    v12 = 2;
    if (v10 != a5)
    {
      v12 = 3;
    }

    if (v11 == a6)
    {
      v12 = v10 != a5;
    }

    v13 = v10 != a5 || v11 != a6;
    *a2 = v13;
    return (v12 & *(v9 + 296)) != 0 || v13 && !dyld_program_sdk_at_least();
  }

  return result;
}

- (uint64_t)updatePreferredSizeIfNeededForPreferredLayoutAttributes:(void *)attributes withOriginalAttributes:(uint64_t)originalAttributes debugger:
{
  if (!self || *(self + 12) != 1)
  {
    return 0;
  }

  if (a2)
  {
    v8 = *(a2 + 288) & 1;
    v9 = (*(a2 + 288) & 3) == 0;
    if (v8)
    {
LABEL_8:
      indexPath = [attributes indexPath];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __130___UICollectionCompositionalLayoutSolver_updatePreferredSizeIfNeededForPreferredLayoutAttributes_withOriginalAttributes_debugger___block_invoke;
      aBlock[3] = &unk_1E70FA9D8;
      v39 = v8;
      v12 = indexPath;
      v37 = v12;
      originalAttributesCopy = originalAttributes;
      v13 = _Block_copy(aBlock);
      if (v9 && [v12 length] == 1)
      {
        elementKinds = [(_UICollectionLayoutAuxillaryItemSolver *)*(self + 272) elementKinds];
        _content = [(_UILabelConfiguration *)a2 _content];
        v16 = [elementKinds containsObject:_content];

        if (v16)
        {
          v17 = [v12 indexAtPosition:0];
          v18 = *(self + 272);
          _content2 = [(_UILabelConfiguration *)a2 _content];
          v20 = [(_UICollectionLayoutAuxillaryItemSolver *)v18 supplementaryFrameWithKind:_content2 index:v17];

          if (!v20)
          {
            v10 = 0;
            goto LABEL_29;
          }

          v21 = *(self + 280);
          supplementaryItem = [(_UICollectionLayoutFramesQueryResult *)v20 supplementaryItem];
          v10 = v13[2](v13, v21, attributes, a2, supplementaryItem, 0);
LABEL_28:

LABEL_29:
          goto LABEL_30;
        }
      }

      section = [v12 section];
      if (section >= [*(self + 184) count])
      {
        v10 = 0;
LABEL_30:

        return v10;
      }

      v24 = *(self + 184);
      v20 = [v24 objectAtIndexedSubscript:{objc_msgSend(v12, "section")}];

      if (v20)
      {
        v25 = *(v20 + 8);
      }

      else
      {
        v25 = 0;
      }

      supplementaryItem = v25;
      if (v8)
      {
        v21 = [supplementaryItem frameForIndex:{objc_msgSend(v12, "item")}];
        if (v21)
        {
          goto LABEL_18;
        }
      }

      else
      {
        _content3 = [(_UILabelConfiguration *)a2 _content];
        v21 = [supplementaryItem supplementaryFrameWithKind:_content3 index:{objc_msgSend(v12, "item")}];

        if (v21)
        {
LABEL_18:
          v26 = v21[5];
          v27 = [v26 size];
          isEstimated = [v27 isEstimated];

          _preferredSizingData = [(UICollectionViewLayoutAttributes *)a2 _preferredSizingData];
          v30 = _preferredSizingData;
          if ((isEstimated & 1) != 0 || _preferredSizingData)
          {
            if (v20)
            {
              v32 = *(v20 + 104);
            }

            else
            {
              v32 = 0;
            }

            v33 = v32;
            v34 = v21[5];
            v10 = (v13)[2](v13, v33, attributes, a2, v34, v30);
          }

          else
          {
            v10 = 0;
          }

          goto LABEL_28;
        }
      }

      v10 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if (v9)
  {
    goto LABEL_8;
  }

  return 0;
}

- (id)resolveForInvalidatedPreferredAttributes:(double)attributes scrollOffset:(double)offset visibleRect:(double)rect
{
  if (self)
  {
    v16 = *(self + 128);
    if (!v16)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_resolveForInvalidatedPreferredAttributes_scrollOffset_visibleRect_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:1587 description:@"No invalidation context class specified."];

      v16 = *(self + 128);
    }

    v17 = objc_alloc_init(v16);
    [v17 _setIntent:5];
    if ([a2 count])
    {
      v18 = *(self + 64);
      if ((v18 - 1) <= 1 && ((v19 = _UIPointValueForAxis(*(self + 64), attributes, offset), v20 = _UIPointValueForAxis(v18, rect, a6), v19 < 0.0) ? (v21 = v20 > 44.0) : (v21 = 0), v21))
      {
        v23 = *(self + 64);
        v24 = _UIPointValueForAxis(v23, rect, a6);
        v93 = 0;
        v94 = &v93;
        v95 = 0x3032000000;
        v96 = __Block_byref_object_copy__28;
        v97 = __Block_byref_object_dispose__28;
        v98 = 0;
        v92[0] = 0;
        v92[1] = v92;
        v92[2] = 0x2020000000;
        v92[3] = 0x7FEFFFFFFFFFFFFFLL;
        v86 = 0;
        v87 = &v86;
        v88 = 0x3032000000;
        v89 = __Block_byref_object_copy__28;
        v90 = __Block_byref_object_dispose__28;
        v91 = 0;
        v85[0] = 0;
        v85[1] = v85;
        v85[2] = 0x2020000000;
        v85[3] = 0x7FEFFFFFFFFFFFFFLL;
        v71 = MEMORY[0x1E69E9820];
        v72 = 3221225472;
        v73 = __129___UICollectionCompositionalLayoutSolver__layoutAttributesOfFirstElementEligibleForPreferredSizingContentOffsetAdjustmentInRect___block_invoke;
        v74 = &unk_1E70FAA00;
        rectCopy = rect;
        v80 = a6;
        v81 = a7;
        v82 = a8;
        v83 = v23;
        v84 = v24;
        v75 = &v93;
        v76 = v92;
        v77 = v85;
        v78 = &v86;
        [(_UICollectionCompositionalLayoutSolver *)self _layoutAttributesForElementsInRect:rect handler:a6, a7, a8];
        v25 = v94[5];
        if (!v25)
        {
          v25 = v87[5];
        }

        v22 = v25;
        _Block_object_dispose(v85, 8);
        _Block_object_dispose(&v86, 8);

        _Block_object_dispose(v92, 8);
        _Block_object_dispose(&v93, 8);
      }

      else
      {
        v22 = 0;
      }

      v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v71 = 0;
      v72 = &v71;
      v73 = 0x3032000000;
      v74 = __Block_byref_object_copy__28;
      v75 = __Block_byref_object_dispose__28;
      v76 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __108___UICollectionCompositionalLayoutSolver_resolveForInvalidatedPreferredAttributes_scrollOffset_visibleRect___block_invoke;
      v68[3] = &unk_1E70FAA28;
      v70 = &v71;
      v68[4] = self;
      v27 = v17;
      v69 = v27;
      [a2 enumerateObjectsUsingBlock:v68];
      v28 = *(v72 + 40);
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __108___UICollectionCompositionalLayoutSolver_resolveForInvalidatedPreferredAttributes_scrollOffset_visibleRect___block_invoke_2;
      v59[3] = &unk_1E70FAAC8;
      v59[4] = self;
      rectCopy2 = rect;
      v62 = a6;
      v63 = a7;
      v64 = a8;
      attributesCopy = attributes;
      offsetCopy = offset;
      v29 = v27;
      v60 = v29;
      v67 = sel_resolveForInvalidatedPreferredAttributes_scrollOffset_visibleRect_;
      [v28 enumerateKeysAndObjectsUsingBlock:v59];
      [(_UICollectionCompositionalLayoutSolver *)self _recomputeSolutionBookmarksAndContentSize];
      v30 = *(self + 272);
      [(_UICollectionLayoutAuxillaryItemSolver *)v30 resolve];

      [(_UICollectionCompositionalLayoutSolver *)self _updateBookmarkOffsetsForGlobalSupplementariesIfNeeded];
      [*(self + 208) removeAllObjects];
      [*(self + 216) removeAllObjects];
      [*(self + 224) removeAllObjects];
      v31 = *MEMORY[0x1E695EFF8];
      v32 = *(MEMORY[0x1E695EFF8] + 8);
      if (!v22)
      {
        goto LABEL_28;
      }

      v33 = *(v22 + 72);
      if (v33)
      {
        indexPath = [v22 indexPath];
        v36 = [(_UICollectionCompositionalLayoutSolver *)self layoutAttributesForItemAtIndexPath:indexPath];
      }

      else
      {
        indexPath = *(v22 + 1);
        indexPath2 = [v22 indexPath];
        if ((v33 & 2) != 0)
        {
          [(_UICollectionCompositionalLayoutSolver *)self layoutAttributesForDecorationViewOfKind:indexPath withIndexPath:indexPath2];
        }

        else
        {
          [(_UICollectionCompositionalLayoutSolver *)self layoutAttributesForSupplementaryViewOfKind:indexPath withIndexPath:indexPath2];
        }
        v36 = ;
      }

      if (v36)
      {
        [v22 frame];
        v38 = v37;
        v40 = v39;
        v42 = v41;
        v44 = v43;
        [v36 frame];
        v49 = *(self + 64);
        if (v49 == 1)
        {
          MaxX = CGRectGetMaxX(*&v45);
          v101.origin.x = v38;
          v101.origin.y = v40;
          v101.size.width = v42;
          v101.size.height = v44;
          v55 = CGRectGetMaxX(v101);
          v52 = _UISetPointValueForAxis(1, v31, v32, MaxX - v55);
          goto LABEL_26;
        }

        if (v49 == 2)
        {
          MaxY = CGRectGetMaxY(*&v45);
          v100.origin.x = v38;
          v100.origin.y = v40;
          v100.size.width = v42;
          v100.size.height = v44;
          v51 = CGRectGetMaxY(v100);
          v52 = _UISetPointValueForAxis(2, v31, v32, MaxY - v51);
LABEL_26:
          v31 = v52;
          v32 = v53;
        }
      }

LABEL_28:
      [v29 setContentOffsetAdjustment:{v31, v32}];
      v56 = v60;
      v17 = v29;

      _Block_object_dispose(&v71, 8);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)itemsWithoutPreferredSizesInGroupsWithItemsAtIndexPaths:(uint64_t)paths
{
  v36 = *MEMORY[0x1E69E9840];
  if (paths)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_itemsWithoutPreferredSizesInGroupsWithItemsAtIndexPaths_ object:paths file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:1775 description:{@"Invalid parameter not satisfying: %@", @"indexPaths != nil"}];
    }

    pathsCopy = paths;
    v4 = *(paths + 184);
    v27 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v5 = a2;
    v6 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      do
      {
        v9 = 0;
        do
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v31 + 1) + 8 * v9);
          section = [v10 section];
          if (section >= [v4 count])
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:sel_itemsWithoutPreferredSizesInGroupsWithItemsAtIndexPaths_ object:pathsCopy file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:1782 description:{@"Compositional Layout internal error: Layout solver queried for preferred size group in invalid section %ld. Section count: %ld", section, objc_msgSend(v4, "count")}];
          }

          v12 = [v4 objectAtIndexedSubscript:section];
          v13 = v12;
          if (v12)
          {
            v14 = *(v12 + 8);
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;
          v16 = [v15 preferredSizeGroupingRangeForItemAtIndex:{objc_msgSend(v10, "item")}];
          v18 = v17;

          if (v18 >= 2 && v16 != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (v13)
            {
              v20 = v13[13];
            }

            else
            {
              v20 = 0;
            }

            v21 = [(_UICollectionPreferredSizes *)v20 indexesOfItemsWithoutPreferredSizesInRange:v16, v18];
            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v28[2] = __98___UICollectionCompositionalLayoutSolver_itemsWithoutPreferredSizesInGroupsWithItemsAtIndexPaths___block_invoke;
            v28[3] = &unk_1E70FAA50;
            v30 = section;
            v29 = v27;
            [v21 enumerateIndexesUsingBlock:v28];
          }

          ++v9;
        }

        while (v7 != v9);
        v23 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
        v7 = v23;
      }

      while (v23);
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (uint64_t)_supportsSwipeActionsForIndexPath:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    section = [a2 section];
    if (section >= [*(v2 + 184) count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:section];
      [currentHandler handleFailureInMethod:sel__supportsSwipeActionsForIndexPath_ object:v2 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:1816 description:{@"Invalid section %@.", v8}];
    }

    v4 = [*(v2 + 184) objectAtIndexedSubscript:section];
    v5 = v4;
    if (v4)
    {
      v4 = v4[2];
    }

    _wantsSwipeActions = [v4 _wantsSwipeActions];

    return _wantsSwipeActions;
  }

  return result;
}

- (id)_leadingSwipeActionsConfigurationForIndexPath:(uint64_t)path
{
  if (path)
  {
    section = [a2 section];
    if (section >= [*(path + 184) count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:section];
      [currentHandler handleFailureInMethod:sel__leadingSwipeActionsConfigurationForIndexPath_ object:path file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:1823 description:{@"Invalid section %@.", v10}];
    }

    v5 = [*(path + 184) objectAtIndexedSubscript:section];
    v6 = v5;
    if (v5)
    {
      v5 = v5[2];
    }

    v7 = [v5 _leadingSwipeActionsConfigurationForIndexPath:a2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_trailingSwipeActionsConfigurationForIndexPath:(uint64_t)path
{
  if (path)
  {
    section = [a2 section];
    if (section >= [*(path + 184) count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:section];
      [currentHandler handleFailureInMethod:sel__trailingSwipeActionsConfigurationForIndexPath_ object:path file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:1830 description:{@"Invalid section %@.", v10}];
    }

    v5 = [*(path + 184) objectAtIndexedSubscript:section];
    v6 = v5;
    if (v5)
    {
      v5 = v5[2];
    }

    v7 = [v5 _trailingSwipeActionsConfigurationForIndexPath:a2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_updateStyleForSwipeActionsConfiguration:(void *)configuration indexPath:
{
  if (self)
  {
    section = [configuration section];
    if (section >= [*(self + 184) count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:section];
      [currentHandler handleFailureInMethod:sel__updateStyleForSwipeActionsConfiguration_indexPath_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:1837 description:{@"Invalid section %@.", v8}];
    }

    v6 = [*(self + 184) objectAtIndexedSubscript:section];
    v9 = v6;
    if (v6)
    {
      v6 = v6[2];
    }

    [v6 _updateStyleForSwipeActionsConfiguration:a2];
  }
}

- (void)_willBeginSwiping
{
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v1 = *(self + 184);
    v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v10;
      do
      {
        v5 = 0;
        do
        {
          if (*v10 != v4)
          {
            objc_enumerationMutation(v1);
          }

          v6 = *(*(&v9 + 1) + 8 * v5);
          if (v6)
          {
            v7 = *(v6 + 16);
          }

          else
          {
            v7 = 0;
          }

          [v7 _willBeginSwiping];
          ++v5;
        }

        while (v3 != v5);
        v8 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
        v3 = v8;
      }

      while (v8);
    }
  }
}

- (void)_didEndSwiping
{
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v1 = *(self + 184);
    v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v10;
      do
      {
        v5 = 0;
        do
        {
          if (*v10 != v4)
          {
            objc_enumerationMutation(v1);
          }

          v6 = *(*(&v9 + 1) + 8 * v5);
          if (v6)
          {
            v7 = *(v6 + 16);
          }

          else
          {
            v7 = 0;
          }

          [v7 _didEndSwiping];
          ++v5;
        }

        while (v3 != v5);
        v8 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
        v3 = v8;
      }

      while (v8);
    }
  }
}

- (uint64_t)_anchorForAuxiliaryElementOfKind:(uint64_t)kind
{
  if (!kind)
  {
    return 0;
  }

  if (!a2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__anchorForAuxiliaryElementOfKind_ object:kind file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:1882 description:{@"Invalid parameter not satisfying: %@", @"elementKind != nil"}];
  }

  v4 = *(kind + 272);
  elementKinds = [(_UICollectionLayoutAuxillaryItemSolver *)v4 elementKinds];
  v6 = [elementKinds containsObject:a2];

  if (v6)
  {
    return 1;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = *(kind + 184);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75___UICollectionCompositionalLayoutSolver__anchorForAuxiliaryElementOfKind___block_invoke;
  v11[3] = &unk_1E70FAAF0;
  v11[4] = a2;
  v11[5] = &v12;
  [v8 enumerateObjectsUsingBlock:v11];

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

- (void)setOrthogonalOffset:(double)offset forSection:(double)section
{
  v45 = *MEMORY[0x1E69E9840];
  if (self && [*(self + 184) count] > a2)
  {
    v8 = [*(self + 184) objectAtIndexedSubscript:a2];
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 16);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    if ([v11 scrollsOrthogonally])
    {
      if (v9)
      {
        v12 = v9[1];
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      [v13 setOrthogonalOffset:{offset, section}];
      memoizedDescriptor = [(_UICollectionSectionSolutionBookmark *)v9 memoizedDescriptor];
      if (memoizedDescriptor)
      {
        memoizedDescriptor[12] = offset;
        memoizedDescriptor[13] = section;
      }

      [v13 orthogonalScrollingPrefetchingUnitVector];
      v16 = v15;
      v18 = v17;

      memoizedDescriptor2 = [(_UICollectionSectionSolutionBookmark *)v9 memoizedDescriptor];
      if (memoizedDescriptor2)
      {
        memoizedDescriptor2[10] = v16;
        memoizedDescriptor2[11] = v18;
      }
    }

    if (*(self + 136))
    {
      v20 = objc_alloc_init(UICollectionViewLayoutInvalidationContext);
      [(UICollectionViewLayoutInvalidationContext *)v20 _setIntent:6];
      if ([v11 _hasVisibleItemsHandler])
      {
        memoizedDescriptor3 = [(_UICollectionSectionSolutionBookmark *)v9 memoizedDescriptor];
        v35 = v11;
        v36 = v9;
        if (memoizedDescriptor3)
        {
          v23 = memoizedDescriptor3[14];
          v22 = memoizedDescriptor3[15];
          v24 = memoizedDescriptor3[16];
          v25 = memoizedDescriptor3[17];
        }

        else
        {
          v22 = 0.0;
          v24 = 0.0;
          v25 = 0.0;
          v23 = 0.0;
        }

        v26 = [(_UICollectionCompositionalLayoutSolver *)self mutatedVisibleItemsForElementsForVisibleBounds:v23, v22, v24, v25];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v27 = [v26 countByEnumeratingWithState:&v37 objects:v44 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v38;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v38 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v37 + 1) + 8 * i);
              if ([v31 representedElementCategory])
              {
                if ([v31 representedElementCategory] == 1)
                {
                  representedElementKind = [v31 representedElementKind];
                  indexPath = [v31 indexPath];
                  v42 = indexPath;
                  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
                  [(UICollectionViewLayoutInvalidationContext *)v20 invalidateSupplementaryElementsOfKind:representedElementKind atIndexPaths:v34];
                }

                else
                {
                  if ([v31 representedElementCategory] != 2)
                  {
                    continue;
                  }

                  representedElementKind = [v31 representedElementKind];
                  indexPath = [v31 indexPath];
                  v41 = indexPath;
                  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
                  [(UICollectionViewLayoutInvalidationContext *)v20 invalidateDecorationElementsOfKind:representedElementKind atIndexPaths:v34];
                }
              }

              else
              {
                representedElementKind = [v31 indexPath];
                v43 = representedElementKind;
                indexPath = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
                [(UICollectionViewLayoutInvalidationContext *)v20 invalidateItemsAtIndexPaths:indexPath];
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v37 objects:v44 count:16];
          }

          while (v28);
        }

        v11 = v35;
        v9 = v36;
      }

      (*(*(self + 136) + 16))();
    }
  }
}

- (_BYTE)extendedAttributesQueryIncludingOrthogonalScrollingRegions:(double)regions
{
  selfCopy = self;
  v33 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v11 = selfCopy[13];
    v12 = [(_UICollectionCompositionalLayoutSolver *)selfCopy _attributesQueryInfosForQueryRect:a2, regions, a4, a5];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      do
      {
        v16 = 0;
        do
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v28 + 1) + 8 * v16);
          if (v17)
          {
            v19 = v17[2];
            v18 = v17[3];
            v21 = v17[4];
            v20 = v17[5];
            v17 = *(v17 + 1);
          }

          else
          {
            v20 = 0.0;
            v21 = 0.0;
            v18 = 0.0;
            v19 = 0.0;
          }

          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __101___UICollectionCompositionalLayoutSolver_extendedAttributesQueryIncludingOrthogonalScrollingRegions___block_invoke;
          v24[3] = &unk_1E70FAB18;
          v27 = v11;
          v26 = v17;
          v24[4] = selfCopy;
          v25 = v10;
          [(_UICollectionCompositionalLayoutSolver *)selfCopy _layoutAttributesForElementsInRect:v24 handler:v19, v18, v21, v20];

          ++v16;
        }

        while (v14 != v16);
        v22 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
        v14 = v22;
      }

      while (v22);
    }

    selfCopy = [v10 allObjects];
  }

  return selfCopy;
}

- (uint64_t)orthogonalScrollingSectionSupplementaryShouldScrollWithContentForIndexPath:(uint64_t)path elementKind:
{
  if (!self || [a2 length] == 1)
  {
    return 0;
  }

  section = [a2 section];
  if (section >= [*(self + 184) count])
  {
    return 1;
  }

  v8 = [*(self + 184) objectAtIndexedSubscript:section];
  v9 = v8;
  if (v8)
  {
    v10 = *(v8 + 8);
    v11 = v9[2];
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = v11;
  if ([v12 scrollsOrthogonally])
  {
    v13 = [v10 sectionSupplementaryFrameWithKind:path index:{objc_msgSend(a2, "item")}];
    v6 = v13 == 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (uint64_t)orthogonalScrollingSectionDecorationShouldScrollWithContentForIndexPath:(uint64_t)path elementKind:
{
  if (!self || [a2 length] == 1)
  {
    return 0;
  }

  section = [a2 section];
  if (section >= [*(self + 184) count])
  {
    return 1;
  }

  v8 = [*(self + 184) objectAtIndexedSubscript:section];
  v9 = v8;
  if (v8)
  {
    v10 = *(v8 + 8);
    v11 = v9[2];
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = v11;
  if ([v12 scrollsOrthogonally])
  {
    [a2 item];
    v13 = [v12 _auxillaryItemForElementKind:path category:2];
    v14 = v13;
    if (v13)
    {
      decorationItem = [v13 decorationItem];
      if ([decorationItem isBackgroundDecoration])
      {
        _clipsBackgroundDecorationsToContent = [v12 _clipsBackgroundDecorationsToContent];
      }

      else
      {
        _clipsBackgroundDecorationsToContent = 1;
      }
    }

    else
    {
      _clipsBackgroundDecorationsToContent = 1;
    }
  }

  else
  {
    _clipsBackgroundDecorationsToContent = 1;
  }

  return _clipsBackgroundDecorationsToContent;
}

- (double)orthogonalFrameWithOffsetElidedForItemWithLayoutAttributes:(CGFloat)attributes frame:(CGFloat)frame
{
  if (!self)
  {
    return 0.0;
  }

  if (a2)
  {
    indexPath = [a2 indexPath];
    if ([indexPath length] < 2)
    {
      goto LABEL_15;
    }

    if (*(self + 13) != 1)
    {
      goto LABEL_15;
    }

    section = [indexPath section];
    if (![*(self + 88) containsIndex:section] || section >= objc_msgSend(*(self + 184), "count"))
    {
      goto LABEL_15;
    }

    v14 = *(a2 + 288);
    if ((v14 & 1) == 0)
    {
      v15 = *(a2 + 8);
      if ((v14 & 2) != 0)
      {
        v17 = [(_UICollectionCompositionalLayoutSolver *)self orthogonalScrollingSectionDecorationShouldScrollWithContentForIndexPath:indexPath elementKind:v15];

        if (!v17)
        {
LABEL_15:

          return attributes;
        }
      }

      else
      {
        v16 = [(_UICollectionCompositionalLayoutSolver *)self orthogonalScrollingSectionSupplementaryShouldScrollWithContentForIndexPath:indexPath elementKind:v15];

        if ((v16 & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    v18 = [*(self + 184) objectAtIndexedSubscript:section];
    v19 = v18;
    if (v18)
    {
      v18 = v18[1];
    }

    [v18 orthogonalOffset];
    v21 = attributes - v20;
    v23.origin.x = attributes;
    v23.origin.y = frame;
    v23.size.width = a5;
    v23.size.height = a6;
    CGRectGetWidth(v23);
    v24.origin.x = attributes;
    v24.origin.y = frame;
    v24.size.width = a5;
    v24.size.height = a6;
    CGRectGetHeight(v24);

    attributes = v21;
    goto LABEL_15;
  }

  return attributes;
}

- (BOOL)elementShouldAppearAboveOrthogonalScrollingContainer:(uint64_t)container
{
  v2 = 0;
  if (container && a2)
  {
    indexPath = [a2 indexPath];
    v6 = indexPath;
    if (!indexPath || *(container + 13) != 1 || (*(a2 + 288) & 3) != 0)
    {
      goto LABEL_6;
    }

    if ([indexPath length] == 1)
    {
      if ([a2 zIndex] >= 1)
      {
        v8 = [v6 indexAtPosition:0];
        v9 = *(container + 272);
        v10 = *(a2 + 8);
        v11 = [(_UICollectionLayoutAuxillaryItemSolver *)v9 supplementaryFrameWithKind:v10 index:v8];

        v2 = v11 != 0;
LABEL_12:

        goto LABEL_7;
      }
    }

    else if ([v6 length] == 2 && dyld_program_sdk_at_least() && objc_msgSend(a2, "zIndex") >= 1)
    {
      section = [v6 section];
      v11 = *(container + 184);
      if ([v11 count] <= section)
      {
        v2 = 0;
      }

      else
      {
        v13 = [v11 objectAtIndexedSubscript:section];
        v14 = v13;
        if (v13)
        {
          v15 = *(v13 + 8);
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;
        item = [v6 item];
        v18 = *(a2 + 8);
        v19 = [v16 sectionSupplementaryFrameWithKind:v18 index:item];

        v2 = v19 != 0;
      }

      goto LABEL_12;
    }

LABEL_6:
    v2 = 0;
LABEL_7:
  }

  return v2;
}

- (uint64_t)elementShouldAppearBelowOrthogonalScrollingContainer:(uint64_t)container
{
  v2 = 0;
  if (container && a2)
  {
    if (dyld_program_sdk_at_least() && *(container + 13) == 1)
    {
      indexPath = [a2 indexPath];
      v6 = indexPath;
      if (indexPath && [indexPath length] == 2 && objc_msgSend(a2, "zIndex") <= 0 && (*(a2 + 288) & 2) != 0)
      {
        v8 = *(a2 + 8);
        v2 = [(_UICollectionCompositionalLayoutSolver *)container orthogonalScrollingSectionDecorationShouldScrollWithContentForIndexPath:v6 elementKind:v8]^ 1;
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

- (double)_containerByApplyingInsetsFromEnvironment:(double)environment toSize:(double)size onAxis:
{
  v4 = [(_UIContentInsetsEnvironment *)self layoutContainerForContainerSize:a2 layoutAxis:environment, size];
  v5 = [_UICollectionLayoutContainer alloc];
  [v4 effectiveContentSize];
  v8 = [(_UICollectionLayoutContainer *)v5 initWithContentSize:v6 contentInsets:v7, 0.0, 0.0, 0.0, 0.0];

  return v8;
}

- (void)_generateInsetsEnvironmentsForLayoutSection:(double *)section withParentInsetEnvironment:(void *)environment sectionEnv:(void *)env supplementaryEnv:
{
  if (a2)
  {
    if (section)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__generateInsetsEnvironmentsForLayoutSection_withParentInsetEnvironment_sectionEnv_supplementaryEnv_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2303 description:{@"Invalid parameter not satisfying: %@", @"layoutSection != nil"}];

    if (section)
    {
LABEL_3:
      if (environment)
      {
        goto LABEL_4;
      }

LABEL_12:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:sel__generateInsetsEnvironmentsForLayoutSection_withParentInsetEnvironment_sectionEnv_supplementaryEnv_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2305 description:{@"Invalid parameter not satisfying: %@", @"outSectionEnv != nil"}];

      if (env)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:sel__generateInsetsEnvironmentsForLayoutSection_withParentInsetEnvironment_sectionEnv_supplementaryEnv_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2304 description:{@"Invalid parameter not satisfying: %@", @"parentInsetEnvironment != nil"}];

  if (!environment)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (env)
  {
    goto LABEL_5;
  }

LABEL_13:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:sel__generateInsetsEnvironmentsForLayoutSection_withParentInsetEnvironment_sectionEnv_supplementaryEnv_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:2306 description:{@"Invalid parameter not satisfying: %@", @"outSuppEnv != nil"}];

LABEL_5:
  contentInsetsReference = [a2 contentInsetsReference];
  [a2 _minimumContentInsetsReferenceInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [_UIContentInsetsEnvironment alloc];
  v40 = [(_UIContentInsetsEnvironment *)v19 initWithParentEnvironment:section insetsReference:contentInsetsReference minimumInsets:v20, v21, v22, v23, v24, v12, v14, v16, v18];
  *environment = v40;
  if ([a2 supplementaryContentInsetsReference])
  {
    contentInsetsReference = [a2 supplementaryContentInsetsReference];
    [a2 _minimumSupplementaryContentInsetsReferenceInsets];
    v12 = v25;
    v14 = v26;
    v16 = v27;
    v18 = v28;
  }

  v29 = [_UIContentInsetsEnvironment alloc];
  v35 = [(_UIContentInsetsEnvironment *)v29 initWithParentEnvironment:section insetsReference:contentInsetsReference minimumInsets:v30, v31, v32, v33, v34, v12, v14, v16, v18];
  *env = v35;
}

- (id)_snapshotBookmarks:(void *)bookmarks
{
  if ([bookmarks count])
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([bookmarks count])
    {
      v3 = 0;
      do
      {
        v4 = [bookmarks objectAtIndexedSubscript:v3];
        v5 = [_UICollectionCompositionalLayoutSolverBookmarkStateSnapshotter alloc];
        if (v5)
        {
          v9.receiver = v5;
          v9.super_class = _UICollectionCompositionalLayoutSolverBookmarkStateSnapshotter;
          v6 = objc_msgSendSuper2(&v9, sel_init);
          v7 = v6;
          if (v6)
          {
            objc_storeStrong(v6 + 1, v4);
            v7[2] = v3;
          }
        }

        else
        {
          v7 = 0;
        }

        [v2 addObject:v7];

        ++v3;
      }

      while (v3 < [bookmarks count]);
    }
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

- (double)_globalFrameForSolution:(double)solution offset:
{
  [a2 contentFrameIncludingAuxiliaries];
  width = v19.size.width;
  height = v19.size.height;
  if (!CGRectIsEmpty(v19))
  {
    [*(self + 48) contentSize];
    v9 = v8;
    v11 = v10;
    layoutSection = [a2 layoutSection];
    scrollsOrthogonally = [layoutSection scrollsOrthogonally];

    layoutAxis = [a2 layoutAxis];
    v15 = layoutAxis;
    if (scrollsOrthogonally)
    {
      v16 = _UISizeValueForAxis(layoutAxis, v9, v11);
      _UISetSizeValueForAxis(v15, width, height, v16);
    }

    else
    {
      if (layoutAxis == 1)
      {
        v17 = 2;
      }

      else
      {
        v17 = layoutAxis == 2;
      }

      _UISizeClampToMinimumSizeForAxis(v17, width, height, v9, v11);
    }
  }

  return solution;
}

- (void)_restoreStateFromBookmarkSnapshots:(void *)snapshots bookmarks:(uint64_t)bookmarks update:
{
  v39 = *MEMORY[0x1E69E9840];
  if (self && [a2 count])
  {
    if (bookmarks)
    {
      v7 = *(bookmarks + 16);
    }

    else
    {
      v8 = [a2 count];
      if (v8 != [snapshots count])
      {
        return;
      }

      v7 = 0;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = a2;
    v10 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (!v10)
    {
      goto LABEL_37;
    }

    v11 = v10;
    v12 = *v35;
    v31 = v9;
    snapshotsCopy = snapshots;
    while (1)
    {
      v13 = 0;
      do
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v34 + 1) + 8 * v13);
        if (v14)
        {
          if (*(v14 + 16) == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_31;
          }

          v15 = *(v14 + 16);
          if (v7)
          {
LABEL_15:
            v15 = [v7 finalSectionIndexForInitialSectionIndex:{v31, snapshotsCopy}];
            if (v15 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {
          v15 = 0;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        if (v15 >= [snapshots count])
        {
          v29 = *(__UILogGetCategoryCachedImpl("CollectionLayout", &_restoreStateFromBookmarkSnapshots_bookmarks_update____s_category) + 8);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "Error: could not restore orthogonal content offset after update. This may result in a UI glitch - please file a bug on UIKit.", buf, 2u);
          }
        }

        else
        {
          v16 = [snapshots objectAtIndexedSubscript:v15];
          if (v14)
          {
            v17 = *(v14 + 8);
            if (v17)
            {
              v17 = v17[1];
            }

            v18 = v17;
            if (v16)
            {
              v19 = v16[1];
            }

            else
            {
              v19 = 0;
            }

            v20 = v19;
            layoutSection = [v18 layoutSection];
            if ([layoutSection scrollsOrthogonally])
            {
              layoutSection2 = [v20 layoutSection];
              scrollsOrthogonally = [layoutSection2 scrollsOrthogonally];

              if (scrollsOrthogonally)
              {
                layoutAxis = [v20 layoutAxis];
                [v18 orthogonalOffset];
                v26 = v25;
                v28 = v27;
                [v20 contentFrameIncludingAuxiliaries];
                if (layoutAxis == [v18 layoutAxis])
                {
                  [v20 setOrthogonalOffset:{v26, v28}];
                }
              }
            }

            else
            {
            }

            v9 = v31;
            snapshots = snapshotsCopy;
          }
        }

LABEL_31:
        ++v13;
      }

      while (v11 != v13);
      v30 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
      v11 = v30;
      if (!v30)
      {
LABEL_37:

        return;
      }
    }
  }
}

- (double)_validatedRoundedFrame:(uint64_t)frame forElementOfCategory:(uint64_t)category atIndexPath:(CGFloat)path elementKind:(CGFloat)kind
{
  v16 = *(self + 16);
  v17 = *(self + 144);
  if (dyld_program_sdk_at_least())
  {
    *&rect.origin.y = MEMORY[0x1E69E9820];
    *&rect.size.width = 3221225472;
    *&rect.size.height = __110___UICollectionCompositionalLayoutSolver__validatedRoundedFrame_forElementOfCategory_atIndexPath_elementKind___block_invoke_2;
    v33 = &unk_1E70FAB90;
    frameCopy = frame;
    categoryCopy = category;
    selfCopy = self;
    v37 = a2;
    v18 = _Block_copy(&rect.origin.y);
    if (__110___UICollectionCompositionalLayoutSolver__validatedRoundedFrame_forElementOfCategory_atIndexPath_elementKind___block_invoke(path, kind, a7, a8))
    {
      if (!v16)
      {
LABEL_9:

        return path;
      }

      if (fabs(v17) >= 2.22044605e-16)
      {
        v19 = v17;
      }

      else
      {
        v19 = 1.0;
      }

      v38.origin.x = path;
      v38.origin.y = kind;
      v38.size.width = a7;
      v38.size.height = a8;
      v20 = round(v19 * CGRectGetMinX(v38)) / v19;
      v39.origin.x = path;
      v39.origin.y = kind;
      v39.size.width = a7;
      v39.size.height = a8;
      v31 = round(v19 * CGRectGetMinY(v39)) / v19;
      v40.origin.x = path;
      v40.origin.y = kind;
      v40.size.width = a7;
      v40.size.height = a8;
      v21 = round(v19 * CGRectGetWidth(v40)) / v19;
      v41.origin.x = path;
      v41.origin.y = kind;
      v41.size.width = a7;
      v41.size.height = a8;
      v22 = round(v19 * CGRectGetHeight(v41)) / v19;
      if (__110___UICollectionCompositionalLayoutSolver__validatedRoundedFrame_forElementOfCategory_atIndexPath_elementKind___block_invoke(v20, v31, v21, v22))
      {
        path = v20;
        goto LABEL_9;
      }

      v28 = MEMORY[0x1E696AD60];
      v47.origin.x = v20;
      v47.origin.y = v31;
      v47.size.width = v21;
      v47.size.height = v22;
      v26 = NSStringFromCGRect(v47);
      v48.origin.x = path;
      v48.origin.y = kind;
      v48.size.width = a7;
      v48.size.height = a8;
      v29 = NSStringFromCGRect(v48);
      v27 = [v28 stringWithFormat:@"UICollectionViewCompositionalLayout: Invalid frame %@ generated when rounding frame %@ to screen scale (%g).", v26, v29, *&v17];
    }

    else
    {
      v25 = MEMORY[0x1E696AD60];
      v46.origin.x = path;
      v46.origin.y = kind;
      v46.size.width = a7;
      v46.size.height = a8;
      v26 = NSStringFromCGRect(v46);
      v27 = [v25 stringWithFormat:@"UICollectionViewCompositionalLayout: Invalid frame generated: %@.", v26];
    }

    (*(v18 + 2))(v18, v27);
    v30 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v27 userInfo:0];
    objc_exception_throw(v30);
  }

  if (v16)
  {
    if (fabs(v17) < 2.22044605e-16)
    {
      v17 = 1.0;
    }

    v42.origin.x = path;
    v42.origin.y = kind;
    v42.size.width = a7;
    v42.size.height = a8;
    v23 = round(v17 * CGRectGetMinX(v42)) / v17;
    v43.origin.x = path;
    v43.origin.y = kind;
    v43.size.width = a7;
    v43.size.height = a8;
    CGRectGetMinY(v43);
    v44.origin.x = path;
    v44.origin.y = kind;
    v44.size.width = a7;
    v44.size.height = a8;
    CGRectGetWidth(v44);
    v45.origin.x = path;
    v45.origin.y = kind;
    v45.size.width = a7;
    v45.size.height = a8;
    CGRectGetHeight(v45);
    return v23;
  }

  return path;
}

- (id)_existingSectionDefinitionForSectionIndex:(uint64_t)index
{
  if (index)
  {
    v3 = *(index + 184);
    if ([v3 count] <= a2)
    {
      v7 = 0;
    }

    else
    {
      v4 = [v3 objectAtIndexedSubscript:a2];
      v5 = v4;
      if (v4)
      {
        v6 = *(v4 + 16);
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)_sectionHasBackgroundDecorationView:(uint64_t)view
{
  if ([*(view + 184) count] <= a2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__sectionHasBackgroundDecorationView_ object:view file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3132 description:{@"Invalid parameter not satisfying: %@", @"sectionIndex<self.solutionBookmarks.count"}];
  }

  v4 = *(view + 184);
  v5 = [v4 objectAtIndexedSubscript:a2];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _hasBackgroundDecorationItem = [v8 _hasBackgroundDecorationItem];

  return _hasBackgroundDecorationItem;
}

- (void)_injectPreferredSizingDataIntoToLayoutAttributes:(void *)attributes atIndexPath:
{
  if ([attributes length] != 1)
  {
    section = [attributes section];
    if (section < [*(self + 184) count])
    {
      v7 = *(self + 184);
      v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(attributes, "section")}];
      v9 = v8;
      if (v8)
      {
        v10 = *(v8 + 104);
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;
      v13 = -[_UICollectionPreferredSizes objectAtIndexedSubscript:](v11, [attributes item]);

      if (v13)
      {
        v12 = v13[7];
        if (v12)
        {
          [(UICollectionViewLayoutAttributes *)a2 _setPreferredSizingData:v12];
        }
      }

      else
      {
        v12 = 0;
      }
    }
  }
}

+ (CGFloat)_globalFrameForSolutionFrame:(CGFloat)frame solutionGlobalFrame:(CGFloat)globalFrame contentInsetsOffset:(double)offset container:(uint64_t)container
{
  v20 = objc_opt_self();
  if (!a7)
  {
    v24 = v20;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__globalFrameForSolutionFrame_solutionGlobalFrame_contentInsetsOffset_container_ object:v24 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3006 description:{@"Invalid parameter not satisfying: %@", @"container != nil"}];
  }

  objc_opt_self();
  [a7 effectiveContentInsets];
  v22 = self + offset + a11 + v21 + *MEMORY[0x1E695EFF8];
  v26.origin.x = self;
  v26.origin.y = a2;
  v26.size.width = frame;
  v26.size.height = globalFrame;
  CGRectGetWidth(v26);
  v27.origin.x = self;
  v27.origin.y = a2;
  v27.size.width = frame;
  v27.size.height = globalFrame;
  CGRectGetHeight(v27);
  return v22;
}

- (id)sectionDescriptorForSectionIndex:(uint64_t)index
{
  if (index)
  {
    v4 = [*(index + 184) count];
    memoizedDescriptor = 0;
    if ((a2 & 0x8000000000000000) == 0 && v4 > a2)
    {
      v6 = [*(index + 184) objectAtIndexedSubscript:a2];
      memoizedDescriptor = [(_UICollectionSectionSolutionBookmark *)v6 memoizedDescriptor];
    }
  }

  else
  {
    memoizedDescriptor = 0;
  }

  return memoizedDescriptor;
}

- (uint64_t)shouldEmplaceElementOutsideSectionContainer:(uint64_t)container
{
  if (!container)
  {
    return 0;
  }

  indexPath = [a2 indexPath];
  v5 = [indexPath length];

  if (v5 == 1)
  {
    return 1;
  }

  indexPath2 = [a2 indexPath];
  section = [indexPath2 section];

  indexPath3 = [a2 indexPath];
  item = [indexPath3 item];

  v11 = [*(container + 184) count];
  _excludesBoundarySupplementariesFromClipping = 1;
  if ((section & 0x8000000000000000) == 0 && section < v11)
  {
    v12 = [*(container + 184) objectAtIndexedSubscript:section];
    v13 = v12;
    if (v12)
    {
      v14 = *(v12 + 16);
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    if (![v15 _clipsContentToBounds])
    {
      goto LABEL_25;
    }

    if (a2 && (a2[288] & 1) != 0)
    {
      _excludesBoundarySupplementariesFromClipping = 0;
LABEL_25:

      return _excludesBoundarySupplementariesFromClipping;
    }

    _content = [(_UILabelConfiguration *)a2 _content];
    v17 = [v15 _auxillaryItemForElementKind:_content category:2];
    v18 = v17;
    if (!v17)
    {
      if (v13)
      {
        v21 = v13[1];
      }

      else
      {
        v21 = 0;
      }

      v22 = [v21 sectionSupplementaryFrameWithKind:_content index:item];
      if (v22)
      {
        _excludesBoundarySupplementariesFromClipping = [v15 _excludesBoundarySupplementariesFromClipping];
      }

      else
      {
        _excludesBoundarySupplementariesFromClipping = 0;
      }

      goto LABEL_24;
    }

    item2 = [v17 item];
    if ([item2 isBackgroundDecoration])
    {
      _clipsBackgroundDecorationsToContent = [v15 _clipsBackgroundDecorationsToContent];

      if ((_clipsBackgroundDecorationsToContent & 1) == 0)
      {
        _excludesBoundarySupplementariesFromClipping = 1;
LABEL_24:

        goto LABEL_25;
      }
    }

    else
    {
    }

    _excludesBoundarySupplementariesFromClipping = 0;
    goto LABEL_24;
  }

  return _excludesBoundarySupplementariesFromClipping;
}

- (uint64_t)enumerateSectionDefinitionsWithBlock:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 184);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __79___UICollectionCompositionalLayoutSolver_enumerateSectionDefinitionsWithBlock___block_invoke;
    v3[3] = &unk_1E70FAC30;
    v3[4] = a2;
    return [v2 enumerateObjectsUsingBlock:v3];
  }

  return result;
}

- (CGRect)auxillaryHostPinningRect
{
  y = 0.0;
  if (self)
  {
    sectionGeometryTranslator = self->_sectionGeometryTranslator;
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

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_dynamicReferenceBounds
{
  contentSize = [(_UICollectionCompositionalLayoutSolver *)self contentSize];
  v4 = v3;
  v5 = 0.0;
  v6 = 0.0;
  result.size.height = v4;
  result.size.width = contentSize;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

@end