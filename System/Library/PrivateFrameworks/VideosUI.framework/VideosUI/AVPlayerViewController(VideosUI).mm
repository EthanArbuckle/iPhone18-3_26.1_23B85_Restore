@interface AVPlayerViewController(VideosUI)
- (id)vui_viewControllerForFullScreenPresentation;
@end

@implementation AVPlayerViewController(VideosUI)

- (id)vui_viewControllerForFullScreenPresentation
{
  viewControllerForFullScreenPresentation = [self viewControllerForFullScreenPresentation];
  v3 = viewControllerForFullScreenPresentation;
  if (viewControllerForFullScreenPresentation)
  {
    selfCopy = viewControllerForFullScreenPresentation;
  }

  else
  {
    selfCopy = self;
  }

  v5 = selfCopy;

  [v5 setVui_requiresLegacyPresentation:1];

  return v5;
}

@end