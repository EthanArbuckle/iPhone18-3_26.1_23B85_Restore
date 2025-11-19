@interface _UIBarCustomizationItemReservoirView
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (_UIBarCustomizationItemReservoirView)initWithItems:(id)a3;
- (double)_minimumLineSpacing;
- (double)_popoverCornerRadius;
- (id)_collectionView:(id)a3 layout:(id)a4 flowLayoutRowAlignmentOptionsForSection:(int64_t)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)flowLayout;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_updateArrowColor;
- (void)_updateEmptyState;
- (void)addItem:(id)a3;
- (void)invalidateLayoutAndForceUpdate:(BOOL)a3;
- (void)layoutSubviews;
- (void)removeItem:(id)a3;
- (void)scrollViewDidChangeContentSize:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setDoneAction:(id)a3;
- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4;
- (void)setItems:(id)a3;
- (void)setResetAction:(id)a3;
- (void)sizeToFit;
@end

@implementation _UIBarCustomizationItemReservoirView

- (_UIBarCustomizationItemReservoirView)initWithItems:(id)a3
{
  v68[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v65.receiver = self;
  v65.super_class = _UIBarCustomizationItemReservoirView;
  v5 = [(UIView *)&v65 initWithFrame:0.0, 0.0, 340.0, 188.0];
  v6 = v5;
  if (v5)
  {
    [(UIView *)v5 setAnchorPoint:0.5, 0.0];
    v7 = _UISolariumEnabled();
    v8 = objc_opt_new();
    if (v7)
    {
      [(UIView *)v6 _setBackground:v8];

      v9 = [[UIView alloc] initWithFrame:0.0, 0.0, 20.0, 20.0];
      [(UIView *)v9 _setContinuousCornerRadius:3.0];
      CGAffineTransformMakeRotation(&v64, 0.785398163);
      v66 = v64;
      [(UIView *)v9 setTransform:&v66];
      v10 = [[_UIViewGlass alloc] initWithVariant:0 size:0 smoothness:1 subdued:10.0];
      [(UIView *)v9 _setBackground:v10];

      [(UIView *)v6 addSubview:v9];
    }

    else
    {
      [v8 moveToPoint:{23.0, 0.0}];
      [v8 addQuadCurveToPoint:9.52847097 controlPoint:{-5.83629763, 15.0, 0.0}];
      [v8 addLineToPoint:{2.05182339, -13.8113884}];
      [v8 addQuadCurveToPoint:-2.05182339 controlPoint:{-13.8113884, 0.0, -16.0}];
      [v8 addLineToPoint:{-9.52847097, -5.83629763}];
      [v8 addQuadCurveToPoint:-23.0 controlPoint:{0.0, -15.0, 0.0}];
      [v8 addLineToPoint:{-23.0, 1.0}];
      [v8 addLineToPoint:{23.0, 1.0}];
      [v8 closePath];
      [v8 bounds];
      v11 = -CGRectGetMinX(v69);
      [v8 bounds];
      MinY = CGRectGetMinY(v70);
      CGAffineTransformMakeTranslation(&v66, v11, -MinY);
      [v8 applyTransform:&v66];
      v13 = [_UIShapeView alloc];
      [v8 bounds];
      Width = CGRectGetWidth(v71);
      [v8 bounds];
      v9 = [(UIView *)v13 initWithFrame:0.0, 0.0, Width, CGRectGetHeight(v72) + -1.0];
      [(UIView *)v6 anchorPoint];
      [(UIView *)v9 setAnchorPoint:?];
      v15 = [v8 CGPath];
      v16 = [(UIView *)v9 shapeLayer];
      [v16 setPath:v15];

      [(UIView *)v6 addSubview:v9];
    }

    [(_UIBarCustomizationItemReservoirView *)v6 setArrowView:v9];

    v17 = [UIView alloc];
    [(UIView *)v6 bounds];
    v18 = [(UIView *)v17 initWithFrame:?];
    [(UIView *)v6 anchorPoint];
    [(UIView *)v18 setAnchorPoint:?];
    [(UIView *)v18 setClipsToBounds:1];
    [(_UIBarCustomizationItemReservoirView *)v6 _popoverCornerRadius];
    [(UIView *)v18 _setContinuousCornerRadius:?];
    if (v7)
    {
      v19 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
      v68[0] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:1];
      v21 = [(UIView *)v18 layer];
      [v21 setFilters:v20];

      v22 = [[_UIViewGlass alloc] initWithVariant:0 size:0 smoothness:1 subdued:10.0];
      [(UIView *)v18 _setBackground:v22];
    }

    else
    {
      v22 = +[UIColor secondarySystemBackgroundColor];
      [(UIView *)v18 setBackgroundColor:v22];
    }

    [(UIView *)v6 addSubview:v18];
    [(_UIBarCustomizationItemReservoirView *)v6 setContainerView:v18];

    [(_UIBarCustomizationItemReservoirView *)v6 _updateArrowColor];
    if ((v7 & 1) == 0)
    {
      v23 = [_UIDiffuseShadowView alloc];
      v24 = [(_UIBarCustomizationItemReservoirView *)v6 containerView];
      [v24 frame];
      v25 = [(_UIDiffuseShadowView *)v23 initWithFrame:?];

      v26 = [(_UIBarCustomizationItemReservoirView *)v6 containerView];
      [v26 anchorPoint];
      [(UIView *)v25 setAnchorPoint:?];

      [(_UIDiffuseShadowView *)v25 setIntensity:0.2];
      [(_UIDiffuseShadowView *)v25 setRadius:30.0];
      [(UIView *)v6 insertSubview:v25 atIndex:0];
      [(_UIBarCustomizationItemReservoirView *)v6 setShadowView:v25];
    }

    v27 = objc_opt_new();
    v28 = [(_UIBarCustomizationItemReservoirView *)v6 containerView];
    [v28 bounds];
    v29 = CGRectGetWidth(v73);
    [v27 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    [v27 setFrame:{0.0, 0.0, v29, v30}];

    [v27 _forceNilGlassGroupTraitOverride];
    v31 = objc_opt_new();
    v32 = [(_UIBarCustomizationItemReservoirView *)v6 containerView];
    v33 = [v32 backgroundColor];
    [v31 setBackgroundColor:v33];

    [v27 setStandardAppearance:v31];
    v34 = [UINavigationItem alloc];
    v35 = _UILocalizedString(@"BAR_CUSTOMIZATION_POPOVER_TITLE", @"Title of bar customization popover.", @"Customize");
    v36 = [(UINavigationItem *)v34 initWithTitle:v35];

    [(UINavigationItem *)v36 _setManualScrollEdgeAppearanceEnabled:1];
    [v27 pushNavigationItem:v36 animated:0];
    v37 = [(_UIBarCustomizationItemReservoirView *)v6 containerView];
    [v37 addSubview:v27];

    [(_UIBarCustomizationItemReservoirView *)v6 setTopBar:v27];
    v38 = objc_opt_new();
    [v38 setEstimatedItemSize:{60.0, 60.0}];
    [v38 setMinimumInteritemSpacing:20.0];
    [(_UIBarCustomizationItemReservoirView *)v6 _minimumLineSpacing];
    [v38 setMinimumLineSpacing:?];
    v39 = _UISolariumEnabled();
    v40 = 30.0;
    if (!v39)
    {
      v40 = 20.0;
    }

    [v38 setSectionInset:{v40, 20.0, 56.0, 20.0}];
    v41 = [UICollectionView alloc];
    v42 = [(_UIBarCustomizationItemReservoirView *)v6 containerView];
    [v42 bounds];
    v43 = [(UICollectionView *)v41 initWithFrame:v38 collectionViewLayout:?];

    v44 = [(_UIBarCustomizationItemReservoirView *)v6 topBar];
    [v44 frame];
    [(UICollectionView *)v43 setContentInset:CGRectGetMaxY(v74), 0.0, 0.0, 0.0];

    v45 = [(_UIBarCustomizationItemReservoirView *)v6 topBar];
    [v45 frame];
    [(UIScrollView *)v43 setScrollIndicatorInsets:CGRectGetMaxY(v75), 0.0, 8.0, 0.0];

    [(UICollectionView *)v43 setBackgroundColor:0];
    [(UICollectionView *)v43 setDataSource:v6];
    [(UICollectionView *)v43 setDelegate:v6];
    [(UICollectionView *)v43 setAllowsSelection:0];
    [(UICollectionView *)v43 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kCustomizationReservoirCellIdentifier"];
    [(UICollectionView *)v43 _setVisibleRectEdgeInsets:0.0, 0.0, -150.0, 0.0];
    v46 = [(_UIBarCustomizationItemReservoirView *)v6 containerView];
    v47 = [(_UIBarCustomizationItemReservoirView *)v6 topBar];
    [v46 insertSubview:v43 belowSubview:v47];

    [(_UIBarCustomizationItemReservoirView *)v6 setCollectionView:v43];
    v48 = objc_opt_new();
    v49 = +[UIColor secondaryLabelColor];
    [v48 setTextColor:v49];

    v50 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCaption2"];
    [v48 setFont:v50];

    [v48 setAdjustsFontForContentSizeCategory:1];
    [v48 setNumberOfLines:0];
    [v48 setTextAlignment:1];
    v51 = _UILocalizedString(@"BAR_CUSTOMIZATION_POPOVER_HINT_TEXT", @"Instructional text displayed at top of bar customization popover.", @"Drag to add or remove items from the toolbar");
    [v48 setText:v51];

    v52 = [(_UIBarCustomizationItemReservoirView *)v6 collectionView];
    [v52 addSubview:v48];

    [(_UIBarCustomizationItemReservoirView *)v6 setTipLabel:v48];
    v53 = objc_opt_new();
    [v53 setAlpha:0.0];
    v54 = _UILocalizedString(@"BAR_CUSTOMIZATION_POPOVER_EMPTY_TEXT", @"Customization popover empty state text.", @"Drag to remove items");
    [v53 setText:v54];

    v55 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleHeadline"];
    [v53 setFont:v55];

    v56 = +[UIColor secondaryLabelColor];
    [v53 setTextColor:v56];

    [v53 setLineBreakMode:4];
    [v53 setAdjustsFontSizeToFitWidth:0];
    v57 = [(_UIBarCustomizationItemReservoirView *)v6 collectionView];
    [v57 addSubview:v53];

    [(_UIBarCustomizationItemReservoirView *)v6 setNoContentLabel:v53];
    v58 = [(_UIBarCustomizationItemReservoirView *)v6 containerView];
    [(UIView *)v6 addSubview:v58];

    [(_UIBarCustomizationItemReservoirView *)v6 setItems:v4];
    v59 = +[UITraitCollection systemTraitsAffectingColorAppearance];
    v60 = [(UIView *)v6 registerForTraitChanges:v59 withAction:sel__updateArrowColor];

    v67 = objc_opt_class();
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
    v62 = [(UIView *)v6 registerForTraitChanges:v61 withHandler:&__block_literal_global_396];
  }

  return v6;
}

- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  self->_isExpanded = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61___UIBarCustomizationItemReservoirView_setExpanded_animated___block_invoke;
  aBlock[3] = &unk_1E70F35E0;
  v29 = a3;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __61___UIBarCustomizationItemReservoirView_setExpanded_animated___block_invoke_2;
  v26[3] = &unk_1E70F35E0;
  v27 = v5;
  v26[4] = self;
  v8 = _Block_copy(v26);
  if (v4)
  {
    v9 = _UISolariumEnabled();
    if (v5)
    {
      v10 = 0;
    }

    else
    {
      v10 = 100000000;
    }

    v11 = dispatch_time(0, v10);
    if (v9)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61___UIBarCustomizationItemReservoirView_setExpanded_animated___block_invoke_4;
      block[3] = &unk_1E70F0F78;
      v25 = v7;
      dispatch_after(v11, MEMORY[0x1E69E96A0], block);
      v12 = 0.6;
      if (!v5)
      {
        v12 = 1.0;
      }

      v13 = 0.4;
      if (v5)
      {
        v13 = 0.5;
      }

      v14 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:v12 response:v13];
      [UIView _animateUsingSpringBehavior:v14 tracking:0 animations:v8 completion:0];

      v15 = v25;
    }

    else
    {
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __61___UIBarCustomizationItemReservoirView_setExpanded_animated___block_invoke_5;
      v22 = &unk_1E70F0F78;
      v23 = v7;
      dispatch_after(v11, MEMORY[0x1E69E96A0], &v19);
      v16 = 0.8;
      if (!v5)
      {
        v16 = 1.0;
      }

      v17 = 0.3;
      if (v5)
      {
        v17 = 0.4;
      }

      v18 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:v16 response:v17, v19, v20, v21, v22];
      [UIView _animateUsingSpringBehavior:v18 tracking:0 animations:v8 completion:0];

      v15 = v23;
    }
  }

  else
  {
    v7[2](v7);
    v8[2](v8);
  }
}

