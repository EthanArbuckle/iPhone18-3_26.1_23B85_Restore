@interface WLKRottenTomatoesRating
+ (unint64_t)freshnessForString:(id)a3;
- (WLKRottenTomatoesRating)initWithFreshness:(unint64_t)a3 freshnessPercentage:(id)a4;
@end

@implementation WLKRottenTomatoesRating

+ (unint64_t)freshnessForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"Rotten"])
  {
    v4 = 1;
  }

  else if ([v3 isEqual:@"Fresh"])
  {
    v4 = 2;
  }

  else if ([v3 isEqual:@"CertifiedFresh"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (WLKRottenTomatoesRating)initWithFreshness:(unint64_t)a3 freshnessPercentage:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = WLKRottenTomatoesRating;
  v8 = [(WLKRottenTomatoesRating *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_freshness = a3;
    objc_storeStrong(&v8->_freshnessPercentage, a4);
  }

  return v9;
}

@end