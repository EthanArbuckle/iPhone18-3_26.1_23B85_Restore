@interface _UICollectionViewLayoutSwipeActionsModule
- (BOOL)_canIgnoreInvalidationContext:(id)context;
- (BOOL)_canSwipeItemAtIndexPath:(id)path;
- (BOOL)hasActiveSwipe;
- (BOOL)swipeActionController:(id)controller insertActionsView:(id)view forItemAtIndexPath:(id)path;
- (BOOL)swipeActionController:(id)controller mayBeginSwipeForItemAtIndexPath:(id)path;
- (UICollectionViewLayout)host;
- (UIEdgeInsets)swipeActionController:(id)controller extraInsetsForItemAtIndexPath:(id)path;
- (_UICollectionViewLayoutSwipeActionsModule)initWithHost:(id)host;
- (id)_cellWithCustomGroupingAtIndexPath:(id)path;
- (id)gestureRecognizerViewForSwipeActionController:(id)controller;
- (id)itemContainerViewForSwipeActionController:(id)controller;
- (id)propertyAnimatorForCollectionViewUpdates:(id)updates withCustomAnimator:(id)animator;
- (id)swipeActionController:(id)controller indexPathForTouchLocation:(CGPoint)location;
- (id)swipeActionController:(id)controller leadingSwipeConfigurationForItemAtIndexPath:(id)path;
- (id)swipeActionController:(id)controller trailingSwipeConfigurationForItemAtIndexPath:(id)path;
- (id)swipeActionController:(id)controller viewForItemAtIndexPath:(id)path;
- (id)swipeViewManipulatorForSwipeActionController:(id)controller;
- (int64_t)layoutDirectionForSwipeActionController:(id)controller;
- (int64_t)swipeActionsStyleForSwipedItemAtIndexPath:(id)path;
- (void)_invalidateSwipeActionsLayoutRefreshingActiveConfigurations:(BOOL)configurations;
- (void)_performForcedCollectionViewLayoutPreservingExistingLayoutAttributes;
- (void)_transformLayoutAttributes:(id)attributes ofSeparatorAtBottom:(BOOL)bottom forSwipeOccurrence:(id)occurrence isDisappearing:(BOOL)disappearing;
- (void)_updateSwipeActionsConfiguration:(id)configuration forIndexPath:(id)path;
- (void)editingStateDidChange;
- (void)finalizeCollectionViewUpdate:(id)update;
- (void)processLayoutInvalidationWithContext:(id)context updateConfigurations:(BOOL)configurations;
- (void)revealTrailingSwipeActionsForIndexPath:(id)path;
- (void)swipeActionController:(id)controller didBeginSwipeForItemAtIndexPath:(id)path;
- (void)swipeActionController:(id)controller didEndSwipeForItemAtIndexPath:(id)path;
- (void)swipeActionController:(id)controller swipeOccurrence:(id)occurrence didChangeStateFrom:(int64_t)from to:(int64_t)to;
- (void)swipeActionController:(id)controller willBeginSwipeForItemAtIndexPath:(id)path;
- (void)swipeItemAtIndexPath:(id)path direction:(unint64_t)direction animated:(BOOL)animated completion:(id)completion;
- (void)transformCellLayoutAttributes:(id)attributes isDisappearing:(BOOL)disappearing;
- (void)transformDecorationLayoutAttributes:(id)attributes isDisappearing:(BOOL)disappearing;
- (void)updateWithDataSourceTranslator:(id)translator;
@end

@implementation _UICollectionViewLayoutSwipeActionsModule

- (BOOL)hasActiveSwipe
{
  swipedIndexPaths = [(UISwipeActionController *)self->_swipeActionController swipedIndexPaths];
  v3 = [swipedIndexPaths count] != 0;

  return v3;
}

- (_UICollectionViewLayoutSwipeActionsModule)initWithHost:(id)host
{
  hostCopy = host;
  v13.receiver = self;
  v13.super_class = _UICollectionViewLayoutSwipeActionsModule;
  v5 = [(_UICollectionViewLayoutSwipeActionsModule *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_host, hostCopy);
    collectionView = [hostCopy collectionView];
    traitCollection = [collectionView traitCollection];
    v9 = +[UISwipeActionVisualStyleProvider visualStyleForIdiom:](UISwipeActionVisualStyleProvider, "visualStyleForIdiom:", [traitCollection userInterfaceIdiom]);

    v10 = -[UISwipeActionController initWithSwipeActionHost:style:]([UISwipeActionController alloc], "initWithSwipeActionHost:style:", v6, [v9 defaultCollectionViewCompositionalLayoutSwipeStyle]);
    swipeActionController = v6->_swipeActionController;
    v6->_swipeActionController = v10;
  }

  return v6;
}

- (void)_performForcedCollectionViewLayoutPreservingExistingLayoutAttributes
{
  flags = self->_flags;
  *&self->_flags = flags | 4;
  WeakRetained = objc_loadWeakRetained(&self->_host);
  collectionView = [WeakRetained collectionView];
  [collectionView layoutIfNeeded];

  *&self->_flags = *&self->_flags & 0xFB | flags & 4;
}

- (BOOL)_canSwipeItemAtIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_host);
  collectionView = [WeakRetained collectionView];

  _reorderedItems = [collectionView _reorderedItems];
  v8 = [_reorderedItems count];

  if (v8)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = [collectionView _isCellInvolvedInDragOrDropAnimationAtIndexPath:pathCopy] ^ 1;
  }

  return v9;
}

