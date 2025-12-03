@interface UICollectionViewCompositionalLayout
+ (UICollectionViewCompositionalLayout)layoutWithListConfiguration:(UICollectionLayoutListConfiguration *)configuration;
- (BOOL)_adjustCollectionViewContentInsetBehaviorForLayoutAxisIfNeeded:(unint64_t)needed container:(id)container;
- (BOOL)_allowsItemInteractionsToBegin;
- (BOOL)_allowsPanningAcrossConstrainedAxisToBeginMultiSelectInteractionInSection:(int64_t)section;
- (BOOL)_estimatesSizes;
- (BOOL)_hasOrthogonalScrollingSections;
- (BOOL)_invokeVisibleBoundsUpdateForDynamicAnimatorForNewVisibleBounds:(CGRect)bounds preparingLayout:(BOOL)layout;
- (BOOL)_orthogonalScrollingElementShouldAppearAboveForAttributes:(id)attributes;
- (BOOL)_orthogonalScrollingElementShouldAppearBelowForAttributes:(id)attributes;
- (BOOL)_shouldAddElementToSectionContainer:(id)container;
- (BOOL)_shouldInvalidateLayoutForOldInsets:(UIEdgeInsets)insets newInsets:(UIEdgeInsets)newInsets;
- (BOOL)_shouldInvalidateLayoutForUpdatedLayoutMargins:(UIEdgeInsets)margins fromOldMargins:(UIEdgeInsets)oldMargins;
- (BOOL)_shouldInvalidateLayoutForUpdatedSafeAreaInsets:(UIEdgeInsets)insets fromOldInsets:(UIEdgeInsets)oldInsets;
- (BOOL)_shouldOrthogonalScrollingSectionDecorationScrollWithContentForIndexPath:(id)path elementKind:(id)kind;
- (BOOL)_shouldOrthogonalScrollingSectionSupplementaryScrollWithContentForIndexPath:(id)path elementKind:(id)kind;
- (BOOL)_shouldPopulateInitialAndFinalLayoutAttributesForAllUpdateItems:(BOOL)items;
- (BOOL)_supportsSwipeActionsForIndexPath:(id)path;
- (BOOL)_viewBoundsPermitsLayout:(CGRect)layout;
- (BOOL)_wantsBandSelectionVisualsInSection:(int64_t)section;
- (BOOL)_wantsCustomSectionContainers;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes;
- (CGPoint)_offsetForOrthogonalScrollingSection:(int64_t)section;
- (CGPoint)_targetPositionForInteractiveMovementOfItemAtIndexPath:(id)path withProposedTargetPosition:(CGPoint)position;
- (CGRect)_contentFrameForSection:(int64_t)section;
- (CGRect)_frameForScrollingToFirstElementInSectionAtIndex:(int64_t)index;
- (CGRect)_layoutFrameForSection:(int64_t)section;
- (CGRect)_orthogonalFrameWithOffsetElidedForItemWithLayoutAttributes:(id)attributes frame:(CGRect)frame;
- (CGRect)contentFrame;
- (CGRect)memoizedPreviousSolvedCollectionViewBounds;
- (CGSize)collectionViewContentSize;
- (NSDirectionalEdgeInsets)_supplementaryViewInsetsForScrollingToItemAtIndexPath:(id)path;
- (UICollectionViewCompositionalLayout)initWithLayoutSection:(id)section;
- (UICollectionViewCompositionalLayout)initWithLayoutSection:(id)section scrollDirection:(int64_t)direction;
- (UICollectionViewCompositionalLayout)initWithSection:(NSCollectionLayoutSection *)section;
- (UICollectionViewCompositionalLayout)initWithSection:(NSCollectionLayoutSection *)section configuration:(UICollectionViewCompositionalLayoutConfiguration *)configuration;
- (UICollectionViewCompositionalLayout)initWithSection:(id)section sectionProvider:(id)provider configuration:(id)configuration;
- (UICollectionViewCompositionalLayout)initWithSectionProvider:(UICollectionViewCompositionalLayoutSectionProvider)sectionProvider;
- (UICollectionViewCompositionalLayout)initWithSectionProvider:(UICollectionViewCompositionalLayoutSectionProvider)sectionProvider configuration:(UICollectionViewCompositionalLayoutConfiguration *)configuration;
- (UICollectionViewCompositionalLayoutConfiguration)configuration;
- (UIEdgeInsets)memoizedDynamicAnimatorWorldAdjustingInsets;
- (UIEdgeInsets)memoizedPreviousLayoutMargins;
- (double)_alignedContentMarginGivenMargin:(double)margin;
- (id)_boundsChangeResolve;
- (id)_containerFromCollectionView;
- (id)_customContainerSectionIndexes;
- (id)_dataSourceSnapshotter;
- (id)_extendedAttributesQueryIncludingOrthogonalScrollingRegions:(CGRect)regions;
- (id)_invalidationContextForUpdatedLayoutMargins:(UIEdgeInsets)margins;
- (id)_invokeVisibleItemsInvalidationHandlerIfNeededForVisibleBounds:(CGRect)bounds;
- (id)_layoutAttributesForIndelibleElements;
- (id)_layoutSectionForSectionIndex:(unint64_t)index;
- (id)_leadingSwipeActionsConfigurationForIndexPath:(id)path;
- (id)_marginsChangeResolve;
- (id)_orthogonalScrollingSections;
- (id)_preferredAttributesResolveWithInvalidatedPreferredAttributes:(id)attributes layoutOffset:(CGPoint)offset visibleRect:(CGRect)rect;
- (id)_propertyAnimatorForCollectionViewUpdates:(id)updates withCustomAnimator:(id)animator;
- (id)_scrollViewAdjustmentsChangeResolve;
- (id)_sectionDefinitionsUpdateResolve;
- (id)_sectionDescriptorForSectionIndex:(int64_t)index;
- (id)_sectionsDescription;
- (id)_trailingSwipeActionsConfigurationForIndexPath:(id)path;
- (id)_updatePinnedSectionSupplementaryItemsForCurrentVisibleBounds;
- (id)_updateResolve;
- (id)finalLayoutAttributesForDisappearingDecorationElementOfKind:(id)kind atIndexPath:(id)path;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path;
- (id)indexPathsToDeleteForDecorationViewOfKind:(id)kind;
- (id)indexPathsToDeleteForSupplementaryViewOfKind:(id)kind;
- (id)indexPathsToInsertForDecorationViewOfKind:(id)kind;
- (id)indexPathsToInsertForSupplementaryViewOfKind:(id)kind;
- (id)initialLayoutAttributesForAppearingDecorationElementOfKind:(id)kind atIndexPath:(id)path;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path;
- (id)initialLayoutAttributesForAppearingSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)invalidationContextForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes;
- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)path withTargetPosition:(CGPoint)position;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)_anchorForAuxiliaryElementOfKind:(id)kind;
- (int64_t)_layoutTypeForSection:(int64_t)section;
- (int64_t)developmentLayoutDirection;
- (unint64_t)_layoutAxis;
- (unint64_t)_orthogonalScrollingAxis;
- (void)_cellBackgroundOrBottomSeparatorChangedAtIndexPath:(id)path separatorOnly:(BOOL)only;
- (void)_collectionViewWillPerformPendingLayoutBeforeUpdate;
- (void)_computeAndUpdateAdjustedContentFrame;
- (void)_createSwipeActionsModuleIfNeeded;
- (void)_didEndSwiping;
- (void)_didPerformUpdateVisibleCellsPassWithLayoutOffset:(CGPoint)offset;
- (void)_finalizeCollectionViewUpdate:(id)update;
- (void)_fullResolve;
- (void)_handleEndInteractiveReorderingWithContext:(id)context;
- (void)_handlePreferredSizingDataInvalidation:(id)invalidation;
- (void)_handleSwipeActionsInvalidationWithContext:(id)context;
- (void)_performDeferredResolveIfNecessary;
- (void)_postProcessPreferredAttributes:(id)attributes forView:(id)view;
- (void)_prepareForCollectionViewUpdates:(id)updates withDataSourceTranslator:(id)translator;
- (void)_prepareForPreferredAttributesQueryForView:(id)view withLayoutAttributes:(id)attributes;
- (void)_prepareForTransitionToLayout:(id)layout;
- (void)_prepareLayout;
- (void)_queueDeferredResolveForInvalidationWithContext:(id)context;
- (void)_resolveImmediatelyForInvalidationWithContext:(id)context;
- (void)_scrollViewLayoutAdjustmentsChanged;
- (void)_setCollectionView:(id)view;
- (void)_setOffset:(CGPoint)offset forOrthogonalScrollingSection:(int64_t)section;
- (void)_setRecomputesLayoutForEmptyUpdates:(BOOL)updates;
- (void)_solveForPinnedSupplementaryItemsIfNeededWithContext:(id)context;
- (void)_transformCellLayoutAttributes:(id)attributes;
- (void)_transformDecorationLayoutAttributes:(id)attributes;
- (void)_transformSupplementaryLayoutAttributes:(id)attributes;
- (void)_updateCollectionViewBackgroundColor;
- (void)_updateStyleForSwipeActionsConfiguration:(id)configuration indexPath:(id)path;
- (void)_willBeginSwiping;
- (void)_willPerformUpdateVisibleCellsPass;
- (void)invalidateLayoutWithContext:(id)context;
- (void)prepareLayout;
- (void)setBoundarySupplementaryItems:(id)items;
- (void)setCollectionViewTraitChangeRegistration:(uint64_t)registration;
- (void)setConfiguration:(UICollectionViewCompositionalLayoutConfiguration *)configuration;
- (void)setEditing:(BOOL)editing;
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
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  if (solver)
  {
    v3 = solver[12];
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (id)_customContainerSectionIndexes
{
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  v3 = solver;
  if (solver)
  {
    v4 = *(solver + 96);
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
  scrollDirection = [(UICollectionViewCompositionalLayoutConfiguration *)self->_configuration scrollDirection];
  if (scrollDirection)
  {
    return scrollDirection == UICollectionViewScrollDirectionHorizontal;
  }

  else
  {
    return 2;
  }
}

- (id)_orthogonalScrollingSections
{
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  v3 = solver;
  if (solver)
  {
    v4 = *(solver + 88);
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
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  if (solver)
  {
    v3 = solver[13];
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
  if (self)
  {
    v2 = *(self + 296);
    if (v2)
    {
      if ((*(self + 288) & 8) != 0)
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("UICollectionLayout", &_MergedGlobals_177);
        if (*CategoryCachedImpl)
        {
          v16 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = v16;
            collectionView = [self collectionView];
            v19 = _UIStringFromCompositionalLayoutResolveType(v2);
            *buf = 134218242;
            v53 = collectionView;
            v54 = 2112;
            v55 = v19;
            _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "_performDeferredResolveIfNecessary: cv==%p; skipping deferred resolve (%@) until update or reload data", buf, 0x16u);

LABEL_17:
          }
        }
      }

      else
      {
        collectionView2 = [self collectionView];
        [collectionView2 _visibleBounds];
        v5 = v4;
        v7 = v6;
        v9 = v8;
        v11 = v10;

        if ([self _viewBoundsPermitsLayout:{v5, v7, v9, v11}])
        {
          kdebug_trace();
          *(self + 296) = 0;
          v12 = __UILogGetCategoryCachedImpl("UICollectionLayout", &qword_1EA969758);
          if (*v12)
          {
            v41 = *(v12 + 8);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              v42 = v41;
              collectionView3 = [self collectionView];
              v44 = _UIStringFromCompositionalLayoutResolveType(v2);
              *buf = 134218242;
              v53 = collectionView3;
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
                [self _scrollViewAdjustmentsChangeResolve];
              }

              else
              {
                [self _sectionDefinitionsUpdateResolve];
              }
              _boundsChangeResolve = ;
LABEL_44:
              v37 = _boundsChangeResolve;
              if (_boundsChangeResolve)
              {
                [v13 setContentOffsetAdjustment:{*(_boundsChangeResolve + 48), *(_boundsChangeResolve + 56)}];
                [v13 _setShouldInvalidateCollectionViewContentSize:1];
                v38 = v37[40];
                [self _solveForPinnedSupplementaryItemsIfNeededWithContext:v13];
                if (v38 != 1)
                {
                  v39 = 0;
                  goto LABEL_49;
                }

                goto LABEL_46;
              }

LABEL_47:
              [self _solveForPinnedSupplementaryItemsIfNeededWithContext:v13];
              v39 = 0;
              v37 = 0;
              goto LABEL_49;
            }

            if (v2 == 6)
            {
              _boundsChangeResolve = [self _boundsChangeResolve];
              goto LABEL_44;
            }

            if (v2 == 7)
            {
              [self _fullResolve];
              [self _solveForPinnedSupplementaryItemsIfNeededWithContext:v13];
              v37 = 0;
LABEL_46:
              [self _updateCollectionViewBackgroundColor];
              v39 = 1;
LABEL_49:
              [*(self + 136) processLayoutInvalidationWithContext:v13 updateConfigurations:v39];
              collectionView4 = [self collectionView];
              [collectionView4 _invalidateLayoutWithContext:v13];

              kdebug_trace();
              return;
            }

LABEL_39:
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:sel__performDeferredResolveIfNecessary object:self file:@"UICollectionViewCompositionalLayout.m" lineNumber:834 description:{@"Attempting to process an invalid or unknown resolve type. Type: %ld", v2}];
LABEL_40:

            goto LABEL_47;
          }

          if (v2 == 1)
          {
            goto LABEL_47;
          }

          if (v2 == 2)
          {
            _boundsChangeResolve = [self _marginsChangeResolve];
            goto LABEL_44;
          }

          if (v2 != 3)
          {
            goto LABEL_39;
          }

          solver = [self solver];
          if (!solver)
          {
            currentHandler = 0;
            goto LABEL_40;
          }

          v25 = solver[36];

          if (v25 < 1)
          {
            goto LABEL_47;
          }

          collectionView5 = [self collectionView];
          [collectionView5 bounds];
          v27 = [self _invokeVisibleItemsInvalidationHandlerIfNeededForVisibleBounds:?];

          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          currentHandler = v27;
          v29 = [currentHandler countByEnumeratingWithState:&v45 objects:v51 count:16];
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
              objc_enumerationMutation(currentHandler);
            }

            v33 = *(*(&v45 + 1) + 8 * v32);
            if (![v33 representedElementCategory])
            {
              break;
            }

            if ([v33 representedElementCategory] == 1)
            {
              representedElementKind = [v33 representedElementKind];
              indexPath = [v33 indexPath];
              v49 = indexPath;
              v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
              [v13 invalidateSupplementaryElementsOfKind:representedElementKind atIndexPaths:v36];

LABEL_32:
            }

            if (v30 == ++v32)
            {
              v30 = [currentHandler countByEnumeratingWithState:&v45 objects:v51 count:16];
              if (!v30)
              {
LABEL_35:

                goto LABEL_40;
              }

              goto LABEL_25;
            }
          }

          representedElementKind = [v33 indexPath];
          v50 = representedElementKind;
          indexPath = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
          [v13 invalidateItemsAtIndexPaths:indexPath];
          goto LABEL_32;
        }

        v20 = __UILogGetCategoryCachedImpl("UICollectionLayout", &qword_1EA969750);
        if (*v20)
        {
          v21 = *(v20 + 8);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v17 = v21;
            collectionView6 = [self collectionView];
            v19 = _UIStringFromCompositionalLayoutResolveType(v2);
            v59.origin.x = v5;
            v59.origin.y = v7;
            v59.size.width = v9;
            v59.size.height = v11;
            v23 = NSStringFromCGRect(v59);
            *buf = 134218498;
            v53 = collectionView6;
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
    collectionView = [(UICollectionViewLayout *)self collectionView];
    [collectionView _visibleBounds];
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
    solver = [(UICollectionViewCompositionalLayout *)self solver];
    _wantsSwipeActions = [(_UICollectionCompositionalLayoutSolver *)solver _wantsSwipeActions];

    if (_wantsSwipeActions)
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
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__UICollectionViewCompositionalLayout__scrollViewLayoutAdjustmentsChanged__block_invoke;
  v5[3] = &unk_1E70FA630;
  v5[4] = &v6;
  [(_UICollectionCompositionalLayoutSolver *)solver enumerateSectionDefinitionsWithBlock:v5];

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
  collectionView = [(UICollectionViewLayout *)self collectionView];
  if (collectionView)
  {
    currentUpdate = [(UICollectionViewCompositionalLayout *)self currentUpdate];

    if (!currentUpdate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionalLayout.m" lineNumber:1591 description:{@"Invalid parameter not satisfying: %@", @"self.currentUpdate != nil"}];
    }

    kdebug_trace();
    currentUpdate2 = [(UICollectionViewCompositionalLayout *)self currentUpdate];
    v7 = currentUpdate2;
    if (currentUpdate2)
    {
      v8 = *(currentUpdate2 + 24);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    [(UICollectionViewCompositionalLayout *)self setDataSourceSnapshotter:v9];

    [collectionView bounds];
    [(UICollectionViewCompositionalLayout *)self setMemoizedPreviousSolvedCollectionViewBounds:?];
    _containerFromCollectionView = [(UICollectionViewCompositionalLayout *)self _containerFromCollectionView];
    if ([(UICollectionViewCompositionalLayout *)self _recomputesLayoutForEmptyUpdates])
    {
      if ([collectionView _isReordering])
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

    solver = [(UICollectionViewCompositionalLayout *)self solver];
    currentUpdate3 = [(UICollectionViewCompositionalLayout *)self currentUpdate];
    v15 = [(_UICollectionCompositionalLayoutSolver *)solver resolveSolutionForUpdate:currentUpdate3 container:_containerFromCollectionView ignoreEmptyUpdate:v11];
    [(UICollectionViewCompositionalLayout *)self setCurrentResolveResult:v15];

    [(UICollectionViewCompositionalLayout *)self _computeAndUpdateAdjustedContentFrame];
    if (dyld_program_sdk_at_least())
    {
      [collectionView visibleBounds];
      v16 = [(UICollectionViewCompositionalLayout *)self _invokeVisibleItemsInvalidationHandlerIfNeededForVisibleBounds:?];
    }

    kdebug_trace();
    currentResolveResult = [(UICollectionViewCompositionalLayout *)self currentResolveResult];
  }

  else
  {
    currentResolveResult = 0;
  }

  return currentResolveResult;
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
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  if (solver)
  {
    v16 = solver;
    contentSize = [(_UICollectionCompositionalLayoutSolver *)solver contentSize];
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

    v14 = _UISizeClampToMinimumSizeForAxis(v13, contentSize, v6, v9, v11);
    [(UICollectionViewCompositionalLayout *)self setContentFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v14, v15];
    solver = v16;
  }
}

- (void)_updateCollectionViewBackgroundColor
{
  collectionView = [(UICollectionViewLayout *)self collectionView];
  _hasCustomBackground = [collectionView _hasCustomBackground];

  if ((_hasCustomBackground & 1) == 0)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__26;
    v11 = __Block_byref_object_dispose__26;
    v12 = 0;
    solver = [(UICollectionViewCompositionalLayout *)self solver];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __75__UICollectionViewCompositionalLayout__updateCollectionViewBackgroundColor__block_invoke;
    v6[3] = &unk_1E70FA630;
    v6[4] = &v7;
    [(_UICollectionCompositionalLayoutSolver *)solver enumerateSectionDefinitionsWithBlock:v6];

    [(UICollectionViewLayout *)self _setPreferredBackgroundColor:v8[5]];
    _Block_object_dispose(&v7, 8);
  }
}

- (id)_layoutAttributesForIndelibleElements
{
  v17 = *MEMORY[0x1E69E9840];
  indexPathsWithActiveSwipes = [(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule indexPathsWithActiveSwipes];
  if ([indexPathsWithActiveSwipes count])
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(indexPathsWithActiveSwipes, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = indexPathsWithActiveSwipes;
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
  collectionView = [(UICollectionViewLayout *)self collectionView];
  contentInsetsReference = [(UICollectionViewCompositionalLayoutConfiguration *)self->_configuration contentInsetsReference];
  [collectionView safeAreaInsets];
  v58 = v6;
  v59 = v5;
  v8 = v7;
  v10 = v9;
  if (collectionView)
  {
    effectiveUserInterfaceLayoutDirection = [collectionView effectiveUserInterfaceLayoutDirection];
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v12 = v8;
    }

    else
    {
      v12 = v10;
    }

    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v8 = v10;
    }

    v10 = v12;
  }

  [collectionView directionalLayoutMargins];
  v56 = v14;
  v57 = v13;
  v16 = v15;
  v18 = v17;
  *&v19 = [(UIView *)collectionView _directionalReadableContentInsets];
  v54 = v20;
  v55 = v19;
  v22 = v21;
  v24 = v23;
  [collectionView _directionalAccessoryEdgeInsets];
  v53 = v25;
  v27 = v26;
  v51 = v28;
  v30 = v29;
  _isRenderedHorizontallyFlipped = [collectionView _isRenderedHorizontallyFlipped];
  if (_isRenderedHorizontallyFlipped)
  {
    v32 = v27;
  }

  else
  {
    v32 = v30;
  }

  v50 = v32;
  if (_isRenderedHorizontallyFlipped)
  {
    v33 = v22;
  }

  else
  {
    v30 = v27;
    v33 = v24;
  }

  if (_isRenderedHorizontallyFlipped)
  {
    v34 = v16;
  }

  else
  {
    v24 = v22;
    v34 = v18;
  }

  v52 = v34;
  if (_isRenderedHorizontallyFlipped)
  {
    v35 = v18;
  }

  else
  {
    v35 = v16;
  }

  if (_isRenderedHorizontallyFlipped)
  {
    v36 = v8;
  }

  else
  {
    v36 = v10;
  }

  if (_isRenderedHorizontallyFlipped)
  {
    v8 = v10;
  }

  v37 = [_UIContentInsetsEnvironment alloc];
  v44 = [(_UIContentInsetsEnvironment *)v37 initWithInsetsReference:contentInsetsReference safeAreaInsets:v59 layoutMarginsInsets:v8 readableContentInsets:v58 scrollAccessoryInsets:v36 minimumInsets:v57, v35, v56, v52, v38, v39, v40, v41, v42, v43, v55, v24, v54, v33, v53, v30, v51, v50, 0, 0, 0, 0];
  v45 = [_UICollectionLayoutContainer alloc];
  [collectionView bounds];
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
  collectionView = [(UICollectionViewLayout *)self collectionView];
  [collectionView visibleBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  collectionView2 = [(UICollectionViewLayout *)self collectionView];
  [collectionView2 _contentInsetIncludingDecorations];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  collectionView3 = [(UICollectionViewLayout *)self collectionView];
  v22 = collectionView3;
  if (collectionView3)
  {
    effectiveUserInterfaceLayoutDirection = [collectionView3 effectiveUserInterfaceLayoutDirection];
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v24 = v16;
    }

    else
    {
      v24 = v20;
    }

    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v16 = v20;
    }

    v20 = v24;
  }

  solver = [(UICollectionViewCompositionalLayout *)self solver];
  v26 = [(_UICollectionCompositionalLayoutSolver *)solver updatePinnedSectionSupplementaryItemsForVisibleBounds:v7 + v14, v9 - (v20 + v16), v11 - (v14 + v18)];

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
    collectionView = [(UICollectionViewLayout *)self collectionView];
    effectiveUserInterfaceLayoutDirection = [collectionView effectiveUserInterfaceLayoutDirection];

    if (effectiveUserInterfaceLayoutDirection == 1)
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
  collectionView2 = [(UICollectionViewLayout *)self collectionView];
  _dataSourceSnapshotter = [(UICollectionViewCompositionalLayout *)self _dataSourceSnapshotter];
  [(UICollectionViewCompositionalLayout *)self setDataSourceSnapshotter:_dataSourceSnapshotter];
  v63 = _dataSourceSnapshotter;
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  restorableState = [(_UICollectionCompositionalLayoutSolver *)solver restorableState];

  v11 = +[_UICollectionCompositionalLayoutSolverOptions defaultOptions];
  [(UICollectionViewCompositionalLayoutConfiguration *)self->_configuration interSectionSpacing];
  if (v11)
  {
    *(v11 + 16) = v12;
  }

  layoutAttributesClass = [objc_opt_class() layoutAttributesClass];
  [(_UIHomeAffordanceObservationRecord *)v11 setLegacyViewServiceSessionIdentifier:layoutAttributesClass];
  invalidationContextClass = [objc_opt_class() invalidationContextClass];
  [(UIContentUnavailableImageProperties *)v11 _setTintColor:invalidationContextClass];
  layoutRTL = [(UICollectionViewCompositionalLayout *)self layoutRTL];
  if (v11)
  {
    *(v11 + 8) = layoutRTL;
  }

  roundsToScreenScale = [(UICollectionViewCompositionalLayout *)self roundsToScreenScale];
  if (v11)
  {
    *(v11 + 9) = roundsToScreenScale;
    objc_setProperty_nonatomic_copy(v11, v17, v7, 40);
  }

  boundarySupplementaryItems = [(UICollectionViewCompositionalLayoutConfiguration *)self->_configuration boundarySupplementaryItems];
  if (v11)
  {
    objc_setProperty_nonatomic_copy(v11, v18, boundarySupplementaryItems, 48);
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

  _containerFromCollectionView = [(UICollectionViewCompositionalLayout *)self _containerFromCollectionView];
  v24 = [_UICollectionCompositionalLayoutSolver alloc];
  traitCollection = [collectionView2 traitCollection];
  v26 = [(_UICollectionCompositionalLayoutSolver *)v24 initWithContainer:_containerFromCollectionView traitCollection:traitCollection layoutAxis:v5 dataSourceSnapshot:v63 options:v11 sectionProvider:v6];
  [(UICollectionViewCompositionalLayout *)self setSolver:v26];

  solver2 = [(UICollectionViewCompositionalLayout *)self solver];
  [restorableState applyToSolver:solver2];

  dynamicsConfigurationHandler = [(UICollectionViewCompositionalLayout *)self dynamicsConfigurationHandler];
  solver3 = [(UICollectionViewCompositionalLayout *)self solver];
  [(_UICollectionCompositionalLayoutSolver *)solver3 setDynamicsConfigurationHandler:dynamicsConfigurationHandler];
  v59 = collectionView2;
  v61 = v7;

  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __51__UICollectionViewCompositionalLayout__fullResolve__block_invoke_6;
  v68[3] = &unk_1E70FA608;
  objc_copyWeak(&v69, location);
  solver4 = [(UICollectionViewCompositionalLayout *)self solver];
  v32 = solver4;
  if (solver4)
  {
    objc_setProperty_nonatomic_copy(solver4, v31, v68, 24);
  }

  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __51__UICollectionViewCompositionalLayout__fullResolve__block_invoke_7;
  v66[3] = &unk_1E70FA608;
  objc_copyWeak(&v67, location);
  solver5 = [(UICollectionViewCompositionalLayout *)self solver];
  v35 = solver5;
  if (solver5)
  {
    objc_setProperty_nonatomic_copy(solver5, v34, v66, 32);
  }

  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __51__UICollectionViewCompositionalLayout__fullResolve__block_invoke_8;
  v64[3] = &unk_1E70FA608;
  objc_copyWeak(&v65, location);
  solver6 = [(UICollectionViewCompositionalLayout *)self solver];
  v38 = solver6;
  if (solver6)
  {
    objc_setProperty_nonatomic_copy(solver6, v37, v64, 40);
  }

  [(UICollectionViewCompositionalLayout *)self _computeAndUpdateAdjustedContentFrame];
  collectionView3 = [(UICollectionViewLayout *)self collectionView];
  [collectionView3 visibleBounds];
  v40 = [(UICollectionViewCompositionalLayout *)self _invokeVisibleItemsInvalidationHandlerIfNeededForVisibleBounds:?];

  solver7 = [(UICollectionViewCompositionalLayout *)self solver];
  if (solver7)
  {
    v42 = solver7[13];

    if (v42)
    {
      v43 = [(UICollectionViewLayout *)self collectionView:collectionView2];
      [v43 bounds];
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;

      [(UICollectionViewCompositionalLayout *)self _invokeVisibleBoundsUpdateForDynamicAnimatorForNewVisibleBounds:1 preparingLayout:v45, v47, v49, v51];
    }
  }

  solver8 = [(UICollectionViewCompositionalLayout *)self solver];
  if (solver8)
  {
    v53 = solver8[15];

    if (v53 != 1)
    {
      goto LABEL_34;
    }

    [(UICollectionViewLayout *)self _setWantsRightToLeftHorizontalMirroringIfNeeded:1];
    collectionView4 = [(UICollectionViewLayout *)self collectionView];
    [collectionView4 _setFlipsHorizontalAxis:1];
  }

  else
  {
    collectionView4 = 0;
  }

LABEL_34:
  v55 = [(UICollectionViewCompositionalLayout *)self _adjustCollectionViewContentInsetBehaviorForLayoutAxisIfNeeded:v5 container:_containerFromCollectionView];
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
  collectionView5 = [(UICollectionViewLayout *)self collectionView];
  [collectionView5 bounds];
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
  collectionView = [(UICollectionViewLayout *)self collectionView];
  dataSource = [collectionView dataSource];

  if (dataSource)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61__UICollectionViewCompositionalLayout__dataSourceSnapshotter__block_invoke;
    v6[3] = &unk_1E70FA518;
    v7 = collectionView;
    snapshotterForNoDataSource = [off_1E70ECC48 snapshotterForSectionCountsProvider:v6];
  }

  else
  {
    snapshotterForNoDataSource = [off_1E70ECC48 snapshotterForNoDataSource];
  }

  return snapshotterForNoDataSource;
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
  collectionView = [(UICollectionViewLayout *)self collectionView];
  if (collectionView)
  {
    kdebug_trace();
    [collectionView bounds];
    [(UICollectionViewCompositionalLayout *)self setMemoizedPreviousSolvedCollectionViewBounds:?];
    _containerFromCollectionView = [(UICollectionViewCompositionalLayout *)self _containerFromCollectionView];
    solver = [(UICollectionViewCompositionalLayout *)self solver];
    v6 = [(_UICollectionCompositionalLayoutSolver *)solver resolveForContainerChange:_containerFromCollectionView];

    [(UICollectionViewCompositionalLayout *)self _computeAndUpdateAdjustedContentFrame];
    [collectionView visibleBounds];
    v7 = [(UICollectionViewCompositionalLayout *)self _invokeVisibleItemsInvalidationHandlerIfNeededForVisibleBounds:?];
    kdebug_trace();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UICollectionViewCompositionalLayout)initWithSection:(id)section sectionProvider:(id)provider configuration:(id)configuration
{
  v11.receiver = self;
  v11.super_class = UICollectionViewCompositionalLayout;
  v8 = [(UICollectionViewLayout *)&v11 init];
  v9 = v8;
  if (v8)
  {
    _UICollectionViewCompositionalLayoutCommonInit(v8, section, provider, configuration);
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionalLayout.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"[configuration isKindOfClass:[UICollectionViewCompositionalLayoutConfiguration class]]"}];
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
      solver = [(UICollectionViewCompositionalLayout *)self solver];

      if (v6 != 8 || solver == 0)
      {
        [(UICollectionViewCompositionalLayout *)self _fullResolve];
        [(UICollectionViewCompositionalLayout *)self _updateCollectionViewBackgroundColor];
        v13 = 0;
      }

      else
      {
        solver2 = [(UICollectionViewCompositionalLayout *)self solver];
        boundarySupplementaryItems = [(UICollectionViewCompositionalLayoutConfiguration *)configuration boundarySupplementaryItems];
        v13 = [(_UICollectionCompositionalLayoutSolver *)solver2 resolveForUpdatedGlobalSupplementaries:boundarySupplementaryItems];
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

- (UICollectionViewCompositionalLayout)initWithLayoutSection:(id)section
{
  v5 = +[UICollectionViewCompositionalLayoutConfiguration defaultConfiguration];
  v6 = [(UICollectionViewCompositionalLayout *)self initWithSection:section sectionProvider:0 configuration:v5];

  return v6;
}

- (UICollectionViewCompositionalLayout)initWithLayoutSection:(id)section scrollDirection:(int64_t)direction
{
  v7 = +[UICollectionViewCompositionalLayoutConfiguration defaultConfiguration];
  [v7 setScrollDirection:direction];
  v8 = [(UICollectionViewCompositionalLayout *)self initWithSection:section sectionProvider:0 configuration:v7];

  return v8;
}

- (void)setBoundarySupplementaryItems:(id)items
{
  v3 = *(__UILogGetCategoryCachedImpl("CompositionalLayout", &setBoundarySupplementaryItems____s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Warning: this method is no longer supported - ignoring update to boundarySupplementaryItems", v4, 2u);
  }
}

- (void)_setRecomputesLayoutForEmptyUpdates:(BOOL)updates
{
  if (updates)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_compositionalLayoutFlags = *&self->_compositionalLayoutFlags & 0xEF | v3;
}

- (void)_setCollectionView:(id)view
{
  collectionView = [(UICollectionViewLayout *)self collectionView];
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
  if (collectionView && v7)
  {
    [collectionView unregisterForTraitChanges:v7];
  }

  v10.receiver = self;
  v10.super_class = UICollectionViewCompositionalLayout;
  [(UICollectionViewLayout *)&v10 _setCollectionView:view];
  v8 = +[_UICollectionCompositionalLayoutSolver traitsRequiringInvalidationForChanges];
  if ([v8 count])
  {
    v9 = [view _registerForTraitTokenChanges:v8 withTarget:self action:sel__solverObservedTraitsDidChange];
    [(UICollectionViewCompositionalLayout *)self setCollectionViewTraitChangeRegistration:v9];
  }

  _UIUpdateCollectionViewForScrollDirection(view, [(UICollectionViewCompositionalLayoutConfiguration *)self->_configuration scrollDirection]);
}

- (void)setCollectionViewTraitChangeRegistration:(uint64_t)registration
{
  if (registration)
  {
    objc_storeStrong((registration + 376), a2);
  }
}

- (void)_prepareForTransitionToLayout:(id)layout
{
  [(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule teardown];
  swipeActionsModule = self->super._swipeActionsModule;
  self->super._swipeActionsModule = 0;

  v6.receiver = self;
  v6.super_class = UICollectionViewCompositionalLayout;
  [(UICollectionViewLayout *)&v6 _prepareForTransitionToLayout:layout];
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(UICollectionViewCompositionalLayout *)self _performDeferredResolveIfNecessary];
  kdebug_trace();
  height = [(_UICollectionCompositionalLayoutSolver *)self->_solver layoutAttributesForElementsInRect:y, width, height];
  kdebug_trace();

  return height;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  [(UICollectionViewCompositionalLayout *)self _performDeferredResolveIfNecessary];
  solver = self->_solver;

  return [(_UICollectionCompositionalLayoutSolver *)solver layoutAttributesForItemAtIndexPath:path];
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  [(UICollectionViewCompositionalLayout *)self _performDeferredResolveIfNecessary];
  solver = self->_solver;

  return [(_UICollectionCompositionalLayoutSolver *)&solver->super.isa layoutAttributesForSupplementaryViewOfKind:kind withIndexPath:path];
}

- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path
{
  [(UICollectionViewCompositionalLayout *)self _performDeferredResolveIfNecessary];
  solver = self->_solver;

  return [(_UICollectionCompositionalLayoutSolver *)solver layoutAttributesForDecorationViewOfKind:kind withIndexPath:path];
}

- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)path withTargetPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  [(UICollectionViewCompositionalLayout *)self _performDeferredResolveIfNecessary];
  v8 = [(_UICollectionCompositionalLayoutSolver *)self->_solver layoutAttributesForInteractivelyMovingItemAtIndexPath:path withTargetPosition:x, y];
  if (!v8)
  {
    v10.receiver = self;
    v10.super_class = UICollectionViewCompositionalLayout;
    v8 = [(UICollectionViewLayout *)&v10 layoutAttributesForInteractivelyMovingItemAtIndexPath:path withTargetPosition:x, y];
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

- (NSDirectionalEdgeInsets)_supplementaryViewInsetsForScrollingToItemAtIndexPath:(id)path
{
  [(UICollectionViewCompositionalLayout *)self _performDeferredResolveIfNecessary];
  item = [path item];
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if (item != 0x7FFFFFFFFFFFFFFFLL)
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
    v20[4] = path;
    v20[5] = &v21;
    [(_UICollectionCompositionalLayoutSolver *)solver enumeratePinnedSupplementaryItems:v20];
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v22[2]), vceqzq_f64(v22[3]))))))
    {
      v11 = -[UICollectionViewCompositionalLayout _layoutSectionForSectionIndex:](self, "_layoutSectionForSectionIndex:", [path section]);
      if ([v11 _extensionBehavior] == 2)
      {
        collectionView = [(UICollectionViewLayout *)self collectionView];
        [collectionView _currentScreenScale];
        v14 = v13;
        if (![path item])
        {
          v22[2] = vsubq_f64(v22[2], vdupq_lane_s64(COERCE__INT64(1.0 / v14), 0));
        }

        item2 = [path item];
        if (item2 == [collectionView numberOfItemsInSection:{objc_msgSend(path, "section")}] - 1)
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

- (CGRect)_frameForScrollingToFirstElementInSectionAtIndex:(int64_t)index
{
  dataSourceSnapshotter = [(UICollectionViewCompositionalLayout *)self dataSourceSnapshotter];
  numberOfSections = [dataSourceSnapshotter numberOfSections];

  if (numberOfSections <= index)
  {
    v61.receiver = self;
    v61.super_class = UICollectionViewCompositionalLayout;
    [(UICollectionViewLayout *)&v61 _frameForScrollingToFirstElementInSectionAtIndex:index];
    v17 = v33;
    v19 = v34;
    v21 = v35;
    v23 = v36;
  }

  else
  {
    v7 = [(UICollectionViewCompositionalLayout *)self _layoutSectionForSectionIndex:index];
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = __Block_byref_object_copy__26;
    v59 = __Block_byref_object_dispose__26;
    v60 = 0;
    _layoutAxis = [(UICollectionViewCompositionalLayout *)self _layoutAxis];
    boundarySupplementaryItems = [v7 boundarySupplementaryItems];
    v10 = boundarySupplementaryItems;
    v11 = 3;
    if (_layoutAxis == 2)
    {
      v11 = 1;
    }

    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __88__UICollectionViewCompositionalLayout__frameForScrollingToFirstElementInSectionAtIndex___block_invoke;
    v54[3] = &unk_1E70FA4F0;
    v54[4] = &v55;
    v54[5] = v11;
    [boundarySupplementaryItems enumerateObjectsUsingBlock:v54];

    v12 = v56[5];
    if (v12)
    {
      elementKind = [v12 elementKind];
      v14 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:index];
      v15 = [(UICollectionViewCompositionalLayout *)self layoutAttributesForSupplementaryViewOfKind:elementKind atIndexPath:v14];
      [v15 frame];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      if ([v56[5] pinToVisibleBounds] && objc_msgSend(v7, "_extensionBehavior") == 2)
      {
        if (v15 && (v15[289] & 0x80) != 0)
        {
          solver = [(UICollectionViewCompositionalLayout *)self solver];
          v17 = [(_UICollectionCompositionalLayoutSolver *)solver unpinnedFrameOfBoundarySupplementaryElementOfKind:elementKind withIndexPath:v14];
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
          collectionView = [(UICollectionViewLayout *)self collectionView];

          if (collectionView)
          {
            collectionView2 = [(UICollectionViewLayout *)self collectionView];
            [collectionView2 _currentScreenScale];
            v31 = v30;

            v17 = v17 + _UISetPointValueForAxis(_layoutAxis, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), 1.0 / v31);
            v19 = v19 + v32;
          }
        }
      }
    }

    else
    {
      dataSourceSnapshotter2 = [(UICollectionViewCompositionalLayout *)self dataSourceSnapshotter];
      v38 = [dataSourceSnapshotter2 numberOfItemsInSection:index];

      if (v38 < 1)
      {
        v53.receiver = self;
        v53.super_class = UICollectionViewCompositionalLayout;
        [(UICollectionViewLayout *)&v53 _frameForScrollingToFirstElementInSectionAtIndex:index];
        v17 = v45;
        v19 = v46;
        v21 = v47;
        v23 = v48;
      }

      else
      {
        v39 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:index];
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

- (CGPoint)_targetPositionForInteractiveMovementOfItemAtIndexPath:(id)path withProposedTargetPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v8 = -[UICollectionViewCompositionalLayout _layoutSectionForSectionIndex:](self, "_layoutSectionForSectionIndex:", [path section]);
  v9 = v8;
  if (v8 && [v8 shouldRestrictOrthogonalAxisDuringInteractiveMovement])
  {
    v10 = [(_UICollectionCompositionalLayoutSolver *)self->_solver layoutAttributesForItemAtIndexPath:path];
    _layoutAxis = [(UICollectionViewCompositionalLayout *)self _layoutAxis];
    if (_layoutAxis == 1)
    {
      v12 = 2;
    }

    else
    {
      v12 = _layoutAxis == 2;
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

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  v9 = solver;
  if (!solver || *(solver + 104) && [(UICollectionViewCompositionalLayout *)self _invokeVisibleBoundsUpdateForDynamicAnimatorForNewVisibleBounds:0 preparingLayout:x, y, width, height]|| (*&self->_compositionalLayoutFlags & 4) != 0)
  {
    v11 = 1;
  }

  else
  {
    v15 = 0;
    height = [(_UICollectionCompositionalLayoutSolver *)v9 shouldInvalidateForBoundsChange:x requiresContainerUpdate:y, width, height];
    v11 = height;
    if (v15 == 1 && !height)
    {
      v12 = v9[6];
      v13 = [(_UICollectionLayoutContainer *)v12 containerUpdatingContentSize:height];

      objc_storeStrong(v9 + 6, v13);
    }
  }

  return v11;
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
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
    solver = [(UICollectionViewCompositionalLayout *)self solver];
    if (solver)
    {
      v17 = solver[36];

      if (v17 >= 1)
      {
        height = [(UICollectionViewCompositionalLayout *)self _invokeVisibleItemsInvalidationHandlerIfNeededForVisibleBounds:x, y, width, height];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v19 = [height countByEnumeratingWithState:&v28 objects:v35 count:16];
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
              objc_enumerationMutation(height);
            }

            v23 = *(*(&v28 + 1) + 8 * i);
            if ([v23 representedElementCategory])
            {
              if ([v23 representedElementCategory] != 1)
              {
                continue;
              }

              representedElementKind = [v23 representedElementKind];
              indexPath = [v23 indexPath];
              v33 = indexPath;
              v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
              [v8 invalidateSupplementaryElementsOfKind:representedElementKind atIndexPaths:v26];
            }

            else
            {
              representedElementKind = [v23 indexPath];
              v34 = representedElementKind;
              indexPath = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
              [v8 invalidateItemsAtIndexPaths:indexPath];
            }
          }

          v20 = [height countByEnumeratingWithState:&v28 objects:v35 count:16];
          if (!v20)
          {
            goto LABEL_25;
          }
        }
      }
    }

    else
    {
      height = 0;
LABEL_25:
    }
  }

  return v8;
}

