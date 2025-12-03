@interface SBTitledHomeScreenButton
- (CGSize)preferredContentFittingSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SBTitledHomeScreenButton)initWithFrame:(CGRect)frame backgroundView:(id)view type:(int64_t)type content:(id)content;
- (SBTitledHomeScreenButton)initWithFrame:(CGRect)frame material:(int64_t)material type:(int64_t)type content:(id)content;
- (SBTitledHomeScreenButtonMetrics)metrics;
- (id)contentImageWithTitle:(id)title;
- (id)defaultContentImage;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)setLegibilitySettings:(id)settings;
- (void)setMetrics:(SBTitledHomeScreenButtonMetrics *)metrics;
@end

@implementation SBTitledHomeScreenButton

- (SBTitledHomeScreenButton)initWithFrame:(CGRect)frame material:(int64_t)material type:(int64_t)type content:(id)content
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  contentCopy = content;
  v36.receiver = self;
  v36.super_class = SBTitledHomeScreenButton;
  height = [(SBHomeScreenButton *)&v36 initWithFrame:material material:x, y, width, height];
  v18 = height;
  if (height)
  {
    height->_type = type;
    objc_storeStrong(&height->_content, content);
    if (objc_opt_respondsToSelector())
    {
      [MEMORY[0x1E69DC740] _homescreenCloseGlassButtonConfiguration];
    }

    else
    {
      [MEMORY[0x1E69DC740] clearGlassButtonConfiguration];
    }
    v19 = ;
    background = [v19 background];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [background setBackgroundColor:clearColor];

    [(SBTitledHomeScreenButton *)v18 setConfiguration:v19];
    v22 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v18];
    [(SBTitledHomeScreenButton *)v18 addInteraction:v22];
    v18->_metrics.minimumButtonWidth = 60.0;
    v23 = __sb__runningInSpringBoard();
    v24 = v23;
    if (v23)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        v18->_metrics.minimumButtonHeight = 26.0;
        goto LABEL_23;
      }

      if (SBFEffectiveHomeButtonType() != 2)
      {
        v18->_metrics.minimumButtonHeight = 26.0;
        goto LABEL_21;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
      {
        v18->_metrics.minimumButtonHeight = 26.0;
LABEL_22:

LABEL_23:
        v18->_metrics.minimumHorizontalPadding = 10.0;
        v29 = __sb__runningInSpringBoard();
        v30 = v29;
        if (v29)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v18->_metrics.baselineToTop = 18.0;
            goto LABEL_41;
          }

          if (SBFEffectiveHomeButtonType() != 2)
          {
            v18->_metrics.baselineToTop = 18.0;
            goto LABEL_39;
          }
        }

        else
        {
          currentDevice = [MEMORY[0x1E69DC938] currentDevice];
          if ([currentDevice userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
          {
            v18->_metrics.baselineToTop = 18.0;
LABEL_40:

            goto LABEL_41;
          }
        }

        v31 = __sb__runningInSpringBoard();
        v32 = v31;
        if (v31)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
          [mainScreen _referenceBounds];
        }

        BSSizeRoundForScale();
        v33 = 18.0;
        if (v34 >= *(MEMORY[0x1E69D4380] + 120))
        {
          v33 = 19.0;
        }

        v18->_metrics.baselineToTop = v33;
        if ((v32 & 1) == 0)
        {
        }

LABEL_39:
        if ((v30 & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_41:
        *&v18->_metrics.preferredTitlePointSize = xmmword_1BEE856B0;
        v18->_metrics.minimumTitlePointSize = 10.0;

        goto LABEL_42;
      }
    }

    v25 = __sb__runningInSpringBoard();
    v26 = v25;
    if (v25)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen _referenceBounds];
    }

    BSSizeRoundForScale();
    v27 = 26.0;
    if (v28 >= *(MEMORY[0x1E69D4380] + 120))
    {
      v27 = 28.0;
    }

    v18->_metrics.minimumButtonHeight = v27;
    if ((v26 & 1) == 0)
    {
    }

LABEL_21:
    if (v24)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_42:

  return v18;
}