- (void)swipeItemAtIndexPath:(id)path direction:(unint64_t)direction animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  pathCopy = path;
  completionCopy = completion;
  if ([(_UICollectionViewLayoutSwipeActionsModule *)self _canSwipeItemAtIndexPath:pathCopy])
  {
    [(UISwipeActionController *)self->_swipeActionController swipeItemAtIndexPath:pathCopy configuration:0 direction:direction animated:animatedCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)revealTrailingSwipeActionsForIndexPath:(id)path
{
  swipeActionController = self->_swipeActionController;
  pathCopy = path;
  [(_UICollectionViewLayoutSwipeActionsModule *)self swipeItemAtIndexPath:pathCopy direction:[(UISwipeActionController *)swipeActionController _swipeDirectionForLeadingEdge:0] animated:1 completion:0];
}

- (int64_t)swipeActionsStyleForSwipedItemAtIndexPath:(id)path
{
  v3 = [(UISwipeActionController *)self->_swipeActionController _existingSwipeOccurrenceForIndexPath:path];
  v4 = v3;
  if (v3)
  {
    _styleFromConfiguration = [v3 _styleFromConfiguration];
  }

  else
  {
    _styleFromConfiguration = 0;
  }

  return _styleFromConfiguration;
}

- (id)gestureRecognizerViewForSwipeActionController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_host);
  collectionView = [WeakRetained collectionView];

  return collectionView;
}

- (id)itemContainerViewForSwipeActionController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_host);
  collectionView = [WeakRetained collectionView];

  return collectionView;
}

- (id)swipeActionController:(id)controller leadingSwipeConfigurationForItemAtIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_host);
  if (![WeakRetained _supportsSwipeActionsForIndexPath:pathCopy])
  {
    goto LABEL_10;
  }

  v7 = [WeakRetained _leadingSwipeActionsConfigurationForIndexPath:pathCopy];
  if (v7)
  {
    _leadingSwipeActionsConfiguration = v7;
LABEL_4:
    [(_UICollectionViewLayoutSwipeActionsModule *)self _updateSwipeActionsConfiguration:_leadingSwipeActionsConfiguration forIndexPath:pathCopy];
    goto LABEL_11;
  }

  collectionView = [WeakRetained collectionView];
  v10 = [collectionView cellForItemAtIndexPath:pathCopy];

  if (!v10 || ([v10 contentView], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_respondsToSelector(), v11, (v12 & 1) == 0))
  {

LABEL_10:
    _leadingSwipeActionsConfiguration = 0;
    goto LABEL_11;
  }

  contentView = [v10 contentView];
  _leadingSwipeActionsConfiguration = [contentView _leadingSwipeActionsConfiguration];

  if (_leadingSwipeActionsConfiguration)
  {
    goto LABEL_4;
  }

LABEL_11:

  return _leadingSwipeActionsConfiguration;
}

- (id)swipeActionController:(id)controller trailingSwipeConfigurationForItemAtIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_host);
  if (![WeakRetained _supportsSwipeActionsForIndexPath:pathCopy])
  {
    goto LABEL_10;
  }

  v7 = [WeakRetained _trailingSwipeActionsConfigurationForIndexPath:pathCopy];
  if (v7)
  {
    _trailingSwipeActionsConfiguration = v7;
LABEL_4:
    [(_UICollectionViewLayoutSwipeActionsModule *)self _updateSwipeActionsConfiguration:_trailingSwipeActionsConfiguration forIndexPath:pathCopy];
    goto LABEL_11;
  }

  collectionView = [WeakRetained collectionView];
  v10 = [collectionView cellForItemAtIndexPath:pathCopy];

  if (!v10 || ([v10 contentView], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_respondsToSelector(), v11, (v12 & 1) == 0))
  {

LABEL_10:
    _trailingSwipeActionsConfiguration = 0;
    goto LABEL_11;
  }

  contentView = [v10 contentView];
  _trailingSwipeActionsConfiguration = [contentView _trailingSwipeActionsConfiguration];

  if (_trailingSwipeActionsConfiguration)
  {
    goto LABEL_4;
  }

LABEL_11:

  return _trailingSwipeActionsConfiguration;
}

- (void)_updateSwipeActionsConfiguration:(id)configuration forIndexPath:(id)path
{
  configurationCopy = configuration;
  pathCopy = path;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewLayoutSwipeActionsModule.m" lineNumber:293 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_host);
  [WeakRetained _updateStyleForSwipeActionsConfiguration:configurationCopy indexPath:pathCopy];

  if ([configurationCopy _swipeActionsStyle] != 1)
  {
    v9 = [(_UICollectionViewLayoutSwipeActionsModule *)self _cellWithCustomGroupingAtIndexPath:pathCopy];

    if (v9)
    {
      [configurationCopy _setSwipeActionsStyle:1];
    }
  }
}

- (id)_cellWithCustomGroupingAtIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_host);
  collectionView = [WeakRetained collectionView];
  v7 = [collectionView cellForItemAtIndexPath:pathCopy];

  if (!v7)
  {
    v10 = 0;
    goto LABEL_12;
  }

  _layoutAttributes = [v7 _layoutAttributes];
  _existingListAttributes = [(UICollectionViewLayoutAttributes *)_layoutAttributes _existingListAttributes];

  if (_existingListAttributes && (*(_existingListAttributes + 8) & 2) != 0 && *(_existingListAttributes + 24) != 15)
  {
    v10 = v7;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = v7;
  if ([v10 _backgroundViewConfigurationGrouping] <= 1)
  {

LABEL_8:
    v10 = 0;
  }

LABEL_11:

LABEL_12:

  return v10;
}

- (int64_t)layoutDirectionForSwipeActionController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_host);
  collectionView = [WeakRetained collectionView];
  effectiveUserInterfaceLayoutDirection = [collectionView effectiveUserInterfaceLayoutDirection];

  return effectiveUserInterfaceLayoutDirection;
}

