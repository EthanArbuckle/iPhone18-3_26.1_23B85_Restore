@interface UICollectionViewLayout
- (BOOL)_shouldPopulateInitialAndFinalLayoutAttributesForAllUpdateItems:(BOOL)a3;
- (CGPoint)_layoutOffset;
- (CGPoint)_offsetForOrthogonalScrollingSection:(int64_t)a3;
- (CGPoint)_offsetInTopParentLayout:(id *)a3;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)proposedContentOffset;
- (CGRect)_centerInsertionIndicatorFrame:(CGRect)a3 targetAttributes:(id)a4 axis:(unint64_t)a5 edges:(unint64_t)a6;
- (CGRect)_contentFrameForSection:(int64_t)a3;
- (CGRect)_dynamicReferenceBounds;
- (CGRect)_frame;
- (CGRect)_frameForInsertionIndicatorForTargetFrame:(CGRect)a3 axis:(unint64_t)a4 edges:(unint64_t)a5;
- (CGRect)_frameForScrollingToFirstElementInSectionAtIndex:(int64_t)a3;
- (CGRect)_layoutFrameForSection:(int64_t)a3;
- (CGRect)_orthogonalScrollingContentRectForSection:(int64_t)a3;
- (CGRect)_orthogonalScrollingLayoutRectForSection:(int64_t)a3;
- (CGRect)bounds;
- (CGRect)convertRect:(CGRect)a3 fromLayout:(id)a4;
- (CGRect)convertRect:(CGRect)a3 toLayout:(id)a4;
- (CGSize)_fallbackItemSize;
- (CGSize)collectionViewContentSize;
- (NSArray)_elementKinds;
- (NSDirectionalEdgeInsets)_supplementaryViewInsetsForScrollingToItemAtIndexPath:(id)a3;
- (NSIndexPath)targetIndexPathForInteractivelyMovingItem:(NSIndexPath *)previousIndexPath withPosition:(CGPoint)position;
- (NSIndexSet)_items;
- (NSIndexSet)_sections;
- (UICollectionView)collectionView;
- (UICollectionViewLayout)_siblingLayout;
- (UICollectionViewLayout)init;
- (UICollectionViewLayout)initWithCoder:(NSCoder *)coder;
- (UICollectionViewLayoutAttributes)finalLayoutAttributesForDisappearingDecorationElementOfKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)decorationIndexPath;
- (UICollectionViewLayoutAttributes)finalLayoutAttributesForDisappearingItemAtIndexPath:(NSIndexPath *)itemIndexPath;
- (UICollectionViewLayoutAttributes)finalLayoutAttributesForDisappearingSupplementaryElementOfKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)elementIndexPath;
- (UICollectionViewLayoutAttributes)initialLayoutAttributesForAppearingDecorationElementOfKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)decorationIndexPath;
- (UICollectionViewLayoutAttributes)initialLayoutAttributesForAppearingItemAtIndexPath:(NSIndexPath *)itemIndexPath;
- (UICollectionViewLayoutAttributes)initialLayoutAttributesForAppearingSupplementaryElementOfKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)elementIndexPath;
- (UICollectionViewLayoutAttributes)layoutAttributesForInteractivelyMovingItemAtIndexPath:(NSIndexPath *)indexPath withTargetPosition:(CGPoint)position;
- (UICollectionViewLayoutInvalidationContext)invalidationContextForBoundsChange:(CGRect)newBounds;
- (UICollectionViewLayoutInvalidationContext)invalidationContextForEndingInteractiveMovementOfItemsToFinalIndexPaths:(NSArray *)indexPaths previousIndexPaths:(NSArray *)previousIndexPaths movementCancelled:(BOOL)movementCancelled;
- (UICollectionViewLayoutInvalidationContext)invalidationContextForInteractivelyMovingItems:(NSArray *)targetIndexPaths withTargetPosition:(CGPoint)targetPosition previousIndexPaths:(NSArray *)previousIndexPaths previousPosition:(CGPoint)previousPosition;
- (UICollectionViewLayoutInvalidationContext)invalidationContextForPreferredLayoutAttributes:(UICollectionViewLayoutAttributes *)preferredAttributes withOriginalAttributes:(UICollectionViewLayoutAttributes *)originalAttributes;
- (UIEdgeInsets)_focusFastScrollingIndexBarInsets;
- (UIEdgeInsets)_preferredLayoutMargins;
- (UIUserInterfaceLayoutDirection)developmentLayoutDirection;
- (_UICollectionViewCompositionLayout)_compositionLayout;
- (id)_decorationViewForLayoutAttributes:(id)a3;
- (id)_finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3;
- (id)_indexPathForInsertionIndicatorForTargetAttributes:(id)a3 axis:(unint64_t)a4 edges:(unint64_t)a5 previousAttributes:(id)a6 nextAttributes:(id)a7;
- (id)_indexPathsToDeleteForDecorationViewOfKind:(id)a3;
- (id)_indexPathsToDeleteForSupplementaryViewOfKind:(id)a3;
- (id)_indexPathsToInsertForDecorationViewOfKind:(id)a3;
- (id)_indexPathsToInsertForSupplementaryViewOfKind:(id)a3;
- (id)_initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3;
- (id)_invalidationContextForBoundsChange:(CGRect)a3 fromOldBounds:(CGRect)a4;
- (id)_invalidationContextForRefreshingVisibleElementAttributes;
- (id)_invalidationContextForUpdatedLayoutMargins:(UIEdgeInsets)a3;
- (id)_layoutAttributesForElementsInProjectedRect:(CGRect)a3 withProjectionVector:(CGVector)a4 projectionDistance:(double)a5;
- (id)_layoutAttributesForInsertionIndicatorAtItemWithTargetAttributes:(id)a3 targetPositionEdges:(unint64_t)a4;
- (id)_layoutAttributesForInsertionIndicatorAtTargetIndexPath:(id)a3;
- (id)_layoutAttributesForInsertionIndicatorAtTargetPosition:(CGPoint)a3 sourceIndexPath:(id)a4;
- (id)_layoutAttributesForItemNearestPosition:(CGPoint)a3 maximumDistance:(double)a4;
- (id)_layoutAttributesForNextItemInDirection:(CGPoint)a3 fromIndexPath:(id)a4 constrainedToRect:(CGRect)a5;
- (id)_nextLayoutAttributesForGlobalIndex:(int64_t)a3;
- (id)_previousLayoutAttributesForGlobalIndex:(int64_t)a3;
- (unint64_t)_layoutAxisForAttributes:(id)a3 previousAttributes:(id)a4 nextAttributes:(id)a5;
- (void)_finalizeCollectionViewItemAnimations;
- (void)_finalizeCollectionViewUpdate:(id)a3;
- (void)_finalizeLayoutTransition;
- (void)_invalidateLayoutUsingContext:(id)a3;
- (void)_prepareForCollectionViewUpdates:(id)a3 animated:(BOOL)a4;
- (void)_prepareForTransitionFromLayout:(id)a3;
- (void)_prepareForTransitionToLayout:(id)a3;
- (void)_prepareToAnimateFromCollectionViewItems:(id)a3 atContentOffset:(CGPoint)a4 toItems:(id)a5 atContentOffset:(CGPoint)a6;
- (void)_setElementKinds:(id)a3;
- (void)_setExternalObjectTable:(id)a3 forNibLoadingOfDecorationViewOfKind:(id)a4;
- (void)_setItems:(id)a3;
- (void)_setPreferredBackgroundColor:(id)a3;
- (void)_setPrepared:(BOOL)a3;
- (void)_setSections:(id)a3;
- (void)_setWantsRightToLeftHorizontalMirroringIfNeeded:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
- (void)invalidateLayout;
- (void)invalidateLayoutWithContext:(UICollectionViewLayoutInvalidationContext *)context;
- (void)registerClass:(Class)viewClass forDecorationViewOfKind:(NSString *)elementKind;
- (void)registerNib:(UINib *)nib forDecorationViewOfKind:(NSString *)elementKind;
@end

@implementation UICollectionViewLayout

- (UICollectionView)collectionView
{
  collectionView = self->_collectionView;
  if (collectionView)
  {
    v3 = collectionView;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_compositionLayout);
    v3 = [WeakRetained collectionView];
  }

  return v3;
}

- (void)invalidateLayout
{
  if (self->_invalidationContext)
  {

    [(UICollectionViewLayout *)self invalidateLayoutWithContext:?];
  }

  else
  {
    v3 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
    [(UICollectionViewLayout *)self invalidateLayoutWithContext:v3];
  }
}

- (UICollectionViewLayout)init
{
  v5.receiver = self;
  v5.super_class = UICollectionViewLayout;
  v2 = [(UICollectionViewLayout *)&v5 init];
  v3 = v2;
  if (v2)
  {
    UICollectionViewLayoutCommonInit(v2);
  }

  return v3;
}

- (UIUserInterfaceLayoutDirection)developmentLayoutDirection
{
  if (qword_1ED49D658 != -1)
  {
    dispatch_once(&qword_1ED49D658, &__block_literal_global_122);
  }

  return qword_1ED49D650;
}

void __52__UICollectionViewLayout_developmentLayoutDirection__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 infoDictionary];
  v6 = [v1 objectForKey:@"CFBundleDevelopmentRegion"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v6;
LABEL_3:
    v3 = v2;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v6 count])
    {
      v4 = [v6 objectAtIndexedSubscript:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v2 = [v6 objectAtIndexedSubscript:0];
        goto LABEL_3;
      }
    }
  }

  NSLog(&cfstr_WarningThisApp.isa);
  v3 = @"en";
LABEL_9:
  qword_1ED49D650 = [off_1E70ECB88 defaultWritingDirectionForLanguage:v3] == 1;
}

