@interface WiFiUsageLQMModes
- (WiFiUsageLQMModes)initWithValue:(id)a3 andOccurrences:(id)a4;
@end

@implementation WiFiUsageLQMModes

- (WiFiUsageLQMModes)initWithValue:(id)a3 andOccurrences:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v13.receiver = self;
    v13.super_class = WiFiUsageLQMModes;
    v11 = [(WiFiUsageLQMModes *)&v13 init];
    objc_storeStrong(&v11->_value, a3);
    objc_storeStrong(&v11->_occurrences, a4);
    self = v11;
    v10 = self;
  }

  return v10;
}

@end