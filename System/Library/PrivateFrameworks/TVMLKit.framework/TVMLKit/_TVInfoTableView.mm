@interface _TVInfoTableView
+ (id)infoTableViewWithElement:(id)element existingView:(id)view;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)_normalizedInfoHeaderWidth;
- (id)impressionableElementsContainedInDocument:(id)document;
- (void)layoutSubviews;
- (void)setFooterView:(id)view;
- (void)setHeaderView:(id)view;
- (void)setInfoViews:(id)views;
@end

@implementation _TVInfoTableView

+ (id)infoTableViewWithElement:(id)element existingView:(id)view
{
  v29 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = viewCopy;
  }

  else
  {
    v8 = [_TVInfoTableView alloc];
    v7 = [(_TVFocusRedirectView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  v9 = v7;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v23 = elementCopy;
  children = [elementCopy children];
  v12 = [children countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(children);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        tv_elementType = [v16 tv_elementType];
        switch(tv_elementType)
        {
          case 13:
            v21 = +[TVInterfaceFactory sharedInterfaceFactory];
            v19 = [v21 _viewFromElement:v16 existingView:viewCopy];

            [(_TVInfoTableView *)v9 setFooterView:v19];
            break;
          case 18:
            v20 = +[TVInterfaceFactory sharedInterfaceFactory];
            v19 = [v20 _viewFromElement:v16 existingView:viewCopy];

            if (!v19)
            {
              continue;
            }

            [v10 addObject:v19];
            break;
          case 15:
            v18 = +[TVInterfaceFactory sharedInterfaceFactory];
            v19 = [v18 _viewFromElement:v16 existingView:viewCopy];

            [(_TVInfoTableView *)v9 setHeaderView:v19];
            break;
          default:
            continue;
        }
      }

      v13 = [children countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  [(_TVInfoTableView *)v9 setInfoViews:v10];

  return v9;
}

- (void)setHeaderView:(id)view
{
  viewCopy = view;
  headerView = self->_headerView;
  v7 = viewCopy;
  if (headerView != viewCopy)
  {
    [(UIView *)headerView removeFromSuperview];
    objc_storeStrong(&self->_headerView, view);
    if (self->_headerView)
    {
      [(_TVInfoTableView *)self addSubview:?];
    }
  }

  [(_TVInfoTableView *)self setNeedsLayout];
}

- (void)setInfoViews:(id)views
{
  v16 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  if (![(NSArray *)self->_infoViews isEqualToArray:viewsCopy])
  {
    [(NSArray *)self->_infoViews makeObjectsPerformSelector:sel_removeFromSuperview];
    objc_storeStrong(&self->_infoViews, views);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_infoViews;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

          [(_TVInfoTableView *)self addSubview:*(*(&v11 + 1) + 8 * v10++), v11];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }

  [(_TVInfoTableView *)self setNeedsLayout];
}

- (void)setFooterView:(id)view
{
  viewCopy = view;
  footerView = self->_footerView;
  v7 = viewCopy;
  if (footerView != viewCopy)
  {
    [(UIView *)footerView removeFromSuperview];
    objc_storeStrong(&self->_footerView, view);
    if (self->_footerView)
    {
      [(_TVInfoTableView *)self addSubview:?];
    }
  }

  [(_TVInfoTableView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(UIView *)self tv_lineSpacing];
  v7 = v6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  [(_TVInfoTableView *)self _normalizedInfoHeaderWidth];
  v9 = v8;
  firstObject = [(NSArray *)self->_infoViews firstObject];
  objc_opt_class();
  v11 = width;
  if (objc_opt_isKindOfClass())
  {
    v11 = width;
    if ([firstObject headerOnLeading])
    {
      if ([(_TVInfoTableView *)self effectiveUserInterfaceLayoutDirection]== 1)
      {
        [firstObject headerMargin];
      }

      else
      {
        [firstObject headerMargin];
        v12 = v13;
      }

      v11 = width - (v9 + v12);
    }
  }

  [(UIView *)self->_headerView sizeThatFits:v11, 0.0];
  *(v25 + 3) = v14;
  [(UIView *)self->_headerView tv_margin];
  v25[3] = v15 + v25[3];
  [(UIView *)self->_footerView sizeThatFits:v11, 0.0];
  v25[3] = v16 + v25[3];
  [(UIView *)self->_footerView tv_margin];
  v25[3] = v17 + v25[3];
  infoViews = self->_infoViews;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __33___TVInfoTableView_sizeThatFits___block_invoke;
  v23[3] = &unk_279D6FB78;
  *&v23[6] = width;
  *&v23[7] = height;
  v23[4] = self;
  v23[5] = &v24;
  *&v23[8] = v9;
  v23[9] = v7;
  [(NSArray *)infoViews enumerateObjectsUsingBlock:v23];
  v19 = fmin(v25[3], height);
  if (height == 0.0)
  {
    v20 = v25[3];
  }

  else
  {
    v20 = v19;
  }

  _Block_object_dispose(&v24, 8);
  v21 = width;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)layoutSubviews
{
  v41 = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = _TVInfoTableView;
  [(_TVFocusRedirectView *)&v39 layoutSubviews];
  [(_TVInfoTableView *)self bounds];
  v4 = v3;
  [(UIView *)self tv_lineSpacing];
  v6 = v5;
  [(_TVInfoTableView *)self bounds];
  Width = CGRectGetWidth(v42);
  v8 = 0.0;
  [(UIView *)self->_headerView sizeThatFits:Width, 0.0];
  v10 = v9;
  [(_TVInfoTableView *)self _normalizedInfoHeaderWidth];
  v12 = v11;
  firstObject = [(NSArray *)self->_infoViews firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = Width;
    if ([firstObject headerOnLeading])
    {
      effectiveUserInterfaceLayoutDirection = [(_TVInfoTableView *)self effectiveUserInterfaceLayoutDirection];
      [firstObject headerMargin];
      if (effectiveUserInterfaceLayoutDirection == 1)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      v8 = v12 + v18;
      v14 = Width - (v12 + v18);
    }
  }

  else
  {
    v14 = Width;
  }

  headerView = self->_headerView;
  v43.origin.y = 0.0;
  v43.origin.x = v8;
  v43.size.width = v14;
  v43.size.height = v10;
  v44 = CGRectIntegral(v43);
  [(UIView *)headerView setFrame:v44.origin.x, v44.origin.y, v44.size.width, v44.size.height];
  [(UIView *)self->_headerView tv_margin];
  v21 = v10 + v20;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v22 = self->_infoViews;
  v23 = [(NSArray *)v22 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v36;
    do
    {
      v26 = 0;
      do
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v35 + 1) + 8 * v26);
        if (v21 >= v4)
        {
          [*(*(&v35 + 1) + 8 * v26) setHidden:{1, v35}];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v27 setNormalizedHeaderWidth:v12];
          }

          [v27 sizeThatFits:{Width, v4 - v21, v35}];
          v29 = v28;
          v45.origin.x = 0.0;
          v45.origin.y = v21;
          v45.size.width = Width;
          v45.size.height = v29;
          v46 = CGRectIntegral(v45);
          [v27 setFrame:{v46.origin.x, v46.origin.y, v46.size.width, v46.size.height}];
          v21 = v21 + v6 + v29;
        }

        ++v26;
      }

      while (v24 != v26);
      v24 = [(NSArray *)v22 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v24);
  }

  if ([(NSArray *)self->_infoViews count])
  {
    v30 = v21 - v6;
  }

  else
  {
    v30 = v21;
  }

  [(UIView *)self->_footerView tv_margin];
  v32 = v30 + v31;
  [(UIView *)self->_footerView sizeThatFits:v14, 0.0];
  v47.size.height = v33;
  footerView = self->_footerView;
  v47.origin.x = v8;
  v47.origin.y = v32;
  v47.size.width = v14;
  v48 = CGRectIntegral(v47);
  [(UIView *)footerView setFrame:v48.origin.x, v48.origin.y, v48.size.width, v48.size.height];
}

