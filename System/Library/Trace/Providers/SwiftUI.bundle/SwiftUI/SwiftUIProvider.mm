@interface SwiftUIProvider
- (BOOL)shouldInitializeWithLogger:(id)logger machine:(void *)machine options:(id)options error:(id *)error;
- (BOOL)shouldStartTracingWithConfiguration:(void *)configuration error:(id *)error;
- (SwiftUIProvider)init;
- (id)describeChunk:(void *)chunk;
- (void)willFinishWithCatalog:(void *)catalog file:(void *)file;
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

- (BOOL)shouldInitializeWithLogger:(id)logger machine:(void *)machine options:(id)options error:(id *)error
{
  v8 = type metadata accessor for TraceConfig();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = *(&self->super.isa + OBJC_IVAR___SwiftUIProvider_logger);
  *(&self->super.isa + OBJC_IVAR___SwiftUIProvider_logger) = logger;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  swift_unknownObjectRelease();

  TraceConfig.init(_:)();

  swift_unknownObjectRelease();
  v15 = OBJC_IVAR___SwiftUIProvider_config;
  swift_beginAccess();
  (*(v9 + 40))(selfCopy + v15, v12, v8);
  swift_endAccess();

  return 1;
}

- (BOOL)shouldStartTracingWithConfiguration:(void *)configuration error:(id *)error
{
  selfCopy = self;
  specialized SwiftUIProvider.shouldStartTracing(configuration:)();

  return 1;
}

- (void)willFinishWithCatalog:(void *)catalog file:(void *)file
{
  selfCopy = self;
  specialized SwiftUIProvider.willFinish(catalog:file:)(file);
}

- (id)describeChunk:(void *)chunk
{
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end