@interface _UIBarCustomizationChiclet
- (BOOL)_isDisplayingRootItem;
- (BOOL)fixed;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)_contentSizeWithInterItemSpacing:(double)spacing;
- (CGSize)_currentContentSize;
- (CGSize)fittingSizeWithChicletSize:(int64_t)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_UIBarCustomizationChiclet)initWithItem:(id)item;
- (_UIBarCustomizationChicletAnchorView)anchorView;
- (_UIBarCustomizationItem)representedItem;
- (double)_currentInterItemSpacing;
- (double)_interItemSpacingForChicletSize:(int64_t)size;
- (double)_platterMinHeight;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_addContentView:(id)view;
- (void)_traitCollectionDidChangeOnSubtreeInternal:(const _UITraitCollectionChangeDescription *)internal;
- (void)_updatePlatterShadow;
- (void)layoutSubviews;
- (void)setLabelVisible:(BOOL)visible;
- (void)setMinimized:(BOOL)minimized;
- (void)setPlatterVisible:(BOOL)visible;
- (void)sizeToFit;
- (void)updateItemCenterPoints;
@end

@implementation _UIBarCustomizationChiclet

- (_UIBarCustomizationChiclet)initWithItem:(id)item
{
  v53 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v51.receiver = self;
  v51.super_class = _UIBarCustomizationChiclet;
  v5 = [(UIView *)&v51 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(UIView *)v5 _forceNilGlassGroupTraitOverride];
    v6->_chicletSize = 0;
    objc_storeWeak(&v6->_representedItem, itemCopy);
    [itemCopy set_chiclet:v6];
    [itemCopy _sourceFrameInContainer:0];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = objc_opt_new();
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __43___UIBarCustomizationChiclet_initWithItem___block_invoke;
    v45[3] = &unk_1E7104F68;
    v16 = v15;
    v46 = v16;
    v47 = v8;
    v48 = v10;
    v49 = v12;
    v50 = v14;
    [itemCopy _enumerateSubitemsWithBlock:v45];
    v17 = _itemViewFromItem(itemCopy, v8, v10, v12, v14);
    [(_UIBarCustomizationChiclet *)v6 setRootItemView:v17];

    [(_UIBarCustomizationChiclet *)v6 setSubitemViews:v16];
    v18 = [UIView alloc];
    [(UIView *)v6 bounds];
    v19 = [(UIView *)v18 initWithFrame:?];
    [(_UIBarCustomizationChiclet *)v6 setContentWrapperView:v19];

    contentWrapperView = [(_UIBarCustomizationChiclet *)v6 contentWrapperView];
    [(UIView *)v6 addSubview:contentWrapperView];

    if (_UISolariumEnabled())
    {
      v21 = *MEMORY[0x1E6979E40];
      contentWrapperView2 = [(_UIBarCustomizationChiclet *)v6 contentWrapperView];
      [contentWrapperView2 _setContinuousCornerRadius:v21];
    }

    else
    {
      v23 = [UIView alloc];
      [(UIView *)v6 bounds];
      v24 = [(UIView *)v23 initWithFrame:?];
      [(_UIBarCustomizationChiclet *)v6 setPlatterView:v24];

      v25 = +[UIColor systemBackgroundColor];
      platterView = [(_UIBarCustomizationChiclet *)v6 platterView];
      [platterView setBackgroundColor:v25];

      platterView2 = [(_UIBarCustomizationChiclet *)v6 platterView];
      layer = [platterView2 layer];
      [layer setShadowPathIsBounds:1];

      platterView3 = [(_UIBarCustomizationChiclet *)v6 platterView];
      layer2 = [platterView3 layer];
      [layer2 setAllowsEdgeAntialiasing:1];

      contentWrapperView2 = [(_UIBarCustomizationChiclet *)v6 contentWrapperView];
      platterView4 = [(_UIBarCustomizationChiclet *)v6 platterView];
      [contentWrapperView2 addSubview:platterView4];
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v32 = v16;
    v33 = [v32 countByEnumeratingWithState:&v41 objects:v52 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v42;
      do
      {
        v36 = 0;
        do
        {
          if (*v42 != v35)
          {
            objc_enumerationMutation(v32);
          }

          [(_UIBarCustomizationChiclet *)v6 _addContentView:*(*(&v41 + 1) + 8 * v36++), v41];
        }

        while (v34 != v36);
        v34 = [v32 countByEnumeratingWithState:&v41 objects:v52 count:16];
      }

      while (v34);
    }

    rootItemView = [(_UIBarCustomizationChiclet *)v6 rootItemView];
    [(_UIBarCustomizationChiclet *)v6 _addContentView:rootItemView];

    v38 = [[UIPointerInteraction alloc] initWithDelegate:v6];
    [(_UIBarCustomizationChiclet *)v6 setPointerInteraction:v38];

    pointerInteraction = [(_UIBarCustomizationChiclet *)v6 pointerInteraction];
    [(UIView *)v6 addInteraction:pointerInteraction];
  }

  return v6;
}

