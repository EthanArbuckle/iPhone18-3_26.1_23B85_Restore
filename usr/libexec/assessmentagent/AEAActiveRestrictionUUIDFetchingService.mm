@interface AEAActiveRestrictionUUIDFetchingService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC15assessmentagent39AEAActiveRestrictionUUIDFetchingService)init;
- (void)dealloc;
- (void)fetchSetOfActiveRestrictionUUIDsWithClientType:(id)a3 completion:(id)a4;
@end

@implementation AEAActiveRestrictionUUIDFetchingService

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC15assessmentagent39AEAActiveRestrictionUUIDFetchingService_XPCListener);
  v3 = self;
  [v2 invalidate];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for AEAActiveRestrictionUUIDFetchingService();
  [(AEAActiveRestrictionUUIDFetchingService *)&v4 dealloc];
}

- (_TtC15assessmentagent39AEAActiveRestrictionUUIDFetchingService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10001E684(v7);

  return v9 & 1;
}

- (void)fetchSetOfActiveRestrictionUUIDsWithClientType:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = (*(&self->super.isa + OBJC_IVAR____TtC15assessmentagent39AEAActiveRestrictionUUIDFetchingService_sessionManager))[22];
  swift_beginAccess();
  v7 = *(v6 + 16);
  v8 = self;

  isa = Set._bridgeToObjectiveC()().super.isa;

  v5[2](v5, isa, 0);

  _Block_release(v5);
}

@end