- (void)setResetAction:(id)a3
{
  v4 = a3;
  v7 = [[UIBarButtonItem alloc] initWithPrimaryAction:v4];

  v5 = [(_UIBarCustomizationItemReservoirView *)self topBar];
  v6 = [v5 topItem];
  [v6 setLeftBarButtonItem:v7];
}

- (void)setDoneAction:(id)a3
{
  v4 = a3;
  v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 primaryAction:v4];

  v5 = [(_UIBarCustomizationItemReservoirView *)self topBar];
  v6 = [v5 topItem];
  [v6 setRightBarButtonItem:v7];
}

- (void)setItems:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_items != v5)
  {
    objc_storeStrong(&self->_items, a3);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v5;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          v12 = [_UIBarCustomizationChiclet alloc];
          v13 = [(_UIBarCustomizationChiclet *)v12 initWithItem:v11, v15];
          [(_UIBarCustomizationChiclet *)v13 setChicletSize:1];
          [(_UIBarCustomizationChiclet *)v13 setPlatterVisible:1];
          [(_UIBarCustomizationChiclet *)v13 setLabelVisible:1];
          [(_UIBarCustomizationChiclet *)v13 sizeToFit];

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    self->_computedInitialSize = 0;
    v14 = [(_UIBarCustomizationItemReservoirView *)self collectionView];
    [v14 reloadData];

    [(_UIBarCustomizationItemReservoirView *)self invalidateLayoutAndForceUpdate:0];
    [(_UIBarCustomizationItemReservoirView *)self _updateEmptyState];
  }
}

