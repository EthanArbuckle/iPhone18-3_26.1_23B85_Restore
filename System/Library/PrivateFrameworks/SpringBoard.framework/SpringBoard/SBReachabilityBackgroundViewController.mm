@interface SBReachabilityBackgroundViewController
- (SBReachabilityBackgroundViewController)initWithWallpaperVariant:(int64_t)variant;
- (id)view;
@end

@implementation SBReachabilityBackgroundViewController

- (SBReachabilityBackgroundViewController)initWithWallpaperVariant:(int64_t)variant
{
  v11.receiver = self;
  v11.super_class = SBReachabilityBackgroundViewController;
  v5 = [(SBReachabilityBackgroundViewController *)&v11 init];
  if (v5)
  {
    v6 = [SBReachabilityBackgroundView alloc];
    v7 = __sb__runningInSpringBoard();
    v8 = v7;
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen _referenceBounds];
    }

    v9 = [(SBReachabilityBackgroundView *)v6 initWithFrame:variant wallpaperVariant:?];
    if ((v8 & 1) == 0)
    {
    }

    [(SBReachabilityBackgroundViewController *)v5 setView:v9];
  }

  return v5;
}

- (id)view
{
  v4.receiver = self;
  v4.super_class = SBReachabilityBackgroundViewController;
  view = [(SBReachabilityBackgroundViewController *)&v4 view];

  return view;
}

@end