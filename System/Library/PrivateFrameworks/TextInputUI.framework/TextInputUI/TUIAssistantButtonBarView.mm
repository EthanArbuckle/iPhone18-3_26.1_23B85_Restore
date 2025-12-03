@interface TUIAssistantButtonBarView
- (BOOL)_containsFlexibleGroupViews;
- (BOOL)hasVisibleItem;
- (BOOL)isKeyboardGroup:(id)group;
- (BOOL)validateButtonGroup:(id)group;
- (BOOL)validateButtonGroups;
- (CGPoint)clipPointInContainer:(CGPoint)container;
- (CGSize)_totalGroupSizeThatFits:(CGSize)fits;
- (CGSize)collapsedSizeThatFits:(CGSize)fits;
- (CGSize)intrinsicContentSize;
- (CGSize)preferredSizeForButtonBarItem:(id)item;
- (CGSize)sizeThatFits:(CGSize)fits;
- (TUIAssistantButtonBarView)initWithFrame:(CGRect)frame;
- (TUIAssistantButtonBarViewDelegate)delegate;
- (UIEdgeInsets)_insetsForHorizontalMargin;
- (_UIButtonBarAppearanceDelegate)appearanceDelegate;
- (_UIButtonBarButtonVisualProvider)visualProvider;
- (double)_interItemSpacingThatFits:(CGSize)fits forGroupSize:(CGSize)size;
- (double)barButtonWidth;
- (id)_allVisibleBarItemViews;
- (id)_groupViewForBarButtonItemGroup:(id)group;
- (id)_uncollapsedGroupViews;
- (id)_visibleGroupViews;
- (id)_visibleGroups;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_checkBarButtonItemState:(id)state;
- (void)_collapseGroupsIfNecessaryForWidth:(double)width;
- (void)_didTapButtonBarButton:(id)button withEvent:(id)event;
- (void)_updateBarButtonItemHiddenState;
- (void)_updateMargins;
- (void)configureButtonBarItemView:(id)view forItem:(id)item group:(id)group;
- (void)layoutSubviews;
- (void)setBarButtonWidth:(double)width;
- (void)setBounds:(CGRect)bounds;
- (void)setButtonGroups:(id)groups animated:(BOOL)animated;
- (void)setEffectiveInterItemSpacing:(double)spacing;
- (void)setFrame:(CGRect)frame;
- (void)uncollapseAllGroups;
@end

@implementation TUIAssistantButtonBarView

- (_UIButtonBarAppearanceDelegate)appearanceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);

  return WeakRetained;
}

- (TUIAssistantButtonBarViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_checkBarButtonItemState:(id)state
{
  v15 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  view = [stateCopy view];
  _viewOwner = [stateCopy _viewOwner];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = [v6 stringWithFormat:@"Unexpected view(%@) or viewOwner(%@) for UIBarButtonItem represented by TextInputUI", v7, objc_opt_class()];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__TUIAssistantButtonBarView__checkBarButtonItemState___block_invoke;
    block[3] = &unk_1E72D83A0;
    v9 = v8;
    v12 = v9;
    if (_checkBarButtonItemState__onceToken != -1)
    {
      dispatch_once(&_checkBarButtonItemState__onceToken, block);
    }

    v10 = _checkBarButtonItemState__pencilUCBCheckLog;
    if (os_log_type_enabled(_checkBarButtonItemState__pencilUCBCheckLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_18FFDC000, v10, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }
}

void __54__TUIAssistantButtonBarView__checkBarButtonItemState___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.TextInputUI", "PencilUCBCheck");
  v3 = _checkBarButtonItemState__pencilUCBCheckLog;
  _checkBarButtonItemState__pencilUCBCheckLog = v2;

  v4 = _checkBarButtonItemState__pencilUCBCheckLog;
  if (os_log_type_enabled(_checkBarButtonItemState__pencilUCBCheckLog, OS_LOG_TYPE_FAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_fault_impl(&dword_18FFDC000, v4, OS_LOG_TYPE_FAULT, "%@", &v6, 0xCu);
  }
}

- (void)_didTapButtonBarButton:(id)button withEvent:(id)event
{
  buttonCopy = button;
  eventCopy = event;
  v7 = [(TUIAssistantButtonBarView *)self _itemViewForSender:buttonCopy];
  if ([v7 isCollapsedItem] && (-[TUIAssistantButtonBarView delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    delegate = [(TUIAssistantButtonBarView *)self delegate];
    associatedGroup = [v7 associatedGroup];
    [delegate assistantButtonBarView:self wantsToShowCollapsedItemGroup:associatedGroup fromButton:buttonCopy];
  }

  else
  {
    delegate = [v7 associatedItem];
    [(TUIAssistantButtonBarView *)self _checkBarButtonItemState:delegate];
    [delegate _triggerActionForEvent:eventCopy];
  }
}

- (void)setBarButtonWidth:(double)width
{
  sizeProvider = [(TUIAssistantButtonBarView *)self sizeProvider];
  [sizeProvider setBarButtonWidth:width];
}

- (double)barButtonWidth
{
  sizeProvider = [(TUIAssistantButtonBarView *)self sizeProvider];
  [sizeProvider barButtonWidth];
  v4 = v3;

  return v4;
}

- (CGSize)preferredSizeForButtonBarItem:(id)item
{
  itemCopy = item;
  sizeProvider = [(TUIAssistantButtonBarView *)self sizeProvider];
  [sizeProvider preferredSizeForButtonBarItem:itemCopy];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  [(TUIAssistantButtonBarView *)self clipPointInContainer:x, y];
  v10.receiver = self;
  v10.super_class = TUIAssistantButtonBarView;
  v8 = [(TUIAssistantButtonBarView *)&v10 hitTest:eventCopy withEvent:?];

  return v8;
}

- (CGPoint)clipPointInContainer:(CGPoint)container
{
  y = container.y;
  x = container.x;
  buttonContainer = [(TUIAssistantButtonBarView *)self buttonContainer];
  [buttonContainer frame];
  Width = CGRectGetWidth(v16);

  [(TUIAssistantButtonBarView *)self bounds];
  if (CGRectGetWidth(v17) > Width)
  {
    buttonContainer2 = [(TUIAssistantButtonBarView *)self buttonContainer];
    [buttonContainer2 frame];
    MinX = CGRectGetMinX(v18);

    [(TUIAssistantButtonBarView *)self bounds];
    UIRectInset();
    v15.x = x;
    v15.y = y;
    v10 = CGRectContainsPoint(v19, v15);
    v11 = MinX + 1.0;
    if (x >= MinX)
    {
      v11 = Width + -1.0;
    }

    if (v10)
    {
      x = v11;
    }
  }

  v12 = x;
  v13 = y;
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)configureButtonBarItemView:(id)view forItem:(id)item group:(id)group
{
  viewCopy = view;
  itemCopy = item;
  groupCopy = group;
  customView = [itemCopy customView];

  if (customView)
  {
    [viewCopy setBarButtonView:0];
    customView2 = [itemCopy customView];
    [viewCopy setCustomView:customView2];

    [viewCopy setAssociatedItem:itemCopy];
    goto LABEL_15;
  }

  [viewCopy setCustomView:0];
  barButtonView = [viewCopy barButtonView];
  if (barButtonView)
  {
    goto LABEL_11;
  }

  if ([itemCopy systemItem] == 5)
  {
    barButtonView = 0;
LABEL_11:

    goto LABEL_12;
  }

  if ([itemCopy systemItem] != 6)
  {
    v13 = objc_alloc(MEMORY[0x1E69DD398]);
    visualProvider = [(TUIAssistantButtonBarView *)self visualProvider];
    barButtonView = [v13 initWithVisualProvider:visualProvider];

    [viewCopy setBarButtonView:barButtonView];
    if ([itemCopy action])
    {
      NSStringFromSelector([itemCopy action]);
    }

    else
    {
      [itemCopy title];
    }
    v15 = ;
    [barButtonView setAccessibilityIdentifier:v15];

    [barButtonView addTarget:self action:sel__didTapButtonBarButton_withEvent_ forControlEvents:64];
    goto LABEL_11;
  }

LABEL_12:
  image = [itemCopy image];
  symbolConfiguration = [image symbolConfiguration];
  locale = [symbolConfiguration locale];
  delegate = [(TUIAssistantButtonBarView *)self delegate];
  [delegate setLocale:locale];

  barButtonView2 = [viewCopy barButtonView];
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
  [barButtonView2 configureFromBarItem:itemCopy withAppearanceDelegate:WeakRetained];

  [viewCopy setAssociatedItem:itemCopy];
  [viewCopy setAssociatedGroup:groupCopy];
  representativeItem = [groupCopy representativeItem];
  [viewCopy setCollapsedItem:representativeItem == itemCopy];

  barButtonView3 = [viewCopy barButtonView];
  [itemCopy setView:barButtonView3];

  [(TUIAssistantButtonBarView *)self preferredSizeForButtonBarItem:itemCopy];
  if (v24 > 0.0 && v24 < 48.0)
  {
    v25 = *MEMORY[0x1E69DDCE0];
    v26 = *(MEMORY[0x1E69DDCE0] + 16);
    v27 = (48.0 - v24) * -0.5;
    [viewCopy setHitTestInsets:{*MEMORY[0x1E69DDCE0], v27, v26, v27}];
    barButtonView4 = [viewCopy barButtonView];
    [barButtonView4 setHitTestInsets:{v25, v27, v26, v27}];
  }

LABEL_15:
}

- (BOOL)hasVisibleItem
{
  _visibleGroups = [(TUIAssistantButtonBarView *)self _visibleGroups];
  v3 = [_visibleGroups count] != 0;

  return v3;
}

- (_UIButtonBarButtonVisualProvider)visualProvider
{
  visualProvider = self->_visualProvider;
  if (!visualProvider)
  {
    _inheritedRenderConfig = [(TUIAssistantButtonBarView *)self _inheritedRenderConfig];
    buttonBarVisualProvider = [_inheritedRenderConfig buttonBarVisualProvider];
    v6 = self->_visualProvider;
    self->_visualProvider = buttonBarVisualProvider;

    visualProvider = self->_visualProvider;
  }

  return visualProvider;
}

- (BOOL)validateButtonGroup:(id)group
{
  v29 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  v5 = [(TUIAssistantButtonBarView *)self _groupViewForBarButtonItemGroup:groupCopy];
  visibleButtons = [v5 visibleButtons];
  v7 = [visibleButtons copy];

  [groupCopy _validateAllItems];
  barButtonItems = [groupCopy barButtonItems];
  v9 = [barButtonItems count];
  v10 = [v7 count];

  if (v9 == v10)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __49__TUIAssistantButtonBarView_validateButtonGroup___block_invoke;
    v26[3] = &unk_1E72D81B0;
    v26[4] = self;
    v27 = groupCopy;
    [v7 enumerateObjectsUsingBlock:v26];
  }

  visibleButtons2 = [v5 visibleButtons];
  v12 = [visibleButtons2 isEqualToArray:v7];

  if ((v12 & 1) == 0)
  {
    if ([v5 isCollapsed])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      groupViews = [(TUIAssistantButtonBarView *)self groupViews];
      v14 = [groupViews countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v23;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v23 != v16)
            {
              objc_enumerationMutation(groupViews);
            }

            [*(*(&v22 + 1) + 8 * i) setCollapsed:0];
          }

          v15 = [groupViews countByEnumeratingWithState:&v22 objects:v28 count:16];
        }

        while (v15);
      }
    }

    [v5 setNeedsLayout];
  }

  if ([groupCopy isHidden])
  {
    isHidden = 1;
  }

  else
  {
    representativeItem = [groupCopy representativeItem];
    isHidden = [representativeItem isHidden];
  }

  v20 = isHidden != [v5 isHidden];

  return v20 || (v12 & 1) == 0;
}

