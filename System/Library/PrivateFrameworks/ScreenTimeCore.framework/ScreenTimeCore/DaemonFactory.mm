@interface DaemonFactory
+ (id)makeDaemon;
- (_TtC15ScreenTimeAgent13DaemonFactory)init;
@end

@implementation DaemonFactory

+ (id)makeDaemon
{
  v2 = type metadata accessor for ConcreteDependencyFactory();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_1000FC3D8();
  v6 = objc_allocWithZone(type metadata accessor for Daemon());
  v7 = sub_1000DB2A0(v5, v6);

  return v7;
}

- (_TtC15ScreenTimeAgent13DaemonFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DaemonFactory();
  return [(DaemonFactory *)&v3 init];
}

@end