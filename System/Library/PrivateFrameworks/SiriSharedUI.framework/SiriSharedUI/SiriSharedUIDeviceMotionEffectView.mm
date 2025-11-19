@interface SiriSharedUIDeviceMotionEffectView
- (BOOL)isViewHighContrast;
- (SiriSharedUIDeviceMotionEffectView)initWithFrame:(CGRect)a3;
- (id)_currentWindowScene;
- (int64_t)_currentInterfaceOrientation;
- (int64_t)viewAppearanceStyle;
- (void)_cleanUpIfNeeded;
- (void)_configureDeviceMotionIfNeeded;
- (void)_displayLinkFired:(id)a3;
- (void)_motionManagerDidReceiveMotion:(id)a3;
- (void)_updateEffectView;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateMaskingForView:(id)a3;
@end

@implementation SiriSharedUIDeviceMotionEffectView

- (SiriSharedUIDeviceMotionEffectView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SiriSharedUIDeviceMotionEffectView;
  v3 = [(SiriSharedUIDeviceMotionEffectView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D755E8]);
    effectImageView = v3->_effectImageView;
    v3->_effectImageView = v4;

    [(UIImageView *)v3->_effectImageView setContentMode:2];
    [(SiriSharedUIDeviceMotionEffectView *)v3 addSubview:v3->_effectImageView];
    [(SiriSharedUIDeviceMotionEffectView *)v3 _updateEffectView];
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = SiriSharedUIDeviceMotionEffectView;
  v4 = a3;
  [(SiriSharedUIDeviceMotionEffectView *)&v7 traitCollectionDidChange:v4];
  v5 = [(SiriSharedUIDeviceMotionEffectView *)self traitCollection:v7.receiver];
  v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection:v4];

  if (v6)
  {
    [(SiriSharedUIDeviceMotionEffectView *)self _updateEffectView];
  }
}

- (void)updateMaskingForView:(id)a3
{
  v16 = a3;
  if (!v16)
  {
    [(SiriSharedUIDeviceMotionEffectView *)self _cleanUpIfNeeded];
    [(UIImageView *)self->_effectImageView setAlpha:0.0];
    [(SiriSharedUIDeviceMotionEffectView *)self setMaskView:0];
    goto LABEL_8;
  }

  [(UIImageView *)self->_effectImageView setAlpha:1.0];
  v4 = [(SiriSharedUIDeviceMotionEffectView *)self superview];
  [v16 frame];
  [v4 convertRect:self toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(SiriSharedUIDeviceMotionEffectView *)self maskView];
  if (v13 != v16)
  {

LABEL_6:
    [v16 setFrame:{v6, v8, v10, v12}];
    [(SiriSharedUIDeviceMotionEffectView *)self setMaskView:v16];
    self->_forcefullyUpdateImageViewFrame = 1;
    goto LABEL_7;
  }

  v14 = [(SiriSharedUIDeviceMotionEffectView *)self maskView];
  [v14 frame];
  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  v15 = CGRectEqualToRect(v18, v19);

  if (!v15)
  {
    goto LABEL_6;
  }

LABEL_7:
  [(SiriSharedUIDeviceMotionEffectView *)self _configureDeviceMotionIfNeeded];
LABEL_8:
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = SiriSharedUIDeviceMotionEffectView;
  [(SiriSharedUIDeviceMotionEffectView *)&v25 layoutSubviews];
  [(SiriSharedUIDeviceMotionEffectView *)self bounds];
  if (!CGRectEqualToRect(v26, *MEMORY[0x277CBF3A0]))
  {
    forcefullyUpdateImageViewFrame = self->_forcefullyUpdateImageViewFrame;
    if (forcefullyUpdateImageViewFrame)
    {
      self->_forcefullyUpdateImageViewFrame = 0;
    }

    [(SiriSharedUIDeviceMotionEffectView *)self bounds];
    Height = CGRectGetHeight(v27);
    [(SiriSharedUIDeviceMotionEffectView *)self bounds];
    Width = CGRectGetWidth(v28);
    [(SiriSharedUIDeviceMotionEffectView *)self bounds];
    if (Height <= Width)
    {
      v10 = CGRectGetWidth(*&v6);
    }

    else
    {
      v10 = CGRectGetHeight(*&v6);
    }

    v11 = v10 + 200.0;
    [(SiriSharedUIDeviceMotionEffectView *)self bounds];
    v12 = (CGRectGetWidth(v29) - v11) * 0.5;
    [(SiriSharedUIDeviceMotionEffectView *)self bounds];
    v13 = (CGRectGetHeight(v30) - v11) * 0.5;
    [(UIImageView *)self->_effectImageView bounds];
    v14 = CGRectGetWidth(v31);
    v32.origin.x = v12;
    v32.origin.y = v13;
    v32.size.width = v11;
    v32.size.height = v11;
    v15 = CGRectGetWidth(v32);
    [(UIImageView *)self->_effectImageView bounds];
    v16 = CGRectGetHeight(v33);
    v34.origin.x = v12;
    v34.origin.y = v13;
    v34.size.width = v11;
    v34.size.height = v11;
    v17 = CGRectGetHeight(v34);
    if (v14 != v15 || v16 != v17 || forcefullyUpdateImageViewFrame)
    {
      if ([(SiriSharedUIDeviceMotionEffectView *)self _supportsContentViewTransforms])
      {
        memset(&v24[1], 0, sizeof(CGAffineTransform));
        effectImageView = self->_effectImageView;
        if (effectImageView)
        {
          [(UIImageView *)effectImageView transform];
          effectImageView = self->_effectImageView;
        }

        v21 = *(MEMORY[0x277CBF2C0] + 16);
        *&v24[0].a = *MEMORY[0x277CBF2C0];
        *&v24[0].c = v21;
        *&v24[0].tx = *(MEMORY[0x277CBF2C0] + 32);
        [(UIImageView *)effectImageView setTransform:v24];
        [(UIImageView *)self->_effectImageView setFrame:v12, v13, v11, v11];
        v24[0] = v24[1];
        if (!CGAffineTransformIsIdentity(v24))
        {
          v22 = self->_effectImageView;
          v24[0] = v24[1];
          [(UIImageView *)v22 setTransform:v24];
        }
      }

      else
      {
        [(UIImageView *)self->_effectImageView setFrame:v12, v13, v11, v11];
      }
    }

    if ([(SiriSharedUIDeviceMotionEffectView *)self _supportsDeviceMotion])
    {
      v23 = [(SiriSharedUIDeviceMotionEffectView *)self _currentInterfaceOrientation];
      if (v23)
      {
        if (v23 != self->_cachedInterfaceOrientation)
        {
          self->_cachedInterfaceOrientation = v23;
        }
      }
    }
  }
}

