@interface VKKeyboardCameraGuidanceView
- (VKKeyboardCameraGuidanceView)initWithFrame:(CGRect)frame;
- (void)_reallyHideGuidance;
- (void)_reallyShowGuidance;
- (void)didMoveToSuperview;
- (void)hideGuidance;
- (void)setBounds:(CGRect)bounds;
- (void)showGuidanceWithText:(id)text;
@end

@implementation VKKeyboardCameraGuidanceView

- (VKKeyboardCameraGuidanceView)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = VKKeyboardCameraGuidanceView;
  v3 = [(VKKeyboardCameraGuidanceView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(VKKeyboardCameraGuidanceView *)v3 setAlpha:0.0];
    v5 = objc_alloc(MEMORY[0x1E69DD298]);
    v6 = [MEMORY[0x1E69DC730] effectWithStyle:2];
    v7 = [v5 initWithEffect:v6];
    blurView = v4->_blurView;
    v4->_blurView = v7;

    [(UIVisualEffectView *)v4->_blurView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(UIVisualEffectView *)v4->_blurView layer];
    [layer setMasksToBounds:1];

    [(UIVisualEffectView *)v4->_blurView setUserInteractionEnabled:0];
    layer2 = [(UIVisualEffectView *)v4->_blurView layer];
    [layer2 setCornerRadius:2.5];

    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v4->_label;
    v4->_label = v11;

    [(UILabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    layer3 = [(UILabel *)v4->_label layer];
    [layer3 setMasksToBounds:1];

    v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [(UILabel *)v4->_label setFont:v14];

    [(UILabel *)v4->_label setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v4->_label setUserInteractionEnabled:0];
    [(UILabel *)v4->_label setNumberOfLines:0];
    [(UILabel *)v4->_label setTextAlignment:1];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v4->_label setTextColor:whiteColor];

    [(VKKeyboardCameraGuidanceView *)v4 addSubview:v4->_blurView];
    v16 = [(VKKeyboardCameraGuidanceView *)v4 addSubview:v4->_label];
    v18 = vk_solariumEnabled(v16, v17);
    p_top = &v4->_contentEdgeInsets.top;
    if (v18)
    {
      *p_top = xmmword_1B4428060;
      *&v4->_contentEdgeInsets.bottom = xmmword_1B4428060;
      [(UIVisualEffectView *)v4->_blurView setHidden:1];
    }

    else
    {
      *p_top = xmmword_1B4428050;
      *&v4->_contentEdgeInsets.bottom = xmmword_1B4428050;
    }
  }

  return v4;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  v7.receiver = self;
  v7.super_class = VKKeyboardCameraGuidanceView;
  v5 = [(VKKeyboardCameraGuidanceView *)&v7 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width];
  if (vk_solariumEnabled(v5, v6))
  {
    [(VKKeyboardCameraGuidanceView *)self _setContinuousCornerRadius:height * 0.5];
  }
}

- (void)didMoveToSuperview
{
  v30[8] = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = VKKeyboardCameraGuidanceView;
  [(VKKeyboardCameraGuidanceView *)&v29 didMoveToSuperview];
  if (!self->_didAddConstraints)
  {
    [(VKKeyboardCameraGuidanceView *)self insertSubview:self->_blurView atIndex:0];
    v19 = MEMORY[0x1E696ACD8];
    leftAnchor = [(UIVisualEffectView *)self->_blurView leftAnchor];
    leftAnchor2 = [(VKKeyboardCameraGuidanceView *)self leftAnchor];
    v26 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v30[0] = v26;
    rightAnchor = [(UIVisualEffectView *)self->_blurView rightAnchor];
    rightAnchor2 = [(VKKeyboardCameraGuidanceView *)self rightAnchor];
    v23 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v30[1] = v23;
    topAnchor = [(UIVisualEffectView *)self->_blurView topAnchor];
    topAnchor2 = [(VKKeyboardCameraGuidanceView *)self topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v30[2] = v20;
    bottomAnchor = [(UIVisualEffectView *)self->_blurView bottomAnchor];
    bottomAnchor2 = [(VKKeyboardCameraGuidanceView *)self bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v30[3] = v16;
    topAnchor3 = [(UILabel *)self->_label topAnchor];
    topAnchor4 = [(VKKeyboardCameraGuidanceView *)self topAnchor];
    v13 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:self->_contentEdgeInsets.top];
    v30[4] = v13;
    leftAnchor3 = [(UILabel *)self->_label leftAnchor];
    leftAnchor4 = [(VKKeyboardCameraGuidanceView *)self leftAnchor];
    v4 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:self->_contentEdgeInsets.left];
    v30[5] = v4;
    bottomAnchor3 = [(VKKeyboardCameraGuidanceView *)self bottomAnchor];
    bottomAnchor4 = [(UILabel *)self->_label bottomAnchor];
    v7 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:self->_contentEdgeInsets.bottom];
    v30[6] = v7;
    rightAnchor3 = [(VKKeyboardCameraGuidanceView *)self rightAnchor];
    rightAnchor4 = [(UILabel *)self->_label rightAnchor];
    v10 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4 constant:self->_contentEdgeInsets.right];
    v30[7] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:8];
    [v19 activateConstraints:v11];

    self->_didAddConstraints = 1;
  }
}