- (void)updateItemCenterPoints
{
  representedItem = [(_UIBarCustomizationChiclet *)self representedItem];
  [representedItem _sourceFrameInContainer:0];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  rootItemView = [(_UIBarCustomizationChiclet *)self rootItemView];
  _updateSourceCenterForItemView(representedItem, rootItemView, v4, v6, v8, v10);

  subitems = [representedItem subitems];
  v13 = [subitems count];

  if (v13)
  {
    v14 = 0;
    do
    {
      subitems2 = [representedItem subitems];
      v16 = [subitems2 objectAtIndexedSubscript:v14];
      subitemViews = [(_UIBarCustomizationChiclet *)self subitemViews];
      v18 = [subitemViews objectAtIndexedSubscript:v14];
      _updateSourceCenterForItemView(v16, v18, v4, v6, v8, v10);

      ++v14;
      subitems3 = [representedItem subitems];
      v20 = [subitems3 count];
    }

    while (v20 > v14);
  }
}

- (void)_addContentView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = viewCopy;
    sourceView = [v4 sourceView];
    window = [sourceView window];

    if (!window)
    {
      v7 = +[_UIBarCustomizationCustomViewPortalSourceContainer sharedContainer];
      sourceView2 = [v4 sourceView];
      [v7 addSubview:sourceView2];
    }
  }

  contentWrapperView = [(_UIBarCustomizationChiclet *)self contentWrapperView];
  [contentWrapperView addSubview:viewCopy];
}

