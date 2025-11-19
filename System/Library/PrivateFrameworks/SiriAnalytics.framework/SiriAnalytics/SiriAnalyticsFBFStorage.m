@interface SiriAnalyticsFBFStorage
- (SiriAnalyticsFBFStorage)initWithApplicationIdentifier:(id)a3 telemetry:(id)a4;
- (void)store:(SISchemaAnyEvent *)a3 topic:(NSString *)a4 completionHandler:(id)a5;
@end

@implementation SiriAnalyticsFBFStorage

- (SiriAnalyticsFBFStorage)initWithApplicationIdentifier:(id)a3 telemetry:(id)a4
{
  v5 = sub_1D992B624();
  v7 = v6;
  v8 = a4;
  return FBFStorageShim.init(applicationIdentifier:telemetry:)(v5, v7, a4);
}

- (void)store:(SISchemaAnyEvent *)a3 topic:(NSString *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_1D9905654(&unk_1D9933450, v9);
}

@end