- (id)swipeActionController:(id)controller indexPathForTouchLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_host);
  collectionView = [WeakRetained collectionView];

  v9 = [collectionView indexPathForItemAtPoint:{x, y}];
  v10 = v9;
  if (v9)
  {
    indexPath2 = v9;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    swipeOccurrences = [(UISwipeActionController *)self->_swipeActionController swipeOccurrences];
    v13 = [swipeOccurrences countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(swipeOccurrences);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          if (([v17 _hasAmbiguousIndexPath] & 1) == 0)
          {
            indexPath = [v17 indexPath];
            v19 = [collectionView _visibleDecorationViewOfKind:@"UICollectionViewListLayoutElementKindSwipeActions" atIndexPath:indexPath];

            if (v19)
            {
              if (([v19 isHidden] & 1) == 0)
              {
                [v19 convertPoint:collectionView fromView:{x, y}];
                if ([v19 pointInside:0 withEvent:?])
                {
                  indexPath2 = [v17 indexPath];

                  goto LABEL_17;
                }
              }
            }
          }
        }

        v14 = [swipeOccurrences countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    indexPath2 = 0;
  }

LABEL_17:

  return indexPath2;
}

- (id)swipeActionController:(id)controller viewForItemAtIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_host);
  collectionView = [WeakRetained collectionView];
  v8 = [collectionView cellForItemAtIndexPath:pathCopy];

  return v8;
}

- (UIEdgeInsets)swipeActionController:(id)controller extraInsetsForItemAtIndexPath:(id)path
{
  v60 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_host);
  collectionView = [WeakRetained collectionView];
  [collectionView bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v8;
  v53 = v10;
  v54 = v12;
  v56 = v14;
  [collectionView safeAreaInsets];
  v51 = v18;
  v52 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [collectionView accessoryViewAtEdge:3];
  v24 = v23;
  if (v23)
  {
    [v23 frame];
    MaxX = CGRectGetMaxX(v61);
    v62.origin.x = v16;
    v62.origin.y = v11;
    v62.size.width = v13;
    v62.size.height = v15;
    v26 = MaxX - CGRectGetMinX(v62);
    if (v20 < v26)
    {
      v20 = v26;
    }
  }

  v27 = [collectionView accessoryViewAtEdge:5];
  if (v27)
  {
    v63.origin.x = v16;
    v63.origin.y = v11;
    v63.size.width = v13;
    v63.size.height = v15;
    v28 = CGRectGetMaxX(v63);
    [v27 frame];
    v29 = v28 - CGRectGetMinX(v64);
    if (v22 < v29)
    {
      v22 = v29;
    }
  }

  v30 = [WeakRetained layoutAttributesForDecorationViewOfKind:@"UICollectionViewListLayoutElementKindSwipeActions" atIndexPath:{pathCopy, *&v22}];
  [v30 frame];
  if (v30)
  {
    v35 = v31;
    v36 = v32;
    v37 = v33;
    v38 = v34;
  }

  else
  {
    v38 = v15;
    v36 = v11;
    v35 = v16;
    if (os_variant_has_internal_diagnostics())
    {
      v49 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v59 = pathCopy;
        _os_log_fault_impl(&dword_188A29000, v49, OS_LOG_TYPE_FAULT, "Missing layout attributes for swipe actions view at index path: %@", buf, 0xCu);
      }
    }

    else
    {
      v39 = *(__UILogGetCategoryCachedImpl("Assert", &swipeActionController_extraInsetsForItemAtIndexPath____s_category) + 8);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v59 = pathCopy;
        _os_log_impl(&dword_188A29000, v39, OS_LOG_TYPE_ERROR, "Missing layout attributes for swipe actions view at index path: %@", buf, 0xCu);
      }
    }

    v37 = v13;
  }

  v40 = v9 + v20;
  v41 = v54 - (v20 + v50);
  v42 = v56 - (v52 + v51);
  v65.origin.x = v40;
  v65.origin.y = v53 + v52;
  v65.size.width = v41;
  v65.size.height = v42;
  MinX = CGRectGetMinX(v65);
  v66.origin.x = v35;
  v66.origin.y = v36;
  v66.size.width = v37;
  v66.size.height = v38;
  v55 = CGRectGetMinX(v66);
  v67.origin.x = v35;
  v67.origin.y = v36;
  v67.size.width = v37;
  v67.size.height = v38;
  v43 = CGRectGetMaxX(v67);
  v68.origin.x = v40;
  v68.origin.y = v53 + v52;
  v68.size.width = v41;
  v68.size.height = v42;
  v44 = CGRectGetMaxX(v68);

  v45 = 0.0;
  v46 = fmax(MinX - v55, 0.0);
  v47 = fmax(v43 - v44, 0.0);
  v48 = 0.0;
  result.right = v47;
  result.bottom = v45;
  result.left = v46;
  result.top = v48;
  return result;
}

- (BOOL)swipeActionController:(id)controller mayBeginSwipeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_host);
  v7 = ([WeakRetained isEditing] & 1) == 0 && -[_UICollectionViewLayoutSwipeActionsModule _canSwipeItemAtIndexPath:](self, "_canSwipeItemAtIndexPath:", pathCopy);

  return v7;
}

- (BOOL)swipeActionController:(id)controller insertActionsView:(id)view forItemAtIndexPath:(id)path
{
  v19 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_host);
  collectionView = [WeakRetained collectionView];

  v11 = objc_loadWeakRetained(&self->_host);
  _UIInvalidateSwipeActionsLayoutForDecorationViewAtIndexPath(v11, pathCopy);

  _UIPerformImmediateCollectionViewLayoutAndVisibleCellsUpdate(collectionView);
  v12 = [collectionView _visibleDecorationViewOfKind:@"UICollectionViewListLayoutElementKindSwipeActions" atIndexPath:pathCopy];
  v13 = v12;
  if (v12)
  {
    [v12 setClipsToBounds:1];
    [v13 addSubview:viewCopy];
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v16 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v17 = 138412290;
      v18 = pathCopy;
      _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "Swipe actions view was not created for index path: %@", &v17, 0xCu);
    }
  }

  else
  {
    v14 = *(__UILogGetCategoryCachedImpl("Assert", &swipeActionController_insertActionsView_forItemAtIndexPath____s_category) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = pathCopy;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Swipe actions view was not created for index path: %@", &v17, 0xCu);
    }
  }

  return v13 != 0;
}

