@interface UIView(PBFDisplayContextAdditions)
- (id)pbf_displayContext;
- (uint64_t)pbf_layoutOrientation;
@end

@implementation UIView(PBFDisplayContextAdditions)

- (uint64_t)pbf_layoutOrientation
{
  window = [self window];
  pbf_layoutOrientation = [window pbf_layoutOrientation];

  if (pbf_layoutOrientation)
  {
    return pbf_layoutOrientation;
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