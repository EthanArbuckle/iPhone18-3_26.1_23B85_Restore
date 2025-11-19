@interface UIView(PBFDisplayContextAdditions)
- (id)pbf_displayContext;
- (uint64_t)pbf_layoutOrientation;
@end

@implementation UIView(PBFDisplayContextAdditions)

- (uint64_t)pbf_layoutOrientation
{
  v1 = [a1 window];
  v2 = [v1 pbf_layoutOrientation];

  if (v2)
  {
    return v2;
  }

  return PBFBSInterfaceOrientationDefaultForCurrentDeviceClass();
}

- (id)pbf_displayContext
{
  v2 = [a1 _screen];
  v3 = [a1 _screen];

  if (!v3)
  {
    v4 = [MEMORY[0x277D759A0] mainScreen];

    v2 = v4;
  }

  v5 = [a1 traitCollection];
  v6 = [PBFGenericDisplayContext displayContextForScreen:v2 traitCollection:v5];

  v7 = [v6 displayContextWithUpdatedInterfaceOrientation:{objc_msgSend(a1, "pbf_layoutOrientation")}];

  return v7;
}

@end