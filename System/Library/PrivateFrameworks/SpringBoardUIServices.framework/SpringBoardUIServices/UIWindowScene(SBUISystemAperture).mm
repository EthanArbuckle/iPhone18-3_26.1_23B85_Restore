@interface UIWindowScene(SBUISystemAperture)
- (BOOL)SBUI_isHostedBySystemAperture;
- (SBUISystemApertureElementSource)systemApertureElementSource;
- (id)systemApertureElementContext;
- (id)systemApertureElementViewControllerProvider;
- (id)systemApertureHostedElementContext;
- (void)setSystemApertureElementViewControllerProvider:()SBUISystemAperture;
- (void)systemApertureElementSourceIfExists;
@end

@implementation UIWindowScene(SBUISystemAperture)

- (id)systemApertureElementContext
{
  systemApertureElementContextPrivate = [self systemApertureElementContextPrivate];
  v2 = systemApertureElementContextPrivate;
  if (systemApertureElementContextPrivate)
  {
    v3 = systemApertureElementContextPrivate;
  }

  else
  {
    v3 = +[SBUISystemApertureElementUnassociatedContext unassociatedContext];
  }

  v4 = v3;

  return v4;
}

- (id)systemApertureHostedElementContext
{
  if ((SBUIIsSystemApertureEnabled() & 1) != 0 || [self SBUI_isHostedBySystemAperture])
  {
    systemApertureElementSource = [self systemApertureElementSource];
  }

  else
  {
    systemApertureElementSource = 0;
  }

  return systemApertureElementSource;
}

- (SBUISystemApertureElementSource)systemApertureElementSource
{
  v2 = [self _sceneComponentForKey:@"SBUISystemApertureElementSourceKey"];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    v6 = objc_alloc_init(SBUISystemApertureElementSource);
    [(SBUISystemApertureElementSource *)v6 registerWithScene:self];
  }

  return v6;
}

- (BOOL)SBUI_isHostedBySystemAperture
{
  systemApertureElementSourceIfExists = [self systemApertureElementSourceIfExists];
  layoutMode = [systemApertureElementSourceIfExists layoutMode];

  if (layoutMode)
  {
    return 1;
  }

  _FBSScene = [self _FBSScene];
  settings = [_FBSScene settings];
  sBUISA_layoutMode = [settings SBUISA_layoutMode];

  return sBUISA_layoutMode != 0;
}

- (void)systemApertureElementSourceIfExists
{
  v1 = [self _sceneComponentForKey:@"SBUISystemApertureElementSourceKey"];
  v2 = objc_opt_class();
  v3 = v1;
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v2 = v3;
    }

    else
    {
      v2 = 0;
    }
  }

  v4 = v2;

  return v2;
}

- (id)systemApertureElementViewControllerProvider
{
  systemApertureElementContextPrivate = [self systemApertureElementContextPrivate];
  systemApertureElementViewControllerProvider = [systemApertureElementContextPrivate systemApertureElementViewControllerProvider];

  return systemApertureElementViewControllerProvider;
}

- (void)setSystemApertureElementViewControllerProvider:()SBUISystemAperture
{
  v4 = a3;
  systemApertureElementContextPrivate = [self systemApertureElementContextPrivate];
  [systemApertureElementContextPrivate setSystemApertureElementViewControllerProvider:v4];
}

@end