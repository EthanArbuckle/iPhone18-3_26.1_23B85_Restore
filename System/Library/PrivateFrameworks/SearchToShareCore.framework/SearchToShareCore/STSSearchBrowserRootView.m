@interface STSSearchBrowserRootView
- (STSSearchBrowserRootView)init;
- (void)layoutSubviews;
- (void)setContentView:(id)a3;
- (void)setHeaderTopInset:(double)a3;
- (void)setHeaderView:(id)a3;
@end

@implementation STSSearchBrowserRootView

- (STSSearchBrowserRootView)init
{
  v6.receiver = self;
  v6.super_class = STSSearchBrowserRootView;
  v2 = [(STSSearchBrowserRootView *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    constraints = v2->_constraints;
    v2->_constraints = v3;

    [(STSSearchBrowserRootView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v2;
}

- (void)layoutSubviews
{
  v3 = [(STSSearchBrowserRootView *)self traitCollection];
  v4 = [v3 horizontalSizeClass];

  [MEMORY[0x277CCAAD0] deactivateConstraints:self->_constraints];
  [(NSMutableArray *)self->_constraints removeAllObjects];
  v40 = [(STSSearchBrowserRootView *)self layoutMarginsGuide];
  v5 = [(STSSearchBrowserRootView *)self readableContentGuide];
  headerView = self->_headerView;
  if (headerView)
  {
    constraints = self->_constraints;
    v8 = [(STSSearchBrowserHeaderView *)headerView topAnchor];
    v9 = [v40 topAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    [(NSMutableArray *)constraints addObject:v10];

    v11 = self->_constraints;
    v12 = [(STSSearchBrowserHeaderView *)self->_headerView leadingAnchor];
    if (v4 == 2)
    {
      v13 = [(STSSearchBrowserRootView *)v5 leadingAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
      [(NSMutableArray *)v11 addObject:v14];

      v15 = self->_constraints;
      v16 = [(STSSearchBrowserHeaderView *)self->_headerView trailingAnchor];
      v17 = v5;
    }

    else
    {
      v18 = [(STSSearchBrowserRootView *)self leadingAnchor];
      v19 = [v12 constraintEqualToAnchor:v18];
      [(NSMutableArray *)v11 addObject:v19];

      v15 = self->_constraints;
      v16 = [(STSSearchBrowserHeaderView *)self->_headerView trailingAnchor];
      v17 = self;
    }

    v20 = [(STSSearchBrowserRootView *)v17 trailingAnchor];
    v21 = [v16 constraintEqualToAnchor:v20];
    [(NSMutableArray *)v15 addObject:v21];

    if (self->_headerView)
    {
      if (self->_contentView)
      {
        v22 = [(STSSearchBrowserRootView *)self subviews];
        v23 = [v22 containsObject:self->_contentView];

        if (v23)
        {
          v24 = self->_constraints;
          v25 = [(UIView *)self->_contentView topAnchor];
          v26 = [(STSSearchBrowserHeaderView *)self->_headerView bottomAnchor];
          v27 = [v25 constraintEqualToAnchor:v26];
          [(NSMutableArray *)v24 addObject:v27];

          v28 = self->_constraints;
          v29 = [(UIView *)self->_contentView bottomAnchor];
          v30 = [v40 bottomAnchor];
          v31 = [v29 constraintEqualToAnchor:v30];
          [(NSMutableArray *)v28 addObject:v31];

          v32 = self->_constraints;
          v33 = [(UIView *)self->_contentView leadingAnchor];
          v34 = [(STSSearchBrowserRootView *)self leadingAnchor];
          v35 = [v33 constraintEqualToAnchor:v34 constant:0.0];
          [(NSMutableArray *)v32 addObject:v35];

          v36 = self->_constraints;
          v37 = [(UIView *)self->_contentView trailingAnchor];
          v38 = [(STSSearchBrowserRootView *)self trailingAnchor];
          v39 = [v37 constraintEqualToAnchor:v38 constant:-0.0];
          [(NSMutableArray *)v36 addObject:v39];
        }
      }
    }
  }

  [MEMORY[0x277CCAAD0] activateConstraints:self->_constraints];
}

- (void)setHeaderView:(id)a3
{
  v5 = a3;
  headerView = self->_headerView;
  if (headerView != v5)
  {
    v7 = v5;
    [(STSSearchBrowserHeaderView *)headerView removeFromSuperview];
    objc_storeStrong(&self->_headerView, a3);
    [(STSSearchBrowserRootView *)self addSubview:self->_headerView];
    headerView = [(STSSearchBrowserRootView *)self setNeedsLayout];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](headerView, v5);
}

- (void)setHeaderTopInset:(double)a3
{
  if (self->_headerTopInset != a3)
  {
    self->_headerTopInset = a3;
    [(STSSearchBrowserRootView *)self setNeedsLayout];
  }
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    v9 = v5;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    v7 = [(UIView *)self->_contentView superview];
    v8 = [v7 isEqual:self];

    if ((v8 & 1) == 0)
    {
      [(STSSearchBrowserRootView *)self addSubview:self->_contentView];
    }

    contentView = [(STSSearchBrowserRootView *)self setNeedsLayout];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](contentView, v5);
}

@end