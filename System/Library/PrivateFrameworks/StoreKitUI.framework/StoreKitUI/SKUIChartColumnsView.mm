@interface SKUIChartColumnsView
- (SKUIChartColumnsView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInset;
- (id)_headerViewWithViewControllers:(id)controllers;
- (void)_headerViewAction:(id)action;
- (void)_reloadColumnViews;
- (void)beginColumnChangeAnimationToNumberOfVisibleColumns:(int64_t)columns;
- (void)dealloc;
- (void)endColumnChangeAnimation;
- (void)layoutSubviews;
- (void)segmentedControl:(id)control didSelectSegmentIndex:(int64_t)index;
- (void)setChartViewControllers:(id)controllers;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setNumberOfVisibleColumns:(int64_t)columns;
@end

@implementation SKUIChartColumnsView

- (SKUIChartColumnsView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIChartColumnsView initWithFrame:];
  }

  v28.receiver = self;
  v28.super_class = SKUIChartColumnsView;
  height = [(SKUIChartColumnsView *)&v28 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 0.0, 44.0}];
    headerBackgroundView = height->_headerBackgroundView;
    height->_headerBackgroundView = v9;

    [(SKUIChartColumnsView *)height addSubview:height->_headerBackgroundView];
    v11 = objc_alloc(MEMORY[0x277D75D68]);
    v12 = [MEMORY[0x277D75210] effectWithStyle:10];
    v13 = [v11 initWithEffect:v12];
    effectView = height->_effectView;
    height->_effectView = v13;

    [(UIView *)height->_headerBackgroundView addSubview:height->_effectView];
    v15 = objc_alloc_init(MEMORY[0x277D75D18]);
    borderView0 = height->_borderView0;
    height->_borderView0 = v15;

    v17 = height->_borderView0;
    separatorColor = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v17 setBackgroundColor:separatorColor];

    [(SKUIChartColumnsView *)height addSubview:height->_borderView0];
    v19 = objc_alloc_init(MEMORY[0x277D75D18]);
    borderView1 = height->_borderView1;
    height->_borderView1 = v19;

    v21 = height->_borderView1;
    separatorColor2 = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v21 setBackgroundColor:separatorColor2];

    [(SKUIChartColumnsView *)height addSubview:height->_borderView1];
    v23 = objc_alloc_init(MEMORY[0x277D75D18]);
    headerBackgroundBottomBorder = height->_headerBackgroundBottomBorder;
    height->_headerBackgroundBottomBorder = v23;

    v25 = height->_headerBackgroundBottomBorder;
    separatorColor3 = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v25 setBackgroundColor:separatorColor3];

    [(UIView *)height->_headerBackgroundView addSubview:height->_headerBackgroundBottomBorder];
  }

  return height;
}

- (void)dealloc
{
  [(SKUIFlexibleSegmentedControl *)self->_segmentedControl setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIChartColumnsView;
  [(SKUIChartColumnsView *)&v3 dealloc];
}

- (void)beginColumnChangeAnimationToNumberOfVisibleColumns:(int64_t)columns
{
  columnChangeAnimationCount = self->_columnChangeAnimationCount;
  self->_columnChangeAnimationCount = columnChangeAnimationCount + 1;
  if (!columnChangeAnimationCount)
  {
    self->_animatingToNumberOfVisibleColumns = columns;
    if (self->_numberOfVisibleColumns >= columns)
    {
      self->_numberOfVisibleColumns = columns;

      [(SKUIChartColumnsView *)self setNeedsLayout];
    }

    else
    {
      [(SKUIChartColumnsView *)self _reloadColumnViews];

      [(SKUIChartColumnsView *)self layoutIfNeeded];
    }
  }
}

- (void)endColumnChangeAnimation
{
  columnChangeAnimationCount = self->_columnChangeAnimationCount;
  v3 = columnChangeAnimationCount == 1;
  v4 = columnChangeAnimationCount < 1;
  v5 = columnChangeAnimationCount - 1;
  if (!v4)
  {
    self->_columnChangeAnimationCount = v5;
    if (v3)
    {
      [(SKUIChartColumnsView *)self _reloadColumnViews];

      [(SKUIChartColumnsView *)self setNeedsLayout];
    }
  }
}

- (void)setChartViewControllers:(id)controllers
{
  if (self->_allViewControllers != controllers)
  {
    v4 = [controllers copy];
    allViewControllers = self->_allViewControllers;
    self->_allViewControllers = v4;

    [(SKUIChartColumnsView *)self _reloadColumnViews];
  }
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(SKUIChartColumnsView *)self setNeedsLayout];
  }
}

