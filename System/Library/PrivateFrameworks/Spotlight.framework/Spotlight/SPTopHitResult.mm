@interface SPTopHitResult
- (SPTopHitResult)initWithRankingItem:(id)item;
@end

@implementation SPTopHitResult

- (SPTopHitResult)initWithRankingItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = SPTopHitResult;
  v6 = [(SPTopHitResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rankingItem, item);
  }

  return v7;
}

@end