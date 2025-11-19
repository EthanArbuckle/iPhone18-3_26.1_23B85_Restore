@interface UserDefaultsObserver
- (_TtC20SmartStackFoundation20UserDefaultsObserver)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation UserDefaultsObserver

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a4)
  {
    v7 = self;
    swift_unknownObjectRetain();
    sub_26A06220C();
    v8 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = self;
  }

  v9 = *&self->defaults[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_changeHandler];
  (*(&self->super.isa + OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_changeHandler))(v8);
  sub_26A05F3B4(v10);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_defaults);
  v5 = *(&self->super.isa + OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_preference);
  v6 = *&self->defaults[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_preference];
  v7 = self;
  v8 = v4;

  v9 = sub_26A061EFC();

  [v8 removeObserver:v7 forKeyPath:v9];

  v10.receiver = v7;
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