- (void)_updateEffectView
{
  v3 = [MEMORY[0x277D75348] clearColor];
  if (+[SiriSharedUIEnhancedMaterialUtilities isEnhancedMaterialEnabled])
  {
    if ([(SiriSharedUIDeviceMotionEffectView *)self viewAppearanceStyle])
    {
      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      [MEMORY[0x277D75348] blackColor];
    }
    v4 = ;
    v11 = 0;
    v5 = v3;
    v6 = 1.0;
  }

  else
  {
    if (![(SiriSharedUIDeviceMotionEffectView *)self isViewHighContrast])
    {
      v7 = [(SiriSharedUIDeviceMotionEffectView *)self viewAppearanceStyle];
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = v8;
      if (v7 == 1)
      {
        v10 = @"deviceMotionEffect_Dark";
      }

      else
      {
        v10 = @"deviceMotionEffect_Light";
      }

      v5 = [v8 pathForResource:v10 ofType:@"png"];

      v11 = [objc_alloc(MEMORY[0x277D755B8]) initWithContentsOfFile:v5];
      v6 = 1.0;
      goto LABEL_13;
    }

    v4 = [MEMORY[0x277D75348] labelColor];
    v11 = 0;
    v5 = v3;
    v6 = 0.0;
  }

  v3 = v4;
LABEL_13:

  [(UIImageView *)self->_effectImageView setImage:v11];
  [(UIImageView *)self->_effectImageView setAlpha:v6];
  [(SiriSharedUIDeviceMotionEffectView *)self setBackgroundColor:v3];
}

