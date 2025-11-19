@interface SKUITrendingSearchView
- (SKUITrendingSearchView)initWithCoder:(id)a3;
- (SKUITrendingSearchView)initWithFrame:(CGRect)a3;
- (UIStackView)titleStackView;
- (UIStackView)trendingSearchesStackView;
- (void)commonInitWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setTrendingSearchViews:(id)a3;
- (void)setTrendingTitleView:(id)a3;
- (void)updateConstraints;
@end

@implementation SKUITrendingSearchView

- (SKUITrendingSearchView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = SKUITrendingSearchView;
  v7 = [(SKUITrendingSearchView *)&v10 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(SKUITrendingSearchView *)v7 commonInitWithFrame:x, y, width, height];
  }

  return v8;
}

- (SKUITrendingSearchView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SKUITrendingSearchView;
  v3 = [(SKUITrendingSearchView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(SKUITrendingSearchView *)v3 frame];
    [(SKUITrendingSearchView *)v4 commonInitWithFrame:?];
  }

  return v4;
}

- (void)commonInitWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v29[1] = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUITrendingSearchView commonInitWithFrame:];
  }

  [(SKUITrendingSearchView *)self setPreservesSuperviewLayoutMargins:1];
  v8 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{x, y, width, height}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setAxis:1];
  [v8 setAlignment:3];
  [v8 setDistribution:3];
  [v8 setSpacing:18.0];
  objc_storeWeak(&self->_titleStackView, v8);
  [(SKUITrendingSearchView *)self addSubview:v8];
  v9 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{x, y, width, height}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setAxis:1];
  [v9 setAlignment:3];
  [v9 setDistribution:3];
  [v9 setSpacing:2.0];
  [v8 addArrangedSubview:v9];
  objc_storeWeak(&self->_trendingSearchesStackView, v9);
  v10 = [MEMORY[0x277D75418] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_8;
  }

  v11 = [MEMORY[0x277D75418] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12)
  {
    v13 = MEMORY[0x277CCAAD0];
    v14 = [(SKUITrendingSearchView *)self titleStackView];
    v10 = [v13 constraintWithItem:v14 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];

    LODWORD(v15) = 1144733696;
    [v10 setPriority:v15];
    v29[0] = v10;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
    [(SKUITrendingSearchView *)self addConstraints:v16];

LABEL_8:
  }

  v17 = _NSDictionaryOfVariableBindings(&cfstr_Titlestackview.isa, v8, 0);
  v18 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-(>=TITLE_MINIMUM_ORIGIN_Y)-[titleStackView]" options:0 metrics:&unk_2828D3080 views:v17];
  verticalMarginRelatedConstraints = self->_verticalMarginRelatedConstraints;
  self->_verticalMarginRelatedConstraints = v18;

  [(SKUITrendingSearchView *)self addConstraints:self->_verticalMarginRelatedConstraints];
  v20 = [v8 leadingAnchor];
  v21 = [(SKUITrendingSearchView *)self leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  [v22 setActive:1];

  v23 = [v8 trailingAnchor];
  v24 = [(SKUITrendingSearchView *)self trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  [v25 setActive:1];

  v26 = [v8 widthAnchor];
  v27 = [(SKUITrendingSearchView *)self widthAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  [v28 setActive:1];
}

- (void)setTrendingTitleView:(id)a3
{
  v4 = a3;
  [(UIView *)self->_trendingTitleView removeFromSuperview];
  trendingTitleView = self->_trendingTitleView;
  self->_trendingTitleView = v4;
  v6 = v4;

  [(UIView *)self->_trendingTitleView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v7) = 1148846080;
  [(UIView *)self->_trendingTitleView setContentCompressionResistancePriority:1 forAxis:v7];
  v8 = [(SKUITrendingSearchView *)self titleStackView];
  [v8 insertArrangedSubview:v6 atIndex:0];
}

- (void)setTrendingSearchViews:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_trendingSearchViews;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v23 + 1) + 8 * v9++) removeFromSuperview];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v10 = [v4 copy];
  trendingSearchViews = self->_trendingSearchViews;
  self->_trendingSearchViews = v10;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_trendingSearchViews;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        v18 = [(SKUITrendingSearchView *)self trendingSearchesStackView];
        [v18 addArrangedSubview:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  [(SKUITrendingSearchView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = SKUITrendingSearchView;
  [(SKUITrendingSearchView *)&v11 layoutSubviews];
  v3 = [MEMORY[0x277D75418] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_5;
  }

  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != 1)
  {
LABEL_5:
    [(SKUITrendingSearchView *)self bounds];
    v7 = v6;
    v8 = [(SKUITrendingSearchView *)self titleStackView];
    [v8 bounds];
    MaxY = CGRectGetMaxY(v12);
    [(SKUITrendingSearchView *)self safeAreaInsets];
    [(SKUITrendingSearchView *)self setContentSize:v7, MaxY + v10];
  }
}

- (void)updateConstraints
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(SKUITrendingSearchView *)self verticalMarginRelatedConstraints];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        [(SKUITrendingSearchView *)self safeAreaInsets];
        [v8 setConstant:?];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = SKUITrendingSearchView;
  [(SKUITrendingSearchView *)&v9 updateConstraints];
}

- (UIStackView)trendingSearchesStackView
{
  WeakRetained = objc_loadWeakRetained(&self->_trendingSearchesStackView);

  return WeakRetained;
}

- (UIStackView)titleStackView
{
  WeakRetained = objc_loadWeakRetained(&self->_titleStackView);

  return WeakRetained;
}

- (void)commonInitWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUITrendingSearchView commonInitWithFrame:]";
}

@end