@interface TPControl
- (TPControl)initWithCoder:(id)coder;
- (TPControl)initWithFrame:(CGRect)frame;
- (void)commonInit;
- (void)setAccessiblityConstraintsEnabled:(BOOL)enabled;
- (void)traitCollectionDidChange:(id)change;
- (void)unloadConstraints;
- (void)updateConstraints;
@end

@implementation TPControl

- (TPControl)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TPControl;
  v3 = [(TPControl *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TPControl *)v3 commonInit];
  }

  return v4;
}

- (TPControl)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TPControl;
  v3 = [(TPControl *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(TPControl *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  traitCollection = [(TPControl *)self traitCollection];
  self->_accessiblityConstraintsEnabled = [traitCollection isPreferredContentSizeCategoryAccessible];
}

- (void)unloadConstraints
{
  constraints = [(TPControl *)self constraints];
  [(TPControl *)self removeConstraints:constraints];

  [(TPControl *)self setConstraintsLoaded:0];
}

- (void)updateConstraints
{
  if (![(TPControl *)self isConstraintsLoaded])
  {
    [(TPControl *)self updateFonts];
    [(TPControl *)self loadConstraints];
    [(TPControl *)self setConstraintsLoaded:1];
  }

  v3.receiver = self;
  v3.super_class = TPControl;
  [(TPControl *)&v3 updateConstraints];
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = TPControl;
  changeCopy = change;
  [(TPControl *)&v11 traitCollectionDidChange:changeCopy];
  v5 = [(TPControl *)self traitCollection:v11.receiver];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];

  preferredContentSizeCategory2 = [v5 preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    isPreferredContentSizeCategoryAccessible = [v5 isPreferredContentSizeCategoryAccessible];
    v9 = *MEMORY[0x1E69DDC90];
    v10 = isPreferredContentSizeCategoryAccessible ^ [(TPControl *)self isAccessiblityConstraintsEnabled];
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
        [(TPControl *)self setAccessiblityConstraintsEnabled:isPreferredContentSizeCategoryAccessible];
      }

      [(TPControl *)self updateFonts];
      [(TPControl *)self updateConstraintsConstants];
    }
  }
}

- (void)setAccessiblityConstraintsEnabled:(BOOL)enabled
{
  if (self->_accessiblityConstraintsEnabled != enabled)
  {
    self->_accessiblityConstraintsEnabled = enabled;
    [(TPControl *)self unloadConstraints];

    [(TPControl *)self updateConstraints];
  }
}

@end