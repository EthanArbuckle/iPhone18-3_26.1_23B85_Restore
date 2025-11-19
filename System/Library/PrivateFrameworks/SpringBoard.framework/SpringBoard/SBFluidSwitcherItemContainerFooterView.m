@interface SBFluidSwitcherItemContainerFooterView
- (BOOL)_isTextEffectivelyEmpty:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)intrinsicContentSize;
- (SBFluidSwitcherItemContainerFooterView)initWithFrame:(CGRect)a3 delegate:(id)a4;
- (SBFluidSwitcherItemContainerFooterViewDelegate)delegate;
- (double)_maximumTitleLabelHeight;
- (id)_attributedTextFromText:(id)a3;
- (id)_makeIconView;
- (id)_makeLabel;
- (id)_makeSubtitleLabel;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_handleTapGestureRecognizer:(id)a3;
- (void)_reloadVisibleTitleItems;
- (void)_updateIconPointerInteractions;
- (void)_updateIconViewShadow:(id)a3;
- (void)_updateIconViewsAndLabels;
- (void)_updateLabels;
- (void)_updateSubtitleLabel;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setFooterStyle:(unint64_t)a3;
- (void)setIconAlignment:(unint64_t)a3;
- (void)setIconAlpha:(double)a3;
- (void)setIconHitTestOutset:(double)a3;
- (void)setTextAlpha:(double)a3;
- (void)setTitleItems:(id)a3 animated:(BOOL)a4;
- (void)setUniqueIconsOnly:(BOOL)a3;
- (void)setWantsIconPointerInteractions:(BOOL)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation SBFluidSwitcherItemContainerFooterView

- (SBFluidSwitcherItemContainerFooterView)initWithFrame:(CGRect)a3 delegate:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = SBFluidSwitcherItemContainerFooterView;
  v10 = [(SBFluidSwitcherItemContainerFooterView *)&v18 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, v9);
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v11 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];

    v13 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v11 action:sel__handleTapGestureRecognizer_];
    tapGestureRecognizer = v11->_tapGestureRecognizer;
    v11->_tapGestureRecognizer = v13;

    [(SBFluidSwitcherItemContainerFooterView *)v11 addGestureRecognizer:v11->_tapGestureRecognizer];
    v15 = +[SBMedusaDomain rootSettings];
    settings = v11->_settings;
    v11->_settings = v15;

    [(PTSettings *)v11->_settings addKeyObserver:v11];
  }

  return v11;
}

- (void)dealloc
{
  [(PTSettings *)self->_settings removeKeyObserver:self];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = SBFluidSwitcherItemContainerFooterView;
  [(SBFluidSwitcherItemContainerFooterView *)&v4 dealloc];
}

- (void)setFooterStyle:(unint64_t)a3
{
  if (self->_footerStyle != a3)
  {
    self->_footerStyle = a3;
    self->_subtitleStylingUserInterfaceStyle = 0;
    [(SBFluidSwitcherItemContainerFooterView *)self _updateIconViewsAndLabels];
  }
}

- (void)setTextAlpha:(double)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_textAlpha = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_titleLabels;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) setAlpha:{a3, v10}];
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(BSUIEmojiLabelView *)self->_subtitleLabel setAlpha:a3];
  }
}

- (void)setIconAlpha:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_iconAlpha = a3;

    [(SBFluidSwitcherItemContainerFooterView *)self setNeedsLayout];
  }
}

- (void)setIconAlignment:(unint64_t)a3
{
  if (self->_iconAlignment != a3)
  {
    self->_iconAlignment = a3;
    [(SBFluidSwitcherItemContainerFooterView *)self setNeedsLayout];
  }
}

- (void)setUniqueIconsOnly:(BOOL)a3
{
  if (self->_uniqueIconsOnly != a3)
  {
    self->_uniqueIconsOnly = a3;
    [(SBFluidSwitcherItemContainerFooterView *)self _reloadVisibleTitleItems];
  }
}

- (void)setWantsIconPointerInteractions:(BOOL)a3
{
  if (self->_wantsIconPointerInteractions != a3)
  {
    self->_wantsIconPointerInteractions = a3;
    [(SBFluidSwitcherItemContainerFooterView *)self _updateIconPointerInteractions];
  }
}

