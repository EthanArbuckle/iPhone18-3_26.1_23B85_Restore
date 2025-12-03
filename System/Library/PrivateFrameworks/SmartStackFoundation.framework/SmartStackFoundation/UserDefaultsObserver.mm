@interface UserDefaultsObserver
- (_TtC20SmartStackFoundation20UserDefaultsObserver)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation UserDefaultsObserver

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (object)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_26A06220C();
    selfCopy2 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v9 = *&self->defaults[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_changeHandler];
  (*(&self->super.isa + OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_changeHandler))(selfCopy2);
  sub_26A05F3B4(v10);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_defaults);
  v5 = *(&self->super.isa + OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_preference);
  v6 = *&self->defaults[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_preference];
  selfCopy = self;
  v8 = v4;

  v9 = sub_26A061EFC();

  [v8 removeObserver:selfCopy forKeyPath:v9];

  v10.receiver = selfCopy;
  v10.super_class = ObjectType;
  [(UserDefaultsObserver *)&v10 dealloc];
}

- (_TtC20SmartStackFoundation20UserDefaultsObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end