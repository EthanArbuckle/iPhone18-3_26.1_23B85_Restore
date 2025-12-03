@interface SXFullscreenNavigationBarView
- (SXFullscreenNavigationBarView)init;
- (SXFullscreenNavigationBarViewDelegate)delegate;
- (void)createBackgroundView;
- (void)createDoneButton;
- (void)didMoveToSuperview;
- (void)doneButtonPressed:(id)pressed;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)frame;
- (void)updateFrameAnimated:(BOOL)animated;
@end

@implementation SXFullscreenNavigationBarView

- (SXFullscreenNavigationBarView)init
{
  v5.receiver = self;
  v5.super_class = SXFullscreenNavigationBarView;
  v2 = [(SXFullscreenNavigationBarView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SXFullscreenNavigationBarView *)v2 createBackgroundView];
    [(SXFullscreenNavigationBarView *)v3 createDoneButton];
  }

  return v3;
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = SXFullscreenNavigationBarView;
  [(SXFullscreenNavigationBarView *)&v3 didMoveToSuperview];
  [(SXFullscreenNavigationBarView *)self updateFrameAnimated:0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SXFullscreenNavigationBarView;
  [(SXFullscreenNavigationBarView *)&v3 layoutSubviews];
  [(SXFullscreenNavigationBarView *)self updateFrameAnimated:0];
}

- (void)updateFrameAnimated:(BOOL)animated
{
  animatedCopy = animated;
  superview = [(SXFullscreenNavigationBarView *)self superview];
  [superview frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  traitCollection = [(SXFullscreenNavigationBarView *)self traitCollection];
  if ([traitCollection verticalSizeClass] == 1)
  {
    traitCollection2 = [(SXFullscreenNavigationBarView *)self traitCollection];
    if ([traitCollection2 horizontalSizeClass] == 1)
    {
      v16 = 32.0;
    }

    else
    {
      v16 = 44.0;
    }
  }

  else
  {
    v16 = 44.0;
  }

  [(SXFullscreenNavigationBarView *)self safeAreaInsets];
  v18 = v16 + v17;
  v32.origin.x = v7;
  v32.origin.y = v9;
  v32.size.width = v11;
  v32.size.height = v13;
  MinX = CGRectGetMinX(v32);
  v33.origin.x = v7;
  v33.origin.y = v9;
  v33.size.width = v11;
  v33.size.height = v13;
  Width = CGRectGetWidth(v33);
  expanded = [(SXFullscreenNavigationBarView *)self expanded];
  v22 = 0.0;
  if (!expanded)
  {
    v23 = MinX;
    v24 = Width;
    v25 = v18;
    v22 = 0.0 - CGRectGetHeight(*(&v22 - 1));
  }

  v26 = MinX;
  v27 = Width;
  v28 = v18;
  v34 = CGRectIntegral(*(&v22 - 1));
  [(SXFullscreenNavigationBarView *)self setFrame:v34.origin.x, v34.origin.y, v34.size.width, v34.size.height];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __53__SXFullscreenNavigationBarView_updateFrameAnimated___block_invoke;
  v31[3] = &unk_1E84FED18;
  v31[4] = self;
  v29 = MEMORY[0x1DA716BE0](v31);
  v30 = v29;
  if (animatedCopy)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v29 options:0 animations:0.15 completion:0.0];
  }

  else
  {
    (*(v29 + 16))(v29);
  }
}