- (void)addItem:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 _chiclet];
  [v5 setPlatterVisible:1];
  v6 = [v5 window];

  if (v6)
  {
    v7 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.2];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48___UIBarCustomizationItemReservoirView_addItem___block_invoke;
    v14[3] = &unk_1E70F3590;
    v15 = v5;
    [UIView _animateUsingSpringBehavior:v7 tracking:0 animations:v14 completion:0];
  }

  else
  {
    [v5 setLabelVisible:1];
  }

  v8 = [(_UIBarCustomizationItemReservoirView *)self items];
  [v8 addObject:v4];

  v9 = [(_UIBarCustomizationItemReservoirView *)self collectionView];
  v10 = MEMORY[0x1E696AC88];
  v11 = [(_UIBarCustomizationItemReservoirView *)self items];
  v12 = [v10 indexPathForItem:objc_msgSend(v11 inSection:{"count") - 1, 0}];
  v16[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v9 insertItemsAtIndexPaths:v13];

  [(_UIBarCustomizationItemReservoirView *)self _updateEmptyState];
}

- (void)removeItem:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIBarCustomizationItemReservoirView *)self items];
  v6 = [v5 indexOfObject:v4];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(_UIBarCustomizationItemReservoirView *)self items];
    [v7 removeObjectAtIndex:v6];

    v8 = [MEMORY[0x1E696AC88] indexPathForItem:v6 inSection:0];
    v9 = [(_UIBarCustomizationItemReservoirView *)self collectionView];
    v10 = [v9 cellForItemAtIndexPath:v8];

    v11 = [(_UIBarCustomizationItemReservoirView *)self collectionView];
    v13[0] = v8;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v11 deleteItemsAtIndexPaths:v12];

    [v10 setChiclet:0];
  }

  [(_UIBarCustomizationItemReservoirView *)self _updateEmptyState];
}

