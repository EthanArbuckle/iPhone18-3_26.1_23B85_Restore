@interface SwiftUIProvider
- (BOOL)shouldInitializeWithLogger:(id)a3 machine:(void *)a4 options:(id)a5 error:(id *)a6;
- (BOOL)shouldStartTracingWithConfiguration:(void *)a3 error:(id *)a4;
- (SwiftUIProvider)init;
- (id)describeChunk:(void *)a3;
- (void)willFinishWithCatalog:(void *)a3 file:(void *)a4;
@end

@implementation SwiftUIProvider

- (SwiftUIProvider)init
{
  ObjectType = swift_getObjectType();
  v4 = *(*(type metadata accessor for TraceConfig.Version() - 8) + 64);
  __chkstk_darwin();
  *(&self->super.isa + OBJC_IVAR___SwiftUIProvider_tracer) = 0;
  (*(v6 + 104))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for TraceConfig.Version.v0(_:));
  TraceConfig.init(version:compression:viewTree:sync:)();
  *(&self->super.isa + OBJC_IVAR___SwiftUIProvider_logger) = 0;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(SwiftUIProvider *)&v8 init];
}

- (BOOL)shouldInitializeWithLogger:(id)a3 machine:(void *)a4 options:(id)a5 error:(id *)a6
{
  v8 = type metadata accessor for TraceConfig();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = *(&self->super.isa + OBJC_IVAR___SwiftUIProvider_logger);
  *(&self->super.isa + OBJC_IVAR___SwiftUIProvider_logger) = a3;
  swift_unknownObjectRetain_n();
  v14 = self;
  swift_unknownObjectRelease();

  TraceConfig.init(_:)();

  swift_unknownObjectRelease();
  v15 = OBJC_IVAR___SwiftUIProvider_config;
  swift_beginAccess();
  (*(v9 + 40))(v14 + v15, v12, v8);
  swift_endAccess();

  return 1;
}

- (BOOL)shouldStartTracingWithConfiguration:(void *)a3 error:(id *)a4
{
  v4 = self;
  specialized SwiftUIProvider.shouldStartTracing(configuration:)();

  return 1;
}

- (void)willFinishWithCatalog:(void *)a3 file:(void *)a4
{
  v5 = self;
  specialized SwiftUIProvider.willFinish(catalog:file:)(a4);
}

- (id)describeChunk:(void *)a3
{
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end