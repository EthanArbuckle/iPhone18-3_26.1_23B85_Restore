@interface _UIToolbarContentView
- (NSDirectionalEdgeInsets)_directionalSafeArea;
- (NSDirectionalEdgeInsets)padding;
- (double)absorptionForItem:(id)item;
- (double)defaultEdgeSpacing;
- (double)defaultTextPadding;
- (id)_computeEdgeAbsorptionForItems:(id)items;
- (unint64_t)edgesPaddingBarButtonItem:(id)item;
- (void)_ensureButtonBar;
- (void)_setButtonBarLeadingInset:(double)inset trailingInset:(double)trailingInset;
- (void)_updateThreeUpFlagsForItems:(id)items;
- (void)layoutMarginsDidChange;
- (void)reloadWithItems:(id)items;
- (void)setCompactMetrics:(BOOL)metrics;
- (void)setDoneItemAppearance:(id)appearance;
- (void)setPlainItemAppearance:(id)appearance;
- (void)updateConstraints;
- (void)updateContent;
- (void)updateWithItems:(id)items fromOldItems:(id)oldItems animate:(BOOL)animate;
@end

@implementation _UIToolbarContentView

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = _UIToolbarContentView;
  [(UIView *)&v3 layoutMarginsDidChange];
  [(UIView *)self setNeedsUpdateConstraints];
}