- (UIEdgeInsets)_preferredLayoutMargins
{
  v2 = 1.79769313e308;
  v3 = 1.79769313e308;
  v4 = 1.79769313e308;
  v5 = 1.79769313e308;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (NSIndexSet)_sections
{
  v2 = self->_sections;

  return v2;
}

- (id)_invalidationContextForRefreshingVisibleElementAttributes
{
  v2 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
  [v2 _setIntent:12];

  return v2;
}

- (CGRect)bounds
{
  WeakRetained = objc_loadWeakRetained(&self->_compositionLayout);

  if (WeakRetained)
  {
    width = self->_frame.size.width;
    height = self->_frame.size.height;
    v6 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    [(UIView *)self->_collectionView bounds];
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)_finalizeCollectionViewItemAnimations
{
  [(NSMutableDictionary *)self->_initialAnimationLayoutAttributesDict removeAllObjects];
  finalAnimationLayoutAttributesDict = self->_finalAnimationLayoutAttributesDict;

  [(NSMutableDictionary *)finalAnimationLayoutAttributesDict removeAllObjects];
}

- (UICollectionViewLayout)initWithCoder:(NSCoder *)coder
{
  v11.receiver = self;
  v11.super_class = UICollectionViewLayout;
  v4 = [(UICollectionViewLayout *)&v11 init];
  if (v4)
  {
    v5 = [(NSCoder *)coder decodeObjectForKey:@"UICollectionViewDecorationViewNibDict"];
    decorationViewNibDict = v4->_decorationViewNibDict;
    v4->_decorationViewNibDict = v5;

    v7 = [(NSCoder *)coder decodeObjectForKey:@"UICollectionViewDecorationViewPrototypeNibExternalObjects"];
    v8 = mutableDictionaryByTransformingLeafDictionariesToWeakValued(v7);
    decorationViewExternalObjectsTables = v4->_decorationViewExternalObjectsTables;
    v4->_decorationViewExternalObjectsTables = v8;

    UICollectionViewLayoutCommonInit(v4);
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  if ([(NSMutableDictionary *)self->_decorationViewNibDict count])
  {
    [a3 encodeObject:self->_decorationViewNibDict forKey:@"UICollectionViewDecorationViewNibDict"];
  }

  if ([(NSMutableDictionary *)self->_decorationViewExternalObjectsTables count])
  {
    decorationViewExternalObjectsTables = self->_decorationViewExternalObjectsTables;

    [a3 encodeObject:decorationViewExternalObjectsTables forKey:@"UICollectionViewDecorationViewPrototypeNibExternalObjects"];
  }
}

- (void)invalidateLayoutWithContext:(UICollectionViewLayoutInvalidationContext *)context
{
  v4 = self;
  WeakRetained = objc_loadWeakRetained(&v4->_compositionLayout);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    do
    {
      v9 = v6;

      v6 = [(UICollectionViewLayout *)v9 _compositionLayout];

      v7 = v9;
      v4 = v9;
    }

    while (v6);
  }

  else
  {
    v7 = v4;
  }

  v10 = v7;
  v8 = [(UICollectionViewLayout *)v7 collectionView];
  [v8 _invalidateLayoutWithContext:context];
}

- (UICollectionViewLayoutInvalidationContext)invalidationContextForBoundsChange:(CGRect)newBounds
{
  v3 = objc_alloc_init([objc_opt_class() invalidationContextClass]);

  return v3;
}

- (id)_invalidationContextForBoundsChange:(CGRect)a3 fromOldBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  v6 = a3.size.height;
  v7 = a3.size.width;
  v8 = [(UICollectionViewLayout *)self invalidationContextForBoundsChange:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a4.origin.x, a4.origin.y];
  if (dyld_program_sdk_at_least() && ![v8 _intent])
  {
    if (v6 == height && v7 == width)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    [v8 _setIntent:v10];
  }

  return v8;
}

- (UICollectionViewLayoutInvalidationContext)invalidationContextForPreferredLayoutAttributes:(UICollectionViewLayoutAttributes *)preferredAttributes withOriginalAttributes:(UICollectionViewLayoutAttributes *)originalAttributes
{
  v4 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
  [v4 _setIntent:5];

  return v4;
}

- (id)_invalidationContextForUpdatedLayoutMargins:(UIEdgeInsets)a3
{
  v3 = objc_alloc_init([objc_opt_class() invalidationContextClass]);

  return v3;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)proposedContentOffset
{
  y = proposedContentOffset.y;
  x = proposedContentOffset.x;
  if ([(UICollectionViewLayout *)self _shouldAdjustTargetContentOffsetToValidateContentExtents])
  {
    if (dyld_program_sdk_at_least())
    {
      v6 = [(UICollectionViewLayout *)self _layoutAxis];
      if (v6 - 1 <= 1)
      {
        v7 = v6;
        [(UICollectionViewLayout *)self collectionViewContentSize];
        v9 = v8;
        v11 = v10;
        v12 = [(UICollectionViewLayout *)self collectionView];
        [v12 _minimumContentOffset];
        v14 = v13;
        v16 = v15;

        v17 = [(UICollectionViewLayout *)self collectionView];
        [v17 _maximumContentOffsetForContentSize:{v9, v11}];
        v19 = v18;
        v21 = v20;

        if (v7 == 1)
        {
          x = fmax(v14, fmin(x, v19));
        }

        else
        {
          y = fmax(v16, fmin(y, v21));
        }
      }
    }
  }

  v22 = x;
  v23 = y;
  result.y = v23;
  result.x = v22;
  return result;
}

- (CGSize)collectionViewContentSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)_shouldPopulateInitialAndFinalLayoutAttributesForAllUpdateItems:(BOOL)a3
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return dyld_program_sdk_at_least() ^ 1;
  }
}

- (void)_prepareForCollectionViewUpdates:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = self;
  v90 = *MEMORY[0x1E69E9840];
  v8 = [(UICollectionView *)self->_collectionView _currentUpdate];
  if (!v8)
  {
    v60 = [MEMORY[0x1E696AAA8] currentHandler];
    [v60 handleFailureInMethod:a2 object:v7 file:@"UICollectionViewLayout.m" lineNumber:1272 description:{@"UICollectionView %@ called prepare on layout without having a current update", v7->_collectionView}];
  }

  v9 = [(UICollectionViewLayout *)v7 _shouldPopulateInitialAndFinalLayoutAttributesForAllUpdateItems:v4];
  v10 = v9;
  if (v9)
  {
    v70 = v8;
    v72 = v9;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v11 = a3;
    v12 = [v11 countByEnumeratingWithState:&v81 objects:buf count:16];
    if (!v12)
    {
      goto LABEL_22;
    }

    v13 = v12;
    v14 = *v82;
    while (1)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v82 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v81 + 1) + 8 * i);
        v17 = [v16 updateAction];
        if (!v16 || v16[6] != 0x7FFFFFFFFFFFFFFFLL)
        {
          if ((v17 - 1) > 1)
          {
            if (v17)
            {
              continue;
            }

            v19 = [v16 indexPathAfterUpdate];
            v24 = [_UICollectionViewItemKey collectionItemKeyForCellWithIndexPath:v19];
            [(UICollectionViewLayout *)v7 layoutAttributesForItemAtIndexPath:v19];
            v26 = v25 = v7;
            v27 = [v26 copy];

            v7 = v25;
            if (v27)
            {
              [v27 setAlpha:0.0];
              [(NSMutableDictionary *)v25->_initialAnimationLayoutAttributesDict setObject:v27 forKey:v24];
            }
          }

          else
          {
            v18 = [v16 indexPathBeforeUpdate];
            v19 = [_UICollectionViewItemKey collectionItemKeyForCellWithIndexPath:v18];

            collectionView = v7->_collectionView;
            [v16 indexPathBeforeUpdate];
            v22 = v21 = v7;
            v23 = [-[UICollectionView _visibleCellForIndexPath:](collectionView _visibleCellForIndexPath:{v22), "_layoutAttributes"}];
            v24 = [v23 copy];

            if (v24)
            {
              [v24 setAlpha:0.0];
              [(NSMutableDictionary *)v21->_finalAnimationLayoutAttributesDict setObject:v24 forKey:v19];
            }

            v7 = v21;
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v81 objects:buf count:16];
      if (!v13)
      {
LABEL_22:

        v10 = v72;
        v8 = v70;
        break;
      }
    }
  }

  v28 = v8[8];
  if (os_variant_has_internal_diagnostics())
  {
    if (!v28)
    {
      v61 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
      {
        v67 = v7->_collectionView;
        *buf = 138412546;
        v87 = v67;
        v88 = 2112;
        v89 = v8;
        _os_log_fault_impl(&dword_188A29000, v61, OS_LOG_TYPE_FAULT, "UIKit internal inconsistency: UICollectionView %@ asked layout to prepare for update %@ without computing deleted sections", buf, 0x16u);
      }
    }
  }

  else if (!v28)
  {
    v63 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1040) + 8);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v64 = v7->_collectionView;
      *buf = 138412546;
      v87 = v64;
      v88 = 2112;
      v89 = v8;
      _os_log_impl(&dword_188A29000, v63, OS_LOG_TYPE_ERROR, "UIKit internal inconsistency: UICollectionView %@ asked layout to prepare for update %@ without computing deleted sections", buf, 0x16u);
    }
  }

  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __68__UICollectionViewLayout__prepareForCollectionViewUpdates_animated___block_invoke;
  v78[3] = &unk_1E70F43F0;
  v29 = v8;
  v79 = v29;
  v80 = v7;
  [v28 enumerateIndexesUsingBlock:v78];
  v30 = v29[9];
  if (os_variant_has_internal_diagnostics())
  {
    if (!v30)
    {
      v62 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
      {
        v68 = v7->_collectionView;
        *buf = 138412546;
        v87 = v68;
        v88 = 2112;
        v89 = v29;
        _os_log_fault_impl(&dword_188A29000, v62, OS_LOG_TYPE_FAULT, "UIKit internal inconsistency: UICollectionView %@ asked layout to prepare for update %@ without computing inserted sections", buf, 0x16u);
      }
    }
  }

  else if (!v30)
  {
    v65 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D648) + 8);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v66 = v7->_collectionView;
      *buf = 138412546;
      v87 = v66;
      v88 = 2112;
      v89 = v29;
      _os_log_impl(&dword_188A29000, v65, OS_LOG_TYPE_ERROR, "UIKit internal inconsistency: UICollectionView %@ asked layout to prepare for update %@ without computing inserted sections", buf, 0x16u);
    }
  }

  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __68__UICollectionViewLayout__prepareForCollectionViewUpdates_animated___block_invoke_423;
  v75[3] = &unk_1E70F43F0;
  v31 = v29;
  v76 = v31;
  v77 = v7;
  [v30 enumerateIndexesUsingBlock:v75];
  [(UICollectionViewLayout *)v7 prepareForCollectionViewUpdates:a3];
  [(UICollectionViewUpdate *)v31 _computeAuxiliaryUpdates];
  if (!v10)
  {
    goto LABEL_52;
  }

  v71 = v30;
  v73 = v28;
  if (!v7)
  {
    goto LABEL_51;
  }

  v32 = v7->_collectionView;
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __107__UICollectionViewLayout__populateInitialAndFinalLayoutAttributesDictionariesForOnScreenElementsForUpdate___block_invoke;
  v85[3] = &unk_1E70FFFF0;
  v85[4] = v31;
  v85[5] = v7;
  v74 = v7;
  v85[6] = sel__populateInitialAndFinalLayoutAttributesDictionariesForOnScreenElementsForUpdate_;
  [(UICollectionView *)v32 _enumerateVisibleViews:v85];
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v33 = [(UICollectionView *)v32 _collectionViewData];
  v69 = v32;
  [(UIScrollView *)v32 visibleBounds];
  v38 = [(UICollectionViewData *)v33 layoutAttributesForElementsInRect:v34, v35, v36, v37];

  v39 = [v38 countByEnumeratingWithState:&v81 objects:buf count:16];
  if (!v39)
  {
    goto LABEL_50;
  }

  v40 = v39;
  v41 = *v82;
  do
  {
    v42 = 0;
    do
    {
      if (*v82 != v41)
      {
        objc_enumerationMutation(v38);
      }

      v43 = *(*(&v81 + 1) + 8 * v42);
      v44 = [v43 copy];
      v45 = v44;
      if (!v43 || (v43[288] & 1) == 0)
      {
        v46 = [(_UILabelConfiguration *)v44 _content];
        v47 = [v45 indexPath];
        v48 = [(UICollectionViewUpdate *)v31 validatedOldIndexPathForSupplementaryElementOfKind:v46 newIndexPath:v47];

        if (v48)
        {
          [v45 setIndexPath:v48];
          finalAnimationLayoutAttributesDict = v74->_finalAnimationLayoutAttributesDict;
          v50 = [_UICollectionViewItemKey collectionItemKeyForLayoutAttributes:v45];
          [(NSMutableDictionary *)finalAnimationLayoutAttributesDict setObject:v45 forKey:v50];
        }

        goto LABEL_38;
      }

      v51 = v31[3];
      v52 = [v44 indexPath];
      v53 = [(UICollectionViewData *)v51 validatedGlobalIndexForItemAtIndexPath:v52];

      if (v53 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v54 = [v31 initialGlobalIndexForFinalGlobalIndex:v53];
        if (v54 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v55 = v31[2];
          if (v55)
          {
            v56 = v54;
            if ((*(v55 + 96) & 2) == 0)
            {
              [(UICollectionViewData *)v31[2] _updateItemCounts];
            }

            if ((v56 & 0x8000000000000000) == 0 && *(v55 + 168) > v56)
            {
              v57 = [(UICollectionViewData *)v31[2] indexPathForItemAtGlobalIndex:v56];
              [v45 setIndexPath:v57];

              v58 = v74->_finalAnimationLayoutAttributesDict;
              v48 = [_UICollectionViewItemKey collectionItemKeyForLayoutAttributes:v45];
              [(NSMutableDictionary *)v58 setObject:v45 forKey:v48];
LABEL_38:
            }
          }
        }
      }

      ++v42;
    }

    while (v40 != v42);
    v59 = [v38 countByEnumeratingWithState:&v81 objects:buf count:16];
    v40 = v59;
  }

  while (v59);
