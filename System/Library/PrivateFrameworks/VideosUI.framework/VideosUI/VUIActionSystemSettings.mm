@interface VUIActionSystemSettings
+ (BOOL)_openAccountSettings:(int64_t)a3;
+ (int64_t)_subsectionFromString:(id)a3;
- (VUIActionSystemSettings)initWithContextData:(id)a3;
- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4;
@end

@implementation VUIActionSystemSettings

- (VUIActionSystemSettings)initWithContextData:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = VUIActionSystemSettings;
  v5 = [(VUIActionSystemSettings *)&v11 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = [v4 vui_stringForKey:@"subsection"];
      v6->_subsectionDestination = [VUIActionSystemSettings _subsectionFromString:v7];
      v8 = [v4 vui_stringForKey:@"settingsAppDeeplink"];
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

- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v5 = [VUIActionSystemSettings _openAccountSettings:self->_subsectionDestination];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v5);
    v6 = v7;
  }
}

+ (BOOL)_openAccountSettings:(int64_t)a3
{
  v4 = objc_alloc_init(VUIAccountSettingsViewController);
  [(VUIAccountSettingsViewController *)v4 setInitialSubsection:a3];
  v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v4];
  [v5 setModalTransitionStyle:0];
  [v5 setModalPresentationStyle:2];
  v6 = +[VUIApplicationRouter topPresentedViewController];
  [v6 presentViewController:v5 animated:1 completion:0];

  return 1;
}

+ (int64_t)_subsectionFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:@"ConnectedApps"])
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