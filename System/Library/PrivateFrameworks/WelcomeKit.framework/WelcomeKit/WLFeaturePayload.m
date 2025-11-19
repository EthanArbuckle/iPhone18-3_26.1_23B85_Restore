@interface WLFeaturePayload
- (WLFeaturePayload)init;
@end

@implementation WLFeaturePayload

- (WLFeaturePayload)init
{
  v5.receiver = self;
  v5.super_class = WLFeaturePayload;
  v2 = [(WLFeaturePayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(WLFeaturePayload *)v2 setState:@"?"];
  }

  return v3;
}

@end