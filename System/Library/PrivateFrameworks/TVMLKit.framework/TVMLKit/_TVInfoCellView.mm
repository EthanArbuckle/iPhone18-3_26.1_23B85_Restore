@interface _TVInfoCellView
+ (id)infoCellViewWithElement:(id)element existingView:(id)view;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits withHeaderWidth:(double)width;
- (UIEdgeInsets)headerMargin;
- (double)minimumHeaderWidth;
- (id)impressionableElementsContainedInDocument:(id)document;
- (void)layoutSubviews;
- (void)setDataViews:(id)views;
- (void)setHeaderContentView:(id)view;
@end

@implementation _TVInfoCellView

+ (id)infoCellViewWithElement:(id)element existingView:(id)view
{
  v74 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  viewCopy = view;
  objc_opt_class();
  v53 = viewCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = viewCopy;
  }

  else
  {
    v7 = [_TVInfoCellView alloc];
    v6 = [(_TVInfoCellView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  v8 = v6;
  -[_TVInfoCellView setSemanticContentAttribute:](v6, "setSemanticContentAttribute:", [elementCopy tv_semanticContentAttribute]);
  v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  obj = objc_alloc_init(MEMORY[0x277CBEB18]);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  layoutGuides = [(_TVInfoCellView *)v8 layoutGuides];
  v10 = [layoutGuides countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v68;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v68 != v12)
        {
          objc_enumerationMutation(layoutGuides);
        }

        v14 = *(*(&v67 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          identifier = [v14 identifier];
          v16 = [identifier isEqual:@"_TVInfoViewFocusGuide"];

          if (v16)
          {
            [obj addObject:v14];
          }
        }
      }

      v11 = [layoutGuides countByEnumeratingWithState:&v67 objects:v73 count:16];
    }

    while (v11);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v17 = obj;
  v18 = [v17 countByEnumeratingWithState:&v63 objects:v72 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v64;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v64 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(_TVInfoCellView *)v8 removeLayoutGuide:*(*(&v63 + 1) + 8 * j)];
      }

      v19 = [v17 countByEnumeratingWithState:&v63 objects:v72 count:16];
    }

    while (v19);
  }

  v49 = v17;

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obja = [elementCopy children];
  v22 = [obja countByEnumeratingWithState:&v59 objects:v71 count:16];
  v23 = v53;
  if (v22)
  {
    v24 = v22;
    v25 = *v60;
    v26 = 0x279D6D000uLL;
    do
    {
      v27 = 0;
      v55 = v24;
      do
      {
        if (*v60 != v25)
        {
          objc_enumerationMutation(obja);
        }

        v28 = *(*(&v59 + 1) + 8 * v27);
        if ([v28 tv_elementType] == 15)
        {
          children = [v28 children];
          firstObject = [children firstObject];

          sharedInterfaceFactory = [*(v26 + 1176) sharedInterfaceFactory];
          headerContentView = [(_TVInfoCellView *)v8 headerContentView];
          v33 = [sharedInterfaceFactory _viewFromElement:firstObject existingView:headerContentView];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v33 numberOfLines] != 1)
          {
            v58 = 173;
            v34 = [whitespaceAndNewlineCharacterSet mutableCopy];
            v35 = [MEMORY[0x277CCACA8] stringWithCharacters:&v58 length:1];
            [v34 addCharactersInString:v35];

            attributedText = [v33 attributedText];
            string = [attributedText string];
            v38 = [string componentsSeparatedByCharactersInSet:v34];

            if ([v38 count] <= 1)
            {
              [v33 setNumberOfLines:1];
            }

            v23 = v53;
          }

          [(_TVInfoCellView *)v8 setHeaderContentView:v33];
          style = [v28 style];
          [style tv_width];
          [(_TVInfoCellView *)v8 setHeaderWidth:?];

          style2 = [v28 style];
          [style2 tv_maxWidth];
          [(_TVInfoCellView *)v8 setHeaderMaxWidth:?];

          style3 = [v28 style];
          [style3 tv_minWidth];
          [(_TVInfoCellView *)v8 setHeaderMinWidth:?];

          style4 = [v28 style];
          [style4 tv_margin];
          [(_TVInfoCellView *)v8 setHeaderMargin:?];

          v26 = 0x279D6D000;
          v24 = v55;
        }

        else
        {
          sharedInterfaceFactory2 = [*(v26 + 1176) sharedInterfaceFactory];
          firstObject = [sharedInterfaceFactory2 _viewFromElement:v28 existingView:v23];

          if (firstObject)
          {
            [v54 addObject:firstObject];
          }
        }

        ++v27;
      }

      while (v24 != v27);
      v24 = [obja countByEnumeratingWithState:&v59 objects:v71 count:16];
    }

    while (v24);
  }

  [(_TVInfoCellView *)v8 setDataViews:v54];
  if ([v50 count])
  {
    [MEMORY[0x277CCAAD0] activateConstraints:v50];
  }

  v44 = elementCopy;
  v45 = v44;
  while (1)
  {
    parent = [v45 parent];

    if (!parent)
    {
      break;
    }

    parent2 = [v45 parent];

    if ([parent2 tv_elementType] == 19)
    {
      goto LABEL_45;
    }

    v45 = parent2;
    if ([parent2 tv_elementType] == 20)
    {
      [(_TVInfoCellView *)v8 setHeaderOnLeading:1];
      goto LABEL_45;
    }
  }

  parent2 = v45;
