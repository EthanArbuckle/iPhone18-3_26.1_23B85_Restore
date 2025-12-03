@interface WFRemoteWidgetConfigurationOptionsForParameterResponse
- (WFRemoteWidgetConfigurationOptionsForParameterResponse)initWithCoder:(id)coder;
- (WFRemoteWidgetConfigurationOptionsForParameterResponse)initWithOptions:(id)options error:(id)error;
- (id)description;
@end

@implementation WFRemoteWidgetConfigurationOptionsForParameterResponse

- (WFRemoteWidgetConfigurationOptionsForParameterResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFRemoteWidgetConfigurationOptionsForParameterResponse;
  v5 = [(WFRemoteWidgetConfigurationResponse *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"options"];
    options = v5->_options;
    v5->_options = v6;

    v8 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  options = [(WFRemoteWidgetConfigurationOptionsForParameterResponse *)self options];
  allItems = [options allItems];
  v6 = [allItems count];
  options2 = [(WFRemoteWidgetConfigurationOptionsForParameterResponse *)self options];
  allItems2 = [options2 allItems];
  error = [(WFRemoteWidgetConfigurationResponse *)self error];
  v10 = [v3 stringWithFormat:@"options count: %lu, items: %@, error: %@", v6, allItems2, error];

  return v10;
}

- (WFRemoteWidgetConfigurationOptionsForParameterResponse)initWithOptions:(id)options error:(id)error
{
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = WFRemoteWidgetConfigurationOptionsForParameterResponse;
  v8 = [(WFRemoteWidgetConfigurationResponse *)&v12 initWithError:error];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_options, options);
    v10 = v9;
  }

  return v9;
}

@end