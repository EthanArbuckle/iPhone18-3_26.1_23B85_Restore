@interface SiriAnalyticsLogicalClocksXPCHandler
- (void)allWithCompletionHandler:(id)handler;
@end

@implementation SiriAnalyticsLogicalClocksXPCHandler

- (void)allWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_1D9905654(&unk_1D9932740, v5);
}

@end