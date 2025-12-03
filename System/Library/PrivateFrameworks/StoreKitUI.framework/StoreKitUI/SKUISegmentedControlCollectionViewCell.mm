@interface SKUISegmentedControlCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (BOOL)updateWithItemState:(id)state context:(id)context animated:(BOOL)animated;
- (id)viewForElementIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
@end

@implementation SKUISegmentedControlCollectionViewCell

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUISegmentedControlCollectionViewCell *)v5 prefetchResourcesForViewElement:v6 reason:v7 context:v8, v9, v10, v11, v12];
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
        [(SKUISegmentedControlCollectionViewCell *)v4 preferredSizeForViewElement:v5 context:v6, v7, v8, v9, v10, v11];
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
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      [(SKUISegmentedControlCollectionViewCell *)v5 requestLayoutForViewElement:v6 width:v7 context:v8, v9, v10, v11, v12];
    }
  }
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        [(SKUISegmentedControlCollectionViewCell *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  [contextCopy sizeForViewElement:elementCopy width:width];
  v18 = v17;

  widthCopy = width;
  v20 = v18;
  result.height = v20;
  result.width = widthCopy;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        [(SKUISegmentedControlCollectionViewCell *)v9 reloadWithViewElement:v10 width:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  viewElement = [(SKUISegmentedControlViewElementController *)self->_elementController viewElement];

  if (viewElement == elementCopy)
  {
    [(SKUISegmentedControlViewElementController *)self->_elementController reloadAfterDocumentUpdate];
  }

  else
  {
    bottomDividerView = self->_bottomDividerView;
    self->_bottomDividerView = 0;

    elementController = self->_elementController;
    self->_elementController = 0;

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __78__SKUISegmentedControlCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
    v20[3] = &unk_2781F8450;
    v21 = elementCopy;
    v22 = contextCopy;
    selfCopy = self;
    [(SKUIViewReuseCollectionViewCell *)self modifyUsingBlock:v20];
  }
}

void __78__SKUISegmentedControlCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = [v18 addReusableViewWithReuseIdentifier:0x2828069E8];
  v4 = [*(a1 + 32) style];
  v5 = [*(a1 + 40) tintColor];
  v6 = SKUIViewElementPlainColorWithStyle(v4, v5);

  if (!v6)
  {
    v6 = [MEMORY[0x277D75348] colorWithWhite:0.588235294 alpha:1.0];
  }

  [v3 setTintColor:v6];
  v7 = [[SKUISegmentedControlViewElementController alloc] initWithViewElement:*(a1 + 32) segmentedControl:v3];
  v8 = *(a1 + 48);
  v9 = *(v8 + 832);
  *(v8 + 832) = v7;

  v10 = *(*(a1 + 48) + 832);
  v11 = [*(a1 + 40) clientContext];
  [v10 setClientContext:v11];

  v12 = *(*(a1 + 48) + 832);
  v13 = [*(a1 + 40) parentViewController];
  [v12 setParentViewController:v13];

  v14 = [*(a1 + 32) bottomDivider];
  if (v14)
  {
    v15 = [v18 addDividerWithElement:v14 context:*(a1 + 40)];
    v16 = *(a1 + 48);
    v17 = *(v16 + 824);
    *(v16 + 824) = v15;

    [*(*(a1 + 48) + 824) setDividerOrientation:0];
    [*(*(a1 + 48) + 824) setDividerSize:0.0];
  }
}

- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISegmentedControlCollectionViewCell *)v5 setImage:v6 forArtworkRequest:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

- (BOOL)updateWithItemState:(id)state context:(id)context animated:(BOOL)animated
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISegmentedControlCollectionViewCell *)v5 updateWithItemState:v6 context:v7 animated:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

- (id)viewForElementIdentifier:(id)identifier
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUISegmentedControlCollectionViewCell *)v3 viewForElementIdentifier:v4, v5, v6, v7, v8, v9, v10];
      }
    }
  }

  return 0;
}

- (void)layoutSubviews
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUISegmentedControlCollectionViewCell *)v3 layoutSubviews:v4];
      }
    }
  }

  v37.receiver = self;
  v37.super_class = SKUISegmentedControlCollectionViewCell;
  [(SKUICollectionViewCell *)&v37 layoutSubviews];
  contentView = [(SKUISegmentedControlCollectionViewCell *)self contentView];
  [contentView bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [(SKUIViewReuseCollectionViewCell *)self contentInset];
  v21 = v13 + v20;
  v23 = v15 + v22;
  v25 = v17 - (v20 + v24);
  v27 = v19 - (v22 + v26);
  segmentedControlView = [(SKUISegmentedControlViewElementController *)self->_elementController segmentedControlView];
  [segmentedControlView sizeThatFits:{v25, v27}];
  v30 = v29;
  v32 = v31;
  *&v29 = v21 + (v25 - v29) * 0.5;
  *&v31 = v23 + (v27 - v31) * 0.5;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(floorf(*&v29), floorf(*&v31), v30, v32, v13, v15, v17, v19);
  [segmentedControlView setFrame:?];
  if (self->_bottomDividerView)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v35 = 1.0 / v34;

    bottomDividerView = self->_bottomDividerView;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(0.0, v19 - v35, v17, v35, v13, v15, v17, v19);
    [(SKUIDividerView *)bottomDividerView setFrame:?];
  }
}

@end