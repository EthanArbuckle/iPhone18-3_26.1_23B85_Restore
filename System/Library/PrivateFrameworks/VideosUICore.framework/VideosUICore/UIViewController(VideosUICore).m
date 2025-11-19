@interface UIViewController(VideosUICore)
- (BOOL)vuiIsNavigationRoot;
- (id)vui_initWithCoder:()VideosUICore;
- (id)vui_initWithNibName:()VideosUICore bundle:;
- (uint64_t)vuiIsRTL;
- (uint64_t)vui_addSubview:()VideosUICore oldView:;
- (uint64_t)vui_requiresLegacyPresentation;
- (uint64_t)vui_setOverrideUserInterfaceStyle:()VideosUICore;
- (unint64_t)vuiOverrideUserInterfaceStyle;
- (unint64_t)vuiUserInterfaceStyle;
- (void)setVui_requiresLegacyPresentation:()VideosUICore;
- (void)vui_presentedContentSizeChanged:()VideosUICore;
@end

@implementation UIViewController(VideosUICore)

- (uint64_t)vui_requiresLegacyPresentation
{
  v1 = objc_getAssociatedObject(a1, &VUIRequiresLegacyPresentationKey);
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setVui_requiresLegacyPresentation:()VideosUICore
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(a1, &VUIRequiresLegacyPresentationKey, v2, 1);
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

- (uint64_t)vuiIsRTL
{
  v1 = [a1 vuiView];
  v2 = [v1 vuiIsRTL];

  return v2;
}

- (BOOL)vuiIsNavigationRoot
{
  v2 = [a1 vuiNavigationController];
  v3 = [v2 viewControllers];
  v4 = [v3 firstObject];

  return v4 == a1;
}

- (id)vui_initWithNibName:()VideosUICore bundle:
{
  v4 = [a1 initWithNibName:a3 bundle:a4];

  return v4;
}

- (id)vui_initWithCoder:()VideosUICore
{
  v3 = [a1 initWithCoder:a3];

  return v3;
}

- (void)vui_presentedContentSizeChanged:()VideosUICore
{
  v4 = [a3 view];
  [v4 intrinsicContentSize];
  v6 = v5;
  v8 = v7;

  if (round(v6) != 0.0 && round(v8) != 0.0)
  {

    [a1 setPreferredContentSize:?];
  }
}

- (uint64_t)vui_addSubview:()VideosUICore oldView:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 vuiView];
  v9 = [v8 vui_addSubview:v7 oldView:v6];

  return v9;
}

@end