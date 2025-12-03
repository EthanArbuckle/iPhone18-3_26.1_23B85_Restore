@interface SBReachabilityWindow
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (SBReachabilityWindow)initWithWallpaperVariant:(int64_t)variant windowScene:(id)scene;
- (id)view;
@end

@implementation SBReachabilityWindow

- (SBReachabilityWindow)initWithWallpaperVariant:(int64_t)variant windowScene:(id)scene
{
  sceneCopy = scene;
  v7 = [[SBReachabilityBackgroundViewController alloc] initWithWallpaperVariant:variant];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v14.receiver = self;
  v14.super_class = SBReachabilityWindow;
  v10 = [(SBWindow *)&v14 initWithWindowScene:sceneCopy rootViewController:v7 layoutStrategy:0 role:@"SBTraitsParticipantRoleReachability" debugName:v9];

  if (v10)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SBReachabilityWindow *)v10 setBackgroundColor:clearColor];

    [(SBReachabilityWindow *)v10 setWindowLevel:*MEMORY[0x277D76EB0] + -1.0];
    [(SBReachabilityWindow *)v10 setClipsToBounds:0];
    layer = [(SBReachabilityWindow *)v10 layer];
    [layer setDisableUpdateMask:32];
  }

  return v10;
}

- (id)view
{
  rootViewController = [(SBReachabilityWindow *)self rootViewController];
  view = [rootViewController view];

  return view;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  v6.receiver = self;
  v6.super_class = SBReachabilityWindow;
  result = [(SBReachabilityWindow *)&v6 pointInside:event withEvent:inside.x];
  if (y > 0.0)
  {
    return 0;
  }

  return result;
}

@end