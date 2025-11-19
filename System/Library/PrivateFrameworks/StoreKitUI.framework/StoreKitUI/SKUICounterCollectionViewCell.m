@interface SKUICounterCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
- (SKUICounterCollectionViewCell)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentInset;
- (void)_reloadHighlightImageView;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation SKUICounterCollectionViewCell

- (SKUICounterCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICounterCollectionViewCell initWithFrame:];
  }

  v14.receiver = self;
  v14.super_class = SKUICounterCollectionViewCell;
  v8 = [(SKUICollectionViewCell *)&v14 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = [SKUICounterView alloc];
    [(SKUICounterCollectionViewCell *)v8 bounds];
    v10 = [(SKUIViewReuseView *)v9 initWithFrame:?];
    counterView = v8->_counterView;
    v8->_counterView = v10;

    v12 = [(SKUICounterCollectionViewCell *)v8 contentView];
    [v12 addSubview:v8->_counterView];
  }

  return v8;
}

- (void)applyLayoutAttributes:(id)a3
{
  counterView = self->_counterView;
  v5 = a3;
  v6 = [v5 backgroundColor];
  [(SKUIViewReuseView *)counterView setBackgroundColor:v6];

  v7.receiver = self;
  v7.super_class = SKUICounterCollectionViewCell;
  [(SKUICollectionViewCell *)&v7 applyLayoutAttributes:v5];
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 defaultItemWidthForViewElement:v7];
  [a1 sizeThatFitsWidth:v7 viewElement:v6 context:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  [SKUICounterView sizeThatFitsWidth:a4 viewElement:a5 context:a3];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SKUICounterCollectionViewCell;
  [(SKUICollectionViewCell *)&v5 layoutSubviews];
  counterView = self->_counterView;
  v4 = [(SKUICounterCollectionViewCell *)self contentView];
  [v4 bounds];
  [(SKUICounterView *)counterView setFrame:?];
}

- (void)setBackgroundColor:(id)a3
{
  counterView = self->_counterView;
  v5 = a3;
  [(SKUIViewReuseView *)counterView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SKUICounterCollectionViewCell;
  [(SKUICollectionViewCell *)&v6 setBackgroundColor:v5];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SKUICounterCollectionViewCell;
  [(SKUICollectionViewCell *)&v4 setHighlighted:a3];
  [(SKUICounterCollectionViewCell *)self _reloadHighlightImageView];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SKUICounterCollectionViewCell;
  [(SKUICollectionViewCell *)&v4 setSelected:a3];
  [(SKUICounterCollectionViewCell *)self _reloadHighlightImageView];
}

- (void)_reloadHighlightImageView
{
  if (([(SKUICounterCollectionViewCell *)self isHighlighted]& 1) != 0 || [(SKUICounterCollectionViewCell *)self isSelected])
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__97;
    counterView = self->_counterView;
    v32 = __Block_byref_object_dispose__97;
    v33 = 0;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __58__SKUICounterCollectionViewCell__reloadHighlightImageView__block_invoke;
    v27[3] = &unk_2781FA2C8;
    v27[4] = &v28;
    [(SKUIViewReuseView *)counterView enumerateExistingViewsForReuseIdentifier:0x28280C7E8 usingBlock:v27];
    v4 = v29[5];
    if (v4 || (v5 = self->_counterView, v26[0] = MEMORY[0x277D85DD0], v26[1] = 3221225472, v26[2] = __58__SKUICounterCollectionViewCell__reloadHighlightImageView__block_invoke_2, v26[3] = &unk_2781FA2C8, v26[4] = &v28, [(SKUIViewReuseView *)v5 enumerateExistingViewsForReuseIdentifier:0x28280CA08 usingBlock:v26], (v4 = v29[5]) != 0))
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
      [(SKUICounterView *)self->_counterView insertSubview:self->_highlightImageView aboveSubview:v29[5]];
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
      v23[2] = __58__SKUICounterCollectionViewCell__reloadHighlightImageView__block_invoke_3;
      v23[3] = &unk_2781F80F0;
      v24 = v19;
      v22 = v19;
      [v21 setCompletionBlock:v23];
      [(SKUIImageView *)v22 setAlpha:0.0];
      [MEMORY[0x277CD9FF0] commit];
    }
  }
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICounterCollectionViewCell initWithFrame:]";
}

@end