void __49__TUIAssistantButtonBarView_validateButtonGroup___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  v9 = [v6 barButtonItems];
  v8 = [v9 objectAtIndexedSubscript:a3];
  [v5 configureButtonBarItemView:v7 forItem:v8 group:*(a1 + 40)];
}

- (BOOL)isKeyboardGroup:(id)group
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  barButtonItems = [group barButtonItems];
  v4 = [barButtonItems countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(barButtonItems);
        }

        if ([*(*(&v8 + 1) + 8 * i) isKeyboardItem])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [barButtonItems countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)validateButtonGroups
{
  selfCopy = self;
  v67 = *MEMORY[0x1E69E9840];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v3 = self->_buttonGroups;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v60;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v60 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 |= [(TUIAssistantButtonBarView *)selfCopy validateButtonGroup:*(*(&v59 + 1) + 8 * i)];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  separatorGroups = [(TUIAssistantButtonBarView *)selfCopy separatorGroups];
  v10 = [separatorGroups count];

  LOBYTE(v11) = v6;
  if (v10)
  {
    separatorGroups2 = [(TUIAssistantButtonBarView *)selfCopy separatorGroups];
    _visibleGroups = [(TUIAssistantButtonBarView *)selfCopy _visibleGroups];
    buttonGroups = [(TUIAssistantButtonBarView *)selfCopy buttonGroups];
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(buttonGroups, "count")}];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = buttonGroups;
    v15 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v56;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v56 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v55 + 1) + 8 * j);
          if (([_visibleGroups containsObject:v19] & 1) != 0 || objc_msgSend(separatorGroups2, "containsObject:", v19))
          {
            [v14 addObject:v19];
          }
        }

        v16 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
      }

      while (v16);
    }

    v40 = selfCopy;

    v45 = [v14 count];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v46 = separatorGroups2;
    LOBYTE(v11) = v6;
    v44 = [v46 countByEnumeratingWithState:&v51 objects:v64 count:16];
    if (v44)
    {
      v42 = *v52;
      v11 = v6;
      do
      {
        v20 = 0;
        do
        {
          if (*v52 != v42)
          {
            objc_enumerationMutation(v46);
          }

          v21 = *(*(&v51 + 1) + 8 * v20);
          v22 = [v14 indexOfObject:{v21, v40}];
          if (v22)
          {
            v23 = v22 == 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = 1;
          }

          if (v23 || (v32 = v22, v22 >= v45 - 1))
          {
            v24 = 1;
          }

          else
          {
            v33 = [v14 objectAtIndexedSubscript:v22 - 1];
            v34 = v32 + 1;
            if (v34 >= v45)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v35 = [v14 objectAtIndexedSubscript:v34];
              if (![v46 containsObject:v35])
              {
                break;
              }

              if (v45 == ++v34)
              {
                goto LABEL_48;
              }
            }

            if (v35)
            {
              v36 = [v46 containsObject:v33];
              v37 = [(TUIAssistantButtonBarView *)v40 isKeyboardGroup:v33];
              v24 = v36 | v37 ^ [(TUIAssistantButtonBarView *)v40 isKeyboardGroup:v35]^ 1;
            }

            else
            {
LABEL_48:
              v24 = 1;
            }
          }

          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          barButtonItems = [v21 barButtonItems];
          v26 = [barButtonItems countByEnumeratingWithState:&v47 objects:v63 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v48;
            do
            {
              for (k = 0; k != v27; ++k)
              {
                if (*v48 != v28)
                {
                  objc_enumerationMutation(barButtonItems);
                }

                v30 = *(*(&v47 + 1) + 8 * k);
                v11 |= v24 ^ [v30 _hidden];
                [v30 _setHidden:v24 & 1];
                buttonGroup = [v30 buttonGroup];
                [buttonGroup setHidden:v24 & 1];
              }

              v27 = [barButtonItems countByEnumeratingWithState:&v47 objects:v63 count:16];
            }

            while (v27);
          }

          ++v20;
        }

        while (v20 != v44);
        v38 = [v46 countByEnumeratingWithState:&v51 objects:v64 count:16];
        v44 = v38;
      }

      while (v38);
    }

    selfCopy = v40;
  }

  if (v6)
  {
    [(TUIAssistantButtonBarView *)selfCopy setNeedsLayout];
  }

  return v11 & 1;
}

