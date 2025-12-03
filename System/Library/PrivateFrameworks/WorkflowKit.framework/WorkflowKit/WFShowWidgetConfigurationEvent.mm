@interface WFShowWidgetConfigurationEvent
- (WFShowWidgetConfigurationEvent)initWithAppBundleIdentifier:(id)identifier intentType:(id)type sizeClass:(id)class interactive:(BOOL)interactive;
@end

@implementation WFShowWidgetConfigurationEvent

- (WFShowWidgetConfigurationEvent)initWithAppBundleIdentifier:(id)identifier intentType:(id)type sizeClass:(id)class interactive:(BOOL)interactive
{
  identifierCopy = identifier;
  typeCopy = type;
  classCopy = class;
  v22.receiver = self;
  v22.super_class = WFShowWidgetConfigurationEvent;
  v13 = [(WFShowWidgetConfigurationEvent *)&v22 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    appBundleIdentifier = v13->_appBundleIdentifier;
    v13->_appBundleIdentifier = v14;

    v16 = [typeCopy copy];
    intentType = v13->_intentType;
    v13->_intentType = v16;

    v18 = [classCopy copy];
    sizeClass = v13->_sizeClass;
    v13->_sizeClass = v18;

    v13->_isInteractive = interactive;
    v20 = v13;
  }

  return v13;
}

@end