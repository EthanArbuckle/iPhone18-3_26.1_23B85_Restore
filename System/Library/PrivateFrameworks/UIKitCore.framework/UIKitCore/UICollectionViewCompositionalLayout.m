@interface UICollectionViewCompositionalLayout
+ (UICollectionViewCompositionalLayout)layoutWithListConfiguration:(UICollectionLayoutListConfiguration *)configuration;
- (BOOL)_adjustCollectionViewContentInsetBehaviorForLayoutAxisIfNeeded:(unint64_t)a3 container:(id)a4;
- (BOOL)_allowsItemInteractionsToBegin;
- (BOOL)_allowsPanningAcrossConstrainedAxisToBeginMultiSelectInteractionInSection:(int64_t)a3;
- (BOOL)_estimatesSizes;
- (BOOL)_hasOrthogonalScrollingSections;
- (BOOL)_invokeVisibleBoundsUpdateForDynamicAnimatorForNewVisibleBounds:(CGRect)a3 preparingLayout:(BOOL)a4;
- (BOOL)_orthogonalScrollingElementShouldAppearAboveForAttributes:(id)a3;
- (BOOL)_orthogonalScrollingElementShouldAppearBelowForAttributes:(id)a3;
- (BOOL)_shouldAddElementToSectionContainer:(id)a3;
- (BOOL)_shouldInvalidateLayoutForOldInsets:(UIEdgeInsets)a3 newInsets:(UIEdgeInsets)a4;
- (BOOL)_shouldInvalidateLayoutForUpdatedLayoutMargins:(UIEdgeInsets)a3 fromOldMargins:(UIEdgeInsets)a4;
- (BOOL)_shouldInvalidateLayoutForUpdatedSafeAreaInsets:(UIEdgeInsets)a3 fromOldInsets:(UIEdgeInsets)a4;
- (BOOL)_shouldOrthogonalScrollingSectionDecorationScrollWithContentForIndexPath:(id)a3 elementKind:(id)a4;
- (BOOL)_shouldOrthogonalScrollingSectionSupplementaryScrollWithContentForIndexPath:(id)a3 elementKind:(id)a4;
- (BOOL)_shouldPopulateInitialAndFinalLayoutAttributesForAllUpdateItems:(BOOL)a3;
- (BOOL)_supportsSwipeActionsForIndexPath:(id)a3;
- (BOOL)_viewBoundsPermitsLayout:(CGRect)a3;
- (BOOL)_wantsBandSelectionVisualsInSection:(int64_t)a3;
- (BOOL)_wantsCustomSectionContainers;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4;
- (CGPoint)_offsetForOrthogonalScrollingSection:(int64_t)a3;
- (CGPoint)_targetPositionForInteractiveMovementOfItemAtIndexPath:(id)a3 withProposedTargetPosition:(CGPoint)a4;
- (CGRect)_contentFrameForSection:(int64_t)a3;
- (CGRect)_frameForScrollingToFirstElementInSectionAtIndex:(int64_t)a3;
- (CGRect)_layoutFrameForSection:(int64_t)a3;
- (CGRect)_orthogonalFrameWithOffsetElidedForItemWithLayoutAttributes:(id)a3 frame:(CGRect)a4;
- (CGRect)contentFrame;
- (CGRect)memoizedPreviousSolvedCollectionViewBounds;
- (CGSize)collectionViewContentSize;
- (NSDirectionalEdgeInsets)_supplementaryViewInsetsForScrollingToItemAtIndexPath:(id)a3;
- (UICollectionViewCompositionalLayout)initWithLayoutSection:(id)a3;
- (UICollectionViewCompositionalLayout)initWithLayoutSection:(id)a3 scrollDirection:(int64_t)a4;
- (UICollectionViewCompositionalLayout)initWithSection:(NSCollectionLayoutSection *)section;
- (UICollectionViewCompositionalLayout)initWithSection:(NSCollectionLayoutSection *)section configuration:(UICollectionViewCompositionalLayoutConfiguration *)configuration;
- (UICollectionViewCompositionalLayout)initWithSection:(id)a3 sectionProvider:(id)a4 configuration:(id)a5;
- (UICollectionViewCompositionalLayout)initWithSectionProvider:(UICollectionViewCompositionalLayoutSectionProvider)sectionProvider;
- (UICollectionViewCompositionalLayout)initWithSectionProvider:(UICollectionViewCompositionalLayoutSectionProvider)sectionProvider configuration:(UICollectionViewCompositionalLayoutConfiguration *)configuration;
- (UICollectionViewCompositionalLayoutConfiguration)configuration;
- (UIEdgeInsets)memoizedDynamicAnimatorWorldAdjustingInsets;
- (UIEdgeInsets)memoizedPreviousLayoutMargins;
- (double)_alignedContentMarginGivenMargin:(double)a3;
- (id)_boundsChangeResolve;
- (id)_containerFromCollectionView;
- (id)_customContainerSectionIndexes;
- (id)_dataSourceSnapshotter;
- (id)_extendedAttributesQueryIncludingOrthogonalScrollingRegions:(CGRect)a3;
- (id)_invalidationContextForUpdatedLayoutMargins:(UIEdgeInsets)a3;
- (id)_invokeVisibleItemsInvalidationHandlerIfNeededForVisibleBounds:(CGRect)a3;
- (id)_layoutAttributesForIndelibleElements;
- (id)_layoutSectionForSectionIndex:(unint64_t)a3;
- (id)_leadingSwipeActionsConfigurationForIndexPath:(id)a3;
- (id)_marginsChangeResolve;
- (id)_orthogonalScrollingSections;
- (id)_preferredAttributesResolveWithInvalidatedPreferredAttributes:(id)a3 layoutOffset:(CGPoint)a4 visibleRect:(CGRect)a5;
- (id)_propertyAnimatorForCollectionViewUpdates:(id)a3 withCustomAnimator:(id)a4;
- (id)_scrollViewAdjustmentsChangeResolve;
- (id)_sectionDefinitionsUpdateResolve;
- (id)_sectionDescriptorForSectionIndex:(int64_t)a3;
- (id)_sectionsDescription;
- (id)_trailingSwipeActionsConfigurationForIndexPath:(id)a3;
- (id)_updatePinnedSectionSupplementaryItemsForCurrentVisibleBounds;
- (id)_updateResolve;
- (id)finalLayoutAttributesForDisappearingDecorationElementOfKind:(id)a3 atIndexPath:(id)a4;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3;
- (id)indexPathsToDeleteForDecorationViewOfKind:(id)a3;
- (id)indexPathsToDeleteForSupplementaryViewOfKind:(id)a3;
- (id)indexPathsToInsertForDecorationViewOfKind:(id)a3;
- (id)indexPathsToInsertForSupplementaryViewOfKind:(id)a3;
- (id)initialLayoutAttributesForAppearingDecorationElementOfKind:(id)a3 atIndexPath:(id)a4;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3;
- (id)initialLayoutAttributesForAppearingSupplementaryElementOfKind:(id)a3 atIndexPath:(id)a4;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)invalidationContextForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4;
- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)a3 withTargetPosition:(CGPoint)a4;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (int64_t)_anchorForAuxiliaryElementOfKind:(id)a3;
- (int64_t)_layoutTypeForSection:(int64_t)a3;
- (int64_t)developmentLayoutDirection;
- (unint64_t)_layoutAxis;
- (unint64_t)_orthogonalScrollingAxis;
- (void)_cellBackgroundOrBottomSeparatorChangedAtIndexPath:(id)a3 separatorOnly:(BOOL)a4;
- (void)_collectionViewWillPerformPendingLayoutBeforeUpdate;
- (void)_computeAndUpdateAdjustedContentFrame;
- (void)_createSwipeActionsModuleIfNeeded;
- (void)_didEndSwiping;
- (void)_didPerformUpdateVisibleCellsPassWithLayoutOffset:(CGPoint)a3;
- (void)_finalizeCollectionViewUpdate:(id)a3;
- (void)_fullResolve;
- (void)_handleEndInteractiveReorderingWithContext:(id)a3;
- (void)_handlePreferredSizingDataInvalidation:(id)a3;
- (void)_handleSwipeActionsInvalidationWithContext:(id)a3;
- (void)_performDeferredResolveIfNecessary;
- (void)_postProcessPreferredAttributes:(id)a3 forView:(id)a4;
- (void)_prepareForCollectionViewUpdates:(id)a3 withDataSourceTranslator:(id)a4;
- (void)_prepareForPreferredAttributesQueryForView:(id)a3 withLayoutAttributes:(id)a4;
- (void)_prepareForTransitionToLayout:(id)a3;
- (void)_prepareLayout;
- (void)_queueDeferredResolveForInvalidationWithContext:(id)a3;
- (void)_resolveImmediatelyForInvalidationWithContext:(id)a3;
- (void)_scrollViewLayoutAdjustmentsChanged;
- (void)_setCollectionView:(id)a3;
- (void)_setOffset:(CGPoint)a3 forOrthogonalScrollingSection:(int64_t)a4;
- (void)_setRecomputesLayoutForEmptyUpdates:(BOOL)a3;
- (void)_solveForPinnedSupplementaryItemsIfNeededWithContext:(id)a3;
- (void)_transformCellLayoutAttributes:(id)a3;
- (void)_transformDecorationLayoutAttributes:(id)a3;
- (void)_transformSupplementaryLayoutAttributes:(id)a3;
- (void)_updateCollectionViewBackgroundColor;
- (void)_updateStyleForSwipeActionsConfiguration:(id)a3 indexPath:(id)a4;
- (void)_willBeginSwiping;
- (void)_willPerformUpdateVisibleCellsPass;
- (void)invalidateLayoutWithContext:(id)a3;
- (void)prepareLayout;
- (void)setBoundarySupplementaryItems:(id)a3;
- (void)setCollectionViewTraitChangeRegistration:(uint64_t)a1;
- (void)setConfiguration:(UICollectionViewCompositionalLayoutConfiguration *)configuration;
- (void)setEditing:(BOOL)a3;
@end

@implementation UICollectionViewCompositionalLayout

- (int64_t)developmentLayoutDirection
{
  if (dyld_program_sdk_at_least())
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = UICollectionViewCompositionalLayout;
  return [(UICollectionViewLayout *)&v4 developmentLayoutDirection];
}

- (BOOL)_estimatesSizes
{
  v2 = [(UICollectionViewCompositionalLayout *)self solver];
  if (v2)
  {
    v3 = v2[12];
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (id)_customContainerSectionIndexes
{
  v2 = [(UICollectionViewCompositionalLayout *)self solver];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 96);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (unint64_t)_layoutAxis
{
  v2 = [(UICollectionViewCompositionalLayoutConfiguration *)self->_configuration scrollDirection];
  if (v2)
  {
    return v2 == UICollectionViewScrollDirectionHorizontal;
  }

  else
  {
    return 2;
  }
}

- (id)_orthogonalScrollingSections
{
  v2 = [(UICollectionViewCompositionalLayout *)self solver];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 88);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)_willPerformUpdateVisibleCellsPass
{
  if ([(UICollectionViewCompositionalLayout *)self _estimatesSizes]&& !self->_updateVisibleCellsContext)
  {
    v3 = objc_alloc_init(_UIUpdateVisibleCellsContext);
    updateVisibleCellsContext = self->_updateVisibleCellsContext;
    self->_updateVisibleCellsContext = v3;

    v5 = self->_updateVisibleCellsContext;
    if (v5)
    {
      ++v5->_visibleCellsRefCount;
    }
  }
}

- (BOOL)_hasOrthogonalScrollingSections
{
  v2 = [(UICollectionViewCompositionalLayout *)self solver];
  if (v2)
  {
    v3 = v2[13];
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)_performDeferredResolveIfNecessary
{
  v58 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 296);
    if (v2)
    {
      if ((*(a1 + 288) & 8) != 0)
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("UICollectionLayout", &_MergedGlobals_177);
        if (*CategoryCachedImpl)
        {
          v16 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = v16;
            v18 = [a1 collectionView];
            v19 = _UIStringFromCompositionalLayoutResolveType(v2);
            *buf = 134218242;
            v53 = v18;
            v54 = 2112;
            v55 = v19;
            _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "_performDeferredResolveIfNecessary: cv==%p; skipping deferred resolve (%@) until update or reload data", buf, 0x16u);

LABEL_17:
          }
        }
      }

      else
      {
        v3 = [a1 collectionView];
        [v3 _visibleBounds];
        v5 = v4;
        v7 = v6;
        v9 = v8;
        v11 = v10;

        if ([a1 _viewBoundsPermitsLayout:{v5, v7, v9, v11}])
        {
          kdebug_trace();
          *(a1 + 296) = 0;
          v12 = __UILogGetCategoryCachedImpl("UICollectionLayout", &qword_1EA969758);
          if (*v12)
          {
            v41 = *(v12 + 8);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              v42 = v41;
              v43 = [a1 collectionView];
              v44 = _UIStringFromCompositionalLayoutResolveType(v2);
              *buf = 134218242;
              v53 = v43;
              v54 = 2112;
              v55 = v44;
              _os_log_impl(&dword_188A29000, v42, OS_LOG_TYPE_ERROR, "_performDeferredResolve: cv == %p; Performing deferred resolve %@", buf, 0x16u);
            }
          }

          v13 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
          [v13 _setIntent:15];
          if (v2 > 3)
          {
            if (v2 <= 5)
            {
              if (v2 == 4)
              {
                [a1 _scrollViewAdjustmentsChangeResolve];
              }

              else
              {
                [a1 _sectionDefinitionsUpdateResolve];
              }
              v14 = ;
LABEL_44:
              v37 = v14;
              if (v14)
              {
                [v13 setContentOffsetAdjustment:{*(v14 + 48), *(v14 + 56)}];
                [v13 _setShouldInvalidateCollectionViewContentSize:1];
                v38 = v37[40];
                [a1 _solveForPinnedSupplementaryItemsIfNeededWithContext:v13];
                if (v38 != 1)
                {
                  v39 = 0;
                  goto LABEL_49;
                }

                goto LABEL_46;
              }

LABEL_47:
              [a1 _solveForPinnedSupplementaryItemsIfNeededWithContext:v13];
              v39 = 0;
              v37 = 0;
              goto LABEL_49;
            }

            if (v2 == 6)
            {
              v14 = [a1 _boundsChangeResolve];
              goto LABEL_44;
            }

            if (v2 == 7)
            {
              [a1 _fullResolve];
              [a1 _solveForPinnedSupplementaryItemsIfNeededWithContext:v13];
              v37 = 0;
LABEL_46:
              [a1 _updateCollectionViewBackgroundColor];
              v39 = 1;
LABEL_49:
              [*(a1 + 136) processLayoutInvalidationWithContext:v13 updateConfigurations:v39];
              v40 = [a1 collectionView];
              [v40 _invalidateLayoutWithContext:v13];

              kdebug_trace();
              return;
            }

LABEL_39:
            v28 = [MEMORY[0x1E696AAA8] currentHandler];
            [v28 handleFailureInMethod:sel__performDeferredResolveIfNecessary object:a1 file:@"UICollectionViewCompositionalLayout.m" lineNumber:834 description:{@"Attempting to process an invalid or unknown resolve type. Type: %ld", v2}];
LABEL_40:

            goto LABEL_47;
          }

          if (v2 == 1)
          {
            goto LABEL_47;
          }

          if (v2 == 2)
          {
            v14 = [a1 _marginsChangeResolve];
            goto LABEL_44;
          }

          if (v2 != 3)
          {
            goto LABEL_39;
          }

          v24 = [a1 solver];
          if (!v24)
          {
            v28 = 0;
            goto LABEL_40;
          }

          v25 = v24[36];

          if (v25 < 1)
          {
            goto LABEL_47;
          }

          v26 = [a1 collectionView];
          [v26 bounds];
          v27 = [a1 _invokeVisibleItemsInvalidationHandlerIfNeededForVisibleBounds:?];

          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v28 = v27;
          v29 = [v28 countByEnumeratingWithState:&v45 objects:v51 count:16];
          if (!v29)
          {
            goto LABEL_35;
          }

          v30 = v29;
          v31 = *v46;
LABEL_25:
          v32 = 0;
          while (1)
          {
            if (*v46 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v45 + 1) + 8 * v32);
            if (![v33 representedElementCategory])
            {
              break;
            }

            if ([v33 representedElementCategory] == 1)
            {
              v34 = [v33 representedElementKind];
              v35 = [v33 indexPath];
              v49 = v35;
              v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
              [v13 invalidateSupplementaryElementsOfKind:v34 atIndexPaths:v36];

LABEL_32:
            }

            if (v30 == ++v32)
            {
              v30 = [v28 countByEnumeratingWithState:&v45 objects:v51 count:16];
              if (!v30)
              {
LABEL_35:

                goto LABEL_40;
              }

              goto LABEL_25;
            }
          }

          v34 = [v33 indexPath];
          v50 = v34;
          v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
          [v13 invalidateItemsAtIndexPaths:v35];
          goto LABEL_32;
        }

        v20 = __UILogGetCategoryCachedImpl("UICollectionLayout", &qword_1EA969750);
        if (*v20)
        {
          v21 = *(v20 + 8);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v17 = v21;
            v22 = [a1 collectionView];
            v19 = _UIStringFromCompositionalLayoutResolveType(v2);
            v59.origin.x = v5;
            v59.origin.y = v7;
            v59.size.width = v9;
            v59.size.height = v11;
            v23 = NSStringFromCGRect(v59);
            *buf = 134218498;
            v53 = v22;
            v54 = 2112;
            v55 = v19;
            v56 = 2112;
            v57 = v23;
            _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "_performDeferredResolveIfNecessary: cv==%p; skipping deferred resolve (%@) because the view bounds (%@) do not allow for solving", buf, 0x20u);

            goto LABEL_17;
          }
        }
      }
    }
  }
}

