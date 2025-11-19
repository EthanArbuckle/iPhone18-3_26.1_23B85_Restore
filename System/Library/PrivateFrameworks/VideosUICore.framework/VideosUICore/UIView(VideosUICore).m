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
  result = [a1 vuiAlpha];
  if (v5 != a2)
  {

    return [a1 setAlpha:a2];
  }

  return result;
}

- (unint64_t)vuiUserInterfaceStyle
{
  v1 = [a1 traitCollection];
  v2 = [v1 userInterfaceStyle];

  return [VUICoreUtilities vuiUserInterfaceStyleForInterfaceStyle:v2];
}

- (unint64_t)vuiOverrideUserInterfaceStyle
{
  v1 = [a1 overrideUserInterfaceStyle];

  return [VUICoreUtilities vuiUserInterfaceStyleForInterfaceStyle:v1];
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

  return [a1 setOverrideUserInterfaceStyle:v3];
}

- (unint64_t)vuiContentMode
{
  v1 = [a1 contentMode];

  return VUIViewContentModeFromUIContentMode(v1);
}

- (uint64_t)setVuiContentMode:()VideosUICore
{
  v4 = VUIUIViewContentModeFromVUIContentMode(a3);

  return [a1 setContentMode:v4];
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
      v10 = [v6 superview];

      if (!v10)
      {
        [a1 addSubview:v6];
        if (![a1 vuiDebugUI])
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
    if (!v6 || ([v6 vui_isDescendantOfView:a1] & 1) != 0)
    {
      v9 = 0;
LABEL_12:
      [a1 vui_setNeedsLayout];
      goto LABEL_13;
    }

    [a1 addSubview:v6];
    if (([a1 vuiDebugUI] & 1) == 0)
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
      if (v8 && ([v8 vui_isDescendantOfView:a1] & 1) == 0)
      {
        [a1 insertSubview:v8 aboveSubview:v9];
        if ([a1 vuiDebugUI])
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

      [a1 vui_setNeedsLayout];
    }
  }

  else
  {
    v12 = [a1 vui_addSubview:v8 oldView:v10];
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
      if (v8 && ([v8 vui_isDescendantOfView:a1] & 1) == 0)
      {
        [a1 insertSubview:v8 belowSubview:v9];
        if ([a1 vuiDebugUI])
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

      [a1 vui_setNeedsLayout];
    }
  }

  else
  {
    v12 = [a1 vui_addSubview:v8 oldView:v10];
  }

  return v12;
}

- (void)vui_removeFromSuperView
{
  v2 = [a1 superview];

  if (v2)
  {

    [a1 removeFromSuperview];
  }
}

- (void)vui_performAsCurrentTraitCollection:()VideosUICore
{
  v4 = a3;
  v5 = [a1 traitCollection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__UIView_VideosUICore__vui_performAsCurrentTraitCollection___block_invoke;
  v7[3] = &unk_279E21370;
  v8 = v4;
  v6 = v4;
  [v5 performAsCurrentTraitCollection:v7];
}

- (double)vui_layoutSubviews:()VideosUICore computationOnly:
{
  if (!a3)
  {
    return *MEMORY[0x277CBF3A8];
  }

  [a1 bounds];
  return v3;
}

- (void)vui_registerForTraitChanges:()VideosUICore withHandler:
{
  v8 = a4;
  v6 = [VUITraitBaseClass uiTraitsFrom:a3];
  v7 = [a1 registerForTraitChanges:v6 withHandler:v8];
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