- (void)setIconHitTestOutset:(double)a3
{
  if (self->_iconHitTestOutset != a3)
  {
    self->_iconHitTestOutset = a3;
    [(SBFluidSwitcherItemContainerFooterView *)self setNeedsLayout];
  }
}

- (void)setTitleItems:(id)a3 animated:(BOOL)a4
{
  v5 = [a3 copy];
  titleItems = self->_titleItems;
  self->_titleItems = v5;

  [(SBFluidSwitcherItemContainerFooterView *)self _reloadVisibleTitleItems];
}

- (CGSize)intrinsicContentSize
{
  v3 = MEMORY[0x277D76620];
  v4 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  iconViews = self->_iconViews;
  if (v4 == 1)
  {
    [(NSMutableArray *)iconViews firstObject];
  }

  else
  {
    [(NSMutableArray *)iconViews lastObject];
  }
  v6 = ;
  [v6 frame];
  v8 = v7;
  v10 = v9;

  v11 = [*v3 userInterfaceLayoutDirection];
  titleLabels = self->_titleLabels;
  if (v11 == 1)
  {
    [(NSMutableArray *)titleLabels firstObject];
  }

  else
  {
    [(NSMutableArray *)titleLabels lastObject];
  }
  v13 = ;
  [v13 frame];
  v15 = v14;
  v17 = v16;

  v18 = [*v3 userInterfaceLayoutDirection];
  v19 = self->_iconViews;
  if (v18 == 1)
  {
    [(NSMutableArray *)v19 lastObject];
  }

  else
  {
    [(NSMutableArray *)v19 firstObject];
  }
  v20 = ;
  [v20 frame];
  v22 = v21;

  v23 = [*v3 userInterfaceLayoutDirection];
  v24 = self->_titleLabels;
  if (v23 == 1)
  {
    [(NSMutableArray *)v24 lastObject];
  }

  else
  {
    [(NSMutableArray *)v24 firstObject];
  }
  v25 = ;
  [v25 frame];
  v27 = v26;

  v28 = v15 + v17;
  if (v8 + v10 >= v15 + v17)
  {
    v28 = v8 + v10;
  }

  if (v22 >= v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = v22;
  }

  v30 = v28 - v29;
  footerStyle = self->_footerStyle;
  v32 = 36.0;
  if (footerStyle != 1)
  {
    v32 = 30.0;
  }

  if (footerStyle == 2)
  {
    v33 = 46.0;
  }

  else
  {
    v33 = v32;
  }

  [(SBFluidSwitcherItemContainerFooterView *)self _maximumTitleLabelHeight];
  v35 = v34 + v33;
  [(BSUIEmojiLabelView *)self->_subtitleLabel intrinsicContentSize];
  v37 = v35 + v36;
  v38 = v30;
  result.height = v37;
  result.width = v38;
  return result;
}

