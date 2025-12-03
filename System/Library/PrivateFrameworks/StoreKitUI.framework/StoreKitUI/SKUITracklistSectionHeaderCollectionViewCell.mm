@interface SKUITracklistSectionHeaderCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (double)_titlesWidthForWidth:(double)width columnData:(id)data;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)updateWithItemState:(id)state context:(id)context animated:(BOOL)animated;
- (SKUITracklistSectionHeaderCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_buttonAction:(id)action;
- (void)_showConfirmationAction:(id)action;
- (void)itemOfferButtonWillAnimateTransition:(id)transition;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
@end

@implementation SKUITracklistSectionHeaderCollectionViewCell

- (SKUITracklistSectionHeaderCollectionViewCell)initWithFrame:(CGRect)frame
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
        [(SKUITracklistSectionHeaderCollectionViewCell *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v23.receiver = self;
  v23.super_class = SKUITracklistSectionHeaderCollectionViewCell;
  height = [(SKUIViewReuseCollectionViewCell *)&v23 initWithFrame:x, y, width, height];
  if (height)
  {
    v17 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = height->_separatorView;
    height->_separatorView = v17;

    v19 = height->_separatorView;
    v20 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v19 setBackgroundColor:v20];

    contentView = [(SKUITracklistSectionHeaderCollectionViewCell *)height contentView];
    [contentView addSubview:height->_separatorView];
  }

  return height;
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUITracklistSectionHeaderCollectionViewCell *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  button = [elementCopy button];
  if (button)
  {
    v18 = [contextCopy prefetchResourcesForViewElement:button reason:reason];
  }

  else
  {
    v18 = 0;
  }

  titleLabels = [elementCopy titleLabels];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = [titleLabels countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v26;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(titleLabels);
        }

        v18 |= [contextCopy prefetchResourcesForViewElement:*(*(&v25 + 1) + 8 * i) reason:reason];
      }

      v21 = [titleLabels countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v21);
  }

  return v18 & 1;
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
        [(SKUITracklistSectionHeaderCollectionViewCell *)v4 preferredSizeForViewElement:v5 context:v6, v7, v8, v9, v10, v11];
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
  v41 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUITracklistSectionHeaderCollectionViewCell *)v10 requestLayoutForViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [contextCopy aggregateValueForKey:0x282806108];
  [self _titlesWidthForWidth:v18 columnData:width];
  v20 = v19;
  v35 = elementCopy;
  titleLabels = [elementCopy titleLabels];
  labelLayoutCache = [contextCopy labelLayoutCache];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v23 = titleLabels;
  v24 = [v23 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v37;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v36 + 1) + 8 * i);
        v29 = SKUITracklistAttributedStringForLabel(0, v28, contextCopy);
        [labelLayoutCache requestLayoutForLabel:v28 attributedString:v29 width:v20];
      }

      v25 = [v23 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v25);
  }

  button = [v35 button];
  elementType = [button elementType];
  if (elementType == 141 || elementType == 12)
  {
    v32 = SKUITracklistAttributedStringForButton(0, button, contextCopy);
    v33 = [v18 columnForIdentifier:1];
    [v33 width];
    [labelLayoutCache requestLayoutForButton:button attributedString:v32 width:v34];
  }
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  v37 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUITracklistSectionHeaderCollectionViewCell *)v10 sizeThatFitsWidth:v11 viewElement:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  titleLabels = [elementCopy titleLabels];
  v19 = [contextCopy aggregateValueForKey:0x282806108];
  [self _titlesWidthForWidth:v19 columnData:width];
  v21 = v20;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v22 = titleLabels;
  v23 = [v22 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v33;
    v26 = 0.0;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [contextCopy sizeForViewElement:*(*(&v32 + 1) + 8 * i) width:{v21, v32}];
        v26 = v26 + v28;
      }

      v24 = [v22 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v24);
  }

  else
  {
    v26 = 0.0;
  }

  if (v26 <= 32.0)
  {
    v29 = 44.0;
  }

  else
  {
    v29 = v26 + 20.0;
  }

  widthCopy = width;
  v31 = v29;
  result.height = v31;
  result.width = widthCopy;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  button = self->_button;
  self->_button = 0;

  buttonViewElement = self->_buttonViewElement;
  self->_buttonViewElement = 0;

  buyButtonDescriptor = self->_buyButtonDescriptor;
  self->_buyButtonDescriptor = 0;

  v13 = [contextCopy aggregateValueForKey:0x282806108];
  columnData = self->_columnData;
  self->_columnData = v13;

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  labels = self->_labels;
  self->_labels = v15;

  style = [elementCopy style];
  ikBorderColor = [style ikBorderColor];
  color = [ikBorderColor color];

  separatorView = self->_separatorView;
  if (color)
  {
    [(UIView *)self->_separatorView setBackgroundColor:color];
  }

  else
  {
    v21 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)separatorView setBackgroundColor:v21];
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __84__SKUITracklistSectionHeaderCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v24[3] = &unk_2781F95C8;
  widthCopy = width;
  v24[4] = self;
  v25 = elementCopy;
  v26 = contextCopy;
  v22 = contextCopy;
  v23 = elementCopy;
  [(SKUIViewReuseCollectionViewCell *)self modifyUsingBlock:v24];
}

void __84__SKUITracklistSectionHeaderCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [objc_opt_class() _titlesWidthForWidth:*(*(a1 + 32) + 848) columnData:*(a1 + 56)];
  v5 = v4;
  v6 = [*(a1 + 40) button];
  if (([v6 elementType] & 0xFFFFFFFFFFFFFF7FLL) == 0xD)
  {
    v7 = [*(*(a1 + 32) + 848) columnForIdentifier:1];
    [v7 width];
    v8 = [v3 addButtonWithElement:v6 width:*(a1 + 48) context:?];
    [v8 addTarget:*(a1 + 32) action:sel__cancelConfirmationAction_ forControlEvents:0x10000];
    [v8 addTarget:*(a1 + 32) action:sel__buttonAction_ forControlEvents:0x20000];
    [v8 addTarget:*(a1 + 32) action:sel__showConfirmationAction_ forControlEvents:0x40000];
    [v8 setItemOfferDelegate:*(a1 + 32)];
    v9 = *(a1 + 32);
    v10 = *(v9 + 824);
    *(v9 + 824) = v8;
    v11 = v8;

    objc_storeStrong((*(a1 + 32) + 832), v6);
    v12 = [*(*(a1 + 32) + 832) buyButtonDescriptor];
    v13 = *(a1 + 32);
    v14 = *(v13 + 840);
    *(v13 + 840) = v12;
  }

  v15 = [*(a1 + 40) titleLabels];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [v3 addLabelViewWithElement:*(*(&v21 + 1) + 8 * v19) width:*(a1 + 48) context:v5];
        [*(*(a1 + 32) + 856) addObject:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }
}

- (BOOL)updateWithItemState:(id)state context:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  stateCopy = state;
  contextCopy = context;
  v10 = [(SKUIBuyButtonDescriptor *)self->_buyButtonDescriptor canPersonalizeUsingItemState:stateCopy];
  if (v10)
  {
    button = self->_button;
    buyButtonDescriptor = self->_buyButtonDescriptor;
    clientContext = [contextCopy clientContext];
    [(UIControl *)button setValuesUsingBuyButtonDescriptor:buyButtonDescriptor itemState:stateCopy clientContext:clientContext animated:animatedCopy];
  }

  return v10;
}

