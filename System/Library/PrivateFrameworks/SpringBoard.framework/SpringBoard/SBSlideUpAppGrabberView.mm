@interface SBSlideUpAppGrabberView
- (BOOL)_shouldUseVibrancy;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SBSlideUpAppGrabberView)initWithAdditionalTopPadding:(BOOL)padding invertVerticalInsets:(BOOL)insets;
- (UIEdgeInsets)hitTestEdgeInsets;
- (id)_lazyLegibilityView;
- (void)layoutSubviews;
- (void)setAppStyleGrabberImage:(id)image;
- (void)setBackgroundColor:(id)color;
- (void)setBackgroundView:(id)view;
- (void)setGrabberImageFromAppWithBundleIdentifier:(id)identifier;
- (void)setLegibilitySettings:(id)settings;
- (void)setStrength:(double)strength;
- (void)setVibrancyAllowed:(BOOL)allowed;
- (void)setVibrantSettings:(id)settings;
@end

@implementation SBSlideUpAppGrabberView

- (SBSlideUpAppGrabberView)initWithAdditionalTopPadding:(BOOL)padding invertVerticalInsets:(BOOL)insets
{
  paddingCopy = padding;
  v26.receiver = self;
  v26.super_class = SBSlideUpAppGrabberView;
  v6 = [(SBSlideUpAppGrabberView *)&v26 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v6)
  {
    [MEMORY[0x277D65EC0] slideUpGrabberInset];
    v8 = v7;
    v9 = __sb__runningInSpringBoard();
    if (paddingCopy)
    {
      if (v9)
      {
        if (SBFEffectiveDeviceClass() == 2)
        {
          v10 = -80.0;
        }

        else
        {
          v10 = -40.0;
        }

        if (insets)
        {
          goto LABEL_25;
        }

        goto LABEL_14;
      }

      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice userInterfaceIdiom] == 1)
      {
        v10 = -80.0;
      }

      else
      {
        v10 = -40.0;
      }
    }

    else
    {
      if (v9)
      {
        if (SBFEffectiveDeviceClass() == 2)
        {
          v10 = -50.0;
        }

        else
        {
          v10 = -20.0;
        }

        if (insets)
        {
LABEL_25:
          v13 = -v8;
          if (__sb__runningInSpringBoard())
          {
            if (SBFEffectiveDeviceClass() == 2)
            {
              v14 = -100.0;
            }

            else
            {
              v14 = -40.0;
            }
          }

          else
          {
            currentDevice2 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice2 userInterfaceIdiom] == 1)
            {
              v14 = -100.0;
            }

            else
            {
              v14 = -40.0;
            }
          }

          v11 = v13;
LABEL_39:
          v6->_hitTestEdgeInsets.top = v10;
          v6->_hitTestEdgeInsets.left = v11;
          v6->_hitTestEdgeInsets.bottom = v13;
          v6->_hitTestEdgeInsets.right = v14;
          v6->_vibrancyAllowed = 1;
          v17 = objc_alloc(MEMORY[0x277D75D18]);
          [(SBSlideUpAppGrabberView *)v6 bounds];
          v18 = [v17 initWithFrame:?];
          tintView = v6->_tintView;
          v6->_tintView = v18;

          [(SBSlideUpAppGrabberView *)v6 addSubview:v6->_tintView];
          v20 = [[SBSaturatedIconView alloc] initWithImage:0];
          saturatedIconView = v6->_saturatedIconView;
          v6->_saturatedIconView = v20;

          [(SBSlideUpAppGrabberView *)v6 addSubview:v6->_saturatedIconView];
          [(SBSlideUpAppGrabberView *)v6 setExclusiveTouch:1];
          clearColor = [MEMORY[0x277D75348] clearColor];
          [(SBSlideUpAppGrabberView *)v6 setBackgroundColor:clearColor];

          layer = [(SBSlideUpAppGrabberView *)v6 layer];
          [layer setAllowsGroupBlending:0];

          layer2 = [(SBSlideUpAppGrabberView *)v6 layer];
          [layer2 setMasksToBounds:1];

          return v6;
        }