- (void)layoutSubviews
{
  v108 = *MEMORY[0x277D85DE8];
  [(SBFluidSwitcherItemContainerFooterView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  footerStyle = self->_footerStyle;
  v12 = footerStyle - 1;
  v13 = 24.0;
  if (footerStyle == 1)
  {
    v13 = 30.0;
  }

  if (footerStyle == 2)
  {
    v14 = 40.0;
  }

  else
  {
    v14 = v13;
  }

  v15 = +[SBMedusaDomain rootSettings];
  [v15 switcherShelfSplitViewIconInset];
  v94 = v16;

  iconHitTestOutset = self->_iconHitTestOutset;
  v17 = [(NSMutableArray *)self->_iconViews count];
  v18 = v17;
  iconAlignment = self->_iconAlignment;
  v20 = MEMORY[0x277D76620];
  v101 = v8;
  v102 = v6;
  rect = v10;
  if (iconAlignment == 1)
  {
    v29 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v30 = v4;
    v31 = v6;
    v32 = v8;
    v33 = v10;
    if (v29 == 1)
    {
      MinX = CGRectGetMaxX(*&v30) - v14;
    }

    else
    {
      MinX = CGRectGetMinX(*&v30);
    }
  }

  else
  {
    MinX = 0.0;
    if (!iconAlignment)
    {
      if (v12 > 1)
      {
        v110.origin.x = v4;
        v110.origin.y = v6;
        v110.size.width = v8;
        v110.size.height = v10;
        v34 = CGRectGetWidth(v110) / v17;
        MinX = (v34 + -24.0) * 0.5;
        if ([*v20 userInterfaceLayoutDirection] == 1)
        {
          v111.origin.x = v4;
          v111.origin.y = v102;
          v111.size.width = v8;
          v111.size.height = v10;
          MinX = MinX + CGRectGetMaxX(v111) - v34;
        }
      }

      else
      {
        v22 = -(v94 - v17 * (v14 + v94));
        v109.origin.x = v4;
        v109.size.width = v8;
        v109.origin.y = v102;
        v109.size.height = v10;
        MidX = CGRectGetMidX(v109);
        v24 = [*v20 userInterfaceLayoutDirection];
        v25 = 0.5;
        if (v24 == 1)
        {
          v25 = -0.5;
        }

        v26 = MidX - v22 * v25;
        v27 = [*v20 userInterfaceLayoutDirection];
        v28 = 0.0;
        if (v27 == 1)
        {
          v28 = v14;
        }

        MinX = v26 - v28;
      }
    }
  }

  SBFluidSwitcherItemContainerFooterViewIconOffsetForFooterStyle(self->_footerStyle, self->_iconAlignment);
  v36 = v35;
  v38 = MinX + v37;
  v39 = self->_iconAlignment;
  v99 = v4;
  v90 = v38;
  if ([(NSMutableArray *)self->_iconViews count])
  {
    v40 = 0;
    if (v39)
    {
      v41 = 0;
    }

    else
    {
      v41 = v12 >= 2;
    }

    v42 = v18;
    v43 = !v41;
    v44 = *MEMORY[0x277D768C8];
    v45 = *(MEMORY[0x277D768C8] + 8);
    v95 = *(MEMORY[0x277D768C8] + 24);
    v97 = *(MEMORY[0x277D768C8] + 16);
    v92 = v14;
    v91 = v36;
    do
    {
      v46 = [(NSMutableArray *)self->_iconViews objectAtIndex:v40];
      [(SBFluidSwitcherItemContainerFooterView *)self _updateIconViewShadow:v46];
      [v46 setFrame:{v38, v36, v14, v14}];
      [v46 setAlpha:self->_iconAlpha];
      v47 = [*v20 userInterfaceLayoutDirection];
      if (v43)
      {
        v112.origin.x = v38;
        v112.origin.y = v36;
        v112.size.width = v14;
        v112.size.height = v14;
        v48 = v94 + CGRectGetWidth(v112);
        if (v47 == 1)
        {
          v49 = -v48;
        }

        else
        {
          v49 = v48;
        }

        if (v12 > 1)
        {
          v55 = v44;
          v53 = v45;
          v54 = v95;
          v52 = v97;
        }

        else
        {
          if (v40)
          {
            v50 = v94 * 0.5;
          }

          else
          {
            v50 = iconHitTestOutset;
          }

          if (v40 == [(NSMutableArray *)self->_iconViews count]- 1)
          {
            v51 = iconHitTestOutset;
          }

          else
          {
            v51 = v94 * 0.5;
          }

          v52 = -iconHitTestOutset;
          v36 = v91;
          v14 = v92;
          v53 = -v50;
          v4 = v99;
          v54 = -v51;
          v55 = -iconHitTestOutset;
        }
      }

      else
      {
        v113.origin.x = v4;
        v113.size.width = v101;
        v113.origin.y = v102;
        v113.size.height = rect;
        Width = CGRectGetWidth(v113);
        if (v47 == 1)
        {
          v57 = -Width;
        }

        else
        {
          v57 = Width;
        }

        v55 = v44;
        v53 = v45;
        v54 = v95;
        v52 = v97;
        v49 = v57 / v42;
      }

      v38 = v38 + v49;
      [v46 setHitTestInsets:{v55, v53, v52, v54}];

      ++v40;
    }

    while (v40 < [(NSMutableArray *)self->_iconViews count]);
  }

  v58 = [(NSMutableArray *)self->_titleLabels count];
  v114.origin.x = v4;
  v114.origin.y = v102;
  v114.size.width = v101;
  v114.size.height = rect;
  v98 = v58;
  v59 = CGRectGetWidth(v114) / v58;
  v115.origin.x = v4;
  v115.origin.y = v102;
  v115.size.width = v101;
  v115.size.height = rect;
  v96 = CGRectGetWidth(v115);
  v116.origin.x = v4;
  v116.origin.y = v102;
  v116.size.width = v101;
  v116.size.height = rect;
  Height = CGRectGetHeight(v116);
  v61 = [*v20 userInterfaceLayoutDirection];
  v62 = v4;
  v63 = v102;
  v64 = v101;
  v65 = rect;
  if (v61 == 1)
  {
    v66 = CGRectGetMaxX(*&v62) - v59;
  }

  else
  {
    v66 = CGRectGetMinX(*&v62);
  }

  v117.origin.x = v90;
  v117.origin.y = v36;
  v117.size.width = v14;
  v117.size.height = v14;
  v67 = CGRectGetMaxY(v117) + 6.0;
  if ([(SBFluidSwitcherItemContainerFooterView *)self _hasTitleShadow])
  {
    v68 = v67 + -2.0;
  }

  else
  {
    v68 = v67;
  }

  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v69 = self->_titleLabels;
  v70 = [(NSMutableArray *)v69 countByEnumeratingWithState:&v103 objects:v107 count:16];
  if (v70)
  {
    v71 = v70;
    v72 = *v104;
    v73 = 0.0;
    do
    {
      for (i = 0; i != v71; ++i)
      {
        if (*v104 != v72)
        {
          objc_enumerationMutation(v69);
        }

        v75 = *(*(&v103 + 1) + 8 * i);
        [v75 sizeThatFits:{v96 / v98 + -2.0, Height}];
        v77 = v76;
        v79 = v78;
        if ([(NSMutableArray *)self->_titleLabels count]== 1)
        {
          v77 = v77 + 12.0;
        }

        if ([(SBFluidSwitcherItemContainerFooterView *)self _hasTitleShadow])
        {
          v79 = v79 + 4.0;
        }

        [v75 setFrame:{v66 + (v59 - v77) * 0.5, v68, v77, v79}];
        v80 = [*v20 userInterfaceLayoutDirection];
        v118.origin.x = v99;
        v118.size.height = rect;
        v118.size.width = v101;
        v118.origin.y = v102;
        v81 = CGRectGetWidth(v118);
        if (v80 == 1)
        {
          v81 = -v81;
        }

        v66 = v66 + v81 / v98;
        if (v73 < v79)
        {
          v73 = v79;
        }
      }

      v71 = [(NSMutableArray *)v69 countByEnumeratingWithState:&v103 objects:v107 count:16];
    }

    while (v71);
  }

  else
  {
    v73 = 0.0;
  }

  subtitleLabel = self->_subtitleLabel;
  if (subtitleLabel)
  {
    [(BSUIEmojiLabelView *)subtitleLabel sizeThatFits:v101, rect];
    v84 = v83;
    v85 = v68 + v73;
    v87 = v86 + 12.0;
    v88 = self->_subtitleLabel;
    v119.origin.x = v99;
    v119.origin.y = v102;
    v119.size.width = v101;
    v119.size.height = rect;
    v89 = CGRectGetMinX(v119);
    v120.origin.x = v99;
    v120.origin.y = v102;
    v120.size.width = v101;
    v120.size.height = rect;
    [(BSUIEmojiLabelView *)v88 setFrame:v89 + (CGRectGetWidth(v120) - v87) * 0.5, v85, v87, v84];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SBFluidSwitcherItemContainerFooterView;
  if ([(SBFluidSwitcherItemContainerFooterView *)&v14 pointInside:v7 withEvent:x, y])
  {
    v8 = 1;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = [(NSMutableArray *)self->_iconViews count];
      v8 = v9 < v10;
      if (v9 >= v10)
      {
        break;
      }

      v11 = [(NSMutableArray *)self->_iconViews objectAtIndex:v9];
      [v11 convertPoint:self fromView:{x, y}];
      v12 = [v11 pointInside:v7 withEvent:?];
      ++v9;
    }

    while (!v12);
  }

  return v8;
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (self->_settings == a3)
  {
    [(SBFluidSwitcherItemContainerFooterView *)self _updateLabels];
  }
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = MEMORY[0x277D75880];
  v7 = a3;
  [a5 rect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v7 view];

  [v16 hitTestInsets];
  v21 = [v6 regionWithRect:0 identifier:{v9 + v20, v11 + v17, v13 - (v20 + v18), v15 - (v17 + v19)}];

  return v21;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v4 = [a3 view];
  v5 = objc_alloc_init(MEMORY[0x277D758D8]);
  v6 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v4 parameters:v5];
  v7 = [MEMORY[0x277D75878] effectWithPreview:v6];
  v8 = [MEMORY[0x277D75890] styleWithEffect:v7 shape:0];

  return v8;
}

- (void)_reloadVisibleTitleItems
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_uniqueIconsOnly)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{-[NSArray count](self->_titleItems, "count")}];
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_titleItems, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_titleItems;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v10 displayItem];
          v12 = [v11 bundleIdentifier];

          if (([v3 containsObject:v12] & 1) == 0)
          {
            [(NSArray *)v4 addObject:v10];
            [v3 addObject:v12];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = self->_titleItems;
  }

  if ([(NSArray *)self->_visibleTitleItems isEqualToArray:v4, v13])
  {
    [(SBFluidSwitcherItemContainerFooterView *)self _updateSubtitleLabel];
  }

  else
  {
    objc_storeStrong(&self->_visibleTitleItems, v4);
    [(SBFluidSwitcherItemContainerFooterView *)self _updateIconViewsAndLabels];
  }
}

