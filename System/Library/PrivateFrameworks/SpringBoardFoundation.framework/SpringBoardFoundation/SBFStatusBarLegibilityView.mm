@interface SBFStatusBarLegibilityView
+ (id)gradientViewWithOpacities:(const double *)opacities locations:(id)locations;
+ (id)statusBarGradientView;
- (void)_configureAsPad;
- (void)_configureAsPhone;
- (void)_configureWithLegibilitySettings:(id)settings forceLegibilityGradientHidden:(BOOL)hidden;
- (void)layoutSubviews;
- (void)setForceLegibilityGradientHidden:(BOOL)hidden;
- (void)setLegibilitySettings:(id)settings;
@end

@implementation SBFStatusBarLegibilityView

- (void)setForceLegibilityGradientHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ((BSEqualBools() & 1) == 0)
  {
    self->_forceLegibilityGradientHidden = hiddenCopy;
    legibilitySettings = self->_legibilitySettings;

    [(SBFStatusBarLegibilityView *)self _configureWithLegibilitySettings:legibilitySettings forceLegibilityGradientHidden:hiddenCopy];
  }
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(SBFStatusBarLegibilityView *)self _configureWithLegibilitySettings:settingsCopy forceLegibilityGradientHidden:self->_forceLegibilityGradientHidden];
  }
}

- (void)_configureWithLegibilitySettings:(id)settings forceLegibilityGradientHidden:(BOOL)hidden
{
  style = [settings style];
  if (!settings || style == 2 || hidden)
  {
    statusBarGradientView = [(SBFStatusBarLegibilityView *)self statusBarGradientView];
    [statusBarGradientView removeFromSuperview];

    [(SBFStatusBarLegibilityView *)self setStatusBarGradientView:0];
    leftCornerView = [(SBFStatusBarLegibilityView *)self leftCornerView];
    [leftCornerView removeFromSuperview];

    [(SBFStatusBarLegibilityView *)self setLeftCornerView:0];
    rightCornerView = [(SBFStatusBarLegibilityView *)self rightCornerView];
    [rightCornerView removeFromSuperview];

    [(SBFStatusBarLegibilityView *)self setRightCornerView:0];
  }

  else
  {
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom != 1)
      {
LABEL_6:
        statusBarGradientView2 = [(SBFStatusBarLegibilityView *)self statusBarGradientView];

        if (!statusBarGradientView2)
        {

          [(SBFStatusBarLegibilityView *)self _configureAsPhone];
        }

        return;
      }
    }

    leftCornerView2 = [(SBFStatusBarLegibilityView *)self leftCornerView];
    if (leftCornerView2)
    {
    }

    else
    {
      rightCornerView2 = [(SBFStatusBarLegibilityView *)self rightCornerView];

      if (!rightCornerView2)
      {

        [(SBFStatusBarLegibilityView *)self _configureAsPad];
      }
    }
  }
}

+ (id)gradientViewWithOpacities:(const double *)opacities locations:(id)locations
{
  components[2] = *MEMORY[0x1E69E9840];
  locationsCopy = locations;
  v6 = objc_alloc_init(SBStatusBarLegibilityGradientView);
  layer = [(SBStatusBarLegibilityGradientView *)v6 layer];
  v8 = [locationsCopy count];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v8, MEMORY[0x1E695E9C0]);
  for (i = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]); v8; --v8)
  {
    components[0] = 0.0;
    components[1] = *opacities;
    v11 = CGColorCreate(i, components);
    if (v11)
    {
      v12 = v11;
      CFArrayAppendValue(Mutable, v11);
      CFRelease(v12);
    }

    ++opacities;
  }

  [layer setColors:Mutable];
  CFRelease(Mutable);
  CGColorSpaceRelease(i);
  [layer setLocations:locationsCopy];
  [layer setStartPoint:{0.5, 1.0}];
  [layer setEndPoint:{0.5, 0.0}];
  v13 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798C8]];
  layer2 = [(SBStatusBarLegibilityGradientView *)v6 layer];
  [layer2 setCompositingFilter:v13];

  return v6;
}

