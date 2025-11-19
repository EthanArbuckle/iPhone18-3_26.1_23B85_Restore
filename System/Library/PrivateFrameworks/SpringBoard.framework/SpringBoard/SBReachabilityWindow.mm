@interface SBReachabilityWindow
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (SBReachabilityWindow)initWithWallpaperVariant:(int64_t)a3 windowScene:(id)a4;
- (id)view;
@end

@implementation SBReachabilityWindow

- (SBReachabilityWindow)initWithWallpaperVariant:(int64_t)a3 windowScene:(id)a4
{
  v6 = a4;
  v7 = [[SBReachabilityBackgroundViewController alloc] initWithWallpaperVariant:a3];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v14.receiver = self;
  v14.super_class = SBReachabilityWindow;
  v10 = [(SBWindow *)&v14 initWithWindowScene:v6 rootViewController:v7 layoutStrategy:0 role:@"SBTraitsParticipantRoleReachability" debugName:v9];

  if (v10)
  {
    v11 = [MEMORY[0x277D75348] clearColor];
    [(SBReachabilityWindow *)v10 setBackgroundColor:v11];

    [(SBReachabilityWindow *)v10 setWindowLevel:*MEMORY[0x277D76EB0] + -1.0];
    [(SBReachabilityWindow *)v10 setClipsToBounds:0];
    v12 = [(SBReachabilityWindow *)v10 layer];
    [v12 setDisableUpdateMask:32];
  }

  return v10;
}

- (id)view
{
  v2 = [(SBReachabilityWindow *)self rootViewController];
  v3 = [v2 view];

  return v3;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  v6.receiver = self;
  v6.super_class = SBReachabilityWindow;
  result = [(SBReachabilityWindow *)&v6 pointInside:a4 withEvent:a3.x];
  if (y > 0.0)
  {
    return 0;
  }

  return result;
}

@end