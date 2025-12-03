@interface UIView(VideosUICore)
+ (id)_timingFuctionWithOptions:()VideosUICore;
- (double)vui_layoutSubviews:()VideosUICore computationOnly:;
- (uint64_t)setVuiAlpha:()VideosUICore;
- (uint64_t)setVuiContentMode:()VideosUICore;
- (uint64_t)vui_addSubview:()VideosUICore oldView:;
- (uint64_t)vui_insertSubview:()VideosUICore aboveSubview:oldView:;
- (uint64_t)vui_insertSubview:()VideosUICore belowSubview:oldView:;
- (uint64_t)vui_setOverrideUserInterfaceStyle:()VideosUICore;
- (unint64_t)vuiContentMode;
- (unint64_t)vuiOverrideUserInterfaceStyle;
- (unint64_t)vuiUserInterfaceStyle;
- (void)vui_performAsCurrentTraitCollection:()VideosUICore;
- (void)vui_registerForTraitChanges:()VideosUICore withHandler:;
- (void)vui_removeFromSuperView;
@end

@implementation UIView(VideosUICore)

- (uint64_t)setVuiAlpha:()VideosUICore
{
  result = [self vuiAlpha];
  if (v5 != a2)
  {

    return [self setAlpha:a2];
  }

  return result;
}

- (unint64_t)vuiUserInterfaceStyle
{
  traitCollection = [self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  return [VUICoreUtilities vuiUserInterfaceStyleForInterfaceStyle:userInterfaceStyle];
}

- (unint64_t)vuiOverrideUserInterfaceStyle
{
  overrideUserInterfaceStyle = [self overrideUserInterfaceStyle];

  return [VUICoreUtilities vuiUserInterfaceStyleForInterfaceStyle:overrideUserInterfaceStyle];
}

- (uint64_t)vui_setOverrideUserInterfaceStyle:()VideosUICore
{
  if (a3 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (a3 == 2);
  }

  return [self setOverrideUserInterfaceStyle:v3];
}

- (unint64_t)vuiContentMode
{
  contentMode = [self contentMode];

  return VUIViewContentModeFromUIContentMode(contentMode);
}

- (uint64_t)setVuiContentMode:()VideosUICore
{
  v4 = VUIUIViewContentModeFromVUIContentMode(a3);

  return [self setContentMode:v4];
}

- (uint64_t)vui_addSubview:()VideosUICore oldView:
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 == v6)
  {
    if (v7)
    {
      superview = [v6 superview];

      if (!superview)
      {
        [self addSubview:v6];
        if (![self vuiDebugUI])
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }
  }

  else if (v6 | v7)
  {
    [v7 vui_removeFromSuperView];
    if (!v6 || ([v6 vui_isDescendantOfView:self] & 1) != 0)
    {
      v9 = 0;
LABEL_12:
      [self vui_setNeedsLayout];
      goto LABEL_13;
    }

    [self addSubview:v6];
    if (([self vuiDebugUI] & 1) == 0)
    {
LABEL_11:
      v9 = 1;
      goto LABEL_12;
    }

LABEL_10:
    v11 = +[VUICoreUtilities randomColor];
    [v6 setVuiBackgroundColor:v11];

    goto LABEL_11;
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (uint64_t)vui_insertSubview:()VideosUICore aboveSubview:oldView:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10 == v8)
    {
      v12 = 0;
    }

    else
    {
      [v10 vui_removeFromSuperView];
      if (v8 && ([v8 vui_isDescendantOfView:self] & 1) == 0)
      {
        [self insertSubview:v8 aboveSubview:v9];
        if ([self vuiDebugUI])
        {
          v13 = +[VUICoreUtilities randomColor];
          [v8 setVuiBackgroundColor:v13];
        }

        v12 = 1;
      }

      else
      {
        v12 = 0;
      }

      [self vui_setNeedsLayout];
    }
  }

  else
  {
    v12 = [self vui_addSubview:v8 oldView:v10];
  }

  return v12;
}

- (uint64_t)vui_insertSubview:()VideosUICore belowSubview:oldView:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10 == v8)
    {
      v12 = 0;
    }

    else
    {
      [v10 vui_removeFromSuperView];
      if (v8 && ([v8 vui_isDescendantOfView:self] & 1) == 0)
      {
        [self insertSubview:v8 belowSubview:v9];
        if ([self vuiDebugUI])
        {
          v13 = +[VUICoreUtilities randomColor];
          [v8 setVuiBackgroundColor:v13];
        }

        v12 = 1;
      }

      else
      {
        v12 = 0;
      }

      [self vui_setNeedsLayout];
    }
  }

  else
  {
    v12 = [self vui_addSubview:v8 oldView:v10];
  }

  return v12;
}

- (void)vui_removeFromSuperView
{
  superview = [self superview];

  if (superview)
  {

    [self removeFromSuperview];
  }
}

- (void)vui_performAsCurrentTraitCollection:()VideosUICore
{
  v4 = a3;
  traitCollection = [self traitCollection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__UIView_VideosUICore__vui_performAsCurrentTraitCollection___block_invoke;
  v7[3] = &unk_279E21370;
  v8 = v4;
  v6 = v4;
  [traitCollection performAsCurrentTraitCollection:v7];
}

- (double)vui_layoutSubviews:()VideosUICore computationOnly:
{
  if (!a3)
  {
    return *MEMORY[0x277CBF3A8];
  }

  [self bounds];
  return v3;
}

- (void)vui_registerForTraitChanges:()VideosUICore withHandler:
{
  v8 = a4;
  v6 = [VUITraitBaseClass uiTraitsFrom:a3];
  v7 = [self registerForTraitChanges:v6 withHandler:v8];
}

+ (id)_timingFuctionWithOptions:()VideosUICore
{
  v3 = MEMORY[0x277CDA7A8];
  if ((*&a3 & 0x20000) != 0)
  {
    v3 = MEMORY[0x277CDA7C0];
  }

  if ((*&a3 & 0x10000) != 0)
  {
    v3 = MEMORY[0x277CDA7B0];
  }

  v4 = [MEMORY[0x277CD9EF8] functionWithName:*v3];

  return v4;
}

@end