- (CGSize)collectionViewContentSize
{
  [(UICollectionViewCompositionalLayout *)self contentFrame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (CGRect)contentFrame
{
  x = self->_contentFrame.origin.x;
  y = self->_contentFrame.origin.y;
  width = self->_contentFrame.size.width;
  height = self->_contentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_prepareLayout
{
  [(UICollectionViewCompositionalLayout *)self _performDeferredResolveIfNecessary];
  v3.receiver = self;
  v3.super_class = UICollectionViewCompositionalLayout;
  [(UICollectionViewLayout *)&v3 _prepareLayout];
}

- (void)prepareLayout
{
  v7.receiver = self;
  v7.super_class = UICollectionViewCompositionalLayout;
  [(UICollectionViewLayout *)&v7 prepareLayout];
  if (*&self->_compositionalLayoutFlags)
  {
    v3 = [(UICollectionViewLayout *)self collectionView];
    [v3 _visibleBounds];
    v4 = [(UICollectionViewCompositionalLayout *)self _viewBoundsPermitsLayout:?];

    if (v4)
    {
      [(UICollectionViewCompositionalLayout *)self _fullResolve];
      [(UICollectionViewCompositionalLayout *)self _solveForPinnedSupplementaryItemsIfNeededWithContext:0];
      [(UICollectionViewCompositionalLayout *)self _updateCollectionViewBackgroundColor];
      *&self->_compositionalLayoutFlags &= ~1u;
    }
  }

  if (!self->_interactionStateModule)
  {
    v5 = [[_UICollectionViewLayoutInteractionStateModule alloc] initWithHost:?];
    interactionStateModule = self->_interactionStateModule;
    self->_interactionStateModule = v5;
  }

  [(UICollectionViewCompositionalLayout *)self _createSwipeActionsModuleIfNeeded];
}

- (void)_createSwipeActionsModuleIfNeeded
{
  if (!self->super._swipeActionsModule)
  {
    v3 = [(UICollectionViewCompositionalLayout *)self solver];
    v4 = [(_UICollectionCompositionalLayoutSolver *)v3 _wantsSwipeActions];

    if (v4)
    {
      v5 = [[_UICollectionViewLayoutSwipeActionsModule alloc] initWithHost:self];
      swipeActionsModule = self->super._swipeActionsModule;
      self->super._swipeActionsModule = v5;
    }
  }
}

- (void)_scrollViewLayoutAdjustmentsChanged
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(UICollectionViewCompositionalLayout *)self solver];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__UICollectionViewCompositionalLayout__scrollViewLayoutAdjustmentsChanged__block_invoke;
  v5[3] = &unk_1E70FA630;
  v5[4] = &v6;
  [(_UICollectionCompositionalLayoutSolver *)v3 enumerateSectionDefinitionsWithBlock:v5];

  if (*(v7 + 24) == 1)
  {
    v4 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
    [v4 _setIntent:13];
    [(UICollectionViewCompositionalLayout *)self invalidateLayoutWithContext:v4];
  }

  _Block_object_dispose(&v6, 8);
}

- (UICollectionViewCompositionalLayoutConfiguration)configuration
{
  v2 = [(UICollectionViewCompositionalLayoutConfiguration *)self->_configuration copy];

  return v2;
}

- (CGRect)memoizedPreviousSolvedCollectionViewBounds
{
  x = self->_memoizedPreviousSolvedCollectionViewBounds.origin.x;
  y = self->_memoizedPreviousSolvedCollectionViewBounds.origin.y;
  width = self->_memoizedPreviousSolvedCollectionViewBounds.size.width;
  height = self->_memoizedPreviousSolvedCollectionViewBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_collectionViewWillPerformPendingLayoutBeforeUpdate
{
  v3.receiver = self;
  v3.super_class = UICollectionViewCompositionalLayout;
  [(UICollectionViewLayout *)&v3 _collectionViewWillPerformPendingLayoutBeforeUpdate];
  if ((*&self->_compositionalLayoutFlags & 1) == 0)
  {
    *&self->_compositionalLayoutFlags |= 8u;
  }
}

- (id)_updateResolve
{
  v4 = [(UICollectionViewLayout *)self collectionView];
  if (v4)
  {
    v5 = [(UICollectionViewCompositionalLayout *)self currentUpdate];

    if (!v5)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionalLayout.m" lineNumber:1591 description:{@"Invalid parameter not satisfying: %@", @"self.currentUpdate != nil"}];
    }

    kdebug_trace();
    v6 = [(UICollectionViewCompositionalLayout *)self currentUpdate];
    v7 = v6;
    if (v6)
    {
      v8 = *(v6 + 24);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    [(UICollectionViewCompositionalLayout *)self setDataSourceSnapshotter:v9];

    [v4 bounds];
    [(UICollectionViewCompositionalLayout *)self setMemoizedPreviousSolvedCollectionViewBounds:?];
    v10 = [(UICollectionViewCompositionalLayout *)self _containerFromCollectionView];
    if ([(UICollectionViewCompositionalLayout *)self _recomputesLayoutForEmptyUpdates])
    {
      if ([v4 _isReordering])
      {
        v11 = dyld_program_sdk_at_least();
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 1;
    }

    v13 = [(UICollectionViewCompositionalLayout *)self solver];
    v14 = [(UICollectionViewCompositionalLayout *)self currentUpdate];
    v15 = [(_UICollectionCompositionalLayoutSolver *)v13 resolveSolutionForUpdate:v14 container:v10 ignoreEmptyUpdate:v11];
    [(UICollectionViewCompositionalLayout *)self setCurrentResolveResult:v15];

    [(UICollectionViewCompositionalLayout *)self _computeAndUpdateAdjustedContentFrame];
    if (dyld_program_sdk_at_least())
    {
      [v4 visibleBounds];
      v16 = [(UICollectionViewCompositionalLayout *)self _invokeVisibleItemsInvalidationHandlerIfNeededForVisibleBounds:?];
    }

    kdebug_trace();
    v12 = [(UICollectionViewCompositionalLayout *)self currentResolveResult];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void *__51__UICollectionViewCompositionalLayout__fullResolve__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained collectionView];
  if (WeakRetained)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __51__UICollectionViewCompositionalLayout__fullResolve__block_invoke_6(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _transformCellLayoutAttributes:a2];
}

- (void)_computeAndUpdateAdjustedContentFrame
{
  v3 = [(UICollectionViewCompositionalLayout *)self solver];
  if (v3)
  {
    v16 = v3;
    v4 = [(_UICollectionCompositionalLayoutSolver *)v3 contentSize];
    v6 = v5;
    v7 = v16[6];
    [v7 contentSize];
    v9 = v8;
    v11 = v10;

    v12 = v16[8];
    if (v12 == 1)
    {
      v13 = 2;
    }

    else
    {
      v13 = v12 == 2;
    }

    v14 = _UISizeClampToMinimumSizeForAxis(v13, v4, v6, v9, v11);
    [(UICollectionViewCompositionalLayout *)self setContentFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v14, v15];
    v3 = v16;
  }
}

- (void)_updateCollectionViewBackgroundColor
{
  v3 = [(UICollectionViewLayout *)self collectionView];
  v4 = [v3 _hasCustomBackground];

  if ((v4 & 1) == 0)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__26;
    v11 = __Block_byref_object_dispose__26;
    v12 = 0;
    v5 = [(UICollectionViewCompositionalLayout *)self solver];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __75__UICollectionViewCompositionalLayout__updateCollectionViewBackgroundColor__block_invoke;
    v6[3] = &unk_1E70FA630;
    v6[4] = &v7;
    [(_UICollectionCompositionalLayoutSolver *)v5 enumerateSectionDefinitionsWithBlock:v6];

    [(UICollectionViewLayout *)self _setPreferredBackgroundColor:v8[5]];
    _Block_object_dispose(&v7, 8);
  }
}

- (id)_layoutAttributesForIndelibleElements
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule indexPathsWithActiveSwipes];
  if ([v3 count])
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(UICollectionViewCompositionalLayout *)self layoutAttributesForItemAtIndexPath:*(*(&v12 + 1) + 8 * i), v12];
          if (v10)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_containerFromCollectionView
{
  v3 = [(UICollectionViewLayout *)self collectionView];
  v4 = [(UICollectionViewCompositionalLayoutConfiguration *)self->_configuration contentInsetsReference];
  [v3 safeAreaInsets];
  v58 = v6;
  v59 = v5;
  v8 = v7;
  v10 = v9;
  if (v3)
  {
    v11 = [v3 effectiveUserInterfaceLayoutDirection];
    if (v11 == 1)
    {
      v12 = v8;
    }

    else
    {
      v12 = v10;
    }

    if (v11 == 1)
    {
      v8 = v10;
    }

    v10 = v12;
  }

  [v3 directionalLayoutMargins];
  v56 = v14;
  v57 = v13;
  v16 = v15;
  v18 = v17;
  *&v19 = [(UIView *)v3 _directionalReadableContentInsets];
  v54 = v20;
  v55 = v19;
  v22 = v21;
  v24 = v23;
  [v3 _directionalAccessoryEdgeInsets];
  v53 = v25;
  v27 = v26;
  v51 = v28;
  v30 = v29;
  v31 = [v3 _isRenderedHorizontallyFlipped];
  if (v31)
  {
    v32 = v27;
  }

  else
  {
    v32 = v30;
  }

  v50 = v32;
  if (v31)
  {
    v33 = v22;
  }

  else
  {
    v30 = v27;
    v33 = v24;
  }

  if (v31)
  {
    v34 = v16;
  }

  else
  {
    v24 = v22;
    v34 = v18;
  }

  v52 = v34;
  if (v31)
  {
    v35 = v18;
  }

  else
  {
    v35 = v16;
  }

  if (v31)
  {
    v36 = v8;
  }

  else
  {
    v36 = v10;
  }

  if (v31)
  {
    v8 = v10;
  }

  v37 = [_UIContentInsetsEnvironment alloc];
  v44 = [(_UIContentInsetsEnvironment *)v37 initWithInsetsReference:v4 safeAreaInsets:v59 layoutMarginsInsets:v8 readableContentInsets:v58 scrollAccessoryInsets:v36 minimumInsets:v57, v35, v56, v52, v38, v39, v40, v41, v42, v43, v55, v24, v54, v33, v53, v30, v51, v50, 0, 0, 0, 0];
  v45 = [_UICollectionLayoutContainer alloc];
  [v3 bounds];
  v48 = [(_UICollectionLayoutContainer *)v45 initWithContentSize:v44 contentInsets:v46 insetsEnvironment:v47, 0.0, 0.0, 0.0, 0.0];

  return v48;
}

id __51__UICollectionViewCompositionalLayout__fullResolve__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained layoutSectionProvider];

    if (v7)
    {
      v8 = [v6 collectionView];
      v9 = [_UICollectionLayoutEnvironment alloc];
      v10 = [v8 traitCollection];
      v11 = [v6 dataSourceSnapshotter];
      v12 = -[_UICollectionLayoutEnvironment initWithContainer:traitCollection:dataSourceSnapshot:sectionIndex:wantsCollapsedTopSpacing:](v9, "initWithContainer:traitCollection:dataSourceSnapshot:sectionIndex:wantsCollapsedTopSpacing:", a2, v10, v11, a3, [v8 _shouldAdjustLayoutToCollapseTopSpacing]);

      v13 = [v6 layoutSectionProvider];
      v14 = (v13)[2](v13, a3, v12);
    }

    else
    {
      v14 = v6[39];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __51__UICollectionViewCompositionalLayout__fullResolve__block_invoke_3(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [a2 _registrationViewClass])
  {
    v3 = [a2 _registrationViewClass];
    v4 = [a2 elementKind];
    [WeakRetained registerClass:v3 forDecorationViewOfKind:v4];
  }
}

- (id)_updatePinnedSectionSupplementaryItemsForCurrentVisibleBounds
{
  kdebug_trace();
  v3 = [(UICollectionViewLayout *)self collectionView];
  [v3 visibleBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(UICollectionViewLayout *)self collectionView];
  [v12 _contentInsetIncludingDecorations];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [(UICollectionViewLayout *)self collectionView];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 effectiveUserInterfaceLayoutDirection];
    if (v23 == 1)
    {
      v24 = v16;
    }

    else
    {
      v24 = v20;
    }

    if (v23 == 1)
    {
      v16 = v20;
    }

    v20 = v24;
  }

  v25 = [(UICollectionViewCompositionalLayout *)self solver];
  v26 = [(_UICollectionCompositionalLayoutSolver *)v25 updatePinnedSectionSupplementaryItemsForVisibleBounds:v7 + v14, v9 - (v20 + v16), v11 - (v14 + v18)];

  kdebug_trace();

  return v26;
}

void __51__UICollectionViewCompositionalLayout__fullResolve__block_invoke_8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _transformSupplementaryLayoutAttributes:a2];
}

void __51__UICollectionViewCompositionalLayout__fullResolve__block_invoke_7(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _transformDecorationLayoutAttributes:a2];
}

uint64_t __61__UICollectionViewCompositionalLayout__dataSourceSnapshotter__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2 == -1)
  {
    return [v2 numberOfSections];
  }

  else
  {
    return [v2 numberOfItemsInSection:a2];
  }
}