- (NSDirectionalEdgeInsets)_directionalSafeArea
{
  [(UIView *)self safeAreaInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
  if (_shouldReverseLayoutDirection)
  {
    v12 = v6;
  }

  else
  {
    v12 = v10;
  }

  if (_shouldReverseLayoutDirection)
  {
    v13 = v10;
  }

  else
  {
    v13 = v6;
  }

  v14 = v4;
  v15 = v8;
  result.trailing = v12;
  result.bottom = v15;
  result.leading = v13;
  result.top = v14;
  return result;
}

- (void)_setButtonBarLeadingInset:(double)inset trailingInset:(double)trailingInset
{
  [(NSLayoutConstraint *)self->_buttonBarLeadingConstraint setConstant:?];
  [(NSLayoutConstraint *)self->_buttonBarTrailingConstraint setConstant:trailingInset];
  buttonBar = self->_buttonBar;

  [(_UIButtonBar *)buttonBar setHitTestDirectionalInsets:0.0, -inset, 0.0, -trailingInset];
}

- (void)updateContent
{
  v51 = *MEMORY[0x1E69E9840];
  top = self->_padding.top;
  leading = self->_padding.leading;
  bottom = self->_padding.bottom;
  trailing = self->_padding.trailing;
  view = [(_UIButtonBar *)self->_buttonBar view];
  [view setDirectionalLayoutMargins:{top, leading, bottom, trailing}];

  barButtonGroups = [(_UIButtonBar *)self->_buttonBar barButtonGroups];
  firstObject = [barButtonGroups firstObject];
  _items = [firstObject _items];

  if ([_items count])
  {
    [(_UIToolbarContentView *)self _directionalSafeArea];
    v12 = v11;
    v14 = v13;
    superview = [(UIView *)self superview];
    [superview _contentMargin];
    v17 = v16;

    v18 = v12 + v17;
    firstObject2 = [_items firstObject];
    lastObject = [_items lastObject];
    if ([firstObject2 isSystemItem] && objc_msgSend(firstObject2, "systemItem") == 6)
    {
      [firstObject2 width];
      v22 = v18 + v21;
      if (v18 + v21 < 0.0)
      {
        v22 = 0.0;
      }

      if (v21 < 0.0)
      {
        v18 = v22;
      }
    }

    v23 = v14 + v17;
    v45 = firstObject2;
    if ([lastObject isSystemItem] && objc_msgSend(lastObject, "systemItem") == 6)
    {
      [lastObject width];
      v25 = v23 + v24;
      if (v23 + v24 < 0.0)
      {
        v25 = 0.0;
      }

      if (v24 < 0.0)
      {
        v23 = v25;
      }
    }

    v48 = 0u;
    v49 = 0u;
    if (v18 - v12 >= v23 - v14)
    {
      v26 = v23 - v14;
    }

    else
    {
      v26 = v18 - v12;
    }

    v46 = 0uLL;
    v47 = 0uLL;
    v27 = _items;
    v28 = [v27 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = 0;
      v31 = 0;
      v32 = *v47;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v47 != v32)
          {
            objc_enumerationMutation(v27);
          }

          v34 = *(*(&v46 + 1) + 8 * i);
          if (([v34 isSpaceItem] & 1) == 0)
          {
            if (!v30)
            {
              v30 = v34;
            }

            v35 = v34;

            v31 = v35;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v29);
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    if (v26 <= 0.0)
    {
      self->_standardEdgeSpacing = 0.0;
      [(_UIToolbarContentView *)self _setButtonBarLeadingInset:v18 trailingInset:v23];
      v40 = v45;
LABEL_51:

      goto LABEL_52;
    }

    standardEdgeSpacing = self->_standardEdgeSpacing;
    self->_standardEdgeSpacing = v26;
    traitCollection = [(UIView *)self traitCollection];
    if ([traitCollection userInterfaceIdiom] == 6)
    {
      traitCollection2 = [(UIView *)self traitCollection];
      _presentationSemanticContext = [traitCollection2 _presentationSemanticContext];

      if (_presentationSemanticContext != 3)
      {
        goto LABEL_46;
      }
    }

    else
    {
    }

    if ([v30 isCustomViewItem])
    {
      firstObject3 = [v27 firstObject];
      v42 = v30 != firstObject3;

      if (([v31 isCustomViewItem] & 1) == 0)
      {
        if (!v42)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }
    }

    else
    {
      if (![v31 isCustomViewItem])
      {
LABEL_46:
        v18 = v18 - v26;
        goto LABEL_47;
      }

      LOBYTE(v42) = 1;
    }

    lastObject2 = [v27 lastObject];
    v44 = v31 != lastObject2;

    if (v42)
    {
      v18 = v18 - v26;
      if (!v44)
      {
        goto LABEL_48;
      }
    }

    else if (!v44)
    {
      goto LABEL_48;
    }

LABEL_47:
    v23 = v23 - v26;
LABEL_48:
    [(_UIToolbarContentView *)self _setButtonBarLeadingInset:v18 trailingInset:v23];
    v40 = v45;
    if (standardEdgeSpacing != v26)
    {
      [v30 _updateView];
      if (v30 != v31)
      {
        [v31 _updateView];
      }
    }

    goto LABEL_51;
  }

  self->_standardEdgeSpacing = 0.0;
  [(_UIToolbarContentView *)self _setButtonBarLeadingInset:0.0 trailingInset:0.0];
LABEL_52:
}

- (void)_ensureButtonBar
{
  v50[1] = *MEMORY[0x1E69E9840];
  if (!self->_buttonBar)
  {
    v3 = objc_alloc_init(_UIButtonBar);
    buttonBar = self->_buttonBar;
    self->_buttonBar = v3;

    [(_UIButtonBar *)self->_buttonBar set_appearanceDelegate:self];
    [(_UIButtonBar *)self->_buttonBar setAllowsViewWrappers:1];
    [(_UIButtonBar *)self->_buttonBar setItemDistribution:self->_itemDistribution];
    traitCollection = [(UIView *)self traitCollection];
    v6 = +[_UIButtonBarButtonVisualProvider visualProviderForIdiom:](_UIButtonBarButtonVisualProvider, "visualProviderForIdiom:", [traitCollection userInterfaceIdiom]);
    objc_opt_class();
    v7 = _UIButtonBarButtonMakerForVisualProvider();
    [(_UIButtonBar *)self->_buttonBar setViewUpdater:v7];

    [(_UIButtonBar *)self->_buttonBar setMinimumInterItemSpace:0.0];
    v8 = [UIBarButtonItemGroup alloc];
    v48 = [(UIBarButtonItemGroup *)v8 initWithBarButtonItems:MEMORY[0x1E695E0F0] representativeItem:0];
    v50[0] = v48;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
    [(_UIButtonBar *)self->_buttonBar setBarButtonGroups:v9];

    top = self->_padding.top;
    leading = self->_padding.leading;
    bottom = self->_padding.bottom;
    trailing = self->_padding.trailing;
    view = [(_UIButtonBar *)self->_buttonBar view];
    [view setDirectionalLayoutMargins:{top, leading, bottom, trailing}];

    v15 = objc_alloc_init(_UIPointerInteractionAssistant);
    assistant = self->_assistant;
    self->_assistant = v15;

    [(UIView *)self addInteraction:self->_assistant];
    v17 = self->_assistant;
    assistantView = [(_UIButtonBar *)self->_buttonBar assistantView];
    [(_UIPointerInteractionAssistant *)v17 setAssistedView:assistantView identifier:@"ContentView.buttonBar"];

    [(_UIButtonBar *)self->_buttonBar setAssistant:self->_assistant];
    view2 = [(_UIButtonBar *)self->_buttonBar view];
    [(UIView *)self insertSubview:view2 atIndex:0];
    previewContainer = [(_UIPointerInteractionAssistant *)self->_assistant previewContainer];
    [previewContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self insertSubview:previewContainer atIndex:1];
    leadingAnchor = [view2 leadingAnchor];
    leadingAnchor2 = [(UIView *)self leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    buttonBarLeadingConstraint = self->_buttonBarLeadingConstraint;
    self->_buttonBarLeadingConstraint = v23;

    trailingAnchor = [(UIView *)self trailingAnchor];
    trailingAnchor2 = [view2 trailingAnchor];
    v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    buttonBarTrailingConstraint = self->_buttonBarTrailingConstraint;
    self->_buttonBarTrailingConstraint = v27;

    v41 = MEMORY[0x1E69977A0];
    v29 = self->_buttonBarTrailingConstraint;
    v49[0] = self->_buttonBarLeadingConstraint;
    v49[1] = v29;
    topAnchor = [view2 topAnchor];
    topAnchor2 = [(UIView *)self topAnchor];
    v45 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v49[2] = v45;
    bottomAnchor = [view2 bottomAnchor];
    bottomAnchor2 = [(UIView *)self bottomAnchor];
    v42 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v49[3] = v42;
    leadingAnchor3 = [previewContainer leadingAnchor];
    leadingAnchor4 = [view2 leadingAnchor];
    v38 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v49[4] = v38;
    topAnchor3 = [previewContainer topAnchor];
    topAnchor4 = [view2 topAnchor];
    v32 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v49[5] = v32;
    widthAnchor = [previewContainer widthAnchor];
    v34 = [widthAnchor constraintEqualToConstant:0.0];
    v49[6] = v34;
    heightAnchor = [previewContainer heightAnchor];
    v36 = [heightAnchor constraintEqualToConstant:0.0];
    v49[7] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:8];
    [v41 activateConstraints:v37];
  }
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = _UIToolbarContentView;
  [(UIView *)&v3 updateConstraints];
  [(_UIToolbarContentView *)self updateContent];
}

- (void)reloadWithItems:(id)items
{
  v6 = [(_UIToolbarContentView *)self _computeEdgeAbsorptionForItems:items];
  barButtonGroups = [(_UIButtonBar *)self->_buttonBar barButtonGroups];
  v5 = [barButtonGroups objectAtIndexedSubscript:0];
  [v5 setBarButtonItems:v6];
}

- (void)_updateThreeUpFlagsForItems:(id)items
{
  v39 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *v34;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        [v13 _setWantsThreeUp:0];
        if ([v13 isSpaceItem])
        {
          if ([v13 systemItem] == 5)
          {
            [v4 addObject:v13];
          }

          ++v9;
        }

        else if ([v13 _flexible])
        {
          ++v10;
        }

        else if (([v13 isCustomViewItem] & 1) == 0)
        {
          title = [v13 title];
          if (title)
          {
            v15 = title;
            v16 = ~[v13 hasImage];

            v8 += v16 & 1;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v7);
    v17 = v10 == 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v17 = 1;
  }

  if ([v4 count] == 2 && v17 && v9 + v8 < objc_msgSend(v5, "count"))
  {
    v19 = [v4 objectAtIndexedSubscript:0];
    v20 = [v5 indexOfObjectIdenticalTo:v19];

    v21 = [v4 objectAtIndexedSubscript:1];
    v22 = [v5 indexOfObjectIdenticalTo:v21];

    if (v22 - v20 == 2)
    {
      v23 = [v5 objectAtIndexedSubscript:v20 + 1];
      [v23 _setWantsThreeUp:1];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v24 = v4;
      v25 = [v24 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v30;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v30 != v27)
            {
              objc_enumerationMutation(v24);
            }

            [*(*(&v29 + 1) + 8 * j) _setWantsThreeUp:{1, v29}];
          }

          v26 = [v24 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v26);
      }
    }
  }
}