- (void)layoutSubviews
{
  v98 = *MEMORY[0x1E69E9840];
  v94.receiver = self;
  v94.super_class = TUIAssistantButtonBarView;
  [(TUIAssistantButtonBarView *)&v94 layoutSubviews];
  [(TUIAssistantButtonBarView *)self _updateMargins];
  delegate = [(TUIAssistantButtonBarView *)self delegate];
  inputAssistantItem = [delegate inputAssistantItem];
  [inputAssistantItem _marginOverride];
  v6 = v5;

  if (v6 <= 0.0)
  {
    [(TUIAssistantButtonBarView *)self setHorizontalMargins:self->_defaultHorizontalMargins];
  }

  else
  {
    delegate2 = [(TUIAssistantButtonBarView *)self delegate];
    inputAssistantItem2 = [delegate2 inputAssistantItem];
    [inputAssistantItem2 _marginOverride];
    [(TUIAssistantButtonBarView *)self setHorizontalMargins:?];
  }

  [(TUIAssistantButtonBarView *)self _insetsForHorizontalMargin];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(TUIAssistantButtonBarView *)self bounds];
  v18 = v12 + v17;
  v20 = v10 + v19;
  v22 = v21 - (v12 + v16);
  v24 = v23 - (v10 + v14);
  buttonContainer = [(TUIAssistantButtonBarView *)self buttonContainer];
  [buttonContainer setFrame:{v18, v20, v22, v24}];

  buttonContainer2 = [(TUIAssistantButtonBarView *)self buttonContainer];
  [buttonContainer2 bounds];
  v28 = v27;
  v30 = v29;

  [(TUIAssistantButtonBarView *)self minimumInterItemSpace];
  [(TUIAssistantButtonBarView *)self setEffectiveInterItemSpacing:?];
  [(TUIAssistantButtonBarView *)self _collapseGroupsIfNecessaryForWidth:v28];
  [(TUIAssistantButtonBarView *)self sizeThatFits:v28, v30];
  v32 = v31;
  if ([(TUIAssistantButtonBarView *)self _containsFlexibleGroupViews])
  {
    v33 = v28;
  }

  else
  {
    v33 = v32;
  }

  if (v33 <= v28)
  {
    v34 = 1.0;
  }

  else
  {
    v34 = v28 / v33;
  }

  if ([(TUIAssistantButtonBarView *)self buttonAlignment]== 1)
  {
    _allVisibleBarItemViews = [(TUIAssistantButtonBarView *)self _allVisibleBarItemViews];
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v36 = [_allVisibleBarItemViews countByEnumeratingWithState:&v90 objects:v97 count:16];
    v37 = 0.0;
    v38 = 0.0;
    if (v36)
    {
      v39 = v36;
      v40 = *v91;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v91 != v40)
          {
            objc_enumerationMutation(_allVisibleBarItemViews);
          }

          associatedItem = [*(*(&v90 + 1) + 8 * i) associatedItem];
          [(TUIAssistantButtonBarView *)self preferredSizeForButtonBarItem:associatedItem];
          v44 = v43;

          v38 = v38 + v44;
        }

        v39 = [_allVisibleBarItemViews countByEnumeratingWithState:&v90 objects:v97 count:16];
      }

      while (v39);
    }

    if ([_allVisibleBarItemViews count] >= 2)
    {
      v37 = (v28 - v38) / ([_allVisibleBarItemViews count] - 1);
      [(TUIAssistantButtonBarView *)self setEffectiveInterItemSpacing:v37];
    }
  }

  else
  {
    [(TUIAssistantButtonBarView *)self _totalGroupSizeThatFits:v28, v30];
    [(TUIAssistantButtonBarView *)self _interItemSpacingThatFits:v28 forGroupSize:v30, v45, v46];
    v37 = v47;
  }

  v48 = 0.0;
  if ([(TUIAssistantButtonBarView *)self _containsFlexibleGroupViews])
  {
    v49 = v33 - v37;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    _visibleGroupViews = [(TUIAssistantButtonBarView *)self _visibleGroupViews];
    v51 = [_visibleGroupViews countByEnumeratingWithState:&v86 objects:v96 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = 0;
      v54 = *v87;
      do
      {
        for (j = 0; j != v52; ++j)
        {
          if (*v87 != v54)
          {
            objc_enumerationMutation(_visibleGroupViews);
          }

          v56 = *(*(&v86 + 1) + 8 * j);
          [v56 sizeThatFits:{v28, v30}];
          v49 = v49 - v57;
          v53 += [v56 containsFlexibleItems];
        }

        v52 = [_visibleGroupViews countByEnumeratingWithState:&v86 objects:v96 count:16];
      }

      while (v52);
      v58 = v53;
    }

    else
    {
      v58 = 0.0;
    }

    v48 = v49 / v58;
  }

  buttonAlignment = [(TUIAssistantButtonBarView *)self buttonAlignment];
  effectiveUserInterfaceLayoutDirection = [(TUIAssistantButtonBarView *)self effectiveUserInterfaceLayoutDirection];
  groupViews = [(TUIAssistantButtonBarView *)self groupViews];
  v62 = groupViews;
  if (buttonAlignment == 2)
  {
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      [groupViews objectEnumerator];
    }

    else
    {
      [groupViews reverseObjectEnumerator];
    }
    v63 = ;
    v64 = v28;
  }

  else
  {
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      [groupViews reverseObjectEnumerator];
    }

    else
    {
      [groupViews objectEnumerator];
    }
    v63 = ;
    v64 = 0.0;
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v65 = v63;
  v66 = [v65 countByEnumeratingWithState:&v82 objects:v95 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v83;
    do
    {
      for (k = 0; k != v67; ++k)
      {
        if (*v83 != v68)
        {
          objc_enumerationMutation(v65);
        }

        v70 = *(*(&v82 + 1) + 8 * k);
        barButtonItemGroup = [v70 barButtonItemGroup];
        if ([barButtonItemGroup isHidden])
        {
          [v70 setHidden:1];
        }

        else
        {
          visibleButtons = [v70 visibleButtons];
          [v70 setHidden:{objc_msgSend(visibleButtons, "count") == 0}];
        }

        if (([v70 isHidden] & 1) == 0)
        {
          [v70 sizeThatFits:{v28, v30}];
          v74 = v34 * v73;
          containsFlexibleItems = [v70 containsFlexibleItems];
          if (v48 >= v74)
          {
            v76 = v48;
          }

          else
          {
            v76 = v74;
          }

          if (containsFlexibleItems)
          {
            v74 = v76;
          }

          UIRoundToViewScale();
          v78 = v77;
          colorAdaptiveFullButtonBar = [(TUIAssistantButtonBarView *)self colorAdaptiveFullButtonBar];
          buttonAlignment2 = [(TUIAssistantButtonBarView *)self buttonAlignment];
          v81 = colorAdaptiveFullButtonBar;
          if (buttonAlignment2 == 2)
          {
            [v70 setFrame:{v64 - v78, v81, v78, v30}];
            v64 = v64 - (v37 + v74);
          }

          else
          {
            [v70 setFrame:{v64, v81, v78, v30}];
            v64 = v64 + v37 + v74;
          }
        }
      }

      v67 = [v65 countByEnumeratingWithState:&v82 objects:v95 count:16];
    }

    while (v67);
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(TUIAssistantButtonBarView *)self uncollapseAllGroups];
  v8.receiver = self;
  v8.super_class = TUIAssistantButtonBarView;
  [(TUIAssistantButtonBarView *)&v8 setBounds:x, y, width, height];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(TUIAssistantButtonBarView *)self uncollapseAllGroups];
  v8.receiver = self;
  v8.super_class = TUIAssistantButtonBarView;
  [(TUIAssistantButtonBarView *)&v8 setFrame:x, y, width, height];
}

