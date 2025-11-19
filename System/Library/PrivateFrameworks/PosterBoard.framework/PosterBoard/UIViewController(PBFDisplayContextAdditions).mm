@interface UIViewController(PBFDisplayContextAdditions)
- (id)pbf_displayContext;
- (uint64_t)pbf_layoutOrientation;
@end

@implementation UIViewController(PBFDisplayContextAdditions)

- (uint64_t)pbf_layoutOrientation
{
  if ([a1 isViewLoaded])
  {
    v2 = [a1 view];
    v3 = [v2 window];

    if (v3)
    {
      v4 = [v3 windowScene];
      v5 = [v4 interfaceOrientation];

      if (v5)
      {
        v6 = [v3 pbf_layoutOrientation];

        return v6;
      }
    }
  }

  v8 = [a1 parentViewController];

  if (v8)
  {
    v9 = [a1 parentViewController];
    v10 = [v9 pbf_layoutOrientation];

    return v10;
  }

  else
  {

    return PBFBSInterfaceOrientationDefaultForCurrentDeviceClass();
  }
}

- (id)pbf_displayContext
{
  v2 = [a1 _screen];
  if (!v2)
  {
    v2 = [MEMORY[0x277D759A0] mainScreen];
  }

  v3 = [a1 traitCollection];
  v4 = [PBFGenericDisplayContext displayContextForScreen:v2 traitCollection:v3];

  v5 = [v4 displayContextWithUpdatedInterfaceOrientation:{objc_msgSend(a1, "pbf_layoutOrientation")}];

  return v5;
}

@end