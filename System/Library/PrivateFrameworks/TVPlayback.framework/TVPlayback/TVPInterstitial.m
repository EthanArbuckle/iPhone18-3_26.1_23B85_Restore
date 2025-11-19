@interface TVPInterstitial
- (id)description;
@end

@implementation TVPInterstitial

- (id)description
{
  v2 = [(TVPInterstitial *)self timeRange];
  v3 = [v2 description];

  return v3;
}

@end