- (BOOL)_containsFlexibleGroupViews
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  _visibleGroupViews = [(TUIAssistantButtonBarView *)self _visibleGroupViews];
  v3 = [_visibleGroupViews countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(_visibleGroupViews);
        }

        if ([*(*(&v7 + 1) + 8 * i) containsFlexibleItems])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [_visibleGroupViews countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)uncollapseAllGroups
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  groupViews = [(TUIAssistantButtonBarView *)self groupViews];
  v3 = [groupViews countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(groupViews);
        }

        [*(*(&v7 + 1) + 8 * v6++) setCollapsed:0];
      }

      while (v4 != v6);
      v4 = [groupViews countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_collapseGroupsIfNecessaryForWidth:(double)width
{
  [(TUIAssistantButtonBarView *)self sizeThatFits:width, 0.0];
  v6 = v5;
  constrainedHorizontally = [(TUIAssistantButtonBarView *)self constrainedHorizontally];
  if (constrainedHorizontally)
  {
    constrainedHorizontally = [(TUIAssistantButtonBarView *)self _containsFlexibleGroupViews];
  }

  if (v6 > width || constrainedHorizontally)
  {
    do
    {
      _uncollapsedGroupViews = [(TUIAssistantButtonBarView *)self _uncollapsedGroupViews];
      v10 = [_uncollapsedGroupViews count];

      if (!v10)
      {
        break;
      }

      _uncollapsedGroupViews2 = [(TUIAssistantButtonBarView *)self _uncollapsedGroupViews];
      firstObject = [_uncollapsedGroupViews2 firstObject];

      [firstObject setCollapsed:1];
      [(TUIAssistantButtonBarView *)self sizeThatFits:width, 0.0];
      v14 = v13;
    }

    while (v14 >= width);
  }
}

- (id)_allVisibleBarItemViews
{
  v16 = *MEMORY[0x1E69E9840];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  groupViews = [(TUIAssistantButtonBarView *)self groupViews];
  v5 = [groupViews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(groupViews);
        }

        visibleButtons = [*(*(&v11 + 1) + 8 * i) visibleButtons];
        [orderedSet addObjectsFromArray:visibleButtons];
      }

      v6 = [groupViews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return orderedSet;
}

- (id)_uncollapsedGroupViews
{
  groupViews = [(TUIAssistantButtonBarView *)self groupViews];
  if (_collapsedButtonBarGroupViewsPredicate_onceToken != -1)
  {
    dispatch_once(&_collapsedButtonBarGroupViewsPredicate_onceToken, &__block_literal_global_11782);
  }

  v3 = [groupViews filteredOrderedSetUsingPredicate:_collapsedButtonBarGroupViewsPredicate_collapsedButtonBarGroupViewsPredicate];

  return v3;
}

- (id)_visibleGroups
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _visibleGroupViews = [(TUIAssistantButtonBarView *)self _visibleGroupViews];
  v5 = [_visibleGroupViews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(_visibleGroupViews);
        }

        barButtonItemGroup = [*(*(&v11 + 1) + 8 * i) barButtonItemGroup];
        [array addObject:barButtonItemGroup];
      }

      v6 = [_visibleGroupViews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)_visibleGroupViews
{
  v19 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  groupViews = [(TUIAssistantButtonBarView *)self groupViews];
  v5 = [groupViews countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(groupViews);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        barButtonItemGroup = [v9 barButtonItemGroup];
        if ([barButtonItemGroup isHidden])
        {
        }

        else
        {
          visibleButtons = [v9 visibleButtons];
          v12 = [visibleButtons count];

          if (v12)
          {
            [array addObject:v9];
          }
        }
      }

      v6 = [groupViews countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return array;
}

- (CGSize)collapsedSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(TUIAssistantButtonBarView *)self _collapseGroupsIfNecessaryForWidth:?];

  [(TUIAssistantButtonBarView *)self sizeThatFits:width, height];
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(TUIAssistantButtonBarView *)self _totalGroupSizeThatFits:?];
  v7 = v6;
  [(TUIAssistantButtonBarView *)self _interItemSpacingThatFits:width forGroupSize:height, v6, v8];
  v10 = v9;
  _visibleGroups = [(TUIAssistantButtonBarView *)self _visibleGroups];
  v12 = [_visibleGroups count] - 1;

  v13 = v7 + v10 * v12;
  v14 = *MEMORY[0x1E69DE788];
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v25 = *MEMORY[0x1E69E9840];
  _visibleGroups = [(TUIAssistantButtonBarView *)self _visibleGroups];
  if ([_visibleGroups count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = _visibleGroups;
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = [(TUIAssistantButtonBarView *)self _groupViewForBarButtonItemGroup:*(*(&v20 + 1) + 8 * i), v20];
          [v10 intrinsicContentSize];
          v8 = v8 + v11;
        }

        v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
    }

    [(TUIAssistantButtonBarView *)self _interItemSpacingThatFits:1.79769313e308 forGroupSize:1.79769313e308, v8, 1.79769313e308];
    v12 = v8 + v13 * ([v4 count] - 1);
  }

  else
  {
    v12 = 0.0;
  }

  [(TUIAssistantButtonBarView *)self _insetsForHorizontalMargin];
  v15 = v14;
  v17 = v16;

  v18 = v12 + v15 + v17;
  v19 = *MEMORY[0x1E69DE788];
  result.height = v19;
  result.width = v18;
  return result;
}

