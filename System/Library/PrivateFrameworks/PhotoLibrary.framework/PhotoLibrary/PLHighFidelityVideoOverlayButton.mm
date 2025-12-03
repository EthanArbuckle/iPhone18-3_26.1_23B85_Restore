@interface PLHighFidelityVideoOverlayButton
- (PLHighFidelityVideoOverlayButton)initWithStyle:(int64_t)style;
- (void)_playButtonTapped:(id)tapped;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setTarget:(id)target action:(SEL)action;
@end

@implementation PLHighFidelityVideoOverlayButton

- (void)_playButtonTapped:(id)tapped
{
  [(PLHighFidelityVideoOverlayButton *)self _playButtonDeactivate:tapped];
  if (objc_opt_respondsToSelector())
  {
    target = self->_target;
    if (self->_action)
    {
      action = self->_action;
    }

    else
    {
      action = 0;
    }

    [target performSelector:action withObject:self];
  }
}

- (void)setTarget:(id)target action:(SEL)action
{
  self->_target = target;
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_action = actionCopy;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PLHighFidelityVideoOverlayButton;
  [(PLHighFidelityVideoOverlayButton *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = PLHighFidelityVideoOverlayButton;
  [(PLHighFidelityVideoOverlayButton *)&v11 layoutSubviews];
  [(PLHighFidelityVideoOverlayButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIButton *)self->_button setFrame:?];
  [(UIImageView *)self->_overlayPlayBackground setFrame:v4, v6, v8, v10];
}

- (PLHighFidelityVideoOverlayButton)initWithStyle:(int64_t)style
{
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [MEMORY[0x277D755B8] imageNamed:@"PLVideoOverlayGlyphMask" inBundle:v5];
  v7 = objc_alloc(MEMORY[0x277D75220]);
  v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(UIButton *)v8 setImage:v6 forState:0];
  [(UIButton *)v8 sizeToFit];
  [(UIButton *)v8 frame];
  v14.receiver = self;
  v14.super_class = PLHighFidelityVideoOverlayButton;
  v9 = [(PLHighFidelityVideoOverlayButton *)&v14 initWithFrame:?];
  v10 = v9;
  if (v9)
  {
    v9->_style = style;
    v9->_button = v8;
    [(UIButton *)v8 addTarget:v9 action:sel__playButtonTapped_ forControlEvents:64];
    [(UIButton *)v8 addTarget:v10 action:sel__playButtonActivate_ forControlEvents:1];
    [(UIButton *)v8 addTarget:v10 action:sel__playButtonActivate_ forControlEvents:4];
    [(UIButton *)v8 addTarget:v10 action:sel__playButtonDeactivate_ forControlEvents:8];
    [(UIButton *)v8 setDeliversTouchesForGesturesToSuperview:0];
    [(PLHighFidelityVideoOverlayButton *)v10 addSubview:v10->_button];
    [(PLHighFidelityVideoOverlayButton *)v10 setAutoresizingMask:45];
    if (!style)
    {
      v11 = [MEMORY[0x277D755B8] imageNamed:@"PLVideoOverlayBackgroundMask" inBundle:v5];
      v10->_overlayPlayBackground = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v11];
      v12 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2010];
      v10->_backdropView = v12;
      [(PLHighFidelityVideoOverlayButton *)v10 insertSubview:v12 belowSubview:v10->_button];
      [(PLHighFidelityVideoOverlayButton *)v10 addSubview:v10->_overlayPlayBackground];
      [(UIImageView *)v10->_overlayPlayBackground _setBackdropMaskViewFlags:7];
      [(UIImageView *)v10->_overlayPlayBackground setAlpha:0.0];
      [(_UIBackdropView *)v10->_backdropView updateMaskViewsForView:v10->_overlayPlayBackground];
      [(UIButton *)v10->_button _setBackdropMaskViewFlags:3];
      [(_UIBackdropView *)v10->_backdropView updateMaskViewsForView:v10->_button];
    }
  }

  else
  {
  }

  [(PLHighFidelityVideoOverlayButton *)v10 _playButtonDeactivate:0];
  return v10;
}

@end