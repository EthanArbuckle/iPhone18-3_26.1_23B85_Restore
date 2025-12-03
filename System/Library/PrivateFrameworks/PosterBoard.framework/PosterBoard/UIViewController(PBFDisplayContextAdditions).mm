@interface UIViewController(PBFDisplayContextAdditions)
- (id)pbf_displayContext;
- (uint64_t)pbf_layoutOrientation;
@end

@implementation UIViewController(PBFDisplayContextAdditions)

- (uint64_t)pbf_layoutOrientation
{
  if ([self isViewLoaded])
  {
    view = [self view];
    window = [view window];

    if (window)
    {
      windowScene = [window windowScene];
      interfaceOrientation = [windowScene interfaceOrientation];

      if (interfaceOrientation)
      {
        pbf_layoutOrientation = [window pbf_layoutOrientation];

        return pbf_layoutOrientation;
      }
    }
  }

  parentViewController = [self parentViewController];

  if (parentViewController)
  {
    parentViewController2 = [self parentViewController];
    pbf_layoutOrientation2 = [parentViewController2 pbf_layoutOrientation];

    return pbf_layoutOrientation2;
  }

  else
  {

    return PBFBSInterfaceOrientationDefaultForCurrentDeviceClass();
  }
}

- (id)pbf_displayContext
{
  _screen = [self _screen];
  if (!_screen)
  {
    _screen = [MEMORY[0x277D759A0] mainScreen];
  }

  traitCollection = [self traitCollection];
  v4 = [PBFGenericDisplayContext displayContextForScreen:_screen traitCollection:traitCollection];

  v5 = [v4 displayContextWithUpdatedInterfaceOrientation:{objc_msgSend(self, "pbf_layoutOrientation")}];

  return v5;
}

@end