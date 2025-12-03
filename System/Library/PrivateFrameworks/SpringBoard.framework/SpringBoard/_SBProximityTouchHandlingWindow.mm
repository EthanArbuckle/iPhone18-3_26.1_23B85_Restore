@interface _SBProximityTouchHandlingWindow
+ (_SBProximityTouchHandlingWindow)proximityTouchHandlingWindowWithScene:(void *)scene viewController:;
@end

@implementation _SBProximityTouchHandlingWindow

+ (_SBProximityTouchHandlingWindow)proximityTouchHandlingWindowWithScene:(void *)scene viewController:
{
  sceneCopy = scene;
  v5 = a2;
  objc_opt_self();
  v6 = [(SBFTouchPassThroughWindow *)[_SBProximityTouchHandlingWindow alloc] initWithWindowScene:v5 role:0 debugName:@"_SBProximityTouchHandlingWindow"];

  [(_SBProximityTouchHandlingWindow *)v6 setRootViewController:sceneCopy];
  [(_SBProximityTouchHandlingWindow *)v6 setLevel:999999.0];
  [(_SBProximityTouchHandlingWindow *)v6 setUserInteractionEnabled:1];

  return v6;
}

@end