@interface SiriAnalyticsMetastoreStreams
- (id)logicalClocksProviderWithMetastore:(id)a3 queue:(id)a4;
- (void)bootstrapAndPruneWithCompletionHandler:(id)a3;
@end

@implementation SiriAnalyticsMetastoreStreams

- (void)bootstrapAndPruneWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_1D9905654(&unk_1D9931D40, v5);
}

- (id)logicalClocksProviderWithMetastore:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1D98A07F4(v6, v7);

  return v9;
}

@end