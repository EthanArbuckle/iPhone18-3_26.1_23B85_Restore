@interface PNBackgroundMemoriesEmbeddingSearcher
- (void)performSearchWithQueries:(NSArray *)a3 retrievalThreshold:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation PNBackgroundMemoriesEmbeddingSearcher

- (void)performSearchWithQueries:(NSArray *)a3 retrievalThreshold:(int64_t)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = self;

  sub_1C73560C0(&unk_1C7584768, v9);
}

@end