uint64_t __53__SXFullscreenNavigationBarView_updateFrameAnimated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 expanded];

  return [v1 setAlpha:v2];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v24.receiver = self;
  v24.super_class = SXFullscreenNavigationBarView;
  [(SXFullscreenNavigationBarView *)&v24 setFrame:?];
  backgroundView = [(SXFullscreenNavigationBarView *)self backgroundView];
  [(SXFullscreenNavigationBarView *)self bounds];
  [backgroundView setFrame:?];

  superview = [(SXFullscreenNavigationBarView *)self superview];
  v10 = superview;
  if (superview)
  {
    selfCopy = superview;
  }

  else
  {
    selfCopy = self;
  }

  v12 = selfCopy;

  [(SXFullscreenNavigationBarView *)v12 safeAreaInsets];
  v14 = v13;
  traitCollection = [(SXFullscreenNavigationBarView *)self traitCollection];
  v16 = 22.0;
  if ([traitCollection verticalSizeClass] == 1)
  {
    traitCollection2 = [(SXFullscreenNavigationBarView *)self traitCollection];
    if ([traitCollection2 horizontalSizeClass] == 1)
    {
      v16 = 16.0;
    }

    else
    {
      v16 = 22.0;
    }
  }

  [(SXFullscreenNavigationBarView *)self safeAreaInsets];
  v19 = v18;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v20 = CGRectGetWidth(v25);
  button = [(SXFullscreenNavigationBarView *)self button];
  [button bounds];
  v22 = v20 + CGRectGetWidth(v26) * -0.5 + -5.0 - v14;

  button2 = [(SXFullscreenNavigationBarView *)self button];
  [button2 setCenter:{v22, v16 + v19}];
}

- (void)createBackgroundView
{
  v6 = [MEMORY[0x1E69DC730] effectWithStyle:2];
  v3 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v6];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v3;

  [(UIVisualEffectView *)self->_backgroundView _setGroupName:@"captionBars"];
  backgroundView = [(SXFullscreenNavigationBarView *)self backgroundView];
  [(SXFullscreenNavigationBarView *)self addSubview:backgroundView];
}

- (void)createDoneButton
{
  v3 = [MEMORY[0x1E69DC738] buttonWithType:1];
  button = self->_button;
  self->_button = v3;

  button = [(SXFullscreenNavigationBarView *)self button];
  v6 = SXBundle();
  v7 = [v6 localizedStringForKey:@"Done" value:&stru_1F532F6C0 table:0];
  [button setTitle:v7 forState:0];

  button2 = [(SXFullscreenNavigationBarView *)self button];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [button2 setTitleColor:whiteColor forState:0];

  button3 = [(SXFullscreenNavigationBarView *)self button];
  titleLabel = [button3 titleLabel];
  v12 = MEMORY[0x1E69DB878];
  [MEMORY[0x1E69DB878] systemFontSize];
  v13 = [v12 boldSystemFontOfSize:?];
  [titleLabel setFont:v13];

  button4 = [(SXFullscreenNavigationBarView *)self button];
  [button4 addTarget:self action:sel_doneButtonPressed_ forControlEvents:64];

  if (_UISolariumFeatureFlagEnabled())
  {
    button5 = [(SXFullscreenNavigationBarView *)self button];
    [button5 setOverrideUserInterfaceStyle:2];
  }

  button6 = [(SXFullscreenNavigationBarView *)self button];
  [button6 sizeToFit];

  v17 = MEMORY[0x1E695EFF8];
  [(SXFullscreenNavigationBarView *)self frame];
  if (v18 >= 22.0)
  {
    v20 = *v17;
  }

  else
  {
    [(SXFullscreenNavigationBarView *)self frame];
    v20 = (22.0 - v19) * 0.5;
  }

  [(SXFullscreenNavigationBarView *)self frame];
  if (v21 >= 44.0)
  {
    v23 = v17[1];
  }

  else
  {
    [(SXFullscreenNavigationBarView *)self frame];
    v23 = (44.0 - v22) * 0.5;
  }

  button7 = [(SXFullscreenNavigationBarView *)self button];
  button8 = [(SXFullscreenNavigationBarView *)self button];
  [button8 frame];
  v29 = CGRectInset(v28, -v20, -v23);
  [button7 setFrame:{v29.origin.x, v29.origin.y, v29.size.width, v29.size.height}];

  button9 = [(SXFullscreenNavigationBarView *)self button];
  [(SXFullscreenNavigationBarView *)self addSubview:button9];
}

- (void)doneButtonPressed:(id)pressed
{
  delegate = [(SXFullscreenNavigationBarView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SXFullscreenNavigationBarView *)self delegate];
    [delegate2 fullscreenNavigationBarViewDoneButtonPressed:self];
  }
}

- (SXFullscreenNavigationBarViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end