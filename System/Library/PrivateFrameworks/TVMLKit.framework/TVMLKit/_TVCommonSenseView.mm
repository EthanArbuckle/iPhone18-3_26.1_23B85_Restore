@interface _TVCommonSenseView
- (_TVCommonSenseView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setFooterView:(id)view;
- (void)setHeaderView:(id)view;
- (void)setInfoViews:(id)views;
@end

@implementation _TVCommonSenseView

- (_TVCommonSenseView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _TVCommonSenseView;
  v3 = [(_TVCommonSenseView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    containerView = v3->_containerView;
    v3->_containerView = v5;

    [(UIView *)v3->_containerView setBackgroundColor:0];
    [(_TVCommonSenseView *)v3 addSubview:v3->_containerView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v67 = *MEMORY[0x277D85DE8];
  v65.receiver = self;
  v65.super_class = _TVCommonSenseView;
  [(_TVCommonSenseView *)&v65 layoutSubviews];
  [(_TVCommonSenseView *)self bounds];
  v4 = v3;
  [(UIView *)self->_headerView tv_itemWidth];
  if (v5 == 0.0)
  {
    v5 = v4;
  }

  [(UIView *)self->_headerView sizeThatFits:v5, 1.79769313e308];
  v7 = v6;
  v9 = v8;
  [(UIView *)self->_headerView tv_margin];
  v11 = v10;
  v13 = v12;
  v15 = v12 + v7 + v14;
  v17 = v10 + v9 + v16;
  [(UIView *)self->_headerView setFrame:v12, v10, v15, v17];
  *rect = v13;
  v68.origin.x = v13;
  v60 = v17;
  v61 = v11;
  v68.origin.y = v11;
  v18 = v15;
  v68.size.width = v15;
  v68.size.height = v17;
  MaxY = CGRectGetMaxY(v68);
  memset(&rect[1], 0, 32);
  v63 = 0u;
  v64 = 0u;
  infoViews = [(_TVCommonSenseView *)self infoViews];
  v21 = [infoViews countByEnumeratingWithState:&rect[1] objects:v66 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *rect[3];
    v24 = 0.0;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*rect[3] != v23)
        {
          objc_enumerationMutation(infoViews);
        }

        v26 = *(rect[2] + 8 * i);
        [v26 tv_itemWidth];
        if (v27 == 0.0)
        {
          v27 = v4;
        }

        if (v27 > v24)
        {
          v24 = v27;
        }

        [v26 sizeThatFits:?];
        v29 = v28;
        v31 = v30;
        [v26 tv_margin];
        v33 = v32;
        v35 = MaxY + v34;
        v37 = v32 + v29 + v36;
        v39 = v34 + v31 + v38;
        [v26 setFrame:{v32, v35, v37, v39}];
        v69.origin.x = v33;
        v69.origin.y = v35;
        v69.size.width = v37;
        v69.size.height = v39;
        MaxY = CGRectGetMaxY(v69);
      }

      v22 = [infoViews countByEnumeratingWithState:&rect[1] objects:v66 count:16];
    }

    while (v22);
  }

  else
  {
    v24 = 0.0;
  }

  footerView = self->_footerView;
  if (footerView)
  {
    *&v70.origin.x = rect[0];
    v41 = v61;
    v70.origin.y = v61;
    v70.size.width = v18;
    v70.size.height = v17;
    Width = CGRectGetWidth(v70);
    if (v24 >= Width)
    {
      Width = v24;
    }

    [(_TVCommonSenseFooterView *)footerView sizeThatFits:Width, 0.0];
    v44 = v43;
    v46 = v45;
    [(UIView *)self->_footerView tv_margin];
    v48 = v47;
    v50 = MaxY + v49;
    v52 = v44 + v47 + v51;
    v54 = v46 + v49 + v53;
    [(_TVCommonSenseFooterView *)self->_footerView setFrame:v47, v50, v52, v54];
    v71.origin.x = v48;
    v71.origin.y = v50;
    v71.size.width = v52;
    v71.size.height = v54;
    CGRectGetMaxY(v71);
    v55 = v60;
    v56 = v18;
  }

  else
  {
    v55 = v17;
    v41 = v61;
    v56 = v18;
  }

  v57 = rect[0];
  v58 = v41;
  CGRectGetWidth(*(&v56 - 2));
  containerView = self->_containerView;
  UIRectCenteredIntegralRect();
  [(UIView *)containerView setFrame:?];
}

- (void)setHeaderView:(id)view
{
  viewCopy = view;
  headerView = self->_headerView;
  if (headerView != viewCopy)
  {
    v8 = viewCopy;
    if (headerView)
    {
      [(UIView *)headerView removeFromSuperview];
      v7 = self->_headerView;
      self->_headerView = 0;

      viewCopy = v8;
    }

    if (viewCopy)
    {
      objc_storeStrong(&self->_headerView, view);
      [(UIView *)self->_containerView addSubview:self->_headerView];
    }

    headerView = [(_TVCommonSenseView *)self setNeedsLayout];
    viewCopy = v8;
  }

  MEMORY[0x2821F96F8](headerView, viewCopy);
}

- (void)setInfoViews:(id)views
{
  v26 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  if (([viewsCopy isEqual:self->_infoViews] & 1) == 0)
  {
    if ([(NSArray *)self->_infoViews count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v6 = self->_infoViews;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v21;
        do
        {
          v10 = 0;
          do
          {
            if (*v21 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [*(*(&v20 + 1) + 8 * v10++) removeFromSuperview];
          }

          while (v8 != v10);
          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v8);
      }
    }

    objc_storeStrong(&self->_infoViews, views);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = self->_infoViews;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(UIView *)self->_containerView addSubview:*(*(&v16 + 1) + 8 * v15++), v16];
        }

        while (v13 != v15);
        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }

    [(_TVCommonSenseView *)self setNeedsLayout];
  }
}

- (void)setFooterView:(id)view
{
  viewCopy = view;
  footerView = self->_footerView;
  if (footerView != viewCopy)
  {
    v8 = viewCopy;
    if (footerView)
    {
      [(_TVCommonSenseFooterView *)footerView removeFromSuperview];
      v7 = self->_footerView;
      self->_footerView = 0;

      viewCopy = v8;
    }

    if (viewCopy)
    {
      objc_storeStrong(&self->_footerView, view);
      [(UIView *)self->_containerView addSubview:self->_footerView];
    }

    footerView = [(_TVCommonSenseView *)self setNeedsLayout];
    viewCopy = v8;
  }

  MEMORY[0x2821F96F8](footerView, viewCopy);
}

@end