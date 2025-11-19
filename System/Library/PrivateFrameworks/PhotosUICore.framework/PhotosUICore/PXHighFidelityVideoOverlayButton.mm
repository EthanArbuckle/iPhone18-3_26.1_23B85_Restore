@interface PXHighFidelityVideoOverlayButton
- (PXHighFidelityVideoOverlayButton)initWithConfiguration:(id)a3;
- (void)_playButtonTapped:(id)a3;
- (void)layoutSubviews;
- (void)setShowAsPause:(BOOL)a3;
- (void)setTarget:(id)a3 action:(SEL)a4;
@end

@implementation PXHighFidelityVideoOverlayButton

- (void)setShowAsPause:(BOOL)a3
{
  if (self->_showAsPause != a3)
  {
    v16 = v5;
    v17 = v4;
    v18 = v3;
    v11 = a3;
    self->_showAsPause = a3;
    if (a3 && ![(PXHighFidelityVideoOverlayButton *)self _didConfigureForPause])
    {
      v13 = [MEMORY[0x1E69DCAB8] px_playOverlayImage:5];
      [(UIButton *)self->_button setImage:v13 forState:4];
      [(UIButton *)self->_button setImage:v13 forState:5];
      [(PXHighFidelityVideoOverlayButton *)self _setDidConfigureForPause:1];
    }

    [(UIButton *)self->_button setSelected:v11, v8, v7, v6, v16, v17, v18, v9];
    backdropView = self->_backdropView;
    button = self->_button;

    [(_UIBackdropView *)backdropView updateMaskViewsForView:button];
  }
}

- (void)_playButtonTapped:(id)a3
{
  v9 = a3;
  [(PXHighFidelityVideoOverlayButton *)self _playButtonDeactivate:?];
  WeakRetained = objc_loadWeakRetained(&self->_target);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_target);
    v7 = v6;
    if (self->_action)
    {
      action = self->_action;
    }

    else
    {
      action = 0;
    }

    [v6 performSelector:action withObject:v9];
  }
}

- (void)setTarget:(id)a3 action:(SEL)a4
{
  objc_storeWeak(&self->_target, a3);
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  self->_action = v6;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = PXHighFidelityVideoOverlayButton;
  [(PXHighFidelityVideoOverlayButton *)&v11 layoutSubviews];
  [(PXHighFidelityVideoOverlayButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIButton *)self->_button setFrame:?];
  [(UIImageView *)self->_overlayPlayBackground setFrame:v4, v6, v8, v10];
}

- (PXHighFidelityVideoOverlayButton)initWithConfiguration:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E69DCAB8] px_playOverlayImage:0];
  v7 = objc_alloc(MEMORY[0x1E69DC738]);
  v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v8 setImage:v6 forState:0];
  [v8 sizeToFit];
  [v8 frame];
  v17.receiver = self;
  v17.super_class = PXHighFidelityVideoOverlayButton;
  v9 = [(PXHighFidelityVideoOverlayButton *)&v17 initWithFrame:?];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_overlayConfiguration, a3);
    objc_storeStrong(&v10->_button, v8);
    [v8 addTarget:v10 action:sel__playButtonTapped_ forControlEvents:64];
    [v8 addTarget:v10 action:sel__playButtonActivate_ forControlEvents:1];
    [v8 addTarget:v10 action:sel__playButtonActivate_ forControlEvents:4];
    [v8 addTarget:v10 action:sel__playButtonDeactivate_ forControlEvents:8];
    [v8 setDeliversTouchesForGesturesToSuperview:0];
    [(PXHighFidelityVideoOverlayButton *)v10 addSubview:v10->_button];
    [(PXHighFidelityVideoOverlayButton *)v10 setAutoresizingMask:45];
    if ([v5 style] <= 1)
    {
      v11 = [MEMORY[0x1E69DCAB8] px_playOverlayImage:1];
      v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v11];
      overlayPlayBackground = v10->_overlayPlayBackground;
      v10->_overlayPlayBackground = v12;

      v14 = [objc_alloc(MEMORY[0x1E69DD370]) initWithPrivateStyle:2010];
      backdropView = v10->_backdropView;
      v10->_backdropView = v14;

      [(PXHighFidelityVideoOverlayButton *)v10 insertSubview:v10->_backdropView belowSubview:v10->_button];
      [(PXHighFidelityVideoOverlayButton *)v10 addSubview:v10->_overlayPlayBackground];
      [(UIImageView *)v10->_overlayPlayBackground _setBackdropMaskViewFlags:7];
      [(UIImageView *)v10->_overlayPlayBackground setAlpha:0.0];
      [(_UIBackdropView *)v10->_backdropView updateMaskViewsForView:v10->_overlayPlayBackground];
      [(UIButton *)v10->_button _setBackdropMaskViewFlags:3];
      [(_UIBackdropView *)v10->_backdropView updateMaskViewsForView:v10->_button];
    }
  }

  [(PXHighFidelityVideoOverlayButton *)v10 _playButtonDeactivate:0];

  return v10;
}

@end