@interface SiriAnalyticsMessageTopics
- (SiriAnalyticsDirectUploadTopic)directUpload;
@end

@implementation SiriAnalyticsMessageTopics

- (SiriAnalyticsDirectUploadTopic)directUpload
{
  v2 = MessageTopicsShim.directUpload.getter();

  return v2;
}

@end