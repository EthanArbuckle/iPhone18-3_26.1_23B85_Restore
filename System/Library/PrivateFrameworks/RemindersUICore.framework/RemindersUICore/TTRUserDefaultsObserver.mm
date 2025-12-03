@interface TTRUserDefaultsObserver
- (_TtC15RemindersUICore23TTRUserDefaultsObserver)init;
- (void)dealloc;
- (void)stopObserving;
@end

@implementation TTRUserDefaultsObserver

- (void)stopObserving
{
  v2 = OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed;
  if ((*(&self->super.isa + OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed) & 1) == 0)
  {
    selfCopy = self;
    sub_21DA52394(selfCopy);
    *(&self->super.isa + v2) = 1;
  }
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed;
  if (*(&self->super.isa + OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed) == 1)
  {
    selfCopy = self;
  }

  else
  {
    sub_21DA52394(self);
    *(&self->super.isa + v4) = 1;
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(TTRUserDefaultsObserver *)&v6 dealloc];
}

- (_TtC15RemindersUICore23TTRUserDefaultsObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end