- (void)_fullResolve
{
  kdebug_trace();
  if (![(UICollectionViewCompositionalLayout *)self layoutRTL])
  {
    v3 = [(UICollectionViewLayout *)self collectionView];
    v4 = [v3 effectiveUserInterfaceLayoutDirection];

    if (v4 == 1)
    {
      [(UICollectionViewCompositionalLayout *)self setLayoutRTL:1];
    }
  }

  if ([(UICollectionViewCompositionalLayoutConfiguration *)self->_configuration scrollDirection])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__UICollectionViewCompositionalLayout__fullResolve__block_invoke;
  aBlock[3] = &unk_1E70FA540;
  objc_copyWeak(&v79, location);
  v6 = _Block_copy(aBlock);
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __51__UICollectionViewCompositionalLayout__fullResolve__block_invoke_2;
  v76[3] = &unk_1E70FA568;
  objc_copyWeak(&v77, location);
  v7 = _Block_copy(v76);
  v8 = [(UICollectionViewLayout *)self collectionView];
  v9 = [(UICollectionViewCompositionalLayout *)self _dataSourceSnapshotter];
  [(UICollectionViewCompositionalLayout *)self setDataSourceSnapshotter:v9];
  v63 = v9;
  v10 = [(UICollectionViewCompositionalLayout *)self solver];
  v62 = [(_UICollectionCompositionalLayoutSolver *)v10 restorableState];

  v11 = +[_UICollectionCompositionalLayoutSolverOptions defaultOptions];
  [(UICollectionViewCompositionalLayoutConfiguration *)self->_configuration interSectionSpacing];
  if (v11)
  {
    *(v11 + 16) = v12;
  }

  v13 = [objc_opt_class() layoutAttributesClass];
  [(_UIHomeAffordanceObservationRecord *)v11 setLegacyViewServiceSessionIdentifier:v13];
  v14 = [objc_opt_class() invalidationContextClass];
  [(UIContentUnavailableImageProperties *)v11 _setTintColor:v14];
  v15 = [(UICollectionViewCompositionalLayout *)self layoutRTL];
  if (v11)
  {
    *(v11 + 8) = v15;
  }

  v16 = [(UICollectionViewCompositionalLayout *)self roundsToScreenScale];
  if (v11)
  {
    *(v11 + 9) = v16;
    objc_setProperty_nonatomic_copy(v11, v17, v7, 40);
  }

  v19 = [(UICollectionViewCompositionalLayoutConfiguration *)self->_configuration boundarySupplementaryItems];
  if (v11)
  {
    objc_setProperty_nonatomic_copy(v11, v18, v19, 48);
  }

  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __51__UICollectionViewCompositionalLayout__fullResolve__block_invoke_3;
  newValue[3] = &unk_1E70FA590;
  objc_copyWeak(&v75, location);
  if (v11)
  {
    objc_setProperty_nonatomic_copy(v11, v20, newValue, 56);
  }

  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __51__UICollectionViewCompositionalLayout__fullResolve__block_invoke_4;
  v72[3] = &unk_1E70FA5B8;
  objc_copyWeak(&v73, location);
  if (v11)
  {
    objc_setProperty_nonatomic_copy(v11, v21, v72, 64);
  }

  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __51__UICollectionViewCompositionalLayout__fullResolve__block_invoke_5;
  v70[3] = &unk_1E70FA5E0;
  objc_copyWeak(&v71, location);
  if (v11)
  {
    objc_setProperty_nonatomic_copy(v11, v22, v70, 72);
  }

  v23 = [(UICollectionViewCompositionalLayout *)self _containerFromCollectionView];
  v24 = [_UICollectionCompositionalLayoutSolver alloc];
  v25 = [v8 traitCollection];
  v26 = [(_UICollectionCompositionalLayoutSolver *)v24 initWithContainer:v23 traitCollection:v25 layoutAxis:v5 dataSourceSnapshot:v63 options:v11 sectionProvider:v6];
  [(UICollectionViewCompositionalLayout *)self setSolver:v26];

  v27 = [(UICollectionViewCompositionalLayout *)self solver];
  [v62 applyToSolver:v27];

  v28 = [(UICollectionViewCompositionalLayout *)self dynamicsConfigurationHandler];
  v29 = [(UICollectionViewCompositionalLayout *)self solver];
  [(_UICollectionCompositionalLayoutSolver *)v29 setDynamicsConfigurationHandler:v28];
  v59 = v8;
  v61 = v7;

  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __51__UICollectionViewCompositionalLayout__fullResolve__block_invoke_6;
  v68[3] = &unk_1E70FA608;
  objc_copyWeak(&v69, location);
  v30 = [(UICollectionViewCompositionalLayout *)self solver];
  v32 = v30;
  if (v30)
  {
    objc_setProperty_nonatomic_copy(v30, v31, v68, 24);
  }

  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __51__UICollectionViewCompositionalLayout__fullResolve__block_invoke_7;
  v66[3] = &unk_1E70FA608;
  objc_copyWeak(&v67, location);
  v33 = [(UICollectionViewCompositionalLayout *)self solver];
  v35 = v33;
  if (v33)
  {
    objc_setProperty_nonatomic_copy(v33, v34, v66, 32);
  }

  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __51__UICollectionViewCompositionalLayout__fullResolve__block_invoke_8;
  v64[3] = &unk_1E70FA608;
  objc_copyWeak(&v65, location);
  v36 = [(UICollectionViewCompositionalLayout *)self solver];
  v38 = v36;
  if (v36)
  {
    objc_setProperty_nonatomic_copy(v36, v37, v64, 40);
  }

  [(UICollectionViewCompositionalLayout *)self _computeAndUpdateAdjustedContentFrame];
  v39 = [(UICollectionViewLayout *)self collectionView];
  [v39 visibleBounds];
  v40 = [(UICollectionViewCompositionalLayout *)self _invokeVisibleItemsInvalidationHandlerIfNeededForVisibleBounds:?];

  v41 = [(UICollectionViewCompositionalLayout *)self solver];
  if (v41)
  {
    v42 = v41[13];

    if (v42)
    {
      v43 = [(UICollectionViewLayout *)self collectionView:v8];
      [v43 bounds];
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;

      [(UICollectionViewCompositionalLayout *)self _invokeVisibleBoundsUpdateForDynamicAnimatorForNewVisibleBounds:1 preparingLayout:v45, v47, v49, v51];
    }
  }

  v52 = [(UICollectionViewCompositionalLayout *)self solver];
  if (v52)
  {
    v53 = v52[15];

    if (v53 != 1)
    {
      goto LABEL_34;
    }

    [(UICollectionViewLayout *)self _setWantsRightToLeftHorizontalMirroringIfNeeded:1];
    v54 = [(UICollectionViewLayout *)self collectionView];
    [v54 _setFlipsHorizontalAxis:1];
  }

  else
  {
    v54 = 0;
  }

LABEL_34:
  v55 = [(UICollectionViewCompositionalLayout *)self _adjustCollectionViewContentInsetBehaviorForLayoutAxisIfNeeded:v5 container:v23];
  if (v55)
  {
    v56 = 2;
  }

  else
  {
    v56 = 0;
  }

  *&self->_compositionalLayoutFlags = *&self->_compositionalLayoutFlags & 0xFD | v56;
  v57 = 5;
  if (!v55)
  {
    v57 = 0;
  }

  self->_edgesForSafeAreaPropagation = v57;
  v58 = [(UICollectionViewLayout *)self collectionView];
  [v58 bounds];
  [(UICollectionViewCompositionalLayout *)self setMemoizedPreviousSolvedCollectionViewBounds:?];

  *&self->_compositionalLayoutFlags &= ~4u;
  kdebug_trace();
  objc_destroyWeak(&v65);
  objc_destroyWeak(&v67);
  objc_destroyWeak(&v69);

  objc_destroyWeak(&v71);
  objc_destroyWeak(&v73);
  objc_destroyWeak(&v75);

  objc_destroyWeak(&v77);
  objc_destroyWeak(&v79);
  objc_destroyWeak(location);
}

- (id)_dataSourceSnapshotter
{
  v2 = [(UICollectionViewLayout *)self collectionView];
  v3 = [v2 dataSource];

  if (v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61__UICollectionViewCompositionalLayout__dataSourceSnapshotter__block_invoke;
    v6[3] = &unk_1E70FA518;
    v7 = v2;
    v4 = [off_1E70ECC48 snapshotterForSectionCountsProvider:v6];
  }

  else
  {
    v4 = [off_1E70ECC48 snapshotterForNoDataSource];
  }

  return v4;
}

void __75__UICollectionViewCompositionalLayout__updateCollectionViewBackgroundColor__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 _preferredContainerBackgroundColor];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  v9 = v6;
  v15 = v9;
  if (!v8)
  {
    v12 = *(v7 + 40);
    *(v7 + 40) = v9;

    goto LABEL_10;
  }

  v10 = v8;
  if (v15 == v10)
  {

    goto LABEL_10;
  }

  if (!v15)
  {

    goto LABEL_9;
  }

  v11 = [v15 isEqual:v10];

  if ((v11 & 1) == 0)
  {
LABEL_9:
    v13 = *(*(a1 + 32) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;

    *a4 = 1;
  }

LABEL_10:
}

- (id)_boundsChangeResolve
{
  v3 = [(UICollectionViewLayout *)self collectionView];
  if (v3)
  {
    kdebug_trace();
    [v3 bounds];
    [(UICollectionViewCompositionalLayout *)self setMemoizedPreviousSolvedCollectionViewBounds:?];
    v4 = [(UICollectionViewCompositionalLayout *)self _containerFromCollectionView];
    v5 = [(UICollectionViewCompositionalLayout *)self solver];
    v6 = [(_UICollectionCompositionalLayoutSolver *)v5 resolveForContainerChange:v4];

    [(UICollectionViewCompositionalLayout *)self _computeAndUpdateAdjustedContentFrame];
    [v3 visibleBounds];
    v7 = [(UICollectionViewCompositionalLayout *)self _invokeVisibleItemsInvalidationHandlerIfNeededForVisibleBounds:?];
    kdebug_trace();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UICollectionViewCompositionalLayout)initWithSection:(id)a3 sectionProvider:(id)a4 configuration:(id)a5
{
  v11.receiver = self;
  v11.super_class = UICollectionViewCompositionalLayout;
  v8 = [(UICollectionViewLayout *)&v11 init];
  v9 = v8;
  if (v8)
  {
    _UICollectionViewCompositionalLayoutCommonInit(v8, a3, a4, a5);
  }

  return v9;
}

- (UICollectionViewCompositionalLayout)initWithSection:(NSCollectionLayoutSection *)section
{
  v7.receiver = self;
  v7.super_class = UICollectionViewCompositionalLayout;
  v4 = [(UICollectionViewLayout *)&v7 init];
  if (v4)
  {
    v5 = +[UICollectionViewCompositionalLayoutConfiguration defaultConfiguration];
    _UICollectionViewCompositionalLayoutCommonInit(v4, section, 0, v5);
  }

  return v4;
}

- (UICollectionViewCompositionalLayout)initWithSection:(NSCollectionLayoutSection *)section configuration:(UICollectionViewCompositionalLayoutConfiguration *)configuration
{
  v9.receiver = self;
  v9.super_class = UICollectionViewCompositionalLayout;
  v6 = [(UICollectionViewLayout *)&v9 init];
  v7 = v6;
  if (v6)
  {
    _UICollectionViewCompositionalLayoutCommonInit(v6, section, 0, configuration);
  }

  return v7;
}

- (UICollectionViewCompositionalLayout)initWithSectionProvider:(UICollectionViewCompositionalLayoutSectionProvider)sectionProvider
{
  v7.receiver = self;
  v7.super_class = UICollectionViewCompositionalLayout;
  v4 = [(UICollectionViewLayout *)&v7 init];
  if (v4)
  {
    v5 = +[UICollectionViewCompositionalLayoutConfiguration defaultConfiguration];
    _UICollectionViewCompositionalLayoutCommonInit(v4, 0, sectionProvider, v5);
  }

  return v4;
}

- (UICollectionViewCompositionalLayout)initWithSectionProvider:(UICollectionViewCompositionalLayoutSectionProvider)sectionProvider configuration:(UICollectionViewCompositionalLayoutConfiguration *)configuration
{
  v9.receiver = self;
  v9.super_class = UICollectionViewCompositionalLayout;
  v6 = [(UICollectionViewLayout *)&v9 init];
  v7 = v6;
  if (v6)
  {
    _UICollectionViewCompositionalLayoutCommonInit(v6, 0, sectionProvider, configuration);
  }

  return v7;
}

- (void)setConfiguration:(UICollectionViewCompositionalLayoutConfiguration *)configuration
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionalLayout.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"[configuration isKindOfClass:[UICollectionViewCompositionalLayoutConfiguration class]]"}];
  }

  v6 = [(UICollectionViewCompositionalLayoutConfiguration *)self->_configuration differencesFromConfiguration:configuration];
  v7 = [(UICollectionViewCompositionalLayoutConfiguration *)configuration copy];
  v8 = self->_configuration;
  self->_configuration = v7;

  if (v6)
  {
    if ((v6 & 2) != 0)
    {
      _UIUpdateCollectionViewForScrollDirection(self->super._collectionView, [(UICollectionViewCompositionalLayoutConfiguration *)self->_configuration scrollDirection]);
    }

    if (*&self->_compositionalLayoutFlags)
    {
      v13 = 0;
    }

    else
    {
      v9 = [(UICollectionViewCompositionalLayout *)self solver];

      if (v6 != 8 || v9 == 0)
      {
        [(UICollectionViewCompositionalLayout *)self _fullResolve];
        [(UICollectionViewCompositionalLayout *)self _updateCollectionViewBackgroundColor];
        v13 = 0;
      }

      else
      {
        v11 = [(UICollectionViewCompositionalLayout *)self solver];
        v12 = [(UICollectionViewCompositionalLayoutConfiguration *)configuration boundarySupplementaryItems];
        v13 = [(_UICollectionCompositionalLayoutSolver *)v11 resolveForUpdatedGlobalSupplementaries:v12];
      }

      [(UICollectionViewCompositionalLayout *)self _computeAndUpdateAdjustedContentFrame];
    }

    v14 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
    [v14 _setInvalidateEverything:1];
    if (v13)
    {
      [v14 setContentOffsetAdjustment:{v13[6], v13[7]}];
      [v14 _setShouldInvalidateCollectionViewContentSize:1];
    }

    v16.receiver = self;
    v16.super_class = UICollectionViewCompositionalLayout;
    [(UICollectionViewLayout *)&v16 invalidateLayoutWithContext:v14];
  }
}

- (UICollectionViewCompositionalLayout)initWithLayoutSection:(id)a3
{
  v5 = +[UICollectionViewCompositionalLayoutConfiguration defaultConfiguration];
  v6 = [(UICollectionViewCompositionalLayout *)self initWithSection:a3 sectionProvider:0 configuration:v5];

  return v6;
}

- (UICollectionViewCompositionalLayout)initWithLayoutSection:(id)a3 scrollDirection:(int64_t)a4
{
  v7 = +[UICollectionViewCompositionalLayoutConfiguration defaultConfiguration];
  [v7 setScrollDirection:a4];
  v8 = [(UICollectionViewCompositionalLayout *)self initWithSection:a3 sectionProvider:0 configuration:v7];

  return v8;
}

- (void)setBoundarySupplementaryItems:(id)a3
{
  v3 = *(__UILogGetCategoryCachedImpl("CompositionalLayout", &setBoundarySupplementaryItems____s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Warning: this method is no longer supported - ignoring update to boundarySupplementaryItems", v4, 2u);
  }
}

- (void)_setRecomputesLayoutForEmptyUpdates:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_compositionalLayoutFlags = *&self->_compositionalLayoutFlags & 0xEF | v3;
}