LABEL_50:

LABEL_51:
  v30 = v71;
  v28 = v73;
LABEL_52:
}

void __68__UICollectionViewLayout__prepareForCollectionViewUpdates_animated___block_invoke(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(UICollectionViewData *)*(*(a1 + 32) + 16) existingSupplementaryLayoutAttributesInSection:a2];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        if (v8 && (*(v8 + 288) & 2) != 0)
        {
          v14 = *(*(a1 + 40) + 64);
          v15 = *(v8 + 8);
          v11 = [v14 objectForKeyedSubscript:{v15, v18}];

          if (v11)
          {
            goto LABEL_13;
          }

          v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v12 = *(*(a1 + 40) + 64);
          v13 = *(v8 + 8);
        }

        else
        {
          v9 = *(*(a1 + 40) + 48);
          v10 = [(_UILabelConfiguration *)*(*(&v18 + 1) + 8 * v7) _content];
          v11 = [v9 objectForKeyedSubscript:v10];

          if (v11)
          {
            goto LABEL_13;
          }

          v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v12 = *(*(a1 + 40) + 48);
          v13 = [(_UILabelConfiguration *)v8 _content];
        }

        v16 = v13;
        [v12 setObject:v11 forKeyedSubscript:{v13, v18}];

LABEL_13:
        v17 = [v8 indexPath];
        [v11 addObject:v17];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }
}

void __68__UICollectionViewLayout__prepareForCollectionViewUpdates_animated___block_invoke_423(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(UICollectionViewData *)*(*(a1 + 32) + 24) existingSupplementaryLayoutAttributesInSection:a2];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        if (v8 && (*(v8 + 288) & 2) != 0)
        {
          v14 = *(*(a1 + 40) + 72);
          v15 = *(v8 + 8);
          v11 = [v14 objectForKeyedSubscript:{v15, v18}];

          if (v11)
          {
            goto LABEL_13;
          }

          v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v12 = *(*(a1 + 40) + 72);
          v13 = *(v8 + 8);
        }

        else
        {
          v9 = *(*(a1 + 40) + 56);
          v10 = [(_UILabelConfiguration *)*(*(&v18 + 1) + 8 * v7) _content];
          v11 = [v9 objectForKeyedSubscript:v10];

          if (v11)
          {
            goto LABEL_13;
          }

          v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v12 = *(*(a1 + 40) + 56);
          v13 = [(_UILabelConfiguration *)v8 _content];
        }

        v16 = v13;
        [v12 setObject:v11 forKeyedSubscript:{v13, v18}];

LABEL_13:
        v17 = [v8 indexPath];
        [v11 addObject:v17];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }
}

void __107__UICollectionViewLayout__populateInitialAndFinalLayoutAttributesDictionariesForOnScreenElementsForUpdate___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 _layoutAttributes];
  v25 = [v4 copy];

  v5 = v25;
  if (v25)
  {
    v6 = *(a1 + 32);
    if ((*(v25 + 288) & 1) == 0)
    {
      v7 = *(v25 + 8);
      v8 = [v25 indexPath];
      v9 = [(UICollectionViewUpdate *)v6 validatedNewIndexPathForSupplementaryElementOfKind:v7 oldIndexPath:v8];

      if (v9)
      {
        [v25 setIndexPath:v9];
        v10 = *(*(a1 + 40) + 32);
        v11 = [_UICollectionViewItemKey collectionItemKeyForLayoutAttributes:v25];
        [v10 setObject:v25 forKey:v11];
      }

      goto LABEL_5;
    }

    v12 = *(v6 + 16);
    v13 = [v25 indexPath];
    v14 = [(UICollectionViewData *)v12 validatedGlobalIndexForItemAtIndexPath:v13];

    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [a2 _isInUpdateAnimation];
      v5 = v25;
      if ((v15 & 1) == 0)
      {
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        v18 = a1 + 40;
        v16 = *(a1 + 40);
        v17 = *(v18 + 8);
        v19 = [v25 indexPath];
        [v9 handleFailureInMethod:v17 object:v16 file:@"UICollectionViewLayout.m" lineNumber:1399 description:{@"While preparing update a visible view at %@ wasn't found in the current data model and was not in an update animation. This is an internal error.", v19}];

LABEL_5:
        v5 = v25;
      }
    }

    else
    {
      v20 = [*(a1 + 32) finalGlobalIndexForInitialGlobalIndex:v14];
      v5 = v25;
      if (v20 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 = *(*(a1 + 32) + 24);
        if (v21)
        {
          v22 = v20;
          if ((*(v21 + 96) & 2) == 0)
          {
            [(UICollectionViewData *)v21 _updateItemCounts];
            v5 = v25;
          }

          if ((v22 & 0x8000000000000000) == 0 && *(v21 + 168) > v22)
          {
            v23 = [(UICollectionViewData *)*(*(a1 + 32) + 24) indexPathForItemAtGlobalIndex:v22];
            [v25 setIndexPath:v23];

            v24 = *(*(a1 + 40) + 32);
            v9 = [_UICollectionViewItemKey collectionItemKeyForLayoutAttributes:v25];
            [v24 setObject:v25 forKey:v9];
            goto LABEL_5;
          }
        }
      }
    }
  }
}

- (void)_finalizeCollectionViewUpdate:(id)a3
{
  [(NSMutableDictionary *)self->_initialAnimationLayoutAttributesDict removeAllObjects];
  [(NSMutableDictionary *)self->_finalAnimationLayoutAttributesDict removeAllObjects];
  [(NSMutableDictionary *)self->_deletedSupplementaryIndexPathsDict removeAllObjects];
  [(NSMutableDictionary *)self->_insertedSupplementaryIndexPathsDict removeAllObjects];
  [(NSMutableDictionary *)self->_deletedDecorationIndexPathsDict removeAllObjects];
  [(NSMutableDictionary *)self->_insertedDecorationIndexPathsDict removeAllObjects];

  [(UICollectionViewLayout *)self finalizeCollectionViewUpdates];
}

- (void)registerClass:(Class)viewClass forDecorationViewOfKind:(NSString *)elementKind
{
  if (!self->_decorationViewClassDict)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    decorationViewClassDict = self->_decorationViewClassDict;
    self->_decorationViewClassDict = v7;
  }

  [(NSMutableDictionary *)self->_decorationViewNibDict removeObjectForKey:elementKind];
  v9 = self->_decorationViewClassDict;
  if (viewClass)
  {

    [(NSMutableDictionary *)v9 setValue:viewClass forKey:elementKind];
  }

  else
  {

    [(NSMutableDictionary *)v9 removeObjectForKey:elementKind];
  }
}

- (void)registerNib:(UINib *)nib forDecorationViewOfKind:(NSString *)elementKind
{
  if (!self->_decorationViewNibDict)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    decorationViewNibDict = self->_decorationViewNibDict;
    self->_decorationViewNibDict = v7;
  }

  [(NSMutableDictionary *)self->_decorationViewClassDict removeObjectForKey:elementKind];
  v9 = self->_decorationViewNibDict;
  if (nib)
  {

    [(NSMutableDictionary *)v9 setValue:nib forKey:elementKind];
  }

  else
  {

    [(NSMutableDictionary *)v9 removeObjectForKey:elementKind];
  }
}

- (void)_prepareForTransitionToLayout:(id)a3
{
  objc_storeStrong(&self->_transitioningToLayout, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_layoutFlags = *&self->_layoutFlags & 0xFD | v5;
  [(UIDynamicAnimator *)self->_animator _setRunning:0];

  [(UICollectionViewLayout *)self prepareForTransitionToLayout:a3];
}

- (void)_prepareForTransitionFromLayout:(id)a3
{
  objc_storeStrong(&self->_transitioningFromLayout, a3);
  objc_opt_class();
  *&self->_layoutFlags = *&self->_layoutFlags & 0xFE | objc_opt_isKindOfClass() & 1;

  [(UICollectionViewLayout *)self prepareForTransitionFromLayout:a3];
}

- (void)_finalizeLayoutTransition
{
  transitioningFromLayout = self->_transitioningFromLayout;
  self->_transitioningFromLayout = 0;

  *&self->_layoutFlags &= ~1u;
  transitioningToLayout = self->_transitioningToLayout;
  self->_transitioningToLayout = 0;

  *&self->_layoutFlags &= ~2u;
  [(UICollectionViewLayout *)self finalizeLayoutTransition];
  v5 = [(UICollectionViewLayout *)self collectionView];
  v6 = [v5 collectionViewLayout];

  if (v6 == self)
  {
    animator = self->_animator;

    [(UIDynamicAnimator *)animator _tickle];
  }
}

- (void)_prepareToAnimateFromCollectionViewItems:(id)a3 atContentOffset:(CGPoint)a4 toItems:(id)a5 atContentOffset:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v9 = a4.y;
  v10 = a4.x;
  v53 = *MEMORY[0x1E69E9840];
  if (dyld_program_sdk_at_least())
  {
    v35 = self;
    v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a3, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v14 = a3;
    v15 = [v14 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v48;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v48 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v47 + 1) + 8 * i);
          v20 = [_UICollectionViewItemKey collectionItemKeyForLayoutAttributes:v19];
          [v13 setObject:v19 forKey:v20];
        }

        v16 = [v14 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v16);
    }

    v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a5, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v22 = a5;
    v23 = [v22 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v44;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v44 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v43 + 1) + 8 * j);
          v28 = [_UICollectionViewItemKey collectionItemKeyForLayoutAttributes:v27];
          [v21 setObject:v27 forKey:v28];
        }

        v24 = [v22 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v24);
    }

    v29 = MEMORY[0x1E695DFA8];
    v30 = [v21 allKeys];
    v31 = [v29 setWithArray:v30];

    v32 = [v13 allKeys];
    [v31 addObjectsFromArray:v32];

    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __107__UICollectionViewLayout__prepareToAnimateFromCollectionViewItems_atContentOffset_toItems_atContentOffset___block_invoke;
    v36[3] = &unk_1E7100018;
    v37 = v13;
    v38 = v21;
    v41 = x - v10;
    v42 = y - v9;
    v39 = v22;
    v40 = v35;
    v33 = v21;
    v34 = v13;
    [v31 enumerateObjectsUsingBlock:v36];
  }
}

