@interface NCNotificationListHighlightsDragState
- (CGPoint)startPoint;
- (CGPoint)translation;
- (CGPoint)velocity;
- (NCNotificationListHighlightsDragState)init;
@end

@implementation NCNotificationListHighlightsDragState

- (CGPoint)translation
{
  v2 = *(&self->super.isa + OBJC_IVAR___NCNotificationListHighlightsDragState_translation);
  v3 = *(&self->translation.x + OBJC_IVAR___NCNotificationListHighlightsDragState_translation);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)velocity
{
  v2 = *(&self->super.isa + OBJC_IVAR___NCNotificationListHighlightsDragState_velocity);
  v3 = *(&self->translation.x + OBJC_IVAR___NCNotificationListHighlightsDragState_velocity);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)startPoint
{
  v2 = *(&self->super.isa + OBJC_IVAR___NCNotificationListHighlightsDragState_startPoint);
  v3 = *(&self->translation.x + OBJC_IVAR___NCNotificationListHighlightsDragState_startPoint);
  result.y = v3;
  result.x = v2;
  return result;
}

- (NCNotificationListHighlightsDragState)init
{
  v2 = (&self->super.isa + OBJC_IVAR___NCNotificationListHighlightsDragState_translation);
  *v2 = 0;
  v2[1] = 0;
  v3 = (&self->super.isa + OBJC_IVAR___NCNotificationListHighlightsDragState_velocity);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.isa + OBJC_IVAR___NCNotificationListHighlightsDragState_startPoint);
  *v4 = 0;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = NCNotificationListHighlightsDragState;
  return [(NCNotificationListHighlightsDragState *)&v6 init];
}

@end