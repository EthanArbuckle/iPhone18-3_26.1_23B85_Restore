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
  v1 = [a1 systemApertureElementContextPrivate];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
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
  if ((SBUIIsSystemApertureEnabled() & 1) != 0 || [a1 SBUI_isHostedBySystemAperture])
  {
    v2 = [a1 systemApertureElementSource];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (SBUISystemApertureElementSource)systemApertureElementSource
{
  v2 = [a1 _sceneComponentForKey:@"SBUISystemApertureElementSourceKey"];
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
    [(SBUISystemApertureElementSource *)v6 registerWithScene:a1];
  }

  return v6;
}

- (BOOL)SBUI_isHostedBySystemAperture
{
  v2 = [a1 systemApertureElementSourceIfExists];
  v3 = [v2 layoutMode];

  if (v3)
  {
    return 1;
  }

  v5 = [a1 _FBSScene];
  v6 = [v5 settings];
  v7 = [v6 SBUISA_layoutMode];

  return v7 != 0;
}

- (void)systemApertureElementSourceIfExists
{
  v1 = [a1 _sceneComponentForKey:@"SBUISystemApertureElementSourceKey"];
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
  v1 = [a1 systemApertureElementContextPrivate];
  v2 = [v1 systemApertureElementViewControllerProvider];

  return v2;
}

- (void)setSystemApertureElementViewControllerProvider:()SBUISystemAperture
{
  v4 = a3;
  v5 = [a1 systemApertureElementContextPrivate];
  [v5 setSystemApertureElementViewControllerProvider:v4];
}

@end