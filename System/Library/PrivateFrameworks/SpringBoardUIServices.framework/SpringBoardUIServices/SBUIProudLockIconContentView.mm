@interface SBUIProudLockIconContentView
- (BOOL)_requiresSecureIndicatorForState:(int64_t)state;
- (BOOL)setState:(int64_t)state animated:(BOOL)animated transitionSpeed:(double)speed completion:(id)completion;
- (SBUIProudLockIconContentView)init;
- (id)_fileNameForCurrentDevice;
- (id)_packageViewStateFromIconViewState:(int64_t)state;
- (void)_updateContentViews;
- (void)layoutSubviews;
- (void)setIsForCapture:(BOOL)capture;
- (void)setIsSecurelyRenderingInJindo:(BOOL)jindo;
@end

@implementation SBUIProudLockIconContentView

- (void)_updateContentViews
{
  if (!self->_lockView)
  {
    v3 = objc_alloc(MEMORY[0x1E698E7D8]);
    _fileNameForCurrentDevice = [(SBUIProudLockIconContentView *)self _fileNameForCurrentDevice];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v3 initWithPackageName:_fileNameForCurrentDevice inBundle:v5];
    lockView = self->_lockView;
    self->_lockView = v6;

    [(BSUICAPackageView *)self->_lockView sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    self->_originalSize.width = v8;
    self->_originalSize.height = v9;
    v10 = objc_alloc(MEMORY[0x1E69DD250]);
    [(BSUICAPackageView *)self->_lockView frame];
    v11 = [v10 initWithFrame:?];
    positionView = self->_positionView;
    self->_positionView = v11;

    [(SBUIProudLockIconContentView *)self layoutIfNeeded];
  }

  if (self->_isForCapture)
  {
    v13 = self->_lockView;
LABEL_9:
    [(UIView *)self->_positionView addSubview:v13];
    v15 = self->_positionView;

    [(SBUIProudLockIconContentView *)self addSubview:v15];
    return;
  }

  v13 = self->_lockView;
  if (!self->_isSecurelyRenderingInJindo)
  {
    goto LABEL_9;
  }

  [(BSUICAPackageView *)self->_lockView removeFromSuperview];
  v14 = self->_positionView;

  [(UIView *)v14 removeFromSuperview];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = SBUIProudLockIconContentView;
  [(SBUIProudLockIconContentView *)&v8 layoutSubviews];
  [(SBUIProudLockIconContentView *)self bounds];
  if (v3 / self->_originalSize.width >= v4 / self->_originalSize.height)
  {
    v5 = v4 / self->_originalSize.height;
  }

  else
  {
    v5 = v3 / self->_originalSize.width;
  }

  [(UIView *)self->_positionView setCenter:v3 * 0.5, v4 * 0.5];
  positionView = self->_positionView;
  CATransform3DMakeScale(&v7, v5, v5, 1.0);
  [(UIView *)positionView setTransform3D:&v7];
}

- (SBUIProudLockIconContentView)init
{
  v5.receiver = self;
  v5.super_class = SBUIProudLockIconContentView;
  v2 = [(SBUIProudLockIconContentView *)&v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    v2->_isForCapture = 0;
    [(SBUIProudLockIconContentView *)v2 _updateContentViews];
  }

  return v3;
}

- (void)setIsForCapture:(BOOL)capture
{
  if (self->_isForCapture != capture)
  {
    self->_isForCapture = capture;
    [(SBUIProudLockIconContentView *)self _updateContentViews];
  }
}

- (void)setIsSecurelyRenderingInJindo:(BOOL)jindo
{
  if (self->_isSecurelyRenderingInJindo != jindo)
  {
    self->_isSecurelyRenderingInJindo = jindo;
    [(SBUIProudLockIconContentView *)self _updateContentViews];
  }
}

- (BOOL)setState:(int64_t)state animated:(BOOL)animated transitionSpeed:(double)speed completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  [(SBUIProudLockIconContentView *)self _updateContentViews];
  lockView = self->_lockView;
  v12 = [(SBUIProudLockIconContentView *)self _packageViewStateFromIconViewState:state];
  LOBYTE(animatedCopy) = [(BSUICAPackageView *)lockView setState:v12 animated:animatedCopy transitionSpeed:completionCopy completion:speed];

  return animatedCopy;
}

- (id)_fileNameForCurrentDevice
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v3 = BSFloatEqualToFloat();

  v4 = @"@3x";
  if (v3)
  {
    v4 = @"@2x";
  }

  v5 = v4;
  v6 = +[SBUIBiometricResource sharedInstance];
  hasPoseidonSupport = [v6 hasPoseidonSupport];

  if ((MGGetBoolAnswer() & 1) != 0 || (v8 = &stru_1F1D7ED48, hasPoseidonSupport))
  {
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
        v8 = @"-120fps";
      }

      else
      {
        v8 = &stru_1F1D7ED48;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice userInterfaceIdiom] == 1)
      {
        v8 = @"-120fps";
      }

      else
      {
        v8 = &stru_1F1D7ED48;
      }
    }
  }

  v10 = v8;
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
LABEL_15:
      v11 = @"~ipad";
      goto LABEL_24;
    }
  }

  else
  {
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      goto LABEL_15;
    }
  }

  if (SBSIsSystemApertureAvailable())
  {
    v11 = @"-d73";
  }

  else
  {
    v11 = &stru_1F1D7ED48;
  }

  if (![(__CFString *)v11 length])
  {
    [MEMORY[0x1E69D3FE8] proudLockAssetSize];
    if (BSFloatEqualToFloat())
    {
      v11 = @"-896h";
    }

    else
    {
      v11 = @"-812h";
    }
  }

LABEL_24:
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"lock%@%@%@", v5, v10, v11];

  return v14;
}

- (BOOL)_requiresSecureIndicatorForState:(int64_t)state
{
  isForCapture = self->_isForCapture;
  if (isForCapture)
  {
    goto LABEL_2;
  }

  if (state > 7)
  {
    return isForCapture & 1;
  }

  if (((1 << state) & 0x33) != 0)
  {
    if (SBUIAllowsIndicatorSecureRendering())
    {
      isForCapture = SBSIsSystemApertureAvailable() ^ 1;
      return isForCapture & 1;
    }

LABEL_2:
    isForCapture = 0;
    return isForCapture & 1;
  }

  return SBUIAllowsIndicatorSecureRendering();
}

- (id)_packageViewStateFromIconViewState:(int64_t)state
{
  if ((state - 1) > 6)
  {
    return @"Sleep";
  }

  else
  {
    return off_1E789DAE0[state - 1];
  }
}

@end