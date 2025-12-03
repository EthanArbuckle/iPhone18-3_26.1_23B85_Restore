@interface _UITabBarVisualProviderLegacyTVOS
- (CGRect)_layoutRegion;
- (CGRect)_shadowFrameForBounds:(CGRect)bounds height:(double)height;
- (CGSize)intrinsicContentSizeGivenSize:(CGSize)size;
- (id)_parentViewForItems;
- (id)_shim_compatibilityBackgroundView;
- (id)createViewForTabBarItem:(id)item;
- (id)exchangeItem:(id)item withItem:(id)withItem;
- (id)preferredFocusedView;
- (void)_applyAppearanceCustomizationsToItem:(id)item;
- (void)_configureItems:(id)items;
- (void)_layoutTabBarItems;
- (void)_setFocusedItemHightlightVisible:(BOOL)visible;
- (void)_shim_setAccessoryView:(id)view;
- (void)_shim_setCustomBackgroundView:(id)view;
- (void)_shim_setShadowAlpha:(double)alpha;
- (void)_shim_setShadowHidden:(BOOL)hidden;
- (void)_shim_updateFocusHighlightVisibility;
- (void)_shim_updateTabBarItemView:(id)view;
- (void)_updateAccessoryView;
- (void)_updateBackground;
- (void)_updateFocusedItemHighlightFrame;
- (void)_updateFocusedItemHighlightViewWithInterfaceStyle:(int64_t)style visible:(BOOL)visible;
- (void)_updateHighlightMotionEffect;
- (void)changeItemsTo:(id)to removingItems:(id)items selectedItem:(id)item oldSelectedItem:(id)selectedItem animate:(BOOL)animate;
- (void)changeSelectedItem:(id)item fromItem:(id)fromItem;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)prepare;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)teardown;
- (void)traitCollectionDidChange:(id)change;
- (void)updateArchivedSubviews:(id)subviews;
- (void)updateBackgroundGroupName;
@end

@implementation _UITabBarVisualProviderLegacyTVOS

- (void)prepare
{
  v11.receiver = self;
  v11.super_class = _UITabBarVisualProviderLegacyTVOS;
  [(_UITabBarVisualProvider *)&v11 prepare];
  [(UIView *)self->super._tabBar bounds];
  v7 = [[_UIBarBackground alloc] initWithFrame:v3, v4, v5, v6];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v7;

  [(_UIBarBackground *)self->_backgroundView setTopAligned:0];
  v9 = objc_alloc_init(_UIBarBackgroundLayoutLegacy);
  backgroundViewLayout = self->_backgroundViewLayout;
  self->_backgroundViewLayout = v9;

  [(_UIBarBackground *)self->_backgroundView setLayout:self->_backgroundViewLayout];
  [(UITabBar *)self->super._tabBar _setVibrantLabels:1];
}

- (void)teardown
{
  [(UIView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;

  [(UIView *)self->_accessoryView removeFromSuperview];
  accessoryView = self->_accessoryView;
  self->_accessoryView = 0;

  [(UIScrollView *)self->_itemsScrollView removeFromSuperview];
  itemsScrollView = self->_itemsScrollView;
  self->_itemsScrollView = 0;

  [(UIView *)self->_focusedItemHighlightView removeFromSuperview];
  focusedItemHighlightView = self->_focusedItemHighlightView;
  self->_focusedItemHighlightView = 0;

  focusedItemHighlightMotionEffect = self->_focusedItemHighlightMotionEffect;
  self->_focusedItemHighlightMotionEffect = 0;

  v8.receiver = self;
  v8.super_class = _UITabBarVisualProviderLegacyTVOS;
  [(_UITabBarVisualProvider *)&v8 teardown];
}

- (void)changeItemsTo:(id)to removingItems:(id)items selectedItem:(id)item oldSelectedItem:(id)selectedItem animate:(BOOL)animate
{
  animateCopy = animate;
  v55 = *MEMORY[0x1E69E9840];
  toCopy = to;
  itemsCopy = items;
  itemCopy = item;
  _barMetrics = [(UITabBar *)self->super._tabBar _barMetrics];
  _imageStyle = [(UITabBar *)self->super._tabBar _imageStyle];
  selfCopy = self;
  _parentViewForItems = [(_UITabBarVisualProviderLegacyTVOS *)self _parentViewForItems];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v14 = toCopy;
  v15 = [v14 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v50;
    do
    {
      v18 = v14;
      for (i = 0; i != v16; ++i)
      {
        if (*v50 != v17)
        {
          objc_enumerationMutation(v18);
        }

        v20 = *(*(&v49 + 1) + 8 * i);
        [v20 _setBarMetrics:{_barMetrics, itemsCopy}];
        [v20 _setImageStyle:_imageStyle];
        _tabBarButton = [(UITabBarItem *)v20 _tabBarButton];
        if (_tabBarButton && ([_parentViewForItems containsView:_tabBarButton] & 1) != 0)
        {
          v22 = _tabBarButton;
        }

        else
        {
          [_tabBarButton removeFromSuperview];
          v22 = [(_UITabBarVisualProviderLegacyTVOS *)selfCopy createViewForTabBarItem:v20];

          [_parentViewForItems addSubview:v22];
          [(UITabBarItem *)v20 _setTabBarButton:v22];
          if (animateCopy)
          {
            [v22 setAlpha:0.0];
          }
        }

        _tabBarButton2 = [(UITabBarItem *)v20 _tabBarButton];
        [_tabBarButton2 _showSelectedIndicator:v20 == itemCopy changeSelection:1];
      }

      v14 = v18;
      v16 = [v18 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v16);
  }

  if (animateCopy)
  {
    [(_UITabBarVisualProvider *)selfCopy defaultAnimationDuration];
    v25 = v24;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __102___UITabBarVisualProviderLegacyTVOS_changeItemsTo_removingItems_selectedItem_oldSelectedItem_animate___block_invoke;
    v44[3] = &unk_1E70F5B18;
    v26 = itemsCopy;
    v45 = itemsCopy;
    v46 = selfCopy;
    v48 = animateCopy;
    v47 = v14;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __102___UITabBarVisualProviderLegacyTVOS_changeItemsTo_removingItems_selectedItem_oldSelectedItem_animate___block_invoke_2;
    v42[3] = &unk_1E70F5AC0;
    v43 = v45;
    [UIView animateWithDuration:v44 animations:v42 completion:v25];
  }

  else
  {
    v27 = v14;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v26 = itemsCopy;
    v28 = itemsCopy;
    v29 = [v28 countByEnumeratingWithState:&v38 objects:v53 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v39;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v39 != v31)
          {
            objc_enumerationMutation(v28);
          }

          _tabBarButton3 = [(UITabBarItem *)*(*(&v38 + 1) + 8 * j) _tabBarButton];
          [_tabBarButton3 removeFromSuperview];
        }

        v30 = [v28 countByEnumeratingWithState:&v38 objects:v53 count:16];
      }

      while (v30);
    }

    [(UIView *)selfCopy->super._tabBar setNeedsLayout];
    v14 = v27;
  }
}

