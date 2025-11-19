@interface RUIContentRegistry
+ (_TtC8RemoteUI18RUIContentRegistry)sharedRegistry;
- (BOOL)supportsViewNamed:(id)a3;
- (_TtC8RemoteUI18RUIContentRegistry)init;
@end

@implementation RUIContentRegistry

+ (_TtC8RemoteUI18RUIContentRegistry)sharedRegistry
{
  if (qword_27CDA0330 != -1)
  {
    swift_once();
  }

  v3 = qword_27CDA0338;

  return v3;
}

- (BOOL)supportsViewNamed:(id)a3
{
  v4 = sub_21BA87CBC();
  v6 = v5;
  v7 = OBJC_IVAR____TtC8RemoteUI18RUIContentRegistry_views;
  swift_beginAccess();
  if ((*(&self->super.isa + v7))[2])
  {

    v8 = self;
    sub_21B940DCC(v4, v6);
    v10 = v9;
  }

  else
  {

    v10 = 0;
  }

  return v10 & 1;
}

- (_TtC8RemoteUI18RUIContentRegistry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end