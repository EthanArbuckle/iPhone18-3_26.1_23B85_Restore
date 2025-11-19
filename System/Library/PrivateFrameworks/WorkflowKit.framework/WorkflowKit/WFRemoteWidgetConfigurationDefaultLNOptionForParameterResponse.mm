@interface WFRemoteWidgetConfigurationDefaultLNOptionForParameterResponse
- (WFRemoteWidgetConfigurationDefaultLNOptionForParameterResponse)initWithCoder:(id)a3;
- (WFRemoteWidgetConfigurationDefaultLNOptionForParameterResponse)initWithDefaultOption:(id)a3 error:(id)a4;
- (id)description;
@end

@implementation WFRemoteWidgetConfigurationDefaultLNOptionForParameterResponse

- (WFRemoteWidgetConfigurationDefaultLNOptionForParameterResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFRemoteWidgetConfigurationDefaultLNOptionForParameterResponse;
  v5 = [(WFRemoteWidgetConfigurationResponse *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultOption"];
    defaultOption = v5->_defaultOption;
    v5->_defaultOption = v6;

    v8 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(WFRemoteWidgetConfigurationDefaultLNOptionForParameterResponse *)self defaultOption];
  v5 = [(WFRemoteWidgetConfigurationResponse *)self error];
  v6 = [v3 stringWithFormat:@"defaultOption: %@, error: %@", v4, v5];

  return v6;
}

- (WFRemoteWidgetConfigurationDefaultLNOptionForParameterResponse)initWithDefaultOption:(id)a3 error:(id)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = WFRemoteWidgetConfigurationDefaultLNOptionForParameterResponse;
  v8 = [(WFRemoteWidgetConfigurationResponse *)&v12 initWithError:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_defaultOption, a3);
    v10 = v9;
  }

  return v9;
}

@end