@interface SBHVisualStylingView
- (SBHVisualStylingView)initWithFrame:(CGRect)a3;
- (void)_updateVisualStyling;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
@end

@implementation SBHVisualStylingView

- (SBHVisualStylingView)initWithFrame:(CGRect)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = SBHVisualStylingView;
  v3 = [(SBHVisualStylingView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_self();
    v9[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v6 = [(SBHVisualStylingView *)v3 registerForTraitChanges:v5 withAction:sel__updateVisualStyling];
  }

  return v3;
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = SBHVisualStylingView;
  [(SBHVisualStylingView *)&v4 didMoveToSuperview];
  v3 = [(SBHVisualStylingView *)self superview];

  if (v3)
  {
    [(SBHVisualStylingView *)self _updateVisualStyling];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SBHVisualStylingView;
  [(SBHVisualStylingView *)&v3 didMoveToWindow];
  if ([(SBHVisualStylingView *)self _isInAWindow])
  {
    [(SBHVisualStylingView *)self _updateVisualStyling];
  }
}

- (void)_updateVisualStyling
{
  v3 = [(SBHVisualStylingView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  v11 = [objc_opt_class() visualStyleSetNameForUserInterfaceStyle:v4];
  v5 = MEMORY[0x1E69AE170];
  v6 = SBHBundle();
  v7 = [v5 _visualStylingProviderForStyleSetNamed:v11 inBundle:v6];

  [(SBHVisualStylingView *)self alpha];
  v9 = v8;
  v10 = [v7 _visualStylingForStyle:1];
  [(SBHVisualStylingView *)self mt_replaceVisualStyling:v10];

  [(SBHVisualStylingView *)self setAlpha:v9];
}

@end