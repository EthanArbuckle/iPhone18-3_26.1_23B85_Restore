@interface VUIActionSystemSettings
+ (BOOL)_openAccountSettings:(int64_t)settings;
+ (int64_t)_subsectionFromString:(id)string;
- (VUIActionSystemSettings)initWithContextData:(id)data;
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation VUIActionSystemSettings

- (VUIActionSystemSettings)initWithContextData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = VUIActionSystemSettings;
  v5 = [(VUIActionSystemSettings *)&v11 init];
  v6 = v5;
  if (v5)
  {
    if (dataCopy)
    {
      v7 = [dataCopy vui_stringForKey:@"subsection"];
      v6->_subsectionDestination = [VUIActionSystemSettings _subsectionFromString:v7];
      v8 = [dataCopy vui_stringForKey:@"settingsAppDeeplink"];
      settingsAppDeeplink = v6->_settingsAppDeeplink;
      v6->_settingsAppDeeplink = v8;
    }

    else
    {
      v5->_subsectionDestination = 0;
    }
  }

  return v6;
}

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [VUIActionSystemSettings _openAccountSettings:self->_subsectionDestination];
  v6 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, v5);
    v6 = handlerCopy;
  }
}

+ (BOOL)_openAccountSettings:(int64_t)settings
{
  v4 = objc_alloc_init(VUIAccountSettingsViewController);
  [(VUIAccountSettingsViewController *)v4 setInitialSubsection:settings];
  v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v4];
  [v5 setModalTransitionStyle:0];
  [v5 setModalPresentationStyle:2];
  v6 = +[VUIApplicationRouter topPresentedViewController];
  [v6 presentViewController:v5 animated:1 completion:0];

  return 1;
}

+ (int64_t)_subsectionFromString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    if ([stringCopy isEqualToString:@"ConnectedApps"])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:@"ManageSubscriptions"])
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end