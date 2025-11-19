@interface KnoxServiceClient
- (_TtC16KnoxClientPublic17KnoxServiceClient)init;
- (void)dealloc;
@end

@implementation KnoxServiceClient

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_session;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = self;
  [v4 finishTasksAndInvalidate];
  v6.receiver = v5;
  v6.super_class = type metadata accessor for KnoxServiceClient();
  [(KnoxServiceClient *)&v6 dealloc];
}

- (_TtC16KnoxClientPublic17KnoxServiceClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end