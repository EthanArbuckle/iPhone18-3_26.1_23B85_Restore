@interface SBUISystemApertureButton
- (SBUISystemApertureButton)initWithFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation SBUISystemApertureButton

- (SBUISystemApertureButton)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SBUISystemApertureButton;
  v3 = [(SBUISystemApertureButton *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    titleLabel = [(SBUISystemApertureButton *)v3 titleLabel];
    [titleLabel setAdjustsFontForContentSizeCategory:1];
    objc_initWeak(&location, v4);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__SBUISystemApertureButton_initWithFrame___block_invoke;
    v7[3] = &unk_1E789EA28;
    objc_copyWeak(&v8, &location);
    [(SBUISystemApertureButton *)v4 setConfigurationUpdateHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __42__SBUISystemApertureButton_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sbui_updateConfiguration];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v15.receiver = self;
  v15.super_class = SBUISystemApertureButton;
  isHighlighted = [(SBUISystemApertureButton *)&v15 isHighlighted];
  v14.receiver = self;
  v14.super_class = SBUISystemApertureButton;
  [(SBUISystemApertureButton *)&v14 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    [(SBUISystemApertureButton *)self bounds];
    v7 = v6;
    [(SBUISystemApertureButton *)self bounds];
    if (v7 >= v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v10 = fmax((v9 + -6.0) / v9, 0.9);
    v11 = 0.37;
    v12[1] = 3221225472;
    v12[0] = MEMORY[0x1E69E9820];
    v12[2] = __43__SBUISystemApertureButton_setHighlighted___block_invoke;
    v12[3] = &unk_1E789EA50;
    v12[4] = self;
    if (highlightedCopy)
    {
      v11 = 0.26;
    }

    v13 = highlightedCopy;
    *&v12[5] = v10;
    [MEMORY[0x1E69DD250] animateWithSpringDuration:2 bounce:v12 initialSpringVelocity:0 delay:v11 options:0.0 animations:0.0 completion:0.0];
  }
}

uint64_t __43__SBUISystemApertureButton_setHighlighted___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0.7;
  if (!*(a1 + 48))
  {
    v3 = 1.0;
  }

  [v2 setAlpha:v3];
  v4 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    CGAffineTransformMakeScale(&v7, *(a1 + 40), *(a1 + 40));
  }

  else
  {
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    *&v7.a = *MEMORY[0x1E695EFD0];
    *&v7.c = v5;
    *&v7.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  return [v4 setTransform:&v7];
}

@end