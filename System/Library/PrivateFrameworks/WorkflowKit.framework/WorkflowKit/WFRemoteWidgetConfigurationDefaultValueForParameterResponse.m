@interface WFRemoteWidgetConfigurationDefaultValueForParameterResponse
- (WFRemoteWidgetConfigurationDefaultValueForParameterResponse)initWithCoder:(id)a3;
- (WFRemoteWidgetConfigurationDefaultValueForParameterResponse)initWithDefaultValue:(id)a3 error:(id)a4;
- (id)description;
@end

@implementation WFRemoteWidgetConfigurationDefaultValueForParameterResponse

- (WFRemoteWidgetConfigurationDefaultValueForParameterResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFRemoteWidgetConfigurationDefaultValueForParameterResponse;
  v5 = [(WFRemoteWidgetConfigurationResponse *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"defaultValue"];
    defaultValue = v5->_defaultValue;
    v5->_defaultValue = v6;

    v8 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(WFRemoteWidgetConfigurationDefaultValueForParameterResponse *)self defaultValue];
  v5 = [(WFRemoteWidgetConfigurationResponse *)self error];
  v6 = [v3 stringWithFormat:@"defaultValue: %@, error: %@", v4, v5];

  return v6;
}

- (WFRemoteWidgetConfigurationDefaultValueForParameterResponse)initWithDefaultValue:(id)a3 error:(id)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = WFRemoteWidgetConfigurationDefaultValueForParameterResponse;
  v8 = [(WFRemoteWidgetConfigurationResponse *)&v12 initWithError:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_defaultValue, a3);
    v10 = v9;
  }

  return v9;
}

@end