- (void)_setCollectionView:(id)a3
{
  v5 = [(UICollectionViewLayout *)self collectionView];
  if (self)
  {
    collectionViewTraitChangeRegistration = self->_collectionViewTraitChangeRegistration;
  }

  else
  {
    collectionViewTraitChangeRegistration = 0;
  }

  v7 = collectionViewTraitChangeRegistration;
  [(UICollectionViewCompositionalLayout *)self setCollectionViewTraitChangeRegistration:?];
  if (v5 && v7)
  {
    [v5 unregisterForTraitChanges:v7];
  }

  v10.receiver = self;
  v10.super_class = UICollectionViewCompositionalLayout;
  [(UICollectionViewLayout *)&v10 _setCollectionView:a3];
  v8 = +[_UICollectionCompositionalLayoutSolver traitsRequiringInvalidationForChanges];
  if ([v8 count])
  {
    v9 = [a3 _registerForTraitTokenChanges:v8 withTarget:self action:sel__solverObservedTraitsDidChange];
    [(UICollectionViewCompositionalLayout *)self setCollectionViewTraitChangeRegistration:v9];
  }

  _UIUpdateCollectionViewForScrollDirection(a3, [(UICollectionViewCompositionalLayoutConfiguration *)self->_configuration scrollDirection]);
}

- (void)setCollectionViewTraitChangeRegistration:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 376), a2);
  }
}

- (void)_prepareForTransitionToLayout:(id)a3
{
  [(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule teardown];
  swipeActionsModule = self->super._swipeActionsModule;
  self->super._swipeActionsModule = 0;

  v6.receiver = self;
  v6.super_class = UICollectionViewCompositionalLayout;
  [(UICollectionViewLayout *)&v6 _prepareForTransitionToLayout:a3];
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UICollectionViewCompositionalLayout *)self _performDeferredResolveIfNecessary];
  kdebug_trace();
  v8 = [(_UICollectionCompositionalLayoutSolver *)self->_solver layoutAttributesForElementsInRect:y, width, height];
  kdebug_trace();

  return v8;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  [(UICollectionViewCompositionalLayout *)self _performDeferredResolveIfNecessary];
  solver = self->_solver;

  return [(_UICollectionCompositionalLayoutSolver *)solver layoutAttributesForItemAtIndexPath:a3];
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  [(UICollectionViewCompositionalLayout *)self _performDeferredResolveIfNecessary];
  solver = self->_solver;

  return [(_UICollectionCompositionalLayoutSolver *)&solver->super.isa layoutAttributesForSupplementaryViewOfKind:a3 withIndexPath:a4];
}

- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4
{
  [(UICollectionViewCompositionalLayout *)self _performDeferredResolveIfNecessary];
  solver = self->_solver;

  return [(_UICollectionCompositionalLayoutSolver *)solver layoutAttributesForDecorationViewOfKind:a3 withIndexPath:a4];
}

- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)a3 withTargetPosition:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(UICollectionViewCompositionalLayout *)self _performDeferredResolveIfNecessary];
  v8 = [(_UICollectionCompositionalLayoutSolver *)self->_solver layoutAttributesForInteractivelyMovingItemAtIndexPath:a3 withTargetPosition:x, y];
  if (!v8)
  {
    v10.receiver = self;
    v10.super_class = UICollectionViewCompositionalLayout;
    v8 = [(UICollectionViewLayout *)&v10 layoutAttributesForInteractivelyMovingItemAtIndexPath:a3 withTargetPosition:x, y];
  }

  return v8;
}

- (BOOL)_allowsItemInteractionsToBegin
{
  if ([(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule hasActiveSwipe])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = UICollectionViewCompositionalLayout;
  return [(UICollectionViewLayout *)&v4 _allowsItemInteractionsToBegin];
}

- (NSDirectionalEdgeInsets)_supplementaryViewInsetsForScrollingToItemAtIndexPath:(id)a3
{
  [(UICollectionViewCompositionalLayout *)self _performDeferredResolveIfNecessary];
  v5 = [a3 item];
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x4010000000;
    v24 = "";
    v25 = 0u;
    v26 = 0u;
    solver = self->_solver;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __93__UICollectionViewCompositionalLayout__supplementaryViewInsetsForScrollingToItemAtIndexPath___block_invoke;
    v20[3] = &unk_1E70FA4C8;
    v20[4] = a3;
    v20[5] = &v21;
    [(_UICollectionCompositionalLayoutSolver *)solver enumeratePinnedSupplementaryItems:v20];
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v22[2]), vceqzq_f64(v22[3]))))))
    {
      v11 = -[UICollectionViewCompositionalLayout _layoutSectionForSectionIndex:](self, "_layoutSectionForSectionIndex:", [a3 section]);
      if ([v11 _extensionBehavior] == 2)
      {
        v12 = [(UICollectionViewLayout *)self collectionView];
        [v12 _currentScreenScale];
        v14 = v13;
        if (![a3 item])
        {
          v22[2] = vsubq_f64(v22[2], vdupq_lane_s64(COERCE__INT64(1.0 / v14), 0));
        }

        v15 = [a3 item];
        if (v15 == [v12 numberOfItemsInSection:{objc_msgSend(a3, "section")}] - 1)
        {
          v22[3] = vsubq_f64(v22[3], vdupq_lane_s64(COERCE__INT64(1.0 / v14), 0));
        }
      }

      v7 = v22[2].f64[1];
      v9 = v22[3].f64[1];
      v18.f64[0] = v22[3].f64[0];
      v19.f64[0] = v22[2].f64[0];
    }

    else
    {
      v18 = v22[3];
      v19 = v22[2];
      v7 = v22[2].f64[1];
      v9 = v22[3].f64[1];
    }

    _Block_object_dispose(&v21, 8);
    v8 = v18.f64[0];
    v6 = v19.f64[0];
  }

  v16 = v7;
  v17 = v9;
  result.trailing = v17;
  result.bottom = v8;
  result.leading = v16;
  result.top = v6;
  return result;
}

void __93__UICollectionViewCompositionalLayout__supplementaryViewInsetsForScrollingToItemAtIndexPath___block_invoke(uint64_t a1, id *a2, void *a3)
{
  v6 = [*(a1 + 32) section];
  v7 = [a3 indexPath];
  v8 = [v7 section];

  if (v6 != v8)
  {
    return;
  }

  v21 = [(_UICollectionLayoutFramesQueryResult *)a2 supplementaryItem];
  v9 = [v21 extendsBoundary];
  v10 = v21;
  if (v9)
  {
    v11 = [v21 containerAnchor];
    v12 = [v11 edges];

    if (v12)
    {
      v17 = *(*(*(a1 + 40) + 8) + 32);
      [a3 frame];
      Height = CGRectGetHeight(v25);
      if (v17 >= Height)
      {
        Height = v17;
      }

      *(*(*(a1 + 40) + 8) + 32) = Height;
      if ((v12 & 4) == 0)
      {
LABEL_5:
        if ((v12 & 2) == 0)
        {
LABEL_9:
          v10 = v21;
          if ((v12 & 8) != 0)
          {
            v15 = *(*(*(a1 + 40) + 8) + 56);
            [a3 frame];
            Width = CGRectGetWidth(v24);
            v10 = v21;
            if (v15 >= Width)
            {
              Width = v15;
            }

            *(*(*(a1 + 40) + 8) + 56) = Width;
          }

          goto LABEL_13;
        }

LABEL_6:
        v13 = *(*(*(a1 + 40) + 8) + 40);
        [a3 frame];
        v14 = CGRectGetWidth(v23);
        if (v13 >= v14)
        {
          v14 = v13;
        }

        *(*(*(a1 + 40) + 8) + 40) = v14;
        goto LABEL_9;
      }
    }

    else if ((v12 & 4) == 0)
    {
      goto LABEL_5;
    }

    v19 = *(*(*(a1 + 40) + 8) + 48);
    [a3 frame];
    v20 = CGRectGetHeight(v26);
    if (v19 >= v20)
    {
      v20 = v19;
    }

    *(*(*(a1 + 40) + 8) + 48) = v20;
    if ((v12 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

LABEL_13:
}

- (CGRect)_frameForScrollingToFirstElementInSectionAtIndex:(int64_t)a3
{
  v5 = [(UICollectionViewCompositionalLayout *)self dataSourceSnapshotter];
  v6 = [v5 numberOfSections];

  if (v6 <= a3)
  {
    v61.receiver = self;
    v61.super_class = UICollectionViewCompositionalLayout;
    [(UICollectionViewLayout *)&v61 _frameForScrollingToFirstElementInSectionAtIndex:a3];
    v17 = v33;
    v19 = v34;
    v21 = v35;
    v23 = v36;
  }

  else
  {
    v7 = [(UICollectionViewCompositionalLayout *)self _layoutSectionForSectionIndex:a3];
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = __Block_byref_object_copy__26;
    v59 = __Block_byref_object_dispose__26;
    v60 = 0;
    v8 = [(UICollectionViewCompositionalLayout *)self _layoutAxis];
    v9 = [v7 boundarySupplementaryItems];
    v10 = v9;
    v11 = 3;
    if (v8 == 2)
    {
      v11 = 1;
    }

    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __88__UICollectionViewCompositionalLayout__frameForScrollingToFirstElementInSectionAtIndex___block_invoke;
    v54[3] = &unk_1E70FA4F0;
    v54[4] = &v55;
    v54[5] = v11;
    [v9 enumerateObjectsUsingBlock:v54];

    v12 = v56[5];
    if (v12)
    {
      v13 = [v12 elementKind];
      v14 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:a3];
      v15 = [(UICollectionViewCompositionalLayout *)self layoutAttributesForSupplementaryViewOfKind:v13 atIndexPath:v14];
      [v15 frame];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      if ([v56[5] pinToVisibleBounds] && objc_msgSend(v7, "_extensionBehavior") == 2)
      {
        if (v15 && (v15[289] & 0x80) != 0)
        {
          v24 = [(UICollectionViewCompositionalLayout *)self solver];
          v17 = [(_UICollectionCompositionalLayoutSolver *)v24 unpinnedFrameOfBoundarySupplementaryElementOfKind:v13 withIndexPath:v14];
          v19 = v25;
          v21 = v26;
          v23 = v27;
        }

        v62.origin.x = v17;
        v62.origin.y = v19;
        v62.size.width = v21;
        v62.size.height = v23;
        if (!CGRectIsNull(v62))
        {
          v28 = [(UICollectionViewLayout *)self collectionView];

          if (v28)
          {
            v29 = [(UICollectionViewLayout *)self collectionView];
            [v29 _currentScreenScale];
            v31 = v30;

            v17 = v17 + _UISetPointValueForAxis(v8, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), 1.0 / v31);
            v19 = v19 + v32;
          }
        }
      }
    }

    else
    {
      v37 = [(UICollectionViewCompositionalLayout *)self dataSourceSnapshotter];
      v38 = [v37 numberOfItemsInSection:a3];

      if (v38 < 1)
      {
        v53.receiver = self;
        v53.super_class = UICollectionViewCompositionalLayout;
        [(UICollectionViewLayout *)&v53 _frameForScrollingToFirstElementInSectionAtIndex:a3];
        v17 = v45;
        v19 = v46;
        v21 = v47;
        v23 = v48;
      }

      else
      {
        v39 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:a3];
        v40 = [(UICollectionViewCompositionalLayout *)self layoutAttributesForItemAtIndexPath:v39];

        [v40 frame];
        v17 = v41;
        v19 = v42;
        v21 = v43;
        v23 = v44;
      }
    }

    _Block_object_dispose(&v55, 8);
  }

  v49 = v17;
  v50 = v19;
  v51 = v21;
  v52 = v23;
  result.size.height = v52;
  result.size.width = v51;
  result.origin.y = v50;
  result.origin.x = v49;
  return result;
}

void __88__UICollectionViewCompositionalLayout__frameForScrollingToFirstElementInSectionAtIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ((*(a1 + 40) & ~[a2 alignment]) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (CGPoint)_targetPositionForInteractiveMovementOfItemAtIndexPath:(id)a3 withProposedTargetPosition:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = -[UICollectionViewCompositionalLayout _layoutSectionForSectionIndex:](self, "_layoutSectionForSectionIndex:", [a3 section]);
  v9 = v8;
  if (v8 && [v8 shouldRestrictOrthogonalAxisDuringInteractiveMovement])
  {
    v10 = [(_UICollectionCompositionalLayoutSolver *)self->_solver layoutAttributesForItemAtIndexPath:a3];
    v11 = [(UICollectionViewCompositionalLayout *)self _layoutAxis];
    if (v11 == 1)
    {
      v12 = 2;
    }

    else
    {
      v12 = v11 == 2;
    }

    [v10 center];
    v15 = _UIPointValueForAxis(v12, v13, v14);
    x = _UISetPointValueForAxis(v12, x, y, v15);
    y = v16;
  }

  v17 = x;
  v18 = y;
  result.y = v18;
  result.x = v17;
  return result;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UICollectionViewCompositionalLayout *)self solver];
  v9 = v8;
  if (!v8 || *(v8 + 104) && [(UICollectionViewCompositionalLayout *)self _invokeVisibleBoundsUpdateForDynamicAnimatorForNewVisibleBounds:0 preparingLayout:x, y, width, height]|| (*&self->_compositionalLayoutFlags & 4) != 0)
  {
    v11 = 1;
  }

  else
  {
    v15 = 0;
    v10 = [(_UICollectionCompositionalLayoutSolver *)v9 shouldInvalidateForBoundsChange:x requiresContainerUpdate:y, width, height];
    v11 = v10;
    if (v15 == 1 && !v10)
    {
      v12 = v9[6];
      v13 = [(_UICollectionLayoutContainer *)v12 containerUpdatingContentSize:height];

      objc_storeStrong(v9 + 6, v13);
    }
  }

  return v11;
}

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v36 = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = UICollectionViewCompositionalLayout;
  v8 = [(UICollectionViewLayout *)&v32 invalidationContextForBoundsChange:?];
  [(UICollectionViewCompositionalLayout *)self memoizedPreviousSolvedCollectionViewBounds];
  v12 = v11 != x;
  if (v13 != y)
  {
    v12 = 1;
  }

  v14 = v10 == height && v9 == width;
  if (v14 && v12)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  [v8 _setIntent:v15];
  if (v14 && (_UICollectionViewCompositionalLayoutShouldDeferResolvesUntilQueried() & 1) == 0)
  {
    v16 = [(UICollectionViewCompositionalLayout *)self solver];
    if (v16)
    {
      v17 = v16[36];

      if (v17 >= 1)
      {
        v18 = [(UICollectionViewCompositionalLayout *)self _invokeVisibleItemsInvalidationHandlerIfNeededForVisibleBounds:x, y, width, height];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v19 = [v18 countByEnumeratingWithState:&v28 objects:v35 count:16];
        if (!v19)
        {
          goto LABEL_25;
        }

        v20 = v19;
        v21 = *v29;
        while (1)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v29 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v28 + 1) + 8 * i);
            if ([v23 representedElementCategory])
            {
              if ([v23 representedElementCategory] != 1)
              {
                continue;
              }

              v24 = [v23 representedElementKind];
              v25 = [v23 indexPath];
              v33 = v25;
              v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
              [v8 invalidateSupplementaryElementsOfKind:v24 atIndexPaths:v26];
            }

            else
            {
              v24 = [v23 indexPath];
              v34 = v24;
              v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
              [v8 invalidateItemsAtIndexPaths:v25];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v28 objects:v35 count:16];
          if (!v20)
          {
            goto LABEL_25;
          }
        }
      }
    }

    else
    {
      v18 = 0;
LABEL_25:
    }
  }

  return v8;
}

