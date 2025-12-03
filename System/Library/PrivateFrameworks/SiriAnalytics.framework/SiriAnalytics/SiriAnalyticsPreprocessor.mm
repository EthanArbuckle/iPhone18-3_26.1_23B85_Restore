@interface SiriAnalyticsPreprocessor
- (SiriAnalyticsPreprocessor)initWithMetastore:(id)metastore logicalClocks:(id)clocks metastoreQueue:(id)queue telemetry:(id)telemetry messageStaging:(id)staging messageTopics:(id)topics;
- (void)triggerWithReason:(int64_t)reason completion:(id)completion;
@end

@implementation SiriAnalyticsPreprocessor

- (SiriAnalyticsPreprocessor)initWithMetastore:(id)metastore logicalClocks:(id)clocks metastoreQueue:(id)queue telemetry:(id)telemetry messageStaging:(id)staging messageTopics:(id)topics
{
  metastoreCopy = metastore;
  clocksCopy = clocks;
  queueCopy = queue;
  telemetryCopy = telemetry;
  return PreprocessorShim.init(metastore:logicalClocks:metastoreQueue:telemetry:messageStaging:messageTopics:)(metastoreCopy, clocksCopy, queueCopy, telemetry, staging, topics);
}

- (void)triggerWithReason:(int64_t)reason completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  selfCopy = self;
  sub_1D988B8B8(reason, v6, v7);
  sub_1D98750DC(v6);
}

@end