- (void)layoutSubviews
{
  v80.receiver = self;
  v80.super_class = _UIBarCustomizationItemReservoirView;
  [(UIView *)&v80 layoutSubviews];
  [(UIView *)self bounds];
  x = v81.origin.x;
  y = v81.origin.y;
  width = v81.size.width;
  height = v81.size.height;
  MidX = CGRectGetMidX(v81);
  v8 = [(_UIBarCustomizationItemReservoirView *)self arrowView];
  [v8 setCenter:{MidX, 0.0}];

  v9 = _UISolariumEnabled();
  v10 = [(_UIBarCustomizationItemReservoirView *)self arrowView];
  [v10 frame];
  if (v9)
  {
    MidY = CGRectGetMidY(*&v11);

    v82.origin.x = x;
    v82.origin.y = y;
    v82.size.width = width;
    v82.size.height = height;
    v16 = CGRectGetMidX(v82);
    v17 = [(_UIBarCustomizationItemReservoirView *)self containerView];
    [v17 setCenter:{v16, MidY}];

    v83.origin.x = x;
    v83.origin.y = y;
    v83.size.width = width;
    v83.size.height = height;
    v18 = CGRectGetWidth(v83);
    v84.origin.x = x;
    v84.origin.y = y;
    v84.size.width = width;
    v84.size.height = height;
    v19 = CGRectGetHeight(v84) - MidY;
    if (self->_isExpanded)
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 * 0.7;
    }
  }

  else
  {
    MaxY = CGRectGetMaxY(*&v11);

    v85.origin.x = x;
    v85.origin.y = y;
    v85.size.width = width;
    v85.size.height = height;
    v22 = CGRectGetMidX(v85);
    v23 = [(_UIBarCustomizationItemReservoirView *)self containerView];
    [v23 setCenter:{v22, MaxY}];

    v86.origin.x = x;
    v86.origin.y = y;
    v86.size.width = width;
    v86.size.height = height;
    v18 = CGRectGetWidth(v86);
    v87.origin.x = x;
    v87.origin.y = y;
    v87.size.width = width;
    v87.size.height = height;
    v20 = CGRectGetHeight(v87) - MaxY;
  }

  v24 = [(_UIBarCustomizationItemReservoirView *)self containerView];
  [v24 setBounds:{0.0, 0.0, v18, v20}];

  v25 = [(_UIBarCustomizationItemReservoirView *)self containerView];
  [v25 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  if (_UISolariumEnabled())
  {
    v34 = 10.0;
  }

  else
  {
    v34 = 0.0;
  }

  v88.origin.x = v27;
  v88.origin.y = v29;
  v88.size.width = v31;
  v88.size.height = v33;
  v35 = CGRectGetWidth(v88);
  v36 = [(_UIBarCustomizationItemReservoirView *)self topBar];
  [v36 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v38 = v37;

  v39 = [(_UIBarCustomizationItemReservoirView *)self topBar];
  v74 = v35;
  v75 = v34;
  rect = v38;
  [v39 setFrame:{0.0, v34, v35, v38}];

  v40 = [(_UIBarCustomizationItemReservoirView *)self collectionView];
  [v40 setFrame:{v27, v29, v31, v33}];

  v41 = [(_UIBarCustomizationItemReservoirView *)self containerView];
  [v41 frame];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = [(_UIBarCustomizationItemReservoirView *)self shadowView];
  [v50 setFrame:{v43, v45, v47, v49}];

  v51 = [(_UIBarCustomizationItemReservoirView *)self tipLabel];
  v52 = [(_UIBarCustomizationItemReservoirView *)self noContentLabel];
  v89.origin.x = v27;
  v89.origin.y = v29;
  v89.size.width = v31;
  v89.size.height = v33;
  v53 = CGRectGetWidth(v89) + -40.0;
  [v51 sizeThatFits:{v53, 0.0}];
  v55 = v54;
  v57 = v56;
  [v52 sizeThatFits:{v53, 0.0}];
  v59 = v58;
  v61 = v60;
  [v51 setBounds:{0.0, 0.0, v55, v57}];
  [v52 setBounds:{0.0, 0.0, v59, v61}];
  if (self->_isEmpty)
  {
    v90.origin.x = 0.0;
    v90.size.width = v74;
    v90.origin.y = v75;
    v90.size.height = rect;
    v62 = CGRectGetHeight(v90);
    v63 = v27 + 0.0 + v31 * 0.5;
    v64 = v29 + v62 * 0.5 + (v33 - (v62 * 0.5 + 0.0)) * 0.5;
    v65 = [(_UIBarCustomizationItemReservoirView *)self collectionView];
    [v65 contentInset];
    v67 = v64 - v66;

    [v51 setCenter:{v63, v67}];
    CGAffineTransformMakeScale(&v79, v59 / v55, v61 / v57);
    v78 = v79;
    [v51 setTransform:&v78];
    [v51 setAlpha:0.0];
    [v52 setCenter:{v63, v67}];
    v68 = *(MEMORY[0x1E695EFD0] + 16);
    *&v78.a = *MEMORY[0x1E695EFD0];
    *&v78.c = v68;
    *&v78.tx = *(MEMORY[0x1E695EFD0] + 32);
    [v52 setTransform:&v78];
    v69 = 1.0;
  }

  else
  {
    v76 = v55;
    if (_UISolariumEnabled())
    {
      v70 = 10.0;
    }

    else
    {
      v70 = 1.0;
    }

    v91.origin.x = v27;
    v91.origin.y = v29;
    v91.size.width = v31;
    v91.size.height = v33;
    v71 = CGRectGetMidX(v91);
    [v51 setCenter:{v71, v57 * 0.5 + v70}];
    v72 = *(MEMORY[0x1E695EFD0] + 16);
    *&v78.a = *MEMORY[0x1E695EFD0];
    *&v78.c = v72;
    *&v78.tx = *(MEMORY[0x1E695EFD0] + 32);
    [v51 setTransform:&v78];
    [v51 setAlpha:1.0];
    [v52 setCenter:{v71, v57 * 0.5 + v70}];
    CGAffineTransformMakeScale(&v77, v76 / v59, v57 / v61);
    v78 = v77;
    [v52 setTransform:&v78];
    v69 = 0.0;
  }

  [v52 setAlpha:v69];
}

- (void)sizeToFit
{
  v3 = [(_UIBarCustomizationItemReservoirView *)self items];
  v4 = dbl_18A680420[[v3 count] > 0xB];

  v5 = [(_UIBarCustomizationItemReservoirView *)self arrowView];
  [v5 frame];
  MaxY = CGRectGetMaxY(v21);
  v7 = [(_UIBarCustomizationItemReservoirView *)self collectionView];
  [v7 contentInset];
  v9 = MaxY + v8;
  v10 = [(_UIBarCustomizationItemReservoirView *)self collectionView];
  [v10 contentSize];
  v12 = v9 + v11;

  v13 = fmax(v12, 188.0);
  v14 = [(UIView *)self superview];
  v19 = v14;
  if (v14)
  {
    [v14 bounds];
    Width = CGRectGetWidth(v22);
    [UIViewController _horizontalContentMarginForView:v19];
    v17 = Width - (v16 + v16);
    if (v4 >= v17)
    {
      v4 = v17;
    }

    [v19 bounds];
    v18 = CGRectGetHeight(v23) * 0.6;
    if (v13 >= v18)
    {
      v13 = v18;
    }
  }

  [(UIView *)self setBounds:0.0, 0.0, v4, v13];
}

- (void)invalidateLayoutAndForceUpdate:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIBarCustomizationItemReservoirView *)self collectionView];
  v6 = [v5 collectionViewLayout];
  [v6 invalidateLayout];

  [(UIView *)self setNeedsLayout];
  if (v3)
  {
    [(UIView *)self layoutIfNeeded];
  }

  [(_UIBarCustomizationItemReservoirView *)self sizeToFit];
}

