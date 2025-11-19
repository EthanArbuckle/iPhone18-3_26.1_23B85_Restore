@interface SKUIVerticalLockupCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (double)maximumPerspectiveHeightForSize:(CGSize)a3;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (SKUIVerticalLockupCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)_reloadHighlightImageView;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setPerspectiveTargetView:(id)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation SKUIVerticalLockupCollectionViewCell

- (SKUIVerticalLockupCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIVerticalLockupCollectionViewCell initWithFrame:];
  }

  v15.receiver = self;
  v15.super_class = SKUIVerticalLockupCollectionViewCell;
  v8 = [(SKUICollectionViewCell *)&v15 initWithFrame:x, y, width, height];
  v9 = v8;
  if (v8)
  {
    v10 = [(SKUIVerticalLockupCollectionViewCell *)v8 contentView];
    v11 = [SKUIVerticalLockupView alloc];
    [v10 bounds];
    v12 = [(SKUIVerticalLockupView *)v11 initWithFrame:?];
    lockupView = v9->_lockupView;
    v9->_lockupView = v12;

    [v10 addSubview:v9->_lockupView];
  }

  return v9;
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  lockupView = self->_lockupView;
  v6 = [v4 backgroundColor];
  [(SKUIViewReuseView *)lockupView setBackgroundColor:v6];

  v13.receiver = self;
  v13.super_class = SKUIVerticalLockupCollectionViewCell;
  [(SKUICollectionViewCell *)&v13 applyLayoutAttributes:v4];
  [v4 zoomingImageWidth];
  v8 = v7;
  v9 = 1.0;
  v10 = 1.0;
  if (v7 > 0.00000011920929)
  {
    [v4 zoomingImageImposedAlphaOfOtherViews];
    v10 = v11;
    [v4 zoomingImageAlpha];
    v9 = v12;
  }

  [(SKUIVerticalLockupView *)self->_lockupView setOpacityOfViewsOtherThanProductImageView:v10];
  [(SKUIVerticalLockupView *)self->_lockupView setZoomingImageAlpha:v9];
  [(SKUIVerticalLockupView *)self->_lockupView setZoomingImageWidth:v8];
}

+ (double)maximumPerspectiveHeightForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIVerticalLockupCollectionViewCell maximumPerspectiveHeightForSize:];
  }

  [SKUIVerticalLockupView maximumPerspectiveHeightForSize:width, height];
  return result;
}

- (void)setPerspectiveTargetView:(id)a3
{
  lockupView = self->_lockupView;
  v4 = a3;
  [(SKUIVerticalLockupView *)lockupView setPerspectiveTargetView:v4];
}

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
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

  v17 = [SKUIVerticalLockupView prefetchResourcesForViewElement:v7 reason:a4 context:v8];

  return v17;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
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

  [SKUIVerticalLockupView preferredSizeForViewElement:v5 context:v6];
  v16 = v15;
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
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

  [SKUIVerticalLockupView requestLayoutForViewElement:v7 width:v8 context:a4];
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
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

  [SKUIVerticalLockupView sizeThatFitsWidth:v7 viewElement:v8 context:a3];
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
  v4 = [(SKUIVerticalLockupCollectionViewCell *)self contentView];
  [v4 bounds];
  [(SKUIVerticalLockupView *)lockupView setFrame:?];
}

- (void)setBackgroundColor:(id)a3
{
  lockupView = self->_lockupView;
  v5 = a3;
  [(SKUIViewReuseView *)lockupView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SKUIVerticalLockupCollectionViewCell;
  [(SKUICollectionViewCell *)&v6 setBackgroundColor:v5];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SKUIVerticalLockupCollectionViewCell;
  [(SKUICollectionViewCell *)&v4 setHighlighted:a3];
  [(SKUIVerticalLockupCollectionViewCell *)self _reloadHighlightImageView];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SKUIVerticalLockupCollectionViewCell;
  [(SKUICollectionViewCell *)&v4 setSelected:a3];
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
        v10 = [MEMORY[0x277D75348] clearColor];
        [(SKUIImageView *)v9 setBackgroundColor:v10];

        highlightImageView = self->_highlightImageView;
        v4 = v29[5];
      }

      [v4 bounds];
      [(SKUIImageView *)highlightImageView setBounds:?];
      v11 = self->_highlightImageView;
      [v29[5] center];
      [(SKUIImageView *)v11 setCenter:?];
      v12 = self->_highlightImageView;
      v13 = [v29[5] image];
      v14 = [MEMORY[0x277D75348] blackColor];
      v15 = [v13 _flatImageWithColor:v14];
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