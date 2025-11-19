@interface TPCachedViableBottles
- (TPCachedViableBottles)initWithViableBottles:(id)a3 partialBottles:(id)a4;
@end

@implementation TPCachedViableBottles

- (TPCachedViableBottles)initWithViableBottles:(id)a3 partialBottles:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TPCachedViableBottles;
  v9 = [(TPCachedViableBottles *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viableBottles, a3);
    objc_storeStrong(&v10->_partialBottles, a4);
  }

  return v10;
}

@end