void __107__UICollectionViewLayout__prepareToAnimateFromCollectionViewItems_atContentOffset_toItems_atContentOffset___block_invoke(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:v3];
  v5 = [*(a1 + 40) objectForKey:v3];
  v6 = [v4 copy];
  [v6 center];
  [v6 setCenter:{v7 + *(a1 + 64), v8 + *(a1 + 72)}];
  v9 = [v5 copy];
  [v9 center];
  [v9 setCenter:{v10 - *(a1 + 64), v11 - *(a1 + 72)}];
  if (v4 && v5)
  {
    [v6 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [v5 frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v67.origin.x = v13;
    v67.origin.y = v15;
    v67.size.width = v17;
    v67.size.height = v19;
    v70.origin.x = v21;
    v70.origin.y = v23;
    v70.size.width = v25;
    v70.size.height = v27;
    v68 = CGRectUnion(v67, v70);
    y = v68.origin.y;
    x = v68.origin.x;
    height = v68.size.height;
    width = v68.size.width;
    v68.origin.x = v13;
    v68.origin.y = v15;
    v68.size.width = v17;
    v68.size.height = v19;
    v71.origin.x = v21;
    v71.origin.y = v23;
    v71.size.width = v25;
    v71.size.height = v27;
    if (CGRectIntersectsRect(v68, v71))
    {
      goto LABEL_27;
    }

    v53 = v6;
    v54 = v5;
    v55 = v4;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v52 = a1;
    obj = *(a1 + 48);
    v28 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
    if (!v28)
    {
      goto LABEL_26;
    }

    v29 = v28;
    v30 = *v62;
    while (1)
    {
      v31 = 0;
      do
      {
        if (*v62 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v61 + 1) + 8 * v31);
        v33 = [_UICollectionViewItemKey collectionItemKeyForLayoutAttributes:v32];
        v34 = v33;
        if (v3)
        {
          v35 = v3[4];
          if (!v33)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v35 = 0;
          if (!v33)
          {
LABEL_22:
            v36 = 0;
            goto LABEL_12;
          }
        }

        v36 = *(v33 + 32);
LABEL_12:
        if (v35 == v36)
        {
          v37 = v3 ? v3[2] : 0;
          v38 = v37;
          v39 = v34 ? v34[2] : 0;
          v40 = v39;
          v41 = [v38 isEqualToString:v40];

          if (v41)
          {
            [v32 frame];
            v72.origin.x = v42;
            v72.origin.y = v43;
            v72.size.width = v44;
            v72.size.height = v45;
            v69.origin.x = x;
            v69.origin.y = y;
            v69.size.width = width;
            v69.size.height = height;
            if (CGRectIntersectsRect(v69, v72))
            {
              v6 = v53;
              v50 = [v53 copy];
              v51 = [v9 copy];
              [v50 setAlpha:0.0];
              [v51 setAlpha:0.0];
              [*(*(v52 + 56) + 32) setObject:v51 forKey:v3];
              [*(*(v52 + 56) + 40) setObject:v50 forKey:v3];

              v5 = v54;
              v4 = v55;
              goto LABEL_33;
            }
          }
        }

        ++v31;
      }

      while (v29 != v31);
      v46 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
      v29 = v46;
      if (!v46)
      {
LABEL_26:

        v5 = v54;
        v4 = v55;
        v6 = v53;
        a1 = v52;
LABEL_27:
        [*(*(a1 + 56) + 32) setObject:v4 forKey:{v3, v52}];
        v47 = *(*(a1 + 56) + 40);
        v48 = v5;
LABEL_30:
        [v47 setObject:v48 forKey:v3];
        goto LABEL_33;
      }
    }
  }

  if (v4)
  {
    [v6 setAlpha:0.0];
    [*(*(a1 + 56) + 32) setObject:v4 forKey:v3];
    v47 = *(*(a1 + 56) + 40);
    v48 = v6;
    goto LABEL_30;
  }

  v49 = [v9 copy];
  [v49 setAlpha:0.0];
  [*(*(a1 + 56) + 32) setObject:v49 forKey:v3];
  [*(*(a1 + 56) + 40) setObject:v5 forKey:v3];

LABEL_33:
}

