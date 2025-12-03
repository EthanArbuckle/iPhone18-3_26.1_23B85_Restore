@interface _UIProxyDismissInteraction
- (_UIProxyDismissInteraction)init;
- (void)beginAtLocation:(CGPoint)location withVelocity:(CGPoint)velocity;
- (void)cancelWithVelocity:(CGPoint)velocity originalPosition:(CGPoint)position;
- (void)dismissWithVelocity:(CGPoint)velocity;
- (void)issueUpdate:(id)update;
@end

@implementation _UIProxyDismissInteraction

- (void)beginAtLocation:(CGPoint)location withVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v6 = location.y;
  v7 = location.x;
  selfCopy = self;
  sub_189086860(v7, v6, x, y);
}

- (void)issueUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  sub_189086A58(updateCopy);
}

- (void)dismissWithVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  selfCopy = self;
  if ([(_UIDismissInteraction *)selfCopy isActive])
  {
    delegate = [(_UIDismissInteraction *)selfCopy delegate];
    if (delegate)
    {
      [(_UIDismissInteractionDelegate *)delegate dismissInteraction:selfCopy didDismissWithVelocity:x, y];
      swift_unknownObjectRelease();
    }

    selfCopy->_UIDismissInteraction_opaque[OBJC_IVAR____UIDismissInteraction__isActive] = 0;
  }
}

- (void)cancelWithVelocity:(CGPoint)velocity originalPosition:(CGPoint)position
{
  y = velocity.y;
  x = velocity.x;
  selfCopy = self;
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