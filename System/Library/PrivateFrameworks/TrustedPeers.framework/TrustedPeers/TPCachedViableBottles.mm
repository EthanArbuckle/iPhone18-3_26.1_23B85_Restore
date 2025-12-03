@interface TPCachedViableBottles
- (TPCachedViableBottles)initWithViableBottles:(id)bottles partialBottles:(id)partialBottles;
@end

@implementation TPCachedViableBottles

- (TPCachedViableBottles)initWithViableBottles:(id)bottles partialBottles:(id)partialBottles
{
  bottlesCopy = bottles;
  partialBottlesCopy = partialBottles;
  v12.receiver = self;
  v12.super_class = TPCachedViableBottles;
  v9 = [(TPCachedViableBottles *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viableBottles, bottles);
    objc_storeStrong(&v10->_partialBottles, partialBottles);
  }

  return v10;
}

@end