- (void)layoutSubviews
{
  v153 = *MEMORY[0x1E69E9840];
  v149.receiver = self;
  v149.super_class = _UIBarCustomizationChiclet;
  [(UIView *)&v149 layoutSubviews];
  [(UIView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  contentWrapperView = [(_UIBarCustomizationChiclet *)self contentWrapperView];
  if (![(_UIBarCustomizationChiclet *)self minimized])
  {
    [contentWrapperView setFrame:{v5, v7, v9, v11}];
    [contentWrapperView setBackgroundColor:0];
    v129 = *(MEMORY[0x1E695EFD0] + 16);
    v130 = *MEMORY[0x1E695EFD0];
    *&v147.a = *MEMORY[0x1E695EFD0];
    *&v147.c = v129;
    v128 = *(MEMORY[0x1E695EFD0] + 32);
    *&v147.tx = v128;
    [(UIView *)self setTransform:&v147];
    representedItem = [(_UIBarCustomizationChiclet *)self representedItem];
    [representedItem _sourceFrameInContainer:0];

    [(_UIBarCustomizationChiclet *)self _currentContentSize];
    v37 = v36;
    v39 = v38;
    subitemViews = [(_UIBarCustomizationChiclet *)self subitemViews];
    if ([(_UIBarCustomizationChiclet *)self platterVisible])
    {
      v41 = [subitemViews count];
      [(_UIBarCustomizationChiclet *)self _currentInterItemSpacing];
      v43 = v37 - v42 * (v41 - 1);
      v157.origin.x = v5;
      v157.origin.y = v7;
      v157.size.width = v9;
      v157.size.height = v11;
      v44 = (CGRectGetWidth(v157) - v43) / (v41 + 1);
      if (v44 >= 16.0)
      {
        v45 = v44;
      }

      else
      {
        v45 = 16.0;
      }

      if ([subitemViews count])
      {
        v46 = 0;
        v47 = 0.0;
        do
        {
          v48 = [subitemViews objectAtIndexedSubscript:v46];
          representedItem2 = [(_UIBarCustomizationChiclet *)self representedItem];
          subitems = [representedItem2 subitems];
          v51 = [subitems objectAtIndexedSubscript:v46];
          tintColor = [v51 tintColor];
          [v48 setTintColor:tintColor];

          [v48 bounds];
          v53 = CGRectGetWidth(v158) * 0.5;
          [v48 setCenter:{v45 + v47 + v53, v7 + v11 * 0.5}];
          [v48 center];
          v47 = v53 + v54;

          ++v46;
        }

        while ([subitemViews count] > v46);
      }
    }

    else
    {
      v159.origin.x = v5;
      v159.origin.y = v7;
      v159.size.width = v9;
      v159.size.height = v11;
      Width = CGRectGetWidth(v159);
      v160.origin.x = v5;
      v160.origin.y = v7;
      v160.size.width = v9;
      v160.size.height = v11;
      Height = CGRectGetHeight(v160);
      if ([subitemViews count])
      {
        v57 = 0;
        v58 = (Width - v37) * 0.5;
        v59 = (Height - v39) * 0.5;
        do
        {
          v60 = [subitemViews objectAtIndexedSubscript:v57];
          [v60 _getSourceCenter];
          [v60 setCenter:{v58 + v61, v59 + v62}];
          representedItem3 = [(_UIBarCustomizationChiclet *)self representedItem];
          subitems2 = [representedItem3 subitems];
          v65 = [subitems2 objectAtIndexedSubscript:v57];

          if (([v65 enabled] & 1) == 0)
          {
            tintColor2 = [v65 tintColor];
            v67 = tintColor2;
            if (!tintColor2)
            {
              tintColor3 = [(UIView *)self tintColor];
              v67 = tintColor3;
            }

            v68 = [UIColor _disabledColorForColor:v67];
            [v60 setTintColor:v68];

            if (!tintColor2)
            {
            }
          }

          ++v57;
        }

        while ([subitemViews count] > v57);
      }
    }

    rootItemView = [(_UIBarCustomizationChiclet *)self rootItemView];
    [rootItemView setCenter:{v5 + v9 * 0.5, v7 + v11 * 0.5}];
    if ([(_UIBarCustomizationChiclet *)self _isDisplayingRootItem])
    {
      [rootItemView setAlpha:1.0];
      *&v147.a = v130;
      *&v147.c = v129;
      *&v147.tx = v128;
      [rootItemView setTransform:&v147];
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
      v70 = subitemViews;
      v71 = [v70 countByEnumeratingWithState:&v139 objects:v151 count:16];
      if (v71)
      {
        v72 = v71;
        v73 = *v140;
        do
        {
          for (i = 0; i != v72; ++i)
          {
            if (*v140 != v73)
            {
              objc_enumerationMutation(v70);
            }

            v75 = *(*(&v139 + 1) + 8 * i);
            memset(&v147, 0, sizeof(v147));
            [rootItemView center];
            v77 = v76;
            [v75 center];
            v79 = v77 - v78;
            [rootItemView center];
            v81 = v80;
            [v75 center];
            CGAffineTransformMakeTranslation(&v147, v79, v81 - v82);
            v137 = v147;
            CGAffineTransformScale(&v138, &v137, 0.5, 0.5);
            v137 = v138;
            [v75 setTransform:&v137];
            [v75 setAlpha:0.0];
          }

          v72 = [v70 countByEnumeratingWithState:&v139 objects:v151 count:16];
        }

        while (v72);
      }
    }

    else
    {
      [rootItemView setAlpha:0.0];
      CGAffineTransformMakeScale(&v136, 0.5, 0.5);
      v147 = v136;
      [rootItemView setTransform:&v147];
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      v83 = subitemViews;
      v84 = [v83 countByEnumeratingWithState:&v132 objects:v150 count:16];
      if (v84)
      {
        v85 = v84;
        v86 = *v133;
        do
        {
          for (j = 0; j != v85; ++j)
          {
            if (*v133 != v86)
            {
              objc_enumerationMutation(v83);
            }

            v88 = *(*(&v132 + 1) + 8 * j);
            [v88 frame];
            MaxX = CGRectGetMaxX(v161);
            v162.origin.x = v5;
            v162.origin.y = v7;
            v162.size.width = v9;
            v162.size.height = v11;
            if (MaxX <= CGRectGetWidth(v162))
            {
              *&v147.a = v130;
              *&v147.c = v129;
              *&v147.tx = v128;
              [v88 setTransform:&v147];
              [v88 setAlpha:1.0];
            }

            else
            {
              [v88 setAlpha:0.0];
              CGAffineTransformMakeScale(&v131, 0.0, 0.0);
              v147 = v131;
              [v88 setTransform:&v147];
              v90 = [v83 indexOfObject:v88];
              v91 = [v83 objectAtIndexedSubscript:v90 - (v90 > 0)];
              [v91 center];
              [v88 setCenter:?];
            }
          }

          v85 = [v83 countByEnumeratingWithState:&v132 objects:v150 count:16];
        }

        while (v85);
      }
    }

    if ([(_UIBarCustomizationChiclet *)self platterVisible])
    {
      v92 = ![(_UIBarCustomizationChiclet *)self fixed];
    }

    else
    {
      v92 = 0;
    }

    platterView = [(_UIBarCustomizationChiclet *)self platterView];
    if (_UISolariumEnabled())
    {
      if (!v92)
      {
        [contentWrapperView _setBackground:0];
        goto LABEL_61;
      }

      v94 = objc_opt_new();
      [v94 setFlexible:1];
      [contentWrapperView _setBackground:v94];
    }

    else
    {
      platterView2 = [(_UIBarCustomizationChiclet *)self platterView];
      v94 = platterView2;
      v96 = 1.0;
      if (v92)
      {
        v97 = 0.0;
      }

      else
      {
        v96 = 0.0;
        v97 = 2.0;
      }

      [platterView2 setAlpha:v96];
      v98 = +[UIColor systemBackgroundColor];
      [v94 setBackgroundColor:v98];

      [contentWrapperView bounds];
      v164 = CGRectInset(v163, v97, v97);
      [v94 setFrame:{v164.origin.x, v164.origin.y, v164.size.width, v164.size.height}];
      chicletSize = [(_UIBarCustomizationChiclet *)self chicletSize];
      v100 = 10.0;
      if (chicletSize == 1)
      {
        v100 = 13.0;
      }

      [v94 _setContinuousCornerRadius:v100];
      [(_UIBarCustomizationChiclet *)self _updatePlatterShadow];
    }

LABEL_61:
    label = [(_UIBarCustomizationChiclet *)self label];

    if (label)
    {
      [contentWrapperView bounds];
      [contentWrapperView convertRect:self toView:?];
      x = v165.origin.x;
      y = v165.origin.y;
      v104 = v165.size.width;
      v105 = v165.size.height;
      MidX = CGRectGetMidX(v165);
      v166.origin.x = x;
      v166.origin.y = y;
      v166.size.width = v104;
      v166.size.height = v105;
      v107 = CGRectGetMaxY(v166) + 10.0;
      label2 = [(_UIBarCustomizationChiclet *)self label];
      [label2 setCenter:{MidX, v107}];

      label3 = [(_UIBarCustomizationChiclet *)self label];
      [contentWrapperView bounds];
      [label3 sizeThatFits:{CGRectGetWidth(v167) + 20.0, 0.0}];
      v111 = v110;
      v113 = v112;

      label4 = [(_UIBarCustomizationChiclet *)self label];
      [label4 setBounds:{0.0, 0.0, v111, v113}];
    }

    goto LABEL_74;
  }

  [(_UIBarCustomizationChiclet *)self _platterMinHeight];
  v14 = v13;
  v15 = 0.5;
  [contentWrapperView setFrame:{round(v5 + v9 * 0.5 - v13 * 0.5), round(v7 + v11 * 0.5 - v13 * 0.5), v14, v14}];
  v16 = 0.0;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    platterView3 = [(_UIBarCustomizationChiclet *)self platterView];
    [contentWrapperView bounds];
    [platterView3 setFrame:?];
    [platterView3 setAlpha:1.0];
    [platterView3 bounds];
    [platterView3 _setCornerRadius:CGRectGetWidth(v154) * 0.5];
    tintColor4 = [(UIView *)self tintColor];
    [platterView3 setBackgroundColor:tintColor4];

    traitCollection = [(UIView *)self traitCollection];
    v20 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleBody" scale:3];
    v21 = [v20 configurationWithTraitCollection:traitCollection];
    if (_UISMCBarsEnabled())
    {
      v22 = @"ellipsis";
    }

    else
    {
      v22 = @"ellipsis.circle";
    }

    v23 = [UIImage systemImageNamed:v22 withConfiguration:v21];
    _outlinePath = [v23 _outlinePath];

    SeparateComponents = CGPathCreateSeparateComponents([_outlinePath CGPath], 0);
    Count = CFArrayGetCount(SeparateComponents);
    if (Count >= 1)
    {
      v27 = Count;
      v28 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(SeparateComponents, v28);
        PathBoundingBox = CGPathGetPathBoundingBox(ValueAtIndex);
        v30 = PathBoundingBox.origin.x;
        v31 = PathBoundingBox.origin.y;
        v32 = PathBoundingBox.size.width;
        v33 = PathBoundingBox.size.height;
        v34 = CGRectGetWidth(PathBoundingBox);
        [_outlinePath bounds];
        if (v34 < CGRectGetWidth(v156) * 0.5)
        {
          break;
        }

        if (v27 == ++v28)
        {
          goto LABEL_65;
        }
      }

      v168.origin.x = v30;
      v168.origin.y = v31;
      v168.size.width = v32;
      v168.size.height = v33;
      v16 = CGRectGetWidth(v168);
LABEL_65:
      v15 = 0.5;
    }
  }

  CGAffineTransformMakeScale(&v148, v16 / v14, v16 / v14);
  v147 = v148;
  [(UIView *)self setTransform:&v147];
  [contentWrapperView bounds];
  v117 = v116 + v115 * v15;
  v120 = v119 + v118 * v15;
  rootItemView2 = [(_UIBarCustomizationChiclet *)self rootItemView];
  [rootItemView2 setCenter:{v117, v120}];

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  subitemViews = [(_UIBarCustomizationChiclet *)self subitemViews];
  v122 = [subitemViews countByEnumeratingWithState:&v143 objects:v152 count:16];
  if (v122)
  {
    v123 = v122;
    v124 = *v144;
    do
    {
      for (k = 0; k != v123; ++k)
      {
        if (*v144 != v124)
        {
          objc_enumerationMutation(subitemViews);
        }

        v126 = *(*(&v143 + 1) + 8 * k);
        rootItemView3 = [(_UIBarCustomizationChiclet *)self rootItemView];
        [rootItemView3 center];
        [v126 setCenter:?];

        [v126 setAlpha:0.0];
      }

      v123 = [subitemViews countByEnumeratingWithState:&v143 objects:v152 count:16];
    }

    while (v123);
  }

LABEL_74:
}

