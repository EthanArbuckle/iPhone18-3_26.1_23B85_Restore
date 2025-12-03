@interface PKLinkedAppIconView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)intrinsicContentSize;
- (PKLinkedAppIconView)initWithLinkedApplication:(id)application;
- (void)_updateWithIconImage:(id)image animated:(BOOL)animated;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)linkedApplicationDidChangeState:(id)state;
- (void)tapped:(id)tapped;
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

- (PKLinkedAppIconView)initWithLinkedApplication:(id)application
{
  applicationCopy = application;
  v12.receiver = self;
  v12.super_class = PKLinkedAppIconView;
  v6 = [(PKLinkedAppIconView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_linkedApplication, application);
    [(PKLinkedApplication *)v7->_linkedApplication addObserver:v7];
    v8 = [[WLEasyToHitCustomButton alloc] initWithMargins:10.0, 10.0, 10.0, 10.0];
    iconButton = v7->_iconButton;
    v7->_iconButton = v8;

    [(WLEasyToHitCustomButton *)v7->_iconButton addTarget:v7 action:sel_tapped_ forControlEvents:64];
    [(WLEasyToHitCustomButton *)v7->_iconButton setAlpha:0.0];
    [(WLEasyToHitCustomButton *)v7->_iconButton setMargins:10.0, 10.0, 10.0, 10.0];
    [(WLEasyToHitCustomButton *)v7->_iconButton setAccessibilityIdentifier:*MEMORY[0x1E69B9AE0]];
    iconImage = [(PKLinkedApplication *)v7->_linkedApplication iconImage];
    [(PKLinkedAppIconView *)v7 _updateWithIconImage:iconImage animated:0];

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
  window = [(PKLinkedAppIconView *)self window];

  if (window)
  {
    [(PKLinkedApplication *)self->_linkedApplication reloadApplicationStateIfNecessary];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  iconButton = self->_iconButton;
  eventCopy = event;
  [(PKLinkedAppIconView *)selfCopy convertPoint:iconButton toView:x, y];
  LOBYTE(selfCopy) = [(WLEasyToHitCustomButton *)iconButton pointInside:eventCopy withEvent:?];

  return selfCopy;
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
  layer = [(WLEasyToHitCustomButton *)self->_iconButton layer];
  [layer anchorPoint];
  v17 = v16;
  v19 = v18;
  [layer bounds];
  if (v21 != v4 || v20 != v6)
  {
    [layer setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v4, v6}];
    [(WLEasyToHitCustomButton *)self->_iconButton setNeedsLayout];
  }

  memset(&v27, 0, sizeof(v27));
  v23 = fmin(v10, v9);
  CATransform3DMakeScale(&v27, v23, v23, 1.0);
  v26 = v27;
  [layer setTransform:&v26];
  [layer setPosition:{v12 + v17 * v25, v14 + v19 * v24}];
}

- (void)_updateWithIconImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  imageCopy = image;
  if (self->_iconImage != imageCopy)
  {
    objc_storeStrong(&self->_iconImage, image);
    superview = [(WLEasyToHitCustomButton *)self->_iconButton superview];
    if (superview)
    {
      v9 = self->_iconImage == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      if (animatedCopy)
      {
        v10 = [(WLEasyToHitCustomButton *)self->_iconButton snapshotViewAfterScreenUpdates:0];
        [(WLEasyToHitCustomButton *)self->_iconButton frame];
        [v10 setFrame:?];
        [superview addSubview:v10];
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
        layer = [v12 layer];
        v14 = [layer pkui_addAdditiveAnimation:v11];

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
      if (!superview)
      {
        [(PKLinkedAppIconView *)self layoutIfNeeded];
        [(WLEasyToHitCustomButton *)self->_iconButton alpha];
        v16 = v15;
        [(PKLinkedAppIconView *)self addSubview:self->_iconButton];
        [(WLEasyToHitCustomButton *)self->_iconButton setAlpha:1.0];
        if (animatedCopy && v16 != 1.0)
        {
          v17 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
          [v17 pkui_updateForAdditiveAnimationFromScalar:v16 toScalar:1.0];
          layer2 = [(WLEasyToHitCustomButton *)self->_iconButton layer];
          v19 = [layer2 pkui_addAdditiveAnimation:v17];
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

- (void)tapped:(id)tapped
{
  if (([(PKLinkedApplication *)self->_linkedApplication state]& 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    linkedApplication = self->_linkedApplication;
    pkui_viewControllerFromResponderChain = [(UIView *)self pkui_viewControllerFromResponderChain];
    [(PKLinkedApplication *)linkedApplication openApplication:pkui_viewControllerFromResponderChain];
  }
}

- (void)linkedApplicationDidChangeState:(id)state
{
  stateCopy = state;
  if (![stateCopy state])
  {
    window = [(PKLinkedAppIconView *)self window];

    if (window)
    {
      [stateCopy reloadApplicationStateIfNecessary];
    }
  }

  iconImage = [stateCopy iconImage];
  [(PKLinkedAppIconView *)self _updateWithIconImage:iconImage animated:1];
}

@end