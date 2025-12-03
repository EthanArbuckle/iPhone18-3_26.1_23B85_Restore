@interface TVPInterstitial
- (id)description;
@end

@implementation TVPInterstitial

- (id)description
{
  timeRange = [(TVPInterstitial *)self timeRange];
  v3 = [timeRange description];

  return v3;
}

@end