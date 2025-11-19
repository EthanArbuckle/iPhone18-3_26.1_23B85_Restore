@interface UIKeyboardDictationMenu
+ (id)sharedInstance;
- (CGSize)preferredSize;
- (UIKeyboardDictationMenu)initWithFrame:(CGRect)a3;
- (void)cleanupForFadeOrHide;
- (void)fade;
- (void)fadeWithDelay:(double)a3;
- (void)hide;
- (void)performShowAnimation;
- (void)willShow;
@end

@implementation UIKeyboardDictationMenu

- (UIKeyboardDictationMenu)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = UIKeyboardDictationMenu;
  v3 = [(UIKeyboardMenuView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setUserInteractionEnabled:0];
    v5 = MEMORY[0x1E695DEC8];
    v6 = [UIColor colorWithRed:0.999 green:0.999 blue:0.999 alpha:1.0];
    v7 = [UIColor colorWithRed:0.999 green:0.999 blue:0.999 alpha:1.0];
    v8 = [v5 arrayWithObjects:{v6, v7, 0}];
    [(UIInputSwitcherShadowView *)v4->super.m_shadowView setGradientColors:v8];

    v9 = +[(UIDictationView *)UIDictationPopUpView];
    [(UIView *)v4 addSubview:v9];

    v10 = v4;
  }

  return v4;
}

+ (id)sharedInstance
{
  v2 = gSharedDictationMenu;
  if (!gSharedDictationMenu)
  {
    v3 = [UIKeyboardDictationMenu alloc];
    v4 = [(UIKeyboardDictationMenu *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v5 = gSharedDictationMenu;
    gSharedDictationMenu = v4;

    v2 = gSharedDictationMenu;
  }

  return v2;
}

- (CGSize)preferredSize
{
  +[UIDictationView viewSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)performShowAnimation
{
  p_m_referenceRect = &self->super.m_referenceRect;
  MidY = CGRectGetMidY(self->super.m_referenceRect);
  [(UIView *)self frame];
  v5 = MidY - CGRectGetMidY(v18);
  width = p_m_referenceRect->size.width;
  [(UIView *)self bounds];
  height = p_m_referenceRect->size.height;
  v9 = width / v8;
  [(UIView *)self bounds];
  if (v9 >= height / v10)
  {
    v9 = height / v10;
  }

  [(UIView *)self center];
  v12 = v11;
  [(UIView *)self center];
  [(UIView *)self setCenter:v12, v5 + v13];
  CGAffineTransformMakeScale(&v17, v9, v9);
  v16 = v17;
  [(UIView *)self setTransform:&v16];
  [(UIView *)self setAlpha:0.0];
  v14[4] = self;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47__UIKeyboardDictationMenu_performShowAnimation__block_invoke;
  v15[3] = &unk_1E70F32F0;
  v15[4] = self;
  *&v15[5] = v5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__UIKeyboardDictationMenu_performShowAnimation__block_invoke_2;
  v14[3] = &unk_1E70F5AC0;
  [UIView animateWithDuration:50397184 delay:v15 options:v14 animations:0.16 completion:0.0];
}

uint64_t __47__UIKeyboardDictationMenu_performShowAnimation__block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v8, 1.02, 1.02);
  v2 = *(a1 + 32);
  v7 = v8;
  [v2 setTransform:&v7];
  [*(a1 + 32) setAlpha:1.0];
  [*(a1 + 32) center];
  v4 = v3;
  [*(a1 + 32) center];
  return [*(a1 + 32) setCenter:{v4, v5 - *(a1 + 40)}];
}

uint64_t __47__UIKeyboardDictationMenu_performShowAnimation__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__UIKeyboardDictationMenu_performShowAnimation__block_invoke_3;
  v3[3] = &unk_1E70F3590;
  v4 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __47__UIKeyboardDictationMenu_performShowAnimation__block_invoke_4;
  v2[3] = &unk_1E70F5AC0;
  v2[4] = v4;
  return [UIView animateWithDuration:50462720 delay:v3 options:v2 animations:0.1 completion:0.0];
}

uint64_t __47__UIKeyboardDictationMenu_performShowAnimation__block_invoke_3(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 0.99, 0.99);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

uint64_t __47__UIKeyboardDictationMenu_performShowAnimation__block_invoke_4(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __47__UIKeyboardDictationMenu_performShowAnimation__block_invoke_5;
  v2[3] = &unk_1E70F3590;
  v2[4] = *(a1 + 32);
  return [UIView animateWithDuration:50397184 delay:v2 options:0 animations:0.08 completion:0.0];
}

uint64_t __47__UIKeyboardDictationMenu_performShowAnimation__block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

- (void)willShow
{
  v3 = +[UIDictationController sharedInstance];
  [v3 startDictation];

  v4 = +[UIPeripheralHost sharedInstance];
  [v4 disableInterfaceAutorotation:1];

  [(UIKeyboardMenuView *)self setKeyboardDimmed:1];
}

- (void)cleanupForFadeOrHide
{
  if ([(UIKeyboardMenuView *)self isVisible])
  {
    if (!+[UIKeyboard isModelessActive])
    {
      v3 = +[UIDictationController sharedInstance];
      [v3 stopDictation];
    }

    v4 = +[UIPeripheralHost sharedInstance];
    [v4 disableInterfaceAutorotation:0];

    [(UIKeyboardMenuView *)self setKeyboardDimmed:0];
  }
}

- (void)fade
{
  [(UIKeyboardDictationMenu *)self cleanupForFadeOrHide];
  v3.receiver = self;
  v3.super_class = UIKeyboardDictationMenu;
  [(UIKeyboardMenuView *)&v3 fade];
}

- (void)fadeWithDelay:(double)a3
{
  [(UIKeyboardDictationMenu *)self cleanupForFadeOrHide];
  v5.receiver = self;
  v5.super_class = UIKeyboardDictationMenu;
  [(UIKeyboardMenuView *)&v5 fadeWithDelay:a3];
}

- (void)hide
{
  [(UIKeyboardDictationMenu *)self cleanupForFadeOrHide];
  v3.receiver = self;
  v3.super_class = UIKeyboardDictationMenu;
  [(UIKeyboardMenuView *)&v3 hide];
}

@end