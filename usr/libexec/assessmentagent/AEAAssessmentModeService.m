@interface AEAAssessmentModeService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC15assessmentagent24AEAAssessmentModeService)init;
- (void)dealloc;
- (void)registerPublisherWithLifetimeEndpoint:(id)a3 completion:(id)a4;
@end

@implementation AEAAssessmentModeService

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_XPCListener);
  v3 = self;
  [v2 invalidate];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for AEAAssessmentModeService();
  [(AEAAssessmentModeService *)&v4 dealloc];
}

- (_TtC15assessmentagent24AEAAssessmentModeService)init
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
  v9 = sub_100065290(v7);

  return v9 & 1;
}

- (void)registerPublisherWithLifetimeEndpoint:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_100063D14(v8, sub_10004F740, v7);
}

@end