- (void)updateWithItems:(id)items fromOldItems:(id)oldItems animate:(BOOL)animate
{
  animateCopy = animate;
  itemsCopy = items;
  oldItemsCopy = oldItems;
  if (animateCopy && (-[_UIButtonBar view](self->_buttonBar, "view"), v10 = objc_claimAutoreleasedReturnValue(), [v10 window], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    view = [(_UIButtonBar *)self->_buttonBar view];
    v13 = [view snapshotViewAfterScreenUpdates:0];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(_UIToolbarContentView *)self _computeEdgeAbsorptionForItems:itemsCopy];

  [(_UIToolbarContentView *)self _updateThreeUpFlagsForItems:v14];
  [(_UIToolbarContentView *)self _ensureButtonBar];
  barButtonGroups = [(_UIButtonBar *)self->_buttonBar barButtonGroups];
  v16 = [barButtonGroups objectAtIndexedSubscript:0];
  [v16 setBarButtonItems:v14];

  [(_UIToolbarContentView *)self updateContent];
  view2 = [(_UIButtonBar *)self->_buttonBar view];
  v18 = view2;
  if (v13)
  {
    [view2 frame];
    [v13 setFrame:?];

    [(UIView *)self addSubview:v13];
    view3 = [(_UIButtonBar *)self->_buttonBar view];
    [view3 setAlpha:0.0];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __62___UIToolbarContentView_updateWithItems_fromOldItems_animate___block_invoke;
    v22[3] = &unk_1E70F35B8;
    v22[4] = self;
    v23 = v13;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __62___UIToolbarContentView_updateWithItems_fromOldItems_animate___block_invoke_2;
    v20[3] = &unk_1E70F5AC0;
    v21 = v23;
    [UIView animateWithDuration:2 delay:v22 options:v20 animations:0.2 completion:0.0];
  }

  else
  {
    [view2 setAlpha:1.0];
  }
}

- (unint64_t)edgesPaddingBarButtonItem:(id)item
{
  v31 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v5 = itemCopy;
  if (self->_itemDistribution)
  {
    v6 = 0;
  }

  else if ([itemCopy _wantsThreeUp])
  {
    v6 = 15;
  }

  else
  {
    barButtonGroups = [(_UIButtonBar *)self->_buttonBar barButtonGroups];
    v8 = [barButtonGroups objectAtIndexedSubscript:0];
    barButtonItems = [v8 barButtonItems];
    v10 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = barButtonItems;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          if (([v16 isSpaceItem] & 1) == 0)
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v13);
    }

    v17 = *(&self->super.super._viewFlags + 2);
    firstObject = [v10 firstObject];

    v19 = (v17 & 0x400000) == 0;
    if ((v17 & 0x400000) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = 8;
    }

    v21 = 7;
    if (v19)
    {
      v21 = 13;
    }

    if (firstObject == v5)
    {
      v22 = v21;
    }

    else
    {
      v22 = 15;
    }

    lastObject = [v10 lastObject];

    if (lastObject == v5)
    {
      v24 = v20;
    }

    else
    {
      v24 = 0;
    }

    v6 = v24 ^ v22;
  }

  return v6;
}

