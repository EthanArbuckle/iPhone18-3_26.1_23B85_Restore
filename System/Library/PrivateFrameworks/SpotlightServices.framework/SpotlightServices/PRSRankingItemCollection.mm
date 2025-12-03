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
  bundleIdentifier = [(PRSRankingItemCollection *)self bundleIdentifier];
  countOfVisibleResults = [(PRSRankingItemCollection *)self countOfVisibleResults];
  arrayOfRankingItems = [(PRSRankingItemCollection *)self arrayOfRankingItems];
  v8 = [v3 stringWithFormat:@"%@ %@ visible:%llu items:%llu", v4, bundleIdentifier, countOfVisibleResults, objc_msgSend(arrayOfRankingItems, "count")];

  return v8;
}

@end