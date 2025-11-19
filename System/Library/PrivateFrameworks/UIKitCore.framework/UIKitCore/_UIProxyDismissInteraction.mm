@interface _UIProxyDismissInteraction
- (_UIProxyDismissInteraction)init;
- (void)beginAtLocation:(CGPoint)a3 withVelocity:(CGPoint)a4;
- (void)cancelWithVelocity:(CGPoint)a3 originalPosition:(CGPoint)a4;
- (void)dismissWithVelocity:(CGPoint)a3;
- (void)issueUpdate:(id)a3;
@end

@implementation _UIProxyDismissInteraction

- (void)beginAtLocation:(CGPoint)a3 withVelocity:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v8 = self;
  sub_189086860(v7, v6, x, y);
}

- (void)issueUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_189086A58(v4);
}

- (void)dismissWithVelocity:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  if ([(_UIDismissInteraction *)v6 isActive])
  {
    v5 = [(_UIDismissInteraction *)v6 delegate];
    if (v5)
    {
      [(_UIDismissInteractionDelegate *)v5 dismissInteraction:v6 didDismissWithVelocity:x, y];
      swift_unknownObjectRelease();
    }

    v6->_UIDismissInteraction_opaque[OBJC_IVAR____UIDismissInteraction__isActive] = 0;
  }
}

- (void)cancelWithVelocity:(CGPoint)a3 originalPosition:(CGPoint)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  sub_189086F00(x, y);
}

- (_UIProxyDismissInteraction)init
{
  swift_unknownObjectWeakInit();
  self->_UIDismissInteraction_opaque[OBJC_IVAR____UIProxyDismissInteraction_trackingViewDidBecomeVisible] = 0;
  v3 = &self->_UIDismissInteraction_opaque[OBJC_IVAR____UIProxyDismissInteraction_originalTrackingViewPosition];
  *v3 = 0;
  *(v3 + 1) = 0;
  v5.receiver = self;
  v5.super_class = _UIProxyDismissInteraction;
  return [(_UIDismissInteraction *)&v5 init];
}

@end