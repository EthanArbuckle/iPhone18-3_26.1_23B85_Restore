@interface TPView
- (TPView)initWithCoder:(id)coder;
- (TPView)initWithFrame:(CGRect)frame;
- (void)commonInit;
- (void)setAccessiblityConstraintsEnabled:(BOOL)enabled;
- (void)traitCollectionDidChange:(id)change;
- (void)unloadConstraints;
- (void)updateConstraints;
@end

@implementation TPView

- (TPView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TPView;
  v3 = [(TPView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TPView *)v3 commonInit];
  }

  return v4;
}

- (TPView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TPView;
  v3 = [(TPView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(TPView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  traitCollection = [(TPView *)self traitCollection];
  self->_accessiblityConstraintsEnabled = [traitCollection isPreferredContentSizeCategoryAccessible];
}

- (void)unloadConstraints
{
  constraints = [(TPView *)self constraints];
  [(TPView *)self removeConstraints:constraints];

  [(TPView *)self setConstraintsLoaded:0];
}

- (void)updateConstraints
{
  if (![(TPView *)self isConstraintsLoaded])
  {
    [(TPView *)self updateFonts];
    [(TPView *)self loadConstraints];
    [(TPView *)self setConstraintsLoaded:1];
  }

  v3.receiver = self;
  v3.super_class = TPView;
  [(TPView *)&v3 updateConstraints];
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = TPView;
  changeCopy = change;
  [(TPView *)&v11 traitCollectionDidChange:changeCopy];
  v5 = [(TPView *)self traitCollection:v11.receiver];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];

  preferredContentSizeCategory2 = [v5 preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    isPreferredContentSizeCategoryAccessible = [v5 isPreferredContentSizeCategoryAccessible];
    v9 = *MEMORY[0x1E69DDC90];
    v10 = isPreferredContentSizeCategoryAccessible ^ [(TPView *)self isAccessiblityConstraintsEnabled];
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
        [(TPView *)self setAccessiblityConstraintsEnabled:isPreferredContentSizeCategoryAccessible];
      }

      [(TPView *)self updateFonts];
      [(TPView *)self updateConstraintsConstants];
    }
  }
}

- (void)setAccessiblityConstraintsEnabled:(BOOL)enabled
{
  if (self->_accessiblityConstraintsEnabled != enabled)
  {
    self->_accessiblityConstraintsEnabled = enabled;
    [(TPView *)self unloadConstraints];

    [(TPView *)self updateConstraints];
  }
}

@end