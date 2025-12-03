@interface UITabBarCustomizeView
- (UITabBarCustomizeView)initWithFrame:(CGRect)frame;
- (id)itemInTabBarWithTouches:(id)touches withEvent:(id)event;
- (id)titleLabelFont;
- (void)adjustDragImageWithTouches:(id)touches withEvent:(id)event;
- (void)layoutSubviews;
- (void)setTabBar:(id)bar currentItems:(id)items availableItems:(id)availableItems;
- (void)tabBarTouchesBegan:(id)began withEvent:(id)event;
- (void)tabBarTouchesEnded:(id)ended withEvent:(id)event;
- (void)tabBarTouchesMoved:(id)moved withEvent:(id)event;
- (void)tintTabBarItemsForEdit:(BOOL)edit;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)updateProxiesSelection;
@end

@implementation UITabBarCustomizeView

- (UITabBarCustomizeView)initWithFrame:(CGRect)frame
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = UITabBarCustomizeView;
  v3 = [(UIView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_itemsInRowCount = 3;
    v5 = objc_alloc_init(UILabel);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v5;

    v7 = v4->_titleLabel;
    v8 = _UINSLocalizedStringWithDefaultValue(@"Drag the icons to organize tabs.", @"Drag the icons to organize tabs.");
    [(UILabel *)v7 setText:v8];

    v9 = v4->_titleLabel;
    titleLabelFont = [(UITabBarCustomizeView *)v4 titleLabelFont];
    [(UILabel *)v9 setFont:titleLabelFont];

    v11 = v4->_titleLabel;
    v12 = +[UIColor secondaryLabelColor];
    [(UILabel *)v11 setTextColor:v12];

    [(UILabel *)v4->_titleLabel setTextAlignment:1];
    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(UILabel *)v4->_titleLabel setLineBreakMode:4];
    [(UIView *)v4 addSubview:v4->_titleLabel];
    [(UIView *)v4 setExclusiveTouch:1];
    [(UIView *)v4 setMultipleTouchEnabled:0];
    [(UIView *)v4 setAutoresizingMask:18];
    [(UIView *)v4 setAutoresizesSubviews:1];
    v17[0] = 0x1EFE32440;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v14 = [(UIView *)v4 _registerForTraitTokenChanges:v13 withHandler:&__block_literal_global_77];
  }

  return v4;
}

void __39__UITabBarCustomizeView_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2[59];
  v4 = a2;
  v3 = [v4 titleLabelFont];
  [v2 setFont:v3];

  [v4 setNeedsLayout];
}

- (id)titleLabelFont
{
  traitCollection = [(UIView *)self traitCollection];
  traitCollection2 = [(UIView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];
  v6 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_10.isa);

  if (v6 == NSOrderedDescending)
  {
    v7 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:@"UICTContentSizeCategoryAccessibilityL"];

    traitCollection = v7;
  }

  v8 = [UIFontMetrics metricsForTextStyle:@"UICTFontTextStyleTitle2"];
  v9 = [off_1E70ECC18 systemFontOfSize:21.0];
  v10 = [v8 scaledFontForFont:v9 compatibleWithTraitCollection:traitCollection];

  return v10;
}

- (void)tintTabBarItemsForEdit:(BOOL)edit
{
  v23 = *MEMORY[0x1E69E9840];
  if (edit)
  {
    v19 = 0uLL;
    v20 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    items = [(UITabBar *)self->_tabBar items];
    v5 = [items countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(items);
          }

          [*(*(&v17 + 1) + 8 * i) _setSelected:{-[NSArray containsObject:](self->_availableItems, "containsObject:", *(*(&v17 + 1) + 8 * i))}];
        }

        v6 = [items countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v15 = 0uLL;
    v16 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    items = [(UITabBar *)self->_tabBar items];
    v9 = [items countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(items);
          }

          [*(*(&v13 + 1) + 8 * j) _setSelected:*(*(&v13 + 1) + 8 * j) == self->_selectedBeforeItem];
        }

        v10 = [items countByEnumeratingWithState:&v13 objects:v21 count:16];
      }

      while (v10);
    }
  }
}

