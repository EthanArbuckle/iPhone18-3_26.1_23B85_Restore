@interface WFRemoteWidgetConfigurationDefaultLNOptionForParameterResponse
- (WFRemoteWidgetConfigurationDefaultLNOptionForParameterResponse)initWithCoder:(id)coder;
- (WFRemoteWidgetConfigurationDefaultLNOptionForParameterResponse)initWithDefaultOption:(id)option error:(id)error;
- (id)description;
@end

@implementation WFRemoteWidgetConfigurationDefaultLNOptionForParameterResponse

- (WFRemoteWidgetConfigurationDefaultLNOptionForParameterResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFRemoteWidgetConfigurationDefaultLNOptionForParameterResponse;
  v5 = [(WFRemoteWidgetConfigurationResponse *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultOption"];
    defaultOption = v5->_defaultOption;
    v5->_defaultOption = v6;

    v8 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  defaultOption = [(WFRemoteWidgetConfigurationDefaultLNOptionForParameterResponse *)self defaultOption];
  error = [(WFRemoteWidgetConfigurationResponse *)self error];
  v6 = [v3 stringWithFormat:@"defaultOption: %@, error: %@", defaultOption, error];

  return v6;
}

- (WFRemoteWidgetConfigurationDefaultLNOptionForParameterResponse)initWithDefaultOption:(id)option error:(id)error
{
  optionCopy = option;
  v12.receiver = self;
  v12.super_class = WFRemoteWidgetConfigurationDefaultLNOptionForParameterResponse;
  v8 = [(WFRemoteWidgetConfigurationResponse *)&v12 initWithError:error];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_defaultOption, option);
    v10 = v9;
  }

  return v9;
}

@end