- (UICollectionViewLayoutAttributes)initialLayoutAttributesForAppearingItemAtIndexPath:(NSIndexPath *)itemIndexPath
{
  v5 = [(UICollectionViewLayout *)self _collectionViewAnimationContext];

  if (!v5 || ([(UICollectionViewLayout *)self _collectionViewAnimationContext], v6 = objc_claimAutoreleasedReturnValue(), [(_UICollectionViewAnimationContext *)v6 initialLayoutAttributesForAppearingItemAtIndexPath:?], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v7 = [(UICollectionViewLayout *)self _initialLayoutAttributesForAppearingItemAtIndexPath:itemIndexPath];
  }

  return v7;
}

- (id)_initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3
{
  if ([(NSMutableDictionary *)self->_initialAnimationLayoutAttributesDict count])
  {
    v5 = [_UICollectionViewItemKey collectionItemKeyForCellWithIndexPath:a3];
    v6 = [(NSMutableDictionary *)self->_initialAnimationLayoutAttributesDict objectForKey:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(UICollectionViewLayout *)self collectionView];
  if (!v6)
  {
    v8 = [a3 section];
    if (v8 >= [v7 numberOfSections] || (v9 = objc_msgSend(a3, "item"), v9 >= objc_msgSend(v7, "numberOfItemsInSection:", objc_msgSend(a3, "section"))))
    {
      v6 = 0;
      goto LABEL_11;
    }

    transitioningFromLayout = self->_transitioningFromLayout;
    if (transitioningFromLayout && (*&self->_layoutFlags & 1) == 0)
    {
      v6 = [(UICollectionViewLayout *)self->_transitioningFromLayout layoutAttributesForItemAtIndexPath:a3];
      goto LABEL_11;
    }

    v12 = [v7 _currentUpdate];
    v13 = [(UICollectionViewLayout *)self layoutAttributesForItemAtIndexPath:a3];
    v6 = [v13 copy];

    if ((dyld_program_sdk_at_least() & 1) != 0 || !v12)
    {
      if (transitioningFromLayout)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v14 = [v12[9] containsIndex:{objc_msgSend(a3, "section")}];
      if (transitioningFromLayout || (v14 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    [v6 setAlpha:0.0];
LABEL_19:
  }

LABEL_11:

  return v6;
}

- (UICollectionViewLayoutAttributes)finalLayoutAttributesForDisappearingItemAtIndexPath:(NSIndexPath *)itemIndexPath
{
  v5 = [(UICollectionViewLayout *)self _collectionViewAnimationContext];

  if (!v5 || ([(UICollectionViewLayout *)self _collectionViewAnimationContext], v6 = objc_claimAutoreleasedReturnValue(), [(_UICollectionViewAnimationContext *)v6 finalLayoutAttributesForDisappearingItemAtIndexPath:?], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v7 = [(UICollectionViewLayout *)self _finalLayoutAttributesForDisappearingItemAtIndexPath:itemIndexPath];
  }

  return v7;
}

- (id)_finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3
{
  if (![(NSMutableDictionary *)self->_finalAnimationLayoutAttributesDict count]|| ([_UICollectionViewItemKey collectionItemKeyForCellWithIndexPath:a3], v5 = objc_claimAutoreleasedReturnValue(), [(NSMutableDictionary *)self->_finalAnimationLayoutAttributesDict objectForKey:v5], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    transitioningToLayout = self->_transitioningToLayout;
    if (transitioningToLayout && (*&self->_layoutFlags & 2) == 0)
    {
      v6 = [(UICollectionViewLayout *)self->_transitioningToLayout layoutAttributesForItemAtIndexPath:a3];
      goto LABEL_12;
    }

    v8 = [(UICollectionViewLayout *)self collectionView];
    v9 = [v8 _currentUpdate];
    v10 = [v8 _cellForItemAtIndexPath:a3];
    v11 = [v10 _layoutAttributes];
    v6 = [v11 copy];

    if ((dyld_program_sdk_at_least() & 1) != 0 || !v9)
    {
      if (transitioningToLayout)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v12 = [v9[8] containsIndex:{objc_msgSend(a3, "section")}];
      if (transitioningToLayout || (v12 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    [v6 setAlpha:0.0];
LABEL_11:
  }

LABEL_12:

  return v6;
}

- (UICollectionViewLayoutAttributes)initialLayoutAttributesForAppearingSupplementaryElementOfKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)elementIndexPath
{
  if ([(NSMutableDictionary *)self->_initialAnimationLayoutAttributesDict count])
  {
    v7 = [_UICollectionViewItemKey collectionItemKeyForDecorationViewOfKind:elementIndexPath andIndexPath:?];
    v8 = [(NSMutableDictionary *)self->_initialAnimationLayoutAttributesDict objectForKey:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(UICollectionViewLayout *)self collectionView];
  if (!v8)
  {
    if ([(NSIndexPath *)elementIndexPath length]!= 1)
    {
      v10 = [(NSIndexPath *)elementIndexPath section];
      if (v10 >= [v9 numberOfSections])
      {
        v8 = 0;
        goto LABEL_20;
      }
    }

    transitioningFromLayout = self->_transitioningFromLayout;
    if (transitioningFromLayout && (*&self->_layoutFlags & 1) == 0)
    {
      v8 = [(UICollectionViewLayout *)self->_transitioningFromLayout layoutAttributesForSupplementaryViewOfKind:elementKind atIndexPath:elementIndexPath];
      goto LABEL_20;
    }

    v12 = [v9 _currentUpdate];
    v13 = [(UICollectionViewLayout *)self layoutAttributesForSupplementaryViewOfKind:elementKind atIndexPath:elementIndexPath];
    v8 = [v13 copy];

    if (dyld_program_sdk_at_least() & 1) != 0 || !v12 || ([v12[9] containsIndex:{-[NSIndexPath section](elementIndexPath, "section")}])
    {
      if (transitioningFromLayout)
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      v14 = [(UICollectionViewUpdate *)v12 hasInsertedAuxiliaryElementOfKind:elementIndexPath atIndexPath:?];
      if (transitioningFromLayout || (v14 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    [v8 setAlpha:0.0];
    goto LABEL_19;
  }

LABEL_20:

  return v8;
}

- (UICollectionViewLayoutAttributes)finalLayoutAttributesForDisappearingSupplementaryElementOfKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)elementIndexPath
{
  if (![(NSMutableDictionary *)self->_finalAnimationLayoutAttributesDict count]|| ([_UICollectionViewItemKey collectionItemKeyForDecorationViewOfKind:elementIndexPath andIndexPath:?], v7 = objc_claimAutoreleasedReturnValue(), [(NSMutableDictionary *)self->_finalAnimationLayoutAttributesDict objectForKey:v7], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    transitioningToLayout = self->_transitioningToLayout;
    if (transitioningToLayout && (*&self->_layoutFlags & 2) == 0)
    {
      v8 = [(UICollectionViewLayout *)self->_transitioningToLayout layoutAttributesForSupplementaryViewOfKind:elementKind atIndexPath:elementIndexPath];
      goto LABEL_15;
    }

    v10 = [(UICollectionViewLayout *)self collectionView];
    v11 = [v10 _currentUpdate];
    v12 = [v10 _visibleSupplementaryViewOfKind:elementKind atIndexPath:elementIndexPath isDecorationView:0];
    v13 = [v12 _layoutAttributes];
    v8 = [v13 copy];

    if (dyld_program_sdk_at_least() & 1) != 0 || !v11 || ([v11[8] containsIndex:{-[NSIndexPath section](elementIndexPath, "section")}])
    {
      if (transitioningToLayout)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      v14 = [(UICollectionViewUpdate *)v11 hasDeletedAuxiliaryElementOfKind:elementIndexPath atIndexPath:?];
      if (transitioningToLayout || (v14 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    [v8 setAlpha:0.0];
    goto LABEL_14;
  }

LABEL_15:

  return v8;
}

- (UICollectionViewLayoutAttributes)initialLayoutAttributesForAppearingDecorationElementOfKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)decorationIndexPath
{
  if ([(NSMutableDictionary *)self->_initialAnimationLayoutAttributesDict count])
  {
    v7 = [_UICollectionViewItemKey collectionItemKeyForDecorationViewOfKind:decorationIndexPath andIndexPath:?];
    v8 = [(NSMutableDictionary *)self->_initialAnimationLayoutAttributesDict objectForKey:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(UICollectionViewLayout *)self collectionView];
  if (!v8)
  {
    if ([(NSIndexPath *)decorationIndexPath length]!= 1)
    {
      v10 = [(NSIndexPath *)decorationIndexPath section];
      if (v10 >= [v9 numberOfSections])
      {
        v8 = 0;
        goto LABEL_20;
      }
    }

    transitioningFromLayout = self->_transitioningFromLayout;
    if (transitioningFromLayout && (*&self->_layoutFlags & 1) == 0)
    {
      v8 = [(UICollectionViewLayout *)self->_transitioningFromLayout layoutAttributesForDecorationViewOfKind:elementKind atIndexPath:decorationIndexPath];
      goto LABEL_20;
    }

    v12 = [v9 _currentUpdate];
    v13 = [(UICollectionViewLayout *)self layoutAttributesForDecorationViewOfKind:elementKind atIndexPath:decorationIndexPath];
    v8 = [v13 copy];

    if (dyld_program_sdk_at_least() & 1) != 0 || !v12 || ([v12[9] containsIndex:{-[NSIndexPath section](decorationIndexPath, "section")}])
    {
      if (transitioningFromLayout)
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      v14 = [(UICollectionViewUpdate *)v12 hasInsertedAuxiliaryElementOfKind:decorationIndexPath atIndexPath:?];
      if (transitioningFromLayout || (v14 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    [v8 setAlpha:0.0];
    goto LABEL_19;
  }

LABEL_20:

  return v8;
}

- (UICollectionViewLayoutAttributes)finalLayoutAttributesForDisappearingDecorationElementOfKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)decorationIndexPath
{
  if (![(NSMutableDictionary *)self->_finalAnimationLayoutAttributesDict count]|| ([_UICollectionViewItemKey collectionItemKeyForDecorationViewOfKind:decorationIndexPath andIndexPath:?], v7 = objc_claimAutoreleasedReturnValue(), [(NSMutableDictionary *)self->_finalAnimationLayoutAttributesDict objectForKey:v7], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    transitioningToLayout = self->_transitioningToLayout;
    if (transitioningToLayout && (*&self->_layoutFlags & 2) == 0)
    {
      v8 = [(UICollectionViewLayout *)self->_transitioningToLayout layoutAttributesForDecorationViewOfKind:elementKind atIndexPath:decorationIndexPath];
      goto LABEL_15;
    }

    v10 = [(UICollectionViewLayout *)self collectionView];
    v11 = [v10 _currentUpdate];
    v12 = [v10 _visibleSupplementaryViewOfKind:elementKind atIndexPath:decorationIndexPath isDecorationView:1];
    v13 = [v12 _layoutAttributes];
    v8 = [v13 copy];

    if (dyld_program_sdk_at_least() & 1) != 0 || !v11 || ([v11[8] containsIndex:{-[NSIndexPath section](decorationIndexPath, "section")}])
    {
      if (transitioningToLayout)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      v14 = [(UICollectionViewUpdate *)v11 hasDeletedAuxiliaryElementOfKind:decorationIndexPath atIndexPath:?];
      if (transitioningToLayout || (v14 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    [v8 setAlpha:0.0];
    goto LABEL_14;
  }

LABEL_15:

  return v8;
}

- (id)_indexPathsToDeleteForSupplementaryViewOfKind:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_deletedSupplementaryIndexPathsDict objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (id)_indexPathsToDeleteForDecorationViewOfKind:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_deletedDecorationIndexPathsDict objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (id)_indexPathsToInsertForSupplementaryViewOfKind:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_insertedSupplementaryIndexPathsDict objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (id)_indexPathsToInsertForDecorationViewOfKind:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_insertedDecorationIndexPathsDict objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (id)_decorationViewForLayoutAttributes:(id)a3
{
  v5 = [(_UILabelConfiguration *)a3 _content];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__42;
  v28 = __Block_byref_object_dispose__42;
  v29 = 0;
  v6 = [(NSMutableDictionary *)self->_decorationViewNibDict valueForKey:v5];
  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_decorationViewExternalObjectsTables valueForKey:v5];
    if (v7)
    {
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObject:v7 forKey:@"UINibExternalObjects"];
    }

    else
    {
      v8 = 0;
    }

    v10 = [v6 instantiateWithOwner:0 options:v8];
    if ([v10 count] == 1)
    {
      v11 = [v10 objectAtIndex:0];
      v12 = v25[5];
      v25[5] = v11;
    }

    if (!v25[5] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"UICollectionViewLayout.m" lineNumber:1941 description:{@"invalid nib registered for identifier (%@) - nib must contain exactly one top level object which must be a UICollectionReusableView instance", v5}];
    }

    v13 = [v25[5] reuseIdentifier];
    if ([v13 length] && (objc_msgSend(v13, "isEqualToString:", v5) & 1) == 0)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"UICollectionViewLayout.m" lineNumber:1943 description:{@"view reuse identifier in nib (%@) does not match the element kind used to register the nib (%@)", v13, v5}];
    }
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_decorationViewClassDict valueForKey:v5];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __61__UICollectionViewLayout__decorationViewForLayoutAttributes___block_invoke;
    v23[3] = &unk_1E7100040;
    v23[5] = &v24;
    v23[6] = v9;
    v23[4] = a3;
    [UIView performWithoutAnimation:v23];
  }

  v14 = v25[5];
  if (!v14)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [(_UILabelConfiguration *)a3 _content];
    [v18 handleFailureInMethod:a2 object:self file:@"UICollectionViewLayout.m" lineNumber:1951 description:{@"could not dequeue a decoration view of kind: %@ - must register as a class or nib or connect a prototype in a storyboard", v19}];

    v14 = v25[5];
  }

  [v14 _setReuseIdentifier:v5];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __61__UICollectionViewLayout__decorationViewForLayoutAttributes___block_invoke_2;
  v22[3] = &unk_1E70FCDA0;
  v22[4] = a3;
  v22[5] = &v24;
  [UIView performWithoutAnimation:v22];
  [v25[5] setAutoresizingMask:0];
  [v25[5] setTranslatesAutoresizingMaskIntoConstraints:1];
  [v25[5] _setHostsLayoutEngine:1];
  [v25[5] _markAsDequeued];
  v15 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v15;
}

void __61__UICollectionViewLayout__decorationViewForLayoutAttributes___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(*(a1 + 48));
  [*(a1 + 32) frame];
  v3 = [v2 initWithFrame:?];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_setExternalObjectTable:(id)a3 forNibLoadingOfDecorationViewOfKind:(id)a4
{
  decorationViewExternalObjectsTables = self->_decorationViewExternalObjectsTables;
  if (!decorationViewExternalObjectsTables)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_decorationViewExternalObjectsTables;
    self->_decorationViewExternalObjectsTables = v8;

    decorationViewExternalObjectsTables = self->_decorationViewExternalObjectsTables;
  }

  [(NSMutableDictionary *)decorationViewExternalObjectsTables setObject:a3 forKey:a4];
}

- (void)_invalidateLayoutUsingContext:(id)a3
{
  objc_storeStrong(&self->_invalidationContext, a3);
  [(UICollectionViewLayout *)self invalidateLayout];
  invalidationContext = self->_invalidationContext;
  self->_invalidationContext = 0;
}

- (CGRect)_frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_dynamicReferenceBounds
{
  [(UICollectionViewLayout *)self collectionViewContentSize];
  v3 = v2;
  v5 = v4;
  v6 = 0.0;
  v7 = 0.0;
  result.size.height = v5;
  result.size.width = v3;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)_setSections:(id)a3
{
  if (self->_sections != a3)
  {
    v5 = [a3 copy];
    sections = self->_sections;
    self->_sections = v5;
  }
}

- (void)_setItems:(id)a3
{
  if (self->_items != a3)
  {
    v5 = [a3 copy];
    items = self->_items;
    self->_items = v5;
  }
}

- (NSIndexSet)_items
{
  v2 = self->_items;

  return v2;
}

- (void)_setElementKinds:(id)a3
{
  if (self->_elementKinds != a3)
  {
    v5 = [a3 copy];
    elementKinds = self->_elementKinds;
    self->_elementKinds = v5;
  }
}

- (NSArray)_elementKinds
{
  v2 = self->_elementKinds;

  return v2;
}

- (_UICollectionViewCompositionLayout)_compositionLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_compositionLayout);

  return WeakRetained;
}

- (UICollectionViewLayout)_siblingLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_siblingLayout);

  return WeakRetained;
}

- (CGPoint)_layoutOffset
{
  x = self->_layoutOffset.x;
  y = self->_layoutOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)_offsetInTopParentLayout:(id *)a3
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  v7 = [(UICollectionViewLayout *)self _compositionLayout];
  if (v7)
  {
    v8 = v7;
    [(UICollectionViewLayout *)v7 _frame];
    x = x + v9;
    y = y + v10;
    v11 = [(UICollectionViewLayout *)v8 _compositionLayout];
    if (v11)
    {
      do
      {
        v12 = v11;

        [(UICollectionViewLayout *)v12 _frame];
        x = x + v13;
        y = y + v14;
        v11 = [(UICollectionViewLayout *)v12 _compositionLayout];
        v8 = v12;
      }

      while (v11);
    }

    else
    {
      v12 = v8;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = self;
    }

    else
    {
      v12 = 0;
    }
  }

  v15 = v12;
  *a3 = v12;

  v16 = x;
  v17 = y;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 toLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v33 = 0;
  [(UICollectionViewLayout *)self _offsetInTopParentLayout:&v33];
  v12 = v11;
  v14 = v13;
  v15 = v33;
  v32 = 0;
  [a4 _offsetInTopParentLayout:&v32];
  v17 = v16;
  v19 = v18;
  v20 = v32;
  v21 = v20;
  if (v15)
  {
    v22 = v15 == v20;
  }

  else
  {
    v22 = 0;
  }

  if (!v22)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"UICollectionViewLayout.m" lineNumber:2140 description:{@"to convert between layouts, both layouts must have non-nil parent composition layouts and have the same parent at the top of their layout tree"}];
  }

  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v35 = CGRectOffset(v34, v12 - v17, v14 - v19);
  v23 = v35.origin.x;
  v24 = v35.origin.y;
  v25 = v35.size.width;
  v26 = v35.size.height;

  v27 = v23;
  v28 = v24;
  v29 = v25;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 fromLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v33 = 0;
  [(UICollectionViewLayout *)self _offsetInTopParentLayout:&v33];
  v12 = v11;
  v14 = v13;
  v15 = v33;
  v32 = 0;
  [a4 _offsetInTopParentLayout:&v32];
  v17 = v16;
  v19 = v18;
  v20 = v32;
  v21 = v20;
  if (v15)
  {
    v22 = v15 == v20;
  }

  else
  {
    v22 = 0;
  }

  if (!v22)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"UICollectionViewLayout.m" lineNumber:2150 description:{@"to convert between layouts, both layouts must have non-nil parent composition layouts and have the same parent at the top of their layout tree"}];
  }

  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v35 = CGRectOffset(v34, v17 - v12, v19 - v14);
  v23 = v35.origin.x;
  v24 = v35.origin.y;
  v25 = v35.size.width;
  v26 = v35.size.height;

  v27 = v23;
  v28 = v24;
  v29 = v25;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (void)_setPrepared:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_layoutFlags = *&self->_layoutFlags & 0xFB | v3;
}

- (CGSize)_fallbackItemSize
{
  v2 = 50.0;
  v3 = 50.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (NSIndexPath)targetIndexPathForInteractivelyMovingItem:(NSIndexPath *)previousIndexPath withPosition:(CGPoint)position
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [(UICollectionViewLayout *)self layoutAttributesForElementsInRect:position.x, position.y, 1.0, 1.0];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v17;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v16 + 1) + 8 * i);
      if (v11)
      {
        if (v11[288])
        {
          if (!v8 || (v12 = [*(*(&v16 + 1) + 8 * i) zIndex], v12 > objc_msgSend(v8, "zIndex")))
          {
            v13 = v11;

            v8 = v13;
          }
        }
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v7);
  if (v8)
  {
    v14 = [v8 indexPath];
  }

  else
  {
LABEL_15:
    v14 = previousIndexPath;
  }

  return v14;
}

- (UICollectionViewLayoutAttributes)layoutAttributesForInteractivelyMovingItemAtIndexPath:(NSIndexPath *)indexPath withTargetPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v6 = [(UICollectionViewLayout *)self layoutAttributesForItemAtIndexPath:indexPath];
  v7 = [v6 copy];

  [v7 setCenter:{x, y}];
  [v7 setZIndex:0x7FFFFFFFFFFFFFFFLL];

  return v7;
}

- (UICollectionViewLayoutInvalidationContext)invalidationContextForInteractivelyMovingItems:(NSArray *)targetIndexPaths withTargetPosition:(CGPoint)targetPosition previousIndexPaths:(NSArray *)previousIndexPaths previousPosition:(CGPoint)previousPosition
{
  y = targetPosition.y;
  x = targetPosition.x;
  v10 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
  [v10 _setPreviousIndexPathsForInteractivelyMovingItems:previousIndexPaths];
  [v10 _setTargetIndexPathsForInteractivelyMovingItems:targetIndexPaths];
  [v10 _setInteractiveMovementTarget:{x, y}];
  if ([(NSArray *)targetIndexPaths isEqual:previousIndexPaths])
  {
    [v10 invalidateItemsAtIndexPaths:targetIndexPaths];
  }

  return v10;
}

- (UICollectionViewLayoutInvalidationContext)invalidationContextForEndingInteractiveMovementOfItemsToFinalIndexPaths:(NSArray *)indexPaths previousIndexPaths:(NSArray *)previousIndexPaths movementCancelled:(BOOL)movementCancelled
{
  v7 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
  [v7 _setPreviousIndexPathsForInteractivelyMovingItems:previousIndexPaths];
  [v7 _setTargetIndexPathsForInteractivelyMovingItems:indexPaths];
  [v7 _setIntent:11];
  if ([(NSArray *)indexPaths isEqual:previousIndexPaths])
  {
    [v7 invalidateItemsAtIndexPaths:indexPaths];
  }

  return v7;
}

- (void)_setWantsRightToLeftHorizontalMirroringIfNeeded:(BOOL)a3
{
  layoutFlags = self->_layoutFlags;
  if (((((layoutFlags & 8) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }

    *&self->_layoutFlags = layoutFlags & 0xF7 | v4;
  }
}

- (UIEdgeInsets)_focusFastScrollingIndexBarInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGRect)_frameForScrollingToFirstElementInSectionAtIndex:(int64_t)a3
{
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)_layoutAttributesForNextItemInDirection:(CGPoint)a3 fromIndexPath:(id)a4 constrainedToRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a3.y;
  v11 = a3.x;
  v70 = *MEMORY[0x1E69E9840];
  v13 = [(UICollectionViewLayout *)self layoutAttributesForItemAtIndexPath:?];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_13;
  }

  v45 = height;
  v46 = x;
  v15 = width;
  v16 = v11;
  [v13 frame];
  v17 = v72.origin.x;
  v18 = v72.origin.y;
  v19 = v72.size.width;
  v20 = v10;
  v21 = v72.size.height;
  MidX = CGRectGetMidX(v72);
  v73.origin.x = v17;
  v73.origin.y = v18;
  v73.size.width = v19;
  v73.size.height = v21;
  v22 = v20;
  MidY = CGRectGetMidY(v73);
  v24 = MidY;
  v25 = v20 <= 0.0;
  if (v20 < 0.0)
  {
    v26 = MidY - y;
    v27 = v16;
    v28 = v15;
    v29 = v46;
    goto LABEL_12;
  }

  v27 = v16;
  v28 = v15;
  if (!v25)
  {
    v29 = v46;
    v26 = y + v45 - MidY;
    y = MidY;
    goto LABEL_12;
  }

  v26 = v45;
  v29 = v46;
  if (v16 < 0.0)
  {
    v30 = MidX;
LABEL_10:
    v28 = v30 - v29;
    goto LABEL_12;
  }

  if (v16 > 0.0)
  {
    v30 = v46 + v28;
    v29 = MidX;
    goto LABEL_10;
  }

  v29 = *MEMORY[0x1E696AA80];
  y = *(MEMORY[0x1E696AA80] + 8);
  v28 = *(MEMORY[0x1E696AA80] + 16);
  v26 = *(MEMORY[0x1E696AA80] + 24);
LABEL_12:
  v74.origin.x = v29;
  v74.origin.y = y;
  v74.size.width = v28;
  v74.size.height = v26;
  if (CGRectIsEmpty(v74))
  {
LABEL_13:
    v31 = 0;
    goto LABEL_30;
  }

  v32 = [(UICollectionViewLayout *)self _extendedAttributesQueryIncludingOrthogonalScrollingRegions:v29, y, v28, v26];
  if ([v32 count])
  {
    v33 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v34 = v32;
    v35 = [v34 countByEnumeratingWithState:&v65 objects:v69 count:16];
    if (v35)
    {
      v36 = *v66;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v66 != v36)
          {
            objc_enumerationMutation(v34);
          }

          v38 = [*(*(&v65 + 1) + 8 * i) indexPath];
          v39 = [v38 section];
          v40 = [a4 section];
          if (v39 - v40 >= 0)
          {
            v41 = v39 - v40;
          }

          else
          {
            v41 = v40 - v39;
          }

          [v33 addIndex:v41];
        }

        v35 = [v34 countByEnumeratingWithState:&v65 objects:v69 count:16];
      }

      while (v35);
    }

    v59 = 0;
    v60 = &v59;
    v61 = 0x3032000000;
    v62 = __Block_byref_object_copy__42;
    v63 = __Block_byref_object_dispose__42;
    v64 = 0;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __98__UICollectionViewLayout__layoutAttributesForNextItemInDirection_fromIndexPath_constrainedToRect___block_invoke;
    v47[3] = &unk_1E7100068;
    v48 = v34;
    v49 = a4;
    v51 = v29;
    v52 = y;
    v53 = v28;
    v54 = v26;
    v55 = MidX;
    v56 = v24;
    v57 = v27;
    v58 = v22;
    v50 = &v59;
    [v33 enumerateIndexesUsingBlock:v47];
    v31 = v60[5];
    if (v31)
    {
      v42 = v31;
    }

    _Block_object_dispose(&v59, 8);
  }

  else
  {
    v31 = 0;
  }