- (UIEdgeInsets)_insetsForHorizontalMargin
{
  v3 = MEMORY[0x1E69DDCE0];
  v4 = *MEMORY[0x1E69DDCE0];
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  if ([(TUIAssistantButtonBarView *)self buttonAlignment]== 1)
  {
    [(TUIAssistantButtonBarView *)self horizontalMargins];
    v7 = v6;
LABEL_5:
    [(TUIAssistantButtonBarView *)self horizontalMargins];
    v8 = v9;
    goto LABEL_7;
  }

  v8 = *(v3 + 24);
  if (![(TUIAssistantButtonBarView *)self buttonAlignment])
  {
    [(TUIAssistantButtonBarView *)self horizontalMargins];
    v7 = v10;
    goto LABEL_7;
  }

  v7 = *(v3 + 8);
  if ([(TUIAssistantButtonBarView *)self buttonAlignment]== 2)
  {
    goto LABEL_5;
  }

LABEL_7:
  v11 = v4;
  v12 = v7;
  v13 = v5;
  v14 = v8;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (double)_interItemSpacingThatFits:(CGSize)fits forGroupSize:(CGSize)size
{
  width = size.width;
  v5 = fits.width;
  v7 = [(TUIAssistantButtonBarView *)self _visibleGroups:fits.width];
  v8 = [v7 count] - 1;

  if (v8 < 1)
  {
    return 0.0;
  }

  [(TUIAssistantButtonBarView *)self effectiveInterItemSpacing];
  if (width + v9 * v8 > v5)
  {
    return fmax((v5 - width) / v8, 0.0);
  }

  [(TUIAssistantButtonBarView *)self effectiveInterItemSpacing];
  return result;
}

- (CGSize)_totalGroupSizeThatFits:(CGSize)fits
{
  width = fits.width;
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  _visibleGroups = [(TUIAssistantButtonBarView *)self _visibleGroups];
  v6 = [_visibleGroups countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(_visibleGroups);
        }

        v11 = [(TUIAssistantButtonBarView *)self _groupViewForBarButtonItemGroup:*(*(&v15 + 1) + 8 * i)];
        [v11 sizeThatFits:{width - v9, 0.0}];
        v9 = v9 + v12;
      }

      v7 = [_visibleGroups countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  v13 = *MEMORY[0x1E69DE788];
  v14 = v9;
  result.height = v13;
  result.width = v14;
  return result;
}

- (void)_updateBarButtonItemHiddenState
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  buttonGroups = [(TUIAssistantButtonBarView *)self buttonGroups];
  v4 = [buttonGroups countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(buttonGroups);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(TUIAssistantButtonBarView *)self _groupViewForBarButtonItemGroup:v8];
        [v9 setHidden:{objc_msgSend(v8, "isHidden")}];
      }

      v5 = [buttonGroups countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (id)_groupViewForBarButtonItemGroup:(id)group
{
  groupCopy = group;
  groupViews = [(TUIAssistantButtonBarView *)self groupViews];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__TUIAssistantButtonBarView__groupViewForBarButtonItemGroup___block_invoke;
  v11[3] = &unk_1E72D8188;
  v6 = groupCopy;
  v12 = v6;
  v7 = [groupViews indexOfObjectPassingTest:v11];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    groupViews2 = [(TUIAssistantButtonBarView *)self groupViews];
    v8 = [groupViews2 objectAtIndex:v7];
  }

  return v8;
}

