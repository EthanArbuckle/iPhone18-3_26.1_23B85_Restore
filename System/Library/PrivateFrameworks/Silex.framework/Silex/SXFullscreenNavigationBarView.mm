@interface SXFullscreenNavigationBarView
- (SXFullscreenNavigationBarView)init;
- (SXFullscreenNavigationBarViewDelegate)delegate;
- (void)createBackgroundView;
- (void)createDoneButton;
- (void)didMoveToSuperview;
- (void)doneButtonPressed:(id)a3;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)a3;
- (void)updateFrameAnimated:(BOOL)a3;
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

- (void)updateFrameAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SXFullscreenNavigationBarView *)self superview];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(SXFullscreenNavigationBarView *)self traitCollection];
  if ([v14 verticalSizeClass] == 1)
  {
    v15 = [(SXFullscreenNavigationBarView *)self traitCollection];
    if ([v15 horizontalSizeClass] == 1)
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
  v21 = [(SXFullscreenNavigationBarView *)self expanded];
  v22 = 0.0;
  if (!v21)
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
  if (v3)
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v24.receiver = self;
  v24.super_class = SXFullscreenNavigationBarView;
  [(SXFullscreenNavigationBarView *)&v24 setFrame:?];
  v8 = [(SXFullscreenNavigationBarView *)self backgroundView];
  [(SXFullscreenNavigationBarView *)self bounds];
  [v8 setFrame:?];

  v9 = [(SXFullscreenNavigationBarView *)self superview];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = self;
  }

  v12 = v11;

  [(SXFullscreenNavigationBarView *)v12 safeAreaInsets];
  v14 = v13;
  v15 = [(SXFullscreenNavigationBarView *)self traitCollection];
  v16 = 22.0;
  if ([v15 verticalSizeClass] == 1)
  {
    v17 = [(SXFullscreenNavigationBarView *)self traitCollection];
    if ([v17 horizontalSizeClass] == 1)
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
  v21 = [(SXFullscreenNavigationBarView *)self button];
  [v21 bounds];
  v22 = v20 + CGRectGetWidth(v26) * -0.5 + -5.0 - v14;

  v23 = [(SXFullscreenNavigationBarView *)self button];
  [v23 setCenter:{v22, v16 + v19}];
}

- (void)createBackgroundView
{
  v6 = [MEMORY[0x1E69DC730] effectWithStyle:2];
  v3 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v6];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v3;

  [(UIVisualEffectView *)self->_backgroundView _setGroupName:@"captionBars"];
  v5 = [(SXFullscreenNavigationBarView *)self backgroundView];
  [(SXFullscreenNavigationBarView *)self addSubview:v5];
}

- (void)createDoneButton
{
  v3 = [MEMORY[0x1E69DC738] buttonWithType:1];
  button = self->_button;
  self->_button = v3;

  v5 = [(SXFullscreenNavigationBarView *)self button];
  v6 = SXBundle();
  v7 = [v6 localizedStringForKey:@"Done" value:&stru_1F532F6C0 table:0];
  [v5 setTitle:v7 forState:0];

  v8 = [(SXFullscreenNavigationBarView *)self button];
  v9 = [MEMORY[0x1E69DC888] whiteColor];
  [v8 setTitleColor:v9 forState:0];

  v10 = [(SXFullscreenNavigationBarView *)self button];
  v11 = [v10 titleLabel];
  v12 = MEMORY[0x1E69DB878];
  [MEMORY[0x1E69DB878] systemFontSize];
  v13 = [v12 boldSystemFontOfSize:?];
  [v11 setFont:v13];

  v14 = [(SXFullscreenNavigationBarView *)self button];
  [v14 addTarget:self action:sel_doneButtonPressed_ forControlEvents:64];

  if (_UISolariumFeatureFlagEnabled())
  {
    v15 = [(SXFullscreenNavigationBarView *)self button];
    [v15 setOverrideUserInterfaceStyle:2];
  }

  v16 = [(SXFullscreenNavigationBarView *)self button];
  [v16 sizeToFit];

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

  v24 = [(SXFullscreenNavigationBarView *)self button];
  v25 = [(SXFullscreenNavigationBarView *)self button];
  [v25 frame];
  v29 = CGRectInset(v28, -v20, -v23);
  [v24 setFrame:{v29.origin.x, v29.origin.y, v29.size.width, v29.size.height}];

  v26 = [(SXFullscreenNavigationBarView *)self button];
  [(SXFullscreenNavigationBarView *)self addSubview:v26];
}

- (void)doneButtonPressed:(id)a3
{
  v4 = [(SXFullscreenNavigationBarView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SXFullscreenNavigationBarView *)self delegate];
    [v6 fullscreenNavigationBarViewDoneButtonPressed:self];
  }
}

- (SXFullscreenNavigationBarViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end