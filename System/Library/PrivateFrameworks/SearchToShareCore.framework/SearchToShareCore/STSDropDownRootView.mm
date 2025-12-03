@interface STSDropDownRootView
- (STSDropDownRootView)init;
- (void)layoutSubviews;
- (void)setContentView:(id)view;
@end

@implementation STSDropDownRootView

- (STSDropDownRootView)init
{
  v6.receiver = self;
  v6.super_class = STSDropDownRootView;
  v2 = [(STSDropDownRootView *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    constraints = v2->_constraints;
    v2->_constraints = array;

    [(STSDropDownRootView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v2;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = STSDropDownRootView;
  [(STSDropDownRootView *)&v21 layoutSubviews];
  subviews = [(STSDropDownRootView *)self subviews];
  v4 = [subviews containsObject:self->_contentView];

  if (v4)
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:self->_constraints];
    [(NSMutableArray *)self->_constraints removeAllObjects];
    constraints = self->_constraints;
    topAnchor = [(UIView *)self->_contentView topAnchor];
    topAnchor2 = [(STSDropDownRootView *)self topAnchor];
    v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [(NSMutableArray *)constraints addObject:v8];

    v9 = self->_constraints;
    bottomAnchor = [(UIView *)self->_contentView bottomAnchor];
    bottomAnchor2 = [(STSDropDownRootView *)self bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [(NSMutableArray *)v9 addObject:v12];

    v13 = self->_constraints;
    leadingAnchor = [(UIView *)self->_contentView leadingAnchor];
    leadingAnchor2 = [(STSDropDownRootView *)self leadingAnchor];
    v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [(NSMutableArray *)v13 addObject:v16];

    v17 = self->_constraints;
    trailingAnchor = [(UIView *)self->_contentView trailingAnchor];
    trailingAnchor2 = [(STSDropDownRootView *)self trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [(NSMutableArray *)v17 addObject:v20];

    [MEMORY[0x277CCAAD0] activateConstraints:self->_constraints];
  }
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v9 = viewCopy;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    superview = [(UIView *)self->_contentView superview];
    v8 = [superview isEqual:self];

    if ((v8 & 1) == 0)
    {
      [(STSDropDownRootView *)self addSubview:self->_contentView];
    }

    contentView = [(STSDropDownRootView *)self setNeedsLayout];
    viewCopy = v9;
  }

  MEMORY[0x2821F96F8](contentView, viewCopy);
}

@end