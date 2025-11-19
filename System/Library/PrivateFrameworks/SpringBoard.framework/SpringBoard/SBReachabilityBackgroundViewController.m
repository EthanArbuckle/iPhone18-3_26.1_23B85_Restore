@interface SBReachabilityBackgroundViewController
- (SBReachabilityBackgroundViewController)initWithWallpaperVariant:(int64_t)a3;
- (id)view;
@end

@implementation SBReachabilityBackgroundViewController

- (SBReachabilityBackgroundViewController)initWithWallpaperVariant:(int64_t)a3
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
      v3 = [MEMORY[0x277D759A0] mainScreen];
      [v3 _referenceBounds];
    }

    v9 = [(SBReachabilityBackgroundView *)v6 initWithFrame:a3 wallpaperVariant:?];
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
  v2 = [(SBReachabilityBackgroundViewController *)&v4 view];

  return v2;
}

@end