LABEL_30:

  return v31;
}

void __98__UICollectionViewLayout__layoutAttributesForNextItemInDirection_fromIndexPath_constrainedToRect___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (!v7)
  {
LABEL_49:

    return;
  }

  v8 = v7;
  v46 = a3;
  v47 = 0;
  v9 = *v50;
  v10 = 1.79769313e308;
  v48 = v6;
  do
  {
    v11 = 0;
    do
    {
      if (*v50 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v49 + 1) + 8 * v11);
      v13 = [v12 indexPath];
      v14 = [v13 section];

      v15 = [*(a1 + 40) section];
      v16 = v14 - v15;
      if (v14 - v15 < 0)
      {
        v16 = v15 - v14;
      }

      if (v16 == a2)
      {
        v17 = v15;
        [v12 frame];
        if (v12)
        {
          if (v12[288])
          {
            v22 = v18;
            v23 = v19;
            v24 = v20;
            v25 = v21;
            v26 = [v12 indexPath];
            if ([v26 isEqual:*(a1 + 40)])
            {
              goto LABEL_12;
            }

            v57.origin.x = v22;
            v57.origin.y = v23;
            v57.size.width = v24;
            v57.size.height = v25;
            v27 = NSIntersectsRect(*(a1 + 56), v57);

            if (v27 && (v55.origin.x = v22, v55.origin.y = v23, v55.size.width = v24, v55.size.height = v25, MidX = CGRectGetMidX(v55), v56.origin.x = v22, v56.origin.y = v23, v56.size.width = v24, v56.size.height = v25, MidY = CGRectGetMidY(v56), v30 = MidX - *(a1 + 88), v31 = MidY - *(a1 + 96), v32 = v30 * v30 + v31 * v31, v32 < v10))
            {
              if (v14 == v17)
              {
                v33 = *(a1 + 112);
                v6 = v48;
                if (v33 >= 0.0)
                {
                  if (v33 <= 0.0)
                  {
                    v39 = *(a1 + 104);
                    if (v39 >= 0.0)
                    {
                      if (v39 <= 0.0 || v30 >= 0.0 && fabs(v31) <= v30)
                      {
                        goto LABEL_27;
                      }
                    }

                    else
                    {
                      v36 = v30 <= 0.0;
                      v40 = fabs(v31);
                      v41 = fabs(v30);
                      if (v36 && v40 <= v41)
                      {
LABEL_27:
                        v26 = v47;
                        v47 = v12;
                        v10 = v32;
LABEL_12:
                      }
                    }
                  }

                  else
                  {
                    v37 = fabs(v30);
                    if (v31 >= 0.0 && v37 <= v31)
                    {
                      goto LABEL_27;
                    }
                  }
                }

                else
                {
                  v36 = v31 <= 0.0;
                  v34 = fabs(v30);
                  v35 = fabs(v31);
                  v36 = v36 && v34 <= v35;
                  if (v36)
                  {
                    goto LABEL_27;
                  }
                }
              }

              else
              {
                v6 = v48;
                if (v30 * *(a1 + 104) + v31 * *(a1 + 112) > 0.0)
                {
                  goto LABEL_27;
                }
              }
            }

            else
            {
              v6 = v48;
            }
          }
        }
      }

      ++v11;
    }

    while (v8 != v11);
    v43 = [v6 countByEnumeratingWithState:&v49 objects:v53 count:16];
    v8 = v43;
  }

  while (v43);

  if (v47)
  {
    v44 = *(*(a1 + 48) + 8);
    v45 = *(v44 + 40);
    *(v44 + 40) = v47;
    v6 = v47;

    *v46 = 1;
    goto LABEL_49;
  }
}

