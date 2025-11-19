@interface TTRIContentUnavailableHostableViewController
- (TTRIContentUnavailableConfiguration)ttr_contentUnavailableConfiguration;
- (TTRIContentUnavailableConfigurationState)ttr_contentUnavailableConfigurationState;
- (id)_contentUnavailableConfiguration;
- (id)_contentUnavailableConfigurationState;
- (void)_setContentUnavailableConfiguration:(id)a3;
- (void)_updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)ttr_setContentUnavailableConfiguration:(id)a3;
- (void)ttr_updateContentUnavailableConfigurationUsingState:(id)a3;
@end

@implementation TTRIContentUnavailableHostableViewController

- (void)_updateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = [a3 asTTRI];
  [(TTRIContentUnavailableHostableViewController *)self ttr_updateContentUnavailableConfigurationUsingState:v4];
}

- (void)ttr_updateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = [a3 asUIKit];
  v5.receiver = self;
  v5.super_class = TTRIContentUnavailableHostableViewController;
  [(TTRIContentUnavailableHostableViewController *)&v5 _updateContentUnavailableConfigurationUsingState:v4];
}

- (id)_contentUnavailableConfigurationState
{
  v2 = [(TTRIContentUnavailableHostableViewController *)self ttr_contentUnavailableConfigurationState];
  v3 = [v2 asUIKit];

  return v3;
}

- (TTRIContentUnavailableConfigurationState)ttr_contentUnavailableConfigurationState
{
  v5.receiver = self;
  v5.super_class = TTRIContentUnavailableHostableViewController;
  v2 = [(TTRIContentUnavailableHostableViewController *)&v5 _contentUnavailableConfigurationState];
  v3 = [v2 asTTRI];

  return v3;
}

- (void)_setContentUnavailableConfiguration:(id)a3
{
  v4 = [a3 asTTRI];
  [(TTRIContentUnavailableHostableViewController *)self ttr_setContentUnavailableConfiguration:v4];
}

- (void)ttr_setContentUnavailableConfiguration:(id)a3
{
  v4 = [a3 asUIKit];
  v5.receiver = self;
  v5.super_class = TTRIContentUnavailableHostableViewController;
  [(TTRIContentUnavailableHostableViewController *)&v5 _setContentUnavailableConfiguration:v4];
}

- (id)_contentUnavailableConfiguration
{
  v2 = [(TTRIContentUnavailableHostableViewController *)self ttr_contentUnavailableConfiguration];
  v3 = [v2 asUIKit];

  return v3;
}

- (TTRIContentUnavailableConfiguration)ttr_contentUnavailableConfiguration
{
  v5.receiver = self;
  v5.super_class = TTRIContentUnavailableHostableViewController;
  v2 = [(TTRIContentUnavailableHostableViewController *)&v5 _contentUnavailableConfiguration];
  v3 = [v2 asTTRI];

  return v3;
}

@end