- (void)_applyAppearanceCustomizationsToItem:(id)item
{
  itemCopy = item;
  _tabBarButton = [(UITabBarItem *)itemCopy _tabBarButton];
  selectionIndicatorImage = [(UITabBar *)self->super._tabBar selectionIndicatorImage];
  [_tabBarButton _setCustomSelectedIndicatorImage:selectionIndicatorImage];

  _tintColor = [itemCopy _tintColor];

  [_tabBarButton setTintColor:_tintColor];
}

- (id)exchangeItem:(id)item withItem:(id)withItem
{
  withItemCopy = withItem;
  tabBar = self->super._tabBar;
  itemCopy = item;
  items = [(UITabBar *)tabBar items];
  v10 = [items indexOfObject:itemCopy];

  v11 = [items indexOfObject:withItemCopy];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL || v10 == v11)
  {
    v13 = items;
  }

  else
  {
    v14 = v11;
    v15 = [items mutableCopy];
    v16 = v15;
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v15 replaceObjectAtIndex:v10 withObject:withItemCopy];
      _tabBarButton = [(UITabBarItem *)withItemCopy _tabBarButton];

      if (!_tabBarButton)
      {
        [withItemCopy _setImageStyle:{-[UITabBar _imageStyle](self->super._tabBar, "_imageStyle")}];
        [withItemCopy _setBarMetrics:{-[UITabBar _barMetrics](self->super._tabBar, "_barMetrics")}];
        v18 = [(_UITabBarVisualProviderLegacyTVOS *)self createViewForTabBarItem:withItemCopy];
        [(UITabBarItem *)withItemCopy _setTabBarButton:v18];
      }

      _tabBarButton2 = [(UITabBarItem *)withItemCopy _tabBarButton];
      [_tabBarButton2 setAlpha:1.0];

      _parentViewForItems = [(_UITabBarVisualProviderLegacyTVOS *)self _parentViewForItems];
      _tabBarButton3 = [(UITabBarItem *)withItemCopy _tabBarButton];
      [_parentViewForItems addSubview:_tabBarButton3];

      [(_UITabBarVisualProviderLegacyTVOS *)self _applyAppearanceCustomizationsToItem:withItemCopy];
    }

    else
    {
      [v15 exchangeObjectAtIndex:v10 withObjectAtIndex:v14];
    }

    v13 = [v16 copy];
  }

  return v13;
}

- (void)changeSelectedItem:(id)item fromItem:(id)fromItem
{
  itemCopy = item;
  _tabBarButton = [(UITabBarItem *)fromItem _tabBarButton];
  [_tabBarButton _showSelectedIndicator:0 changeSelection:1];

  _tabBarButton2 = [(UITabBarItem *)itemCopy _tabBarButton];

  [_tabBarButton2 _showSelectedIndicator:1 changeSelection:1];
}

