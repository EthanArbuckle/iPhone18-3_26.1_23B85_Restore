@interface WFReachabilityConfigurationResponse
- (NWPathEvaluator)pathEvaluator;
- (WFReachabilityConfigurationResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFReachabilityConfigurationResponse

- (WFReachabilityConfigurationResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFReachabilityConfigurationResponse;
  v5 = [(WFResponse *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFReachabilityConfiguratiionReachabilityHostURLKey"];
    [(WFReachabilityConfigurationResponse *)v5 setReachabilityHostURL:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFReachabilityConfigurationResponse;
  v4 = a3;
  [(WFResponse *)&v6 encodeWithCoder:v4];
  v5 = [(WFReachabilityConfigurationResponse *)self reachabilityHostURL:v6.receiver];
  [v4 encodeObject:v5 forKey:@"WFReachabilityConfiguratiionReachabilityHostURLKey"];
}

- (NWPathEvaluator)pathEvaluator
{
  v2 = [(WFReachabilityConfigurationResponse *)self reachabilityHostURL];
  v3 = [MEMORY[0x277CD9200] wf_pathEvaluatorForURL:v2];

  return v3;
}

@end