- (void)_updateIconViewsAndLabels
{
  v3 = 408;
  iconViews = self->_iconViews;
  if (!iconViews)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_visibleTitleItems, "count")}];
    v6 = self->_iconViews;
    self->_iconViews = v5;

    iconViews = self->_iconViews;
  }

  v7 = [(NSMutableArray *)iconViews count];
  v8 = v7 - [(NSArray *)self->_visibleTitleItems count];
  if (v8 < 1)
  {
    if (v8 < 0)
    {
      if (-v8 > 1)
      {
        v11 = -v8;
      }

      else
      {
        v11 = 1;
      }

      do
      {
        v12 = [(SBFluidSwitcherItemContainerFooterView *)self _makeIconView];
        [(SBFluidSwitcherItemContainerFooterView *)self addSubview:v12];
        [(NSMutableArray *)self->_iconViews addObject:v12];

        --v11;
      }

      while (v11);
    }
  }

  else
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = [(NSMutableArray *)self->_iconViews objectAtIndex:[(NSArray *)self->_visibleTitleItems count]+ i];
      [v10 removeFromSuperview];
    }

    [(NSMutableArray *)self->_iconViews removeObjectsInRange:[(NSArray *)self->_visibleTitleItems count], v8];
  }

  if (!self->_titleLabels)
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_visibleTitleItems, "count")}];
    titleLabels = self->_titleLabels;
    self->_titleLabels = v13;
  }

  footerStyle = self->_footerStyle;
  if (footerStyle)
  {
    v15 = 1;
  }

  else
  {
    v15 = [(NSArray *)self->_visibleTitleItems count];
  }

  v16 = [(NSMutableArray *)self->_titleLabels count];
  v17 = v16 - v15;
  if ((v16 - v15) < 1)
  {
    if ((v17 & 0x8000000000000000) != 0)
    {
      if ((v15 - v16) > 1)
      {
        v21 = v15 - v16;
      }

      else
      {
        v21 = 1;
      }

      do
      {
        v22 = [(SBFluidSwitcherItemContainerFooterView *)self _makeLabel];
        [(SBFluidSwitcherItemContainerFooterView *)self addSubview:v22];
        [(NSMutableArray *)self->_titleLabels addObject:v22];

        --v21;
      }

      while (v21);
    }
  }

  else
  {
    v18 = v16;
    v19 = v15;
    do
    {
      v20 = [(NSMutableArray *)self->_titleLabels objectAtIndex:v19];
      [v20 removeFromSuperview];

      ++v19;
    }

    while (v18 != v19);
    [(NSMutableArray *)self->_titleLabels removeObjectsInRange:v15, v17];
  }

  v42 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_visibleTitleItems, "count")}];
  v23 = footerStyle;
  if ([(NSArray *)self->_visibleTitleItems count])
  {
    v24 = 0;
    do
    {
      v25 = [(NSArray *)self->_visibleTitleItems objectAtIndex:v24];
      v26 = [*(&self->super.super.super.super.isa + v3) objectAtIndex:v24];
      v27 = [v25 image];
      [v26 setImage:v27];

      v28 = [v25 imageView];
      [v26 setCustomImageView:v28];

      if (v23)
      {
        v29 = [v25 titleText];
        if (![(SBFluidSwitcherItemContainerFooterView *)self _isTextEffectivelyEmpty:v29])
        {
          [v42 addObject:v29];
        }
      }

      else
      {
        v30 = v3;
        v29 = [(NSMutableArray *)self->_titleLabels objectAtIndex:v24];
        v31 = [v25 subtitleText];
        if ([(SBFluidSwitcherItemContainerFooterView *)self _isTextEffectivelyEmpty:v31])
        {
          v32 = [v25 titleText];

          v31 = v32;
        }

        v33 = [(SBFluidSwitcherItemContainerFooterView *)self _attributedTextFromText:v31];
        [v29 setAttributedText:v33];

        v3 = v30;
        v23 = footerStyle;
      }

      ++v24;
    }

    while (v24 < [(NSArray *)self->_visibleTitleItems count]);
  }

  if (v23)
  {
    v34 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v42];
    v35 = [(NSMutableArray *)self->_titleLabels firstObject];
    v36 = [(SBFluidSwitcherItemContainerFooterView *)self _attributedTextFromText:v34];
    [v35 setAttributedText:v36];
  }

  [(SBFluidSwitcherItemContainerFooterView *)self _updateSubtitleLabel];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __67__SBFluidSwitcherItemContainerFooterView__updateIconViewsAndLabels__block_invoke;
  v48[3] = &unk_2783A8C18;
  v48[4] = self;
  v37 = MEMORY[0x223D6F7F0](v48);
  v38 = [MEMORY[0x277D75D18] _isInRetargetableAnimationBlock];
  v39 = MEMORY[0x277D75D18];
  if (v38)
  {
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __67__SBFluidSwitcherItemContainerFooterView__updateIconViewsAndLabels__block_invoke_2;
    v46[3] = &unk_2783A9348;
    v47 = v37;
    [v39 _performWithoutRetargetingAnimations:v46];
    v40 = v47;
  }

  else
  {
    if (![MEMORY[0x277D75D18] _isInAnimationBlock])
    {
      v37[2](v37);
      goto LABEL_43;
    }

    v41 = MEMORY[0x277D75D18];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __67__SBFluidSwitcherItemContainerFooterView__updateIconViewsAndLabels__block_invoke_3;
    v44[3] = &unk_2783A9348;
    v45 = v37;
    [v41 performWithoutAnimation:v44];
    v40 = v45;
  }