- (void)setPlatterVisible:(BOOL)visible
{
  if (self->_platterVisible != visible)
  {
    self->_platterVisible = visible;
    if ([(_UIBarCustomizationChiclet *)self fixed])
    {
      platterVisible = self->_platterVisible;
      representedItem = [(_UIBarCustomizationChiclet *)self representedItem];
      tintColor = [representedItem tintColor];
      if (platterVisible)
      {
        v7 = +[UIColor _alertControllerDimmingViewColor];
        v8 = [tintColor _colorBlendedWithColor:v7];
        [(UIView *)self setTintColor:v8];

        v9 = 0.32;
      }

      else
      {
        [(UIView *)self setTintColor:tintColor];

        v9 = 1.0;
      }

      [(UIView *)self setAlpha:v9];
    }

    else
    {
      [(UIView *)self setNeedsLayout];
      if (+[UIView _isInAnimationBlock])
      {
        [(_UIBarCustomizationChiclet *)self sizeToFit];

        [(UIView *)self layoutIfNeeded];
      }
    }
  }
}

- (void)setLabelVisible:(BOOL)visible
{
  if (self->_labelVisible != visible)
  {
    self->_labelVisible = visible;
    [(UIView *)self setNeedsLayout];
    if (self->_labelVisible)
    {
      label = [(_UIBarCustomizationChiclet *)self label];

      if (!label)
      {
        v5 = objc_opt_new();
        [(_UIBarCustomizationChiclet *)self setLabel:v5];

        label2 = [(_UIBarCustomizationChiclet *)self label];
        [label2 setTextAlignment:1];

        label3 = [(_UIBarCustomizationChiclet *)self label];
        [label3 setAllowsDefaultTighteningForTruncation:1];

        label4 = [(_UIBarCustomizationChiclet *)self label];
        [label4 setAdjustsFontForContentSizeCategory:1];

        label5 = [(_UIBarCustomizationChiclet *)self label];
        [label5 setNumberOfLines:2];

        v10 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCaption2"];
        label6 = [(_UIBarCustomizationChiclet *)self label];
        [label6 setFont:v10];

        representedItem = [(_UIBarCustomizationChiclet *)self representedItem];
        name = [representedItem name];
        label7 = [(_UIBarCustomizationChiclet *)self label];
        [label7 setText:name];

        label8 = [(_UIBarCustomizationChiclet *)self label];
        [label8 setAnchorPoint:{0.5, 0.0}];

        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __46___UIBarCustomizationChiclet_setLabelVisible___block_invoke;
        v18[3] = &unk_1E70F3590;
        v18[4] = self;
        [UIView performWithoutAnimation:v18];
      }
    }

    if (self->_labelVisible)
    {
      v16 = 1.0;
    }

    else
    {
      v16 = 0.0;
    }

    label9 = [(_UIBarCustomizationChiclet *)self label];
    [label9 setAlpha:v16];
  }
}

