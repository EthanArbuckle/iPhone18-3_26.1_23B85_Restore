@interface SBInactiveTouchShieldWindow
- (SBInactiveTouchShieldWindow)initWithDisplay:(id)display;
@end

@implementation SBInactiveTouchShieldWindow

- (SBInactiveTouchShieldWindow)initWithDisplay:(id)display
{
  v7.receiver = self;
  v7.super_class = SBInactiveTouchShieldWindow;
  v3 = [(_UIRootWindow *)&v7 initWithDisplay:display];
  v4 = v3;
  if (v3)
  {
    layer = [(SBInactiveTouchShieldWindow *)v3 layer];
    [layer setHitTestsAsOpaque:1];
  }

  return v4;
}

@end