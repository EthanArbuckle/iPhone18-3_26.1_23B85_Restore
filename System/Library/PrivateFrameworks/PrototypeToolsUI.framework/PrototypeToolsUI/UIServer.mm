@interface UIServer
- (_TtC10prototypedP33_7D6121B4D28911B7760A4E8ABB7760C28UIServer)init;
- (void)handlePrototypingEvent:(int64_t)a3;
- (void)launchForRemoteEditing;
@end

@implementation UIServer

- (void)handlePrototypingEvent:(int64_t)a3
{

  sub_100008EC0(a3);
}

- (_TtC10prototypedP33_7D6121B4D28911B7760A4E8ABB7760C28UIServer)init
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  type metadata accessor for Servers();
  v4 = swift_allocObject();
  *(v4 + 16) = [objc_allocWithZone(PTDomainServer) init];
  *(v4 + 24) = 0;
  *self->servers = v4;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(UIServer *)&v6 init];
}

- (void)launchForRemoteEditing
{
  if (qword_10001FA40 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A9F4(v0, qword_10001FDD0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "launchForRemoteEditing", v2, 2u);
  }
}

@end