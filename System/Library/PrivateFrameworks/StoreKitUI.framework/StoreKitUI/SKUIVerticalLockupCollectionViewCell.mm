@interface SKUIVerticalLockupCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (double)maximumPerspectiveHeightForSize:(CGSize)size;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (SKUIVerticalLockupCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_reloadHighlightImageView;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setPerspectiveTargetView:(id)view;
- (void)setSelected:(BOOL)selected;
@end

@implementation SKUIVerticalLockupCollectionViewCell

- (SKUIVerticalLockupCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIVerticalLockupCollectionViewCell initWithFrame:];
  }

  v15.receiver = self;
  v15.super_class = SKUIVerticalLockupCollectionViewCell;
  height = [(SKUICollectionViewCell *)&v15 initWithFrame:x, y, width, height];
  v9 = height;
  if (height)
  {
    contentView = [(SKUIVerticalLockupCollectionViewCell *)height contentView];
    v11 = [SKUIVerticalLockupView alloc];
    [contentView bounds];
    v12 = [(SKUIVerticalLockupView *)v11 initWithFrame:?];
    lockupView = v9->_lockupView;
    v9->_lockupView = v12;

    [contentView addSubview:v9->_lockupView];
  }

  return v9;
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  lockupView = self->_lockupView;
  backgroundColor = [attributesCopy backgroundColor];
  [(SKUIViewReuseView *)lockupView setBackgroundColor:backgroundColor];

  v13.receiver = self;
  v13.super_class = SKUIVerticalLockupCollectionViewCell;
  [(SKUICollectionViewCell *)&v13 applyLayoutAttributes:attributesCopy];
  [attributesCopy zoomingImageWidth];
  v8 = v7;
  v9 = 1.0;
  v10 = 1.0;
  if (v7 > 0.00000011920929)
  {
    [attributesCopy zoomingImageImposedAlphaOfOtherViews];
    v10 = v11;
    [attributesCopy zoomingImageAlpha];
    v9 = v12;
  }

  [(SKUIVerticalLockupView *)self->_lockupView setOpacityOfViewsOtherThanProductImageView:v10];
  [(SKUIVerticalLockupView *)self->_lockupView setZoomingImageAlpha:v9];
  [(SKUIVerticalLockupView *)self->_lockupView setZoomingImageWidth:v8];
}

+ (double)maximumPerspectiveHeightForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIVerticalLockupCollectionViewCell maximumPerspectiveHeightForSize:];
  }

  [SKUIVerticalLockupView maximumPerspectiveHeightForSize:width, height];
  return result;
}