- (void)swipeActionController:(id)controller willBeginSwipeForItemAtIndexPath:(id)path
{
  if ([controller _isSwipeForIndexPathFirstOccurrenceBeginningOrLastOccurrenceEnding:path])
  {
    WeakRetained = objc_loadWeakRetained(&self->_host);
    [WeakRetained _willBeginSwiping];
  }
}

- (void)swipeActionController:(id)controller didBeginSwipeForItemAtIndexPath:(id)path
{
  v20 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v6 = [controller _existingSwipeOccurrenceForIndexPath:pathCopy];
  if (os_variant_has_internal_diagnostics())
  {
    if (!v6)
    {
      v16 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v18 = 138412290;
        v19 = pathCopy;
        _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "Unable to get swipe occurrence for swipe at index path: %@", &v18, 0xCu);
      }
    }
  }

  else if (!v6)
  {
    v17 = *(__UILogGetCategoryCachedImpl("Assert", &swipeActionController_didBeginSwipeForItemAtIndexPath____s_category) + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = pathCopy;
      _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Unable to get swipe occurrence for swipe at index path: %@", &v18, 0xCu);
    }
  }

  swipedView = [v6 swipedView];
  _safeMaskView = [(UIView *)swipedView _safeMaskView];
  if (!_UISolariumSwipeActionsEnabled() || ([(UIView *)swipedView _safeMaskView], (v9 = objc_claimAutoreleasedReturnValue()) == 0) || (v10 = v9, [(UIView *)swipedView _safeMaskView], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, v10, (isKindOfClass & 1) == 0))
  {
    v13 = [_UICollectionViewLayoutSwipeMaskView alloc];
    [swipedView bounds];
    v14 = [(UIView *)v13 initWithFrame:?];

    v15 = +[UIColor blackColor];
    [(UIView *)v14 setBackgroundColor:v15];

    [(UIView *)swipedView _setSafeMaskView:v14];
    _safeMaskView = v14;
  }

  _UIUpdateMaskViewClippingFromView(_safeMaskView, swipedView);
}

- (void)swipeActionController:(id)controller didEndSwipeForItemAtIndexPath:(id)path
{
  v20 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  pathCopy = path;
  v8 = [controllerCopy _existingSwipeOccurrenceForIndexPath:pathCopy];
  if (os_variant_has_internal_diagnostics())
  {
    if (!v8)
    {
      v15 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        v18 = 138412290;
        v19 = pathCopy;
        _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "Unable to get swipe occurrence for ended swipe at index path: %@", &v18, 0xCu);
      }
    }
  }

  else if (!v8)
  {
    v16 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1200) + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = pathCopy;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Unable to get swipe occurrence for ended swipe at index path: %@", &v18, 0xCu);
    }
  }

  [v8 setSwipedViewMaskWasRemoved:1];
  _hasAmbiguousIndexPath = [v8 _hasAmbiguousIndexPath];
  swipedView = [v8 swipedView];
  WeakRetained = swipedView;
  if (_hasAmbiguousIndexPath)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v17 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          v18 = 138412290;
          v19 = WeakRetained;
          _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "Swiped view was of unexpected class or nil: %@", &v18, 0xCu);
        }
      }

      else
      {
        v12 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49F498) + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v18 = 138412290;
          v19 = WeakRetained;
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Swiped view was of unexpected class or nil: %@", &v18, 0xCu);
        }
      }

      [(UIView *)WeakRetained _setSafeMaskView:?];
    }
  }

  else
  {
    [(UIView *)swipedView _setSafeMaskView:?];

    if ([v8 _didReloadData])
    {
      goto LABEL_12;
    }

    WeakRetained = objc_loadWeakRetained(&self->_host);
    indexPath = [v8 indexPath];
    _UIInvalidateSwipeActionsLayoutForItemAtIndexPath(WeakRetained, indexPath);
  }

LABEL_12:
  if ([controllerCopy _isSwipeForIndexPathFirstOccurrenceBeginningOrLastOccurrenceEnding:pathCopy])
  {
    v14 = objc_loadWeakRetained(&self->_host);
    [v14 _didEndSwiping];
  }
}

- (void)swipeActionController:(id)controller swipeOccurrence:(id)occurrence didChangeStateFrom:(int64_t)from to:(int64_t)to
{
  v58[2] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  occurrenceCopy = occurrence;
  v12 = occurrenceCopy;
  switch(to)
  {
    case 5:
      goto LABEL_12;
    case 4:
      currentAction = [occurrenceCopy currentAction];
      style = [currentAction style];

      if (style == 1)
      {
        break;
      }

LABEL_12:
      [(_UICollectionViewLayoutSwipeActionsModule *)self _performForcedCollectionViewLayoutPreservingExistingLayoutAttributes];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __105___UICollectionViewLayoutSwipeActionsModule_swipeActionController_swipeOccurrence_didChangeStateFrom_to___block_invoke_3;
      v45[3] = &unk_1E70F3C60;
      v45[4] = self;
      v46 = v12;
      [v46 resetAnimated:1 completion:v45];

      break;
    case 3:
      currentAction2 = [occurrenceCopy currentAction];
      style2 = [currentAction2 style];

      if (style2 == 1)
      {
        swipedView = [v12 swipedView];
        _safeMaskView = [(UIView *)swipedView _safeMaskView];
        layer = [_safeMaskView layer];
        presentationLayer = [layer presentationLayer];
        if (presentationLayer)
        {
          animationKeys = [layer animationKeys];
          v20 = [animationKeys count];

          if (v20)
          {
            [presentationLayer position];
            [layer setPosition:?];
            [layer removeAllAnimations];
          }
        }

        if (!swipedView || !_safeMaskView)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          WeakRetained = objc_loadWeakRetained(&self->_host);
          collectionView = [WeakRetained collectionView];
          [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewLayoutSwipeActionsModule.m" lineNumber:524 description:{@"UICollectionView internal inconsistency: did not receive a swiped view or mask as expected for swipe occurrence %@.\nCollection View: %@, swiped view: %@, mask: %@", v12, collectionView, swipedView, _safeMaskView}];
        }

        v58[0] = _safeMaskView;
        v58[1] = swipedView;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
        v22 = [_UISwipeAnimationFactory animatorForTentativeWithOccurrence:v12 additivelyAnimatedViews:v21];

        v23 = objc_loadWeakRetained(&self->_host);
        collectionView2 = [v23 collectionView];

        [(_UICollectionViewLayoutSwipeActionsModule *)self _performForcedCollectionViewLayoutPreservingExistingLayoutAttributes];
        lockActionViewForAnimation = [v12 lockActionViewForAnimation];
        [lockActionViewForAnimation bounds];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        superview = [lockActionViewForAnimation superview];
        [superview bounds];
        Width = CGRectGetWidth(v59);

        v34 = objc_loadWeakRetained(&self->_host);
        indexPath = [v12 indexPath];
        _UIInvalidateSwipeActionsLayoutForItemAtIndexPath(v34, indexPath);

        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __105___UICollectionViewLayoutSwipeActionsModule_swipeActionController_swipeOccurrence_didChangeStateFrom_to___block_invoke;
        v50[3] = &unk_1E70FFF08;
        v36 = lockActionViewForAnimation;
        v54 = v27;
        v55 = v29;
        v56 = Width;
        v57 = v31;
        v51 = v36;
        v52 = collectionView2;
        v37 = v12;
        v53 = v37;
        v38 = collectionView2;
        [v22 addAnimations:v50];
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __105___UICollectionViewLayoutSwipeActionsModule_swipeActionController_swipeOccurrence_didChangeStateFrom_to___block_invoke_2;
        v47[3] = &unk_1E71003B0;
        v48 = v37;
        v49 = v36;
        v39 = v36;
        [v22 addCompletion:v47];
        [v22 startAnimation];
      }

      break;
  }
}