LABEL_43:
}

uint64_t __67__SBFluidSwitcherItemContainerFooterView__updateIconViewsAndLabels__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)_updateSubtitleLabel
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_visibleTitleItems, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_titleItems;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v20 + 1) + 8 * i) subtitleText];
        if (![(SBFluidSwitcherItemContainerFooterView *)self _isTextEffectivelyEmpty:v9])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  subtitleLabel = self->_subtitleLabel;
  if (self->_footerStyle - 1 <= 1)
  {
    if (!subtitleLabel)
    {
      v11 = [(SBFluidSwitcherItemContainerFooterView *)self _makeSubtitleLabel];
      v12 = self->_subtitleLabel;
      self->_subtitleLabel = v11;

      [(SBFluidSwitcherItemContainerFooterView *)self addSubview:self->_subtitleLabel];
    }

    v13 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:{v3, v20}];
    [(BSUIEmojiLabelView *)self->_subtitleLabel setText:v13];
    v14 = [(NSArray *)self->_titleItems firstObject];
    v15 = [v14 subtitleInterfaceStyle];

    if (v15)
    {
      v16 = self->_subtitleStylingUserInterfaceStyle == v15;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      self->_subtitleStylingUserInterfaceStyle = v15;
      v17 = [MEMORY[0x277D26740] _visualStylingProviderForRecipe:53 category:2 andUserInterfaceStyle:v15];
      v18 = [v17 _visualStylingForStyle:0];
      [(BSUIEmojiLabelView *)self->_subtitleLabel mt_replaceVisualStyling:v18];
      [(BSUIEmojiLabelView *)self->_subtitleLabel setAlpha:self->_textAlpha];
      v19 = [(BSUIEmojiLabelView *)self->_subtitleLabel contentLabel];
      [v18 alpha];
      [v19 setAlpha:?];
    }

    [(SBFluidSwitcherItemContainerFooterView *)self setNeedsLayout];
    goto LABEL_21;
  }

  if (subtitleLabel)
  {
    [(BSUIEmojiLabelView *)subtitleLabel removeFromSuperview];
    v13 = self->_subtitleLabel;
    self->_subtitleLabel = 0;
LABEL_21:
  }
}

