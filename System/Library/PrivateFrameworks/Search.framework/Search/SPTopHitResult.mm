@interface SPTopHitResult
- (SPTopHitResult)initWithRankingItem:(id)item;
- (id)description;
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

- (id)description
{
  v11.receiver = self;
  v11.super_class = SPTopHitResult;
  v3 = [(SPTopHitResult *)&v11 description];
  bundleID = self->_bundleID;
  v5 = [(NSString *)self->_identifier stringByPaddingToLength:10 withString:@" " startingAtIndex:0];
  interestingDate = self->_interestingDate;
  scoreL1 = self->_scoreL1;
  [(PRSRankingItem *)self->_rankingItem l2Score];
  v9 = [NSString stringWithFormat:@"%@ bid = %@ uid = %@: (%@) L1 = %.04f, L2 = %.04f", v3, bundleID, v5, interestingDate, *&scoreL1, v8];

  return v9;
}

@end