- (void)editingStateDidChange
{
  v3 = +[UIView areAnimationsEnabled];
  swipeActionController = self->_swipeActionController;

  [(UISwipeActionController *)swipeActionController resetSwipedItemAnimated:v3 completion:0];
}

- (void)processLayoutInvalidationWithContext:(id)context updateConfigurations:(BOOL)configurations
{
  configurationsCopy = configurations;
  contextCopy = context;
  v6 = [(_UICollectionViewLayoutSwipeActionsModule *)self _canIgnoreInvalidationContext:contextCopy];
  v7 = contextCopy;
  if (!v6)
  {
    if ([contextCopy _intent] == 3)
    {
      [(UISwipeActionController *)self->_swipeActionController reloadData];
      *&self->_flags &= 0xFCu;
LABEL_7:
      v7 = contextCopy;
      goto LABEL_9;
    }

    v7 = contextCopy;
    if (!contextCopy || (contextCopy[112] & 8) == 0)
    {
      [(_UICollectionViewLayoutSwipeActionsModule *)self _invalidateSwipeActionsLayoutRefreshingActiveConfigurations:configurationsCopy];
      goto LABEL_7;
    }

    *&self->_flags |= 2u;
  }

LABEL_9:
}

- (BOOL)_canIgnoreInvalidationContext:(id)context
{
  contextCopy = context;
  _intent = [contextCopy _intent];
  if (_intent > 0xF)
  {
    goto LABEL_8;
  }

  if (((1 << _intent) & 0xE42) != 0)
  {
    v6 = 1;
    goto LABEL_13;
  }

  if (_intent != 5)
  {
    if (_intent == 15)
    {
      v6 = (*&self->_flags & 2) == 0;
      goto LABEL_13;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_13;
  }

  if ([contextCopy invalidateEverything])
  {
    goto LABEL_8;
  }

  invalidatedItemIndexPaths = [contextCopy invalidatedItemIndexPaths];
  if ([invalidatedItemIndexPaths count])
  {
    v6 = 0;
  }

  else
  {
    invalidatedSupplementaryIndexPaths = [contextCopy invalidatedSupplementaryIndexPaths];
    v6 = [invalidatedSupplementaryIndexPaths count] == 0;
  }

LABEL_13:
  return v6;
}

- (void)_invalidateSwipeActionsLayoutRefreshingActiveConfigurations:(BOOL)configurations
{
  if ((*&self->_flags & 1) == 0)
  {
    if ([(_UICollectionViewLayoutSwipeActionsModule *)self hasActiveSwipe])
    {
      *&self->_flags = *&self->_flags & 0xFC | 1;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __105___UICollectionViewLayoutSwipeActionsModule__invalidateSwipeActionsLayoutRefreshingActiveConfigurations___block_invoke;
      v5[3] = &unk_1E70F35E0;
      v5[4] = self;
      configurationsCopy = configurations;
      dispatch_async(MEMORY[0x1E69E96A0], v5);
    }
  }
}

- (void)updateWithDataSourceTranslator:(id)translator
{
  translatorCopy = translator;
  if (!translatorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewLayoutSwipeActionsModule.m" lineNumber:695 description:{@"Invalid parameter not satisfying: %@", @"dataSourceTranslator != nil"}];
  }

  swipeActionController = self->_swipeActionController;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76___UICollectionViewLayoutSwipeActionsModule_updateWithDataSourceTranslator___block_invoke;
  v9[3] = &unk_1E70FFBD8;
  v10 = translatorCopy;
  v7 = translatorCopy;
  [(UISwipeActionController *)swipeActionController rebaseUnambiguousSwipeOccurrencesWithBlock:v9];
}

- (void)finalizeCollectionViewUpdate:(id)update
{
  v30 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v6 = updateCopy;
  if (updateCopy)
  {
    if ((*(updateCopy + 216) & 2) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewLayoutSwipeActionsModule.m" lineNumber:704 description:{@"Invalid parameter not satisfying: %@", @"update != nil"}];
  }

  swipeOccurrences = [(UISwipeActionController *)self->_swipeActionController swipeOccurrences];
  v8 = [swipeOccurrences copy];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        indexPath = [v14 indexPath];
        v16 = [v6 finalIndexPathForInitialIndexPath:indexPath];
        if (!v16)
        {
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          _hasAmbiguousIndexPath = [v14 _hasAmbiguousIndexPath];
          if (has_internal_diagnostics)
          {
            if ((_hasAmbiguousIndexPath & 1) == 0)
            {
              v19 = __UIFaultDebugAssertLog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                v28 = v14;
                _os_log_fault_impl(&dword_188A29000, v19, OS_LOG_TYPE_FAULT, "The swipe occurrence should already be marked as having an ambiguous index path: %@", buf, 0xCu);
              }
            }
          }

          else if ((_hasAmbiguousIndexPath & 1) == 0)
          {
            v20 = *(__UILogGetCategoryCachedImpl("Assert", &finalizeCollectionViewUpdate____s_category) + 8);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v28 = v14;
              _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "The swipe occurrence should already be marked as having an ambiguous index path: %@", buf, 0xCu);
            }
          }

          [v14 resetAnimated:0 completion:0];
        }

        ++v13;
      }

      while (v11 != v13);
      v21 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
      v11 = v21;
    }

    while (v21);
  }

