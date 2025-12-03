@interface WFRemoteWidgetConfigurationLNOptionsForParameterResponse
- (WFRemoteWidgetConfigurationLNOptionsForParameterResponse)initWithCoder:(id)coder;
- (WFRemoteWidgetConfigurationLNOptionsForParameterResponse)initWithResult:(id)result error:(id)error;
- (id)description;
@end

@implementation WFRemoteWidgetConfigurationLNOptionsForParameterResponse

- (WFRemoteWidgetConfigurationLNOptionsForParameterResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFRemoteWidgetConfigurationLNOptionsForParameterResponse;
  v5 = [(WFRemoteWidgetConfigurationResponse *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"result"];
    v7 = v5->_result;
    v5->_result = v6;

    v8 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  result = [(WFRemoteWidgetConfigurationLNOptionsForParameterResponse *)self result];
  error = [(WFRemoteWidgetConfigurationResponse *)self error];
  v6 = [v3 stringWithFormat:@"result: %@, error: %@", result, error];

  return v6;
}

- (WFRemoteWidgetConfigurationLNOptionsForParameterResponse)initWithResult:(id)result error:(id)error
{
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = WFRemoteWidgetConfigurationLNOptionsForParameterResponse;
  v8 = [(WFRemoteWidgetConfigurationResponse *)&v12 initWithError:error];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_result, result);
    v10 = v9;
  }

  return v9;
}

@end