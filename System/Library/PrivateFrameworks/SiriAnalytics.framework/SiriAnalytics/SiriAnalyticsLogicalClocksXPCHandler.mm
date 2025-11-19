@interface SiriAnalyticsLogicalClocksXPCHandler
- (void)allWithCompletionHandler:(id)a3;
@end

@implementation SiriAnalyticsLogicalClocksXPCHandler

- (void)allWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_1D9905654(&unk_1D9932740, v5);
}

@end