LABEL_22:
}

- (void)transformCellLayoutAttributes:(id)attributes isDisappearing:(BOOL)disappearing
{
  disappearingCopy = disappearing;
  v49 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v8 = attributesCopy;
  if (!attributesCopy || (attributesCopy[72] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v43 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewLayoutSwipeActionsModule.m" lineNumber:732 description:{@"-%@ should only be called with layout attributes for cells", v43}];
  }

  swipeActionController = self->_swipeActionController;
  indexPath = [v8 indexPath];
  v11 = [(UISwipeActionController *)swipeActionController _existingSwipeOccurrenceForIndexPath:indexPath];

  if (v11)
  {
    if ((*&self->_flags & 4) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_host);
      collectionView = [WeakRetained collectionView];
      indexPath2 = [v8 indexPath];
      v15 = [collectionView cellForItemAtIndexPath:indexPath2];

      _layoutAttributes = [v15 _layoutAttributes];
      if (_layoutAttributes)
      {
        v17 = _layoutAttributes;
        [_layoutAttributes alpha];
        [v8 setAlpha:?];
        if (v8)
        {
          v8[72] = v8[72] & 0xFFFFFFEF | (16 * ((v17[72] >> 4) & 1));
        }

        [v17 center];
        [v8 setCenter:?];

        goto LABEL_33;
      }
    }

    _hasAmbiguousIndexPath = [v11 _hasAmbiguousIndexPath];
    if (disappearingCopy && _hasAmbiguousIndexPath)
    {
      [v8 setAlpha:1.0];
      swipedViewMaskWasRemoved = [v11 swipedViewMaskWasRemoved];
      if (v8 && (swipedViewMaskWasRemoved & 1) == 0)
      {
        v8[72] &= ~0x10u;
      }

      goto LABEL_33;
    }

    if ((disappearingCopy | _hasAmbiguousIndexPath))
    {
      goto LABEL_33;
    }

    swipedViewMaskWasRemoved2 = [v11 swipedViewMaskWasRemoved];
    if (v8 && (swipedViewMaskWasRemoved2 & 1) == 0)
    {
      v8[72] &= ~0x10u;
    }

    v21 = [v11 state] == 3 || objc_msgSend(v11, "state") == 4;
    v22 = objc_loadWeakRetained(&self->_host);
    collectionView2 = [v22 collectionView];
    if ([collectionView2 _flipsHorizontalAxis])
    {
      v24 = -1.0;
    }

    else
    {
      v24 = 1.0;
    }

    if (!v21 || ([v11 currentAction], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "style"), v25, v26 != 1))
    {
      [v8 center];
      v38 = v37;
      v40 = v39;
      [v11 offset];
      [v8 setCenter:{v38 + v24 * v41, v40}];
      goto LABEL_33;
    }

    v27 = objc_loadWeakRetained(&self->_host);
    indexPath3 = [v8 indexPath];
    v29 = [v27 layoutAttributesForDecorationViewOfKind:@"UICollectionViewListLayoutElementKindSwipeActions" atIndexPath:indexPath3];

    if (os_variant_has_internal_diagnostics())
    {
      if (v29)
      {
LABEL_29:
        [v29 bounds];
        Width = CGRectGetWidth(v50);
        direction = [v11 direction];
        v32 = -Width;
        if (direction)
        {
          v32 = Width;
        }

        v33 = v24 * v32;
        [v8 center];
        v35 = v34;
        [v29 center];
        [v8 setCenter:{v36 + v33, v35}];

        goto LABEL_33;
      }

      v44 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
LABEL_41:

        goto LABEL_29;
      }

      indexPath4 = [v8 indexPath];
      *buf = 138412290;
      v48 = indexPath4;
      _os_log_fault_impl(&dword_188A29000, v44, OS_LOG_TYPE_FAULT, "Missing layout attributes for swipe actions view at index path: %@", buf, 0xCu);
    }

    else
    {
      if (v29)
      {
        goto LABEL_29;
      }

      v46 = *(__UILogGetCategoryCachedImpl("Assert", &transformCellLayoutAttributes_isDisappearing____s_category) + 8);
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v44 = v46;
      indexPath4 = [v8 indexPath];
      *buf = 138412290;
      v48 = indexPath4;
      _os_log_impl(&dword_188A29000, v44, OS_LOG_TYPE_ERROR, "Missing layout attributes for swipe actions view at index path: %@", buf, 0xCu);
    }

    goto LABEL_41;
  }

LABEL_33:
}

