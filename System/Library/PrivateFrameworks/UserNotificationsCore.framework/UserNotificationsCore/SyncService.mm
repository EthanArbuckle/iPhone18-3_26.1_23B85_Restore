@interface SyncService
- (void)dealloc;
@end

@implementation SyncService

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  if (*(&self->super.isa + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_flushTimer))
  {
    v4 = *(&self->super.isa + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_flushTimer);
    swift_getObjectType();
    v5 = self;
    swift_unknownObjectRetain();
    sub_1DA941054();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = self;
  }

  v7.receiver = self;
  v7.super_class = ObjectType;
  [(SyncService *)&v7 dealloc];
}

@end