LABEL_45:

  return v8;
}

- (double)minimumHeaderWidth
{
  [(_TVInfoCellView *)self headerWidth];
  if (v3 <= 0.0)
  {
    [(_TVInfoCellView *)self headerMaxWidth];
    v6 = v5;
    [(_TVInfoCellView *)self headerMinWidth];
    v8 = v7;
    [(UIView *)self->_headerContentView tv_margin];
    v10 = v9;
    v12 = v11;
    [(UIView *)self->_headerContentView tv_sizeThatFits:fmax(v6 - v9 - v11, 0.0)];
    return fmax(v8, v12 + v10 + v13);
  }

  else
  {

    [(_TVInfoCellView *)self headerWidth];
  }

  return result;
}

- (void)setHeaderContentView:(id)view
{
  viewCopy = view;
  headerContentView = self->_headerContentView;
  v7 = viewCopy;
  if (headerContentView != viewCopy)
  {
    [(UIView *)headerContentView removeFromSuperview];
    objc_storeStrong(&self->_headerContentView, view);
    if (self->_headerContentView)
    {
      [(_TVInfoCellView *)self addSubview:?];
    }
  }

  [(_TVInfoCellView *)self setNeedsLayout];
}

- (void)setDataViews:(id)views
{
  v16 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  if (![(NSArray *)self->_dataViews isEqualToArray:viewsCopy])
  {
    [(NSArray *)self->_dataViews makeObjectsPerformSelector:sel_removeFromSuperview];
    objc_storeStrong(&self->_dataViews, views);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_dataViews;
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

          [(_TVInfoCellView *)self addSubview:*(*(&v11 + 1) + 8 * v10++), v11];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }

  [(_TVInfoCellView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(_TVInfoCellView *)self normalizedHeaderWidth];

  [(_TVInfoCellView *)self sizeThatFits:width withHeaderWidth:height, v6];
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits withHeaderWidth:(double)width
{
  height = fits.height;
  width = fits.width;
  [(UIView *)self tv_lineSpacing];
  v9 = v8;
  [(UIView *)self->_headerContentView tv_margin];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (width <= 0.0)
  {
    [(_TVInfoCellView *)self headerWidth];
    width = v18;
  }

  headerContentView = self->_headerContentView;
  if (self->_headerOnLeading)
  {
    [(UIView *)headerContentView sizeThatFits:width - v13 - v17, 0.0];
    v21 = v20;
    v22 = width - width;
    bottom = self->_headerMargin.bottom;
    top = self->_headerMargin.top;
    v25 = v22 - self->_headerMargin.right - self->_headerMargin.left;
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0.0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    dataViews = self->_dataViews;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __48___TVInfoCellView_sizeThatFits_withHeaderWidth___block_invoke;
    v35[3] = &unk_279D6FBA0;
    *&v35[6] = v25;
    v35[7] = 0;
    v35[4] = &v40;
    v35[5] = &v36;
    v35[8] = v9;
    [(NSArray *)dataViews enumerateObjectsUsingBlock:v35];
    v27 = fmax(bottom + top + v15 + v11 + v21, v41[3]);
  }

  else
  {
    [(UIView *)headerContentView sizeThatFits:width - self->_headerMargin.left - self->_headerMargin.right - v13 - v17, 0.0];
    v29 = self->_headerMargin.top + v15 + v11 + v28;
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = v29;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v30 = self->_dataViews;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __48___TVInfoCellView_sizeThatFits_withHeaderWidth___block_invoke_2;
    v34[3] = &unk_279D6FBC8;
    *&v34[7] = width;
    *&v34[8] = height;
    v34[4] = self;
    v34[5] = &v40;
    v34[6] = &v36;
    v34[9] = v9;
    [(NSArray *)v30 enumerateObjectsUsingBlock:v34];
    v27 = v41[3];
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  v31 = fmin(v27, height);
  if (height <= 0.0)
  {
    v32 = v27;
  }

  else
  {
    v32 = v31;
  }

  widthCopy = width;
  result.height = v32;
  result.width = widthCopy;
  return result;
}

- (void)layoutSubviews
{
  v49.receiver = self;
  v49.super_class = _TVInfoCellView;
  [(_TVInfoCellView *)&v49 layoutSubviews];
  [(_TVInfoCellView *)self bounds];
  Width = CGRectGetWidth(v50);
  [(_TVInfoCellView *)self bounds];
  Height = CGRectGetHeight(v51);
  [(UIView *)self tv_lineSpacing];
  v5 = v4;
  [(UIView *)self->_headerContentView tv_margin];
  v7 = v6;
  v9 = v8;
  v43 = v10;
  v12 = v11;
  tv_alignment = [(UIView *)self->_headerContentView tv_alignment];
  if (self->_headerOnLeading)
  {
    [(_TVInfoCellView *)self normalizedHeaderWidth];
    if (v14 <= 0.0)
    {
      [(_TVInfoCellView *)self headerWidth];
    }

    else
    {
      [(_TVInfoCellView *)self normalizedHeaderWidth];
    }

    v16 = v15;
  }

  else
  {
    v16 = Width - self->_headerMargin.left - self->_headerMargin.right;
  }

  [(UIView *)self->_headerContentView sizeThatFits:v16 - v9 - v12, 0.0];
  v18 = v17;
  v20 = v19;
  effectiveUserInterfaceLayoutDirection = [(_TVInfoCellView *)self effectiveUserInterfaceLayoutDirection];
  v22 = effectiveUserInterfaceLayoutDirection == 1;
  p_headerMargin = &self->_headerMargin;
  v24 = 8;
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v25 = 24;
  }

  else
  {
    v25 = 8;
  }

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v26 = v9;
  }

  else
  {
    v24 = 24;
    v26 = v12;
  }

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v27 = v12;
  }

  else
  {
    v27 = v9;
  }

  v28 = *(&p_headerMargin->top + v25);
  v29 = *(&p_headerMargin->top + v24);
  if (tv_alignment)
  {
    top = p_headerMargin->top;
    v31 = v27 + v28;
    if (tv_alignment != 1)
    {
      if (tv_alignment == 3)
      {
        v31 = v16 + v31 - v26 - v18;
      }

      else
      {
        v32 = (v16 - v18 - v27 - v26) * 0.5;
        v31 = v31 + floorf(v32);
      }
    }
  }

  else
  {
    v31 = v27 + v28;
    top = p_headerMargin->top;
  }

  v33 = v7 + top;
  headerContentView = self->_headerContentView;
  v35 = v18;
  v36 = v20;
  v52 = CGRectIntegral(*&v31);
  [(UIView *)headerContentView setFrame:v52.origin.x, v52.origin.y, v52.size.width, v52.size.height];
  headerOnLeading = self->_headerOnLeading;
  v38 = 0.0;
  if (self->_headerOnLeading)
  {
    v39 = v28 + v16 + v29;
  }

  else
  {
    v39 = 0.0;
  }

  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  bottom = 0.0;
  if (!headerOnLeading)
  {
    v38 = v43 + v7 + v20 + p_headerMargin->top;
    bottom = self->_headerMargin.bottom;
  }

  *&v48[3] = v38;
  v41 = Width - (v28 + v16 + v29);
  if (!headerOnLeading)
  {
    v41 = Width;
  }

  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v47[3] = 0;
  dataViews = self->_dataViews;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __33___TVInfoCellView_layoutSubviews__block_invoke;
  v45[3] = &unk_279D6FBF0;
  v46 = v22;
  v45[5] = v48;
  v45[6] = v47;
  *&v45[7] = bottom;
  v45[8] = v5;
  *&v45[9] = v41;
  v45[10] = 0;
  v45[4] = self;
  *&v45[11] = v39;
  *&v45[12] = Height;
  [(NSArray *)dataViews enumerateObjectsUsingBlock:v45];
  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v48, 8);
}

- (id)impressionableElementsContainedInDocument:(id)document
{
  v24 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  tv_associatedIKViewElement = [self tv_associatedIKViewElement];
  appDocument = [tv_associatedIKViewElement appDocument];
  v7 = [appDocument isEqual:documentCopy];

  if (v7)
  {
    array = [MEMORY[0x277CBEB18] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    dataViews = [(_TVInfoCellView *)self dataViews];
    v10 = [dataViews countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(dataViews);
          }

          v14 = [*(*(&v19 + 1) + 8 * i) tv_impressionableElementsForDocument:documentCopy];
          [array addObjectsFromArray:v14];
        }

        v11 = [dataViews countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    headerContentView = [(_TVInfoCellView *)self headerContentView];
    v16 = [headerContentView tv_impressionableElementsForDocument:documentCopy];
    [array addObjectsFromArray:v16];

    if ([array count])
    {
      v17 = [MEMORY[0x277CBEA60] arrayWithArray:array];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (UIEdgeInsets)headerMargin
{
  top = self->_headerMargin.top;
  left = self->_headerMargin.left;
  bottom = self->_headerMargin.bottom;
  right = self->_headerMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end