- (SBTitledHomeScreenButton)initWithFrame:(CGRect)frame backgroundView:(id)view type:(int64_t)type content:(id)content
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  contentCopy = content;
  v37.receiver = self;
  v37.super_class = SBTitledHomeScreenButton;
  height = [(SBHomeScreenButton *)&v37 initWithFrame:viewCopy backgroundView:x, y, width, height];
  v18 = height;
  if (height)
  {
    height->_type = type;
    objc_storeStrong(&height->_content, content);
    layer = [viewCopy layer];
    [layer setCornerCurve:*MEMORY[0x1E69796E8]];

    if (objc_opt_respondsToSelector())
    {
      [MEMORY[0x1E69DC740] _homescreenCloseGlassButtonConfiguration];
    }

    else
    {
      [MEMORY[0x1E69DC740] clearGlassButtonConfiguration];
    }
    v20 = ;
    background = [v20 background];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [background setBackgroundColor:clearColor];

    [(SBTitledHomeScreenButton *)v18 setConfiguration:v20];
    v23 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v18];
    [(SBTitledHomeScreenButton *)v18 addInteraction:v23];
    v18->_metrics.minimumButtonWidth = 60.0;
    v24 = __sb__runningInSpringBoard();
    v25 = v24;
    if (v24)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        v18->_metrics.minimumButtonHeight = 26.0;
        goto LABEL_24;
      }

      if (SBFEffectiveHomeButtonType() != 2)
      {
        v18->_metrics.minimumButtonHeight = 26.0;
        if (v25)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
      {
        v18->_metrics.minimumButtonHeight = 26.0;
        goto LABEL_23;
      }
    }

    v26 = __sb__runningInSpringBoard();
    v27 = v26;
    if (v26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen _referenceBounds];
    }

    BSSizeRoundForScale();
    v28 = 26.0;
    if (v29 >= *(MEMORY[0x1E69D4380] + 120))
    {
      v28 = 28.0;
    }

    v18->_metrics.minimumButtonHeight = v28;
    if ((v27 & 1) == 0)
    {
    }

    if (v25)
    {
LABEL_24:
      v18->_metrics.minimumHorizontalPadding = 10.0;
      v30 = __sb__runningInSpringBoard();
      v31 = v30;
      if (v30)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          v18->_metrics.baselineToTop = 18.0;
          goto LABEL_42;
        }

        if (SBFEffectiveHomeButtonType() != 2)
        {
          v18->_metrics.baselineToTop = 18.0;
          goto LABEL_40;
        }
      }

      else
      {
        currentDevice = [MEMORY[0x1E69DC938] currentDevice];
        if ([currentDevice userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
        {
          v18->_metrics.baselineToTop = 18.0;
LABEL_41:

          goto LABEL_42;
        }
      }

      v32 = __sb__runningInSpringBoard();
      v33 = v32;
      if (v32)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen _referenceBounds];
      }

      BSSizeRoundForScale();
      v34 = 18.0;
      if (v35 >= *(MEMORY[0x1E69D4380] + 120))
      {
        v34 = 19.0;
      }

      v18->_metrics.baselineToTop = v34;
      if ((v33 & 1) == 0)
      {
      }

LABEL_40:
      if ((v31 & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_42:
      *&v18->_metrics.preferredTitlePointSize = xmmword_1BEE856B0;
      v18->_metrics.minimumTitlePointSize = 10.0;

      goto LABEL_43;
    }

LABEL_23:

    goto LABEL_24;
  }

LABEL_43:

  return v18;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(SBTitledHomeScreenButton *)self preferredContentFittingSize];
  v7 = v6;
  v9 = v8;
  configuration = [(SBTitledHomeScreenButton *)self configuration];
  [configuration contentInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = width == *MEMORY[0x1E695F060];
  if (height != *(MEMORY[0x1E695F060] + 8))
  {
    v19 = 0;
  }

  if (height > v16 + v9 + v12 || v19)
  {
    v21 = v16 + v9 + v12;
  }

  else
  {
    v21 = height;
  }

  if (width > v18 + v7 + v14)
  {
    v19 = 1;
  }

  if (v19)
  {
    v22 = v18 + v7 + v14;
  }

  else
  {
    v22 = width;
  }

  result.height = v21;
  result.width = v22;
  return result;
}