BOOL __61__TUIAssistantButtonBarView__groupViewForBarButtonItemGroup___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 barButtonItemGroup];
  v7 = v6 == *(a1 + 32);
  *a4 = v7;

  return v7;
}

- (void)setButtonGroups:(id)groups animated:(BOOL)animated
{
  animatedCopy = animated;
  v43 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  if (![(NSArray *)self->_buttonGroups isEqualToArray:groupsCopy])
  {
    v26 = animatedCopy;
    objc_storeStrong(&self->_buttonGroups, groups);
    groupViews = [(TUIAssistantButtonBarView *)self groupViews];
    v9 = [groupViews copy];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__TUIAssistantButtonBarView_setButtonGroups_animated___block_invoke;
    aBlock[3] = &unk_1E72D83A0;
    v28 = v9;
    v41 = v28;
    v27 = _Block_copy(aBlock);
    groupViews2 = [(TUIAssistantButtonBarView *)self groupViews];
    [groupViews2 removeAllObjects];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = groupsCopy;
    v12 = [v11 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v37;
      do
      {
        v15 = 0;
        do
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v36 + 1) + 8 * v15);
          v17 = [TUIAssistantButtonBarGroupView alloc];
          visualProvider = [(TUIAssistantButtonBarView *)self visualProvider];
          v19 = [(TUIAssistantButtonBarGroupView *)v17 initWithBarButtonItemGroup:v16 visualProvider:visualProvider buttonProvider:self];

          [(TUIAssistantButtonBarView *)self minimumInterItemSpace];
          [(TUIAssistantButtonBarGroupView *)v19 setItemSpacing:?];
          groupViews3 = [(TUIAssistantButtonBarView *)self groupViews];
          [groupViews3 addObject:v19];

          buttonContainer = [(TUIAssistantButtonBarView *)self buttonContainer];
          [buttonContainer addSubview:v19];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v13);
    }

    [(TUIAssistantButtonBarView *)self setNeedsLayout];
    if (v26)
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __54__TUIAssistantButtonBarView_setButtonGroups_animated___block_invoke_2;
      v35[3] = &unk_1E72D83A0;
      v35[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v35];
      objc_initWeak(&location, self);
      v22 = MEMORY[0x1E69DD250];
      v23 = *MEMORY[0x1E69DDFD8];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __54__TUIAssistantButtonBarView_setButtonGroups_animated___block_invoke_3;
      v31[3] = &unk_1E72D8138;
      v24 = v28;
      v32 = v28;
      objc_copyWeak(&v33, &location);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __54__TUIAssistantButtonBarView_setButtonGroups_animated___block_invoke_4;
      v29[3] = &unk_1E72D8160;
      v25 = v27;
      v30 = v27;
      [v22 animateWithDuration:0 delay:v31 options:v29 animations:v23 completion:0.0];

      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
    }

    else
    {
      v25 = v27;
      v27[2](v27);
      v24 = v28;
    }
  }
}

