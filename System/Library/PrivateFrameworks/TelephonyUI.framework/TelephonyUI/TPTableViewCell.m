@interface TPTableViewCell
+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)a3;
- (TPTableViewCell)initWithCoder:(id)a3;
- (TPTableViewCell)initWithFrame:(CGRect)a3;
- (TPTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIColor)foregroundColor;
- (UIEdgeInsets)intrinsicSeparatorInset;
- (void)commonInit;
- (void)layoutSubviews;
- (void)setAccessiblityConstraintsEnabled:(BOOL)a3;
- (void)setForegroundColor:(id)a3;
- (void)setForegroundView:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)unloadConstraints;
- (void)updateConstraints;
@end

@implementation TPTableViewCell

+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)a3
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

- (TPTableViewCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TPTableViewCell;
  v3 = [(TPTableViewCell *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(TPTableViewCell *)v3 commonInit];
  }

  return v4;
}

- (TPTableViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TPTableViewCell;
  v3 = [(TPTableViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TPTableViewCell *)v3 commonInit];
  }

  return v4;
}

- (TPTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = TPTableViewCell;
  v4 = [(TPTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(TPTableViewCell *)v4 commonInit];
  }

  return v5;
}

- (void)commonInit
{
  v3 = [(TPTableViewCell *)self traitCollection];
  self->_accessiblityConstraintsEnabled = [v3 isPreferredContentSizeCategoryAccessible];

  [(TPTableViewCell *)self loadContentView];
}

- (void)unloadConstraints
{
  v3 = [(TPTableViewCell *)self constraints];
  [(TPTableViewCell *)self removeConstraints:v3];

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
    v3 = [(TPTableViewCell *)self foregroundView];
    v4 = [v3 backgroundColor];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setForegroundColor:(id)a3
{
  v10 = a3;
  if (v10 && ([MEMORY[0x1E69DC888] clearColor], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v10, "isEqual:", v4), v4, (v5 & 1) == 0))
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(TPTableViewCell *)self setForegroundView:v7];

    v8 = [(TPTableViewCell *)self foregroundView];
    [v8 setBackgroundColor:v10];

    v9 = [(TPTableViewCell *)self foregroundView];
    [(TPTableViewCell *)self addSubview:v9];
  }

  else
  {
    v6 = [(TPTableViewCell *)self foregroundView];
    [v6 removeFromSuperview];

    [(TPTableViewCell *)self setForegroundView:0];
  }
}

- (UIEdgeInsets)intrinsicSeparatorInset
{
  v3 = objc_opt_class();
  v4 = [(TPTableViewCell *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  [v3 separatorInsetForContentSizeCategory:v5];
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
    v11 = [(TPTableViewCell *)self foregroundView];
    [v11 setFrame:{v4, v6, v8, v10}];

    v12 = [(TPTableViewCell *)self foregroundView];
    [(TPTableViewCell *)self bringSubviewToFront:v12];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = TPTableViewCell;
  v4 = a3;
  [(TPTableViewCell *)&v11 traitCollectionDidChange:v4];
  v5 = [(TPTableViewCell *)self traitCollection:v11.receiver];
  v6 = [v4 preferredContentSizeCategory];

  v7 = [v5 preferredContentSizeCategory];

  if (v6 != v7)
  {
    v8 = [v5 isPreferredContentSizeCategoryAccessible];
    v9 = *MEMORY[0x1E69DDC90];
    v10 = v8 ^ [(TPTableViewCell *)self isAccessiblityConstraintsEnabled];
    if (v6 == v9)
    {
      if (v10)
      {
        self->_accessiblityConstraintsEnabled = v8;
      }
    }

    else
    {
      if (v10)
      {
        [(TPTableViewCell *)self setAccessiblityConstraintsEnabled:v8];
      }

      [(TPTableViewCell *)self updateFonts];
      [(TPTableViewCell *)self updateConstraintsConstants];
      [(TPTableViewCell *)self intrinsicSeparatorInset];
      [(TPTableViewCell *)self setSeparatorInset:?];
    }
  }
}

- (void)setAccessiblityConstraintsEnabled:(BOOL)a3
{
  if (self->_accessiblityConstraintsEnabled != a3)
  {
    self->_accessiblityConstraintsEnabled = a3;
    [(TPTableViewCell *)self unloadConstraints];
    [(TPTableViewCell *)self setNeedsUpdateConstraints];

    [(TPTableViewCell *)self layoutIfNeeded];
  }
}

- (void)setForegroundView:(id)a3
{
  v5 = a3;
  foregroundView = self->_foregroundView;
  v7 = v5;
  if (foregroundView != v5)
  {
    [(UIView *)foregroundView removeFromSuperview];
    objc_storeStrong(&self->_foregroundView, a3);
    if (self->_foregroundView)
    {
      [(TPTableViewCell *)self addSubview:?];
    }
  }
}

@end