- (void)showGuidanceWithText:(id)text
{
  textCopy = text;
  state = self->_state;
  if (state > 1)
  {
    if (state != 2)
    {
      if (state == 3)
      {
        objc_storeStrong(&self->_text, text);
        [(UILabel *)self->_label setText:textCopy];
      }

      else if (state == 4)
      {
        [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__reallyHideGuidance object:0];
        self->_state = 3;
      }

      goto LABEL_16;
    }

LABEL_8:
    objc_storeStrong(&self->_text, text);
    goto LABEL_16;
  }

  if (!state)
  {
    objc_storeStrong(&self->_text, text);
    Current = CFAbsoluteTimeGetCurrent();
    lastVisibleTime = self->_lastVisibleTime;
    v8 = Current - lastVisibleTime;
    if (lastVisibleTime != 0.0 && v8 <= 1.5)
    {
      self->_state = 1;
      [(VKKeyboardCameraGuidanceView *)self performSelector:sel__reallyShowGuidance withObject:0 afterDelay:1.5 - v8];
    }

    else
    {
      [(VKKeyboardCameraGuidanceView *)self _reallyShowGuidance];
    }

    goto LABEL_16;
  }

  if (state == 1)
  {
    goto LABEL_8;
  }

LABEL_16:
}

- (void)hideGuidance
{
  state = self->_state;
  if (state == 3)
  {
    v4 = CFAbsoluteTimeGetCurrent() - self->_visibleStartTime;
    if (self->_lastVisibleTime != 0.0 && v4 <= 3.5)
    {
      self->_state = 4;
      v6 = 3.5 - v4;

      [(VKKeyboardCameraGuidanceView *)self performSelector:sel__reallyHideGuidance withObject:0 afterDelay:v6];
    }

    else
    {

      [(VKKeyboardCameraGuidanceView *)self _reallyHideGuidance];
    }
  }

  else if (state == 1)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__reallyShowGuidance object:0];
    self->_state = 0;
  }
}

- (void)_reallyShowGuidance
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__reallyShowGuidance object:0];
  self->_state = 2;
  [(UILabel *)self->_label setText:self->_text];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__VKKeyboardCameraGuidanceView__reallyShowGuidance__block_invoke;
  v4[3] = &unk_1E7BE4208;
  v4[4] = self;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__VKKeyboardCameraGuidanceView__reallyShowGuidance__block_invoke_2;
  v3[3] = &unk_1E7BE42A8;
  v3[4] = self;
  [MEMORY[0x1E69DD250] _animateWithDuration:0x10000 delay:v4 options:0 animations:v3 start:0.5 completion:0.0];
}

uint64_t __51__VKKeyboardCameraGuidanceView__reallyShowGuidance__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 464) = CFAbsoluteTimeGetCurrent();
  v2 = *(a1 + 32);

  return [v2 setAlpha:1.0];
}

- (void)_reallyHideGuidance
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__reallyHideGuidance object:0];
  self->_state = 5;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__VKKeyboardCameraGuidanceView__reallyHideGuidance__block_invoke;
  v4[3] = &unk_1E7BE4208;
  v4[4] = self;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__VKKeyboardCameraGuidanceView__reallyHideGuidance__block_invoke_2;
  v3[3] = &unk_1E7BE42A8;
  v3[4] = self;
  [MEMORY[0x1E69DD250] _animateWithDuration:0x20000 delay:v4 options:0 animations:v3 start:0.5 completion:0.0];
}

@end