- (id)createViewForTabBarItem:(id)item
{
  itemCopy = item;
  if (![itemCopy _imageStyle])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITabBarVisualProviderLegacyTVOS.m" lineNumber:174 description:@"A default style should never be returned at this point"];
  }

  _appearanceStorage = [(UITabBar *)self->super._tabBar _appearanceStorage];
  selectedImageTintColor = [_appearanceStorage selectedImageTintColor];

  if ([itemCopy isSystemItem])
  {
    [itemCopy _internalTitle];
  }

  else
  {
    [itemCopy title];
  }
  v8 = ;
  v9 = [UITabBarButton alloc];
  unselectedImage = [itemCopy unselectedImage];
  _internalLandscapeTemplateImage = [itemCopy _internalLandscapeTemplateImage];
  selectedImage = [itemCopy selectedImage];
  _internalLandscapeSelectedImagePhone = [itemCopy _internalLandscapeSelectedImagePhone];
  [itemCopy imageInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [itemCopy landscapeImagePhoneInsets];
  v26 = [(UITabBarButton *)v9 initWithImage:unselectedImage landscapeImage:_internalLandscapeTemplateImage selectedImage:selectedImage landscapeSelectedImage:_internalLandscapeSelectedImagePhone label:v8 withInsets:self->super._tabBar landscapeInsets:v15 tabBar:v17, v19, v21, v22, v23, v24, v25];

  [itemCopy badgeOffset];
  [(UITabBarButton *)v26 _setBadgeOffset:?];
  if ([itemCopy isSpringLoaded])
  {
    [(UITabBarButton *)v26 setSpringLoaded:1];
  }

  [(UITabBarButton *)v26 _setAppearanceGuideClass:objc_opt_class()];
  [(UIView *)v26 frame];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [(UIView *)self->super._tabBar bounds];
  [(UIView *)v26 setFrame:v28, v30, v32];
  _appearanceStorage2 = [itemCopy _appearanceStorage];
  v34 = objc_getAssociatedObject(itemCopy, &_UIAppearanceCustomizedSelectorsAssociationKey);
  [(UITabBarButton *)v26 _applyTabBarButtonAppearanceStorage:_appearanceStorage2 withTaggedSelectors:v34];

  _appearanceStorage3 = [(UITabBar *)self->super._tabBar _appearanceStorage];
  selectionIndicatorImage = [_appearanceStorage3 selectionIndicatorImage];

  if (selectionIndicatorImage)
  {
    [(UITabBarButton *)v26 _setCustomSelectedIndicatorImage:selectionIndicatorImage];
  }

  [(UIControl *)v26 addTarget:self->super._tabBar action:sel__sendAction_withEvent_ forControlEvents:0x2000];
  -[UITabBarButton setEnabled:](v26, "setEnabled:", [itemCopy isEnabled]);
  [(UITabBarButton *)v26 _setShowsHighlightedState:[(UITabBar *)self->super._tabBar _showsHighlightedState]];
  badgeValue = [itemCopy badgeValue];
  if (badgeValue)
  {
    [(UITabBarButton *)v26 _setBadgeValue:badgeValue];
  }

  [(UITabBarButton *)v26 setSemanticContentAttribute:[(UIView *)self->super._tabBar semanticContentAttribute]];

  return v26;
}

- (void)updateArchivedSubviews:(id)subviews
{
  v18 = *MEMORY[0x1E69E9840];
  subviewsCopy = subviews;
  items = [(UITabBar *)self->super._tabBar items];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(items);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        _tabBarButton = [(UITabBarItem *)v10 _tabBarButton];

        if (_tabBarButton)
        {
          _tabBarButton2 = [(UITabBarItem *)v10 _tabBarButton];
          [subviewsCopy removeObject:_tabBarButton2];
        }
      }

      v7 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (self->_backgroundView)
  {
    [subviewsCopy removeObject:?];
  }

  if (self->_accessoryView)
  {
    [subviewsCopy removeObject:?];
  }

  if (self->_itemsScrollView)
  {
    [subviewsCopy removeObject:?];
  }

  if (self->_focusedItemHighlightView)
  {
    [subviewsCopy removeObject:?];
  }
}