- (id)flowLayout
{
  v2 = [(_UIBarCustomizationItemReservoirView *)self collectionView];
  v3 = [v2 collectionViewLayout];

  return v3;
}

- (void)_updateArrowColor
{
  v3 = [(_UIBarCustomizationItemReservoirView *)self arrowView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [(_UIBarCustomizationItemReservoirView *)self containerView];
    v5 = [v11 backgroundColor];
    v6 = [(UIView *)self traitCollection];
    v7 = [v5 resolvedColorWithTraitCollection:v6];
    v8 = [v7 CGColor];
    v9 = [(_UIBarCustomizationItemReservoirView *)self arrowView];
    v10 = [v9 shapeLayer];
    [v10 setFillColor:v8];
  }
}

- (void)_updateEmptyState
{
  v3 = [(_UIBarCustomizationItemReservoirView *)self items];
  self->_isEmpty = [v3 count] == 0;
}

- (double)_minimumLineSpacing
{
  v2 = [(UIView *)self traitCollection];
  v3 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCaption2" compatibleWithTraitCollection:v2];

  [v3 lineHeight];
  v5 = v4 + v4 + 10.0 + 14.0;

  return v5;
}

- (double)_popoverCornerRadius
{
  v2 = _UISolariumEnabled();
  result = 13.0;
  if (v2)
  {
    return 27.0;
  }

  return result;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = [(_UIBarCustomizationItemReservoirView *)self collectionView];
  v12 = [v5 collectionViewLayout];

  [v4 contentOffset];
  v7 = v6;
  [v4 contentInset];
  v9 = v8;

  v10 = [(_UIBarCustomizationItemReservoirView *)self topBar];
  v11 = [v10 topItem];
  [v11 _setManualScrollEdgeAppearanceProgress:{fmax(fmin((v7 + v9) / 10.0, 1.0), 0.0)}];
}

