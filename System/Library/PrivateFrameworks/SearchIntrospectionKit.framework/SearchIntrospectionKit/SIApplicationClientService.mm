@interface SIApplicationClientService
- (_TtC22SearchIntrospectionKit26SIApplicationClientService)init;
- (_TtP22SearchIntrospectionKit17SIServiceDelegate_)server;
@end

@implementation SIApplicationClientService

- (_TtP22SearchIntrospectionKit17SIServiceDelegate_)server
{
  selfCopy = self;
  v3 = sub_264E77358();

  return v3;
}

- (_TtC22SearchIntrospectionKit26SIApplicationClientService)init
{
  *(&self->super.isa + OBJC_IVAR____TtC22SearchIntrospectionKit26SIApplicationClientService_connection) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC22SearchIntrospectionKit26SIApplicationClientService_remoteServer) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SIApplicationClientService();
  return [(SIApplicationClientService *)&v3 init];
}

@end