- (id)contentImageWithTitle:(id)title
{
  v53[3] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  v5 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v5 setLineBreakMode:4];
  v36 = v5;
  [v5 setAlignment:0];
  v51 = 0.0;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  [(SBTitledHomeScreenButton *)self metrics];
  [(SBTitledHomeScreenButton *)self preferredContentFittingSize];
  v6 = 0.0;
  v8 = v7 - 0.0;
  v9 = 0;
  v10 = 0;
  v11 = *MEMORY[0x1E69DB958];
  v12 = *MEMORY[0x1E69DB648];
  v13 = *MEMORY[0x1E69DB688];
  v14 = *MEMORY[0x1E69DB650];
  do
  {
    v15 = v9;
    v9 = [MEMORY[0x1E69DB878] systemFontOfSize:v6 weight:v11];

    legibilitySettings = [(SBHomeScreenButton *)self legibilitySettings];
    if (legibilitySettings)
    {
      legibilitySettings2 = [(SBHomeScreenButton *)self legibilitySettings];
      primaryColor = [legibilitySettings2 primaryColor];
    }

    else
    {
      primaryColor = [MEMORY[0x1E69DC888] labelColor];
    }

    v52[0] = v12;
    v52[1] = v13;
    v53[0] = v9;
    v53[1] = v36;
    v52[2] = v14;
    v53[2] = primaryColor;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:3];

    [titleCopy sizeWithAttributes:v19];
    v21 = v20;
    v23 = v22;

    if (v21 <= v8)
    {
      break;
    }

    v6 = v6 + -1.0;
    v10 = v19;
  }

  while (v6 >= v51);
  v46 = 0.0;
  v47 = 0.0;
  if (v21 > v8)
  {
    v21 = v8;
  }

  v44 = 0.0;
  v45 = 0.0;
  if (v9 && CTFontGetLanguageAwareOutsets())
  {
    v24 = v47;
    v25 = v46;
    if (v47 < v45)
    {
      v24 = v45;
    }

    if (v46 < v44)
    {
      v25 = v44;
    }

    v26 = v21 + v24 + v24;
    v27 = v23 + v25 + v25;
    v28 = v24 + 0.0;
    v29 = v25 + 0.0;
  }

  else
  {
    v44 = 0.0;
    v45 = 0.0;
    v46 = 0.0;
    v47 = 0.0;
    v28 = 0.0;
    v26 = v21;
    v27 = v23;
    v29 = 0.0;
  }

  v30 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v26, v27}];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __50__SBTitledHomeScreenButton_contentImageWithTitle___block_invoke;
  v37[3] = &unk_1E808A0E0;
  v40 = v28;
  v41 = v29;
  v42 = v21;
  v43 = v23;
  v38 = titleCopy;
  v39 = v19;
  v31 = v19;
  v32 = titleCopy;
  v33 = [v30 imageWithActions:v37];
  v34 = [v33 imageWithAlignmentRectInsets:{v46, v47, v44, v45}];

  return v34;
}

uint64_t __50__SBTitledHomeScreenButton_contentImageWithTitle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 format];
  [v3 scale];
  UIRectIntegralWithScale();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *(a1 + 32);
  v13 = *(a1 + 40);

  return [v12 drawWithRect:1 options:v13 attributes:0 context:{v5, v7, v9, v11}];
}

- (id)defaultContentImage
{
  if ([(SBTitledHomeScreenButton *)self type]== 1)
  {
    if (defaultContentImage_onceToken != -1)
    {
      [SBTitledHomeScreenButton defaultContentImage];
    }

    content = [(SBTitledHomeScreenButton *)self content];
    v4 = [(SBTitledHomeScreenButton *)self contentImageWithTitle:content];
    v5 = defaultContentImage_image;
    defaultContentImage_image = v4;
  }

  else
  {
    [(SBTitledHomeScreenButton *)self metrics:0];
    content = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:0.0];
    v6 = MEMORY[0x1E69DCAB8];
    content2 = [(SBTitledHomeScreenButton *)self content];
    v8 = [v6 systemImageNamed:content2 withConfiguration:content];
    v9 = defaultContentImage_image;
    defaultContentImage_image = v8;

    legibilitySettings = [(SBHomeScreenButton *)self legibilitySettings];
    if (legibilitySettings)
    {
      legibilitySettings2 = [(SBHomeScreenButton *)self legibilitySettings];
      primaryColor = [legibilitySettings2 primaryColor];
    }

    else
    {
      primaryColor = [MEMORY[0x1E69DC888] labelColor];
    }

    v13 = [defaultContentImage_image imageWithTintColor:primaryColor];
    v14 = [v13 imageWithRenderingMode:1];
    v15 = defaultContentImage_image;
    defaultContentImage_image = v14;
  }

  v16 = defaultContentImage_image;

  return v16;
}

