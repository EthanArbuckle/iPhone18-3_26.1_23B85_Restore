@interface VSSetupView
- (VSSetupView)initWithCoder:(id)coder;
- (VSSetupView)initWithFrame:(CGRect)frame;
- (VSSetupViewDelegate)delegate;
- (void)_appsButtonPressed:(id)pressed;
- (void)_beginButtonPressed:(id)pressed;
- (void)_skipButtonPressed:(id)pressed;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setShouldOverrideSkipButtonStyle:(BOOL)style;
- (void)setSkipButtonTitle:(id)title;
@end

@implementation VSSetupView

- (VSSetupView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = VSSetupView;
  v3 = [(VSSetupView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    commonInit_7(v3);
  }

  return v4;
}

- (VSSetupView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VSSetupView;
  v3 = [(VSSetupView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = VSSetupView;
  [(VSSetupView *)&v13 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  skipButton = [(VSSetupView *)self skipButton];
  titleLabel = [skipButton titleLabel];

  previouslyFocusedItem = [contextCopy previouslyFocusedItem];
  skipButton2 = [(VSSetupView *)self skipButton];

  if (previouslyFocusedItem == skipButton2)
  {
    [titleLabel setMarqueeRunning:0];
    [titleLabel setMarqueeEnabled:0];
    [titleLabel setLineBreakMode:5];
  }

  else
  {
    nextFocusedItem = [contextCopy nextFocusedItem];
    skipButton3 = [(VSSetupView *)self skipButton];

    if (nextFocusedItem == skipButton3)
    {
      [titleLabel setMarqueeEnabled:1];
      [titleLabel setMarqueeRunning:1];
    }
  }
}

- (void)setShouldOverrideSkipButtonStyle:(BOOL)style
{
  styleCopy = style;
  self->_shouldOverrideSkipButtonStyle = style;
  [(VSSetupView *)self defaultSkipButtonSpacing];
  v6 = v5;
  defaultSkipButtonFont = [(VSSetupView *)self defaultSkipButtonFont];
  skipButton2 = defaultSkipButtonFont;
  if (styleCopy)
  {
    widthAnchor = [defaultSkipButtonFont fontWithSize:29.0];
    [(VSSetupView *)self setSkipButtonFont:widthAnchor];
    v6 = v6 * 2.75;
    stackView = [(VSSetupView *)self stackView];
    skipButton = [(VSSetupView *)self skipButton];
    [stackView setCustomSpacing:skipButton afterView:0.0];

    appsButton = [(VSSetupView *)self appsButton];
    LODWORD(skipButton) = [appsButton isHidden];

    if (!skipButton)
    {
      goto LABEL_6;
    }

    stackView2 = [(VSSetupView *)self stackView];
    appsButton2 = [(VSSetupView *)self appsButton];
    [stackView2 setCustomSpacing:appsButton2 afterView:0.0];
  }

  else
  {
    [(VSSetupView *)self setSkipButtonFont:defaultSkipButtonFont];

    skipButton2 = [(VSSetupView *)self skipButton];
    widthAnchor = [skipButton2 widthAnchor];
    stackView2 = [(VSSetupView *)self beginButton];
    appsButton2 = [stackView2 widthAnchor];
    v15 = [widthAnchor constraintEqualToAnchor:appsButton2];
    [v15 setActive:1];
  }

LABEL_6:
  stackView3 = [(VSSetupView *)self stackView];
  beginButton = [(VSSetupView *)self beginButton];
  [stackView3 setCustomSpacing:beginButton afterView:v6];
}

- (void)setSkipButtonTitle:(id)title
{
  objc_storeStrong(&self->_skipButtonTitle, title);
  skipButton = [(VSSetupView *)self skipButton];
  [skipButton sizeToFit];

  skipButton2 = [(VSSetupView *)self skipButton];
  [skipButton2 setNeedsUpdateConstraints];
}

- (void)_beginButtonPressed:(id)pressed
{
  delegate = [(VSSetupView *)self delegate];
  [delegate beginSetup:self];
}

- (void)_skipButtonPressed:(id)pressed
{
  delegate = [(VSSetupView *)self delegate];
  [delegate skipSetup:self];
}

- (void)_appsButtonPressed:(id)pressed
{
  delegate = [(VSSetupView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate showApps:self];
  }
}

- (VSSetupViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end