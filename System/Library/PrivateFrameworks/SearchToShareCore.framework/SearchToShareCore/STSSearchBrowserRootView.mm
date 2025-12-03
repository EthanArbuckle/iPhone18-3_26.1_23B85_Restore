@interface STSSearchBrowserRootView
- (STSSearchBrowserRootView)init;
- (void)layoutSubviews;
- (void)setContentView:(id)view;
- (void)setHeaderTopInset:(double)inset;
- (void)setHeaderView:(id)view;
@end

@implementation STSSearchBrowserRootView

- (STSSearchBrowserRootView)init
{
  v6.receiver = self;
  v6.super_class = STSSearchBrowserRootView;
  v2 = [(STSSearchBrowserRootView *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    constraints = v2->_constraints;
    v2->_constraints = array;

    [(STSSearchBrowserRootView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v2;
}

- (void)layoutSubviews
{
  traitCollection = [(STSSearchBrowserRootView *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  [MEMORY[0x277CCAAD0] deactivateConstraints:self->_constraints];
  [(NSMutableArray *)self->_constraints removeAllObjects];
  layoutMarginsGuide = [(STSSearchBrowserRootView *)self layoutMarginsGuide];
  readableContentGuide = [(STSSearchBrowserRootView *)self readableContentGuide];
  headerView = self->_headerView;
  if (headerView)
  {
    constraints = self->_constraints;
    topAnchor = [(STSSearchBrowserHeaderView *)headerView topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [(NSMutableArray *)constraints addObject:v10];

    v11 = self->_constraints;
    leadingAnchor = [(STSSearchBrowserHeaderView *)self->_headerView leadingAnchor];
    if (horizontalSizeClass == 2)
    {
      leadingAnchor2 = [(STSSearchBrowserRootView *)readableContentGuide leadingAnchor];
      v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [(NSMutableArray *)v11 addObject:v14];

      v15 = self->_constraints;
      trailingAnchor = [(STSSearchBrowserHeaderView *)self->_headerView trailingAnchor];
      selfCopy = readableContentGuide;
    }

    else
    {
      leadingAnchor3 = [(STSSearchBrowserRootView *)self leadingAnchor];
      v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor3];
      [(NSMutableArray *)v11 addObject:v19];

      v15 = self->_constraints;
      trailingAnchor = [(STSSearchBrowserHeaderView *)self->_headerView trailingAnchor];
      selfCopy = self;
    }

    trailingAnchor2 = [(STSSearchBrowserRootView *)selfCopy trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [(NSMutableArray *)v15 addObject:v21];

    if (self->_headerView)
    {
      if (self->_contentView)
      {
        subviews = [(STSSearchBrowserRootView *)self subviews];
        v23 = [subviews containsObject:self->_contentView];

        if (v23)
        {
          v24 = self->_constraints;
          topAnchor3 = [(UIView *)self->_contentView topAnchor];
          bottomAnchor = [(STSSearchBrowserHeaderView *)self->_headerView bottomAnchor];
          v27 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
          [(NSMutableArray *)v24 addObject:v27];

          v28 = self->_constraints;
          bottomAnchor2 = [(UIView *)self->_contentView bottomAnchor];
          bottomAnchor3 = [layoutMarginsGuide bottomAnchor];
          v31 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
          [(NSMutableArray *)v28 addObject:v31];

          v32 = self->_constraints;
          leadingAnchor4 = [(UIView *)self->_contentView leadingAnchor];
          leadingAnchor5 = [(STSSearchBrowserRootView *)self leadingAnchor];
          v35 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:0.0];
          [(NSMutableArray *)v32 addObject:v35];

          v36 = self->_constraints;
          trailingAnchor3 = [(UIView *)self->_contentView trailingAnchor];
          trailingAnchor4 = [(STSSearchBrowserRootView *)self trailingAnchor];
          v39 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-0.0];
          [(NSMutableArray *)v36 addObject:v39];
        }
      }
    }
  }

  [MEMORY[0x277CCAAD0] activateConstraints:self->_constraints];
}

- (void)setHeaderView:(id)view
{
  viewCopy = view;
  headerView = self->_headerView;
  if (headerView != viewCopy)
  {
    v7 = viewCopy;
    [(STSSearchBrowserHeaderView *)headerView removeFromSuperview];
    objc_storeStrong(&self->_headerView, view);
    [(STSSearchBrowserRootView *)self addSubview:self->_headerView];
    headerView = [(STSSearchBrowserRootView *)self setNeedsLayout];
    viewCopy = v7;
  }

  MEMORY[0x2821F96F8](headerView, viewCopy);
}

- (void)setHeaderTopInset:(double)inset
{
  if (self->_headerTopInset != inset)
  {
    self->_headerTopInset = inset;
    [(STSSearchBrowserRootView *)self setNeedsLayout];
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
      [(STSSearchBrowserRootView *)self addSubview:self->_contentView];
    }

    contentView = [(STSSearchBrowserRootView *)self setNeedsLayout];
    viewCopy = v9;
  }

  MEMORY[0x2821F96F8](contentView, viewCopy);
}

@end