- (CGSize)intrinsicContentSizeGivenSize:(CGSize)size
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(UITabBar *)self->super._tabBar _barMetrics:size.width]== 3)
  {
    v4 = 140.0;
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v9 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      tabBar = self->super._tabBar;
      v11 = 138412290;
      v12 = tabBar;
      _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "_tabBar._barMetrics unexpectedly not _UITabBarMetricsTV in _UITabBarVisualProviderLegacyTVOS. _tabBar = %@", &v11, 0xCu);
    }

    v4 = -1.0;
  }

  else
  {
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &intrinsicContentSizeGivenSize____s_category) + 8);
    v4 = -1.0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = self->super._tabBar;
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "_tabBar._barMetrics unexpectedly not _UITabBarMetricsTV in _UITabBarVisualProviderLegacyTVOS. _tabBar = %@", &v11, 0xCu);
    }
  }

  v5 = -1.0;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGRect)_layoutRegion
{
  [(UIView *)self->super._tabBar bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  accessoryView = self->_accessoryView;
  if (accessoryView)
  {
    [(UIView *)accessoryView frame];
    v8 = v8 - v12;
    if ((*(&self->super._tabBar->super._viewFlags + 18) & 0x40) != 0)
    {
      v4 = v4 + v12;
    }
  }

  v13 = v4;
  v14 = v6;
  v15 = v8;
  v16 = v10;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_shadowFrameForBounds:(CGRect)bounds height:(double)height
{
  width = bounds.size.width;
  x = bounds.origin.x;
  MaxY = CGRectGetMaxY(bounds);
  v8 = x;
  v9 = width;
  heightCopy = height;
  result.size.height = heightCopy;
  result.size.width = v9;
  result.origin.y = MaxY;
  result.origin.x = v8;
  return result;
}

- (void)_updateAccessoryView
{
  accessoryView = self->_accessoryView;
  if (accessoryView)
  {
    [(UIView *)accessoryView frame];
    v5 = v4;
    [(_UITabBarVisualProviderLegacyTVOS *)self _layoutRegion];
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = v9;
    MaxX = 0.0;
    if ((*(&self->super._tabBar->super._viewFlags + 18) & 0x40) == 0)
    {
      MaxX = CGRectGetMaxX(*&v6);
    }

    v19.origin.x = v10;
    v19.origin.y = v11;
    v19.size.width = v12;
    v19.size.height = v13;
    MinY = CGRectGetMinY(v19);
    v20.origin.x = v10;
    v20.origin.y = v11;
    v20.size.width = v12;
    v20.size.height = v13;
    Height = CGRectGetHeight(v20);
    v17 = self->_accessoryView;

    [(UIView *)v17 setFrame:MaxX, MinY, v5, Height];
  }
}

- (id)_parentViewForItems
{
  if (![(UITabBar *)self->super._tabBar _scrollsItems]|| (tabBar = self->_itemsScrollView) == 0)
  {
    tabBar = self->super._tabBar;
  }

  return tabBar;
}

- (void)_configureItems:(id)items
{
  v19 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  _barMetrics = [(UITabBar *)self->super._tabBar _barMetrics];
  _imageStyle = [(UITabBar *)self->super._tabBar _imageStyle];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 _barMetrics] != _barMetrics || objc_msgSend(v12, "_imageStyle") != _imageStyle)
        {
          [v12 _setBarMetrics:_barMetrics];
          [v12 _setImageStyle:_imageStyle];
          [v12 _updateViewAndPositionItems:0];
        }

        _tabBarButton = [(UITabBarItem *)v12 _tabBarButton];
        [_tabBarButton setSemanticContentAttribute:{-[UIView semanticContentAttribute](self->super._tabBar, "semanticContentAttribute")}];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)_layoutTabBarItems
{
  v88 = *MEMORY[0x1E69E9840];
  items = [(UITabBar *)self->super._tabBar items];
  if (![items count])
  {
    goto LABEL_72;
  }

  _scrollsItems = [(UITabBar *)self->super._tabBar _scrollsItems];
  itemsScrollView = self->_itemsScrollView;
  if (_scrollsItems)
  {
    if (!itemsScrollView)
    {
      v6 = [UIScrollView alloc];
      [(UIView *)self->super._tabBar bounds];
      v7 = [(UIScrollView *)v6 initWithFrame:?];
      v8 = self->_itemsScrollView;
      self->_itemsScrollView = v7;

      [(UIView *)self->_itemsScrollView setAutoresizingMask:18];
      [(UIScrollView *)self->_itemsScrollView setShowsHorizontalScrollIndicator:0];
      [(UIScrollView *)self->_itemsScrollView setShowsVerticalScrollIndicator:0];
      [(UIView *)self->super._tabBar addSubview:self->_itemsScrollView];
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v9 = items;
      v10 = [(UIScrollView *)v9 countByEnumeratingWithState:&v82 objects:v87 count:16];
      if (v10)
      {
        v11 = *v83;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v83 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v82 + 1) + 8 * i);
            _tabBarButton = [(UITabBarItem *)v13 _tabBarButton];
            superview = [_tabBarButton superview];
            v16 = superview == self->super._tabBar;

            if (v16)
            {
              v17 = self->_itemsScrollView;
              _tabBarButton2 = [(UITabBarItem *)v13 _tabBarButton];
              [(UIView *)v17 addSubview:_tabBarButton2];
            }
          }

          v10 = [(UIScrollView *)v9 countByEnumeratingWithState:&v82 objects:v87 count:16];
        }

        while (v10);
      }