- (void)setNumberOfVisibleColumns:(int64_t)columns
{
  if (self->_numberOfVisibleColumns != columns)
  {
    self->_numberOfVisibleColumns = columns;
    if (!self->_columnChangeAnimationCount)
    {
      [(SKUIChartColumnsView *)self _reloadColumnViews];
    }

    [(SKUIChartColumnsView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v39.receiver = self;
  v39.super_class = SKUIChartColumnsView;
  [(SKUIChartColumnsView *)&v39 layoutSubviews];
  [(SKUIChartColumnsView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v13 = v12;

  v14 = [(NSArray *)self->_columnViews count];
  numberOfVisibleColumns = [(SKUIChartColumnsView *)self numberOfVisibleColumns];
  if (v14 >= numberOfVisibleColumns)
  {
    v16 = numberOfVisibleColumns;
  }

  else
  {
    v16 = v14;
  }

  [(UIView *)self->_headerBackgroundView frame];
  v18 = v17;
  [(UIView *)self->_headerBackgroundView setFrame:?];
  [(UIVisualEffectView *)self->_effectView setFrame:0.0, 0.0, v8, v18];
  [(UIView *)self->_headerBackgroundBottomBorder setHidden:v16 > 1];
  [(SKUIFlexibleSegmentedControl *)self->_segmentedControl setHidden:v16 > 1];
  v19 = 1.0 / v13;
  if (v16 > 1)
  {
    goto LABEL_13;
  }

  headerBackgroundBottomBorder = self->_headerBackgroundBottomBorder;
  if (headerBackgroundBottomBorder)
  {
    [(UIView *)headerBackgroundBottomBorder setFrame:0.0, v18 - v19, v8, v19];
  }

  segmentedControl = self->_segmentedControl;
  if (segmentedControl)
  {
    [(SKUIFlexibleSegmentedControl *)segmentedControl frame];
    [(SKUIFlexibleSegmentedControl *)self->_segmentedControl sizeThatFits:*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
    if (v22 >= v8 + -30.0)
    {
      v24 = v8 + -30.0;
    }

    else
    {
      v24 = v22;
    }

    v25 = (v8 - v24) * 0.5;
    v26 = (v18 - v23) * 0.5;
    [(SKUIFlexibleSegmentedControl *)self->_segmentedControl setFrame:floorf(v25), floorf(v26)];
  }

  if (v16)
  {
LABEL_13:
    v27 = v8 / v16;
    v28 = floorf(v27);
    if (v14 >= 1)
    {
      v29 = 0;
      columnChangeAnimationCount = self->_columnChangeAnimationCount;
      v31 = 0.0;
      do
      {
        if (v16 > 1)
        {
          v32 = [(NSArray *)self->_headerViews objectAtIndex:v29];
          [v32 frame];
          SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v31, 0.0, v28, v18, v4, v6, v8, v10);
          [v32 setFrame:?];
        }

        v33 = [(NSArray *)self->_columnViews objectAtIndex:v29];
        [v33 frame];
        SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v31, 0.0, v28, v10, v4, v6, v8, v10);
        [v33 setFrame:?];
        v35 = columnChangeAnimationCount < 1 && v29 >= v16;
        [v33 setHidden:v35];
        v31 = v31 + v28;

        ++v29;
      }

      while (v14 != v29);
    }

    v36 = v10 + -15.0;
    [(UIView *)self->_borderView0 setFrame:v28, self->_contentInset.top + 15.0, v19, v36];
    [(UIView *)self->_borderView0 setHidden:v16 < 2];
    [(UIView *)self->_borderView1 setFrame:v28 + v28, self->_contentInset.top + 15.0, v19, v36];
    borderView1 = self->_borderView1;
    v38 = v16 < 3;
  }

  else
  {
    [(UIView *)self->_borderView0 setHidden:1];
    borderView1 = self->_borderView1;
    v38 = 1;
  }

  [(UIView *)borderView1 setHidden:v38];
}

- (void)_headerViewAction:(id)action
{
  actionCopy = action;
  v4 = [(NSArray *)self->_headerViews indexOfObjectIdenticalTo:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(NSArray *)self->_columnViews objectAtIndex:v4];
    [v5 setSelectedViewControllerIndex:{objc_msgSend(actionCopy, "selectedTitleIndex")}];
  }
}

- (void)segmentedControl:(id)control didSelectSegmentIndex:(int64_t)index
{
  firstObject = [(NSArray *)self->_columnViews firstObject];
  [firstObject setSelectedViewControllerIndex:index];
}

- (id)_headerViewWithViewControllers:(id)controllers
{
  v20 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  v5 = objc_alloc_init(SKUIChartColumnHeaderView);
  [(SKUIChartColumnHeaderView *)v5 addTarget:self action:sel__headerViewAction_ forControlEvents:4096];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(SKUIChartColumnHeaderView *)v5 setBackgroundColor:clearColor];

  [(SKUIChartColumnHeaderView *)v5 sizeToFit];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = controllersCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v8);
        }

        title = [*(*(&v15 + 1) + 8 * i) title];
        [v7 addObject:title];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [(SKUIChartColumnHeaderView *)v5 setTitles:v7];

  return v5;
}

