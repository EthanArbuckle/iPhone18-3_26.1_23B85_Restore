@interface battery_analysis_ttl_model_7ssi6t5tb5Output
- (battery_analysis_ttl_model_7ssi6t5tb5Output)initWithTtl_prediction:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation battery_analysis_ttl_model_7ssi6t5tb5Output

- (battery_analysis_ttl_model_7ssi6t5tb5Output)initWithTtl_prediction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = battery_analysis_ttl_model_7ssi6t5tb5Output;
  v6 = [(battery_analysis_ttl_model_7ssi6t5tb5Output *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ttl_prediction, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"ttl_prediction"])
  {
    v4 = [(battery_analysis_ttl_model_7ssi6t5tb5Output *)self ttl_prediction];
    v5 = [MLFeatureValue featureValueWithMultiArray:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end