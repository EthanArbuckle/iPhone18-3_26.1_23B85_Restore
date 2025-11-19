@interface SKUITracklistHeaderCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeForHeaderTitleLabel:(id)a3;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringForLabel:(id)a3 context:(id)a4;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (SKUITracklistHeaderCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SKUITracklistHeaderCollectionViewCell

- (SKUITracklistHeaderCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUITracklistHeaderCollectionViewCell *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v30.receiver = self;
  v30.super_class = SKUITracklistHeaderCollectionViewCell;
  v16 = [(SKUIViewReuseCollectionViewCell *)&v30 initWithFrame:x, y, width, height];
  if (v16)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    columnViews = v16->_columnViews;
    v16->_columnViews = v17;

    v19 = objc_alloc_init(MEMORY[0x277D75D18]);
    bottomSeparatorView = v16->_bottomSeparatorView;
    v16->_bottomSeparatorView = v19;

    v21 = v16->_bottomSeparatorView;
    v22 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v21 setBackgroundColor:v22];

    v23 = [(SKUITracklistHeaderCollectionViewCell *)v16 contentView];
    [v23 addSubview:v16->_bottomSeparatorView];

    v24 = objc_alloc_init(MEMORY[0x277D75D18]);
    topSeparatorView = v16->_topSeparatorView;
    v16->_topSeparatorView = v24;

    v26 = v16->_topSeparatorView;
    v27 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v26 setBackgroundColor:v27];

    v28 = [(SKUITracklistHeaderCollectionViewCell *)v16 contentView];
    [v28 addSubview:v16->_topSeparatorView];
  }

  return v16;
}

+ (CGSize)sizeForHeaderTitleLabel:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUITracklistHeaderCollectionViewCell *)v5 sizeForHeaderTitleLabel:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [a1 _attributedStringForLabel:v4 context:0];
  [v13 size];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUITracklistHeaderCollectionViewCell *)v5 prefetchResourcesForViewElement:v6 reason:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUITracklistHeaderCollectionViewCell *)v4 preferredSizeForViewElement:v5 context:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v7 = a5;
  v8 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUITracklistHeaderCollectionViewCell *)v9 requestLayoutForViewElement:v10 width:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = [v7 aggregateValueForKey:0x282806108];
  v18 = [v7 labelLayoutCache];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __83__SKUITracklistHeaderCollectionViewCell_requestLayoutForViewElement_width_context___block_invoke;
  v21[3] = &unk_278200730;
  v23 = v18;
  v24 = a1;
  v22 = v7;
  v19 = v18;
  v20 = v7;
  [v17 enumerateColumnsForHeader:v8 usingBlock:v21];
}

void __83__SKUITracklistHeaderCollectionViewCell_requestLayoutForViewElement_width_context___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[6];
  v6 = a1[4];
  v7 = a3;
  v8 = a2;
  v12 = [v5 _attributedStringForLabel:v7 context:v6];
  v9 = a1[5];
  [v8 width];
  v11 = v10;

  [v9 requestLayoutForLabel:v7 attributedString:v12 width:v11];
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUITracklistHeaderCollectionViewCell *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3010000000;
  v30 = &unk_215F8ACD7;
  v32 = *(MEMORY[0x277CBF3A8] + 8);
  v31 = a3;
  v17 = [v8 aggregateValueForKey:0x282806108];
  v18 = [v8 labelLayoutCache];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __79__SKUITracklistHeaderCollectionViewCell_sizeThatFitsWidth_viewElement_context___block_invoke;
  v24[3] = &unk_278200758;
  v19 = v18;
  v25 = v19;
  v26 = &v27;
  [v17 enumerateColumnsForHeader:v7 usingBlock:v24];
  v20 = v28[4];
  v21 = v28[5] + 6.0;
  v28[5] = v21;

  _Block_object_dispose(&v27, 8);
  v22 = v20;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

void __79__SKUITracklistHeaderCollectionViewCell_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [a2 width];
  [v5 estimatedSizeForLabel:v6 width:?];
  v8 = v7;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  if (v10 < v8)
  {
    v10 = v8;
  }

  *(v9 + 40) = v10;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v8 aggregateValueForKey:0x282806108];
  columnData = self->_columnData;
  self->_columnData = v9;

  [(NSMutableDictionary *)self->_columnViews removeAllObjects];
  v11 = [v7 style];
  v12 = [v11 ikBorderColor];
  v13 = [v12 color];

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  }

  v15 = v14;
  [(UIView *)self->_bottomSeparatorView setBackgroundColor:v14];
  [(UIView *)self->_topSeparatorView setBackgroundColor:v15];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__SKUITracklistHeaderCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v18[3] = &unk_2781F8450;
  v18[4] = self;
  v19 = v7;
  v20 = v8;
  v16 = v8;
  v17 = v7;
  [(SKUIViewReuseCollectionViewCell *)self modifyUsingBlock:v18];
}

