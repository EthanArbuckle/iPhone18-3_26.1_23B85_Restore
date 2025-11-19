@interface WFRemoteWidgetConfigurationOptionsForParameterResponse
- (WFRemoteWidgetConfigurationOptionsForParameterResponse)initWithCoder:(id)a3;
- (WFRemoteWidgetConfigurationOptionsForParameterResponse)initWithOptions:(id)a3 error:(id)a4;
- (id)description;
@end

@implementation WFRemoteWidgetConfigurationOptionsForParameterResponse

- (WFRemoteWidgetConfigurationOptionsForParameterResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFRemoteWidgetConfigurationOptionsForParameterResponse;
  v5 = [(WFRemoteWidgetConfigurationResponse *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"options"];
    options = v5->_options;
    v5->_options = v6;

    v8 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(WFRemoteWidgetConfigurationOptionsForParameterResponse *)self options];
  v5 = [v4 allItems];
  v6 = [v5 count];
  v7 = [(WFRemoteWidgetConfigurationOptionsForParameterResponse *)self options];
  v8 = [v7 allItems];
  v9 = [(WFRemoteWidgetConfigurationResponse *)self error];
  v10 = [v3 stringWithFormat:@"options count: %lu, items: %@, error: %@", v6, v8, v9];

  return v10;
}

- (WFRemoteWidgetConfigurationOptionsForParameterResponse)initWithOptions:(id)a3 error:(id)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = WFRemoteWidgetConfigurationOptionsForParameterResponse;
  v8 = [(WFRemoteWidgetConfigurationResponse *)&v12 initWithError:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_options, a3);
    v10 = v9;
  }

  return v9;
}

@end