- (void)setMinimized:(BOOL)minimized
{
  if (self->_minimized != minimized)
  {
    self->_minimized = minimized;
    [(UIView *)self setNeedsLayout];
  }
}

- (BOOL)fixed
{
  representedItem = [(_UIBarCustomizationChiclet *)self representedItem];
  identifier = [representedItem identifier];
  v4 = identifier == 0;

  return v4;
}

- (void)sizeToFit
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_UIBarCustomizationChiclet *)self sizeThatFits:v7, v9];
  if (v8 != v11 || v10 != v12)
  {
    [(UIView *)self setBounds:v4, v6, v11, v12];
    pointerInteraction = [(_UIBarCustomizationChiclet *)self pointerInteraction];
    [pointerInteraction invalidate];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = [(_UIBarCustomizationChiclet *)self chicletSize:fits.width];

  [(_UIBarCustomizationChiclet *)self fittingSizeWithChicletSize:v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)fittingSizeWithChicletSize:(int64_t)size
{
  [(_UIBarCustomizationChiclet *)self _interItemSpacingForChicletSize:?];
  v6 = v5;
  [(_UIBarCustomizationChiclet *)self _contentSizeWithInterItemSpacing:?];
  v9 = v7;
  v10 = v8;
  if (size == 1)
  {
    v11 = 0;
    v12 = v7 + 20.0;
    do
    {
      if (v12 <= fittingSizeWithChicletSize___sizeBuckets[v11])
      {
        break;
      }

      ++v11;
    }

    while (v11 != 4);
    if (v11 >= 3)
    {
      LODWORD(v11) = 3;
    }

    v13 = fittingSizeWithChicletSize___sizeBuckets[v11];
    if (v13 < 60.0)
    {
      v13 = 60.0;
    }

    if (v8 < 60.0)
    {
      v10 = 60.0;
    }
  }

  else
  {
    [(_UIBarCustomizationChiclet *)self _platterMinHeight];
    if (v10 < v14)
    {
      v10 = v14;
    }

    v15 = v6 + v6 + v9;
    [(_UIBarCustomizationChiclet *)self _platterMinHeight];
    if (v15 >= v13)
    {
      v13 = v15;
    }
  }

  v16 = v10;
  result.height = v16;
  result.width = v13;
  return result;
}

- (CGSize)_currentContentSize
{
  [(_UIBarCustomizationChiclet *)self _currentInterItemSpacing];

  [(_UIBarCustomizationChiclet *)self _contentSizeWithInterItemSpacing:?];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_contentSizeWithInterItemSpacing:(double)spacing
{
  v46[1] = *MEMORY[0x1E69E9840];
  if ([(_UIBarCustomizationChiclet *)self _isDisplayingRootItem])
  {
    rootItemView = [(_UIBarCustomizationChiclet *)self rootItemView];
    v46[0] = rootItemView;
    subitemViews = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
  }

  else
  {
    subitemViews = [(_UIBarCustomizationChiclet *)self subitemViews];
  }

  if ([(_UIBarCustomizationChiclet *)self platterVisible])
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v7 = subitemViews;
    v8 = [v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v41;
      v11 = 0.0;
      v12 = 0.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v41 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v40 + 1) + 8 * i) bounds];
          x = v48.origin.x;
          y = v48.origin.y;
          width = v48.size.width;
          height = v48.size.height;
          v12 = v12 + CGRectGetWidth(v48);
          v49.origin.x = x;
          v49.origin.y = y;
          v49.size.width = width;
          v49.size.height = height;
          v18 = CGRectGetHeight(v49);
          if (v11 < v18)
          {
            v11 = v18;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
      v12 = 0.0;
    }

    v27 = v12 + ([v7 count] - 1) * spacing;
  }

  else
  {
    firstObject = [subitemViews firstObject];
    lastObject = [subitemViews lastObject];
    [firstObject bounds];
    MidX = CGRectGetMidX(v50);
    [lastObject _getSourceCenter];
    v23 = v22;
    [firstObject _getSourceCenter];
    v25 = v23 - v24;
    [lastObject bounds];
    v26 = MidX + v25 + CGRectGetMidX(v51);
    v11 = 0.0;
    v36 = 0u;
    v37 = 0u;
    v27 = v26;
    v38 = 0u;
    v39 = 0u;
    v28 = subitemViews;
    v29 = [v28 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v37;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v37 != v31)
          {
            objc_enumerationMutation(v28);
          }

          [*(*(&v36 + 1) + 8 * j) bounds];
          v33 = CGRectGetHeight(v52);
          if (v11 < v33)
          {
            v11 = v33;
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v30);
    }
  }

  v34 = v27;
  v35 = v11;
  result.height = v35;
  result.width = v34;
  return result;
}

