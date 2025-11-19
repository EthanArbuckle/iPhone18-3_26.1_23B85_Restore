@interface TPView
- (TPView)initWithCoder:(id)a3;
- (TPView)initWithFrame:(CGRect)a3;
- (void)commonInit;
- (void)setAccessiblityConstraintsEnabled:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)unloadConstraints;
- (void)updateConstraints;
@end

@implementation TPView

- (TPView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TPView;
  v3 = [(TPView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TPView *)v3 commonInit];
  }

  return v4;
}

- (TPView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TPView;
  v3 = [(TPView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(TPView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = [(TPView *)self traitCollection];
  self->_accessiblityConstraintsEnabled = [v3 isPreferredContentSizeCategoryAccessible];
}

- (void)unloadConstraints
{
  v3 = [(TPView *)self constraints];
  [(TPView *)self removeConstraints:v3];

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

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = TPView;
  v4 = a3;
  [(TPView *)&v11 traitCollectionDidChange:v4];
  v5 = [(TPView *)self traitCollection:v11.receiver];
  v6 = [v4 preferredContentSizeCategory];

  v7 = [v5 preferredContentSizeCategory];

  if (v6 != v7)
  {
    v8 = [v5 isPreferredContentSizeCategoryAccessible];
    v9 = *MEMORY[0x1E69DDC90];
    v10 = v8 ^ [(TPView *)self isAccessiblityConstraintsEnabled];
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
        [(TPView *)self setAccessiblityConstraintsEnabled:v8];
      }

      [(TPView *)self updateFonts];
      [(TPView *)self updateConstraintsConstants];
    }
  }
}

- (void)setAccessiblityConstraintsEnabled:(BOOL)a3
{
  if (self->_accessiblityConstraintsEnabled != a3)
  {
    self->_accessiblityConstraintsEnabled = a3;
    [(TPView *)self unloadConstraints];

    [(TPView *)self updateConstraints];
  }
}

@end