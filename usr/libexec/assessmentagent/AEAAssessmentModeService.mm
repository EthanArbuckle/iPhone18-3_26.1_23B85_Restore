@interface AEAAssessmentModeService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC15assessmentagent24AEAAssessmentModeService)init;
- (void)dealloc;
- (void)registerPublisherWithLifetimeEndpoint:(id)endpoint completion:(id)completion;
@end

@implementation AEAAssessmentModeService

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_XPCListener);
  selfCopy = self;
  [v2 invalidate];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for AEAAssessmentModeService();
  [(AEAAssessmentModeService *)&v4 dealloc];
}

- (_TtC15assessmentagent24AEAAssessmentModeService)init
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
  v9 = sub_100065290(connectionCopy);

  return v9 & 1;
}

- (void)registerPublisherWithLifetimeEndpoint:(id)endpoint completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  endpointCopy = endpoint;
  selfCopy = self;
  sub_100063D14(endpointCopy, sub_10004F740, v7);
}

@end