LABEL_14:
        if (__sb__runningInSpringBoard())
        {
          if (SBFEffectiveDeviceClass() == 2)
          {
            v11 = -100.0;
          }

          else
          {
            v11 = -40.0;
          }
        }

        else
        {
          currentDevice3 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice3 userInterfaceIdiom] == 1)
          {
            v11 = -100.0;
          }

          else
          {
            v11 = -40.0;
          }
        }

        v13 = -v8;
        v14 = v13;
        goto LABEL_39;
      }

      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice userInterfaceIdiom] == 1)
      {
        v10 = -50.0;
      }

      else
      {
        v10 = -20.0;
      }
    }

    if (insets)
    {
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  return v6;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  p_hitTestEdgeInsets = &self->_hitTestEdgeInsets;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_hitTestEdgeInsets.top, *MEMORY[0x277D768C8]), vceqq_f64(*&self->_hitTestEdgeInsets.bottom, *(MEMORY[0x277D768C8] + 16))))))
  {
    v19.receiver = self;
    v19.super_class = SBSlideUpAppGrabberView;
    return [(SBSlideUpAppGrabberView *)&v19 pointInside:event withEvent:inside.x, inside.y];
  }

  else
  {
    [(SBSlideUpAppGrabberView *)self bounds];
    left = p_hitTestEdgeInsets->left;
    v9 = v8 + left;
    v11 = p_hitTestEdgeInsets->top + v10;
    v13 = v12 - (left + p_hitTestEdgeInsets->right);
    v15 = v14 - (p_hitTestEdgeInsets->top + p_hitTestEdgeInsets->bottom);
    v16 = x;
    v17 = y;

    return CGRectContainsPoint(*&v9, *&v16);
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if (self->_grabberImage)
  {
    [(UIImage *)self->_grabberImage size:fits.width];
  }

  else
  {
    [(SBSaturatedIconView *)self->_saturatedIconView sizeThatFits:fits.width, fits.height];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = SBSlideUpAppGrabberView;
  [(SBSlideUpAppGrabberView *)&v8 layoutSubviews];
  saturatedIconView = self->_saturatedIconView;
  [(SBSlideUpAppGrabberView *)self bounds];
  [(SBSaturatedIconView *)saturatedIconView setFrame:?];
  tintView = self->_tintView;
  [(SBSlideUpAppGrabberView *)self bounds];
  [(UIView *)tintView setFrame:?];
  backgroundView = self->_backgroundView;
  [(SBSlideUpAppGrabberView *)self bounds];
  [(UIView *)backgroundView setFrame:?];
  layer = [(SBSlideUpAppGrabberView *)self layer];
  mask = [layer mask];
  [(SBSlideUpAppGrabberView *)self bounds];
  [mask setFrame:?];
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_saturatedIconView)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];

    colorCopy = clearColor;
  }

  v6.receiver = self;
  v6.super_class = SBSlideUpAppGrabberView;
  [(SBSlideUpAppGrabberView *)&v6 setBackgroundColor:colorCopy];
}

- (void)setGrabberImageFromAppWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _sbWindowScene = [(UIView *)self _sbWindowScene];
  iconController = [_sbWindowScene iconController];

  tableUIIconImageCache = [iconController tableUIIconImageCache];
  if ([identifierCopy isEqualToString:@"com.apple.Siri"])
  {
    traitCollection = [MEMORY[0x277D755B8] imageNamed:@"siri-suggestion"];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [traitCollection _flatImageWithColor:whiteColor];
  }

  else
  {
    iconModel = [iconController iconModel];
    whiteColor = [iconModel applicationIconForBundleIdentifier:identifierCopy];

    traitCollection = [(SBSlideUpAppGrabberView *)self traitCollection];
    [tableUIIconImageCache imageForIcon:whiteColor compatibleWithTraitCollection:traitCollection options:2];
  }
  v10 = ;

  [(SBSlideUpAppGrabberView *)self setAppStyleGrabberImage:v10];
  [tableUIIconImageCache iconImageInfo];
  [(SBSlideUpAppGrabberView *)self _setContinuousCornerRadius:v11];
}

- (void)setAppStyleGrabberImage:(id)image
{
  objc_storeStrong(&self->_grabberImage, image);
  imageCopy = image;
  [(SBSaturatedIconView *)self->_saturatedIconView setImage:imageCopy];

  [(SBSlideUpAppGrabberView *)self sizeToFit];

  [(SBSlideUpAppGrabberView *)self setNeedsLayout];
}

- (BOOL)_shouldUseVibrancy
{
  if (SBGraphicsQuality() != 100)
  {
    return 0;
  }

  return [(SBSlideUpAppGrabberView *)self isVibrancyAllowed];
}

