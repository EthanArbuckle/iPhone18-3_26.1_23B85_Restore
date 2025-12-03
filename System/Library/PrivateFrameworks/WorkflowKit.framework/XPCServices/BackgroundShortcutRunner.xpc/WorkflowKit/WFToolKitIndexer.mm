@interface WFToolKitIndexer
- (void)reindexWithRequest:(WFToolKitIndexingRequest *)request completionHandler:(id)handler;
@end

@implementation WFToolKitIndexer

- (void)reindexWithRequest:(WFToolKitIndexingRequest *)request completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = request;
  v7[3] = v6;
  v7[4] = self;
  requestCopy = request;
  selfCopy = self;

  sub_1000639A8();
}

@end