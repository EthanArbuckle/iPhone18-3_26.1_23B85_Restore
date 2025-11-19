@interface SPSearchResult
- (SPSearchResult)initWithRankingItem:(id)a3;
- (id)description;
@end

@implementation SPSearchResult

- (SPSearchResult)initWithRankingItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SPSearchResult;
  v6 = [(SPSearchResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rankingItem, a3);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = SPSearchResult;
  v4 = [(SPSearchResult *)&v12 description];
  bundleID = self->_bundleID;
  v6 = [(NSString *)self->_identifier stringByPaddingToLength:10 withString:@" " startingAtIndex:0];
  interestingDate = self->_interestingDate;
  scoreL1 = self->_scoreL1;
  [(PRSRankingItem *)self->_rankingItem l2Score];
  v10 = [v3 stringWithFormat:@"%@ bid = %@ uid = %@: (%@) L1 = %.04f, L2 = %.04f", v4, bundleID, v6, interestingDate, *&scoreL1, v9];

  return v10;
}

@end