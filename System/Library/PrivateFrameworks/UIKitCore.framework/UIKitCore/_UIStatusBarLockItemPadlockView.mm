@interface _UIStatusBarLockItemPadlockView
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIStatusBarLockItemView)owner;
- (_UIStatusBarLockItemPadlockView)initWithFrame:(CGRect)frame owner:(id)owner;
- (void)animateUnlockCompletionBlock:(id)block;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)jiggleCompletionBlock:(id)block;
- (void)reset;
@end

@implementation _UIStatusBarLockItemPadlockView

- (_UIStatusBarLockItemPadlockView)initWithFrame:(CGRect)frame owner:(id)owner
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ownerCopy = owner;
  if (os_variant_has_internal_diagnostics())
  {
    if (!ownerCopy)
    {
      v23 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v23, OS_LOG_TYPE_FAULT, "owner must not be nil.", buf, 2u);
      }
    }
  }

  else if (!ownerCopy)
  {
    v24 = *(__UILogGetCategoryCachedImpl("Assert", &initWithFrame_owner____s_category) + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "owner must not be nil.", buf, 2u);
    }
  }

  v25.receiver = self;
  v25.super_class = _UIStatusBarLockItemPadlockView;
  height = [(UIView *)&v25 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    objc_storeWeak(&height->_owner, ownerCopy);
    v12 = [ownerCopy imageWithShadowNamed:@"LockShackle"];
    image = [v12 image];

    if ([ownerCopy _shouldReverseLayoutDirection])
    {
      imageWithHorizontallyFlippedOrientation = [image imageWithHorizontallyFlippedOrientation];

      image = imageWithHorizontallyFlippedOrientation;
    }

    v15 = [[UIImageView alloc] initWithImage:image];
    shackleView = v11->_shackleView;
    v11->_shackleView = v15;

    [(UIImageView *)v11->_shackleView setFrame:1.0, 2.0, 6.0, 7.0];
    [(UIView *)v11 addSubview:v11->_shackleView];
    v17 = [ownerCopy imageWithShadowNamed:@"LockBody"];
    image2 = [v17 image];

    if ([ownerCopy _shouldReverseLayoutDirection])
    {
      imageWithHorizontallyFlippedOrientation2 = [image2 imageWithHorizontallyFlippedOrientation];

      image2 = imageWithHorizontallyFlippedOrientation2;
    }

    v20 = [[UIImageView alloc] initWithImage:image2];
    bodyView = v11->_bodyView;
    v11->_bodyView = v20;

    [(UIImageView *)v11->_bodyView setFrame:0.0, 6.0, 8.0, 6.0];
    [(UIView *)v11 addSubview:v11->_bodyView];
  }

  return v11;
}

- (void)reset
{
  [(UIView *)self setAlpha:1.0];
  shackleView = self->_shackleView;

  [(UIImageView *)shackleView setFrame:1.0, 2.0, 6.0, 7.0];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 8.0;
  v4 = 12.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)animateUnlockCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (self->_completionBlock)
  {
    if (blockCopy)
    {
      dispatch_async(MEMORY[0x1E69E96A0], blockCopy);
    }
  }

  else
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("StatusBar", &animateUnlockCompletionBlock____s_category);
    if (*CategoryCachedImpl)
    {
      v19 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *v20 = 0;
        _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Unlocking lock icon", v20, 2u);
      }
    }

    v7 = _Block_copy(v5);
    completionBlock = self->_completionBlock;
    self->_completionBlock = v7;

    [(UIImageView *)self->_shackleView setFrame:1.0, 0.0, 6.0, 7.0];
    v9 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
    setDefaultLockAnimationParameters(v9);
    LODWORD(v10) = 1066192077;
    [v9 setSpeed:v10];
    v11 = [MEMORY[0x1E696B098] valueWithCGPoint:{centerOfRect(1.0, 2.0, 6.0, 7.0)}];
    [v9 setFromValue:v11];

    v12 = [MEMORY[0x1E696B098] valueWithCGPoint:{centerOfRect(1.0, 0.0, 6.0, 7.0)}];
    [v9 setToValue:v12];

    v13 = *MEMORY[0x1E69797E0];
    [v9 setFillMode:*MEMORY[0x1E69797E0]];
    [(UIImageView *)self->_shackleView setFrame:1.0, 0.0, 6.0, 7.0];
    layer = [(UIView *)self->_shackleView layer];
    [layer addAnimation:v9 forKey:@"unlock"];

    v15 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"opacity"];
    setDefaultLockAnimationParameters(v15);
    LODWORD(v16) = 1066192077;
    [v15 setSpeed:v16];
    [v15 setFromValue:&unk_1EFE2EB08];
    [v15 setToValue:&unk_1EFE2EB18];
    [v15 setFillMode:v13];
    [v15 setBeginTime:CACurrentMediaTime() + 1.35454545];
    v17 = [_UIViewWeakCAAnimationDelegate weakAnimationDelegate:self];
    [v15 setDelegate:v17];

    layer2 = [(UIView *)self layer];
    [layer2 addAnimation:v15 forKey:@"fadeOut"];

    [MEMORY[0x1E6979518] setDisableActions:1];
    [(UIView *)self setAlpha:0.0];
    [MEMORY[0x1E6979518] setDisableActions:0];
  }
}

