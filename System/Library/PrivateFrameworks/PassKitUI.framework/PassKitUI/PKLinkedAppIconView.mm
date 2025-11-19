@interface PKLinkedAppIconView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)intrinsicContentSize;
- (PKLinkedAppIconView)initWithLinkedApplication:(id)a3;
- (void)_updateWithIconImage:(id)a3 animated:(BOOL)a4;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)linkedApplicationDidChangeState:(id)a3;
- (void)tapped:(id)a3;
@end

@implementation PKLinkedAppIconView

- (CGSize)intrinsicContentSize
{
  if (self->_iconImage)
  {
    [(UIImage *)self->_iconImage size];
  }

  else
  {
    [(PKLinkedApplication *)self->_linkedApplication expectedIconSize];
  }

  result.height = v3;
  result.width = v2;
  return result;
}

- (PKLinkedAppIconView)initWithLinkedApplication:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PKLinkedAppIconView;
  v6 = [(PKLinkedAppIconView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_linkedApplication, a3);
    [(PKLinkedApplication *)v7->_linkedApplication addObserver:v7];
    v8 = [[WLEasyToHitCustomButton alloc] initWithMargins:10.0, 10.0, 10.0, 10.0];
    iconButton = v7->_iconButton;
    v7->_iconButton = v8;

    [(WLEasyToHitCustomButton *)v7->_iconButton addTarget:v7 action:sel_tapped_ forControlEvents:64];
    [(WLEasyToHitCustomButton *)v7->_iconButton setAlpha:0.0];
    [(WLEasyToHitCustomButton *)v7->_iconButton setMargins:10.0, 10.0, 10.0, 10.0];
    [(WLEasyToHitCustomButton *)v7->_iconButton setAccessibilityIdentifier:*MEMORY[0x1E69B9AE0]];
    v10 = [(PKLinkedApplication *)v7->_linkedApplication iconImage];
    [(PKLinkedAppIconView *)v7 _updateWithIconImage:v10 animated:0];

    [(PKLinkedAppIconView *)v7 setAccessibilityIgnoresInvertColors:1];
    [(PKLinkedAppIconView *)v7 setAccessibilityIdentifier:*MEMORY[0x1E69B9900]];
  }

  return v7;
}

- (void)dealloc
{
  [(PKLinkedApplication *)self->_linkedApplication removeObserver:self];
  v3.receiver = self;
  v3.super_class = PKLinkedAppIconView;
  [(PKLinkedAppIconView *)&v3 dealloc];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = PKLinkedAppIconView;
  [(PKLinkedAppIconView *)&v4 didMoveToWindow];
  v3 = [(PKLinkedAppIconView *)self window];

  if (v3)
  {
    [(PKLinkedApplication *)self->_linkedApplication reloadApplicationStateIfNecessary];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  iconButton = self->_iconButton;
  v8 = a4;
  [(PKLinkedAppIconView *)v6 convertPoint:iconButton toView:x, y];
  LOBYTE(v6) = [(WLEasyToHitCustomButton *)iconButton pointInside:v8 withEvent:?];

  return v6;
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = PKLinkedAppIconView;
  [(PKLinkedAppIconView *)&v28 layoutSubviews];
  [(PKLinkedAppIconView *)self bounds];
  [(UIImage *)self->_iconImage size];
  v4 = v3;
  v6 = v5;
  PKSizeAspectFit();
  v9 = 1.0;
  v10 = 1.0;
  if (v4 != 0.0)
  {
    v10 = fmin(v7 / v4, 1.0);
  }

  if (v6 != 0.0)
  {
    v9 = fmin(v8 / v6, 1.0);
  }

  v24 = v8;
  v25 = v7;
  PKSizeAlignedInRect();
  v12 = v11;
  v14 = v13;
  v15 = [(WLEasyToHitCustomButton *)self->_iconButton layer];
  [v15 anchorPoint];
  v17 = v16;
  v19 = v18;
  [v15 bounds];
  if (v21 != v4 || v20 != v6)
  {
    [v15 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v4, v6}];
    [(WLEasyToHitCustomButton *)self->_iconButton setNeedsLayout];
  }

  memset(&v27, 0, sizeof(v27));
  v23 = fmin(v10, v9);
  CATransform3DMakeScale(&v27, v23, v23, 1.0);
  v26 = v27;
  [v15 setTransform:&v26];
  [v15 setPosition:{v12 + v17 * v25, v14 + v19 * v24}];
}

- (void)_updateWithIconImage:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_iconImage != v7)
  {
    objc_storeStrong(&self->_iconImage, a3);
    v8 = [(WLEasyToHitCustomButton *)self->_iconButton superview];
    if (v8)
    {
      v9 = self->_iconImage == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      if (v4)
      {
        v10 = [(WLEasyToHitCustomButton *)self->_iconButton snapshotViewAfterScreenUpdates:0];
        [(WLEasyToHitCustomButton *)self->_iconButton frame];
        [v10 setFrame:?];
        [v8 addSubview:v10];
        v11 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
        [v10 alpha];
        [v11 pkui_updateForAdditiveAnimationFromScalar:? toScalar:?];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __53__PKLinkedAppIconView__updateWithIconImage_animated___block_invoke;
        v21[3] = &unk_1E8011D28;
        v22 = v10;
        v12 = v10;
        [v11 pkui_setCompletionHandler:v21];
        v13 = [v12 layer];
        v14 = [v13 pkui_addAdditiveAnimation:v11];

        [v12 setAlpha:0.0];
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __53__PKLinkedAppIconView__updateWithIconImage_animated___block_invoke_2;
      v20[3] = &unk_1E8010970;
      v20[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v20];
    }

    [WLEasyToHitCustomButton setImage:"setImage:forState:" forState:?];
    if (self->_iconImage)
    {
      [(PKLinkedAppIconView *)self setNeedsLayout];
      if (!v8)
      {
        [(PKLinkedAppIconView *)self layoutIfNeeded];
        [(WLEasyToHitCustomButton *)self->_iconButton alpha];
        v16 = v15;
        [(PKLinkedAppIconView *)self addSubview:self->_iconButton];
        [(WLEasyToHitCustomButton *)self->_iconButton setAlpha:1.0];
        if (v4 && v16 != 1.0)
        {
          v17 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
          [v17 pkui_updateForAdditiveAnimationFromScalar:v16 toScalar:1.0];
          v18 = [(WLEasyToHitCustomButton *)self->_iconButton layer];
          v19 = [v18 pkui_addAdditiveAnimation:v17];
        }
      }
    }
  }
}

void __53__PKLinkedAppIconView__updateWithIconImage_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 408) layer];
  [v2 removeAllAnimations];
  [*(*(a1 + 32) + 408) setAlpha:0.0];
  [v2 clearHasBeenCommitted];
}

- (void)tapped:(id)a3
{
  if (([(PKLinkedApplication *)self->_linkedApplication state]& 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    linkedApplication = self->_linkedApplication;
    v5 = [(UIView *)self pkui_viewControllerFromResponderChain];
    [(PKLinkedApplication *)linkedApplication openApplication:v5];
  }
}

- (void)linkedApplicationDidChangeState:(id)a3
{
  v6 = a3;
  if (![v6 state])
  {
    v4 = [(PKLinkedAppIconView *)self window];

    if (v4)
    {
      [v6 reloadApplicationStateIfNecessary];
    }
  }

  v5 = [v6 iconImage];
  [(PKLinkedAppIconView *)self _updateWithIconImage:v5 animated:1];
}

@end