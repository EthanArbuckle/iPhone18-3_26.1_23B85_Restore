@interface TPTableViewCell
+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)category;
- (TPTableViewCell)initWithCoder:(id)coder;
- (TPTableViewCell)initWithFrame:(CGRect)frame;
- (TPTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIColor)foregroundColor;
- (UIEdgeInsets)intrinsicSeparatorInset;
- (void)commonInit;
- (void)layoutSubviews;
- (void)setAccessiblityConstraintsEnabled:(BOOL)enabled;
- (void)setForegroundColor:(id)color;
- (void)setForegroundView:(id)view;
- (void)traitCollectionDidChange:(id)change;
- (void)unloadConstraints;
- (void)updateConstraints;
@end

@implementation TPTableViewCell

+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)category
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (TPTableViewCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TPTableViewCell;
  v3 = [(TPTableViewCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(TPTableViewCell *)v3 commonInit];
  }

  return v4;
}

- (TPTableViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TPTableViewCell;
  v3 = [(TPTableViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TPTableViewCell *)v3 commonInit];
  }

  return v4;
}

- (TPTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = TPTableViewCell;
  v4 = [(TPTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(TPTableViewCell *)v4 commonInit];
  }

  return v5;
}

- (void)commonInit
{
  traitCollection = [(TPTableViewCell *)self traitCollection];
  self->_accessiblityConstraintsEnabled = [traitCollection isPreferredContentSizeCategoryAccessible];

  [(TPTableViewCell *)self loadContentView];
}

- (void)unloadConstraints
{
  constraints = [(TPTableViewCell *)self constraints];
  [(TPTableViewCell *)self removeConstraints:constraints];

  [(TPTableViewCell *)self setConstraintsLoaded:0];
}

- (void)updateConstraints
{
  if (![(TPTableViewCell *)self isConstraintsLoaded])
  {
    [(TPTableViewCell *)self updateFonts];
    [(TPTableViewCell *)self loadConstraints];
    [(TPTableViewCell *)self intrinsicSeparatorInset];
    [(TPTableViewCell *)self setSeparatorInset:?];
    [(TPTableViewCell *)self setConstraintsLoaded:1];
  }

  v3.receiver = self;
  v3.super_class = TPTableViewCell;
  [(TPTableViewCell *)&v3 updateConstraints];
}

- (UIColor)foregroundColor
{
  if ([(TPTableViewCell *)self isForegroundViewLoaded])
  {
    foregroundView = [(TPTableViewCell *)self foregroundView];
    backgroundColor = [foregroundView backgroundColor];
  }

  else
  {
    backgroundColor = 0;
  }

  return backgroundColor;
}

- (void)setForegroundColor:(id)color
{
  colorCopy = color;
  if (colorCopy && ([MEMORY[0x1E69DC888] clearColor], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(colorCopy, "isEqual:", v4), v4, (v5 & 1) == 0))
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(TPTableViewCell *)self setForegroundView:v7];

    foregroundView = [(TPTableViewCell *)self foregroundView];
    [foregroundView setBackgroundColor:colorCopy];

    foregroundView2 = [(TPTableViewCell *)self foregroundView];
    [(TPTableViewCell *)self addSubview:foregroundView2];
  }

  else
  {
    foregroundView3 = [(TPTableViewCell *)self foregroundView];
    [foregroundView3 removeFromSuperview];

    [(TPTableViewCell *)self setForegroundView:0];
  }
}

- (UIEdgeInsets)intrinsicSeparatorInset
{
  v3 = objc_opt_class();
  traitCollection = [(TPTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [v3 separatorInsetForContentSizeCategory:preferredContentSizeCategory];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = TPTableViewCell;
  [(TPTableViewCell *)&v13 layoutSubviews];
  if ([(TPTableViewCell *)self isForegroundViewLoaded])
  {
    [(TPTableViewCell *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    foregroundView = [(TPTableViewCell *)self foregroundView];
    [foregroundView setFrame:{v4, v6, v8, v10}];

    foregroundView2 = [(TPTableViewCell *)self foregroundView];
    [(TPTableViewCell *)self bringSubviewToFront:foregroundView2];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = TPTableViewCell;
  changeCopy = change;
  [(TPTableViewCell *)&v11 traitCollectionDidChange:changeCopy];
  v5 = [(TPTableViewCell *)self traitCollection:v11.receiver];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];

  preferredContentSizeCategory2 = [v5 preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    isPreferredContentSizeCategoryAccessible = [v5 isPreferredContentSizeCategoryAccessible];
    v9 = *MEMORY[0x1E69DDC90];
    v10 = isPreferredContentSizeCategoryAccessible ^ [(TPTableViewCell *)self isAccessiblityConstraintsEnabled];
    if (preferredContentSizeCategory == v9)
    {
      if (v10)
      {
        self->_accessiblityConstraintsEnabled = isPreferredContentSizeCategoryAccessible;
      }
    }

    else
    {
      if (v10)
      {
        [(TPTableViewCell *)self setAccessiblityConstraintsEnabled:isPreferredContentSizeCategoryAccessible];
      }

      [(TPTableViewCell *)self updateFonts];
      [(TPTableViewCell *)self updateConstraintsConstants];
      [(TPTableViewCell *)self intrinsicSeparatorInset];
      [(TPTableViewCell *)self setSeparatorInset:?];
    }
  }
}

- (void)setAccessiblityConstraintsEnabled:(BOOL)enabled
{
  if (self->_accessiblityConstraintsEnabled != enabled)
  {
    self->_accessiblityConstraintsEnabled = enabled;
    [(TPTableViewCell *)self unloadConstraints];
    [(TPTableViewCell *)self setNeedsUpdateConstraints];

    [(TPTableViewCell *)self layoutIfNeeded];
  }
}

- (void)setForegroundView:(id)view
{
  viewCopy = view;
  foregroundView = self->_foregroundView;
  v7 = viewCopy;
  if (foregroundView != viewCopy)
  {
    [(UIView *)foregroundView removeFromSuperview];
    objc_storeStrong(&self->_foregroundView, view);
    if (self->_foregroundView)
    {
      [(TPTableViewCell *)self addSubview:?];
    }
  }
}

@end