- (void)transformDecorationLayoutAttributes:(id)attributes isDisappearing:(BOOL)disappearing
{
  disappearingCopy = disappearing;
  attributesCopy = attributes;
  v35 = attributesCopy;
  if (!attributesCopy || (attributesCopy[288] & 2) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewLayoutSwipeActionsModule.m" lineNumber:787 description:{@"-%@ should only be called with layout attributes for decoration views", v34}];

    attributesCopy = v35;
  }

  swipeActionController = self->_swipeActionController;
  indexPath = [attributesCopy indexPath];
  v10 = [(UISwipeActionController *)swipeActionController _existingSwipeOccurrenceForIndexPath:indexPath];

  WeakRetained = objc_loadWeakRetained(&self->_host);
  collectionView = [WeakRetained collectionView];

  indexPath2 = [v35 indexPath];
  v14 = [collectionView _globalIndexPathForItemAtIndexPath:indexPath2];

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0;
  }

  else
  {
    v16 = [collectionView _indexPathForGlobalIndex:v14 + 1];
    if (v16)
    {
      v15 = [(UISwipeActionController *)self->_swipeActionController _existingSwipeOccurrenceForIndexPath:v16];
    }

    else
    {
      v15 = 0;
    }
  }

  _content = [(_UILabelConfiguration *)v35 _content];
  v18 = _content;
  if (_content == @"UICollectionViewListLayoutElementKindSwipeActions" || _content && (v19 = [(__CFString *)_content isEqual:@"UICollectionViewListLayoutElementKindSwipeActions"], v18, v19))
  {
    if (disappearingCopy)
    {
      if (v10)
      {
        if ([v10 _hasAmbiguousIndexPath])
        {
          [v35 frame];
          [v35 setFrame:?];
          [v35 setAlpha:1.0];
          if (v35)
          {
            v35[72] |= 0x10u;
          }
        }
      }
    }

    else if (v10)
    {
      _hasAmbiguousIndexPath = [v10 _hasAmbiguousIndexPath];
      [v35 setHidden:_hasAmbiguousIndexPath];
      if ((_hasAmbiguousIndexPath & 1) == 0)
      {
        indexPath3 = [v35 indexPath];
        v28 = [(_UICollectionViewLayoutSwipeActionsModule *)self _cellWithCustomGroupingAtIndexPath:indexPath3];

        if (v28)
        {
          -[UICollectionViewLayoutAttributes _setMaskedCorners:](v35, [v28 _effectiveMaskedCornersForSystemBackgroundView]);
        }
      }
    }

    else
    {
      [v35 setHidden:1];
    }

    goto LABEL_43;
  }

  v20 = v18;
  v21 = v20;
  if (v20 == @"UICollectionViewListLayoutElementKindBottomSeparator")
  {

    if (v10)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  if (v20 && @"UICollectionViewListLayoutElementKindBottomSeparator")
  {
    v22 = [(__CFString *)v20 isEqual:@"UICollectionViewListLayoutElementKindBottomSeparator"];

    if (v22)
    {
      if (v10)
      {
LABEL_22:
        selfCopy3 = self;
        v24 = v35;
        v25 = 1;
LABEL_41:
        v29 = v10;
LABEL_42:
        [(_UICollectionViewLayoutSwipeActionsModule *)selfCopy3 _transformLayoutAttributes:v24 ofSeparatorAtBottom:v25 forSwipeOccurrence:v29 isDisappearing:disappearingCopy];
        goto LABEL_43;
      }

LABEL_29:
      if (!v15)
      {
        goto LABEL_43;
      }

      selfCopy3 = self;
      v24 = v35;
      v25 = 1;
      v29 = v15;
      goto LABEL_42;
    }
  }

  else
  {
  }

  v30 = v21;
  v31 = v30;
  if (v30 == @"UICollectionViewListLayoutElementKindTopSeparator")
  {
    v32 = 1;
  }

  else
  {
    if (!v21 || !@"UICollectionViewListLayoutElementKindTopSeparator")
    {

      goto LABEL_43;
    }

    v32 = [(__CFString *)v30 isEqual:@"UICollectionViewListLayoutElementKindTopSeparator"];
  }

  if (v32 && v10)
  {
    selfCopy3 = self;
    v24 = v35;
    v25 = 0;
    goto LABEL_41;
  }

LABEL_43:
}