LABEL_25:
    }
  }

  else if (itemsScrollView)
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v19 = items;
    v20 = [v19 countByEnumeratingWithState:&v78 objects:v86 count:16];
    if (v20)
    {
      v21 = *v79;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v79 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v78 + 1) + 8 * j);
          _tabBarButton3 = [(UITabBarItem *)v23 _tabBarButton];
          superview2 = [_tabBarButton3 superview];
          v26 = superview2 == self->_itemsScrollView;

          if (v26)
          {
            tabBar = self->super._tabBar;
            _tabBarButton4 = [(UITabBarItem *)v23 _tabBarButton];
            [(UIView *)tabBar addSubview:_tabBarButton4];
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v78 objects:v86 count:16];
      }

      while (v20);
    }

    [(UIScrollView *)self->_itemsScrollView removeFromSuperview];
    v9 = self->_itemsScrollView;
    self->_itemsScrollView = 0;
    goto LABEL_25;
  }

  [(_UITabBarVisualProviderLegacyTVOS *)self _layoutRegion];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  selectionIndicatorImage = [(UITabBar *)self->super._tabBar selectionIndicatorImage];
  v36 = selectionIndicatorImage;
  v37 = 0.0;
  if (selectionIndicatorImage && ([selectionIndicatorImage _isResizable] & 1) == 0)
  {
    [v36 size];
    v37 = v38;
  }

  traitCollection = [(UIView *)self->super._tabBar traitCollection];
  itemPositioning = [(UITabBar *)self->super._tabBar itemPositioning];
  [(UITabBar *)self->super._tabBar itemWidth];
  v42 = v41;
  [(UITabBar *)self->super._tabBar itemSpacing];
  v44 = v43;
  v45 = [items count];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  if (itemPositioning == UITabBarItemPositioningCentered)
  {
    v50 = 80.0;
    if (v42 > 0.0)
    {
      v50 = v42;
    }

    v51 = 30.0;
    if (v44 > 0.0)
    {
      v51 = v44;
    }

    v47 = 0;
    v48 = v50 * v45 + v51 * (v45 - 1) < v32 || self->_itemsScrollView != 0;
    goto LABEL_44;
  }

  if (itemPositioning)
  {
LABEL_34:
    v47 = 0;
    v48 = 0;
    goto LABEL_44;
  }

  v47 = 0;
  if (horizontalSizeClass != 2)
  {
    v48 = 0;
    goto LABEL_44;
  }

  v48 = 0;
  if (v37 > 0.0)
  {
    v49 = v37 * v45;
    if (v49 <= v32)
    {
      v48 = 0;
      v47 = v49 > v32 - (10 * v45);
      goto LABEL_44;
    }

    goto LABEL_34;
  }

LABEL_44:
  v52 = v42 > 0.0 && v48;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x2020000000;
  v73 = 0;
  if (self->_accessoryView)
  {
    v53 = v30;
  }

  else
  {
    v53 = 0.0;
  }

  [(_UITabBarVisualProviderLegacyTVOS *)self _configureItems:items, traitCollection];
  if (v47)
  {
    v75[3] = v37;
    v54 = round((v32 - v37 * v45) / v45);
    v53 = floor(v54 * 0.5) + v53;
  }

  else if (v48)
  {
    if (v42 <= 0.0)
    {
      v37 = 80.0;
    }

    else
    {
      v37 = v42;
    }

    v75[3] = v37;
    if (v44 <= 0.0)
    {
      v54 = 30.0;
    }

    else
    {
      v54 = v44;
    }

    v53 = round(v32 * 0.5 - (v37 * v45 + v54 * (v45 - 1)) * 0.5) + v53;
    v52 = v42 > 0.0;
  }

  else
  {
    v52 = 0;
    v37 = v32 / v45;
    v75[3] = v37;
    v54 = 0.0;
  }

  if (v42 > 0.0)
  {
    v58 = v37 * v45 + v54 * v45;
    v57 = 1.0;
  }

  else
  {
    v55 = self->super._tabBar;
    [(UIView *)v55 bounds];
    [(UITabBar *)v55 _scaleFactorForItems:items spacing:v54 dimension:v37 maxWidth:CGRectGetWidth(v89) - v54];
    v57 = v56;
    [(UITabBar *)self->super._tabBar _totalDimensionForItems:items spacing:v54 dimension:v75[3] scaleFactor:v56];
  }

  v59 = v58;
  if (v48)
  {
    v60 = floor((v32 - v59) * 0.5);
    if (v60 >= 0.0)
    {
      v53 = v60;
    }

    else
    {
      v53 = 0.0;
    }
  }

  v61 = floor(v54 * 0.5);
  v62 = self->_itemsScrollView;
  if (v62)
  {
    [(UIScrollView *)v62 setContentSize:v59, v34];
    v63 = v66;
    [(UIScrollView *)self->_itemsScrollView setContentInset:0.0, v61, 0.0, v61];
  }

  else
  {
    v53 = v61 + v53;
    v63 = v66;
  }

  v70[0] = 0;
  v70[1] = v70;
  v70[2] = 0x2020000000;
  v64 = v53;
  v71 = v64;
  v65 = *(&self->super._tabBar->super._viewFlags + 2) >> 21;
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __55___UITabBarVisualProviderLegacyTVOS__layoutTabBarItems__block_invoke;
  v67[3] = &unk_1E7127B98;
  v68 = v42 <= 0.0;
  *&v67[7] = v57;
  v67[8] = 0;
  v67[4] = &v74;
  v67[5] = v70;
  *&v67[9] = v34;
  *&v67[10] = v54;
  *&v67[11] = v53;
  v67[6] = v72;
  v69 = v52;
  [items enumerateObjectsWithOptions:v65 & 2 usingBlock:v67];
  _Block_object_dispose(v70, 8);
  _Block_object_dispose(v72, 8);
  _Block_object_dispose(&v74, 8);

