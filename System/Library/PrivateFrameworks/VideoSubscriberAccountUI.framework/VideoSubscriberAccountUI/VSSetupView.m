@interface VSSetupView
- (VSSetupView)initWithCoder:(id)a3;
- (VSSetupView)initWithFrame:(CGRect)a3;
- (VSSetupViewDelegate)delegate;
- (void)_appsButtonPressed:(id)a3;
- (void)_beginButtonPressed:(id)a3;
- (void)_skipButtonPressed:(id)a3;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setShouldOverrideSkipButtonStyle:(BOOL)a3;
- (void)setSkipButtonTitle:(id)a3;
@end

@implementation VSSetupView

- (VSSetupView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = VSSetupView;
  v3 = [(VSSetupView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    commonInit_7(v3);
  }

  return v4;
}

- (VSSetupView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VSSetupView;
  v3 = [(VSSetupView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    commonInit_7(v3);
  }

  return v4;
}

- (void)dealloc
{
  VSRequireMainThread();
  v3.receiver = self;
  v3.super_class = VSSetupView;
  [(VSSetupView *)&v3 dealloc];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = VSSetupView;
  [(VSSetupView *)&v13 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [(VSSetupView *)self skipButton];
  v8 = [v7 titleLabel];

  v9 = [v6 previouslyFocusedItem];
  v10 = [(VSSetupView *)self skipButton];

  if (v9 == v10)
  {
    [v8 setMarqueeRunning:0];
    [v8 setMarqueeEnabled:0];
    [v8 setLineBreakMode:5];
  }

  else
  {
    v11 = [v6 nextFocusedItem];
    v12 = [(VSSetupView *)self skipButton];

    if (v11 == v12)
    {
      [v8 setMarqueeEnabled:1];
      [v8 setMarqueeRunning:1];
    }
  }
}

- (void)setShouldOverrideSkipButtonStyle:(BOOL)a3
{
  v3 = a3;
  self->_shouldOverrideSkipButtonStyle = a3;
  [(VSSetupView *)self defaultSkipButtonSpacing];
  v6 = v5;
  v7 = [(VSSetupView *)self defaultSkipButtonFont];
  v8 = v7;
  if (v3)
  {
    v9 = [v7 fontWithSize:29.0];
    [(VSSetupView *)self setSkipButtonFont:v9];
    v6 = v6 * 2.75;
    v10 = [(VSSetupView *)self stackView];
    v11 = [(VSSetupView *)self skipButton];
    [v10 setCustomSpacing:v11 afterView:0.0];

    v12 = [(VSSetupView *)self appsButton];
    LODWORD(v11) = [v12 isHidden];

    if (!v11)
    {
      goto LABEL_6;
    }

    v13 = [(VSSetupView *)self stackView];
    v14 = [(VSSetupView *)self appsButton];
    [v13 setCustomSpacing:v14 afterView:0.0];
  }

  else
  {
    [(VSSetupView *)self setSkipButtonFont:v7];

    v8 = [(VSSetupView *)self skipButton];
    v9 = [v8 widthAnchor];
    v13 = [(VSSetupView *)self beginButton];
    v14 = [v13 widthAnchor];
    v15 = [v9 constraintEqualToAnchor:v14];
    [v15 setActive:1];
  }

LABEL_6:
  v17 = [(VSSetupView *)self stackView];
  v16 = [(VSSetupView *)self beginButton];
  [v17 setCustomSpacing:v16 afterView:v6];
}

- (void)setSkipButtonTitle:(id)a3
{
  objc_storeStrong(&self->_skipButtonTitle, a3);
  v4 = [(VSSetupView *)self skipButton];
  [v4 sizeToFit];

  v5 = [(VSSetupView *)self skipButton];
  [v5 setNeedsUpdateConstraints];
}

- (void)_beginButtonPressed:(id)a3
{
  v4 = [(VSSetupView *)self delegate];
  [v4 beginSetup:self];
}

- (void)_skipButtonPressed:(id)a3
{
  v4 = [(VSSetupView *)self delegate];
  [v4 skipSetup:self];
}

- (void)_appsButtonPressed:(id)a3
{
  v4 = [(VSSetupView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 showApps:self];
  }
}

- (VSSetupViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end