- (id)_computeEdgeAbsorptionForItems:(id)items
{
  v60 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  obj = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  v4 = objc_opt_new();
  v52 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v56;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v56 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v55 + 1) + 8 * i);
        if ([v10 isSpaceItem])
        {
          if ([v10 systemItem] != 6 || (objc_msgSend(v10, "width"), v11 != 0.0))
          {
            v12 = -[UIBarButtonItem initWithBarButtonSystemItem:target:action:]([UIBarButtonItem alloc], "initWithBarButtonSystemItem:target:action:", [v10 systemItem], 0, 0);
            if ([v10 systemItem] == 6)
            {
              [v10 width];
              [(UIBarButtonItem *)v12 setWidth:?];
            }

            [v4 addObject:v12];
          }
        }

        else
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v7);
  }

  traitCollection = [(UIView *)self traitCollection];
  [traitCollection userInterfaceIdiom];

  if ([v4 count])
  {
    v14 = 0;
    v15 = 0;
    v54 = 0;
    while (1)
    {
      v16 = [v4 objectAtIndexedSubscript:v14];
      v17 = v16;
      if ((v15 & 1) == 0 && [v16 systemItem] == 5)
      {
        break;
      }

      if (![v17 isCustomViewItem])
      {
        goto LABEL_22;
      }

      ++v54;
LABEL_57:

      if ([v4 count] <= ++v14)
      {
        goto LABEL_60;
      }
    }

    v15 = 1;
LABEL_22:
    if (v14)
    {
      v18 = [v4 objectAtIndexedSubscript:v14 - 1];
    }

    else
    {
      v18 = 0;
    }

    if ([v4 count] - 1 <= v14)
    {
      v19 = 0;
    }

    else
    {
      v19 = [v4 objectAtIndexedSubscript:v14 + 1];
    }

    v20 = v17;
    v21 = v18;
    v22 = v19;
    v23 = [v20 _imageForState:0 compact:0 type:0];
    v24 = 0.0;
    if (!v23 || ([v20 isCustomViewItem] & 1) != 0 || (objc_msgSend(v20, "isSpaceItem") & 1) != 0 || objc_msgSend(v21, "systemItem") == 5 || objc_msgSend(v22, "systemItem") == 5 || (objc_msgSend(v23, "size"), v26 = (34.0 - v25) * 0.5, v26 <= 0.0))
    {
LABEL_56:

      v40 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
      [obj setObject:v40 forKey:v20];

      goto LABEL_57;
    }

    _viewOwner = [v21 _viewOwner];
    _viewOwner2 = [v20 _viewOwner];
    _viewOwner3 = [v22 _viewOwner];
    [v21 _setViewOwner:0];
    [v20 _setViewOwner:0];
    [v22 _setViewOwner:0];
    v49 = _viewOwner;
    if ([v21 isSpaceItem] && objc_msgSend(v22, "isSpaceItem"))
    {
      [v22 width];
      v29 = v28 * 0.5;
      [v21 width];
      v31 = v30 * 0.5;
      if (v29 < v31)
      {
        v31 = v29;
      }

      if (v31 >= v26)
      {
        v24 = v26;
      }

      else
      {
        v24 = v31;
      }

      [v21 width];
      [v21 setWidth:v32 - v24];
    }

    else
    {
      if (v21 || ![v22 isSpaceItem])
      {
        isSpaceItem = [v21 isSpaceItem];
        if (v22 || !isSpaceItem)
        {
          goto LABEL_55;
        }

        [v21 width];
        v38 = v37 * 0.5;
        if (v38 >= v26)
        {
          v24 = v26;
        }

        else
        {
          v24 = v38;
        }

        v35 = v21;
LABEL_54:
        [v35 width];
        [v35 setWidth:v39 - v24];
        _viewOwner = v49;
LABEL_55:
        [v21 _setViewOwner:_viewOwner];
        [v20 _setViewOwner:_viewOwner2];
        [v22 _setViewOwner:_viewOwner3];

        goto LABEL_56;
      }

      [v22 width];
      v34 = v33 * 0.5;
      if (v34 >= v26)
      {
        v24 = v26;
      }

      else
      {
        v24 = v34;
      }
    }

    v35 = v22;
    goto LABEL_54;
  }

  v54 = 0;
  v15 = 0;