LABEL_72:
}

- (void)_updateBackground
{
  v33[1] = *MEMORY[0x1E69E9840];
  [(UITabBar *)self->super._tabBar _setBackgroundNeedsUpdate:0];
  if (![(UIView *)self->super._tabBar _canDrawContent])
  {
    [(UIView *)self->super._tabBar insertSubview:self->_backgroundView atIndex:0];
    [(_UIBarBackground *)self->_backgroundView setCustomBackgroundView:self->_customBackgroundView];
    [(_UIBarBackgroundLayout *)self->_backgroundViewLayout setDisableTinting:[(UITabBar *)self->super._tabBar _disableBlurTinting]];
    [(UIView *)self->super._tabBar bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    delegate = [(UITabBar *)self->super._tabBar delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v11 = v11 + _UIBackgroundExtensionForBarWithInsetFromHomeAffordanceAllowance(self->super._tabBar, 0);
    }

    if (self->_customBackgroundView)
    {
      [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout configureWithoutShadow];
LABEL_13:
      [(UIView *)self->_backgroundView setFrame:v5, v7, v9, v11];
      [(_UITabBarVisualProviderLegacyTVOS *)self updateBackgroundGroupName];
      [(_UIBarBackground *)self->_backgroundView transitionBackgroundViews];
      return;
    }

    traitCollection = [(UIView *)self->super._tabBar traitCollection];
    -[_UIBarBackgroundLayout setInterfaceIdiom:](self->_backgroundViewLayout, "setInterfaceIdiom:", [traitCollection userInterfaceIdiom]);

    traitCollection2 = [(UIView *)self->super._tabBar traitCollection];
    -[_UIBarBackgroundLayout setInterfaceStyle:](self->_backgroundViewLayout, "setInterfaceStyle:", [traitCollection2 userInterfaceStyle]);

    isTranslucent = [(UITabBar *)self->super._tabBar isTranslucent];
    _effectiveBarTintColor = [(UITabBar *)self->super._tabBar _effectiveBarTintColor];
    backgroundImage = [(UITabBar *)self->super._tabBar backgroundImage];
    barStyle = [(UITabBar *)self->super._tabBar barStyle];
    backgroundEffects = [(UITabBar *)self->super._tabBar backgroundEffects];
    if (backgroundEffects)
    {
      [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout configureWithEffects:backgroundEffects];
    }

    else if (backgroundImage)
    {
      [backgroundImage size];
      v22 = v21;
      if (([backgroundImage _isResizable] & 1) == 0)
      {
        v23 = [backgroundImage stretchableImageWithLeftCapWidth:0 topCapHeight:(v22 + -1.0)];

        backgroundImage = v23;
      }

      v32 = 0;
      v24 = [backgroundImage _isInvisibleAndGetIsTranslucent:&v32];
      if (isTranslucent)
      {
        [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout configureImage:backgroundImage forceTranslucent:(v32 & 1) == 0];
      }

      else
      {
        backgroundViewLayout = self->_backgroundViewLayout;
        if (_effectiveBarTintColor)
        {
          [(_UIBarBackgroundLayoutLegacy *)backgroundViewLayout configureImage:backgroundImage forceOpaque:v32 backgroundTintColor:_effectiveBarTintColor];
        }

        else
        {
          [(_UIBarBackgroundLayoutLegacy *)backgroundViewLayout configureImage:backgroundImage forceOpaque:v32 barStyle:barStyle];
        }
      }

      if ((v22 <= v11) | v24 & 1)
      {
        shadowImage = [(UITabBar *)self->super._tabBar shadowImage];
        if (shadowImage)
        {
          v31 = shadowImage;
          [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout configureShadowImage:shadowImage];

          goto LABEL_12;
        }
      }

      else
      {
        v7 = v11 - v22;
        v11 = v22;
      }
    }

    else
    {
      if (barStyle)
      {
        v25 = 4009;
      }

      else
      {
        v25 = 5004;
      }

      v26 = [UIBlurEffect _effectWithStyle:v25 tintColor:_effectiveBarTintColor invertAutomaticStyle:0];
      v27 = self->_backgroundViewLayout;
      v33[0] = v26;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
      [(_UIBarBackgroundLayoutLegacy *)v27 configureWithEffects:v28];

      backgroundImage = 0;
    }

    [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout configureWithoutShadow];
LABEL_12:

    goto LABEL_13;
  }

  backgroundView = self->_backgroundView;

  [(UIView *)backgroundView removeFromSuperview];
}

- (void)updateBackgroundGroupName
{
  traitCollection = [(UIView *)self->super._tabBar traitCollection];
  v3 = objc_opt_self();
  v4 = [traitCollection objectForTrait:v3];
  [(_UIBarBackground *)self->_backgroundView setGroupName:v4];
}

- (void)layoutSubviews
{
  [(_UITabBarVisualProviderLegacyTVOS *)self _layoutTabBarItems];
  [(_UITabBarVisualProviderLegacyTVOS *)self _updateAccessoryView];

  [(_UITabBarVisualProviderLegacyTVOS *)self _updateBackground];
}

- (void)traitCollectionDidChange:(id)change
{
  tabBar = self->super._tabBar;
  changeCopy = change;
  traitCollection = [(UIView *)tabBar traitCollection];
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  items = [(UITabBar *)self->super._tabBar items];
  v6 = [items countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(items);
        }

        _tabBarButton = [(UITabBarItem *)*(*(&v17 + 1) + 8 * v9) _tabBarButton];
        [_tabBarButton setSemanticContentAttribute:attribute];

        ++v9;
      }

      while (v7 != v9);
      v7 = [items countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  delegate = [(UITabBar *)self->super._tabBar delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _existingMoreNavigationController = [delegate _existingMoreNavigationController];
    view = [_existingMoreNavigationController view];
    [view setSemanticContentAttribute:attribute];

    topViewController = [_existingMoreNavigationController topViewController];
    view2 = [topViewController view];
    [view2 setSemanticContentAttribute:attribute];

    navigationBar = [_existingMoreNavigationController navigationBar];
    [navigationBar setSemanticContentAttribute:attribute];
  }
}

- (id)preferredFocusedView
{
  selectedItem = [(UITabBar *)self->super._tabBar selectedItem];
  v4 = selectedItem;
  if (selectedItem)
  {
    _tabBarButton = *(selectedItem + 232);
  }

  else
  {
    items = [(UITabBar *)self->super._tabBar items];
    firstObject = [items firstObject];
    _tabBarButton = [(UITabBarItem *)firstObject _tabBarButton];
  }

  return _tabBarButton;
}

- (void)_updateHighlightMotionEffect
{
  _focusSystem = [(UIView *)self->super._tabBar _focusSystem];
  focusedItem = [_focusSystem focusedItem];
  v10 = _UIFocusEnvironmentContainingView(focusedItem);

  v5 = 0.0;
  if (-[_UITabBarVisualProviderLegacyTVOS _focusedItemHighlightViewIsVisible](self, "_focusedItemHighlightViewIsVisible") && [v10 isDescendantOfView:self->super._tabBar])
  {
    [v10 bounds];
    v5 = CGRectGetWidth(v12) * 0.25;
  }

  focusedItemHighlightMotionEffect = self->_focusedItemHighlightMotionEffect;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:-v5];
  [(UIMotionEffect *)focusedItemHighlightMotionEffect setMinimumRelativeValue:v7];

  v8 = self->_focusedItemHighlightMotionEffect;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  [(UIMotionEffect *)v8 setMaximumRelativeValue:v9];
}

