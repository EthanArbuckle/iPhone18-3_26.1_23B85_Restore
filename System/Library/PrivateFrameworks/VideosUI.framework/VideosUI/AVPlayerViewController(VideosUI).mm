@interface AVPlayerViewController(VideosUI)
- (id)vui_viewControllerForFullScreenPresentation;
@end

@implementation AVPlayerViewController(VideosUI)

- (id)vui_viewControllerForFullScreenPresentation
{
  v2 = [a1 viewControllerForFullScreenPresentation];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = a1;
  }

  v5 = v4;

  [v5 setVui_requiresLegacyPresentation:1];

  return v5;
}

@end