- (id)_attributedTextFromText:(id)a3
{
  v4 = MEMORY[0x277D74300];
  v5 = *MEMORY[0x277D76940];
  v6 = *MEMORY[0x277D74420];
  v7 = a3;
  v8 = [v4 _preferredFontForTextStyle:v5 addingSymbolicTraits:0x8000 weight:v6];
  [v8 pointSize];
  v10 = [v8 fontWithSize:{fmin(fmax(v9, 13.0), 16.0)}];

  v11 = objc_alloc_init(MEMORY[0x277D74240]);
  [v11 setAlignment:1];
  [v11 setAllowsDefaultTighteningForTruncation:1];
  [v11 setLineBreakMode:4];
  [v11 setLineBreakStrategy:0xFFFFLL];
  [(SBMedusaSettings *)self->_settings switcherShelfLabelLineSpacing];
  [v11 setLineSpacing:?];
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v12 setObject:v10 forKey:*MEMORY[0x277D740A8]];
  [v12 setObject:v11 forKey:*MEMORY[0x277D74118]];
  if ([(SBFluidSwitcherItemContainerFooterView *)self _hasTitleShadow])
  {
    v13 = objc_alloc_init(MEMORY[0x277D74258]);
    v14 = [MEMORY[0x277D75348] blackColor];
    v15 = [v14 colorWithAlphaComponent:0.52];
    [v13 setShadowColor:v15];

    [v13 setShadowBlurRadius:3.0];
    [v13 setShadowOffset:{0.0, 0.5}];
    [v12 setObject:v13 forKey:*MEMORY[0x277D74138]];
  }

  v16 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v12];

  return v16;
}