- (void)_updateFocusedItemHighlightFrame
{
  if (self->_focusedItemHighlightView)
  {
    _focusSystem = [(UIView *)self->super._tabBar _focusSystem];
    focusedItem = [_focusSystem focusedItem];
    v6 = _UIFocusEnvironmentContainingView(focusedItem);

    if ([v6 isDescendantOfView:self->super._tabBar])
    {
      focusedItemHighlightView = self->_focusedItemHighlightView;
      [v6 center];
      [(UIView *)focusedItemHighlightView setCenter:?];
    }
  }
}

- (void)_setFocusedItemHightlightVisible:(BOOL)visible
{
  visibleCopy = visible;
  if (visible)
  {
    if (!self->_focusedItemHighlightView)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __70___UITabBarVisualProviderLegacyTVOS__setFocusedItemHightlightVisible___block_invoke;
      v7[3] = &unk_1E70F3590;
      v7[4] = self;
      [UIView performWithoutAnimation:v7];
    }

    window = [(UIView *)self->super._tabBar window];

    if (window)
    {
      traitCollection = [(UIView *)self->super._tabBar traitCollection];
      window = [traitCollection userInterfaceStyle];
    }
  }

  else
  {
    window = 0;
  }

  [(_UITabBarVisualProviderLegacyTVOS *)self _updateFocusedItemHighlightViewWithInterfaceStyle:window visible:visibleCopy];
  [(_UITabBarVisualProviderLegacyTVOS *)self _updateHighlightMotionEffect];
}

- (void)_updateFocusedItemHighlightViewWithInterfaceStyle:(int64_t)style visible:(BOOL)visible
{
  v4 = dbl_18A682F00[style == 2];
  if (!visible)
  {
    v4 = 0.0;
  }

  [(UIView *)self->_focusedItemHighlightView setAlpha:v4];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v5 = [(UIView *)self->super._tabBar _focusSystem:context];
  focusedItem = [v5 focusedItem];
  v7 = _UIFocusEnvironmentContainingView(focusedItem);

  if ([v7 isDescendantOfView:self->super._tabBar])
  {
    if ([(UITabBar *)self->super._tabBar _vibrantLabels])
    {
      [(_UITabBarVisualProviderLegacyTVOS *)self _layoutTabBarItems];
    }

    if ([(UITabBar *)self->super._tabBar _focusedItemHighlightShouldBeVisible]&& ![(_UITabBarVisualProviderLegacyTVOS *)self _focusedItemHighlightViewIsVisible])
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __86___UITabBarVisualProviderLegacyTVOS_didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
      v12[3] = &unk_1E70F3590;
      v12[4] = self;
      [UIView animateWithDuration:v12 animations:0.2];
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __86___UITabBarVisualProviderLegacyTVOS_didUpdateFocusInContext_withAnimationCoordinator___block_invoke_2;
    v11[3] = &unk_1E70F3590;
    v11[4] = self;
    v8 = 0.15;
    v9 = v11;
    goto LABEL_10;
  }

  if (self->_focusedItemHighlightView)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __86___UITabBarVisualProviderLegacyTVOS_didUpdateFocusInContext_withAnimationCoordinator___block_invoke_3;
    v10[3] = &unk_1E70F3590;
    v10[4] = self;
    v8 = 0.2;
    v9 = v10;
LABEL_10:
    [UIView animateWithDuration:v9 animations:v8];
  }
}