- (id)impressionableElementsContainedInDocument:(id)document
{
  v26 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  tv_associatedIKViewElement = [self tv_associatedIKViewElement];
  appDocument = [tv_associatedIKViewElement appDocument];
  v7 = [appDocument isEqual:documentCopy];

  if (v7)
  {
    array = [MEMORY[0x277CBEB18] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    infoViews = [(_TVInfoTableView *)self infoViews];
    v10 = [infoViews countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(infoViews);
          }

          v14 = [*(*(&v21 + 1) + 8 * i) tv_impressionableElementsForDocument:documentCopy];
          [array addObjectsFromArray:v14];
        }

        v11 = [infoViews countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    headerView = [(_TVInfoTableView *)self headerView];
    v16 = [headerView tv_impressionableElementsForDocument:documentCopy];
    [array addObjectsFromArray:v16];

    footerView = [(_TVInfoTableView *)self footerView];
    v18 = [footerView tv_impressionableElementsForDocument:documentCopy];
    [array addObjectsFromArray:v18];

    if ([array count])
    {
      v19 = [MEMORY[0x277CBEA60] arrayWithArray:array];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (double)_normalizedInfoHeaderWidth
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_infoViews;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 minimumHeaderWidth];
          v6 = fmax(v6, v9);
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

@end