- (void)_handleTapGestureRecognizer:(id)a3
{
  footerStyle = self->_footerStyle;
  [a3 locationInView:self];
  v7 = v6;
  if (footerStyle)
  {
    v8 = v5;
    if ([(NSArray *)self->_visibleTitleItems count])
    {
      v9 = 0;
      while (1)
      {
        v10 = [(NSMutableArray *)self->_iconViews objectAtIndex:v9];
        [v10 convertPoint:self fromView:{v7, v8}];
        if ([v10 pointInside:0 withEvent:?])
        {
          break;
        }

        if (++v9 >= [(NSArray *)self->_visibleTitleItems count])
        {
          return;
        }
      }

      v15 = [(NSArray *)self->_visibleTitleItems objectAtIndex:v9];

      v13 = v15;
      if (v15)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    [(SBFluidSwitcherItemContainerFooterView *)self bounds];
    Width = CGRectGetWidth(v18);
    v12 = (v7 / (Width / [(NSArray *)self->_visibleTitleItems count]));
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      v12 = [(NSArray *)self->_visibleTitleItems count]+ ~v12;
    }

    if ((v12 & 0x8000000000000000) == 0 && v12 < [(NSArray *)self->_visibleTitleItems count])
    {
      v13 = [(NSArray *)self->_visibleTitleItems objectAtIndex:v12];
      if (v13)
      {
LABEL_14:
        v16 = v13;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained itemContainerFooterView:self didSelectTitleItem:v16];
      }
    }
  }
}