- (void)_shim_setCustomBackgroundView:(id)view
{
  viewCopy = view;
  if (self->_customBackgroundView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_customBackgroundView, view);
    [(_UITabBarVisualProviderLegacyTVOS *)self _updateBackground];
    viewCopy = v6;
  }
}

- (id)_shim_compatibilityBackgroundView
{
  customBackgroundView = self->_customBackgroundView;
  if (!customBackgroundView)
  {
    customBackgroundView = self->_backgroundView;
  }

  return customBackgroundView;
}

- (void)_shim_setAccessoryView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_accessoryView removeFromSuperview];
  accessoryView = self->_accessoryView;
  self->_accessoryView = viewCopy;
  v6 = viewCopy;

  [(UIView *)self->super._tabBar addSubview:self->_accessoryView];
  [(UIView *)self->super._tabBar setNeedsLayout];
}

- (void)_shim_setShadowAlpha:(double)alpha
{
  [(_UIBarBackgroundLayout *)self->_backgroundViewLayout shadowAlpha];
  if (v5 != alpha)
  {
    [(_UIBarBackgroundLayout *)self->_backgroundViewLayout setShadowAlpha:alpha];
    backgroundView = self->_backgroundView;

    [(_UIBarBackground *)backgroundView transitionBackgroundViews];
  }
}

- (void)_shim_setShadowHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(_UIBarBackgroundLayout *)self->_backgroundViewLayout shadowHidden]!= hidden)
  {
    [(_UIBarBackgroundLayout *)self->_backgroundViewLayout setShadowHidden:hiddenCopy];
    backgroundView = self->_backgroundView;

    [(_UIBarBackground *)backgroundView transitionBackgroundViews];
  }
}

- (void)_shim_updateFocusHighlightVisibility
{
  _focusedItemHighlightShouldBeVisible = [(UITabBar *)self->super._tabBar _focusedItemHighlightShouldBeVisible];
  v4 = _focusedItemHighlightShouldBeVisible;
  if (!self->_focusedItemHighlightView)
  {
    if (!_focusedItemHighlightShouldBeVisible)
    {
      return;
    }

    goto LABEL_8;
  }

  _focusedItemHighlightViewIsVisible = [(_UITabBarVisualProviderLegacyTVOS *)self _focusedItemHighlightViewIsVisible];
  v6 = _focusedItemHighlightViewIsVisible;
  if (!v4 && _focusedItemHighlightViewIsVisible)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __73___UITabBarVisualProviderLegacyTVOS__shim_updateFocusHighlightVisibility__block_invoke;
    v13[3] = &unk_1E70F35E0;
    v13[4] = self;
    v14 = v4;
    [UIView animateWithDuration:v13 animations:0.2];
  }

  if (!v6 && v4)
  {
LABEL_8:
    _focusSystem = [(UIView *)self->super._tabBar _focusSystem];
    focusedItem = [_focusSystem focusedItem];
    v9 = _UIFocusEnvironmentContainingView(focusedItem);
    v10 = [v9 isDescendantOfView:self->super._tabBar];

    if (v10)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __73___UITabBarVisualProviderLegacyTVOS__shim_updateFocusHighlightVisibility__block_invoke_2;
      v11[3] = &unk_1E70F35E0;
      v11[4] = self;
      v12 = v4;
      [UIView animateWithDuration:v11 animations:0.2];
    }
  }
}

- (void)_shim_updateTabBarItemView:(id)view
{
  viewCopy = view;
  _tabBarButton = [(UITabBarItem *)viewCopy _tabBarButton];
  isFocused = [_tabBarButton isFocused];

  if (isFocused)
  {
    [(UIView *)self->super._tabBar setNeedsFocusUpdate];
  }

  _tabBarButton2 = [(UITabBarItem *)viewCopy _tabBarButton];
  [_tabBarButton2 removeFromSuperview];

  v8 = [(_UITabBarVisualProviderLegacyTVOS *)self createViewForTabBarItem:viewCopy];
  [(UITabBarItem *)viewCopy _setTabBarButton:v8];

  _parentViewForItems = [(_UITabBarVisualProviderLegacyTVOS *)self _parentViewForItems];
  _tabBarButton3 = [(UITabBarItem *)viewCopy _tabBarButton];

  [_parentViewForItems addSubview:_tabBarButton3];
}

@end