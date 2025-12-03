@interface SiriAnalyticsFBFStorage
- (SiriAnalyticsFBFStorage)initWithApplicationIdentifier:(id)identifier telemetry:(id)telemetry;
- (void)store:(SISchemaAnyEvent *)store topic:(NSString *)topic completionHandler:(id)handler;
@end

@implementation SiriAnalyticsFBFStorage

- (SiriAnalyticsFBFStorage)initWithApplicationIdentifier:(id)identifier telemetry:(id)telemetry
{
  v5 = sub_1D992B624();
  v7 = v6;
  telemetryCopy = telemetry;
  return FBFStorageShim.init(applicationIdentifier:telemetry:)(v5, v7, telemetry);
}

- (void)store:(SISchemaAnyEvent *)store topic:(NSString *)topic completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = store;
  v9[3] = topic;
  v9[4] = v8;
  v9[5] = self;
  storeCopy = store;
  topicCopy = topic;
  selfCopy = self;

  sub_1D9905654(&unk_1D9933450, v9);
}

@end