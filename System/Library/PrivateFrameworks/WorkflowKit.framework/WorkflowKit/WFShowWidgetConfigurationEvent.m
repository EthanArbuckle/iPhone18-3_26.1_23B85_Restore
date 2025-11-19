@interface WFShowWidgetConfigurationEvent
- (WFShowWidgetConfigurationEvent)initWithAppBundleIdentifier:(id)a3 intentType:(id)a4 sizeClass:(id)a5 interactive:(BOOL)a6;
@end

@implementation WFShowWidgetConfigurationEvent

- (WFShowWidgetConfigurationEvent)initWithAppBundleIdentifier:(id)a3 intentType:(id)a4 sizeClass:(id)a5 interactive:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v22.receiver = self;
  v22.super_class = WFShowWidgetConfigurationEvent;
  v13 = [(WFShowWidgetConfigurationEvent *)&v22 init];
  if (v13)
  {
    v14 = [v10 copy];
    appBundleIdentifier = v13->_appBundleIdentifier;
    v13->_appBundleIdentifier = v14;

    v16 = [v11 copy];
    intentType = v13->_intentType;
    v13->_intentType = v16;

    v18 = [v12 copy];
    sizeClass = v13->_sizeClass;
    v13->_sizeClass = v18;

    v13->_isInteractive = a6;
    v20 = v13;
  }

  return v13;
}

@end