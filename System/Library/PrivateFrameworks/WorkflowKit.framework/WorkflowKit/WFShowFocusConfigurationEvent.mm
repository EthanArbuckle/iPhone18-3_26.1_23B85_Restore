@interface WFShowFocusConfigurationEvent
- (WFShowFocusConfigurationEvent)initWithAppBundleIdentifier:(id)a3 intentType:(id)a4;
- (WFShowFocusConfigurationEvent)initWithSystemFilterType:(id)a3;
@end

@implementation WFShowFocusConfigurationEvent

- (WFShowFocusConfigurationEvent)initWithSystemFilterType:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFShowFocusConfigurationEvent;
  v5 = [(WFShowFocusConfigurationEvent *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    systemFilterType = v5->_systemFilterType;
    v5->_systemFilterType = v6;

    v8 = v5;
  }

  return v5;
}

- (WFShowFocusConfigurationEvent)initWithAppBundleIdentifier:(id)a3 intentType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = WFShowFocusConfigurationEvent;
  v8 = [(WFShowFocusConfigurationEvent *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    appBundleIdentifier = v8->_appBundleIdentifier;
    v8->_appBundleIdentifier = v9;

    v11 = [v7 copy];
    intentType = v8->_intentType;
    v8->_intentType = v11;

    v13 = v8;
  }

  return v8;
}

@end