- (void)jiggleCompletionBlock:(id)block
{
  v34[2] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  layer = [(UIView *)self layer];
  if (self->_completionBlock)
  {
    if (blockCopy)
    {
      dispatch_async(MEMORY[0x1E69E96A0], blockCopy);
    }
  }

  else
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("StatusBar", &jiggleCompletionBlock____s_category);
    if (*CategoryCachedImpl)
    {
      v32 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v33.m11) = 0;
        _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_ERROR, "Jiggling lock icon", &v33, 2u);
      }
    }

    v7 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
    v8 = MEMORY[0x1E696B098];
    [layer position];
    v9 = [v8 valueWithCGPoint:?];
    [v7 setFromValue:v9];

    v10 = MEMORY[0x1E696B098];
    [layer position];
    v12 = v11 + -20.0;
    [layer position];
    v13 = [v10 valueWithCGPoint:v12];
    [v7 setToValue:v13];

    [v7 setMass:1.2];
    [v7 setStiffness:1200.0];
    [v7 setDamping:12.0];
    [v7 setDuration:0.6679];
    LODWORD(v14) = 1028404955;
    LODWORD(v15) = 990250344;
    LODWORD(v16) = 1059713387;
    LODWORD(v17) = 1.0;
    v18 = [MEMORY[0x1E69793D0] functionWithControlPoints:v14 :v15 :v16 :v17];
    [v7 setTimingFunction:v18];
    v19 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
    v20 = *(MEMORY[0x1E69792E8] + 80);
    *&v33.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v33.m33 = v20;
    v21 = *(MEMORY[0x1E69792E8] + 112);
    *&v33.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v33.m43 = v21;
    v22 = *(MEMORY[0x1E69792E8] + 16);
    *&v33.m11 = *MEMORY[0x1E69792E8];
    *&v33.m13 = v22;
    v23 = *(MEMORY[0x1E69792E8] + 48);
    *&v33.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v33.m23 = v23;
    v24 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v33];
    [v19 setFromValue:v24];

    v25 = MEMORY[0x1E696B098];
    CATransform3DMakeTranslation(&v33, 20.0, 0.0, 0.0);
    v26 = [v25 valueWithCATransform3D:&v33];
    [v19 setToValue:v26];

    [v19 setDuration:0.1012];
    v27 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [v19 setTimingFunction:v27];

    [v19 setFillMode:*MEMORY[0x1E69797E8]];
    animation = [MEMORY[0x1E6979308] animation];
    [animation setDuration:0.6679];
    v34[0] = v7;
    v34[1] = v19;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    [animation setAnimations:v29];

    v30 = [_UIViewWeakCAAnimationDelegate weakAnimationDelegate:self];
    [animation setDelegate:v30];

    [(_UIStatusBarLockItemPadlockView *)self setCompletionBlock:blockCopy];
    layer2 = [(UIView *)self layer];
    [layer2 addAnimation:animation forKey:@"jiggle"];
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v7 = _Block_copy(self->_completionBlock);
  completionBlock = self->_completionBlock;
  self->_completionBlock = 0;

  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
    v6 = v7;
  }
}

- (UIStatusBarLockItemView)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

@end