- (void)updateProxiesSelection
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_proxies;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        items = [(UITabBar *)self->_tabBar items];
        item = [v8 item];
        [v8 setSelected:{objc_msgSend(items, "containsObject:", item) ^ 1}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)setTabBar:(id)bar currentItems:(id)items availableItems:(id)availableItems
{
  v40 = *MEMORY[0x1E69E9840];
  barCopy = bar;
  availableItemsCopy = availableItems;
  objc_storeStrong(&self->_tabBar, bar);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  proxies = self->_proxies;
  self->_proxies = v9;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = availableItemsCopy;
  v11 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = [[UITabBarItemProxy alloc] initWithItem:*(*(&v34 + 1) + 8 * i) inTabBar:barCopy];
        view = [(UITabBarItemProxy *)v15 view];
        v17 = +[UIColor secondaryLabelColor];
        [view _setUnselectedTintColor:v17];

        [(NSMutableArray *)self->_proxies addObject:v15];
        view2 = [(UITabBarItemProxy *)v15 view];
        [(UIView *)self addSubview:view2];
      }

      v12 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v12);
  }

  [(UITabBarCustomizeView *)self updateProxiesSelection];
  items = [barCopy items];
  v20 = [items mutableCopy];
  fixedItems = self->_fixedItems;
  self->_fixedItems = v20;

  [(NSMutableArray *)self->_fixedItems removeObjectsInArray:obj];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  items2 = [(UITabBar *)self->_tabBar items];
  v23 = [items2 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v31;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(items2);
        }

        v27 = *(*(&v30 + 1) + 8 * j);
        if ([v27 _isSelected])
        {
          objc_storeStrong(&self->_selectedBeforeItem, v27);
        }
      }

      v24 = [items2 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v24);
  }

  [(UITabBarCustomizeView *)self setAvailableItems:obj];
  [(UIView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v92 = *MEMORY[0x1E69E9840];
  [(UIView *)self->_tabBar bounds];
  [(UIView *)self safeAreaInsets];
  v4 = v3;
  navigationBar = [(UITabBarCustomizeView *)self navigationBar];
  [navigationBar frame];
  v7 = v6;
  v9 = v8;

  navigationBar2 = [(UITabBarCustomizeView *)self navigationBar];
  [navigationBar2 setFrame:{0.0, v4, v7, v9}];

  v93.origin.x = 0.0;
  v93.origin.y = v4;
  v93.size.width = v7;
  v93.size.height = v9;
  MaxY = CGRectGetMaxY(v93);
  [(UIView *)self safeAreaInsets];
  v15 = v14;
  v17 = v16;
  if (v12 >= MaxY)
  {
    v18 = v12;
  }

  else
  {
    v18 = MaxY;
  }

  [(UIView *)self bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = v15 + v17;
  v28 = [(NSMutableArray *)self->_proxies count];
  traitCollection = [(UIView *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  v31 = dyld_program_sdk_at_least();
  v32 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v32 userInterfaceIdiom];

  v34 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
  if (v31)
  {
    v34 = (horizontalSizeClass & 0xFFFFFFFFFFFFFFFDLL) == 0 && (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
  }

  v36 = v24 - v27;
  if (v34)
  {
    height = 160.0;
  }

  else
  {
    height = 80.0;
  }

  v38 = *(&self->super._viewFlags + 2);
  v39 = +[UIDevice currentDevice];
  v40 = &OBJC_IVAR____UITextLayoutFragmentViewBase__containerOrigin;
  v41 = v28;
  if ([v39 userInterfaceIdiom])
  {

    if (v28 >= 13)
    {
      v42 = 0;
LABEL_19:
      v46 = vcvtmd_s64_f64(v36 / height);
      v47 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    window = [(UIView *)self window];
    windowScene = [window windowScene];
    v45 = [windowScene _interfaceOrientation] - 3;
    v42 = v45 < 2;

    if (v41 > 12)
    {
      v40 = &OBJC_IVAR____UITextLayoutFragmentViewBase__containerOrigin;
      goto LABEL_19;
    }

    if (v45 <= 1)
    {
      v47 = 0;
      v42 = 1;
      v46 = 5;
      v40 = &OBJC_IVAR____UITextLayoutFragmentViewBase__containerOrigin;
LABEL_20:
      self->_itemsInRowCount = v46;
      v48 = v41 > 9;
      if (v41 > 9)
      {
        v42 = 1;
      }

      goto LABEL_27;
    }

    v40 = &OBJC_IVAR____UITextLayoutFragmentViewBase__containerOrigin;
  }

  self->_itemsInRowCount = 3;
  if (v41 <= 9)
  {
    v48 = 0;
    v47 = 0;
    v49 = v40[779];
    v50 = v49;
    goto LABEL_32;
  }

  v47 = 0;
  v42 = 1;
  v48 = 1;
LABEL_27:
  v49 = v40[779];
  v50 = v49;
  superview = [*(&self->super.super.super.isa + v49) superview];
  v52 = superview;
  if (v42)
  {
  }

  if (v52 == self)
  {
    [*(&self->super.super.super.isa + v49) removeFromSuperview];
    goto LABEL_34;
  }

LABEL_32:
  superview2 = [*(&self->super.super.super.isa + v50) superview];

  if (superview2 != self)
  {
    [(UIView *)self addSubview:*(&self->super.super.super.isa + v50)];
  }

LABEL_34:
  [(UITabBarCustomizeView *)self updateProxiesSelection];
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __39__UITabBarCustomizeView_layoutSubviews__block_invoke;
  v90[3] = &unk_1E70F3590;
  v90[4] = self;
  [UIView performWithoutAnimation:v90];
  if (v47)
  {
    v94.origin.x = v15 + v20;
    v94.origin.y = v22 + v18;
    v94.size.width = v36;
    v94.size.height = v26 - (v85 + v18);
    self->_gridOffset = CGRectGetMinY(v94);
    v95.origin.x = v15 + v20;
    v95.origin.y = v22 + v18;
    v95.size.width = v36;
    v95.size.height = v26 - (v85 + v18);
    MinX = CGRectGetMinX(v95);
    UIRoundToViewScale(self);
    height = v55;
  }

  else
  {
    [(UIView *)self bounds];
    UIRoundToViewScale(self);
    MinX = v56;
    [(NSArray *)self->_availableItems count];
    [(UIView *)self bounds];
    v58 = 0.0;
    if (!v48)
    {
      [*(&self->super.super.super.isa + v49) sizeThatFits:{v57 - (MinX + MinX), 3.40282347e38}];
      v58 = v59;
    }

    [(UIView *)self bounds];
    if ([(NSMutableArray *)self->_proxies count])
    {
      v60 = [(NSMutableArray *)self->_proxies objectAtIndexedSubscript:0];
      view = [v60 view];
      [view frame];
    }

    UIRoundToViewScale(self);
    if (!v48)
    {
      UIRoundToViewScale(self);
      v64 = v63;
      v65 = *(&self->super.super.super.isa + v49);
      [(UIView *)self bounds];
      UIRoundToViewScale(self);
      [v65 setFrame:?];
      v62 = v58 + v64 + 20.0;
    }

    self->_gridOffset = v62;
  }

  p_firstItemRect = &self->_firstItemRect;
  self->_firstItemRect.size.width = height;
  self->_firstItemRect.size.height = height;
  width = height;
  v68 = MinX;
  if ((v38 & 0x400000) != 0)
  {
    [(UIView *)self bounds];
    v69 = CGRectGetWidth(v96) - MinX;
    v97.origin.x = p_firstItemRect->origin.x;
    v97.origin.y = self->_firstItemRect.origin.y;
    v97.size.width = self->_firstItemRect.size.width;
    v97.size.height = self->_firstItemRect.size.height;
    v68 = v69 - CGRectGetWidth(v97);
    width = self->_firstItemRect.size.width;
    height = self->_firstItemRect.size.height;
  }

  p_firstItemRect->origin.x = v68;
  gridOffset = self->_gridOffset;
  self->_firstItemRect.origin.y = gridOffset;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v71 = self->_proxies;
  v72 = [(NSMutableArray *)v71 countByEnumeratingWithState:&v86 objects:v91 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = 0;
    v75 = *v87;
    v76 = 0.5;
    do
    {
      v77 = 0;
      v78 = v74;
      v79 = v74 + 1;
      do
      {
        if (*v87 != v75)
        {
          objc_enumerationMutation(v71);
        }

        view2 = [*(*(&v86 + 1) + 8 * v77) view];
        [view2 frame];
        [view2 setFrame:{round(width * 0.5 + v68 - v81 * v76), round(height * 0.5 + gridOffset - v82 * v76)}];
        if (v79 % self->_itemsInRowCount)
        {
          if ((v38 & 0x400000) != 0)
          {
            v68 = v68 - width;
          }

          else
          {
            v68 = width + v68;
          }
        }

        else
        {
          v83 = MinX;
          if ((v38 & 0x400000) != 0)
          {
            [(UIView *)self bounds];
            v84 = CGRectGetWidth(v98) - MinX;
            v99.origin.x = v68;
            v99.origin.y = gridOffset;
            v99.size.width = width;
            v99.size.height = height;
            v83 = v84 - CGRectGetWidth(v99);
            v76 = 0.5;
          }

          gridOffset = height + gridOffset;
          v68 = v83;
        }

        ++v77;
        ++v79;
      }

      while (v73 != v77);
      v74 = v78 + v73;
      v73 = [(NSMutableArray *)v71 countByEnumeratingWithState:&v86 objects:v91 count:16];
    }

    while (v73);
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if (!self->_draggingProxy)
  {
    v8 = *(&self->super._viewFlags + 2);
    width = self->_firstItemRect.size.width;
    height = self->_firstItemRect.size.height;
    x = self->_firstItemRect.origin.x;
    y = self->_firstItemRect.origin.y;
    if ((v8 & 0x400000) != 0)
    {
      [(UIView *)self bounds];
      v13 = CGRectGetWidth(v51);
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      v14 = v13 - CGRectGetWidth(v52);
      v53.origin.x = x;
      v53.origin.y = y;
      v53.size.width = width;
      v53.size.height = height;
      x = v14 - CGRectGetMinX(v53);
    }

    anyObject = [beganCopy anyObject];
    [anyObject locationInView:self];
    v17 = v16;
    v19 = v18;

    v20 = vcvtmd_s64_f64((v17 - x) / width);
    v21 = v20 & ~(v20 >> 31);
    itemsInRowCount = self->_itemsInRowCount;
    if (itemsInRowCount <= v21)
    {
      LODWORD(v21) = itemsInRowCount - 1;
    }

    if ((v8 & 0x400000) != 0)
    {
      LODWORD(v21) = ~v21 + itemsInRowCount;
    }

    v23 = (floor((v19 - y) / height) * itemsInRowCount + v21);
    if ((v23 & 0x80000000) != 0 || [(NSMutableArray *)self->_proxies count]<= v23)
    {
      v24 = 0;
    }

    else
    {
      v24 = [(NSMutableArray *)self->_proxies objectAtIndex:v23];
    }

    draggingProxy = self->_draggingProxy;
    self->_draggingProxy = v24;

    v26 = self->_draggingProxy;
    if (v26)
    {
      view = [(UITabBarItemProxy *)v26 view];
      v28 = objc_alloc_init(UISnapshotView);
      dragImage = self->_dragImage;
      self->_dragImage = v28;

      [(UISnapshotView *)self->_dragImage captureSnapshotOfView:view withSnapshotType:1];
      [(UIView *)self->_dragImage setOpaque:0];
      [(UIView *)self->_dragImage setUserInteractionEnabled:0];
      superview = [(UIView *)self superview];
      [view bounds];
      [superview convertRect:view fromView:?];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;
      anyObject2 = [beganCopy anyObject];
      [anyObject2 locationInView:self];
      v41 = v40;
      v43 = v42;

      self->_startPoint.x = round(v41 - (v32 + v36 * 0.5));
      self->_startPoint.y = round(v43 - (v34 + v38 * 0.5));
      [(UISnapshotView *)self->_dragImage setFrame:v32, v34, v36, v38];
      [superview addSubview:self->_dragImage];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __48__UITabBarCustomizeView_touchesBegan_withEvent___block_invoke;
      v48[3] = &unk_1E70F6228;
      v48[4] = self;
      v49 = beganCopy;
      v50 = eventCopy;
      [UIView animateWithDuration:32 delay:v48 options:0 animations:0.2 completion:0.0];
      if (!self->_replacementGlow)
      {
        v44 = [UIImageView alloc];
        v45 = _UIImageWithName(@"UIButtonBarPressedIndicator.png");
        v46 = [(UIImageView *)v44 initWithImage:v45];
        replacementGlow = self->_replacementGlow;
        self->_replacementGlow = v46;

        [(UIView *)self->_replacementGlow setUserInteractionEnabled:0];
        [(UIView *)self->_replacementGlow setOpaque:0];
        [(UIView *)self->_replacementGlow setAlpha:0.0];
        [(UIView *)self->_tabBar addSubview:self->_replacementGlow];
      }
    }
  }
}

uint64_t __48__UITabBarCustomizeView_touchesBegan_withEvent___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = [*(*(a1 + 32) + 408) items];
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        v8 = [(UITabBarItem *)v7 _tabBarButton];
        v9 = [v8 _isSelected];

        if (v9)
        {
          v10 = [(UITabBarItem *)v7 _tabBarButton];
          [v10 setAlpha:0.7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v4);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = *(*(a1 + 32) + 416);
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v20 + 1) + 8 * j) view];
        [v16 setAlpha:0.7];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }

  v17 = *(*(a1 + 32) + 448);
  CGAffineTransformMakeScale(&v19, 2.0, 2.0);
  [v17 setTransform:&v19];
  return [*(a1 + 32) adjustDragImageWithTouches:*(a1 + 40) withEvent:*(a1 + 48)];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  if (self->_draggingProxy)
  {
    eventCopy = event;
    movedCopy = moved;
    [(UITabBarCustomizeView *)self adjustDragImageWithTouches:movedCopy withEvent:eventCopy];
    v8 = self->_replaceItem;
    v9 = [(UITabBarCustomizeView *)self itemInTabBarWithTouches:movedCopy withEvent:eventCopy];

    replaceItem = self->_replaceItem;
    self->_replaceItem = v9;

    v11 = self->_replaceItem;
    item = [(UITabBarItemProxy *)self->_draggingProxy item];

    if (v11 == item)
    {
      v13 = self->_replaceItem;
      self->_replaceItem = 0;
    }

    v14 = self->_replaceItem;
    if (v14)
    {
      if (v14 != v8)
      {
        v15 = v14->_view;
        [(_UITabBarButton *)v15 frame];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        [(UIView *)self->_replacementGlow frame];
        [(UIImageView *)self->_replacementGlow setFrame:v17 - round((v24 - v21) * 0.5), v19 - round((v25 - v23) * 0.5)];
      }

      [(UIView *)self->_replacementGlow alpha];
      if (v28 >= 1.0)
      {
        goto LABEL_12;
      }

      [(UIView *)self->_tabBar bringSubviewToFront:self->_replacementGlow];
      v34 = MEMORY[0x1E69E9820];
      v35 = 3221225472;
      v36 = __48__UITabBarCustomizeView_touchesMoved_withEvent___block_invoke;
      v37 = &unk_1E70F3590;
      selfCopy = self;
      v27 = &v34;
    }

    else
    {
      [(UIView *)self->_replacementGlow alpha];
      if (v26 <= 0.0)
      {
LABEL_12:

        return;
      }

      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __48__UITabBarCustomizeView_touchesMoved_withEvent___block_invoke_2;
      v32 = &unk_1E70F3590;
      selfCopy2 = self;
      v27 = &v29;
    }

    [UIView animateWithDuration:0 delay:v27 options:0 animations:0.2 completion:0.0, v29, v30, v31, v32, selfCopy2, v34, v35, v36, v37, selfCopy];
    goto LABEL_12;
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (self->_draggingProxy)
  {
    v8 = [(UITabBarCustomizeView *)self itemInTabBarWithTouches:endedCopy withEvent:eventCopy];
    replaceItem = self->_replaceItem;
    self->_replaceItem = v8;

    v10 = self->_replaceItem;
    item = [(UITabBarItemProxy *)self->_draggingProxy item];

    if (v10 == item)
    {
      v12 = self->_replaceItem;
      self->_replaceItem = 0;
    }

    if (self->_replaceItem)
    {
      items = [(UITabBar *)self->_tabBar items];
      item2 = [(UITabBarItemProxy *)self->_draggingProxy item];
      v15 = [items containsObject:item2];

      tabBar = self->_tabBar;
      v17 = self->_replaceItem;
      item3 = [(UITabBarItemProxy *)self->_draggingProxy item];
      [(UITabBar *)tabBar _configureTabBarReplacingItem:v17 withNewItem:item3 swapping:v15];

      item4 = [(UITabBarItemProxy *)self->_draggingProxy item];
      [item4 _setSelected:1];

      [(UIView *)self->_dragImage removeFromSuperview];
    }

    else
    {
      LOBYTE(v15) = 0;
    }

    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = __Block_byref_object_copy__20;
    v24[4] = __Block_byref_object_dispose__20;
    v25 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __48__UITabBarCustomizeView_touchesEnded_withEvent___block_invoke;
    v22[3] = &unk_1E70F8C78;
    v23 = v15;
    v22[4] = self;
    v22[5] = v24;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __48__UITabBarCustomizeView_touchesEnded_withEvent___block_invoke_2;
    v21[3] = &unk_1E70F8CA0;
    v21[4] = self;
    v21[5] = v24;
    [UIView animateWithDuration:4 delay:v22 options:v21 animations:0.2 completion:0.0];
    [UIApp setIgnoresInteractionEvents:1];
    [(UIView *)self->_replacementGlow removeFromSuperview];
    replacementGlow = self->_replacementGlow;
    self->_replacementGlow = 0;

    _Block_object_dispose(v24, 8);
  }
}

void __48__UITabBarCustomizeView_touchesEnded_withEvent___block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 432);
  if (*(v2 + 464))
  {
    [v3 setSelected:0];
    if (*(a1 + 48))
    {
      v4 = *(a1 + 32);
      v5 = *(v4 + 464);
      *(v4 + 464) = 0;
    }

    else
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v28 = *(*(a1 + 32) + 416);
      v29 = [v28 countByEnumeratingWithState:&v68 objects:v74 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v69;
        while (2)
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v69 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v68 + 1) + 8 * i);
            v34 = *(*(a1 + 32) + 464);
            v35 = [v33 item];

            if (v34 == v35)
            {
              objc_storeStrong((*(*(a1 + 40) + 8) + 40), v33);
              goto LABEL_15;
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v68 objects:v74 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:

      v36 = *(a1 + 32);
      v37 = [*(*(*(a1 + 40) + 8) + 40) view];
      [v37 center];
      [v36 convertPoint:*(*(a1 + 32) + 408) toView:?];
      v39 = v38;
      v41 = v40;

      v42 = [(UITabBarItem *)*(*(a1 + 32) + 464) _tabBarButton];
      [v42 setCenter:{v39, v41}];

      v43 = [(UITabBarItem *)*(*(a1 + 32) + 464) _tabBarButton];
      [v43 setAlpha:0.5];
    }
  }

  else
  {
    v6 = [v3 view];
    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = [*(*(a1 + 32) + 448) superview];
    v16 = [*(*(a1 + 32) + 432) view];
    v17 = [v16 superview];
    [v15 convertRect:v17 fromView:{v8, v10, v12, v14}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = *(*(a1 + 32) + 448);
    v27 = *(MEMORY[0x1E695EFD0] + 16);
    v67[0] = *MEMORY[0x1E695EFD0];
    v67[1] = v27;
    v67[2] = *(MEMORY[0x1E695EFD0] + 32);
    [v26 setTransform:v67];
    [*(*(a1 + 32) + 448) setFrame:{v19, v21, v23, v25}];
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v44 = [*(*(a1 + 32) + 408) items];
  v45 = [v44 countByEnumeratingWithState:&v63 objects:v73 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v64;
    do
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v64 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v63 + 1) + 8 * j);
        v50 = [(UITabBarItem *)v49 _tabBarButton];
        v51 = [v50 _isSelected];

        if (v51)
        {
          v52 = [(UITabBarItem *)v49 _tabBarButton];
          [v52 setAlpha:1.0];
        }
      }

      v46 = [v44 countByEnumeratingWithState:&v63 objects:v73 count:16];
    }

    while (v46);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v53 = *(*(a1 + 32) + 416);
  v54 = [v53 countByEnumeratingWithState:&v59 objects:v72 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v60;
    do
    {
      for (k = 0; k != v55; ++k)
      {
        if (*v60 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = [*(*(&v59 + 1) + 8 * k) view];
        [v58 setAlpha:1.0];
      }

      v55 = [v53 countByEnumeratingWithState:&v59 objects:v72 count:16];
    }

    while (v55);
  }
}