- (void)invalidateLayoutWithContext:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  if (*&self->_compositionalLayoutFlags)
  {
    v26.receiver = self;
    v26.super_class = UICollectionViewCompositionalLayout;
    [(UICollectionViewLayout *)&v26 invalidateLayoutWithContext:a3];
  }

  else
  {
    v5 = [(UICollectionViewLayout *)self collectionView];
    [v5 _visibleBounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    if ([(UICollectionViewCompositionalLayout *)self _viewBoundsPermitsLayout:v7, v9, v11, v13])
    {
      kdebug_trace();
      v14 = [a3 _intent];
      if (_UICollectionViewCompositionalLayoutShouldDeferResolvesUntilQueried())
      {
        if (([a3 invalidateEverything] & 1) == 0)
        {
          if (v14 == 3)
          {
            v15 = 1;
          }

          else
          {
            v15 = (*&self->_compositionalLayoutFlags >> 2) & 1;
          }

          [a3 _setInvalidateEverything:v15];
        }

        [(UICollectionViewCompositionalLayout *)self _queueDeferredResolveForInvalidationWithContext:a3];
      }

      else
      {
        [(UICollectionViewCompositionalLayout *)self _resolveImmediatelyForInvalidationWithContext:a3];
      }

      v24.receiver = self;
      v24.super_class = UICollectionViewCompositionalLayout;
      [(UICollectionViewLayout *)&v24 invalidateLayoutWithContext:a3];
      kdebug_trace();
    }

    else
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UICollectionLayout", &invalidateLayoutWithContext____s_category);
      if (*CategoryCachedImpl)
      {
        v17 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = v17;
          v19 = [(UICollectionViewLayout *)self collectionView];
          v20 = _UICollectionViewLayoutInvalidationContextIntentDescription([a3 _intent]);
          v36.origin.x = v7;
          v36.origin.y = v9;
          v36.size.width = v11;
          v36.size.height = v13;
          v21 = NSStringFromCGRect(v36);
          v22 = [(UICollectionViewLayout *)self collectionView];
          [v22 _effectiveContentInset];
          v23 = NSStringFromUIEdgeInsets(v37);
          *buf = 134218754;
          v28 = v19;
          v29 = 2112;
          v30 = v20;
          v31 = 2112;
          v32 = v21;
          v33 = 2112;
          v34 = v23;
          _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "invalidateLayoutWithContext: cv==%p; intent == %@; visibleBounds == %@; effectiveContentInsets == %@; We are IGNORING this invalidation since the area to layout in is 0.", buf, 0x2Au);
        }
      }

      *&self->_compositionalLayoutFlags |= 4u;
      v25.receiver = self;
      v25.super_class = UICollectionViewCompositionalLayout;
      [(UICollectionViewLayout *)&v25 invalidateLayoutWithContext:a3];
    }
  }
}

- (void)_queueDeferredResolveForInvalidationWithContext:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = [a3 _intent];
  deferredResolveType = self->_deferredResolveType;
  compositionalLayoutFlags = self->_compositionalLayoutFlags;
  if ((compositionalLayoutFlags & 8) != 0)
  {
    if (v6 != 3 && v6 != 8 && (*&self->_compositionalLayoutFlags & 4) == 0)
    {
      goto LABEL_8;
    }

    *&self->_compositionalLayoutFlags = compositionalLayoutFlags & 0xF7;
    if (deferredResolveType != 7)
    {
      self->_deferredResolveType = 0;
    }
  }

  if ((compositionalLayoutFlags & 4) != 0)
  {
LABEL_20:
    v9 = 0;
    v11 = 0;
    v10 = 7;
    goto LABEL_21;
  }

LABEL_8:
  v9 = 0;
  v10 = 0;
  v11 = 1;
  switch(v6)
  {
    case 0:
      [a3 _setRequiresFullCacheInvalidation];
      goto LABEL_20;
    case 1:
      v9 = 0;
      v11 = 0;
      v10 = 3;
      break;
    case 2:
      v9 = 0;
      v11 = 0;
      v10 = 6;
      break;
    case 3:
      goto LABEL_20;
    case 4:
    case 5:
      v9 = 0;
      v11 = 0;
      v10 = 1;
      break;
    case 6:
    case 12:
      break;
    case 7:
      v9 = 0;
      v11 = 0;
      v10 = 2;
      break;
    case 8:
      if (deferredResolveType == 7)
      {
        goto LABEL_36;
      }

      v12 = [(UICollectionViewCompositionalLayout *)self _updateResolve];
      if (v12)
      {
        v9 = v12[40];
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_37;
    case 9:
      [(UICollectionViewCompositionalLayout *)self _handleSwipeActionsInvalidationWithContext:a3];
      goto LABEL_36;
    case 10:
      [(UICollectionViewCompositionalLayout *)self _handlePreferredSizingDataInvalidation:a3];
      goto LABEL_36;
    case 11:
      [(UICollectionViewCompositionalLayout *)self _handleEndInteractiveReorderingWithContext:a3];
LABEL_36:
      v9 = 0;
LABEL_37:
      v10 = 0;
      break;
    case 13:
      v9 = 0;
      v11 = 0;
      v10 = 4;
      break;
    case 14:
      v9 = 0;
      v11 = 0;
      v10 = 5;
      break;
    case 15:
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [(UICollectionViewLayout *)self collectionView];
      [v13 handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionalLayout.m" lineNumber:726 description:{@"Compositional Layout internal bug: Attempting to queue a invalidation for an already deferred invalidation context. Collection View: %@, Layout: %@", v14, self}];

      goto LABEL_40;
    default:
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionalLayout.m" lineNumber:732 description:{@"Compositional Layout internal bug: Attempting to process invalidation context with unknown intent. Intent: %lld; Context: %@; Layout: %@", objc_msgSend(a3, "_intent"), a3, self}];
LABEL_40:

      v9 = 0;
      v10 = 0;
      v11 = 1;
      break;
  }

LABEL_21:
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UICollectionLayout", &_queueDeferredResolveForInvalidationWithContext____s_category);
  if (*CategoryCachedImpl)
  {
    v18 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      log = v18;
      v19 = [(UICollectionViewLayout *)self collectionView];
      v22 = _UIStringFromCompositionalLayoutResolveType(v10);
      v20 = _UICollectionViewLayoutInvalidationContextIntentDescription([a3 _intent]);
      v21 = _UIStringFromCompositionalLayoutResolveType(self->_deferredResolveType);
      *buf = 134218754;
      v25 = v19;
      v26 = 2112;
      v27 = v22;
      v28 = 2112;
      v29 = v20;
      v30 = 2112;
      v31 = v21;
      _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "_queueDeferredResolve: cv == %p; Computed required resolve: %@ for invalidation: %@. Current deferred resolve type: %@", buf, 0x2Au);
    }
  }

  v16 = self->_deferredResolveType;
  if (v10 > v16)
  {
    self->_deferredResolveType = v10;
    v16 = v10;
  }

  if (a3)
  {
    v17 = v11;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    *(a3 + 112) |= 8u;
    v16 = self->_deferredResolveType;
  }

  if (!v16)
  {
    [(UICollectionViewCompositionalLayout *)self _solveForPinnedSupplementaryItemsIfNeededWithContext:a3];
    if (v9)
    {
      [(UICollectionViewCompositionalLayout *)self _updateCollectionViewBackgroundColor];
    }
  }

  [(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule processLayoutInvalidationWithContext:a3 updateConfigurations:v9 & 1];
}

- (void)_resolveImmediatelyForInvalidationWithContext:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (([a3 invalidateEverything] & 1) == 0 && (objc_msgSend(a3, "_intent") == 3 || !objc_msgSend(a3, "_intent") || objc_msgSend(a3, "_intent") == 2 || objc_msgSend(a3, "_intent") == 7 || (*&self->_compositionalLayoutFlags & 4) != 0))
  {
    [a3 _setInvalidateEverything:1];
  }

  if ((*&self->_compositionalLayoutFlags & 4) != 0)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UICollectionLayout", &_resolveImmediatelyForInvalidationWithContext____s_category);
    if (*CategoryCachedImpl)
    {
      v13 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        v15 = [(UICollectionViewLayout *)self collectionView];
        v16 = _UICollectionViewLayoutInvalidationContextIntentDescription([a3 _intent]);
        v17 = [(UICollectionViewLayout *)self collectionView];
        [v17 _effectiveContentInset];
        v18 = NSStringFromUIEdgeInsets(v26);
        v19 = 134218498;
        v20 = v15;
        v21 = 2112;
        v22 = v16;
        v23 = 2112;
        v24 = v18;
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "_resolveImmediatelyIfNecessary: cv==%p; intent == %@; effectiveContentInsets == %@; Performing full resolve since forceFullResolveForNextSolve is set.", &v19, 0x20u);
      }
    }

