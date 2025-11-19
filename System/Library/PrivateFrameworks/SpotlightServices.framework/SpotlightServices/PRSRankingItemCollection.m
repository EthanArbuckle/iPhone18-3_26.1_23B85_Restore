@interface PRSRankingItemCollection
- (id)description;
@end

@implementation PRSRankingItemCollection

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = PRSRankingItemCollection;
  v4 = [(PRSRankingItemCollection *)&v10 description];
  v5 = [(PRSRankingItemCollection *)self bundleIdentifier];
  v6 = [(PRSRankingItemCollection *)self countOfVisibleResults];
  v7 = [(PRSRankingItemCollection *)self arrayOfRankingItems];
  v8 = [v3 stringWithFormat:@"%@ %@ visible:%llu items:%llu", v4, v5, v6, objc_msgSend(v7, "count")];

  return v8;
}

@end