- (void)_reloadColumnViews
{
  v81 = *MEMORY[0x277D85DE8];
  v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v4 = self->_columnViews;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v73;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v73 != v7)
        {
          objc_enumerationMutation(v4);
        }

        selectedViewController = [*(*(&v72 + 1) + 8 * i) selectedViewController];
        if (selectedViewController)
        {
          [v55 addObject:selectedViewController];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v72 objects:v80 count:16];
    }

    while (v6);
  }

  if (selfCopy->_columnChangeAnimationCount <= 0)
  {
    v10 = &OBJC_IVAR___SKUIChartColumnsView__numberOfVisibleColumns;
  }

  else
  {
    v10 = &OBJC_IVAR___SKUIChartColumnsView__animatingToNumberOfVisibleColumns;
  }

  v53 = *(&selfCopy->super.super.super.isa + *v10);
  v11 = [(NSArray *)selfCopy->_allViewControllers count];
  if (v11 >= 1)
  {
    v12 = v11;
    for (j = 0; j != v12; ++j)
    {
      v14 = [(NSArray *)selfCopy->_allViewControllers objectAtIndex:j];
      if ([v3 count] <= (j % v53))
      {
        v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v14, 0}];
        v15 = v3;
        v17 = v16;
      }

      else
      {
        v15 = [v3 objectAtIndex:j % v53];
        v16 = v15;
        v17 = v14;
      }

      [v15 addObject:v17];
    }
  }

  if (v53 == 1 && !selfCopy->_segmentedControl)
  {
    v18 = objc_alloc_init(SKUIFlexibleSegmentedControl);
    v19 = selfCopy;
    segmentedControl = selfCopy->_segmentedControl;
    selfCopy->_segmentedControl = v18;

    [(SKUIFlexibleSegmentedControl *)v19->_segmentedControl setDelegate:v19];
    [(UIView *)v19->_headerBackgroundView addSubview:v19->_segmentedControl];
  }

  v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v3;
  v52 = [obj countByEnumeratingWithState:&v68 objects:v79 count:16];
  if (v52)
  {
    v21 = *v69;
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    v23 = selfCopy;
    v47 = *v69;
    do
    {
      for (k = 0; k != v52; ++k)
      {
        if (*v69 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v68 + 1) + 8 * k);
        v26 = objc_alloc_init(SKUIIPadChartsColumnView);
        [(SKUIIPadChartsColumnView *)v26 setContentInset:v23->_contentInset.top, v23->_contentInset.left, v23->_contentInset.bottom, v23->_contentInset.right];
        [(SKUIIPadChartsColumnView *)v26 setContentViewControllers:v25];
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v27 = v55;
        v28 = [v27 countByEnumeratingWithState:&v64 objects:v78 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v65;
          while (2)
          {
            for (m = 0; m != v29; ++m)
            {
              if (*v65 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = [v25 indexOfObjectIdenticalTo:*(*(&v64 + 1) + 8 * m)];
              if (v32 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v22 = v32;
                [(SKUIIPadChartsColumnView *)v26 setSelectedViewControllerIndex:v32];
                goto LABEL_37;
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v64 objects:v78 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }

          v22 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_37:
          v23 = selfCopy;
        }

        if (v53 < 2)
        {
          v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v34 = v25;
          v35 = [v34 countByEnumeratingWithState:&v60 objects:v77 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v61;
            do
            {
              for (n = 0; n != v36; ++n)
              {
                if (*v61 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                title = [*(*(&v60 + 1) + 8 * n) title];
                [v33 addObject:title];
              }

              v36 = [v34 countByEnumeratingWithState:&v60 objects:v77 count:16];
            }

            while (v36);
          }

          [v49 addObjectsFromArray:v33];
          v23 = selfCopy;
          v21 = v47;
        }

        else
        {
          v33 = [(SKUIChartColumnsView *)v23 _headerViewWithViewControllers:v25];
          [(UIView *)v23->_headerBackgroundView addSubview:v33];
          [(NSArray *)v48 addObject:v33];
        }

        [v51 addObject:v26];
        [(SKUIChartColumnsView *)v23 insertSubview:v26 belowSubview:v23->_headerBackgroundView];
      }

      v52 = [obj countByEnumeratingWithState:&v68 objects:v79 count:16];
    }

    while (v52);
  }

  else
  {
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    v23 = selfCopy;
  }

  [(SKUIFlexibleSegmentedControl *)v23->_segmentedControl setItemTitles:v49];
  if (v22 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SKUIFlexibleSegmentedControl *)v23->_segmentedControl setSelectedSegmentIndex:v22];
  }

  [(NSArray *)v23->_columnViews makeObjectsPerformSelector:sel_removeFromSuperview];
  objc_storeStrong(&v23->_columnViews, v51);
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v40 = v23->_headerViews;
  v41 = [(NSArray *)v40 countByEnumeratingWithState:&v56 objects:v76 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v57;
    do
    {
      for (ii = 0; ii != v42; ++ii)
      {
        if (*v57 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v56 + 1) + 8 * ii);
        [v45 removeTarget:v23 action:0 forControlEvents:64];
        [v45 removeFromSuperview];
      }

      v42 = [(NSArray *)v40 countByEnumeratingWithState:&v56 objects:v76 count:16];
    }

    while (v42);
  }

  headerViews = v23->_headerViews;
  v23->_headerViews = v48;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIChartColumnsView initWithFrame:]";
}

@end