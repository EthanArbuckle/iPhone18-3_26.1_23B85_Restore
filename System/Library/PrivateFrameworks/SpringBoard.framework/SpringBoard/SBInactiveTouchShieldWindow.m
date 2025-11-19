@interface SBInactiveTouchShieldWindow
- (SBInactiveTouchShieldWindow)initWithDisplay:(id)a3;
@end

@implementation SBInactiveTouchShieldWindow

- (SBInactiveTouchShieldWindow)initWithDisplay:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBInactiveTouchShieldWindow;
  v3 = [(_UIRootWindow *)&v7 initWithDisplay:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(SBInactiveTouchShieldWindow *)v3 layer];
    [v5 setHitTestsAsOpaque:1];
  }

  return v4;
}

@end