void __48__UITabBarCustomizeView_touchesEnded_withEvent___block_invoke_2(uint64_t a1)
{
  [UIApp setIgnoresInteractionEvents:0];
  v2 = [*(*(a1 + 32) + 432) view];
  [v2 setAlpha:1.0];

  [*(*(*(a1 + 40) + 8) + 40) setSelected:1];
  v3 = [(UITabBarItem *)*(*(a1 + 32) + 464) _tabBarButton];
  [v3 removeFromSuperview];

  v4 = [(UITabBarItem *)*(*(a1 + 32) + 464) _tabBarButton];
  [v4 setAlpha:1.0];

  v5 = *(a1 + 32);
  v6 = *(v5 + 464);
  *(v5 + 464) = 0;

  [*(*(a1 + 32) + 448) removeFromSuperview];
  v7 = *(a1 + 32);
  v8 = *(v7 + 448);
  *(v7 + 448) = 0;

  v9 = *(a1 + 32);
  v10 = *(v9 + 432);
  *(v9 + 432) = 0;
}

- (void)adjustDragImageWithTouches:(id)touches withEvent:(id)event
{
  touchesCopy = touches;
  superview = [(UIView *)self superview];
  [superview bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  anyObject = [touchesCopy anyObject];

  [anyObject locationInView:self];
  v16 = v15;
  v18 = v17;

  if (v16 >= v7)
  {
    v19 = v16;
  }

  else
  {
    v19 = v7;
  }

  if (v19 >= v7 + v11)
  {
    v20 = v7 + v11;
  }

  else
  {
    v20 = v19;
  }

  if (v18 >= v9)
  {
    v21 = v18;
  }

  else
  {
    v21 = v9;
  }

  if (v21 >= v9 + v13)
  {
    v22 = v9 + v13;
  }

  else
  {
    v22 = v21;
  }

  [(UIView *)self->_dragImage center];
  [(UIView *)self->_dragImage setCenter:v20 - self->_startPoint.x, v22 - self->_startPoint.y + -32.0];
}

- (id)itemInTabBarWithTouches:(id)touches withEvent:(id)event
{
  eventCopy = event;
  anyObject = [touches anyObject];
  [anyObject locationInView:self->_tabBar];
  v9 = v8;
  v11 = v10;
  items = [(UITabBar *)self->_tabBar items];
  v13 = [items count];
  v14 = [(UIView *)self->_tabBar pointInside:eventCopy withEvent:v9, v11];

  v15 = !v14 || v13 < 1;
  if (v15 || [anyObject phase] == 4)
  {
    goto LABEL_13;
  }

  [(UIView *)self->_tabBar bounds];
  v16 = 0;
  v18 = vcvtmd_s64_f64(v9 / floor(v17 / v13));
  if ((v18 & 0x80000000) == 0 && v18 < v13)
  {
    if ((*(&self->super._viewFlags + 2) & 0x400000) != 0)
    {
      v18 = ~v18 + v13;
    }

    v16 = [items objectAtIndex:v18];
  }

  if ([(NSMutableArray *)self->_fixedItems containsObject:v16])
  {

LABEL_13:
    v16 = 0;
  }

  return v16;
}

- (void)tabBarTouchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  v5 = [UITabBarCustomizeView itemInTabBarWithTouches:"itemInTabBarWithTouches:withEvent:" withEvent:?];
  draggingItem = self->_draggingItem;
  self->_draggingItem = v5;

  v7 = self->_draggingItem;
  if (v7)
  {
    v8 = v7->_view;
    [(_UITabBarButton *)v8 frame];
    v10 = v9;

    anyObject = [beganCopy anyObject];
    [anyObject locationInView:self];
    self->_startPoint.x = v12;
    self->_startPoint.y = v13;

    self->_startPoint.x = self->_startPoint.x - v10;
  }
}