void __77__SKUITracklistHeaderCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 832);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__SKUITracklistHeaderCollectionViewCell_reloadWithViewElement_width_context___block_invoke_2;
  v9[3] = &unk_278200780;
  v10 = v3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v8 = v3;
  [v5 enumerateColumnsForHeader:v4 usingBlock:v9];
}

void __77__SKUITracklistHeaderCollectionViewCell_reloadWithViewElement_width_context___block_invoke_2(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = MEMORY[0x277CCABB0];
  v8 = a3;
  v9 = a2;
  v14 = [[v7 alloc] initWithUnsignedInteger:a4];
  v10 = a1[4];
  [v9 width];
  v12 = v11;

  v13 = [v10 addLabelViewWithElement:v8 width:a1[5] context:v12];

  [*(a1[6] + 840) setObject:v13 forKey:v14];
}

- (void)layoutSubviews
{
  v34.receiver = self;
  v34.super_class = SKUITracklistHeaderCollectionViewCell;
  [(SKUICollectionViewCell *)&v34 layoutSubviews];
  v3 = [(SKUITracklistHeaderCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SKUITracklistColumnData *)self->_columnData interColumnSpacing];
  v13 = v12;
  v14 = [(SKUITracklistHeaderCollectionViewCell *)self contentView];
  v15 = [v14 effectiveUserInterfaceLayoutDirection];

  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  [(SKUITracklistColumnData *)self->_columnData leftEdgeInset];
  v33[3] = v16;
  v17 = [(SKUITracklistColumnData *)self->_columnData columns];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __55__SKUITracklistHeaderCollectionViewCell_layoutSubviews__block_invoke;
  v24 = &unk_2782007A8;
  v27 = v5;
  v28 = v7;
  v29 = v9;
  v30 = v11;
  v25 = self;
  v26 = v33;
  v32 = v15 == 1;
  v31 = v13;
  [v17 enumerateObjectsUsingBlock:&v21];

  v18 = [MEMORY[0x277D759A0] mainScreen];
  [v18 scale];
  v20 = 1.0 / v19;

  [(UIView *)self->_bottomSeparatorView setFrame:0.0, v11 - v20, v9, v20];
  [(UIView *)self->_topSeparatorView setFrame:0.0, 0.0, v9, v20];
  _Block_object_dispose(v33, 8);
}

void __55__SKUITracklistHeaderCollectionViewCell_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = a2;
  v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:a3];
  v6 = [*(*(a1 + 32) + 840) objectForKey:v5];
  [v21 width];
  v8 = v7;
  if (!v6)
  {
    goto LABEL_14;
  }

  v9 = *MEMORY[0x277CBF3A0];
  [v6 sizeThatFits:{v7, *(a1 + 72)}];
  v11 = v10;
  v13 = v12;
  *&v10 = (*(a1 + 72) - v12) * 0.5;
  v14 = floorf(*&v10);
  v15 = [v21 headerAlignment];
  if (v15 > 2)
  {
    if ((v15 - 3) >= 2)
    {
      goto LABEL_11;
    }

LABEL_8:
    v9 = *(*(*(a1 + 40) + 8) + 24);
    goto LABEL_11;
  }

  switch(v15)
  {
    case 0:
      goto LABEL_8;
    case 1:
      v16 = (v8 - v11) * 0.5 + *(*(*(a1 + 40) + 8) + 24);
      goto LABEL_10;
    case 2:
      v16 = v8 + *(*(*(a1 + 40) + 8) + 24) - v11;
LABEL_10:
      v17 = v16;
      v9 = floorf(v17);
      break;
  }

LABEL_11:
  v18 = v14;
  if (*(a1 + 88) == 1)
  {
    v9 = CGRectWithFlippedOriginRelativeToBoundingRect(v9, v18, v11, v13, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
    v11 = v19;
    v13 = v20;
  }

  [v6 setFrame:{v9, v18, v11, v13}];
LABEL_14:
  *(*(*(a1 + 40) + 8) + 24) = v8 + *(a1 + 80) + *(*(*(a1 + 40) + 8) + 24);
}

+ (id)_attributedStringForLabel:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 style];
  v8 = SKUIViewElementFontWithStyle(v7);
  if (!v8)
  {
    v9 = [v6 clientContext];
    v10 = SKUIUserInterfaceIdiom(v9);

    v11 = 10.0;
    if (v10 == 1)
    {
      v11 = 11.0;
    }

    v8 = [MEMORY[0x277D74300] systemFontOfSize:v11];
  }

  v12 = [v6 tintColor];
  v13 = SKUIViewElementPlainColorWithStyle(v7, v12);

  if (!v13)
  {
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
  }

  v14 = [v5 text];
  v15 = [v14 attributedStringWithDefaultFont:v8 foregroundColor:v13 style:v7];

  return v15;
}

@end