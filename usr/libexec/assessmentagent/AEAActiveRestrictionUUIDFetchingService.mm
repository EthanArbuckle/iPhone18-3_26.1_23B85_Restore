@interface AEAActiveRestrictionUUIDFetchingService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC15assessmentagent39AEAActiveRestrictionUUIDFetchingService)init;
- (void)dealloc;
- (void)fetchSetOfActiveRestrictionUUIDsWithClientType:(id)type completion:(id)completion;
@end

@implementation AEAActiveRestrictionUUIDFetchingService

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC15assessmentagent39AEAActiveRestrictionUUIDFetchingService_XPCListener);
  selfCopy = self;
  [v2 invalidate];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for AEAActiveRestrictionUUIDFetchingService();
  [(AEAActiveRestrictionUUIDFetchingService *)&v4 dealloc];
}

- (_TtC15assessmentagent39AEAActiveRestrictionUUIDFetchingService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10001E684(connectionCopy);

  return v9 & 1;
}

- (void)fetchSetOfActiveRestrictionUUIDsWithClientType:(id)type completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = (*(&self->super.isa + OBJC_IVAR____TtC15assessmentagent39AEAActiveRestrictionUUIDFetchingService_sessionManager))[22];
  swift_beginAccess();
  v7 = *(v6 + 16);
  selfCopy = self;

  isa = Set._bridgeToObjectiveC()().super.isa;

  v5[2](v5, isa, 0);

  _Block_release(v5);
}

@end