LABEL_13:
    [(UICollectionViewCompositionalLayout *)self _fullResolve];
    [(UICollectionViewCompositionalLayout *)self _solveForPinnedSupplementaryItemsIfNeededWithContext:a3];
    goto LABEL_14;
  }

  if ([a3 _intent] == 2)
  {
    v5 = [(UICollectionViewCompositionalLayout *)self _boundsChangeResolve];
    [a3 _setInvalidateEverything:1];
    if (!v5)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  if ([a3 _intent] == 7)
  {
    v8 = [(UICollectionViewCompositionalLayout *)self _marginsChangeResolve];
    goto LABEL_17;
  }

  if ([a3 _intent] == 9)
  {
    [(UICollectionViewCompositionalLayout *)self _handleSwipeActionsInvalidationWithContext:a3];
    goto LABEL_29;
  }

  v10 = [(UICollectionViewCompositionalLayout *)self currentUpdate];
  if (v10)
  {
    v11 = v10;
    v12 = [a3 _intent];

    if (v12 == 8)
    {
      v8 = [(UICollectionViewCompositionalLayout *)self _updateResolve];
      goto LABEL_17;
    }
  }

  if ([a3 _intent] == 10)
  {
    [(UICollectionViewCompositionalLayout *)self _handlePreferredSizingDataInvalidation:a3];
    goto LABEL_29;
  }

  if ([a3 _intent] == 11)
  {
    [(UICollectionViewCompositionalLayout *)self _handleEndInteractiveReorderingWithContext:a3];
    goto LABEL_29;
  }

  if ([a3 _intent] != 13)
  {
    if (([a3 invalidateEverything] & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_13;
  }

  v8 = [(UICollectionViewCompositionalLayout *)self _scrollViewAdjustmentsChangeResolve];
LABEL_17:
  v5 = v8;
  if (!v8)
  {
LABEL_29:
    [(UICollectionViewCompositionalLayout *)self _solveForPinnedSupplementaryItemsIfNeededWithContext:a3];
LABEL_30:
    v7 = 0;
    goto LABEL_31;
  }

LABEL_18:
  [a3 setContentOffsetAdjustment:{*(v5 + 48), *(v5 + 56)}];
  [a3 _setShouldInvalidateCollectionViewContentSize:1];
  v9 = *(v5 + 40);

  [(UICollectionViewCompositionalLayout *)self _solveForPinnedSupplementaryItemsIfNeededWithContext:a3];
  if ((v9 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_14:
  [(UICollectionViewCompositionalLayout *)self _updateCollectionViewBackgroundColor];
  v7 = 1;
LABEL_31:
  [(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule processLayoutInvalidationWithContext:a3 updateConfigurations:v7];
}

- (id)indexPathsToInsertForSupplementaryViewOfKind:(id)a3
{
  v15.receiver = self;
  v15.super_class = UICollectionViewCompositionalLayout;
  v5 = [(UICollectionViewLayout *)&v15 indexPathsToInsertForSupplementaryViewOfKind:?];
  v6 = v5;
  v7 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [(UICollectionViewCompositionalLayout *)self currentResolveResult];

  if (v9)
  {
    v10 = [(UICollectionViewCompositionalLayout *)self currentResolveResult];
    v11 = [(_UICollectionCompositionalLayoutSolverResolveResult *)v10 indexPathsForInsertedSupplememtariesForElementKind:a3];
    v12 = [v11 allObjects];

    if ([v12 count])
    {
      v13 = [v8 arrayByAddingObjectsFromArray:v12];

      v8 = v13;
    }
  }

  return v8;
}

- (id)indexPathsToInsertForDecorationViewOfKind:(id)a3
{
  v15.receiver = self;
  v15.super_class = UICollectionViewCompositionalLayout;
  v5 = [(UICollectionViewLayout *)&v15 indexPathsToInsertForDecorationViewOfKind:?];
  v6 = v5;
  v7 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [(UICollectionViewCompositionalLayout *)self currentResolveResult];

  if (v9)
  {
    v10 = [(UICollectionViewCompositionalLayout *)self currentResolveResult];
    v11 = [(_UICollectionCompositionalLayoutSolverResolveResult *)v10 indexPathsForInsertedDecorationsForElementKind:a3];
    v12 = [v11 allObjects];

    if ([v12 count])
    {
      v13 = [v8 arrayByAddingObjectsFromArray:v12];

      v8 = v13;
    }
  }

  return v8;
}

- (id)indexPathsToDeleteForSupplementaryViewOfKind:(id)a3
{
  v15.receiver = self;
  v15.super_class = UICollectionViewCompositionalLayout;
  v5 = [(UICollectionViewLayout *)&v15 indexPathsToDeleteForSupplementaryViewOfKind:?];
  v6 = v5;
  v7 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [(UICollectionViewCompositionalLayout *)self currentResolveResult];

  if (v9)
  {
    v10 = [(UICollectionViewCompositionalLayout *)self currentResolveResult];
    v11 = [(_UICollectionCompositionalLayoutSolverResolveResult *)v10 indexPathsForDeletedSupplememtariesForElementKind:a3];
    v12 = [v11 allObjects];

    if ([v12 count])
    {
      v13 = [v8 arrayByAddingObjectsFromArray:v12];

      v8 = v13;
    }
  }

  return v8;
}

- (id)indexPathsToDeleteForDecorationViewOfKind:(id)a3
{
  v15.receiver = self;
  v15.super_class = UICollectionViewCompositionalLayout;
  v5 = [(UICollectionViewLayout *)&v15 indexPathsToDeleteForDecorationViewOfKind:?];
  v6 = v5;
  v7 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [(UICollectionViewCompositionalLayout *)self currentResolveResult];

  if (v9)
  {
    v10 = [(UICollectionViewCompositionalLayout *)self currentResolveResult];
    v11 = [(_UICollectionCompositionalLayoutSolverResolveResult *)v10 indexPathsForDeletedDecorationsForElementKind:a3];
    v12 = [v11 allObjects];

    if ([v12 count])
    {
      v13 = [v8 arrayByAddingObjectsFromArray:v12];

      v8 = v13;
    }
  }

  return v8;
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3
{
  v5 = [(UICollectionViewCompositionalLayout *)self currentUpdate];
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

  if (v8 && _CompositionalLayoutShouldOverrideInitialAttributesDuringUpdates())
  {
    v9 = [v8 initialIndexPathForFinalIndexPath:a3];
    if (v9)
    {
      v10 = [(UICollectionViewCompositionalLayout *)self solver];
      v11 = [(_UICollectionCompositionalLayoutSolver *)v10 preUpdateFrameForItemAtInitialIndexPath:v9];
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v23.origin.x = v11;
      v23.origin.y = v13;
      v23.size.width = v15;
      v23.size.height = v17;
      if (!CGRectIsNull(v23))
      {
        v18 = [(UICollectionViewCompositionalLayout *)self layoutAttributesForItemAtIndexPath:a3];
        v19 = [v18 copy];

        if (v19)
        {
          [v19 setFrame:{v11, v13, v15, v17}];

          goto LABEL_11;
        }
      }
    }
  }

  v21.receiver = self;
  v21.super_class = UICollectionViewCompositionalLayout;
  v19 = [(UICollectionViewLayout *)&v21 initialLayoutAttributesForAppearingItemAtIndexPath:a3];
LABEL_11:

  return v19;
}

- (id)initialLayoutAttributesForAppearingDecorationElementOfKind:(id)a3 atIndexPath:(id)a4
{
  v7 = [(UICollectionViewCompositionalLayout *)self currentUpdate];
  v8 = v7;
  if (v7)
  {
    v9 = *(v7 + 16);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10 && _CompositionalLayoutShouldOverrideInitialAttributesDuringUpdates())
  {
    v11 = [v10 initialIndexPathForSupplementaryElementOfKind:a3 forFinalIndexPath:a4];
    if (v11)
    {
      v12 = [(UICollectionViewCompositionalLayout *)self solver];
      v13 = [(_UICollectionCompositionalLayoutSolver *)v12 preUpdateFrameForDecorationViewOfKind:a3 withInitialIndexPath:v11];
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v25.origin.x = v13;
      v25.origin.y = v15;
      v25.size.width = v17;
      v25.size.height = v19;
      if (!CGRectIsNull(v25))
      {
        v20 = [(UICollectionViewCompositionalLayout *)self layoutAttributesForDecorationViewOfKind:a3 atIndexPath:a4];
        v21 = [v20 copy];

        if (v21)
        {
          [v21 setFrame:{v13, v15, v17, v19}];

          goto LABEL_11;
        }
      }
    }
  }

  v23.receiver = self;
  v23.super_class = UICollectionViewCompositionalLayout;
  v21 = [(UICollectionViewLayout *)&v23 initialLayoutAttributesForAppearingDecorationElementOfKind:a3 atIndexPath:a4];
LABEL_11:

  return v21;
}

- (id)initialLayoutAttributesForAppearingSupplementaryElementOfKind:(id)a3 atIndexPath:(id)a4
{
  v7 = [(UICollectionViewCompositionalLayout *)self currentUpdate];
  v8 = v7;
  if (v7)
  {
    v9 = *(v7 + 16);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10 && _CompositionalLayoutShouldOverrideInitialAttributesDuringUpdates())
  {
    v11 = [v10 initialIndexPathForSupplementaryElementOfKind:a3 forFinalIndexPath:a4];
    if (v11)
    {
      v12 = [(UICollectionViewCompositionalLayout *)self solver];
      v13 = [(_UICollectionCompositionalLayoutSolver *)v12 preUpdateFrameForSupplementaryViewOfKind:a3 withInitialIndexPath:v11];
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v25.origin.x = v13;
      v25.origin.y = v15;
      v25.size.width = v17;
      v25.size.height = v19;
      if (!CGRectIsNull(v25))
      {
        v20 = [(UICollectionViewCompositionalLayout *)self layoutAttributesForSupplementaryViewOfKind:a3 atIndexPath:a4];
        v21 = [v20 copy];

        if (v21)
        {
          [v21 setFrame:{v13, v15, v17, v19}];

          goto LABEL_11;
        }
      }
    }
  }

  v23.receiver = self;
  v23.super_class = UICollectionViewCompositionalLayout;
  v21 = [(UICollectionViewLayout *)&v23 initialLayoutAttributesForAppearingSupplementaryElementOfKind:a3 atIndexPath:a4];
LABEL_11:

  return v21;
}

- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4
{
  if (a4)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_17:
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionalLayout.m" lineNumber:1067 description:{@"Invalid parameter not satisfying: %@", @"preferredAttributes != nil"}];

    if (a4)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionalLayout.m" lineNumber:1066 description:{@"Invalid parameter not satisfying: %@", @"originalAttributes != nil"}];

  if (!a3)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (a4)
  {
LABEL_4:
    v8 = *(a4 + 72);
    if ((v8 & 1) == 0 && (v8 & 3) != 0)
    {
      return 0;
    }

    v10 = [(UICollectionViewLayout *)self collectionView];
    v11 = v10;
    if (v10)
    {
      v12 = *(v10 + 3352);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = [(UICollectionViewCompositionalLayout *)self solver];
    v15 = [(_UICollectionCompositionalLayoutSolver *)v14 updatePreferredSizeIfNeededForPreferredLayoutAttributes:a3 withOriginalAttributes:a4 debugger:v13];

    if (v15)
    {
      [(_UIUpdateVisibleCellsContext *)self->_updateVisibleCellsContext addPreferredAttributes:a3];
      if (dyld_program_sdk_at_least())
      {
        v9 = self->_updateVisibleCellsContext == 0;
LABEL_14:

        return v9;
      }
    }

    else
    {
      dyld_program_sdk_at_least();
    }

    v9 = 0;
    goto LABEL_14;
  }

  return 0;
}

- (id)invalidationContextForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  [(UICollectionView *)self->super._collectionView _visibleBounds:a3];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v17[0] = a3;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v15 = [(UICollectionViewCompositionalLayout *)self _preferredAttributesResolveWithInvalidatedPreferredAttributes:v14 layoutOffset:*MEMORY[0x1E695EFF8] visibleRect:*(MEMORY[0x1E695EFF8] + 8), v7, v9, v11, v13];

  return v15;
}

- (id)_preferredAttributesResolveWithInvalidatedPreferredAttributes:(id)a3 layoutOffset:(CGPoint)a4 visibleRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.y;
  v10 = a4.x;
  kdebug_trace();
  v13 = [(UICollectionViewCompositionalLayout *)self solver];
  v14 = [(_UICollectionCompositionalLayoutSolver *)v13 resolveForInvalidatedPreferredAttributes:a3 scrollOffset:v10 visibleRect:v9, x, y, width, height];

  [(UICollectionViewCompositionalLayout *)self _computeAndUpdateAdjustedContentFrame];
  kdebug_trace();

  return v14;
}

- (void)_didPerformUpdateVisibleCellsPassWithLayoutOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v57 = *MEMORY[0x1E69E9840];
  v6 = [(UICollectionViewCompositionalLayout *)self _estimatesSizes];
  updateVisibleCellsContext = self->_updateVisibleCellsContext;
  if (v6)
  {
    if (updateVisibleCellsContext)
    {
      --updateVisibleCellsContext->_visibleCellsRefCount;
      v8 = self->_updateVisibleCellsContext;
      if (v8)
      {
        if ([(NSMutableArray *)v8->_attributes count]&& !v8->_visibleCellsRefCount)
        {
          [(UICollectionView *)self->super._collectionView _visibleBounds];
          v10 = v9;
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v17 = [(UICollectionViewCompositionalLayout *)self solver];
          v18 = self->_updateVisibleCellsContext;
          if (v18)
          {
            v18 = v18->_indexPaths;
          }

          v19 = v18;
          v20 = [(_UICollectionCompositionalLayoutSolver *)v17 itemsWithoutPreferredSizesInGroupsWithItemsAtIndexPaths:v19];

          v21 = [(_UILabelConfigurationInternal *)&self->_updateVisibleCellsContext->super.isa _disabledTextColor];
          v22 = [(UICollectionViewCompositionalLayout *)self _preferredAttributesResolveWithInvalidatedPreferredAttributes:v21 layoutOffset:x visibleRect:y, v10, v12, v14, v16];

          if (v22)
          {
            objc_setProperty_nonatomic_copy(v22, v23, v20, 128);
          }

          CategoryCachedImpl = __UILogGetCategoryCachedImpl("UICollectionLayout", &_didPerformUpdateVisibleCellsPassWithLayoutOffset____s_category);
          if (*CategoryCachedImpl)
          {
            v36 = *(CategoryCachedImpl + 8);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v37 = v36;
              v38 = [(UICollectionViewLayout *)self collectionView];
              v59.x = x;
              v59.y = y;
              v39 = NSStringFromCGPoint(v59);
              v40 = [(_UILabelConfigurationInternal *)&self->_updateVisibleCellsContext->super.isa _disabledTextColor];
              v41 = [v20 valueForKey:@"_ui_shortDescription"];
              *buf = 134218754;
              v50 = v38;
              v51 = 2112;
              v52 = v39;
              v53 = 2112;
              v54 = v40;
              v55 = 2112;
              v56 = v41;
              _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_ERROR, "_didPerformUpdateVisibleCellsPassWithLayoutOffset: cv == %p; layoutOffset == %@; preferredSizes == %@; dependentItems == %@", buf, 0x2Au);
            }
          }

          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v25 = [(_UILabelConfigurationInternal *)&self->_updateVisibleCellsContext->super.isa _disabledTextColor];
          v26 = [v25 countByEnumeratingWithState:&v42 objects:v48 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v43;
            do
            {
              for (i = 0; i != v27; ++i)
              {
                if (*v43 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v42 + 1) + 8 * i);
                if (v30)
                {
                  v31 = v30[72];
                  if (v31)
                  {
                    v32 = [*(*(&v42 + 1) + 8 * i) indexPath];
                    v47 = v32;
                    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
                    [v22 invalidateItemsAtIndexPaths:v33];
                  }

                  else
                  {
                    if ((v31 & 2) != 0)
                    {
                      continue;
                    }

                    v32 = [(_UILabelConfiguration *)*(*(&v42 + 1) + 8 * i) _content];
                    v33 = [v30 indexPath];
                    v46 = v33;
                    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
                    [v22 invalidateSupplementaryElementsOfKind:v32 atIndexPaths:v34];
                  }
                }
              }

              v27 = [v25 countByEnumeratingWithState:&v42 objects:v48 count:16];
            }

            while (v27);
          }

          [(UICollectionViewCompositionalLayout *)self invalidateLayoutWithContext:v22];
          [(UICollectionView *)self->super._collectionView _setNeedsVisibleCellsUpdate:1 withLayoutAttributes:1];
        }

        v35 = self->_updateVisibleCellsContext;
        if (v35)
        {
          if (v35->_visibleCellsRefCount <= 0)
          {
            self->_updateVisibleCellsContext = 0;
          }
        }
      }
    }
  }

  else
  {
    self->_updateVisibleCellsContext = 0;
  }
}

- (void)_prepareForPreferredAttributesQueryForView:(id)a3 withLayoutAttributes:(id)a4
{
  if ([(UICollectionViewCompositionalLayout *)self _estimatesSizes])
  {
    v7 = [(UICollectionViewCompositionalLayout *)self solver];
    [(_UICollectionCompositionalLayoutSolver *)v7 prepareForPreferredAttributesQueryForView:a3 withLayoutAttributes:a4];

    v8 = [a4 indexPath];
    if ([v8 item] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = -[UICollectionViewCompositionalLayout _layoutSectionForSectionIndex:](self, "_layoutSectionForSectionIndex:", [v8 section]);
      interactionStateModule = self->_interactionStateModule;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __103__UICollectionViewCompositionalLayout__prepareForPreferredAttributesQueryForView_withLayoutAttributes___block_invoke;
      v12[3] = &unk_1E70F6228;
      v13 = v9;
      v14 = a4;
      v15 = self;
      v11 = v9;
      [(_UICollectionViewLayoutInteractionStateModule *)interactionStateModule performPreferredAttributesProcessingBlock:v12 withLayoutAttributes:a4 forView:a3];
    }
  }
}

void __103__UICollectionViewCompositionalLayout__prepareForPreferredAttributesQueryForView_withLayoutAttributes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _callback];
  [v2 _transformFittingLayoutAttributes:*(a1 + 40) interactionState:*(*(a1 + 48) + 280)];
}

- (void)_postProcessPreferredAttributes:(id)a3 forView:(id)a4
{
  v7 = [a3 indexPath];
  if ([v7 item] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [a3 indexPath];
    v9 = -[UICollectionViewCompositionalLayout _layoutSectionForSectionIndex:](self, "_layoutSectionForSectionIndex:", [v8 section]);

    interactionStateModule = self->_interactionStateModule;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__UICollectionViewCompositionalLayout__postProcessPreferredAttributes_forView___block_invoke;
    v12[3] = &unk_1E70F6228;
    v13 = v9;
    v14 = a3;
    v15 = self;
    v11 = v9;
    [(_UICollectionViewLayoutInteractionStateModule *)interactionStateModule performPreferredAttributesProcessingBlock:v12 withLayoutAttributes:a3 forView:a4];
  }
}

void __79__UICollectionViewCompositionalLayout__postProcessPreferredAttributes_forView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _callback];
  [v2 _transformPreferredLayoutAttributes:*(a1 + 40) interactionState:*(*(a1 + 48) + 280)];
}

- (BOOL)_shouldInvalidateLayoutForOldInsets:(UIEdgeInsets)a3 newInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v8 = a3.right;
  v9 = a3.bottom;
  v10 = a3.left;
  v11 = a3.top;
  v12 = [(UICollectionViewCompositionalLayout *)self _layoutAxis];
  if (v12 == 1)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12 == 2;
  }

  return !_UIEdgeInsetsEqualToInsetsAlongAxis(v13, v11, v10, v9, v8, top, left, bottom, right);
}

- (BOOL)_shouldInvalidateLayoutForUpdatedSafeAreaInsets:(UIEdgeInsets)a3 fromOldInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v8 = a3.right;
  v9 = a3.bottom;
  v10 = a3.left;
  v11 = a3.top;
  if (!_UISupportsShouldInvalidateForInsets())
  {
    return 1;
  }

  return [(UICollectionViewCompositionalLayout *)self _shouldInvalidateLayoutForOldInsets:top newInsets:left, bottom, right, v11, v10, v9, v8];
}

- (BOOL)_shouldInvalidateLayoutForUpdatedLayoutMargins:(UIEdgeInsets)a3 fromOldMargins:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v8 = a3.right;
  v9 = a3.bottom;
  v10 = a3.left;
  v11 = a3.top;
  if (!_UISupportsShouldInvalidateForInsets())
  {
    return 1;
  }

  return [(UICollectionViewCompositionalLayout *)self _shouldInvalidateLayoutForOldInsets:top newInsets:left, bottom, right, v11, v10, v9, v8];
}

- (id)_invalidationContextForUpdatedLayoutMargins:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  if (_UISupportsShouldInvalidateForInsets())
  {
    v32.receiver = self;
    v32.super_class = UICollectionViewCompositionalLayout;
    v8 = [(UICollectionViewLayout *)&v32 _invalidationContextForUpdatedLayoutMargins:top, left, bottom, right];
    [v8 _setIntent:2];
    goto LABEL_23;
  }

  v9 = [(UICollectionViewLayout *)self collectionView];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  [(UICollectionViewCompositionalLayout *)self memoizedPreviousSolvedCollectionViewBounds];
  v16 = v13 == v15 && v11 == v14;

  [(UICollectionViewCompositionalLayout *)self memoizedPreviousLayoutMargins];
  if (left != v20 || top != v17 || right != v19)
  {
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_18:
    v31.receiver = self;
    v31.super_class = UICollectionViewCompositionalLayout;
    v27 = [(UICollectionViewLayout *)&v31 _invalidationContextForUpdatedLayoutMargins:top, left, bottom, right];
    v8 = v27;
    goto LABEL_20;
  }

  if (!v16)
  {
    goto LABEL_18;
  }

  if (bottom != v18)
  {
LABEL_13:
    v30.receiver = self;
    v30.super_class = UICollectionViewCompositionalLayout;
    v8 = [(UICollectionViewLayout *)&v30 _invalidationContextForUpdatedLayoutMargins:top, left, bottom, right];
    v21 = [(UICollectionViewCompositionalLayout *)self _layoutAxis];
    if (v21 == 1)
    {
      v22 = 2;
    }

    else
    {
      v22 = v21 == 2;
    }

    [(UICollectionViewCompositionalLayout *)self memoizedPreviousLayoutMargins];
    if (_UIEdgeInsetsEqualToInsetsAlongAxis(v22, v23, v24, v25, v26, top, left, bottom, right))
    {
      v27 = v8;
      v28 = 7;
LABEL_21:
      [v27 _setIntent:v28];
      goto LABEL_22;
    }

    v27 = v8;
LABEL_20:
    v28 = 2;
    goto LABEL_21;
  }

  v8 = 0;