- (void)setPerspectiveTargetView:(id)view
{
  lockupView = self->_lockupView;
  viewCopy = view;
  [(SKUIVerticalLockupView *)lockupView setPerspectiveTargetView:viewCopy];
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
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
        [(SKUIVerticalLockupCollectionViewCell *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = [SKUIVerticalLockupView prefetchResourcesForViewElement:elementCopy reason:reason context:contextCopy];

  return v17;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v7)
      {
        [(SKUIVerticalLockupCollectionViewCell *)v7 preferredSizeForViewElement:v8 context:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  [SKUIVerticalLockupView preferredSizeForViewElement:elementCopy context:contextCopy];
  v16 = v15;
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
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
        [(SKUIVerticalLockupCollectionViewCell *)v9 requestLayoutForViewElement:v10 width:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  [SKUIVerticalLockupView requestLayoutForViewElement:elementCopy width:contextCopy context:width];
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
        [(SKUIVerticalLockupCollectionViewCell *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  [SKUIVerticalLockupView sizeThatFitsWidth:elementCopy viewElement:contextCopy context:width];
  v18 = v17;
  v20 = v19;

  v21 = v18;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SKUIVerticalLockupCollectionViewCell;
  [(SKUICollectionViewCell *)&v5 layoutSubviews];
  lockupView = self->_lockupView;
  contentView = [(SKUIVerticalLockupCollectionViewCell *)self contentView];
  [contentView bounds];
  [(SKUIVerticalLockupView *)lockupView setFrame:?];
}

- (void)setBackgroundColor:(id)color
{
  lockupView = self->_lockupView;
  colorCopy = color;
  [(SKUIViewReuseView *)lockupView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SKUIVerticalLockupCollectionViewCell;
  [(SKUICollectionViewCell *)&v6 setBackgroundColor:colorCopy];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = SKUIVerticalLockupCollectionViewCell;
  [(SKUICollectionViewCell *)&v4 setHighlighted:highlighted];
  [(SKUIVerticalLockupCollectionViewCell *)self _reloadHighlightImageView];
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = SKUIVerticalLockupCollectionViewCell;
  [(SKUICollectionViewCell *)&v4 setSelected:selected];
  [(SKUIVerticalLockupCollectionViewCell *)self _reloadHighlightImageView];
}

- (void)_reloadHighlightImageView
{
  if (([(SKUIVerticalLockupCollectionViewCell *)self isHighlighted]& 1) != 0 || [(SKUIVerticalLockupCollectionViewCell *)self isSelected])
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__7;
    lockupView = self->_lockupView;
    v32 = __Block_byref_object_dispose__7;
    v33 = 0;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __65__SKUIVerticalLockupCollectionViewCell__reloadHighlightImageView__block_invoke;
    v27[3] = &unk_2781FA2C8;
    v27[4] = &v28;
    [(SKUIViewReuseView *)lockupView enumerateExistingViewsForReuseIdentifier:0x28280C7E8 usingBlock:v27];
    v4 = v29[5];
    if (v4 || (v5 = self->_lockupView, v26[0] = MEMORY[0x277D85DD0], v26[1] = 3221225472, v26[2] = __65__SKUIVerticalLockupCollectionViewCell__reloadHighlightImageView__block_invoke_2, v26[3] = &unk_2781FA2C8, v26[4] = &v28, [(SKUIViewReuseView *)v5 enumerateExistingViewsForReuseIdentifier:0x28280CA08 usingBlock:v26], (v4 = v29[5]) != 0))
    {
      highlightImageView = self->_highlightImageView;
      if (!highlightImageView)
      {
        v7 = objc_alloc_init(SKUIImageView);
        v8 = self->_highlightImageView;
        self->_highlightImageView = v7;

        [(SKUIImageView *)self->_highlightImageView setAlpha:0.300000012];
        v9 = self->_highlightImageView;
        clearColor = [MEMORY[0x277D75348] clearColor];
        [(SKUIImageView *)v9 setBackgroundColor:clearColor];

        highlightImageView = self->_highlightImageView;
        v4 = v29[5];
      }

      [v4 bounds];
      [(SKUIImageView *)highlightImageView setBounds:?];
      v11 = self->_highlightImageView;
      [v29[5] center];
      [(SKUIImageView *)v11 setCenter:?];
      v12 = self->_highlightImageView;
      image = [v29[5] image];
      blackColor = [MEMORY[0x277D75348] blackColor];
      v15 = [image _flatImageWithColor:blackColor];
      [(SKUIImageView *)v12 setImage:v15];

      v16 = self->_highlightImageView;
      v17 = v29[5];
      if (v17)
      {
        [v17 transform];
      }

      else
      {
        memset(v25, 0, sizeof(v25));
      }

      [(SKUIImageView *)v16 setTransform:v25];
      [(SKUIVerticalLockupView *)self->_lockupView insertSubview:self->_highlightImageView aboveSubview:v29[5]];
    }

    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v18 = self->_highlightImageView;
    if (v18)
    {
      v19 = v18;
      v20 = self->_highlightImageView;
      self->_highlightImageView = 0;

      [MEMORY[0x277CD9FF0] begin];
      v21 = MEMORY[0x277CD9FF0];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __65__SKUIVerticalLockupCollectionViewCell__reloadHighlightImageView__block_invoke_3;
      v23[3] = &unk_2781F80F0;
      v24 = v19;
      v22 = v19;
      [v21 setCompletionBlock:v23];
      [(SKUIImageView *)v22 setAlpha:0.0];
      [MEMORY[0x277CD9FF0] commit];
    }
  }
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIVerticalLockupCollectionViewCell initWithFrame:]";
}

+ (void)maximumPerspectiveHeightForSize:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIVerticalLockupCollectionViewCell maximumPerspectiveHeightForSize:]";
}

@end