- (void)_configureDeviceMotionIfNeeded
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_shouldUpdateOffsetRadians)
  {
    self->_initialOffsetRadians = (arc4random() % 0x168) * 3.14159265 / 180.0;
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      initialOffsetRadians = self->_initialOffsetRadians;
      *buf = 136315394;
      v17 = "[SiriSharedUIDeviceMotionEffectView _configureDeviceMotionIfNeeded]";
      v18 = 2048;
      v19 = initialOffsetRadians;
      _os_log_impl(&dword_21E3EB000, v3, OS_LOG_TYPE_DEFAULT, "%s #compact using initial offset radians: %f", buf, 0x16u);
    }

    self->_shouldUpdateOffsetRadians = 0;
  }

  if ([(SiriSharedUIDeviceMotionEffectView *)self _supportsDeviceMotion])
  {
    v5 = [MEMORY[0x277D759A0] mainScreen];
    v6 = (1.0 / [v5 maximumFramesPerSecond]);
    self->_rotationIncrementalRateRadians = v6 * 0.20943951;
    if (!self->_motionManager)
    {
      v7 = objc_alloc_init(MEMORY[0x277CC1CD8]);
      motionManager = self->_motionManager;
      self->_motionManager = v7;

      [(CMMotionManager *)self->_motionManager setDeviceMotionUpdateInterval:v6];
      [(CMMotionManager *)self->_motionManager startDeviceMotionUpdates];
    }

    if (!self->_displayLink)
    {
      v9 = [MEMORY[0x277D759A0] mainScreen];
      v10 = [v9 displayLinkWithTarget:self selector:sel__displayLinkFired_];
      displayLink = self->_displayLink;
      self->_displayLink = v10;

      v12 = self->_displayLink;
      v13 = [MEMORY[0x277CBEB88] mainRunLoop];
      [(CADisplayLink *)v12 addToRunLoop:v13 forMode:*MEMORY[0x277CBE738]];
    }
  }

  else
  {
    [(SiriSharedUIDeviceMotionEffectView *)self _cleanUpIfNeeded];
    objc_initWeak(buf, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__SiriSharedUIDeviceMotionEffectView__configureDeviceMotionIfNeeded__block_invoke;
    v14[3] = &unk_2783546B0;
    objc_copyWeak(&v15, buf);
    v14[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v14);
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

void __68__SiriSharedUIDeviceMotionEffectView__configureDeviceMotionIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && [WeakRetained _supportsContentViewTransforms])
  {
    v4 = v3[51];
    CGAffineTransformMakeRotation(&v5, *(*(a1 + 32) + 424));
    [v4 setTransform:&v5];
  }
}

- (void)_displayLinkFired:(id)a3
{
  v4 = [(CMMotionManager *)self->_motionManager deviceMotion];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(SiriSharedUIDeviceMotionEffectView *)self _motionManagerDidReceiveMotion:v4];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_cleanUpIfNeeded
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  [(CMMotionManager *)self->_motionManager stopDeviceMotionUpdates];
  motionManager = self->_motionManager;
  self->_motionManager = 0;
}

- (void)_motionManagerDidReceiveMotion:(id)a3
{
  initialOffsetRadians = self->_initialOffsetRadians;
  v5 = self->_cachedInterfaceOrientation - 3;
  [a3 gravity];
  if (v5 < 2)
  {
    v6 = v7;
  }

  memset(&v12, 0, sizeof(v12));
  CGAffineTransformMakeRotation(&v12, initialOffsetRadians + v6 * 5.5);
  self->_initialOffsetRadians = self->_rotationIncrementalRateRadians + self->_initialOffsetRadians;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__SiriSharedUIDeviceMotionEffectView__motionManagerDidReceiveMotion___block_invoke;
  v8[3] = &unk_2783548A8;
  objc_copyWeak(&v9, &location);
  v10 = v12;
  dispatch_async(MEMORY[0x277D85CD0], v8);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __69__SiriSharedUIDeviceMotionEffectView__motionManagerDidReceiveMotion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 51);
    v5 = *(a1 + 56);
    v6[0] = *(a1 + 40);
    v6[1] = v5;
    v6[2] = *(a1 + 72);
    [v4 setTransform:v6];
  }
}

- (id)_currentWindowScene
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 windows];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isKeyWindow])
        {
          v4 = [v7 windowScene];
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (int64_t)_currentInterfaceOrientation
{
  v2 = [(SiriSharedUIDeviceMotionEffectView *)self _currentWindowScene];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 interfaceOrientation];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isViewHighContrast
{
  v2 = [(SiriSharedUIDeviceMotionEffectView *)self traitCollection];
  v3 = [v2 accessibilityContrast] == 1;

  return v3;
}

- (int64_t)viewAppearanceStyle
{
  v2 = [(SiriSharedUIDeviceMotionEffectView *)self traitCollection];
  v3 = [v2 userInterfaceStyle] == 2;

  return v3;
}

@end