- (id)_layoutAttributesForInsertionIndicatorAtItemWithTargetAttributes:(id)a3 targetPositionEdges:(unint64_t)a4
{
  collectionView = self->_collectionView;
  v9 = [a3 indexPath];
  v10 = [(UICollectionView *)collectionView _globalIndexPathForItemAtIndexPath:v9];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"UICollectionViewLayout.m" lineNumber:2452 description:{@"Invalid parameter not satisfying: %@", @"targetGlobalIndex != NSNotFound"}];
  }

  v11 = [(UICollectionViewLayout *)self _previousLayoutAttributesForGlobalIndex:v10];
  v12 = [(UICollectionViewLayout *)self _nextLayoutAttributesForGlobalIndex:v10];
  v13 = [(UICollectionViewLayout *)self _layoutAxisForAttributes:a3 previousAttributes:v11 nextAttributes:v12];
  [a3 frame];
  [(UICollectionViewLayout *)self _frameForInsertionIndicatorForTargetFrame:v13 axis:a4 edges:?];
  [(UICollectionViewLayout *)self _centerInsertionIndicatorFrame:a3 targetAttributes:v13 axis:a4 edges:?];
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  if (CGRectIsNull(v23))
  {
    v18 = 0;
  }

  else
  {
    v19 = [(UICollectionViewLayout *)self _indexPathForInsertionIndicatorForTargetAttributes:a3 axis:v13 edges:a4 previousAttributes:v11 nextAttributes:v12];
    v18 = [objc_msgSend(objc_opt_class() "layoutAttributesClass")];
    [v18 setFrame:{x, y, width, height}];
  }

  return v18;
}

- (id)_layoutAttributesForInsertionIndicatorAtTargetPosition:(CGPoint)a3 sourceIndexPath:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(UICollectionViewLayout *)self _layoutAttributesForItemNearestPosition:a3.x maximumDistance:a3.y, 1000.0];
  v9 = v8;
  if (v8)
  {
    [v8 frame];
    v14 = [(UICollectionViewLayout *)self _layoutAttributesForInsertionIndicatorAtItemWithTargetAttributes:v9 targetPositionEdges:_UIDirectionalRectEdgesForLocationRelativeToRectWithDefaultEdges(12, x, y, v10, v11, v12, v13)];
    v15 = [v14 indexPath];
    v16 = v15;
    if (a4)
    {
      if (v15)
      {
        v17 = [a4 section];
        if (v17 == [v16 section] && objc_msgSend(a4, "compare:", v16) == -1)
        {
          v18 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v16 inSection:{"item") - 1, objc_msgSend(v16, "section")}];
          [v14 setIndexPath:v18];
        }
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_layoutAttributesForInsertionIndicatorAtTargetIndexPath:(id)a3
{
  v5 = [(UICollectionViewLayout *)self layoutAttributesForItemAtIndexPath:?];
  if (v5)
  {
    v6 = v5;
LABEL_3:
    v7 = 3;
    goto LABEL_6;
  }

  if ([a3 item] < 1)
  {
    v6 = 0;
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(a3 inSection:{"item") - 1, objc_msgSend(a3, "section")}];
  v6 = [(UICollectionViewLayout *)self layoutAttributesForItemAtIndexPath:v8];

  v7 = 12;
LABEL_6:
  v9 = [(UICollectionViewLayout *)self _layoutAttributesForInsertionIndicatorAtItemWithTargetAttributes:v6 targetPositionEdges:v7];

  return v9;
}

- (CGRect)_frameForInsertionIndicatorForTargetFrame:(CGRect)a3 axis:(unint64_t)a4 edges:(unint64_t)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a4 == 2)
  {
    MinX = CGRectGetMinX(a3);
    v11 = x;
    v12 = y;
    v13 = width;
    v14 = height;
    if (v5)
    {
      MaxY = CGRectGetMinY(*&v11) + -5.0;
    }

    else
    {
      MaxY = CGRectGetMaxY(*&v11);
    }

    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v16 = CGRectGetWidth(v20);
    v17 = 5.0;
  }

  else if (a4 == 1)
  {
    if ((a5 & 2) != 0)
    {
      MinX = CGRectGetMinX(a3) + -5.0;
    }

    else
    {
      MinX = CGRectGetMaxX(a3);
    }

    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    MaxY = CGRectGetMinY(v21);
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v17 = CGRectGetHeight(v22);
    v16 = 5.0;
  }

  else
  {
    v16 = *(MEMORY[0x1E695F050] + 16);
    v17 = *(MEMORY[0x1E695F050] + 24);
    MinX = *MEMORY[0x1E695F050];
    MaxY = *(MEMORY[0x1E695F050] + 8);
  }

  v18 = MinX;
  v19 = MaxY;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)_centerInsertionIndicatorFrame:(CGRect)a3 targetAttributes:(id)a4 axis:(unint64_t)a5 edges:(unint64_t)a6
{
  v6 = a6;
  height = a3.size.height;
  x = a3.origin.x;
  rect = a3.size.width;
  y = a3.origin.y;
  if (a4)
  {
    v11 = *(a4 + 72);
    v12 = 1;
    if ((v11 & 2) != 0)
    {
      v12 = 2;
    }

    if (v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = [a4 indexPath];
  [a4 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = _UIUnitVectorFromDirectionalRectEdgeAndPermittedAxis(v6, a5);
  v25 = [(UICollectionViewLayout *)self _layoutAttributesForElementsInProjectedRect:v16 withProjectionVector:v18 projectionDistance:v20, v22, v23, v24, 200.0];
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__42;
  v72 = __Block_byref_object_dispose__42;
  v73 = 0;
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x2020000000;
  v67[3] = 0x7FEFFFFFFFFFFFFFLL;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __85__UICollectionViewLayout__centerInsertionIndicatorFrame_targetAttributes_axis_edges___block_invoke;
  v58[3] = &unk_1E7100090;
  v26 = v14;
  v63 = v16;
  v64 = v18;
  v65 = v20;
  v66 = v22;
  v59 = v26;
  v60 = v67;
  v61 = &v68;
  v62 = v13;
  [v25 enumerateObjectsUsingBlock:v58];
  v27 = v69[5];
  if (!v27)
  {
    goto LABEL_25;
  }

  [v27 frame];
  v53 = v31;
  v32 = v28;
  v33 = v29;
  v34 = v30;
  v54 = height;
  if (a5 == 2)
  {
    v74.origin.y = y;
    v74.origin.x = x;
    v74.size.width = rect;
    v74.size.height = height;
    MinX = CGRectGetMinX(v74);
    if (v6)
    {
      v83.origin.x = v32;
      v83.origin.y = v33;
      v83.size.width = v34;
      v83.size.height = v53;
      MaxY = CGRectGetMaxY(v83);
      v84.origin.y = y;
      v84.origin.x = x;
      v84.size.width = rect;
      v84.size.height = height;
      Width = CGRectGetWidth(v84);
      v85.origin.x = v16;
      v85.origin.y = v18;
      v85.size.width = v20;
      v85.size.height = v22;
      MinY = CGRectGetMinY(v85);
      v86.origin.x = v32;
      v86.origin.y = v33;
      v86.size.width = v34;
      v86.size.height = v53;
      v37 = MinY - CGRectGetMaxY(v86);
    }

    else
    {
      v75.origin.x = v16;
      v75.origin.y = v18;
      v75.size.width = v20;
      v75.size.height = v22;
      MaxY = CGRectGetMaxY(v75);
      v76.origin.y = y;
      v76.origin.x = x;
      v76.size.width = rect;
      v76.size.height = height;
      Width = CGRectGetWidth(v76);
      v77.origin.x = v32;
      v77.origin.y = v33;
      v77.size.width = v34;
      v77.size.height = v53;
      v36 = CGRectGetMinY(v77);
      v78.origin.x = v16;
      v78.origin.y = v18;
      v78.size.width = v20;
      v78.size.height = v22;
      v37 = v36 - CGRectGetMaxY(v78);
    }

LABEL_18:
    v46 = MaxY;
    v45 = MinX;
    goto LABEL_19;
  }

  if (a5 == 1)
  {
    if ((v6 & 2) != 0)
    {
      MinX = CGRectGetMaxX(*&v28);
      v87.origin.y = y;
      v87.origin.x = x;
      v87.size.width = rect;
      v87.size.height = height;
      MaxY = CGRectGetMinY(v87);
      v88.origin.x = v16;
      v88.origin.y = v18;
      v88.size.width = v20;
      v88.size.height = v22;
      v38 = CGRectGetMinX(v88);
      v39 = v32;
      v40 = v33;
      v41 = v34;
      v42 = v53;
    }

    else
    {
      v79.origin.x = v16;
      v79.origin.y = v18;
      v79.size.width = v20;
      v79.size.height = v22;
      MinX = CGRectGetMaxX(v79);
      v80.origin.y = y;
      v80.origin.x = x;
      v80.size.width = rect;
      v80.size.height = height;
      MaxY = CGRectGetMinY(v80);
      v81.origin.x = v32;
      v81.origin.y = v33;
      v81.size.width = v34;
      v81.size.height = v53;
      v38 = CGRectGetMinX(v81);
      v39 = v16;
      v40 = v18;
      v41 = v20;
      v42 = v22;
    }

    MaxX = CGRectGetMaxX(*&v39);
    v82.origin.y = y;
    v82.origin.x = x;
    v82.size.width = rect;
    v82.size.height = v54;
    v37 = CGRectGetHeight(v82);
    Width = v38 - MaxX;
    goto LABEL_18;
  }

  Width = *(MEMORY[0x1E695F050] + 16);
  v37 = *(MEMORY[0x1E695F050] + 24);
  v45 = *MEMORY[0x1E695F050];
  v46 = *(MEMORY[0x1E695F050] + 8);
LABEL_19:
  v89.origin.x = v45;
  v89.origin.y = v46;
  v89.size.width = Width;
  v89.size.height = v37;
  if (CGRectIsNull(v89))
  {
LABEL_24:
    height = v54;
    goto LABEL_25;
  }

  if (a5 == 1)
  {
    x = round(v45 + (Width - rect) * 0.5);
    goto LABEL_24;
  }

  if (a5 != 2)
  {
    goto LABEL_24;
  }

  height = v54;
  y = round(v46 + (v37 - v54) * 0.5);
LABEL_25:

  _Block_object_dispose(v67, 8);
  _Block_object_dispose(&v68, 8);

  v48 = y;
  v47 = x;
  v49 = rect;
  v50 = height;
  result.size.height = v50;
  result.size.width = v49;
  result.origin.y = v48;
  result.origin.x = v47;
  return result;
}

void __85__UICollectionViewLayout__centerInsertionIndicatorFrame_targetAttributes_axis_edges___block_invoke(uint64_t a1, _DWORD *a2)
{
  if (!a2 || (v4 = a2[72], (v4 & 1) != 0))
  {
    v5 = 0;
  }

  else
  {
    if ((v4 & 2) != 0)
    {
      return;
    }

    v5 = 1;
  }

  v6 = [a2 indexPath];
  if ([v6 isEqual:*(a1 + 32)])
  {
    v7 = *(a1 + 56);

    if (v5 == v7)
    {
      return;
    }
  }

  else
  {
  }

  [a2 frame];
  v12 = UIDistanceBetweenRects(v8, v9, v10, v11, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  v13 = *(*(a1 + 40) + 8);
  if (v12 < *(v13 + 24))
  {
    *(v13 + 24) = v12;
    v14 = (*(*(a1 + 48) + 8) + 40);

    objc_storeStrong(v14, a2);
  }
}

- (id)_indexPathForInsertionIndicatorForTargetAttributes:(id)a3 axis:(unint64_t)a4 edges:(unint64_t)a5 previousAttributes:(id)a6 nextAttributes:(id)a7
{
  v12 = [a3 indexPath];
  v13 = v12;
  if (a4 == 1)
  {
    if ((a5 & 8) != 0)
    {
      goto LABEL_10;
    }

    if ((a5 >> 1))
    {
      goto LABEL_5;
    }

LABEL_8:
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"UICollectionViewLayout.m" lineNumber:2662 description:{@"Invalid parameter not satisfying: %@", @"NO"}];

    goto LABEL_9;
  }

  if (a4 != 2)
  {
    goto LABEL_8;
  }

  if ((a5 & 4) == 0)
  {
    if (a5)
    {
LABEL_5:
      v14 = v12;
      goto LABEL_20;
    }

    goto LABEL_8;
  }

LABEL_10:
  if (!a7)
  {
    v17 = [(UICollectionView *)self->_collectionView _globalIndexPathForItemAtIndexPath:v12];
    if (v17 != 0x7FFFFFFFFFFFFFFFLL && v17 + 1 == [(UICollectionView *)self->_collectionView _totalItemCount])
    {
      v14 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v13 inSection:{"item") + 1, objc_msgSend(v13, "section")}];
      goto LABEL_20;
    }

LABEL_9:
    v16 = 0;
    goto LABEL_21;
  }

  if ([v12 length] >= 2)
  {
    v16 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v13 inSection:{"item") + 1, objc_msgSend(v13, "section")}];
    if ([(UICollectionView *)self->_collectionView _indexPathIsSectionAppendingIndexPath:v16])
    {
      if (v16)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }
  }

  v14 = [a7 indexPath];
