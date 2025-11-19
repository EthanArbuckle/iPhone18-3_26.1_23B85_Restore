@interface STSDropDownRootView
- (STSDropDownRootView)init;
- (void)layoutSubviews;
- (void)setContentView:(id)a3;
@end

@implementation STSDropDownRootView

- (STSDropDownRootView)init
{
  v6.receiver = self;
  v6.super_class = STSDropDownRootView;
  v2 = [(STSDropDownRootView *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    constraints = v2->_constraints;
    v2->_constraints = v3;

    [(STSDropDownRootView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v2;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = STSDropDownRootView;
  [(STSDropDownRootView *)&v21 layoutSubviews];
  v3 = [(STSDropDownRootView *)self subviews];
  v4 = [v3 containsObject:self->_contentView];

  if (v4)
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:self->_constraints];
    [(NSMutableArray *)self->_constraints removeAllObjects];
    constraints = self->_constraints;
    v6 = [(UIView *)self->_contentView topAnchor];
    v7 = [(STSDropDownRootView *)self topAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    [(NSMutableArray *)constraints addObject:v8];

    v9 = self->_constraints;
    v10 = [(UIView *)self->_contentView bottomAnchor];
    v11 = [(STSDropDownRootView *)self bottomAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    [(NSMutableArray *)v9 addObject:v12];

    v13 = self->_constraints;
    v14 = [(UIView *)self->_contentView leadingAnchor];
    v15 = [(STSDropDownRootView *)self leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [(NSMutableArray *)v13 addObject:v16];

    v17 = self->_constraints;
    v18 = [(UIView *)self->_contentView trailingAnchor];
    v19 = [(STSDropDownRootView *)self trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    [(NSMutableArray *)v17 addObject:v20];

    [MEMORY[0x277CCAAD0] activateConstraints:self->_constraints];
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
      [(STSDropDownRootView *)self addSubview:self->_contentView];
    }

    contentView = [(STSDropDownRootView *)self setNeedsLayout];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](contentView, v5);
}

@end