LABEL_22:
  [(UICollectionViewCompositionalLayout *)self setMemoizedPreviousLayoutMargins:top, left, bottom, right];
LABEL_23:

  return v8;
}

- (void)_prepareForCollectionViewUpdates:(id)a3 withDataSourceTranslator:(id)a4
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__UICollectionViewCompositionalLayout__prepareForCollectionViewUpdates_withDataSourceTranslator___block_invoke;
  aBlock[3] = &unk_1E70FA518;
  aBlock[4] = a4;
  v7 = _Block_copy(aBlock);
  [(UICollectionView *)self->super._collectionView _visibleBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [off_1E70ECC48 snapshotterForSectionCountsProvider:v7];
  v17 = [(_UICollectionCompositionalLayoutSolverUpdate *)v9 solverUpdateForVisibleBounds:v11 updateItems:v13 updateTranslator:v15 finalDataSourceSnapshot:_UICollectionCompositionalLayoutSolverUpdate, a3, a4, v16];
  [(UICollectionViewCompositionalLayout *)self setCurrentUpdate:v17];

  v18 = [(UICollectionViewCompositionalLayout *)self solver];
  [(_UICollectionCompositionalLayoutSolver *)v18 prepareForCollectionViewUpdates];

  [(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule updateWithDataSourceTranslator:a4];
}

uint64_t __97__UICollectionViewCompositionalLayout__prepareForCollectionViewUpdates_withDataSourceTranslator___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (a2 == -1)
  {

    return [v4 finalSectionCount];
  }

  else
  {
    [v4 finalSectionGlobalItemRangeForSection:{a2, v2, v3}];
    return v5;
  }
}

- (BOOL)_shouldPopulateInitialAndFinalLayoutAttributesForAllUpdateItems:(BOOL)a3
{
  v3 = a3;
  if ([(UICollectionViewCompositionalLayout *)self _estimatesSizes])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = UICollectionViewCompositionalLayout;
  return [(UICollectionViewLayout *)&v6 _shouldPopulateInitialAndFinalLayoutAttributesForAllUpdateItems:v3];
}

- (void)_finalizeCollectionViewUpdate:(id)a3
{
  v5 = [(UICollectionViewCompositionalLayout *)self solver];
  [(_UICollectionCompositionalLayoutSolver *)v5 finalizeCollectionViewUpdates];

  [(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule finalizeCollectionViewUpdate:a3];
  [(UICollectionViewCompositionalLayout *)self setCurrentUpdate:0];
  [(UICollectionViewCompositionalLayout *)self setCurrentResolveResult:0];
  v6.receiver = self;
  v6.super_class = UICollectionViewCompositionalLayout;
  [(UICollectionViewLayout *)&v6 _finalizeCollectionViewUpdate:a3];
}

- (CGRect)_contentFrameForSection:(int64_t)a3
{
  v3 = [(UICollectionViewCompositionalLayout *)self _sectionDescriptorForSectionIndex:a3];
  v4 = MEMORY[0x1E695F050];
  v5 = (MEMORY[0x1E695F050] + 24);
  v6 = (MEMORY[0x1E695F050] + 16);
  v7 = (MEMORY[0x1E695F050] + 8);
  if (v3)
  {
    v4 = v3 + 18;
    v7 = v3 + 19;
    v6 = v3 + 20;
    v5 = v3 + 21;
  }

  v8 = *v5;
  v9 = *v6;
  v10 = *v7;
  v11 = *v4;

  v12 = v11;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)_layoutFrameForSection:(int64_t)a3
{
  v3 = [(UICollectionViewCompositionalLayout *)self _sectionDescriptorForSectionIndex:a3];
  v4 = MEMORY[0x1E695F050];
  v5 = (MEMORY[0x1E695F050] + 24);
  v6 = (MEMORY[0x1E695F050] + 16);
  v7 = (MEMORY[0x1E695F050] + 8);
  if (v3)
  {
    v4 = v3 + 14;
    v7 = v3 + 15;
    v6 = v3 + 16;
    v5 = v3 + 17;
  }

  v8 = *v5;
  v9 = *v6;
  v10 = *v7;
  v11 = *v4;

  v12 = v11;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)_wantsCustomSectionContainers
{
  v2 = [(UICollectionViewCompositionalLayout *)self solver];
  if (v2)
  {
    v3 = v2[14];
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (id)_sectionDescriptorForSectionIndex:(int64_t)a3
{
  v4 = [(UICollectionViewCompositionalLayout *)self solver];
  v5 = [(_UICollectionCompositionalLayoutSolver *)v4 sectionDescriptorForSectionIndex:a3];

  return v5;
}

- (BOOL)_shouldAddElementToSectionContainer:(id)a3
{
  v4 = [(UICollectionViewCompositionalLayout *)self solver];
  v5 = v4;
  if (v4)
  {
    v6 = [(_UICollectionCompositionalLayoutSolver *)v4 shouldEmplaceElementOutsideSectionContainer:a3]^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (int64_t)_anchorForAuxiliaryElementOfKind:(id)a3
{
  v4 = [(UICollectionViewCompositionalLayout *)self solver];
  v5 = [(_UICollectionCompositionalLayoutSolver *)v4 _anchorForAuxiliaryElementOfKind:a3];

  return v5;
}

- (BOOL)_wantsBandSelectionVisualsInSection:(int64_t)a3
{
  v5 = [(UICollectionViewCompositionalLayout *)self _layoutSectionForSectionIndex:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _wantsBandSelectionVisuals];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UICollectionViewCompositionalLayout;
    v7 = [(UICollectionViewLayout *)&v10 _wantsBandSelectionVisualsInSection:a3];
  }

  v8 = v7;

  return v8;
}

- (BOOL)_allowsPanningAcrossConstrainedAxisToBeginMultiSelectInteractionInSection:(int64_t)a3
{
  v3 = [(UICollectionViewCompositionalLayout *)self _layoutSectionForSectionIndex:a3];
  v4 = [v3 shouldRestrictOrthogonalAxisDuringInteractiveMovement];

  return v4 ^ 1;
}

void __51__UICollectionViewCompositionalLayout__fullResolve__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained invalidateLayoutWithContext:a2];
    WeakRetained = v4;
  }
}

void __51__UICollectionViewCompositionalLayout__fullResolve__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    UICollectionViewCompositionalLayoutAlertForInvalidLayout(WeakRetained, a2, a3, a4, a5, a6);
    WeakRetained = v12;
  }
}

- (void)_handleEndInteractiveReorderingWithContext:(id)a3
{
  if (!a3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionalLayout.m" lineNumber:1579 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v9 = [a3 targetIndexPathsForInteractivelyMovingItems];
  [a3 invalidateItemsAtIndexPaths:?];
  v5 = [(UICollectionViewCompositionalLayout *)self solver];
  v6 = v5;
  if (v5)
  {
    [*(v5 + 208) removeObjectsForKeys:v9];
  }
}

- (id)_sectionDefinitionsUpdateResolve
{
  v3 = [(UICollectionViewLayout *)self collectionView];
  if (v3)
  {
    kdebug_trace();
    [v3 bounds];
    [(UICollectionViewCompositionalLayout *)self setMemoizedPreviousSolvedCollectionViewBounds:?];
    v4 = [(UICollectionViewCompositionalLayout *)self _containerFromCollectionView];
    v5 = [(UICollectionViewCompositionalLayout *)self solver];
    v6 = [(_UICollectionCompositionalLayoutSolver *)v5 resolveForUpdatingSectionDefinitionsWithContainer:v4];

    [(UICollectionViewCompositionalLayout *)self _computeAndUpdateAdjustedContentFrame];
    [v3 visibleBounds];
    v7 = [(UICollectionViewCompositionalLayout *)self _invokeVisibleItemsInvalidationHandlerIfNeededForVisibleBounds:?];
    kdebug_trace();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_marginsChangeResolve
{
  v3 = [(UICollectionViewLayout *)self collectionView];
  if (v3)
  {
    kdebug_trace();
    [v3 bounds];
    [(UICollectionViewCompositionalLayout *)self setMemoizedPreviousSolvedCollectionViewBounds:?];
    v4 = [(UICollectionViewCompositionalLayout *)self _containerFromCollectionView];
    v5 = [(UICollectionViewCompositionalLayout *)self solver];
    v6 = [(_UICollectionCompositionalLayoutSolver *)v5 resolveForMarginsChange:v4];

    [(UICollectionViewCompositionalLayout *)self _computeAndUpdateAdjustedContentFrame];
    [v3 visibleBounds];
    v7 = [(UICollectionViewCompositionalLayout *)self _invokeVisibleItemsInvalidationHandlerIfNeededForVisibleBounds:?];
    v8 = [(UICollectionViewCompositionalLayout *)self _updatePinnedSectionSupplementaryItemsForCurrentVisibleBounds];
    kdebug_trace();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_scrollViewAdjustmentsChangeResolve
{
  v3 = [(UICollectionViewLayout *)self collectionView];
  if (v3)
  {
    kdebug_trace();
    [v3 bounds];
    [(UICollectionViewCompositionalLayout *)self setMemoizedPreviousSolvedCollectionViewBounds:?];
    v4 = [(UICollectionViewCompositionalLayout *)self _containerFromCollectionView];
    v5 = [(UICollectionViewCompositionalLayout *)self solver];
    v6 = [(_UICollectionCompositionalLayoutSolver *)v5 resolveForScrollViewLayoutAdjustmentsChange:v4];

    [(UICollectionViewCompositionalLayout *)self _computeAndUpdateAdjustedContentFrame];
    [v3 visibleBounds];
    v7 = [(UICollectionViewCompositionalLayout *)self _invokeVisibleItemsInvalidationHandlerIfNeededForVisibleBounds:?];
    v8 = [(UICollectionViewCompositionalLayout *)self _updatePinnedSectionSupplementaryItemsForCurrentVisibleBounds];
    kdebug_trace();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_handleSwipeActionsInvalidationWithContext:(id)a3
{
  v5 = [(UICollectionViewLayout *)self collectionView];

  if (v5)
  {
    v6 = [a3 invalidatedItemIndexPaths];
    if ([v6 count])
    {
      v7 = [(UICollectionViewCompositionalLayout *)self solver];
      v8 = v7;
      if (v7)
      {
        [*(v7 + 208) removeObjectsForKeys:v6];
      }
    }

    v9 = [a3 invalidatedDecorationIndexPaths];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__UICollectionViewCompositionalLayout__handleSwipeActionsInvalidationWithContext___block_invoke;
    v10[3] = &unk_1E70FA680;
    v10[4] = self;
    [v9 enumerateKeysAndObjectsUsingBlock:v10];
  }
}

void __82__UICollectionViewCompositionalLayout__handleSwipeActionsInvalidationWithContext___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) solver];
  [(_UICollectionCompositionalLayoutSolver *)v5 invalidateCachedDecorationAttributesForElementKind:a2 atIndexPaths:a3];
}

- (void)_handlePreferredSizingDataInvalidation:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [(UICollectionViewLayout *)self collectionView];

  if (v5)
  {
    v6 = [a3 invalidatedItemIndexPaths];
    if ([v6 count])
    {
      v7 = [(UICollectionViewCompositionalLayout *)self solver];
      v8 = v7;
      if (v7)
      {
        [*(v7 + 208) removeObjectsForKeys:v6];
      }

      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = v6;
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v20;
          do
          {
            v13 = 0;
            do
            {
              if (*v20 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v19 + 1) + 8 * v13);
              v15 = [(UICollectionViewLayout *)self collectionView];
              v16 = [v15 cellForItemAtIndexPath:v14];

              [v16 _invalidatePreferredAttributes];
              ++v13;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v11);
        }
      }
    }

    v17 = [a3 invalidatedDecorationIndexPaths];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __78__UICollectionViewCompositionalLayout__handlePreferredSizingDataInvalidation___block_invoke;
    v18[3] = &unk_1E70FA680;
    v18[4] = self;
    [v17 enumerateKeysAndObjectsUsingBlock:v18];
  }
}

void __78__UICollectionViewCompositionalLayout__handlePreferredSizingDataInvalidation___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if ([a3 count])
  {
    v6 = [*(a1 + 32) solver];
    [(_UICollectionCompositionalLayoutSolver *)v6 invalidateCachedDecorationAttributesForElementKind:a2 atIndexPaths:a3];
  }
}

- (BOOL)_invokeVisibleBoundsUpdateForDynamicAnimatorForNewVisibleBounds:(CGRect)a3 preparingLayout:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a4 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*&self->_memoizedDynamicAnimatorWorldAdjustingInsets.top), vceqzq_f64(*&self->_memoizedDynamicAnimatorWorldAdjustingInsets.bottom))))) & 1) == 0)
  {
    p_memoizedDynamicAnimatorWorldAdjustingInsets = &self->_memoizedDynamicAnimatorWorldAdjustingInsets;
    v54 = CGRectGetHeight(a3);
    v55.origin.x = x;
    v55.origin.y = y;
    v55.size.width = width;
    v55.size.height = height;
    v53 = CGRectGetWidth(v55);
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    *&v10 = CGRectGetHeight(v56);
    v52 = v10;
    *&v10 = x;
    v11 = y;
    v12 = width;
    v13 = height;
    v14 = CGRectGetWidth(*&v10);
    v15.f64[0] = v54;
    v15.f64[1] = v53;
    *&v16.f64[0] = v52;
    v16.f64[1] = v14;
    __asm { FMOV            V0.2D, #-2.0 }

    *p_memoizedDynamicAnimatorWorldAdjustingInsets = vmulq_f64(v15, _Q0);
    p_memoizedDynamicAnimatorWorldAdjustingInsets[1] = vmulq_f64(v16, _Q0);
    v22 = [(UICollectionViewLayout *)self collectionView];
    [v22 _visibleRectEdgeInsets];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    if (v26 == 0.0 && v24 == 0.0 && v30 == 0.0 && v28 == 0.0)
    {
      v31 = [(UICollectionViewLayout *)self collectionView];
      [v31 _setVisibleRectEdgeInsets:{p_memoizedDynamicAnimatorWorldAdjustingInsets->f64[0], p_memoizedDynamicAnimatorWorldAdjustingInsets->f64[1], p_memoizedDynamicAnimatorWorldAdjustingInsets[1].f64[0], p_memoizedDynamicAnimatorWorldAdjustingInsets[1].f64[1]}];
    }
  }

  v32 = [(UICollectionViewLayout *)self collectionView];
  [v32 _visibleBounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = [(UICollectionViewLayout *)self collectionView];
  [v41 _effectiveVisibleBoundsForBounds:{x, y, width, height}];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  v50 = [(UICollectionViewCompositionalLayout *)self solver];
  LOBYTE(v41) = [(_UICollectionCompositionalLayoutSolver *)v50 updateVisibleBoundsForDynamicAnimator:v43 previousVisibleBounds:v45, v47, v49, v34, v36, v38, v40];

  return v41;
}

- (BOOL)_adjustCollectionViewContentInsetBehaviorForLayoutAxisIfNeeded:(unint64_t)a3 container:(id)a4
{
  v7 = [(UIScrollView *)self->super._collectionView _compatibleContentInsetAdjustmentBehavior];
  if (a3 != 1 || (-[UICollectionViewCompositionalLayout collectionViewContentSize](self, "collectionViewContentSize"), v9 = v8, [a4 contentSize], v9 >= v10 + 0.5))
  {
    v11 = 0;
    if (v7 != 102)
    {
      return v11;
    }

    v12 = 0;
LABEL_8:
    [(UIScrollView *)self->super._collectionView setContentInsetAdjustmentBehavior:v12];
    return v11;
  }

  v11 = 1;
  v12 = 102;
  if (!v7 || v7 == 102)
  {
    goto LABEL_8;
  }

  return 0;
}

- (void)_setOffset:(CGPoint)a3 forOrthogonalScrollingSection:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(UICollectionViewCompositionalLayout *)self solver];
  [(_UICollectionCompositionalLayoutSolver *)v7 setOrthogonalOffset:a4 forSection:x, y];
}

