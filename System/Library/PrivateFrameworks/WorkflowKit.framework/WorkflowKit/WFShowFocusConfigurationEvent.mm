@interface WFShowFocusConfigurationEvent
- (WFShowFocusConfigurationEvent)initWithAppBundleIdentifier:(id)identifier intentType:(id)type;
- (WFShowFocusConfigurationEvent)initWithSystemFilterType:(id)type;
@end

@implementation WFShowFocusConfigurationEvent

- (WFShowFocusConfigurationEvent)initWithSystemFilterType:(id)type
{
  typeCopy = type;
  v10.receiver = self;
  v10.super_class = WFShowFocusConfigurationEvent;
  v5 = [(WFShowFocusConfigurationEvent *)&v10 init];
  if (v5)
  {
    v6 = [typeCopy copy];
    systemFilterType = v5->_systemFilterType;
    v5->_systemFilterType = v6;

    v8 = v5;
  }

  return v5;
}

- (WFShowFocusConfigurationEvent)initWithAppBundleIdentifier:(id)identifier intentType:(id)type
{
  identifierCopy = identifier;
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = WFShowFocusConfigurationEvent;
  v8 = [(WFShowFocusConfigurationEvent *)&v15 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    appBundleIdentifier = v8->_appBundleIdentifier;
    v8->_appBundleIdentifier = v9;

    v11 = [typeCopy copy];
    intentType = v8->_intentType;
    v8->_intentType = v11;

    v13 = v8;
  }

  return v8;
}

@end