- (void)scrollViewDidChangeContentSize:(id)a3
{
  if (!self->_computedInitialSize)
  {
    self->_computedInitialSize = 1;
    [(_UIBarCustomizationItemReservoirView *)self sizeToFit];
  }

  v4 = [_UIScrollPocketContainerInteraction alloc];
  v5 = [(_UIBarCustomizationItemReservoirView *)self collectionView];
  v7 = [(_UIScrollPocketContainerInteraction *)v4 initWithScrollView:v5 edge:1];

  v6 = [(_UIBarCustomizationItemReservoirView *)self topBar];
  [v6 addInteraction:v7];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(_UIBarCustomizationItemReservoirView *)self items:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"kCustomizationReservoirCellIdentifier" forIndexPath:v6];
  v8 = [(_UIBarCustomizationItemReservoirView *)self items];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "item")}];
  v10 = [v9 _chiclet];

  [v7 setChiclet:v10];
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v11 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v13 = _UIInternalPreference_BarCustomizationDebugEnabled;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_BarCustomizationDebugEnabled)
    {
      while (v11 >= v13)
      {
        _UIInternalPreferenceSync(v11, &_UIInternalPreference_BarCustomizationDebugEnabled, @"BarCustomizationDebugEnabled", _UIInternalPreferenceUpdateBool);
        v13 = _UIInternalPreference_BarCustomizationDebugEnabled;
        if (v11 == _UIInternalPreference_BarCustomizationDebugEnabled)
        {
          goto LABEL_4;
        }
      }

      if (byte_1EA95E154)
      {
        v14 = +[UIColor redColor];
        v15 = [v14 CGColor];
        v16 = [v7 layer];
        [v16 setBorderColor:v15];

        v17 = [v7 layer];
        [v17 setBorderWidth:1.0];
      }
    }
  }

