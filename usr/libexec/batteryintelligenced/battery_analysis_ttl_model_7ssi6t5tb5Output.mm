@interface battery_analysis_ttl_model_7ssi6t5tb5Output
- (battery_analysis_ttl_model_7ssi6t5tb5Output)initWithTtl_prediction:(id)ttl_prediction;
- (id)featureValueForName:(id)name;
@end

@implementation battery_analysis_ttl_model_7ssi6t5tb5Output

- (battery_analysis_ttl_model_7ssi6t5tb5Output)initWithTtl_prediction:(id)ttl_prediction
{
  ttl_predictionCopy = ttl_prediction;
  v9.receiver = self;
  v9.super_class = battery_analysis_ttl_model_7ssi6t5tb5Output;
  v6 = [(battery_analysis_ttl_model_7ssi6t5tb5Output *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ttl_prediction, ttl_prediction);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"ttl_prediction"])
  {
    ttl_prediction = [(battery_analysis_ttl_model_7ssi6t5tb5Output *)self ttl_prediction];
    v5 = [MLFeatureValue featureValueWithMultiArray:ttl_prediction];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end