+ (id)statusBarGradientView
{
  v6 = *MEMORY[0x1E69E9840];
  v4[12] = xmmword_1BEAD3D38;
  v4[13] = unk_1BEAD3D48;
  v4[14] = xmmword_1BEAD3D58;
  v5 = 0x3FA999999999999ALL;
  v4[8] = xmmword_1BEAD3CF8;
  v4[9] = unk_1BEAD3D08;
  v4[10] = xmmword_1BEAD3D18;
  v4[11] = unk_1BEAD3D28;
  v4[4] = xmmword_1BEAD3CB8;
  v4[5] = unk_1BEAD3CC8;
  v4[6] = xmmword_1BEAD3CD8;
  v4[7] = unk_1BEAD3CE8;
  v4[0] = xmmword_1BEAD3C78;
  v4[1] = unk_1BEAD3C88;
  v4[2] = xmmword_1BEAD3C98;
  v4[3] = unk_1BEAD3CA8;
  v2 = [self gradientViewWithOpacities:v4 locations:&unk_1F3D3ED30];

  return v2;
}

- (void)_configureAsPhone
{
  layer = [(SBFStatusBarLegibilityView *)self layer];
  [layer setAllowsGroupBlending:0];

  statusBarGradientView = [objc_opt_class() statusBarGradientView];
  [(SBFStatusBarLegibilityView *)self addSubview:statusBarGradientView];
  [(SBFStatusBarLegibilityView *)self setStatusBarGradientView:statusBarGradientView];
}

- (void)_configureAsPad
{
  v10 = [MEMORY[0x1E69DCAB8] imageNamed:@"StatusBarLegibilityShadow"];
  imageWithHorizontallyFlippedOrientation = [v10 imageWithHorizontallyFlippedOrientation];
  v4 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v10];
  v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:imageWithHorizontallyFlippedOrientation];
  v6 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798C8]];
  layer = [v4 layer];
  [layer setCompositingFilter:v6];

  layer2 = [v5 layer];
  [layer2 setCompositingFilter:v6];

  layer3 = [(SBFStatusBarLegibilityView *)self layer];
  [layer3 setAllowsGroupBlending:0];

  [(SBFStatusBarLegibilityView *)self addSubview:v4];
  [(SBFStatusBarLegibilityView *)self addSubview:v5];
  [(SBFStatusBarLegibilityView *)self setLeftCornerView:v4];
  [(SBFStatusBarLegibilityView *)self setRightCornerView:v5];
}

- (void)layoutSubviews
{
  v32.receiver = self;
  v32.super_class = SBFStatusBarLegibilityView;
  [(SBFStatusBarLegibilityView *)&v32 layoutSubviews];
  [(SBFStatusBarLegibilityView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  statusBarGradientView = [(SBFStatusBarLegibilityView *)self statusBarGradientView];
  if (statusBarGradientView)
  {
    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    v33.origin.x = v4;
    v33.origin.y = v6;
    v33.size.width = v8;
    v33.size.height = v10;
    CGRectDivide(v33, &slice, &remainder, 100.0, CGRectMinYEdge);
    [statusBarGradientView setFrame:{slice.origin.x, slice.origin.y, slice.size.width, slice.size.height}];
  }

  leftCornerView = [(SBFStatusBarLegibilityView *)self leftCornerView];
  v13 = leftCornerView;
  if (leftCornerView)
  {
    [leftCornerView frame];
    [v13 setFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  }

  rightCornerView = [(SBFStatusBarLegibilityView *)self rightCornerView];
  v15 = rightCornerView;
  if (rightCornerView)
  {
    [rightCornerView frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v34.origin.x = v4;
    v34.origin.y = v6;
    v34.size.width = v8;
    v34.size.height = v10;
    rect = v10;
    v24 = v8;
    v25 = v6;
    v26 = v4;
    MaxX = CGRectGetMaxX(v34);
    v35.origin.x = v17;
    v35.origin.y = v19;
    v35.size.width = v21;
    v35.size.height = v23;
    v28 = MaxX - CGRectGetWidth(v35);
    v36.origin.x = v26;
    v36.origin.y = v25;
    v36.size.width = v24;
    v36.size.height = rect;
    [v15 setFrame:{v28, CGRectGetMinY(v36), v21, v23}];
  }
}

@end