LABEL_4:

  return v7;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(_UIBarCustomizationItemReservoirView *)self items];
  v8 = [v6 item];

  v9 = [v7 objectAtIndexedSubscript:v8];
  v10 = [v9 _chiclet];

  [v10 fittingSizeWithChicletSize:1];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v7 = a4;
  [a3 bounds];
  Width = CGRectGetWidth(v21);
  [v7 sectionInset];
  v10 = Width - v9;
  [v7 sectionInset];
  v12 = v11;

  v13 = [(_UIBarCustomizationItemReservoirView *)self tipLabel];
  [v13 sizeThatFits:{v10 - v12, 20.0}];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (id)_collectionView:(id)a3 layout:(id)a4 flowLayoutRowAlignmentOptionsForSection:(int64_t)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a4;
  [a3 bounds];
  Width = CGRectGetWidth(v34);
  [v7 sectionInset];
  v10 = Width - v9;
  [v7 sectionInset];
  v12 = v10 - v11;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = [(_UIBarCustomizationItemReservoirView *)self items];
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    v17 = -20.0;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = [*(*(&v25 + 1) + 8 * i) _chiclet];
        [v19 bounds];
        v20 = CGRectGetWidth(v35);

        if (v17 + 20.0 + v20 <= v12)
        {
          v17 = v17 + v20 + 20.0;
        }

        else
        {
          v17 = v20;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v15);
  }

  else
  {
    v17 = -20.0;
  }

  v30[0] = &unk_1EFE31D08;
  v29[0] = @"UIFlowLayoutCommonRowHorizontalAlignmentKey";
  v29[1] = @"UIFlowLayoutLastRowHorizontalAlignmentKey";
  if (v17 <= v12 + -60.0)
  {
    v21 = 0;
  }

  else
  {
    v21 = 3;
  }

  v22 = [MEMORY[0x1E696AD98] numberWithInt:v21];
  v29[2] = @"UIFlowLayoutRowVerticalAlignmentKey";
  v30[1] = v22;
  v30[2] = &unk_1EFE31D20;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];

  return v23;
}

@end