- (void)setVibrancyAllowed:(BOOL)allowed
{
  if (self->_vibrancyAllowed != allowed)
  {
    self->_vibrancyAllowed = allowed;
    if (allowed)
    {
      legibilityView = self->_legibilityView;
      if (legibilityView)
      {
        [(SBUILegibilityView *)legibilityView removeFromSuperview];
        v5 = self->_legibilityView;
        self->_legibilityView = 0;
      }
    }
  }
}

- (void)setVibrantSettings:(id)settings
{
  settingsCopy = settings;
  if ([(SBSlideUpAppGrabberView *)self _shouldUseVibrancy]&& ([(_SBFVibrantSettings *)self->_vibrantSettings isEqual:settingsCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_vibrantSettings, settings);
    tintColor = [(_SBFVibrantSettings *)self->_vibrantSettings tintColor];
    if ([(_SBFVibrantSettings *)self->_vibrantSettings style]== 2)
    {
      v13 = 0.0;
      v14 = 0.0;
      v11 = 0.0;
      v12 = 0.0;
      [tintColor getRed:&v14 green:&v13 blue:&v12 alpha:&v11];
      v7 = MEMORY[0x277D75348];
      v8 = (v14 + v13 + v12) * 1.20000005 / 3.0;
      v9 = v11;
    }

    else
    {
      v7 = MEMORY[0x277D75348];
      v9 = 0.100000001;
      v8 = 0.0;
    }

    v10 = [v7 colorWithWhite:v8 alpha:v9];

    [(UIView *)self->_tintView setBackgroundColor:v10];
  }
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  _shouldUseVibrancy = [(SBSlideUpAppGrabberView *)self _shouldUseVibrancy];
  v6 = viewCopy;
  if (_shouldUseVibrancy)
  {
    backgroundView = self->_backgroundView;
    if (backgroundView != viewCopy)
    {
      [(UIView *)backgroundView removeFromSuperview];
      objc_storeStrong(&self->_backgroundView, view);
      v8 = self->_backgroundView;
      [(SBSlideUpAppGrabberView *)self bounds];
      [(UIView *)v8 setFrame:?];
      [(SBSlideUpAppGrabberView *)self addSubview:self->_backgroundView];
      [(SBSlideUpAppGrabberView *)self sendSubviewToBack:self->_backgroundView];
      v6 = viewCopy;
    }
  }
}

- (id)_lazyLegibilityView
{
  if (![(SBSlideUpAppGrabberView *)self _shouldUseVibrancy]&& !self->_legibilityView)
  {
    v3 = objc_alloc(MEMORY[0x277D67D00]);
    [(UIImage *)self->_grabberImage size];
    v6 = [v3 initWithFrame:{0.0, 0.0, v4, v5}];
    legibilityView = self->_legibilityView;
    self->_legibilityView = v6;

    v8 = self->_legibilityView;
    v9 = [MEMORY[0x277D760A8] sharedInstanceForStyle:1];
    [(SBUILegibilityView *)v8 updateForChangedSettings:v9 options:3 image:self->_grabberImage strength:*MEMORY[0x277D774F0]];

    [(SBUILegibilityView *)self->_legibilityView bounds];
    [(SBSlideUpAppGrabberView *)self setBounds:?];
    [(SBSlideUpAppGrabberView *)self addSubview:self->_legibilityView];
    [(SBUILegibilityView *)self->_legibilityView setAutoresizingMask:18];
    [(SBSlideUpAppGrabberView *)self setAutoresizesSubviews:1];
    if (self->_saturatedIconView)
    {
      [(SBSlideUpAppGrabberView *)self sendSubviewToBack:self->_legibilityView];
    }
  }

  v10 = self->_legibilityView;

  return v10;
}

- (void)setStrength:(double)strength
{
  self->_strength = strength;
  _lazyLegibilityView = [(SBSlideUpAppGrabberView *)self _lazyLegibilityView];
  [_lazyLegibilityView setStrength:strength];
}

- (void)setLegibilitySettings:(id)settings
{
  objc_storeStrong(&self->_legibilitySettings, settings);
  settingsCopy = settings;
  _lazyLegibilityView = [(SBSlideUpAppGrabberView *)self _lazyLegibilityView];
  [_lazyLegibilityView setLegibilitySettings:settingsCopy];
}

- (UIEdgeInsets)hitTestEdgeInsets
{
  top = self->_hitTestEdgeInsets.top;
  left = self->_hitTestEdgeInsets.left;
  bottom = self->_hitTestEdgeInsets.bottom;
  right = self->_hitTestEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end