void __54__TUIAssistantButtonBarView_setButtonGroups_animated___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) removeFromSuperview];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

uint64_t __54__TUIAssistantButtonBarView_setButtonGroups_animated___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) groupViews];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) setAlpha:0.0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return [*(a1 + 32) layoutIfNeeded];
}

void __54__TUIAssistantButtonBarView_setButtonGroups_animated___block_invoke_3(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v17 + 1) + 8 * v6++) setAlpha:0.0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained groupViews];

  v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) setAlpha:1.0];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }
}

- (void)setEffectiveInterItemSpacing:(double)spacing
{
  v14 = *MEMORY[0x1E69E9840];
  self->_effectiveInterItemSpacing = spacing;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  groupViews = [(TUIAssistantButtonBarView *)self groupViews];
  v5 = [groupViews countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(groupViews);
        }

        [*(*(&v9 + 1) + 8 * v8++) setItemSpacing:spacing];
      }

      while (v6 != v8);
      v6 = [groupViews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_updateMargins
{
  _inheritedRenderConfig = [(TUIAssistantButtonBarView *)self _inheritedRenderConfig];
  if ([_inheritedRenderConfig colorAdaptiveBackground])
  {
    activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
    if ([activeInstance isMinimized])
    {
      v5 = 0;
    }

    else
    {
      v5 = [MEMORY[0x1E69DCBE0] isFloatingForced] ^ 1;
    }

    [(TUIAssistantButtonBarView *)self setColorAdaptiveFullButtonBar:v5];
  }

  else
  {
    [(TUIAssistantButtonBarView *)self setColorAdaptiveFullButtonBar:0];
  }

  colorAdaptiveFullButtonBar = [(TUIAssistantButtonBarView *)self colorAdaptiveFullButtonBar];
  v7 = 5.0;
  if (colorAdaptiveFullButtonBar)
  {
    v7 = 24.0;
  }

  [(TUIAssistantButtonBarView *)self setMinimumInterItemSpace:v7];
  colorAdaptiveFullButtonBar2 = [(TUIAssistantButtonBarView *)self colorAdaptiveFullButtonBar];
  v9 = 15.0;
  if (colorAdaptiveFullButtonBar2)
  {
    v9 = 28.0;
  }

  self->_defaultHorizontalMargins = v9;
  colorAdaptiveFullButtonBar3 = [(TUIAssistantButtonBarView *)self colorAdaptiveFullButtonBar];
  v11 = 40.0;
  if (colorAdaptiveFullButtonBar3)
  {
    v11 = 22.0;
  }

  [(TUIAssistantButtonBarView *)self setBarButtonWidth:v11];
}

- (TUIAssistantButtonBarView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = TUIAssistantButtonBarView;
  v3 = [(TUIAssistantButtonBarView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(TUIAssistantButtonBarView *)v3 setButtonContainer:v5];

    buttonContainer = [(TUIAssistantButtonBarView *)v3 buttonContainer];
    [(TUIAssistantButtonBarView *)v3 addSubview:buttonContainer];

    v7 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    [(TUIAssistantButtonBarView *)v3 setGroupViews:v7];

    [(TUIAssistantButtonBarView *)v3 setButtonAlignment:1];
    [(TUIAssistantButtonBarView *)v3 setHorizontalMargins:v3->_defaultHorizontalMargins];
    v8 = objc_alloc_init(TUIAssistantButtonSizeProvider);
    [(TUIAssistantButtonBarView *)v3 setSizeProvider:v8];

    [(TUIAssistantButtonBarView *)v3 _updateMargins];
  }

  return v3;
}

@end