void __47__SBTitledHomeScreenButton_defaultContentImage__block_invoke()
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = *MEMORY[0x1E69DD898];
  v1 = [MEMORY[0x1E696ADC8] mainQueue];
  v2 = [v3 addObserverForName:v0 object:0 queue:v1 usingBlock:&__block_literal_global_33];
}

void __47__SBTitledHomeScreenButton_defaultContentImage__block_invoke_2()
{
  v0 = defaultContentImage_image;
  defaultContentImage_image = 0;
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  legibilitySettings = [(SBHomeScreenButton *)self legibilitySettings];

  if (legibilitySettings != settingsCopy)
  {
    v7.receiver = self;
    v7.super_class = SBTitledHomeScreenButton;
    [(SBHomeScreenButton *)&v7 setLegibilitySettings:settingsCopy];
    defaultContentImage = [(SBTitledHomeScreenButton *)self defaultContentImage];
    [(SBTitledHomeScreenButton *)self setImage:defaultContentImage forState:0];
  }
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  v6 = MEMORY[0x1E69DCDC0];
  regionCopy = region;
  [(SBTitledHomeScreenButton *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  identifier = [regionCopy identifier];

  v17 = [v6 regionWithRect:identifier identifier:{v9, v11, v13, v15}];

  return v17;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self];
  v6 = [MEMORY[0x1E69DCDB8] effectWithPreview:v5];
  selfCopy = self;
  v8 = selfCopy;
  if (selfCopy)
  {
    configuration = [(SBTitledHomeScreenButton *)selfCopy configuration];
    [configuration contentInsets];
    v25 = v10;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v12 = *(MEMORY[0x1E69DC5C0] + 8);
    v25 = *MEMORY[0x1E69DC5C0];
    v14 = *(MEMORY[0x1E69DC5C0] + 16);
    v16 = *(MEMORY[0x1E69DC5C0] + 24);
  }

  backgroundView = [(SBHomeScreenButton *)v8 backgroundView];
  [backgroundView _cornerRadius];

  [(SBTitledHomeScreenButton *)v8 frame];
  v22 = [MEMORY[0x1E69DCDC8] shapeWithRoundedRect:SBHDirectionalEdgeInsetsInsetRect(-[SBTitledHomeScreenButton effectiveUserInterfaceLayoutDirection](v8 cornerRadius:{"effectiveUserInterfaceLayoutDirection"), v18, v19, v20, v21, v25, v12, v14, v16)}];
  v23 = [MEMORY[0x1E69DCDD0] styleWithEffect:v6 shape:v22];

  return v23;
}

- (CGSize)preferredContentFittingSize
{
  width = self->_preferredContentFittingSize.width;
  height = self->_preferredContentFittingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (SBTitledHomeScreenButtonMetrics)metrics
{
  v3 = *&self[14].minimumTitlePointSize;
  *&retstr->minimumButtonWidth = *&self[14].preferredTitlePointSize;
  *&retstr->minimumHorizontalPadding = v3;
  *&retstr->preferredTitlePointSize = *&self[15].minimumButtonHeight;
  retstr->minimumTitlePointSize = self[15].baselineToTop;
  return self;
}

- (void)setMetrics:(SBTitledHomeScreenButtonMetrics *)metrics
{
  v4 = *&metrics->minimumHorizontalPadding;
  v3 = *&metrics->preferredTitlePointSize;
  v5 = *&metrics->minimumButtonWidth;
  self->_metrics.minimumTitlePointSize = metrics->minimumTitlePointSize;
  *&self->_metrics.minimumHorizontalPadding = v4;
  *&self->_metrics.preferredTitlePointSize = v3;
  *&self->_metrics.minimumButtonWidth = v5;
}

@end