- (void)layoutSubviews
{
  v61 = *MEMORY[0x277D85DE8];
  v58.receiver = self;
  v58.super_class = SKUITracklistSectionHeaderCollectionViewCell;
  [(SKUICollectionViewCell *)&v58 layoutSubviews];
  contentView = [(SKUITracklistSectionHeaderCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;

  v8 = objc_opt_class();
  [(SKUITracklistColumnData *)self->_columnData leftEdgeInset];
  v10 = v5 - v9;
  [(SKUITracklistColumnData *)self->_columnData rightEdgeInset];
  [v8 _titlesWidthForWidth:self->_columnData columnData:v10 - v11];
  v13 = v12;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v14 = self->_labels;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v55;
    v18 = *MEMORY[0x277CBF3A0];
    v19 = *(MEMORY[0x277CBF3A0] + 8);
    v20 = 0.0;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v55 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v22 = *(*(&v54 + 1) + 8 * i);
        [v22 sizeThatFits:{v13, 1.79769313e308}];
        v62.size.height = v23;
        v62.origin.x = v18;
        v62.origin.y = v19;
        v62.size.width = v13;
        v63 = CGRectIntegral(v62);
        height = v63.size.height;
        [v22 setFrame:{v63.origin.x, v63.origin.y, v63.size.width}];
        v20 = v20 + height;
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v16);
  }

  else
  {
    v20 = 0.0;
  }

  [(SKUITracklistColumnData *)self->_columnData leftEdgeInset];
  v26 = v25;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v27 = self->_labels;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = (v7 - v20) * 0.5;
    MaxY = floorf(v30);
    v32 = *v51;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v51 != v32)
        {
          objc_enumerationMutation(v27);
        }

        v34 = *(*(&v50 + 1) + 8 * j);
        [v34 frame];
        v36 = v35;
        v38 = v37;
        [v34 setFrame:{v26, MaxY}];
        v64.origin.x = v26;
        v64.origin.y = MaxY;
        v64.size.width = v36;
        v64.size.height = v38;
        MaxY = CGRectGetMaxY(v64);
      }

      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v29);
  }

  button = self->_button;
  if (button)
  {
    [(UIControl *)button sizeThatFits:*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
    v41 = v40;
    v43 = v42;
    [(SKUITracklistColumnData *)self->_columnData rightEdgeInset];
    v45 = (v7 - v43) * 0.5;
    [(UIControl *)self->_button setFrame:v5 - v44 - v41, floorf(v45), v41, v43];
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v48 = 1.0 / v47;

  [(SKUITracklistColumnData *)self->_columnData leftEdgeInset];
  [(UIView *)self->_separatorView setFrame:v49, v7 - v48, v5 - v49, v48];
}

- (void)itemOfferButtonWillAnimateTransition:(id)transition
{
  transitionCopy = transition;
  [transitionCopy frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [transitionCopy sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
  v12 = v11;
  v14 = v13;
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  [transitionCopy setFrame:{CGRectGetMaxX(v17) - v12, v6, v12, v14}];
}

- (void)_buttonAction:(id)action
{
  v8 = SKUICollectionViewForView(self);
  delegate = [v8 delegate];
  v5 = objc_opt_respondsToSelector();
  buttonViewElement = self->_buttonViewElement;
  if (v5)
  {
    v7 = [v8 indexPathForCell:self];
    [delegate collectionView:v8 didConfirmButtonElement:buttonViewElement withClickInfo:0 forItemAtIndexPath:v7];
  }

  else
  {
    [(SKUIButtonViewElement *)self->_buttonViewElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }
}

- (void)_showConfirmationAction:(id)action
{
  actionCopy = action;
  superview = [actionCopy superview];
  [superview bringSubviewToFront:actionCopy];

  [actionCopy setShowingConfirmation:1 animated:1];
}

+ (double)_titlesWidthForWidth:(double)width columnData:(id)data
{
  dataCopy = data;
  v6 = [dataCopy columnForIdentifier:1];
  v7 = v6;
  if (v6)
  {
    [v6 width];
    v9 = width - v8;
    [dataCopy interColumnSpacing];
    width = v9 - v10;
  }

  return width;
}

@end