LABEL_20:
  v16 = v14;
LABEL_21:

  return v16;
}

- (NSDirectionalEdgeInsets)_supplementaryViewInsetsForScrollingToItemAtIndexPath:(id)a3
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.trailing = v6;
  result.bottom = v5;
  result.leading = v4;
  result.top = v3;
  return result;
}

- (unint64_t)_layoutAxisForAttributes:(id)a3 previousAttributes:(id)a4 nextAttributes:(id)a5
{
  if (a3)
  {
    v6 = a4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v7 == 1 && a5 != 0)
  {

    return _UILayoutAxisForAttributeTriple(a4, a3, a5);
  }

  if (!a5 && ((v7 ^ 1) & 1) == 0)
  {
    v10 = a4;
    v11 = a3;
LABEL_22:

    return _UILayoutAxisForAttributePair(v10, v11);
  }

  if (a3 && !a4 && a5)
  {
    v10 = a3;
    v11 = a5;
    goto LABEL_22;
  }

  result = 0;
  if (a3 && !a4 && !a5)
  {
    v13 = [(UICollectionViewLayout *)self _layoutAxis];
    if (v13 - 1 <= 1 && ((v14 = v13, [a3 frame], v16 = v15, v18 = v17, v14 != 1) ? (v19 = v14 == 2) : (v19 = 2), -[UICollectionViewLayout collectionViewContentSize](self, "collectionViewContentSize"), v22 = _UISizeValueForAxis(v19, v20, v21), v23 = _UISizeValueForAxis(v19, v16, v18), fabs(v22) >= 2.22044605e-16))
    {
      if (v23 / v22 <= 0.5)
      {
        return v19;
      }

      else
      {
        return v14;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)_previousLayoutAttributesForGlobalIndex:(int64_t)a3
{
  if ((a3 - 1) > 0x7FFFFFFFFFFFFFFDLL)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(UICollectionView *)self->_collectionView _indexPathForGlobalIndex:?];
    if (!v5)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"UICollectionViewLayout.m" lineNumber:2743 description:{@"Invalid parameter not satisfying: %@", @"previousIndexPath"}];
    }

    v6 = [(UICollectionViewLayout *)self layoutAttributesForItemAtIndexPath:v5];
    if (!v6)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"UICollectionViewLayout.m" lineNumber:2745 description:{@"Invalid parameter not satisfying: %@", @"previousAttributes"}];
    }
  }

  return v6;
}

- (id)_nextLayoutAttributesForGlobalIndex:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL || a3 + 1 >= [(UICollectionView *)self->_collectionView _totalItemCount])
  {
    v6 = 0;
  }

  else
  {
    v5 = [(UICollectionView *)self->_collectionView _indexPathForGlobalIndex:?];
    if (!v5)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"UICollectionViewLayout.m" lineNumber:2760 description:{@"Invalid parameter not satisfying: %@", @"nextIndexPath"}];
    }

    v6 = [(UICollectionViewLayout *)self layoutAttributesForItemAtIndexPath:v5];
  }

  return v6;
}

- (id)_layoutAttributesForElementsInProjectedRect:(CGRect)a3 withProjectionVector:(CGVector)a4 projectionDistance:(double)a5
{
  y = a3.origin.y;
  x = a3.origin.x;
  if (fabs(a5) < 2.22044605e-16 || ((dy = a4.dy, dx = a4.dx, width = a3.size.width, v10 = fabs(a4.dy), fabs(a4.dx) < 2.22044605e-16) ? (v11 = v10 < 2.22044605e-16) : (v11 = 0), v11))
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  else
  {
    height = a3.size.height;
    v15 = hypot(a4.dx, a4.dy);
    v16 = x + width * 0.5 + dx / v15 * a5;
    v17 = y + height * 0.5 + dy / v15 * a5;
    v38.origin.y = round(v17 - height * 0.5);
    v38.origin.x = round(v16 - width * 0.5);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v38.size.width = width;
    v38.size.height = height;
    v37 = CGRectUnion(v36, v38);
    v18 = [(UICollectionViewLayout *)self layoutAttributesForElementsInRect:v37.origin.x, v37.origin.y, v37.size.width, v37.size.height];
    if ([v18 count])
    {
      v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v18];
      v20 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __110__UICollectionViewLayout__layoutAttributesForElementsInProjectedRect_withProjectionVector_projectionDistance___block_invoke;
      v23[3] = &unk_1E71000B8;
      v25 = x + width * 0.5;
      v26 = y + height * 0.5;
      v27 = v16;
      v28 = v17;
      v29 = v25;
      v30 = v26;
      v31 = x;
      v32 = y;
      v33 = width;
      v34 = height;
      v24 = v20;
      v21 = v20;
      [v19 enumerateObjectsUsingBlock:v23];
      [v19 removeObjectsAtIndexes:v21];
    }

    else
    {
      v19 = MEMORY[0x1E695E0F0];
    }
  }

  return v19;
}

uint64_t __110__UICollectionViewLayout__layoutAttributesForElementsInProjectedRect_withProjectionVector_projectionDistance___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 center];
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = v11 - v9;
  v13 = v10 - v8;
  v14 = vabdd_f64(v9 * v10 + v6 * (v11 - v9) - v7 * (v10 - v8), v8 * v11);
  v15 = sqrt(v13 * v13 + v12 * v12);
  v16 = v14 / v15;
  if (fabs(v15) < 2.22044605e-16)
  {
    v16 = 1.79769313e308;
  }

  v17 = sqrt((*(a1 + 72) - v6) * (*(a1 + 72) - v6) + (*(a1 + 80) - v7) * (*(a1 + 80) - v7));
  v18 = sqrt(v17 * v17 - v16 * v16);
  v19 = hypot(v13, v12);
  v20 = v8 + v13 / v19 * v18;
  v21 = v9 + v12 / v19 * v18;
  v22 = *(a1 + 104);
  v23 = *(a1 + 112);
  v24 = round(v21 - v23 * 0.5);
  v25 = round(v20 - v22 * 0.5);
  [a2 frame];
  v34.origin.x = v26;
  v34.origin.y = v27;
  v34.size.width = v28;
  v34.size.height = v29;
  v33.origin.x = v25;
  v33.origin.y = v24;
  v33.size.width = v22;
  v33.size.height = v23;
  result = CGRectIntersectsRect(v33, v34);
  if ((result & 1) == 0)
  {
    v31 = *(a1 + 32);

    return [v31 addIndex:a3];
  }

  return result;
}

- (id)_layoutAttributesForItemNearestPosition:(CGPoint)a3 maximumDistance:(double)a4
{
  y = a3.y;
  x = a3.x;
  v6 = fabs(a4);
  v7 = a4 * 0.5;
  if (v6 < 2.22044605e-16)
  {
    v7 = 1.0;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__42;
  v17 = __Block_byref_object_dispose__42;
  v18 = 0;
  v8 = [(UICollectionViewLayout *)self layoutAttributesForElementsInRect:round(x - v7 * 0.5), round(a3.y - v7 * 0.5), v7, v7];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0x7FEFFFFFFFFFFFFFLL;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__UICollectionViewLayout__layoutAttributesForItemNearestPosition_maximumDistance___block_invoke;
  v11[3] = &unk_1E71000E0;
  *&v11[6] = x;
  *&v11[7] = y;
  v11[4] = v12;
  v11[5] = &v13;
  [v8 enumerateObjectsUsingBlock:v11];
  v9 = v14[5];
  _Block_object_dispose(v12, 8);

  _Block_object_dispose(&v13, 8);

  return v9;
}

void __82__UICollectionViewLayout__layoutAttributesForItemNearestPosition_maximumDistance___block_invoke(uint64_t a1, _BYTE *a2)
{
  if (a2)
  {
    if (a2[288])
    {
      [a2 frame];
      UIDistanceBetweenPointAndRect(*(a1 + 48), *(a1 + 56), v4, v5, v6, v7);
      v9 = *(*(a1 + 32) + 8);
      if (v8 < *(v9 + 24))
      {
        *(v9 + 24) = v8;
        v10 = (*(*(a1 + 40) + 8) + 40);

        objc_storeStrong(v10, a2);
      }
    }
  }
}

- (CGRect)_contentFrameForSection:(int64_t)a3
{
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_layoutFrameForSection:(int64_t)a3
{
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGPoint)_offsetForOrthogonalScrollingSection:(int64_t)a3
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGRect)_orthogonalScrollingLayoutRectForSection:(int64_t)a3
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_orthogonalScrollingContentRectForSection:(int64_t)a3
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_setPreferredBackgroundColor:(id)a3
{
  preferredBackgroundColor = self->_preferredBackgroundColor;
  p_preferredBackgroundColor = &self->_preferredBackgroundColor;
  if (preferredBackgroundColor != a3)
  {
    objc_storeStrong(p_preferredBackgroundColor, a3);
    v6 = [(UICollectionViewLayout *)self collectionView];
    [v6 _updateBackgroundColorIfNeeded];
  }
}

@end