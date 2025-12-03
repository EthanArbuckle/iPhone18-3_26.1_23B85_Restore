@interface SiriAnalyticsDirectUploadTopic
- (void)append:(SISchemaAnyEvent *)append topic:(NSString *)topic completionHandler:(id)handler;
@end

@implementation SiriAnalyticsDirectUploadTopic

- (void)append:(SISchemaAnyEvent *)append topic:(NSString *)topic completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = append;
  v9[3] = topic;
  v9[4] = v8;
  v9[5] = self;
  appendCopy = append;
  topicCopy = topic;
  selfCopy = self;

  sub_1D9905654(&unk_1D9935800, v9);
}

@end