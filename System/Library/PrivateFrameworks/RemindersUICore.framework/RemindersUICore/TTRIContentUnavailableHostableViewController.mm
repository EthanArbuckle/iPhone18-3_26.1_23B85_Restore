@interface TTRIContentUnavailableHostableViewController
- (TTRIContentUnavailableConfiguration)ttr_contentUnavailableConfiguration;
- (TTRIContentUnavailableConfigurationState)ttr_contentUnavailableConfigurationState;
- (id)_contentUnavailableConfiguration;
- (id)_contentUnavailableConfigurationState;
- (void)_setContentUnavailableConfiguration:(id)configuration;
- (void)_updateContentUnavailableConfigurationUsingState:(id)state;
- (void)ttr_setContentUnavailableConfiguration:(id)configuration;
- (void)ttr_updateContentUnavailableConfigurationUsingState:(id)state;
@end

@implementation TTRIContentUnavailableHostableViewController

- (void)_updateContentUnavailableConfigurationUsingState:(id)state
{
  asTTRI = [state asTTRI];
  [(TTRIContentUnavailableHostableViewController *)self ttr_updateContentUnavailableConfigurationUsingState:asTTRI];
}

- (void)ttr_updateContentUnavailableConfigurationUsingState:(id)state
{
  asUIKit = [state asUIKit];
  v5.receiver = self;
  v5.super_class = TTRIContentUnavailableHostableViewController;
  [(TTRIContentUnavailableHostableViewController *)&v5 _updateContentUnavailableConfigurationUsingState:asUIKit];
}

- (id)_contentUnavailableConfigurationState
{
  ttr_contentUnavailableConfigurationState = [(TTRIContentUnavailableHostableViewController *)self ttr_contentUnavailableConfigurationState];
  asUIKit = [ttr_contentUnavailableConfigurationState asUIKit];

  return asUIKit;
}

- (TTRIContentUnavailableConfigurationState)ttr_contentUnavailableConfigurationState
{
  v5.receiver = self;
  v5.super_class = TTRIContentUnavailableHostableViewController;
  _contentUnavailableConfigurationState = [(TTRIContentUnavailableHostableViewController *)&v5 _contentUnavailableConfigurationState];
  asTTRI = [_contentUnavailableConfigurationState asTTRI];

  return asTTRI;
}

- (void)_setContentUnavailableConfiguration:(id)configuration
{
  asTTRI = [configuration asTTRI];
  [(TTRIContentUnavailableHostableViewController *)self ttr_setContentUnavailableConfiguration:asTTRI];
}

- (void)ttr_setContentUnavailableConfiguration:(id)configuration
{
  asUIKit = [configuration asUIKit];
  v5.receiver = self;
  v5.super_class = TTRIContentUnavailableHostableViewController;
  [(TTRIContentUnavailableHostableViewController *)&v5 _setContentUnavailableConfiguration:asUIKit];
}

- (id)_contentUnavailableConfiguration
{
  ttr_contentUnavailableConfiguration = [(TTRIContentUnavailableHostableViewController *)self ttr_contentUnavailableConfiguration];
  asUIKit = [ttr_contentUnavailableConfiguration asUIKit];

  return asUIKit;
}

- (TTRIContentUnavailableConfiguration)ttr_contentUnavailableConfiguration
{
  v5.receiver = self;
  v5.super_class = TTRIContentUnavailableHostableViewController;
  _contentUnavailableConfiguration = [(TTRIContentUnavailableHostableViewController *)&v5 _contentUnavailableConfiguration];
  asTTRI = [_contentUnavailableConfiguration asTTRI];

  return asTTRI;
}

@end