LABEL_60:
  if ([v4 count])
  {
    v41 = 0;
    do
    {
      v42 = [v4 objectAtIndexedSubscript:v41];
      if ([v42 systemItem] == 6)
      {
        v43 = [v4 objectAtIndexedSubscript:v41];
        [v43 width];
        v45 = v44;

        if (v45 == 0.0)
        {
          [v52 addIndex:v41];
        }
      }

      else
      {
      }

      ++v41;
    }

    while ([v4 count] > v41);
  }

  [v4 removeObjectsAtIndexes:v52];
  objc_storeStrong(&self->_absorptionTable, obj);
  if ((v15 & 1) == 0 && v54 != [v4 count])
  {
    v46 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
    [v4 addObject:v46];
  }

  return v4;
}

- (double)absorptionForItem:(id)item
{
  v3 = [(NSMapTable *)self->_absorptionTable objectForKey:item];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)defaultEdgeSpacing
{
  result = 0.0;
  if (self->_itemDistribution != 3)
  {
    return self->_standardEdgeSpacing;
  }

  return result;
}

- (double)defaultTextPadding
{
  traitCollection = [(UIView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 5)
  {
    v3 = 6.0;
  }

  else
  {
    v3 = 8.0;
  }

  return v3;
}

- (void)setCompactMetrics:(BOOL)metrics
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_compactMetrics != metrics)
  {
    self->_compactMetrics = metrics;
    barButtonGroups = [(_UIButtonBar *)self->_buttonBar barButtonGroups];
    firstObject = [barButtonGroups firstObject];
    _items = [firstObject _items];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = _items;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) _updateView];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setPlainItemAppearance:(id)appearance
{
  v4 = [appearance copy];
  plainItemAppearance = self->_plainItemAppearance;
  self->_plainItemAppearance = v4;

  v6 = self->_plainItemAppearance;
  buttonBar = self->_buttonBar;

  [(_UIButtonBar *)buttonBar setPlainItemAppearance:v6];
}

- (void)setDoneItemAppearance:(id)appearance
{
  v4 = [appearance copy];
  doneItemAppearance = self->_doneItemAppearance;
  self->_doneItemAppearance = v4;

  v6 = self->_doneItemAppearance;
  buttonBar = self->_buttonBar;

  [(_UIButtonBar *)buttonBar setDoneItemAppearance:v6];
}

- (NSDirectionalEdgeInsets)padding
{
  top = self->_padding.top;
  leading = self->_padding.leading;
  bottom = self->_padding.bottom;
  trailing = self->_padding.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end