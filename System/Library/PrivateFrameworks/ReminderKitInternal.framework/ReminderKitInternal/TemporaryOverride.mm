@interface TemporaryOverride
- (_TtC19ReminderKitInternalP33_BCDA9BEAAF9519B32B6DBABA4FDACDFF17TemporaryOverride)init;
- (void)dealloc;
@end

@implementation TemporaryOverride

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  if (*(&self->super.isa + OBJC_IVAR____TtC19ReminderKitInternalP33_BCDA9BEAAF9519B32B6DBABA4FDACDFF17TemporaryOverride_finishCalled) == 1)
  {
    v4 = self;
  }

  else
  {
    *(&self->super.isa + OBJC_IVAR____TtC19ReminderKitInternalP33_BCDA9BEAAF9519B32B6DBABA4FDACDFF17TemporaryOverride_finishCalled) = 1;
    v5 = qword_280C9C350;
    v6 = self;
    if (v5 != -1)
    {
      v8 = v6;
      swift_once();
      v6 = v8;
    }

    v7 = *(&v6->super.isa + OBJC_IVAR____TtC19ReminderKitInternalP33_BCDA9BEAAF9519B32B6DBABA4FDACDFF17TemporaryOverride_overridesToRestore);
    swift_beginAccess();
    off_280C9C358 = v7;
  }

  v9.receiver = self;
  v9.super_class = ObjectType;
  [(TemporaryOverride *)&v9 dealloc];
}

- (_TtC19ReminderKitInternalP33_BCDA9BEAAF9519B32B6DBABA4FDACDFF17TemporaryOverride)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end