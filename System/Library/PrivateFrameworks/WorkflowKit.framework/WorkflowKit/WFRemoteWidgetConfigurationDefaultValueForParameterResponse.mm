@interface WFRemoteWidgetConfigurationDefaultValueForParameterResponse
- (WFRemoteWidgetConfigurationDefaultValueForParameterResponse)initWithCoder:(id)coder;
- (WFRemoteWidgetConfigurationDefaultValueForParameterResponse)initWithDefaultValue:(id)value error:(id)error;
- (id)description;
@end

@implementation WFRemoteWidgetConfigurationDefaultValueForParameterResponse

- (WFRemoteWidgetConfigurationDefaultValueForParameterResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFRemoteWidgetConfigurationDefaultValueForParameterResponse;
  v5 = [(WFRemoteWidgetConfigurationResponse *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"defaultValue"];
    defaultValue = v5->_defaultValue;
    v5->_defaultValue = v6;

    v8 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  defaultValue = [(WFRemoteWidgetConfigurationDefaultValueForParameterResponse *)self defaultValue];
  error = [(WFRemoteWidgetConfigurationResponse *)self error];
  v6 = [v3 stringWithFormat:@"defaultValue: %@, error: %@", defaultValue, error];

  return v6;
}

- (WFRemoteWidgetConfigurationDefaultValueForParameterResponse)initWithDefaultValue:(id)value error:(id)error
{
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = WFRemoteWidgetConfigurationDefaultValueForParameterResponse;
  v8 = [(WFRemoteWidgetConfigurationResponse *)&v12 initWithError:error];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_defaultValue, value);
    v10 = v9;
  }

  return v9;
}

@end