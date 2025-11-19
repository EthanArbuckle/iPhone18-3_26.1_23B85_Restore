@interface SPTopHitResult
- (SPTopHitResult)initWithRankingItem:(id)a3;
@end

@implementation SPTopHitResult

- (SPTopHitResult)initWithRankingItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SPTopHitResult;
  v6 = [(SPTopHitResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rankingItem, a3);
  }

  return v7;
}

@end