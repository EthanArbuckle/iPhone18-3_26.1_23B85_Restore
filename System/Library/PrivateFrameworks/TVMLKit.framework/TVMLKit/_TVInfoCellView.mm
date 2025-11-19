@interface _TVInfoCellView
+ (id)infoCellViewWithElement:(id)a3 existingView:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 withHeaderWidth:(double)a4;
- (UIEdgeInsets)headerMargin;
- (double)minimumHeaderWidth;
- (id)impressionableElementsContainedInDocument:(id)a3;
- (void)layoutSubviews;
- (void)setDataViews:(id)a3;
- (void)setHeaderContentView:(id)a3;
@end

@implementation _TVInfoCellView

+ (id)infoCellViewWithElement:(id)a3 existingView:(id)a4
{
  v74 = *MEMORY[0x277D85DE8];
  v51 = a3;
  v5 = a4;
  objc_opt_class();
  v53 = v5;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v7 = [_TVInfoCellView alloc];
    v6 = [(_TVInfoCellView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  v8 = v6;
  -[_TVInfoCellView setSemanticContentAttribute:](v6, "setSemanticContentAttribute:", [v51 tv_semanticContentAttribute]);
  v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v52 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  obj = objc_alloc_init(MEMORY[0x277CBEB18]);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v9 = [(_TVInfoCellView *)v8 layoutGuides];
  v10 = [v9 countByEnumeratingWithState:&v67 objects:v73 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v67 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 identifier];
          v16 = [v15 isEqual:@"_TVInfoViewFocusGuide"];

          if (v16)
          {
            [obj addObject:v14];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v67 objects:v73 count:16];
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
  obja = [v51 children];
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
          v29 = [v28 children];
          v30 = [v29 firstObject];

          v31 = [*(v26 + 1176) sharedInterfaceFactory];
          v32 = [(_TVInfoCellView *)v8 headerContentView];
          v33 = [v31 _viewFromElement:v30 existingView:v32];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v33 numberOfLines] != 1)
          {
            v58 = 173;
            v34 = [v52 mutableCopy];
            v35 = [MEMORY[0x277CCACA8] stringWithCharacters:&v58 length:1];
            [v34 addCharactersInString:v35];

            v36 = [v33 attributedText];
            v37 = [v36 string];
            v38 = [v37 componentsSeparatedByCharactersInSet:v34];

            if ([v38 count] <= 1)
            {
              [v33 setNumberOfLines:1];
            }

            v23 = v53;
          }

          [(_TVInfoCellView *)v8 setHeaderContentView:v33];
          v39 = [v28 style];
          [v39 tv_width];
          [(_TVInfoCellView *)v8 setHeaderWidth:?];

          v40 = [v28 style];
          [v40 tv_maxWidth];
          [(_TVInfoCellView *)v8 setHeaderMaxWidth:?];

          v41 = [v28 style];
          [v41 tv_minWidth];
          [(_TVInfoCellView *)v8 setHeaderMinWidth:?];

          v42 = [v28 style];
          [v42 tv_margin];
          [(_TVInfoCellView *)v8 setHeaderMargin:?];

          v26 = 0x279D6D000;
          v24 = v55;
        }

        else
        {
          v43 = [*(v26 + 1176) sharedInterfaceFactory];
          v30 = [v43 _viewFromElement:v28 existingView:v23];

          if (v30)
          {
            [v54 addObject:v30];
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

  v44 = v51;
  v45 = v44;
  while (1)
  {
    v46 = [v45 parent];

    if (!v46)
    {
      break;
    }

    v47 = [v45 parent];

    if ([v47 tv_elementType] == 19)
    {
      goto LABEL_45;
    }

    v45 = v47;
    if ([v47 tv_elementType] == 20)
    {
      [(_TVInfoCellView *)v8 setHeaderOnLeading:1];
      goto LABEL_45;
    }
  }

  v47 = v45;
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

- (void)setHeaderContentView:(id)a3
{
  v5 = a3;
  headerContentView = self->_headerContentView;
  v7 = v5;
  if (headerContentView != v5)
  {
    [(UIView *)headerContentView removeFromSuperview];
    objc_storeStrong(&self->_headerContentView, a3);
    if (self->_headerContentView)
    {
      [(_TVInfoCellView *)self addSubview:?];
    }
  }

  [(_TVInfoCellView *)self setNeedsLayout];
}

- (void)setDataViews:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(NSArray *)self->_dataViews isEqualToArray:v5])
  {
    [(NSArray *)self->_dataViews makeObjectsPerformSelector:sel_removeFromSuperview];
    objc_storeStrong(&self->_dataViews, a3);
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(_TVInfoCellView *)self normalizedHeaderWidth];

  [(_TVInfoCellView *)self sizeThatFits:width withHeaderWidth:height, v6];
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3 withHeaderWidth:(double)a4
{
  height = a3.height;
  width = a3.width;
  [(UIView *)self tv_lineSpacing];
  v9 = v8;
  [(UIView *)self->_headerContentView tv_margin];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (a4 <= 0.0)
  {
    [(_TVInfoCellView *)self headerWidth];
    a4 = v18;
  }

  headerContentView = self->_headerContentView;
  if (self->_headerOnLeading)
  {
    [(UIView *)headerContentView sizeThatFits:a4 - v13 - v17, 0.0];
    v21 = v20;
    v22 = width - a4;
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

  v33 = width;
  result.height = v32;
  result.width = v33;
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
  v13 = [(UIView *)self->_headerContentView tv_alignment];
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
  v21 = [(_TVInfoCellView *)self effectiveUserInterfaceLayoutDirection];
  v22 = v21 == 1;
  p_headerMargin = &self->_headerMargin;
  v24 = 8;
  if (v21 == 1)
  {
    v25 = 24;
  }

  else
  {
    v25 = 8;
  }

  if (v21 == 1)
  {
    v26 = v9;
  }

  else
  {
    v24 = 24;
    v26 = v12;
  }

  if (v21 == 1)
  {
    v27 = v12;
  }

  else
  {
    v27 = v9;
  }

  v28 = *(&p_headerMargin->top + v25);
  v29 = *(&p_headerMargin->top + v24);
  if (v13)
  {
    top = p_headerMargin->top;
    v31 = v27 + v28;
    if (v13 != 1)
    {
      if (v13 == 3)
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

- (id)impressionableElementsContainedInDocument:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [self tv_associatedIKViewElement];
  v6 = [v5 appDocument];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEB18] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [(_TVInfoCellView *)self dataViews];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v19 + 1) + 8 * i) tv_impressionableElementsForDocument:v4];
          [v8 addObjectsFromArray:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    v15 = [(_TVInfoCellView *)self headerContentView];
    v16 = [v15 tv_impressionableElementsForDocument:v4];
    [v8 addObjectsFromArray:v16];

    if ([v8 count])
    {
      v17 = [MEMORY[0x277CBEA60] arrayWithArray:v8];
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