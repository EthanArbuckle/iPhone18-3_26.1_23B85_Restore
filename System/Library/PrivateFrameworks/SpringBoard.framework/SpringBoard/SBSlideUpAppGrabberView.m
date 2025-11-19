@interface SBSlideUpAppGrabberView
- (BOOL)_shouldUseVibrancy;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SBSlideUpAppGrabberView)initWithAdditionalTopPadding:(BOOL)a3 invertVerticalInsets:(BOOL)a4;
- (UIEdgeInsets)hitTestEdgeInsets;
- (id)_lazyLegibilityView;
- (void)layoutSubviews;
- (void)setAppStyleGrabberImage:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setBackgroundView:(id)a3;
- (void)setGrabberImageFromAppWithBundleIdentifier:(id)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setStrength:(double)a3;
- (void)setVibrancyAllowed:(BOOL)a3;
- (void)setVibrantSettings:(id)a3;
@end

@implementation SBSlideUpAppGrabberView

- (SBSlideUpAppGrabberView)initWithAdditionalTopPadding:(BOOL)a3 invertVerticalInsets:(BOOL)a4
{
  v5 = a3;
  v26.receiver = self;
  v26.super_class = SBSlideUpAppGrabberView;
  v6 = [(SBSlideUpAppGrabberView *)&v26 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v6)
  {
    [MEMORY[0x277D65EC0] slideUpGrabberInset];
    v8 = v7;
    v9 = __sb__runningInSpringBoard();
    if (v5)
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

        if (a4)
        {
          goto LABEL_25;
        }

        goto LABEL_14;
      }

      v12 = [MEMORY[0x277D75418] currentDevice];
      if ([v12 userInterfaceIdiom] == 1)
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

        if (a4)
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
            v16 = [MEMORY[0x277D75418] currentDevice];
            if ([v16 userInterfaceIdiom] == 1)
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
          v22 = [MEMORY[0x277D75348] clearColor];
          [(SBSlideUpAppGrabberView *)v6 setBackgroundColor:v22];

          v23 = [(SBSlideUpAppGrabberView *)v6 layer];
          [v23 setAllowsGroupBlending:0];

          v24 = [(SBSlideUpAppGrabberView *)v6 layer];
          [v24 setMasksToBounds:1];

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
          v15 = [MEMORY[0x277D75418] currentDevice];
          if ([v15 userInterfaceIdiom] == 1)
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

      v12 = [MEMORY[0x277D75418] currentDevice];
      if ([v12 userInterfaceIdiom] == 1)
      {
        v10 = -50.0;
      }

      else
      {
        v10 = -20.0;
      }
    }

    if (a4)
    {
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  return v6;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  p_hitTestEdgeInsets = &self->_hitTestEdgeInsets;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_hitTestEdgeInsets.top, *MEMORY[0x277D768C8]), vceqq_f64(*&self->_hitTestEdgeInsets.bottom, *(MEMORY[0x277D768C8] + 16))))))
  {
    v19.receiver = self;
    v19.super_class = SBSlideUpAppGrabberView;
    return [(SBSlideUpAppGrabberView *)&v19 pointInside:a4 withEvent:a3.x, a3.y];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (self->_grabberImage)
  {
    [(UIImage *)self->_grabberImage size:a3.width];
  }

  else
  {
    [(SBSaturatedIconView *)self->_saturatedIconView sizeThatFits:a3.width, a3.height];
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
  v6 = [(SBSlideUpAppGrabberView *)self layer];
  v7 = [v6 mask];
  [(SBSlideUpAppGrabberView *)self bounds];
  [v7 setFrame:?];
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  if (self->_saturatedIconView)
  {
    v5 = [MEMORY[0x277D75348] clearColor];

    v4 = v5;
  }

  v6.receiver = self;
  v6.super_class = SBSlideUpAppGrabberView;
  [(SBSlideUpAppGrabberView *)&v6 setBackgroundColor:v4];
}

- (void)setGrabberImageFromAppWithBundleIdentifier:(id)a3
{
  v12 = a3;
  v4 = [(UIView *)self _sbWindowScene];
  v5 = [v4 iconController];

  v6 = [v5 tableUIIconImageCache];
  if ([v12 isEqualToString:@"com.apple.Siri"])
  {
    v7 = [MEMORY[0x277D755B8] imageNamed:@"siri-suggestion"];
    v8 = [MEMORY[0x277D75348] whiteColor];
    [v7 _flatImageWithColor:v8];
  }

  else
  {
    v9 = [v5 iconModel];
    v8 = [v9 applicationIconForBundleIdentifier:v12];

    v7 = [(SBSlideUpAppGrabberView *)self traitCollection];
    [v6 imageForIcon:v8 compatibleWithTraitCollection:v7 options:2];
  }
  v10 = ;

  [(SBSlideUpAppGrabberView *)self setAppStyleGrabberImage:v10];
  [v6 iconImageInfo];
  [(SBSlideUpAppGrabberView *)self _setContinuousCornerRadius:v11];
}

- (void)setAppStyleGrabberImage:(id)a3
{
  objc_storeStrong(&self->_grabberImage, a3);
  v5 = a3;
  [(SBSaturatedIconView *)self->_saturatedIconView setImage:v5];

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

- (void)setVibrancyAllowed:(BOOL)a3
{
  if (self->_vibrancyAllowed != a3)
  {
    self->_vibrancyAllowed = a3;
    if (a3)
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

- (void)setVibrantSettings:(id)a3
{
  v5 = a3;
  if ([(SBSlideUpAppGrabberView *)self _shouldUseVibrancy]&& ([(_SBFVibrantSettings *)self->_vibrantSettings isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_vibrantSettings, a3);
    v6 = [(_SBFVibrantSettings *)self->_vibrantSettings tintColor];
    if ([(_SBFVibrantSettings *)self->_vibrantSettings style]== 2)
    {
      v13 = 0.0;
      v14 = 0.0;
      v11 = 0.0;
      v12 = 0.0;
      [v6 getRed:&v14 green:&v13 blue:&v12 alpha:&v11];
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

- (void)setBackgroundView:(id)a3
{
  v9 = a3;
  v5 = [(SBSlideUpAppGrabberView *)self _shouldUseVibrancy];
  v6 = v9;
  if (v5)
  {
    backgroundView = self->_backgroundView;
    if (backgroundView != v9)
    {
      [(UIView *)backgroundView removeFromSuperview];
      objc_storeStrong(&self->_backgroundView, a3);
      v8 = self->_backgroundView;
      [(SBSlideUpAppGrabberView *)self bounds];
      [(UIView *)v8 setFrame:?];
      [(SBSlideUpAppGrabberView *)self addSubview:self->_backgroundView];
      [(SBSlideUpAppGrabberView *)self sendSubviewToBack:self->_backgroundView];
      v6 = v9;
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

- (void)setStrength:(double)a3
{
  self->_strength = a3;
  v4 = [(SBSlideUpAppGrabberView *)self _lazyLegibilityView];
  [v4 setStrength:a3];
}

- (void)setLegibilitySettings:(id)a3
{
  objc_storeStrong(&self->_legibilitySettings, a3);
  v5 = a3;
  v6 = [(SBSlideUpAppGrabberView *)self _lazyLegibilityView];
  [v6 setLegibilitySettings:v5];
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