- (void)tabBarTouchesMoved:(id)moved withEvent:(id)event
{
  draggingItem = self->_draggingItem;
  if (draggingItem)
  {
    eventCopy = event;
    movedCopy = moved;
    v9 = draggingItem->_view;
    [(_UITabBarButton *)v9 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;

    anyObject = [movedCopy anyObject];
    [anyObject locationInView:self];
    v18 = v17;

    v19 = v18 - self->_startPoint.x;
    _tabBarButton = [(UITabBarItem *)&self->_draggingItem->super.super.isa _tabBarButton];
    [_tabBarButton setFrame:{v19, v11, v13, v15}];

    v22 = [(UITabBarCustomizeView *)self itemInTabBarWithTouches:movedCopy withEvent:eventCopy];

    v21 = v22;
    if (v22 && v22 != self->_draggingItem)
    {
      [UITabBar _configureTabBarReplacingItem:"_configureTabBarReplacingItem:withNewItem:swapping:" withNewItem:v22 swapping:?];
      v21 = v22;
    }
  }
}

- (void)tabBarTouchesEnded:(id)ended withEvent:(id)event
{
  if (self->_draggingItem)
  {
    [UIApp setIgnoresInteractionEvents:{1, event}];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__UITabBarCustomizeView_tabBarTouchesEnded_withEvent___block_invoke;
    v6[3] = &unk_1E70F3590;
    v6[4] = self;
    [UIView animateWithDuration:0 delay:v6 options:&__block_literal_global_81_0 animations:0.2 completion:0.0];
    draggingItem = self->_draggingItem;
    self->_draggingItem = 0;
  }
}

@end