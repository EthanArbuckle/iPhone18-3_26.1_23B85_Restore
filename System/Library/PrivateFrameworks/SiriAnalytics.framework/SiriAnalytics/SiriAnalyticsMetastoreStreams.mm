@interface SiriAnalyticsMetastoreStreams
- (id)logicalClocksProviderWithMetastore:(id)metastore queue:(id)queue;
- (void)bootstrapAndPruneWithCompletionHandler:(id)handler;
@end

@implementation SiriAnalyticsMetastoreStreams

- (void)bootstrapAndPruneWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_1D9905654(&unk_1D9931D40, v5);
}

- (id)logicalClocksProviderWithMetastore:(id)metastore queue:(id)queue
{
  metastoreCopy = metastore;
  queueCopy = queue;
  selfCopy = self;
  v9 = sub_1D98A07F4(metastoreCopy, queueCopy);

  return v9;
}

@end