- (void)invalidateLayoutWithContext:(id)context
{
  v35 = *MEMORY[0x1E69E9840];
  if (*&self->_compositionalLayoutFlags)
  {
    v26.receiver = self;
    v26.super_class = UICollectionViewCompositionalLayout;
    [(UICollectionViewLayout *)&v26 invalidateLayoutWithContext:context];
  }

  else
  {
    collectionView = [(UICollectionViewLayout *)self collectionView];
    [collectionView _visibleBounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    if ([(UICollectionViewCompositionalLayout *)self _viewBoundsPermitsLayout:v7, v9, v11, v13])
    {
      kdebug_trace();
      _intent = [context _intent];
      if (_UICollectionViewCompositionalLayoutShouldDeferResolvesUntilQueried())
      {
        if (([context invalidateEverything] & 1) == 0)
        {
          if (_intent == 3)
          {
            v15 = 1;
          }

          else
          {
            v15 = (*&self->_compositionalLayoutFlags >> 2) & 1;
          }

          [context _setInvalidateEverything:v15];
        }

        [(UICollectionViewCompositionalLayout *)self _queueDeferredResolveForInvalidationWithContext:context];
      }

      else
      {
        [(UICollectionViewCompositionalLayout *)self _resolveImmediatelyForInvalidationWithContext:context];
      }

      v24.receiver = self;
      v24.super_class = UICollectionViewCompositionalLayout;
      [(UICollectionViewLayout *)&v24 invalidateLayoutWithContext:context];
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
          collectionView2 = [(UICollectionViewLayout *)self collectionView];
          v20 = _UICollectionViewLayoutInvalidationContextIntentDescription([context _intent]);
          v36.origin.x = v7;
          v36.origin.y = v9;
          v36.size.width = v11;
          v36.size.height = v13;
          v21 = NSStringFromCGRect(v36);
          collectionView3 = [(UICollectionViewLayout *)self collectionView];
          [collectionView3 _effectiveContentInset];
          v23 = NSStringFromUIEdgeInsets(v37);
          *buf = 134218754;
          v28 = collectionView2;
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
      [(UICollectionViewLayout *)&v25 invalidateLayoutWithContext:context];
    }
  }
}

- (void)_queueDeferredResolveForInvalidationWithContext:(id)context
{
  v32 = *MEMORY[0x1E69E9840];
  _intent = [context _intent];
  deferredResolveType = self->_deferredResolveType;
  compositionalLayoutFlags = self->_compositionalLayoutFlags;
  if ((compositionalLayoutFlags & 8) != 0)
  {
    if (_intent != 3 && _intent != 8 && (*&self->_compositionalLayoutFlags & 4) == 0)
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
  switch(_intent)
  {
    case 0:
      [context _setRequiresFullCacheInvalidation];
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

      _updateResolve = [(UICollectionViewCompositionalLayout *)self _updateResolve];
      if (_updateResolve)
      {
        v9 = _updateResolve[40];
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_37;
    case 9:
      [(UICollectionViewCompositionalLayout *)self _handleSwipeActionsInvalidationWithContext:context];
      goto LABEL_36;
    case 10:
      [(UICollectionViewCompositionalLayout *)self _handlePreferredSizingDataInvalidation:context];
      goto LABEL_36;
    case 11:
      [(UICollectionViewCompositionalLayout *)self _handleEndInteractiveReorderingWithContext:context];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      collectionView = [(UICollectionViewLayout *)self collectionView];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionalLayout.m" lineNumber:726 description:{@"Compositional Layout internal bug: Attempting to queue a invalidation for an already deferred invalidation context. Collection View: %@, Layout: %@", collectionView, self}];

      goto LABEL_40;
    default:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionalLayout.m" lineNumber:732 description:{@"Compositional Layout internal bug: Attempting to process invalidation context with unknown intent. Intent: %lld; Context: %@; Layout: %@", objc_msgSend(context, "_intent"), context, self}];
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
      collectionView2 = [(UICollectionViewLayout *)self collectionView];
      v22 = _UIStringFromCompositionalLayoutResolveType(v10);
      v20 = _UICollectionViewLayoutInvalidationContextIntentDescription([context _intent]);
      v21 = _UIStringFromCompositionalLayoutResolveType(self->_deferredResolveType);
      *buf = 134218754;
      v25 = collectionView2;
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

  if (context)
  {
    v17 = v11;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    *(context + 112) |= 8u;
    v16 = self->_deferredResolveType;
  }

  if (!v16)
  {
    [(UICollectionViewCompositionalLayout *)self _solveForPinnedSupplementaryItemsIfNeededWithContext:context];
    if (v9)
    {
      [(UICollectionViewCompositionalLayout *)self _updateCollectionViewBackgroundColor];
    }
  }

  [(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule processLayoutInvalidationWithContext:context updateConfigurations:v9 & 1];
}

- (void)_resolveImmediatelyForInvalidationWithContext:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  if (([context invalidateEverything] & 1) == 0 && (objc_msgSend(context, "_intent") == 3 || !objc_msgSend(context, "_intent") || objc_msgSend(context, "_intent") == 2 || objc_msgSend(context, "_intent") == 7 || (*&self->_compositionalLayoutFlags & 4) != 0))
  {
    [context _setInvalidateEverything:1];
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
        collectionView = [(UICollectionViewLayout *)self collectionView];
        v16 = _UICollectionViewLayoutInvalidationContextIntentDescription([context _intent]);
        collectionView2 = [(UICollectionViewLayout *)self collectionView];
        [collectionView2 _effectiveContentInset];
        v18 = NSStringFromUIEdgeInsets(v26);
        v19 = 134218498;
        v20 = collectionView;
        v21 = 2112;
        v22 = v16;
        v23 = 2112;
        v24 = v18;
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "_resolveImmediatelyIfNecessary: cv==%p; intent == %@; effectiveContentInsets == %@; Performing full resolve since forceFullResolveForNextSolve is set.", &v19, 0x20u);
      }
    }

LABEL_13:
    [(UICollectionViewCompositionalLayout *)self _fullResolve];
    [(UICollectionViewCompositionalLayout *)self _solveForPinnedSupplementaryItemsIfNeededWithContext:context];
    goto LABEL_14;
  }

  if ([context _intent] == 2)
  {
    _boundsChangeResolve = [(UICollectionViewCompositionalLayout *)self _boundsChangeResolve];
    [context _setInvalidateEverything:1];
    if (!_boundsChangeResolve)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  if ([context _intent] == 7)
  {
    _marginsChangeResolve = [(UICollectionViewCompositionalLayout *)self _marginsChangeResolve];
    goto LABEL_17;
  }

  if ([context _intent] == 9)
  {
    [(UICollectionViewCompositionalLayout *)self _handleSwipeActionsInvalidationWithContext:context];
    goto LABEL_29;
  }

  currentUpdate = [(UICollectionViewCompositionalLayout *)self currentUpdate];
  if (currentUpdate)
  {
    v11 = currentUpdate;
    _intent = [context _intent];

    if (_intent == 8)
    {
      _marginsChangeResolve = [(UICollectionViewCompositionalLayout *)self _updateResolve];
      goto LABEL_17;
    }
  }

  if ([context _intent] == 10)
  {
    [(UICollectionViewCompositionalLayout *)self _handlePreferredSizingDataInvalidation:context];
    goto LABEL_29;
  }

  if ([context _intent] == 11)
  {
    [(UICollectionViewCompositionalLayout *)self _handleEndInteractiveReorderingWithContext:context];
    goto LABEL_29;
  }

  if ([context _intent] != 13)
  {
    if (([context invalidateEverything] & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_13;
  }

  _marginsChangeResolve = [(UICollectionViewCompositionalLayout *)self _scrollViewAdjustmentsChangeResolve];
LABEL_17:
  _boundsChangeResolve = _marginsChangeResolve;
  if (!_marginsChangeResolve)
  {
LABEL_29:
    [(UICollectionViewCompositionalLayout *)self _solveForPinnedSupplementaryItemsIfNeededWithContext:context];
LABEL_30:
    v7 = 0;
    goto LABEL_31;
  }

LABEL_18:
  [context setContentOffsetAdjustment:{*(_boundsChangeResolve + 48), *(_boundsChangeResolve + 56)}];
  [context _setShouldInvalidateCollectionViewContentSize:1];
  v9 = *(_boundsChangeResolve + 40);

  [(UICollectionViewCompositionalLayout *)self _solveForPinnedSupplementaryItemsIfNeededWithContext:context];
  if ((v9 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_14:
  [(UICollectionViewCompositionalLayout *)self _updateCollectionViewBackgroundColor];
  v7 = 1;
LABEL_31:
  [(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule processLayoutInvalidationWithContext:context updateConfigurations:v7];
}

- (id)indexPathsToInsertForSupplementaryViewOfKind:(id)kind
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

  currentResolveResult = [(UICollectionViewCompositionalLayout *)self currentResolveResult];

  if (currentResolveResult)
  {
    currentResolveResult2 = [(UICollectionViewCompositionalLayout *)self currentResolveResult];
    v11 = [(_UICollectionCompositionalLayoutSolverResolveResult *)currentResolveResult2 indexPathsForInsertedSupplememtariesForElementKind:kind];
    allObjects = [v11 allObjects];

    if ([allObjects count])
    {
      v13 = [v8 arrayByAddingObjectsFromArray:allObjects];

      v8 = v13;
    }
  }

  return v8;
}

- (id)indexPathsToInsertForDecorationViewOfKind:(id)kind
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

  currentResolveResult = [(UICollectionViewCompositionalLayout *)self currentResolveResult];

  if (currentResolveResult)
  {
    currentResolveResult2 = [(UICollectionViewCompositionalLayout *)self currentResolveResult];
    v11 = [(_UICollectionCompositionalLayoutSolverResolveResult *)currentResolveResult2 indexPathsForInsertedDecorationsForElementKind:kind];
    allObjects = [v11 allObjects];

    if ([allObjects count])
    {
      v13 = [v8 arrayByAddingObjectsFromArray:allObjects];

      v8 = v13;
    }
  }

  return v8;
}

- (id)indexPathsToDeleteForSupplementaryViewOfKind:(id)kind
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

  currentResolveResult = [(UICollectionViewCompositionalLayout *)self currentResolveResult];

  if (currentResolveResult)
  {
    currentResolveResult2 = [(UICollectionViewCompositionalLayout *)self currentResolveResult];
    v11 = [(_UICollectionCompositionalLayoutSolverResolveResult *)currentResolveResult2 indexPathsForDeletedSupplememtariesForElementKind:kind];
    allObjects = [v11 allObjects];

    if ([allObjects count])
    {
      v13 = [v8 arrayByAddingObjectsFromArray:allObjects];

      v8 = v13;
    }
  }

  return v8;
}

- (id)indexPathsToDeleteForDecorationViewOfKind:(id)kind
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

  currentResolveResult = [(UICollectionViewCompositionalLayout *)self currentResolveResult];

  if (currentResolveResult)
  {
    currentResolveResult2 = [(UICollectionViewCompositionalLayout *)self currentResolveResult];
    v11 = [(_UICollectionCompositionalLayoutSolverResolveResult *)currentResolveResult2 indexPathsForDeletedDecorationsForElementKind:kind];
    allObjects = [v11 allObjects];

    if ([allObjects count])
    {
      v13 = [v8 arrayByAddingObjectsFromArray:allObjects];

      v8 = v13;
    }
  }

  return v8;
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path
{
  currentUpdate = [(UICollectionViewCompositionalLayout *)self currentUpdate];
  v6 = currentUpdate;
  if (currentUpdate)
  {
    v7 = *(currentUpdate + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8 && _CompositionalLayoutShouldOverrideInitialAttributesDuringUpdates())
  {
    v9 = [v8 initialIndexPathForFinalIndexPath:path];
    if (v9)
    {
      solver = [(UICollectionViewCompositionalLayout *)self solver];
      v11 = [(_UICollectionCompositionalLayoutSolver *)solver preUpdateFrameForItemAtInitialIndexPath:v9];
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v23.origin.x = v11;
      v23.origin.y = v13;
      v23.size.width = v15;
      v23.size.height = v17;
      if (!CGRectIsNull(v23))
      {
        v18 = [(UICollectionViewCompositionalLayout *)self layoutAttributesForItemAtIndexPath:path];
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
  v19 = [(UICollectionViewLayout *)&v21 initialLayoutAttributesForAppearingItemAtIndexPath:path];
LABEL_11:

  return v19;
}

- (id)initialLayoutAttributesForAppearingDecorationElementOfKind:(id)kind atIndexPath:(id)path
{
  currentUpdate = [(UICollectionViewCompositionalLayout *)self currentUpdate];
  v8 = currentUpdate;
  if (currentUpdate)
  {
    v9 = *(currentUpdate + 16);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10 && _CompositionalLayoutShouldOverrideInitialAttributesDuringUpdates())
  {
    v11 = [v10 initialIndexPathForSupplementaryElementOfKind:kind forFinalIndexPath:path];
    if (v11)
    {
      solver = [(UICollectionViewCompositionalLayout *)self solver];
      v13 = [(_UICollectionCompositionalLayoutSolver *)solver preUpdateFrameForDecorationViewOfKind:kind withInitialIndexPath:v11];
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v25.origin.x = v13;
      v25.origin.y = v15;
      v25.size.width = v17;
      v25.size.height = v19;
      if (!CGRectIsNull(v25))
      {
        v20 = [(UICollectionViewCompositionalLayout *)self layoutAttributesForDecorationViewOfKind:kind atIndexPath:path];
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
  v21 = [(UICollectionViewLayout *)&v23 initialLayoutAttributesForAppearingDecorationElementOfKind:kind atIndexPath:path];
LABEL_11:

  return v21;
}

- (id)initialLayoutAttributesForAppearingSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  currentUpdate = [(UICollectionViewCompositionalLayout *)self currentUpdate];
  v8 = currentUpdate;
  if (currentUpdate)
  {
    v9 = *(currentUpdate + 16);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10 && _CompositionalLayoutShouldOverrideInitialAttributesDuringUpdates())
  {
    v11 = [v10 initialIndexPathForSupplementaryElementOfKind:kind forFinalIndexPath:path];
    if (v11)
    {
      solver = [(UICollectionViewCompositionalLayout *)self solver];
      v13 = [(_UICollectionCompositionalLayoutSolver *)solver preUpdateFrameForSupplementaryViewOfKind:kind withInitialIndexPath:v11];
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v25.origin.x = v13;
      v25.origin.y = v15;
      v25.size.width = v17;
      v25.size.height = v19;
      if (!CGRectIsNull(v25))
      {
        v20 = [(UICollectionViewCompositionalLayout *)self layoutAttributesForSupplementaryViewOfKind:kind atIndexPath:path];
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
  v21 = [(UICollectionViewLayout *)&v23 initialLayoutAttributesForAppearingSupplementaryElementOfKind:kind atIndexPath:path];
LABEL_11:

  return v21;
}

- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes
{
  if (originalAttributes)
  {
    if (attributes)
    {
      goto LABEL_3;
    }

LABEL_17:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionalLayout.m" lineNumber:1067 description:{@"Invalid parameter not satisfying: %@", @"preferredAttributes != nil"}];

    if (originalAttributes)
    {
      goto LABEL_4;
    }

    return 0;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionalLayout.m" lineNumber:1066 description:{@"Invalid parameter not satisfying: %@", @"originalAttributes != nil"}];

  if (!attributes)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (originalAttributes)
  {
LABEL_4:
    v8 = *(originalAttributes + 72);
    if ((v8 & 1) == 0 && (v8 & 3) != 0)
    {
      return 0;
    }

    collectionView = [(UICollectionViewLayout *)self collectionView];
    v11 = collectionView;
    if (collectionView)
    {
      v12 = *(collectionView + 3352);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    solver = [(UICollectionViewCompositionalLayout *)self solver];
    v15 = [(_UICollectionCompositionalLayoutSolver *)solver updatePreferredSizeIfNeededForPreferredLayoutAttributes:attributes withOriginalAttributes:originalAttributes debugger:v13];

    if (v15)
    {
      [(_UIUpdateVisibleCellsContext *)self->_updateVisibleCellsContext addPreferredAttributes:attributes];
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

- (id)invalidationContextForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes
{
  v17[1] = *MEMORY[0x1E69E9840];
  [(UICollectionView *)self->super._collectionView _visibleBounds:attributes];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v17[0] = attributes;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v15 = [(UICollectionViewCompositionalLayout *)self _preferredAttributesResolveWithInvalidatedPreferredAttributes:v14 layoutOffset:*MEMORY[0x1E695EFF8] visibleRect:*(MEMORY[0x1E695EFF8] + 8), v7, v9, v11, v13];

  return v15;
}

- (id)_preferredAttributesResolveWithInvalidatedPreferredAttributes:(id)attributes layoutOffset:(CGPoint)offset visibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = offset.y;
  v10 = offset.x;
  kdebug_trace();
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  height = [(_UICollectionCompositionalLayoutSolver *)solver resolveForInvalidatedPreferredAttributes:attributes scrollOffset:v10 visibleRect:v9, x, y, width, height];

  [(UICollectionViewCompositionalLayout *)self _computeAndUpdateAdjustedContentFrame];
  kdebug_trace();

  return height;
}

- (void)_didPerformUpdateVisibleCellsPassWithLayoutOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v57 = *MEMORY[0x1E69E9840];
  _estimatesSizes = [(UICollectionViewCompositionalLayout *)self _estimatesSizes];
  updateVisibleCellsContext = self->_updateVisibleCellsContext;
  if (_estimatesSizes)
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
          solver = [(UICollectionViewCompositionalLayout *)self solver];
          v18 = self->_updateVisibleCellsContext;
          if (v18)
          {
            v18 = v18->_indexPaths;
          }

          v19 = v18;
          v20 = [(_UICollectionCompositionalLayoutSolver *)solver itemsWithoutPreferredSizesInGroupsWithItemsAtIndexPaths:v19];

          _disabledTextColor = [(_UILabelConfigurationInternal *)&self->_updateVisibleCellsContext->super.isa _disabledTextColor];
          v22 = [(UICollectionViewCompositionalLayout *)self _preferredAttributesResolveWithInvalidatedPreferredAttributes:_disabledTextColor layoutOffset:x visibleRect:y, v10, v12, v14, v16];

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
              collectionView = [(UICollectionViewLayout *)self collectionView];
              v59.x = x;
              v59.y = y;
              v39 = NSStringFromCGPoint(v59);
              _disabledTextColor2 = [(_UILabelConfigurationInternal *)&self->_updateVisibleCellsContext->super.isa _disabledTextColor];
              v41 = [v20 valueForKey:@"_ui_shortDescription"];
              *buf = 134218754;
              v50 = collectionView;
              v51 = 2112;
              v52 = v39;
              v53 = 2112;
              v54 = _disabledTextColor2;
              v55 = 2112;
              v56 = v41;
              _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_ERROR, "_didPerformUpdateVisibleCellsPassWithLayoutOffset: cv == %p; layoutOffset == %@; preferredSizes == %@; dependentItems == %@", buf, 0x2Au);
            }
          }

          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          _disabledTextColor3 = [(_UILabelConfigurationInternal *)&self->_updateVisibleCellsContext->super.isa _disabledTextColor];
          v26 = [_disabledTextColor3 countByEnumeratingWithState:&v42 objects:v48 count:16];
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
                  objc_enumerationMutation(_disabledTextColor3);
                }

                v30 = *(*(&v42 + 1) + 8 * i);
                if (v30)
                {
                  v31 = v30[72];
                  if (v31)
                  {
                    indexPath = [*(*(&v42 + 1) + 8 * i) indexPath];
                    v47 = indexPath;
                    indexPath2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
                    [v22 invalidateItemsAtIndexPaths:indexPath2];
                  }

                  else
                  {
                    if ((v31 & 2) != 0)
                    {
                      continue;
                    }

                    indexPath = [(_UILabelConfiguration *)*(*(&v42 + 1) + 8 * i) _content];
                    indexPath2 = [v30 indexPath];
                    v46 = indexPath2;
                    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
                    [v22 invalidateSupplementaryElementsOfKind:indexPath atIndexPaths:v34];
                  }
                }
              }

              v27 = [_disabledTextColor3 countByEnumeratingWithState:&v42 objects:v48 count:16];
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

- (void)_prepareForPreferredAttributesQueryForView:(id)view withLayoutAttributes:(id)attributes
{
  if ([(UICollectionViewCompositionalLayout *)self _estimatesSizes])
  {
    solver = [(UICollectionViewCompositionalLayout *)self solver];
    [(_UICollectionCompositionalLayoutSolver *)solver prepareForPreferredAttributesQueryForView:view withLayoutAttributes:attributes];

    indexPath = [attributes indexPath];
    if ([indexPath item] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = -[UICollectionViewCompositionalLayout _layoutSectionForSectionIndex:](self, "_layoutSectionForSectionIndex:", [indexPath section]);
      interactionStateModule = self->_interactionStateModule;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __103__UICollectionViewCompositionalLayout__prepareForPreferredAttributesQueryForView_withLayoutAttributes___block_invoke;
      v12[3] = &unk_1E70F6228;
      v13 = v9;
      attributesCopy = attributes;
      selfCopy = self;
      v11 = v9;
      [(_UICollectionViewLayoutInteractionStateModule *)interactionStateModule performPreferredAttributesProcessingBlock:v12 withLayoutAttributes:attributes forView:view];
    }
  }
}

void __103__UICollectionViewCompositionalLayout__prepareForPreferredAttributesQueryForView_withLayoutAttributes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _callback];
  [v2 _transformFittingLayoutAttributes:*(a1 + 40) interactionState:*(*(a1 + 48) + 280)];
}

- (void)_postProcessPreferredAttributes:(id)attributes forView:(id)view
{
  indexPath = [attributes indexPath];
  if ([indexPath item] != 0x7FFFFFFFFFFFFFFFLL)
  {
    indexPath2 = [attributes indexPath];
    v9 = -[UICollectionViewCompositionalLayout _layoutSectionForSectionIndex:](self, "_layoutSectionForSectionIndex:", [indexPath2 section]);

    interactionStateModule = self->_interactionStateModule;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__UICollectionViewCompositionalLayout__postProcessPreferredAttributes_forView___block_invoke;
    v12[3] = &unk_1E70F6228;
    v13 = v9;
    attributesCopy = attributes;
    selfCopy = self;
    v11 = v9;
    [(_UICollectionViewLayoutInteractionStateModule *)interactionStateModule performPreferredAttributesProcessingBlock:v12 withLayoutAttributes:attributes forView:view];
  }
}

void __79__UICollectionViewCompositionalLayout__postProcessPreferredAttributes_forView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _callback];
  [v2 _transformPreferredLayoutAttributes:*(a1 + 40) interactionState:*(*(a1 + 48) + 280)];
}

- (BOOL)_shouldInvalidateLayoutForOldInsets:(UIEdgeInsets)insets newInsets:(UIEdgeInsets)newInsets
{
  right = newInsets.right;
  bottom = newInsets.bottom;
  left = newInsets.left;
  top = newInsets.top;
  v8 = insets.right;
  v9 = insets.bottom;
  v10 = insets.left;
  v11 = insets.top;
  _layoutAxis = [(UICollectionViewCompositionalLayout *)self _layoutAxis];
  if (_layoutAxis == 1)
  {
    v13 = 2;
  }

  else
  {
    v13 = _layoutAxis == 2;
  }

  return !_UIEdgeInsetsEqualToInsetsAlongAxis(v13, v11, v10, v9, v8, top, left, bottom, right);
}

- (BOOL)_shouldInvalidateLayoutForUpdatedSafeAreaInsets:(UIEdgeInsets)insets fromOldInsets:(UIEdgeInsets)oldInsets
{
  right = oldInsets.right;
  bottom = oldInsets.bottom;
  left = oldInsets.left;
  top = oldInsets.top;
  v8 = insets.right;
  v9 = insets.bottom;
  v10 = insets.left;
  v11 = insets.top;
  if (!_UISupportsShouldInvalidateForInsets())
  {
    return 1;
  }

  return [(UICollectionViewCompositionalLayout *)self _shouldInvalidateLayoutForOldInsets:top newInsets:left, bottom, right, v11, v10, v9, v8];
}

- (BOOL)_shouldInvalidateLayoutForUpdatedLayoutMargins:(UIEdgeInsets)margins fromOldMargins:(UIEdgeInsets)oldMargins
{
  right = oldMargins.right;
  bottom = oldMargins.bottom;
  left = oldMargins.left;
  top = oldMargins.top;
  v8 = margins.right;
  v9 = margins.bottom;
  v10 = margins.left;
  v11 = margins.top;
  if (!_UISupportsShouldInvalidateForInsets())
  {
    return 1;
  }

  return [(UICollectionViewCompositionalLayout *)self _shouldInvalidateLayoutForOldInsets:top newInsets:left, bottom, right, v11, v10, v9, v8];
}

- (id)_invalidationContextForUpdatedLayoutMargins:(UIEdgeInsets)margins
{
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
  if (_UISupportsShouldInvalidateForInsets())
  {
    v32.receiver = self;
    v32.super_class = UICollectionViewCompositionalLayout;
    right = [(UICollectionViewLayout *)&v32 _invalidationContextForUpdatedLayoutMargins:top, left, bottom, right];
    [right _setIntent:2];
    goto LABEL_23;
  }

  collectionView = [(UICollectionViewLayout *)self collectionView];
  [collectionView bounds];
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
    right2 = [(UICollectionViewLayout *)&v31 _invalidationContextForUpdatedLayoutMargins:top, left, bottom, right];
    right = right2;
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
    right = [(UICollectionViewLayout *)&v30 _invalidationContextForUpdatedLayoutMargins:top, left, bottom, right];
    _layoutAxis = [(UICollectionViewCompositionalLayout *)self _layoutAxis];
    if (_layoutAxis == 1)
    {
      v22 = 2;
    }

    else
    {
      v22 = _layoutAxis == 2;
    }

    [(UICollectionViewCompositionalLayout *)self memoizedPreviousLayoutMargins];
    if (_UIEdgeInsetsEqualToInsetsAlongAxis(v22, v23, v24, v25, v26, top, left, bottom, right))
    {
      right2 = right;
      v28 = 7;
LABEL_21:
      [right2 _setIntent:v28];
      goto LABEL_22;
    }

    right2 = right;
LABEL_20:
    v28 = 2;
    goto LABEL_21;
  }

  right = 0;
LABEL_22:
  [(UICollectionViewCompositionalLayout *)self setMemoizedPreviousLayoutMargins:top, left, bottom, right];
LABEL_23:

  return right;
}

- (void)_prepareForCollectionViewUpdates:(id)updates withDataSourceTranslator:(id)translator
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__UICollectionViewCompositionalLayout__prepareForCollectionViewUpdates_withDataSourceTranslator___block_invoke;
  aBlock[3] = &unk_1E70FA518;
  aBlock[4] = translator;
  v7 = _Block_copy(aBlock);
  [(UICollectionView *)self->super._collectionView _visibleBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [off_1E70ECC48 snapshotterForSectionCountsProvider:v7];
  v17 = [(_UICollectionCompositionalLayoutSolverUpdate *)v9 solverUpdateForVisibleBounds:v11 updateItems:v13 updateTranslator:v15 finalDataSourceSnapshot:_UICollectionCompositionalLayoutSolverUpdate, updates, translator, v16];
  [(UICollectionViewCompositionalLayout *)self setCurrentUpdate:v17];

  solver = [(UICollectionViewCompositionalLayout *)self solver];
  [(_UICollectionCompositionalLayoutSolver *)solver prepareForCollectionViewUpdates];

  [(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule updateWithDataSourceTranslator:translator];
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

- (BOOL)_shouldPopulateInitialAndFinalLayoutAttributesForAllUpdateItems:(BOOL)items
{
  itemsCopy = items;
  if ([(UICollectionViewCompositionalLayout *)self _estimatesSizes])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = UICollectionViewCompositionalLayout;
  return [(UICollectionViewLayout *)&v6 _shouldPopulateInitialAndFinalLayoutAttributesForAllUpdateItems:itemsCopy];
}

- (void)_finalizeCollectionViewUpdate:(id)update
{
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  [(_UICollectionCompositionalLayoutSolver *)solver finalizeCollectionViewUpdates];

  [(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule finalizeCollectionViewUpdate:update];
  [(UICollectionViewCompositionalLayout *)self setCurrentUpdate:0];
  [(UICollectionViewCompositionalLayout *)self setCurrentResolveResult:0];
  v6.receiver = self;
  v6.super_class = UICollectionViewCompositionalLayout;
  [(UICollectionViewLayout *)&v6 _finalizeCollectionViewUpdate:update];
}

- (CGRect)_contentFrameForSection:(int64_t)section
{
  v3 = [(UICollectionViewCompositionalLayout *)self _sectionDescriptorForSectionIndex:section];
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

- (CGRect)_layoutFrameForSection:(int64_t)section
{
  v3 = [(UICollectionViewCompositionalLayout *)self _sectionDescriptorForSectionIndex:section];
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
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  if (solver)
  {
    v3 = solver[14];
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (id)_sectionDescriptorForSectionIndex:(int64_t)index
{
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  v5 = [(_UICollectionCompositionalLayoutSolver *)solver sectionDescriptorForSectionIndex:index];

  return v5;
}

- (BOOL)_shouldAddElementToSectionContainer:(id)container
{
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  v5 = solver;
  if (solver)
  {
    v6 = [(_UICollectionCompositionalLayoutSolver *)solver shouldEmplaceElementOutsideSectionContainer:container]^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (int64_t)_anchorForAuxiliaryElementOfKind:(id)kind
{
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  v5 = [(_UICollectionCompositionalLayoutSolver *)solver _anchorForAuxiliaryElementOfKind:kind];

  return v5;
}

- (BOOL)_wantsBandSelectionVisualsInSection:(int64_t)section
{
  v5 = [(UICollectionViewCompositionalLayout *)self _layoutSectionForSectionIndex:?];
  v6 = v5;
  if (v5)
  {
    _wantsBandSelectionVisuals = [v5 _wantsBandSelectionVisuals];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UICollectionViewCompositionalLayout;
    _wantsBandSelectionVisuals = [(UICollectionViewLayout *)&v10 _wantsBandSelectionVisualsInSection:section];
  }

  v8 = _wantsBandSelectionVisuals;

  return v8;
}

- (BOOL)_allowsPanningAcrossConstrainedAxisToBeginMultiSelectInteractionInSection:(int64_t)section
{
  v3 = [(UICollectionViewCompositionalLayout *)self _layoutSectionForSectionIndex:section];
  shouldRestrictOrthogonalAxisDuringInteractiveMovement = [v3 shouldRestrictOrthogonalAxisDuringInteractiveMovement];

  return shouldRestrictOrthogonalAxisDuringInteractiveMovement ^ 1;
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

- (void)_handleEndInteractiveReorderingWithContext:(id)context
{
  if (!context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionalLayout.m" lineNumber:1579 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  targetIndexPathsForInteractivelyMovingItems = [context targetIndexPathsForInteractivelyMovingItems];
  [context invalidateItemsAtIndexPaths:?];
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  v6 = solver;
  if (solver)
  {
    [*(solver + 208) removeObjectsForKeys:targetIndexPathsForInteractivelyMovingItems];
  }
}

- (id)_sectionDefinitionsUpdateResolve
{
  collectionView = [(UICollectionViewLayout *)self collectionView];
  if (collectionView)
  {
    kdebug_trace();
    [collectionView bounds];
    [(UICollectionViewCompositionalLayout *)self setMemoizedPreviousSolvedCollectionViewBounds:?];
    _containerFromCollectionView = [(UICollectionViewCompositionalLayout *)self _containerFromCollectionView];
    solver = [(UICollectionViewCompositionalLayout *)self solver];
    v6 = [(_UICollectionCompositionalLayoutSolver *)solver resolveForUpdatingSectionDefinitionsWithContainer:_containerFromCollectionView];

    [(UICollectionViewCompositionalLayout *)self _computeAndUpdateAdjustedContentFrame];
    [collectionView visibleBounds];
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
  collectionView = [(UICollectionViewLayout *)self collectionView];
  if (collectionView)
  {
    kdebug_trace();
    [collectionView bounds];
    [(UICollectionViewCompositionalLayout *)self setMemoizedPreviousSolvedCollectionViewBounds:?];
    _containerFromCollectionView = [(UICollectionViewCompositionalLayout *)self _containerFromCollectionView];
    solver = [(UICollectionViewCompositionalLayout *)self solver];
    v6 = [(_UICollectionCompositionalLayoutSolver *)solver resolveForMarginsChange:_containerFromCollectionView];

    [(UICollectionViewCompositionalLayout *)self _computeAndUpdateAdjustedContentFrame];
    [collectionView visibleBounds];
    v7 = [(UICollectionViewCompositionalLayout *)self _invokeVisibleItemsInvalidationHandlerIfNeededForVisibleBounds:?];
    _updatePinnedSectionSupplementaryItemsForCurrentVisibleBounds = [(UICollectionViewCompositionalLayout *)self _updatePinnedSectionSupplementaryItemsForCurrentVisibleBounds];
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
  collectionView = [(UICollectionViewLayout *)self collectionView];
  if (collectionView)
  {
    kdebug_trace();
    [collectionView bounds];
    [(UICollectionViewCompositionalLayout *)self setMemoizedPreviousSolvedCollectionViewBounds:?];
    _containerFromCollectionView = [(UICollectionViewCompositionalLayout *)self _containerFromCollectionView];
    solver = [(UICollectionViewCompositionalLayout *)self solver];
    v6 = [(_UICollectionCompositionalLayoutSolver *)solver resolveForScrollViewLayoutAdjustmentsChange:_containerFromCollectionView];

    [(UICollectionViewCompositionalLayout *)self _computeAndUpdateAdjustedContentFrame];
    [collectionView visibleBounds];
    v7 = [(UICollectionViewCompositionalLayout *)self _invokeVisibleItemsInvalidationHandlerIfNeededForVisibleBounds:?];
    _updatePinnedSectionSupplementaryItemsForCurrentVisibleBounds = [(UICollectionViewCompositionalLayout *)self _updatePinnedSectionSupplementaryItemsForCurrentVisibleBounds];
    kdebug_trace();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_handleSwipeActionsInvalidationWithContext:(id)context
{
  collectionView = [(UICollectionViewLayout *)self collectionView];

  if (collectionView)
  {
    invalidatedItemIndexPaths = [context invalidatedItemIndexPaths];
    if ([invalidatedItemIndexPaths count])
    {
      solver = [(UICollectionViewCompositionalLayout *)self solver];
      v8 = solver;
      if (solver)
      {
        [*(solver + 208) removeObjectsForKeys:invalidatedItemIndexPaths];
      }
    }

    invalidatedDecorationIndexPaths = [context invalidatedDecorationIndexPaths];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__UICollectionViewCompositionalLayout__handleSwipeActionsInvalidationWithContext___block_invoke;
    v10[3] = &unk_1E70FA680;
    v10[4] = self;
    [invalidatedDecorationIndexPaths enumerateKeysAndObjectsUsingBlock:v10];
  }
}

void __82__UICollectionViewCompositionalLayout__handleSwipeActionsInvalidationWithContext___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) solver];
  [(_UICollectionCompositionalLayoutSolver *)v5 invalidateCachedDecorationAttributesForElementKind:a2 atIndexPaths:a3];
}

- (void)_handlePreferredSizingDataInvalidation:(id)invalidation
{
  v24 = *MEMORY[0x1E69E9840];
  collectionView = [(UICollectionViewLayout *)self collectionView];

  if (collectionView)
  {
    invalidatedItemIndexPaths = [invalidation invalidatedItemIndexPaths];
    if ([invalidatedItemIndexPaths count])
    {
      solver = [(UICollectionViewCompositionalLayout *)self solver];
      v8 = solver;
      if (solver)
      {
        [*(solver + 208) removeObjectsForKeys:invalidatedItemIndexPaths];
      }

      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = invalidatedItemIndexPaths;
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
              collectionView2 = [(UICollectionViewLayout *)self collectionView];
              v16 = [collectionView2 cellForItemAtIndexPath:v14];

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

    invalidatedDecorationIndexPaths = [invalidation invalidatedDecorationIndexPaths];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __78__UICollectionViewCompositionalLayout__handlePreferredSizingDataInvalidation___block_invoke;
    v18[3] = &unk_1E70FA680;
    v18[4] = self;
    [invalidatedDecorationIndexPaths enumerateKeysAndObjectsUsingBlock:v18];
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

- (BOOL)_invokeVisibleBoundsUpdateForDynamicAnimatorForNewVisibleBounds:(CGRect)bounds preparingLayout:(BOOL)layout
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (layout || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*&self->_memoizedDynamicAnimatorWorldAdjustingInsets.top), vceqzq_f64(*&self->_memoizedDynamicAnimatorWorldAdjustingInsets.bottom))))) & 1) == 0)
  {
    p_memoizedDynamicAnimatorWorldAdjustingInsets = &self->_memoizedDynamicAnimatorWorldAdjustingInsets;
    v54 = CGRectGetHeight(bounds);
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
    collectionView = [(UICollectionViewLayout *)self collectionView];
    [collectionView _visibleRectEdgeInsets];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    if (v26 == 0.0 && v24 == 0.0 && v30 == 0.0 && v28 == 0.0)
    {
      collectionView2 = [(UICollectionViewLayout *)self collectionView];
      [collectionView2 _setVisibleRectEdgeInsets:{p_memoizedDynamicAnimatorWorldAdjustingInsets->f64[0], p_memoizedDynamicAnimatorWorldAdjustingInsets->f64[1], p_memoizedDynamicAnimatorWorldAdjustingInsets[1].f64[0], p_memoizedDynamicAnimatorWorldAdjustingInsets[1].f64[1]}];
    }
  }

  collectionView3 = [(UICollectionViewLayout *)self collectionView];
  [collectionView3 _visibleBounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  collectionView4 = [(UICollectionViewLayout *)self collectionView];
  [collectionView4 _effectiveVisibleBoundsForBounds:{x, y, width, height}];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  solver = [(UICollectionViewCompositionalLayout *)self solver];
  LOBYTE(collectionView4) = [(_UICollectionCompositionalLayoutSolver *)solver updateVisibleBoundsForDynamicAnimator:v43 previousVisibleBounds:v45, v47, v49, v34, v36, v38, v40];

  return collectionView4;
}

- (BOOL)_adjustCollectionViewContentInsetBehaviorForLayoutAxisIfNeeded:(unint64_t)needed container:(id)container
{
  _compatibleContentInsetAdjustmentBehavior = [(UIScrollView *)self->super._collectionView _compatibleContentInsetAdjustmentBehavior];
  if (needed != 1 || (-[UICollectionViewCompositionalLayout collectionViewContentSize](self, "collectionViewContentSize"), v9 = v8, [container contentSize], v9 >= v10 + 0.5))
  {
    v11 = 0;
    if (_compatibleContentInsetAdjustmentBehavior != 102)
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
  if (!_compatibleContentInsetAdjustmentBehavior || _compatibleContentInsetAdjustmentBehavior == 102)
  {
    goto LABEL_8;
  }

  return 0;
}

- (void)_setOffset:(CGPoint)offset forOrthogonalScrollingSection:(int64_t)section
{
  y = offset.y;
  x = offset.x;
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  [(_UICollectionCompositionalLayoutSolver *)solver setOrthogonalOffset:section forSection:x, y];
}

- (CGPoint)_offsetForOrthogonalScrollingSection:(int64_t)section
{
  v3 = [(UICollectionViewCompositionalLayout *)self _sectionDescriptorForSectionIndex:section];
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
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  if (solver)
  {
    v3 = solver[8];
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

- (id)_extendedAttributesQueryIncludingOrthogonalScrollingRegions:(CGRect)regions
{
  height = regions.size.height;
  width = regions.size.width;
  y = regions.origin.y;
  x = regions.origin.x;
  [(UICollectionViewCompositionalLayout *)self _performDeferredResolveIfNecessary];
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  height = [(_UICollectionCompositionalLayoutSolver *)solver extendedAttributesQueryIncludingOrthogonalScrollingRegions:y, width, height];

  return height;
}

- (BOOL)_shouldOrthogonalScrollingSectionSupplementaryScrollWithContentForIndexPath:(id)path elementKind:(id)kind
{
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  LOBYTE(kind) = [(_UICollectionCompositionalLayoutSolver *)solver orthogonalScrollingSectionSupplementaryShouldScrollWithContentForIndexPath:path elementKind:kind];

  return kind;
}

- (BOOL)_shouldOrthogonalScrollingSectionDecorationScrollWithContentForIndexPath:(id)path elementKind:(id)kind
{
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  LOBYTE(kind) = [(_UICollectionCompositionalLayoutSolver *)solver orthogonalScrollingSectionDecorationShouldScrollWithContentForIndexPath:path elementKind:kind];

  return kind;
}

- (CGRect)_orthogonalFrameWithOffsetElidedForItemWithLayoutAttributes:(id)attributes frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  height = [(_UICollectionCompositionalLayoutSolver *)solver orthogonalFrameWithOffsetElidedForItemWithLayoutAttributes:attributes frame:x, y, width, height];
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = height;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)_orthogonalScrollingElementShouldAppearAboveForAttributes:(id)attributes
{
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  LOBYTE(attributes) = [(_UICollectionCompositionalLayoutSolver *)solver elementShouldAppearAboveOrthogonalScrollingContainer:attributes];

  return attributes;
}

- (BOOL)_orthogonalScrollingElementShouldAppearBelowForAttributes:(id)attributes
{
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  LOBYTE(attributes) = [(_UICollectionCompositionalLayoutSolver *)solver elementShouldAppearBelowOrthogonalScrollingContainer:attributes];

  return attributes;
}

- (id)_invokeVisibleItemsInvalidationHandlerIfNeededForVisibleBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  if (solver && (v9 = solver[36], solver, v9 >= 1))
  {
    kdebug_trace();
    solver2 = [(UICollectionViewCompositionalLayout *)self solver];
    height = [(_UICollectionCompositionalLayoutSolver *)solver2 mutatedVisibleItemsForElementsForVisibleBounds:y, width, height];

    kdebug_trace();
  }

  else
  {
    height = 0;
  }

  return height;
}

- (BOOL)_viewBoundsPermitsLayout:(CGRect)layout
{
  height = layout.size.height;
  width = layout.size.width;
  y = layout.origin.y;
  x = layout.origin.x;
  v7 = CGRectGetWidth(layout);
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  return v7 * CGRectGetHeight(v9) > 0.0;
}

- (void)_solveForPinnedSupplementaryItemsIfNeededWithContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  hasPinnedSupplementaryItems = [(_UICollectionCompositionalLayoutSolver *)solver hasPinnedSupplementaryItems];

  if (hasPinnedSupplementaryItems)
  {
    _updatePinnedSectionSupplementaryItemsForCurrentVisibleBounds = [(UICollectionViewCompositionalLayout *)self _updatePinnedSectionSupplementaryItemsForCurrentVisibleBounds];
    if (context && ([context invalidateEverything] & 1) == 0)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      invalidatedAuxillaryKinds = [_updatePinnedSectionSupplementaryItemsForCurrentVisibleBounds invalidatedAuxillaryKinds];
      v9 = [invalidatedAuxillaryKinds countByEnumeratingWithState:&v15 objects:v19 count:16];
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
              objc_enumerationMutation(invalidatedAuxillaryKinds);
            }

            v13 = *(*(&v15 + 1) + 8 * i);
            v14 = [_updatePinnedSectionSupplementaryItemsForCurrentVisibleBounds indexPathsForInvalidatedSupplementariesOfKind:v13];
            [context invalidateSupplementaryElementsOfKind:v13 atIndexPaths:v14];
          }

          v10 = [invalidatedAuxillaryKinds countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }
    }
  }
}

- (id)_layoutSectionForSectionIndex:(unint64_t)index
{
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  v5 = [(_UICollectionCompositionalLayoutSolver *)solver _existingSectionDefinitionForSectionIndex:index];

  return v5;
}

- (void)_transformCellLayoutAttributes:(id)attributes
{
  indexPath = [attributes indexPath];
  v7 = -[UICollectionViewCompositionalLayout _layoutSectionForSectionIndex:](self, "_layoutSectionForSectionIndex:", [indexPath section]);

  if (v7)
  {
    _callback = [v7 _callback];
    [_callback _enrichLayoutAttributes:attributes interactionState:self->_interactionStateModule];
  }

  [(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule transformCellLayoutAttributes:attributes isDisappearing:0];
}

- (void)_transformDecorationLayoutAttributes:(id)attributes
{
  indexPath = [attributes indexPath];
  if ([indexPath length] >= 2)
  {
    v5 = -[UICollectionViewCompositionalLayout _layoutSectionForSectionIndex:](self, "_layoutSectionForSectionIndex:", [indexPath section]);
    _callback = [v5 _callback];
    [_callback _enrichLayoutAttributes:attributes interactionState:self->_interactionStateModule];
  }

  [(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule transformDecorationLayoutAttributes:attributes isDisappearing:0];
}

- (void)_transformSupplementaryLayoutAttributes:(id)attributes
{
  indexPath = [attributes indexPath];
  if ([indexPath length] >= 2)
  {
    v5 = -[UICollectionViewCompositionalLayout _layoutSectionForSectionIndex:](self, "_layoutSectionForSectionIndex:", [indexPath section]);
    _callback = [v5 _callback];
    [_callback _enrichLayoutAttributes:attributes interactionState:self->_interactionStateModule];
  }
}

- (void)_cellBackgroundOrBottomSeparatorChangedAtIndexPath:(id)path separatorOnly:(BOOL)only
{
  onlyCopy = only;
  v29 = *MEMORY[0x1E69E9840];
  if (!path)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionalLayout.m" lineNumber:2049 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
  }

  collectionView = [(UICollectionViewLayout *)self collectionView];
  _currentUpdate = [collectionView _currentUpdate];

  if (!_currentUpdate)
  {
    _collectionViewData = [collectionView _collectionViewData];
    v10 = _collectionViewData;
    if (_collectionViewData && ([(UICollectionViewData *)_collectionViewData _isIndexPathValid:path validateItemCounts:1]& 1) != 0)
    {
      v11 = -[UICollectionViewCompositionalLayout _layoutSectionForSectionIndex:](self, "_layoutSectionForSectionIndex:", [path section]);
      v12 = v11;
      if (v11)
      {
        _callback = [v11 _callback];
        v14 = [_callback _invalidationContextForCellBackgroundOrBottomSeparatorChangeAtIndexPath:path interactionState:self->_interactionStateModule separatorOnly:onlyCopy];

        if (v14)
        {
          if (!onlyCopy)
          {
            _selectionController = [collectionView _selectionController];
            v16 = _selectionController;
            if (_selectionController)
            {
              v17 = [*(_selectionController + 8) copy];
            }

            else
            {
              v17 = 0;
            }

            allObjects = [v17 allObjects];
            [v14 invalidateItemsAtIndexPaths:allObjects];
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
        if (onlyCopy)
        {
          v24 = @"separator";
        }

        *buf = 138412546;
        v26 = v24;
        v27 = 2112;
        pathCopy2 = path;
        _os_log_fault_impl(&dword_188A29000, v23, OS_LOG_TYPE_FAULT, "Ignoring cell %@ change notification received for invalid index path: %@", buf, 0x16u);
      }
    }

    else
    {
      v19 = *(__UILogGetCategoryCachedImpl("Assert", &_cellBackgroundOrBottomSeparatorChangedAtIndexPath_separatorOnly____s_category) + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = @"background";
        if (onlyCopy)
        {
          v20 = @"separator";
        }

        *buf = 138412546;
        v26 = v20;
        v27 = 2112;
        pathCopy2 = path;
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

- (void)setEditing:(BOOL)editing
{
  layoutFlags = self->super._layoutFlags;
  if (((((layoutFlags & 0x10) == 0) ^ editing) & 1) == 0)
  {
    if (editing)
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

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path
{
  v6.receiver = self;
  v6.super_class = UICollectionViewCompositionalLayout;
  v4 = [(UICollectionViewLayout *)&v6 finalLayoutAttributesForDisappearingItemAtIndexPath:path];
  if (v4)
  {
    [(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule transformCellLayoutAttributes:v4 isDisappearing:1];
  }

  return v4;
}

- (id)finalLayoutAttributesForDisappearingDecorationElementOfKind:(id)kind atIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = UICollectionViewCompositionalLayout;
  v5 = [(UICollectionViewLayout *)&v7 finalLayoutAttributesForDisappearingDecorationElementOfKind:kind atIndexPath:path];
  if (v5)
  {
    [(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule transformDecorationLayoutAttributes:v5 isDisappearing:1];
  }

  return v5;
}

- (BOOL)_supportsSwipeActionsForIndexPath:(id)path
{
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  LOBYTE(path) = [(_UICollectionCompositionalLayoutSolver *)solver _supportsSwipeActionsForIndexPath:path];

  return path;
}

- (id)_leadingSwipeActionsConfigurationForIndexPath:(id)path
{
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  v5 = [(_UICollectionCompositionalLayoutSolver *)solver _leadingSwipeActionsConfigurationForIndexPath:path];

  return v5;
}

- (id)_trailingSwipeActionsConfigurationForIndexPath:(id)path
{
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  v5 = [(_UICollectionCompositionalLayoutSolver *)solver _trailingSwipeActionsConfigurationForIndexPath:path];

  return v5;
}

- (void)_updateStyleForSwipeActionsConfiguration:(id)configuration indexPath:(id)path
{
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  [(_UICollectionCompositionalLayoutSolver *)solver _updateStyleForSwipeActionsConfiguration:configuration indexPath:path];
}

- (void)_willBeginSwiping
{
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  [(_UICollectionCompositionalLayoutSolver *)solver _willBeginSwiping];
}

- (void)_didEndSwiping
{
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  [(_UICollectionCompositionalLayoutSolver *)solver _didEndSwiping];
}

- (id)_propertyAnimatorForCollectionViewUpdates:(id)updates withCustomAnimator:(id)animator
{
  if (self->super._swipeActionsModule)
  {
    v4 = [(_UICollectionViewLayoutSwipeActionsModule *)self->super._swipeActionsModule propertyAnimatorForCollectionViewUpdates:updates withCustomAnimator:animator];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UICollectionViewCompositionalLayout;
    v4 = [(UICollectionViewLayout *)&v6 _propertyAnimatorForCollectionViewUpdates:updates withCustomAnimator:animator];
  }

  return v4;
}

- (int64_t)_layoutTypeForSection:(int64_t)section
{
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  v5 = [(_UICollectionCompositionalLayoutSolver *)solver _existingSectionDefinitionForSectionIndex:section];

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

- (double)_alignedContentMarginGivenMargin:(double)margin
{
  solver = [(UICollectionViewCompositionalLayout *)self solver];
  v5 = [(_UICollectionCompositionalLayoutSolver *)solver _existingSectionDefinitionForSectionIndex:?];

  if (v5)
  {
    [v5 _alignedContentMarginGivenMargin:margin];
    margin = v6;
  }

  return margin;
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
  v5 = [self alloc];
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