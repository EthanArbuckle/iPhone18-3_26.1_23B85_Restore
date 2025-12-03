@interface PNBackgroundMemoriesEmbeddingSearcher
- (void)performSearchWithQueries:(NSArray *)queries retrievalThreshold:(int64_t)threshold completionHandler:(id)handler;
@end

@implementation PNBackgroundMemoriesEmbeddingSearcher

- (void)performSearchWithQueries:(NSArray *)queries retrievalThreshold:(int64_t)threshold completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = queries;
  v9[3] = threshold;
  v9[4] = v8;
  v9[5] = self;
  queriesCopy = queries;
  selfCopy = self;

  sub_1C73560C0(&unk_1C7584768, v9);
}

@end