- (double)_currentInterItemSpacing
{
  chicletSize = [(_UIBarCustomizationChiclet *)self chicletSize];

  [(_UIBarCustomizationChiclet *)self _interItemSpacingForChicletSize:chicletSize];
  return result;
}

- (double)_interItemSpacingForChicletSize:(int64_t)size
{
  result = 16.0;
  if (size == 1)
  {
    return 20.0;
  }

  return result;
}

- (double)_platterMinHeight
{
  v2 = _UISolariumEnabled();
  result = 38.0;
  if (v2)
  {
    return 44.0;
  }

  return result;
}

- (void)_updatePlatterShadow
{
  chicletSize = [(_UIBarCustomizationChiclet *)self chicletSize];
  if (chicletSize == 1)
  {
    v4 = 4.0;
  }

  else
  {
    v4 = 2.0;
  }

  if (chicletSize == 1)
  {
    v5 = 32.0;
  }

  else
  {
    v5 = 16.0;
  }

  platterView = [(_UIBarCustomizationChiclet *)self platterView];
  layer = [platterView layer];
  LODWORD(v8) = 1036831949;
  [layer setShadowOpacity:v8];

  platterView2 = [(_UIBarCustomizationChiclet *)self platterView];
  layer2 = [platterView2 layer];
  [layer2 setShadowRadius:v5];

  platterView3 = [(_UIBarCustomizationChiclet *)self platterView];
  layer3 = [platterView3 layer];
  [layer3 setShadowOffset:{0.0, v4}];
}

