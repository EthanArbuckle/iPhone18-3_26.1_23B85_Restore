@interface SBMainSwitcherWindow
- (id)_hitTest:(CGPoint)a3 withEvent:(id)a4 windowServerHitTestWindow:(id)a5;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SBMainSwitcherWindow

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SBMainSwitcherWindow;
  v8 = [(SBMainSwitcherWindow *)&v12 hitTest:v7 withEvent:x, y];
  v9 = v8;
  if (v8 == self)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  if ([v7 type] == 9 && (objc_msgSend(v7, "_isTouchRoutingPolicyBased") & 1) == 0)
  {

    v10 = 0;
  }

  return v10;
}

- (id)_hitTest:(CGPoint)a3 withEvent:(id)a4 windowServerHitTestWindow:(id)a5
{
  if (self == a5)
  {
    v10 = v5;
    v11 = v6;
    v9.receiver = self;
    v9.super_class = SBMainSwitcherWindow;
    v7 = [(SBMainSwitcherWindow *)&v9 _hitTest:a4 withEvent:a3.x windowServerHitTestWindow:a3.y];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end