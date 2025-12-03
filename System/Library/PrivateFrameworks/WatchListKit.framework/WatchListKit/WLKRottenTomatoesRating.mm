@interface WLKRottenTomatoesRating
+ (unint64_t)freshnessForString:(id)string;
- (WLKRottenTomatoesRating)initWithFreshness:(unint64_t)freshness freshnessPercentage:(id)percentage;
@end

@implementation WLKRottenTomatoesRating

+ (unint64_t)freshnessForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqual:@"Rotten"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqual:@"Fresh"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqual:@"CertifiedFresh"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (WLKRottenTomatoesRating)initWithFreshness:(unint64_t)freshness freshnessPercentage:(id)percentage
{
  percentageCopy = percentage;
  v11.receiver = self;
  v11.super_class = WLKRottenTomatoesRating;
  v8 = [(WLKRottenTomatoesRating *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_freshness = freshness;
    objc_storeStrong(&v8->_freshnessPercentage, percentage);
  }

  return v9;
}

@end