- (void)_traitCollectionDidChangeOnSubtreeInternal:(const _UITraitCollectionChangeDescription *)internal
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = _UIBarCustomizationChiclet;
  [(UIView *)&v18 _traitCollectionDidChangeOnSubtreeInternal:?];
  var1 = internal->var1;
  if (var1)
  {
    var0 = internal->var0;
    if (!internal->var0 || var1[13] != var0[13] || var1[15] != var0[15])
    {
      rootItemView = [(_UIBarCustomizationChiclet *)self rootItemView];
      [rootItemView sizeToFit];

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      subitemViews = [(_UIBarCustomizationChiclet *)self subitemViews];
      v9 = [subitemViews countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v15;
        do
        {
          v12 = 0;
          do
          {
            if (*v15 != v11)
            {
              objc_enumerationMutation(subitemViews);
            }

            [*(*(&v14 + 1) + 8 * v12++) sizeToFit];
          }

          while (v10 != v12);
          v10 = [subitemViews countByEnumeratingWithState:&v14 objects:v19 count:16];
        }

        while (v10);
      }

      [(_UIBarCustomizationChiclet *)self sizeToFit];
      [(UIView *)self setNeedsLayout];
      anchorView = [(_UIBarCustomizationChiclet *)self anchorView];
      [anchorView sizeToFit];
    }
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  width = v12;
  height = v14;
  if ([eventCopy type] == 11)
  {
    v20.origin.x = v9;
    v20.origin.y = v11;
    v20.size.width = width;
    v20.size.height = height;
    v21 = CGRectInset(v20, -10.0, -10.0);
    v9 = v21.origin.x;
    v11 = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
  }

  v22.origin.x = v9;
  v22.origin.y = v11;
  v22.size.width = width;
  v22.size.height = height;
  v19.x = x;
  v19.y = y;
  if (CGRectContainsPoint(v22, v19))
  {
    v16 = 1;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = _UIBarCustomizationChiclet;
    v16 = [(UIView *)&v18 pointInside:eventCopy withEvent:x, y];
  }

  return v16;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  width = v12;
  height = v14;
  type = [eventCopy type];

  if (type == 11)
  {
    v21.origin.x = v9;
    v21.origin.y = v11;
    v21.size.width = width;
    v21.size.height = height;
    v22 = CGRectInset(v21, -10.0, -10.0);
    v9 = v22.origin.x;
    v11 = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
  }

  v23.origin.x = v9;
  v23.origin.y = v11;
  v23.size.width = width;
  v23.size.height = height;
  v20.x = x;
  v20.y = y;
  if (CGRectContainsPoint(v23, v20))
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  [(UIView *)self bounds:interaction];
  v9 = CGRectInset(v8, -10.0, -10.0);
  v5 = [UIPointerRegion regionWithRect:0 identifier:v9.origin.x, v9.origin.y, v9.size.width, v9.size.height];
  [v5 setLatchingAxes:3];

  return v5;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = [(_UIBarCustomizationChiclet *)self platterView:interaction];
  contentWrapperView = [(_UIBarCustomizationChiclet *)self contentWrapperView];
  v7 = contentWrapperView;
  if (v5)
  {
    [v5 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    superview = [v7 superview];
    [v5 convertRect:superview toView:{v9, v11, v13, v15}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [v5 _cornerRadius];
    v26 = v25;
  }

  else
  {
    [contentWrapperView bounds];
    v18 = v27;
    v20 = v28;
    v22 = v29;
    v24 = v30;
    v26 = fmin(v29, v30) * 0.5;
  }

  v31 = objc_opt_new();
  v32 = [UIBezierPath bezierPathWithRoundedRect:v18 cornerRadius:v20, v22, v24, v26];
  [v31 setShadowPath:v32];

  v33 = [[UITargetedPreview alloc] initWithView:v7 parameters:v31];
  v34 = [UIPointerShape shapeWithRoundedRect:v18 cornerRadius:v20, v22, v24, v26];
  v35 = [(UIPointerEffect *)UIPointerLiftEffect effectWithPreview:v33];
  v36 = [UIPointerStyle styleWithEffect:v35 shape:v34];

  return v36;
}

- (BOOL)_isDisplayingRootItem
{
  representedItem = [(_UIBarCustomizationChiclet *)self representedItem];
  if ([representedItem collapsed])
  {
    v4 = 1;
  }

  else
  {
    subitemViews = [(_UIBarCustomizationChiclet *)self subitemViews];
    v4 = [subitemViews count] == 0;
  }

  return v4;
}

- (_UIBarCustomizationChicletAnchorView)anchorView
{
  WeakRetained = objc_loadWeakRetained(&self->_anchorView);

  return WeakRetained;
}

- (_UIBarCustomizationItem)representedItem
{
  WeakRetained = objc_loadWeakRetained(&self->_representedItem);

  return WeakRetained;
}

@end