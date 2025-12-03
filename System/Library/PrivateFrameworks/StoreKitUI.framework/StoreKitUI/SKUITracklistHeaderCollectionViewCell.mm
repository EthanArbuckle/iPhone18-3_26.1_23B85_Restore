@interface SKUITracklistHeaderCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeForHeaderTitleLabel:(id)label;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (id)_attributedStringForLabel:(id)label context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (SKUITracklistHeaderCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
@end

@implementation SKUITracklistHeaderCollectionViewCell

- (SKUITracklistHeaderCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  height = [(SKUIViewReuseCollectionViewCell *)&v30 initWithFrame:x, y, width, height];
  if (height)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    columnViews = height->_columnViews;
    height->_columnViews = v17;

    v19 = objc_alloc_init(MEMORY[0x277D75D18]);
    bottomSeparatorView = height->_bottomSeparatorView;
    height->_bottomSeparatorView = v19;

    v21 = height->_bottomSeparatorView;
    v22 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v21 setBackgroundColor:v22];

    contentView = [(SKUITracklistHeaderCollectionViewCell *)height contentView];
    [contentView addSubview:height->_bottomSeparatorView];

    v24 = objc_alloc_init(MEMORY[0x277D75D18]);
    topSeparatorView = height->_topSeparatorView;
    height->_topSeparatorView = v24;

    v26 = height->_topSeparatorView;
    v27 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v26 setBackgroundColor:v27];

    contentView2 = [(SKUITracklistHeaderCollectionViewCell *)height contentView];
    [contentView2 addSubview:height->_topSeparatorView];
  }

  return height;
}

+ (CGSize)sizeForHeaderTitleLabel:(id)label
{
  labelCopy = label;
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

  v13 = [self _attributedStringForLabel:labelCopy context:0];
  [v13 size];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
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

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
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

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
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

  v17 = [contextCopy aggregateValueForKey:0x282806108];
  labelLayoutCache = [contextCopy labelLayoutCache];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __83__SKUITracklistHeaderCollectionViewCell_requestLayoutForViewElement_width_context___block_invoke;
  v21[3] = &unk_278200730;
  v23 = labelLayoutCache;
  selfCopy = self;
  v22 = contextCopy;
  v19 = labelLayoutCache;
  v20 = contextCopy;
  [v17 enumerateColumnsForHeader:elementCopy usingBlock:v21];
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

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
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
  widthCopy = width;
  v17 = [contextCopy aggregateValueForKey:0x282806108];
  labelLayoutCache = [contextCopy labelLayoutCache];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __79__SKUITracklistHeaderCollectionViewCell_sizeThatFitsWidth_viewElement_context___block_invoke;
  v24[3] = &unk_278200758;
  v19 = labelLayoutCache;
  v25 = v19;
  v26 = &v27;
  [v17 enumerateColumnsForHeader:elementCopy usingBlock:v24];
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

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v9 = [contextCopy aggregateValueForKey:0x282806108];
  columnData = self->_columnData;
  self->_columnData = v9;

  [(NSMutableDictionary *)self->_columnViews removeAllObjects];
  style = [elementCopy style];
  ikBorderColor = [style ikBorderColor];
  color = [ikBorderColor color];

  if (color)
  {
    v14 = color;
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
  v19 = elementCopy;
  v20 = contextCopy;
  v16 = contextCopy;
  v17 = elementCopy;
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
  contentView = [(SKUITracklistHeaderCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SKUITracklistColumnData *)self->_columnData interColumnSpacing];
  v13 = v12;
  contentView2 = [(SKUITracklistHeaderCollectionViewCell *)self contentView];
  effectiveUserInterfaceLayoutDirection = [contentView2 effectiveUserInterfaceLayoutDirection];

  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  [(SKUITracklistColumnData *)self->_columnData leftEdgeInset];
  v33[3] = v16;
  columns = [(SKUITracklistColumnData *)self->_columnData columns];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __55__SKUITracklistHeaderCollectionViewCell_layoutSubviews__block_invoke;
  v24 = &unk_2782007A8;
  v27 = v5;
  v28 = v7;
  v29 = v9;
  v30 = v11;
  selfCopy = self;
  v26 = v33;
  v32 = effectiveUserInterfaceLayoutDirection == 1;
  v31 = v13;
  [columns enumerateObjectsUsingBlock:&v21];

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
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

+ (id)_attributedStringForLabel:(id)label context:(id)context
{
  labelCopy = label;
  contextCopy = context;
  style = [labelCopy style];
  v8 = SKUIViewElementFontWithStyle(style);
  if (!v8)
  {
    clientContext = [contextCopy clientContext];
    v10 = SKUIUserInterfaceIdiom(clientContext);

    v11 = 10.0;
    if (v10 == 1)
    {
      v11 = 11.0;
    }

    v8 = [MEMORY[0x277D74300] systemFontOfSize:v11];
  }

  tintColor = [contextCopy tintColor];
  v13 = SKUIViewElementPlainColorWithStyle(style, tintColor);

  if (!v13)
  {
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
  }

  text = [labelCopy text];
  v15 = [text attributedStringWithDefaultFont:v8 foregroundColor:v13 style:style];

  return v15;
}

@end