@interface WFReachabilityConfigurationResponse
- (NWPathEvaluator)pathEvaluator;
- (WFReachabilityConfigurationResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFReachabilityConfigurationResponse

- (WFReachabilityConfigurationResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = WFReachabilityConfigurationResponse;
  v5 = [(WFResponse *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFReachabilityConfiguratiionReachabilityHostURLKey"];
    [(WFReachabilityConfigurationResponse *)v5 setReachabilityHostURL:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFReachabilityConfigurationResponse;
  coderCopy = coder;
  [(WFResponse *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFReachabilityConfigurationResponse *)self reachabilityHostURL:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"WFReachabilityConfiguratiionReachabilityHostURLKey"];
}

- (NWPathEvaluator)pathEvaluator
{
  reachabilityHostURL = [(WFReachabilityConfigurationResponse *)self reachabilityHostURL];
  v3 = [MEMORY[0x277CD9200] wf_pathEvaluatorForURL:reachabilityHostURL];

  return v3;
}

@end