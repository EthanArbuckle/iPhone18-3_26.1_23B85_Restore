@interface WFToolKitIndexer
- (void)reindexWithRequest:(WFToolKitIndexingRequest *)a3 completionHandler:(id)a4;
@end

@implementation WFToolKitIndexer

- (void)reindexWithRequest:(WFToolKitIndexingRequest *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1000639A8();
}

@end