- (CGPoint)_offsetForOrthogonalScrollingSection:(int64_t)a3
{
  v3 = [(UICollectionViewCompositionalLayout *)self _sectionDescriptorForSectionIndex:a3];
  if (v3)
  {
    v5 = v3[12];
    v4 = v3[13];
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
  }

  v6 = v5;
  v7 = v4;
  result.y = v7;
  result.x = v6;
  return result;
}

- (unint64_t)_orthogonalScrollingAxis
{
  v2 = [(UICollectionViewCompositionalLayout *)self solver];
  if (v2)
  {
    v3 = v2[8];
    if (v3 == 1)
    {
      v4 = 2;
    }

    else
    {
      v4 = v3 == 2;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_extendedAttributesQueryIncludingOrthogonalScrollingRegions:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UICollectionViewCompositionalLayout *)self _performDeferredResolveIfNecessary];
  v8 = [(UICollectionViewCompositionalLayout *)self solver];
  v9 = [(_UICollectionCompositionalLayoutSolver *)v8 extendedAttributesQueryIncludingOrthogonalScrollingRegions:y, width, height];

  return v9;
}

- (BOOL)_shouldOrthogonalScrollingSectionSupplementaryScrollWithContentForIndexPath:(id)a3 elementKind:(id)a4
{
  v6 = [(UICollectionViewCompositionalLayout *)self solver];
  LOBYTE(a4) = [(_UICollectionCompositionalLayoutSolver *)v6 orthogonalScrollingSectionSupplementaryShouldScrollWithContentForIndexPath:a3 elementKind:a4];

  return a4;
}

- (BOOL)_shouldOrthogonalScrollingSectionDecorationScrollWithContentForIndexPath:(id)a3 elementKind:(id)a4
{
  v6 = [(UICollectionViewCompositionalLayout *)self solver];
  LOBYTE(a4) = [(_UICollectionCompositionalLayoutSolver *)v6 orthogonalScrollingSectionDecorationShouldScrollWithContentForIndexPath:a3 elementKind:a4];

  return a4;
}

- (CGRect)_orthogonalFrameWithOffsetElidedForItemWithLayoutAttributes:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(UICollectionViewCompositionalLayout *)self solver];
  v10 = [(_UICollectionCompositionalLayoutSolver *)v9 orthogonalFrameWithOffsetElidedForItemWithLayoutAttributes:a3 frame:x, y, width, height];
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)_orthogonalScrollingElementShouldAppearAboveForAttributes:(id)a3
{
  v4 = [(UICollectionViewCompositionalLayout *)self solver];
  LOBYTE(a3) = [(_UICollectionCompositionalLayoutSolver *)v4 elementShouldAppearAboveOrthogonalScrollingContainer:a3];

  return a3;
}

- (BOOL)_orthogonalScrollingElementShouldAppearBelowForAttributes:(id)a3
{
  v4 = [(UICollectionViewCompositionalLayout *)self solver];
  LOBYTE(a3) = [(_UICollectionCompositionalLayoutSolver *)v4 elementShouldAppearBelowOrthogonalScrollingContainer:a3];

  return a3;
}

- (id)_invokeVisibleItemsInvalidationHandlerIfNeededForVisibleBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UICollectionViewCompositionalLayout *)self solver];
  if (v8 && (v9 = v8[36], v8, v9 >= 1))
  {
    kdebug_trace();
    v10 = [(UICollectionViewCompositionalLayout *)self solver];
    v11 = [(_UICollectionCompositionalLayoutSolver *)v10 mutatedVisibleItemsForElementsForVisibleBounds:y, width, height];

    kdebug_trace();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_viewBoundsPermitsLayout:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = CGRectGetWidth(a3);
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  return v7 * CGRectGetHeight(v9) > 0.0;
}

- (void)_solveForPinnedSupplementaryItemsIfNeededWithContext:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [(UICollectionViewCompositionalLayout *)self solver];
  v6 = [(_UICollectionCompositionalLayoutSolver *)v5 hasPinnedSupplementaryItems];

  if (v6)
  {
    v7 = [(UICollectionViewCompositionalLayout *)self _updatePinnedSectionSupplementaryItemsForCurrentVisibleBounds];
    if (a3 && ([a3 invalidateEverything] & 1) == 0)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = [v7 invalidatedAuxillaryKinds];
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v15 + 1) + 8 * i);
            v14 = [v7 indexPathsForInvalidatedSupplementariesOfKind:v13];
            [a3 invalidateSupplementaryElementsOfKind:v13 atIndexPaths:v14];
          }

          v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }
    }
  }
}

- (id)_layoutSectionForSectionIndex:(unint64_t)a3
{
  v4 = [(UICollectionViewCompositionalLayout *)self solver];
  v5 = [(_UICollectionCompositionalLayoutSolver *)v4 _existingSectionDefinitionForSectionIndex:a3];

  return v5;
}

- (void)_transformCellLayoutAttributes:(id)a3
{
  v5 = [a3 indexPath];
  v7 = -[UICollectionViewCompositionalLayout _layoutSectionForSectionIndex:](self, "_layoutSectionForSectionIndex:", [v5 section]);

  if (v7)
  {
    v6 = [v7 _callback];
    [v6 _enrichLayoutAttributes:a3 interactionState:self->_interactionStateModule];
  }

  [(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule transformCellLayoutAttributes:a3 isDisappearing:0];
}

- (void)_transformDecorationLayoutAttributes:(id)a3
{
  v7 = [a3 indexPath];
  if ([v7 length] >= 2)
  {
    v5 = -[UICollectionViewCompositionalLayout _layoutSectionForSectionIndex:](self, "_layoutSectionForSectionIndex:", [v7 section]);
    v6 = [v5 _callback];
    [v6 _enrichLayoutAttributes:a3 interactionState:self->_interactionStateModule];
  }

  [(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule transformDecorationLayoutAttributes:a3 isDisappearing:0];
}

- (void)_transformSupplementaryLayoutAttributes:(id)a3
{
  v7 = [a3 indexPath];
  if ([v7 length] >= 2)
  {
    v5 = -[UICollectionViewCompositionalLayout _layoutSectionForSectionIndex:](self, "_layoutSectionForSectionIndex:", [v7 section]);
    v6 = [v5 _callback];
    [v6 _enrichLayoutAttributes:a3 interactionState:self->_interactionStateModule];
  }
}

- (void)_cellBackgroundOrBottomSeparatorChangedAtIndexPath:(id)a3 separatorOnly:(BOOL)a4
{
  v4 = a4;
  v29 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionalLayout.m" lineNumber:2049 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
  }

  v7 = [(UICollectionViewLayout *)self collectionView];
  v8 = [v7 _currentUpdate];

  if (!v8)
  {
    v9 = [v7 _collectionViewData];
    v10 = v9;
    if (v9 && ([(UICollectionViewData *)v9 _isIndexPathValid:a3 validateItemCounts:1]& 1) != 0)
    {
      v11 = -[UICollectionViewCompositionalLayout _layoutSectionForSectionIndex:](self, "_layoutSectionForSectionIndex:", [a3 section]);
      v12 = v11;
      if (v11)
      {
        v13 = [v11 _callback];
        v14 = [v13 _invalidationContextForCellBackgroundOrBottomSeparatorChangeAtIndexPath:a3 interactionState:self->_interactionStateModule separatorOnly:v4];

        if (v14)
        {
          if (!v4)
          {
            v15 = [v7 _selectionController];
            v16 = v15;
            if (v15)
            {
              v17 = [*(v15 + 8) copy];
            }

            else
            {
              v17 = 0;
            }

            v18 = [v17 allObjects];
            [v14 invalidateItemsAtIndexPaths:v18];
          }

          [(UICollectionViewCompositionalLayout *)self invalidateLayoutWithContext:v14];
        }
      }
    }

    else if (os_variant_has_internal_diagnostics())
    {
      v23 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        v24 = @"background";
        if (v4)
        {
          v24 = @"separator";
        }

        *buf = 138412546;
        v26 = v24;
        v27 = 2112;
        v28 = a3;
        _os_log_fault_impl(&dword_188A29000, v23, OS_LOG_TYPE_FAULT, "Ignoring cell %@ change notification received for invalid index path: %@", buf, 0x16u);
      }
    }

    else
    {
      v19 = *(__UILogGetCategoryCachedImpl("Assert", &_cellBackgroundOrBottomSeparatorChangedAtIndexPath_separatorOnly____s_category) + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = @"background";
        if (v4)
        {
          v20 = @"separator";
        }

        *buf = 138412546;
        v26 = v20;
        v27 = 2112;
        v28 = a3;
        _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Ignoring cell %@ change notification received for invalid index path: %@", buf, 0x16u);
      }
    }
  }
}

void __74__UICollectionViewCompositionalLayout__scrollViewLayoutAdjustmentsChanged__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 _callback];
  v7 = v6;
  if (v6)
  {
    v9 = v6;
    v8 = [v6 _shouldInvalidateForScrollViewLayoutAdjustmentsChange];
    v7 = v9;
    if (v8)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

- (void)setEditing:(BOOL)a3
{
  layoutFlags = self->super._layoutFlags;
  if (((((layoutFlags & 0x10) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 16;
    }

    else
    {
      v4 = 0;
    }

    *&self->super._layoutFlags = layoutFlags & 0xEF | v4;
    [(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule editingStateDidChange];
  }
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3
{
  v6.receiver = self;
  v6.super_class = UICollectionViewCompositionalLayout;
  v4 = [(UICollectionViewLayout *)&v6 finalLayoutAttributesForDisappearingItemAtIndexPath:a3];
  if (v4)
  {
    [(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule transformCellLayoutAttributes:v4 isDisappearing:1];
  }

  return v4;
}

- (id)finalLayoutAttributesForDisappearingDecorationElementOfKind:(id)a3 atIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = UICollectionViewCompositionalLayout;
  v5 = [(UICollectionViewLayout *)&v7 finalLayoutAttributesForDisappearingDecorationElementOfKind:a3 atIndexPath:a4];
  if (v5)
  {
    [(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule transformDecorationLayoutAttributes:v5 isDisappearing:1];
  }

  return v5;
}

- (BOOL)_supportsSwipeActionsForIndexPath:(id)a3
{
  v4 = [(UICollectionViewCompositionalLayout *)self solver];
  LOBYTE(a3) = [(_UICollectionCompositionalLayoutSolver *)v4 _supportsSwipeActionsForIndexPath:a3];

  return a3;
}

- (id)_leadingSwipeActionsConfigurationForIndexPath:(id)a3
{
  v4 = [(UICollectionViewCompositionalLayout *)self solver];
  v5 = [(_UICollectionCompositionalLayoutSolver *)v4 _leadingSwipeActionsConfigurationForIndexPath:a3];

  return v5;
}

- (id)_trailingSwipeActionsConfigurationForIndexPath:(id)a3
{
  v4 = [(UICollectionViewCompositionalLayout *)self solver];
  v5 = [(_UICollectionCompositionalLayoutSolver *)v4 _trailingSwipeActionsConfigurationForIndexPath:a3];

  return v5;
}

- (void)_updateStyleForSwipeActionsConfiguration:(id)a3 indexPath:(id)a4
{
  v6 = [(UICollectionViewCompositionalLayout *)self solver];
  [(_UICollectionCompositionalLayoutSolver *)v6 _updateStyleForSwipeActionsConfiguration:a3 indexPath:a4];
}

- (void)_willBeginSwiping
{
  v2 = [(UICollectionViewCompositionalLayout *)self solver];
  [(_UICollectionCompositionalLayoutSolver *)v2 _willBeginSwiping];
}

- (void)_didEndSwiping
{
  v2 = [(UICollectionViewCompositionalLayout *)self solver];
  [(_UICollectionCompositionalLayoutSolver *)v2 _didEndSwiping];
}

- (id)_propertyAnimatorForCollectionViewUpdates:(id)a3 withCustomAnimator:(id)a4
{
  if (self->super._swipeActionsModule)
  {
    v4 = [(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule propertyAnimatorForCollectionViewUpdates:a3 withCustomAnimator:a4];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UICollectionViewCompositionalLayout;
    v4 = [(UICollectionViewLayout *)&v6 _propertyAnimatorForCollectionViewUpdates:a3 withCustomAnimator:a4];
  }

  return v4;
}

- (int64_t)_layoutTypeForSection:(int64_t)a3
{
  v4 = [(UICollectionViewCompositionalLayout *)self solver];
  v5 = [(_UICollectionCompositionalLayoutSolver *)v4 _existingSectionDefinitionForSectionIndex:a3];

  if ([v5 prefersListSolver])
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)_alignedContentMarginGivenMargin:(double)a3
{
  v4 = [(UICollectionViewCompositionalLayout *)self solver];
  v5 = [(_UICollectionCompositionalLayoutSolver *)v4 _existingSectionDefinitionForSectionIndex:?];

  if (v5)
  {
    [v5 _alignedContentMarginGivenMargin:a3];
    a3 = v6;
  }

  return a3;
}

- (id)_sectionsDescription
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"Sections for %@:", self];
  solver = self->_solver;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__UICollectionViewCompositionalLayout__sectionsDescription__block_invoke;
  v7[3] = &unk_1E70FA658;
  v5 = v3;
  v8 = v5;
  [(_UICollectionCompositionalLayoutSolver *)solver enumerateSectionDefinitionsWithBlock:v7];

  return v5;
}

- (UIEdgeInsets)memoizedDynamicAnimatorWorldAdjustingInsets
{
  top = self->_memoizedDynamicAnimatorWorldAdjustingInsets.top;
  left = self->_memoizedDynamicAnimatorWorldAdjustingInsets.left;
  bottom = self->_memoizedDynamicAnimatorWorldAdjustingInsets.bottom;
  right = self->_memoizedDynamicAnimatorWorldAdjustingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)memoizedPreviousLayoutMargins
{
  top = self->_memoizedPreviousLayoutMargins.top;
  left = self->_memoizedPreviousLayoutMargins.left;
  bottom = self->_memoizedPreviousLayoutMargins.bottom;
  right = self->_memoizedPreviousLayoutMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

+ (UICollectionViewCompositionalLayout)layoutWithListConfiguration:(UICollectionLayoutListConfiguration *)configuration
{
  v4 = [(UICollectionLayoutListConfiguration *)configuration copy];
  v5 = [a1 alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __98__UICollectionViewCompositionalLayout_UICollectionLayoutListSection__layoutWithListConfiguration___block_invoke;
  v9[3] = &unk_1E71061B8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 initWithSectionProvider:v9];

  return v7;
}

@end