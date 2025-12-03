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
  v1 = objc_getAssociatedObject(self, &VUIRequiresLegacyPresentationKey);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setVui_requiresLegacyPresentation:()VideosUICore
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, &VUIRequiresLegacyPresentationKey, v2, 1);
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

- (uint64_t)vuiIsRTL
{
  vuiView = [self vuiView];
  vuiIsRTL = [vuiView vuiIsRTL];

  return vuiIsRTL;
}

- (BOOL)vuiIsNavigationRoot
{
  vuiNavigationController = [self vuiNavigationController];
  viewControllers = [vuiNavigationController viewControllers];
  firstObject = [viewControllers firstObject];

  return firstObject == self;
}

- (id)vui_initWithNibName:()VideosUICore bundle:
{
  v4 = [self initWithNibName:a3 bundle:a4];

  return v4;
}

- (id)vui_initWithCoder:()VideosUICore
{
  v3 = [self initWithCoder:a3];

  return v3;
}

- (void)vui_presentedContentSizeChanged:()VideosUICore
{
  view = [a3 view];
  [view intrinsicContentSize];
  v6 = v5;
  v8 = v7;

  if (round(v6) != 0.0 && round(v8) != 0.0)
  {

    [self setPreferredContentSize:?];
  }
}

- (uint64_t)vui_addSubview:()VideosUICore oldView:
{
  v6 = a4;
  v7 = a3;
  vuiView = [self vuiView];
  v9 = [vuiView vui_addSubview:v7 oldView:v6];

  return v9;
}

@end