- (id)_makeIconView
{
  v3 = objc_alloc_init(SBFluidSwitcherIconImageContainerView);
  v4 = [(SBFluidSwitcherIconImageContainerView *)v3 layer];
  v5 = [MEMORY[0x277D75348] systemBlackColor];
  [v4 setShadowColor:{objc_msgSend(v5, "CGColor")}];

  [v4 setShadowPathIsBounds:1];
  [(SBFluidSwitcherItemContainerFooterView *)self _updateIconViewShadow:v3];
  if (self->_wantsIconPointerInteractions)
  {
    v6 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:self];
    [(SBFluidSwitcherIconImageContainerView *)v3 addInteraction:v6];
  }

  return v3;
}

- (void)_updateIconViewShadow:(id)a3
{
  v4 = a3;
  v5 = [v4 layer];
  v6 = 4.0;
  if (self->_footerStyle - 1 >= 2)
  {
    v6 = -1.0;
  }

  v10 = v5;
  [v5 setShadowOffset:{0.0, v6}];
  v7 = [v4 image];

  if (v7)
  {
    LODWORD(v8) = dword_21F8A67D0[self->_footerStyle - 1 < 2];
  }

  else
  {
    v8 = 0.0;
  }

  [v10 setShadowOpacity:v8];

  v9 = 6.0;
  if (self->_footerStyle - 1 < 2)
  {
    v9 = 12.0;
  }

  [v10 setShadowRadius:v9];
}

- (id)_makeLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v3 setNumberOfLines:2];
  [v3 setText:&stru_283094718];
  v4 = [MEMORY[0x277D75348] systemWhiteColor];
  [v3 setTextColor:v4];

  [v3 setAlpha:self->_textAlpha];
  [v3 setSizingRule:1];
  v5 = [v3 layer];
  v6 = [MEMORY[0x277D75348] blackColor];
  [v5 setShadowColor:{objc_msgSend(v6, "CGColor")}];

  return v3;
}

- (id)_makeSubtitleLabel
{
  v3 = objc_alloc_init(MEMORY[0x277CF0D58]);
  v4 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76940] addingSymbolicTraits:0x8000 weight:*MEMORY[0x277D74418]];
  [v4 pointSize];
  v6 = [v4 fontWithSize:{fmin(fmax(v5, 13.0), 16.0)}];

  [v3 setFont:v6];
  [v3 setTextAlignment:1];
  [v3 setLineBreakMode:4];
  [v3 setUserInteractionEnabled:1];
  [v3 setNumberOfLines:2];
  [v3 setAlpha:self->_textAlpha];

  return v3;
}

- (void)_updateLabels
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_titleLabels;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 text];
        v10 = [(SBFluidSwitcherItemContainerFooterView *)self _attributedTextFromText:v9];

        [v8 setAttributedText:v10];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  subtitleLabel = self->_subtitleLabel;
  if (subtitleLabel)
  {
    v12 = [(BSUIEmojiLabelView *)subtitleLabel text];
    if (v12)
    {
      v13 = [(BSUIEmojiLabelView *)self->_subtitleLabel text];
    }

    else
    {
      v13 = &stru_283094718;
    }

    [(BSUIEmojiLabelView *)self->_subtitleLabel setText:v13];
  }

  [(SBFluidSwitcherItemContainerFooterView *)self setNeedsLayout];
}

- (double)_maximumTitleLabelHeight
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_titleLabels;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * i) intrinsicContentSize];
        if (v6 < v8)
        {
          v6 = v8;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (BOOL)_isTextEffectivelyEmpty:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  LOBYTE(v4) = [v6 length] == 0;
  return v4;
}

- (void)_updateIconPointerInteractions
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_wantsIconPointerInteractions)
  {
    v23 = 0uLL;
    v24 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v3 = self->_iconViews;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v22;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v21 + 1) + 8 * i);
          v9 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:self];
          [v8 addInteraction:v9];
        }

        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v19 = 0uLL;
    v20 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v3 = self->_iconViews;
    v10 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v3);
          }

          v14 = *(*(&v17 + 1) + 8 * j);
          v15 = [v14 interactions];
          v16 = [v15 firstObject];

          [v14 removeInteraction:v16];
        }

        v11 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v11);
    }
  }
}

- (SBFluidSwitcherItemContainerFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end