- (void)_transformLayoutAttributes:(id)attributes ofSeparatorAtBottom:(BOOL)bottom forSwipeOccurrence:(id)occurrence isDisappearing:(BOOL)disappearing
{
  disappearingCopy = disappearing;
  bottomCopy = bottom;
  attributesCopy = attributes;
  occurrenceCopy = occurrence;
  if (!occurrenceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewLayoutSwipeActionsModule.m" lineNumber:857 description:{@"Invalid parameter not satisfying: %@", @"swipeOccurrence != nil"}];
  }

  _hasAmbiguousIndexPath = [occurrenceCopy _hasAmbiguousIndexPath];
  v13 = _hasAmbiguousIndexPath & disappearingCopy;
  if (_UISolariumSwipeActionsEnabled())
  {
    v14 = 1;
    if (!v13)
    {
LABEL_5:
      if ((_hasAmbiguousIndexPath | disappearingCopy) & 1 | !v14)
      {
        goto LABEL_17;
      }

      [occurrenceCopy offset];
      v16 = v15;
      [attributesCopy alpha];
      v18 = -v16;
      if (v16 >= 0.0)
      {
        v18 = v16;
      }

      if (v18 > 0.0)
      {
        v17 = 0.0;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v14 = [occurrenceCopy _style] == 2;
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  if (!bottomCopy)
  {
    goto LABEL_17;
  }

  if (v14)
  {
    v17 = 0.0;
LABEL_15:
    [attributesCopy setAlpha:v17];
    goto LABEL_17;
  }

  WeakRetained = objc_loadWeakRetained(&self->_host);
  indexPath = [attributesCopy indexPath];
  v21 = [WeakRetained finalLayoutAttributesForDisappearingItemAtIndexPath:indexPath];

  [attributesCopy frame];
  v23 = v22;
  [v21 frame];
  [attributesCopy setFrame:v23];
  [attributesCopy setAlpha:1.0];

LABEL_17:
}

- (id)propertyAnimatorForCollectionViewUpdates:(id)updates withCustomAnimator:(id)animator
{
  v81 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  animatorCopy = animator;
  currentSwipeOccurrence = [(UISwipeActionController *)self->_swipeActionController currentSwipeOccurrence];
  v9 = currentSwipeOccurrence;
  if (!currentSwipeOccurrence || ([currentSwipeOccurrence currentAction], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "style"), v10, v11 != 1))
  {
    v38 = 0;
    v26 = animatorCopy;
    goto LABEL_34;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v12 = updatesCopy;
  v13 = [v12 countByEnumeratingWithState:&v69 objects:v80 count:16];
  if (!v13)
  {
    v26 = animatorCopy;
LABEL_33:

    v38 = v13;
    goto LABEL_34;
  }

  selfCopy = self;
  v54 = updatesCopy;
  v14 = v9;
  v55 = animatorCopy;
  v15 = 0;
  v56 = 0;
  v16 = *v70;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v70 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v69 + 1) + 8 * i);
      if ([v18 updateAction] == 1)
      {
        if (v18 && v18[6] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = v18[1];
          indexPath = [v14 indexPath];
          LOBYTE(v19) = v19 == [indexPath section];

          v15 |= v19;
        }

        else
        {
          indexPathBeforeUpdate = [v18 indexPathBeforeUpdate];
          indexPath2 = [v14 indexPath];
          v23 = [indexPathBeforeUpdate isEqual:indexPath2];

          if (v23)
          {
            v56 = [v12 count] == 1;
            v15 = 1;
          }
        }
      }
    }

    v13 = [v12 countByEnumeratingWithState:&v69 objects:v80 count:16];
  }

  while (v13);

  if (!v56)
  {
    goto LABEL_27;
  }

  v9 = v14;
  swipedView = [v14 swipedView];
  _safeMaskView = [(UIView *)swipedView _safeMaskView];

  animatorCopy = v55;
  if (!_safeMaskView)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v49 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        WeakRetained = objc_loadWeakRetained(&selfCopy->_host);
        collectionView = [WeakRetained collectionView];
        swipedView2 = [v14 swipedView];
        *buf = 138412802;
        v75 = collectionView;
        v76 = 2112;
        v77 = v14;
        v78 = 2112;
        v79 = swipedView2;
        _os_log_fault_impl(&dword_188A29000, v49, OS_LOG_TYPE_FAULT, "UICollectionView internal inconsistency: missing maskView for swipe occurrence. Collection view: %@; Swipe occurrence: %@; Swiped view: %@", buf, 0x20u);
      }
    }

    else
    {
      v39 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49F4A0) + 8);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = v39;
        v41 = objc_loadWeakRetained(&selfCopy->_host);
        collectionView2 = [v41 collectionView];
        swipedView3 = [v14 swipedView];
        *buf = 138412802;
        v75 = collectionView2;
        v76 = 2112;
        v77 = v14;
        v78 = 2112;
        v79 = swipedView3;
        _os_log_impl(&dword_188A29000, v40, OS_LOG_TYPE_ERROR, "UICollectionView internal inconsistency: missing maskView for swipe occurrence. Collection view: %@; Swipe occurrence: %@; Swiped view: %@", buf, 0x20u);
      }
    }

LABEL_27:
    v13 = 0;
    v38 = 0;
    updatesCopy = v54;
    animatorCopy = v55;
    v26 = v55;
    v9 = v14;
    if ((v15 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  v26 = v55;
  updatesCopy = v54;
  if (!v55)
  {
    v73 = _safeMaskView;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
    v26 = [_UISwipeAnimationFactory animatorForCollapseWithAdditivelyAnimatedViews:v27];
  }

  [_safeMaskView frame];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  [_safeMaskView bounds];
  v35 = v34;
  v37 = v36;
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __105___UICollectionViewLayoutSwipeActionsModule_propertyAnimatorForCollectionViewUpdates_withCustomAnimator___block_invoke;
  v59[3] = &unk_1E70F6C80;
  v13 = _safeMaskView;
  v60 = v13;
  v61 = v29;
  v62 = v31;
  v63 = v33;
  v64 = 0;
  v65 = v35;
  v66 = v37;
  v67 = v33;
  v68 = 0;
  [v26 addAnimations:v59];

  v38 = v13;
  if (v15)
  {
LABEL_28:
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    _hasAmbiguousIndexPath = [v9 _hasAmbiguousIndexPath];
    if (has_internal_diagnostics)
    {
      if ((_hasAmbiguousIndexPath & 1) == 0)
      {
        v47 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v75 = v14;
          _os_log_fault_impl(&dword_188A29000, v47, OS_LOG_TYPE_FAULT, "The swipe occurrence should already be marked as having an ambiguous index path: %@", buf, 0xCu);
        }

        updatesCopy = v54;
        animatorCopy = v55;
        v9 = v14;
      }
    }

    else if ((_hasAmbiguousIndexPath & 1) == 0)
    {
      v48 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49F4A8) + 8);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v75 = v9;
        _os_log_impl(&dword_188A29000, v48, OS_LOG_TYPE_ERROR, "The swipe occurrence should already be marked as having an ambiguous index path: %@", buf, 0xCu);
      }
    }

    if (!v26)
    {
      v26 = +[_UISwipeAnimationFactory animatorForGenericUpdates];
    }

    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __105___UICollectionViewLayoutSwipeActionsModule_propertyAnimatorForCollectionViewUpdates_withCustomAnimator___block_invoke_49;
    v57[3] = &unk_1E70F5DB8;
    v58 = v9;
    [v26 addCompletion:v57];
    v12 = v58;
    goto LABEL_33;
  }

LABEL_34:

  return v26;
}

- (id)swipeViewManipulatorForSwipeActionController:(id)controller
{
  v4 = [_UICollectionViewLayoutSwipeViewManipulator alloc];
  WeakRetained = objc_loadWeakRetained(&self->_host);
  collectionView = [WeakRetained collectionView];
  v7 = [(_UICollectionViewLayoutSwipeViewManipulator *)v4 initWithCollectionView:collectionView swipeActionsModule:self];

  return v7;
}

- (UICollectionViewLayout)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

@end