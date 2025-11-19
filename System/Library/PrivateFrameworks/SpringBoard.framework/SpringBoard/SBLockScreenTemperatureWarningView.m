@interface SBLockScreenTemperatureWarningView
- (BOOL)_statusBarOrientationIsPortrait;
- (SBLockScreenTemperatureWarningView)initWithFrame:(CGRect)a3;
- (double)_iconYPosition;
- (double)_subtitleBaseline;
- (double)_titleBaseline;
- (id)_subtitleFont;
- (id)_titleFont;
- (void)layoutSubviews;
@end

@implementation SBLockScreenTemperatureWarningView

- (SBLockScreenTemperatureWarningView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = SBLockScreenTemperatureWarningView;
  v3 = [(SBUILockOverlayView *)&v11 initWithFrame:3 style:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SBUILockOverlayView *)v3 titleLabel];
    [(SBLockScreenTemperatureWarningView *)v4 addSubview:v5];

    v6 = [(SBUILockOverlayView *)v4 subtitleLabel];
    [(SBLockScreenTemperatureWarningView *)v4 addSubview:v6];

    v7 = [SBDashBoardThermalStatusProvider thermometerGlyphForThermalStatus:1];
    v8 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v7];
    warningIconView = v4->_warningIconView;
    v4->_warningIconView = v8;

    [(SBLockScreenTemperatureWarningView *)v4 addSubview:v4->_warningIconView];
  }

  return v4;
}

- (id)_titleFont
{
  v3 = MEMORY[0x277D74300];
  v4 = __sb__runningInSpringBoard();
  v5 = v4;
  if (v4)
  {
    v6 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    v2 = [MEMORY[0x277D75418] currentDevice];
    v6 = [v2 userInterfaceIdiom] == 1;
  }

  v7 = 36.0;
  if (v6)
  {
    v7 = 48.0;
  }

  v8 = [v3 _thinSystemFontOfSize:v7];
  if ((v5 & 1) == 0)
  {
  }

  return v8;
}

- (id)_subtitleFont
{
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
LABEL_3:
      v2 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
      goto LABEL_6;
    }
  }

  else
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 != 1)
    {
      goto LABEL_3;
    }
  }

  v2 = [MEMORY[0x277D74300] systemFontOfSize:24.0];
LABEL_6:

  return v2;
}

- (double)_titleBaseline
{
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      return 114.0;
    }
  }

  else
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 != 1)
    {
      return 114.0;
    }
  }

  v6 = [(SBLockScreenTemperatureWarningView *)self _statusBarOrientationIsPortrait];
  result = 241.0;
  if (v6)
  {
    return 256.0;
  }

  return result;
}

- (double)_subtitleBaseline
{
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      return 320.0;
    }
  }

  else
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 != 1)
    {
      return 320.0;
    }
  }

  v6 = [(SBLockScreenTemperatureWarningView *)self _statusBarOrientationIsPortrait];
  result = 446.0;
  if (v6)
  {
    return 560.0;
  }

  return result;
}

- (double)_iconYPosition
{
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      return 220.5;
    }
  }

  else
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 != 1)
    {
      return 220.5;
    }
  }

  v6 = [(SBLockScreenTemperatureWarningView *)self _statusBarOrientationIsPortrait];
  result = 296.0;
  if (v6)
  {
    return 410.0;
  }

  return result;
}

- (void)layoutSubviews
{
  [(SBLockScreenTemperatureWarningView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v37 = [(SBUILockOverlayView *)self titleLabel];
  v11 = [(SBLockScreenTemperatureWarningView *)self _titleFont];
  [v37 sizeToFit];
  [v37 frame];
  UIRectCenteredXInRectScale();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(SBLockScreenTemperatureWarningView *)self _titleBaseline];
  [v37 sb_yPositionForLabelWithContainerBounds:v11 baselineOffset:v4 font:{v6, v8, v10, v18}];
  [v37 setFrame:{v13, v19, v15, v17}];
  v20 = [(SBUILockOverlayView *)self subtitleLabel];
  v21 = [(SBLockScreenTemperatureWarningView *)self _subtitleFont];
  [v20 sizeToFit];
  [v20 frame];
  UIRectCenteredXInRectScale();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [(SBLockScreenTemperatureWarningView *)self _subtitleBaseline];
  [v20 sb_yPositionForLabelWithContainerBounds:v21 baselineOffset:v4 font:{v6, v8, v10, v28}];
  [v20 setFrame:{v23, v29, v25, v27}];
  [(UIImageView *)self->_warningIconView frame];
  v31 = v30;
  v33 = v32;
  v34 = (v8 - v30) * 0.5;
  v35 = floorf(v34);
  [(SBLockScreenTemperatureWarningView *)self _iconYPosition];
  [(UIImageView *)self->_warningIconView setFrame:v35, v36, v31, v33];
}

- (BOOL)_statusBarOrientationIsPortrait
{
  v2 = [(UIView *)self _sbWindowScene];
  v3 = [v2 statusBarManager];

  LOBYTE(v2) = ([v3 statusBarOrientation] - 1) < 2;
  return v2;
}

@end