@interface UIWindow(PBFDisplayContextAdditions)
- (id)pbf_displayContext;
- (uint64_t)pbf_layoutOrientation;
@end

@implementation UIWindow(PBFDisplayContextAdditions)

- (uint64_t)pbf_layoutOrientation
{
  windowScene = [self windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  if (interfaceOrientation)
  {
    return interfaceOrientation;
  }

  return PBFBSInterfaceOrientationDefaultForCurrentDeviceClass();
}

- (id)pbf_displayContext
{
  _screen = [self _screen];
  _screen2 = [self _screen];

  if (!_screen2)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];

    _screen = mainScreen;
  }

  traitCollection = [self traitCollection];
  v6 = [PBFGenericDisplayContext displayContextForScreen:_screen traitCollection:traitCollection];

  v7 = [v6 displayContextWithUpdatedInterfaceOrientation:{objc_msgSend(self, "pbf_layoutOrientation")}];

  return v7;
}

@end