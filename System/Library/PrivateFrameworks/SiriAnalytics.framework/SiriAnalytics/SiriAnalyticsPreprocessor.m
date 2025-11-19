@interface SiriAnalyticsPreprocessor
- (SiriAnalyticsPreprocessor)initWithMetastore:(id)a3 logicalClocks:(id)a4 metastoreQueue:(id)a5 telemetry:(id)a6 messageStaging:(id)a7 messageTopics:(id)a8;
- (void)triggerWithReason:(int64_t)a3 completion:(id)a4;
@end

@implementation SiriAnalyticsPreprocessor

- (SiriAnalyticsPreprocessor)initWithMetastore:(id)a3 logicalClocks:(id)a4 metastoreQueue:(id)a5 telemetry:(id)a6 messageStaging:(id)a7 messageTopics:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  return PreprocessorShim.init(metastore:logicalClocks:metastoreQueue:telemetry:messageStaging:messageTopics:)(v13, v14, v15, a6, a7, a8);
}

- (void)triggerWithReason:(int64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1D988C448;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_1D988B8B8(a3, v6, v7);
  sub_1D98750DC(v6);
}

@end