@interface SBMainSwitcherWindow
- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation SBMainSwitcherWindow

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = SBMainSwitcherWindow;
  v8 = [(SBMainSwitcherWindow *)&v12 hitTest:eventCopy withEvent:x, y];
  v9 = v8;
  if (v8 == self)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  if ([eventCopy type] == 9 && (objc_msgSend(eventCopy, "_isTouchRoutingPolicyBased") & 1) == 0)
  {

    v10 = 0;
  }

  return v10;
}

- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window
{
  if (self == window)
  {
    v10 = v5;
    v11 = v6;
    v9.receiver = self;
    v9.super_class = SBMainSwitcherWindow;
    v7 = [(SBMainSwitcherWindow *)&v9 _hitTest:event withEvent:test.x windowServerHitTestWindow:test.y];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end