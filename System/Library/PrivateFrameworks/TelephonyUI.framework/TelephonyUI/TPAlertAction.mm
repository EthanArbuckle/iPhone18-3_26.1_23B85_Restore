@interface TPAlertAction
+ (id)actionWithTitle:(id)title style:(int64_t)style handler:(id)handler;
+ (id)actionWithType:(unint64_t)type;
+ (id)preferencesURLForClassName:(id)name;
@end

@implementation TPAlertAction

+ (id)actionWithTitle:(id)title style:(int64_t)style handler:(id)handler
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___TPAlertAction;
  handlerCopy = handler;
  v8 = objc_msgSendSuper2(&v10, sel_actionWithTitle_style_handler_, title, style, handlerCopy);
  [v8 setHandler:{handlerCopy, v10.receiver, v10.super_class}];

  return v8;
}

+ (id)actionWithType:(unint64_t)type
{
  v3 = 0;
  if (type <= 3)
  {
    if (type == 1)
    {
      v4 = TelephonyUIBundle();
      v5 = [v4 localizedStringForKey:@"ALERT_ACTION_TITLE_CANCEL" value:&stru_1F2CA8008 table:@"General"];
      v9 = v5;
      v10 = 1;
      v6 = 0;
    }

    else
    {
      if (type == 2)
      {
        v4 = TelephonyUIBundle();
        v5 = [v4 localizedStringForKey:@"ALERT_ACTION_TITLE_DISABLE_AIRPLANE_MODE" value:&stru_1F2CA8008 table:@"General"];
        v6 = &__block_literal_global;
      }

      else
      {
        if (type != 3)
        {
          goto LABEL_17;
        }

        v4 = TelephonyUIBundle();
        v5 = [v4 localizedStringForKey:@"ALERT_ACTION_TITLE_CELLULAR_SETTINGS" value:&stru_1F2CA8008 table:@"General"];
        v6 = &__block_literal_global_40;
      }

      v9 = v5;
      v10 = 0;
    }

    v3 = [TPAlertAction actionWithTitle:v9 style:v10 handler:v6];
    goto LABEL_16;
  }

  if (type != 4)
  {
    if (type == 5)
    {
      v4 = TelephonyUIBundle();
      v5 = TUStringKeyForNetwork();
      v7 = [v4 localizedStringForKey:v5 value:&stru_1F2CA8008 table:@"General"];
      v8 = &__block_literal_global_69;
      goto LABEL_15;
    }

    if (type != 6)
    {
      goto LABEL_17;
    }
  }

  v4 = TelephonyUIBundle();
  v5 = TUStringKeyForNetwork();
  v7 = [v4 localizedStringForKey:v5 value:&stru_1F2CA8008 table:@"General"];
  v8 = &__block_literal_global_58;
LABEL_15:
  v3 = [TPAlertAction actionWithTitle:v7 style:0 handler:v8];

LABEL_16:
LABEL_17:

  return v3;
}

void __32__TPAlertAction_actionWithType___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E698B6B0]);
  [v0 setAirplaneMode:0];
}

void __32__TPAlertAction_actionWithType___block_invoke_2()
{
  v0 = @"prefs:root=MOBILE_DATA_SETTINGS_ID";
  if (MGGetBoolAnswer())
  {
    v1 = [MEMORY[0x1E69A6108] sharedInstance];
    v2 = [v1 isDataSwitchEnabled];
    v3 = [MEMORY[0x1E699BE70] sharedInstance];
    v4 = TUPreferredFaceTimeBundleIdentifier();
    v5 = [v3 nonWifiAvailableForBundleId:v4];

    v6 = @"prefs:root=MOBILE_DATA_SETTINGS_ID&path=WIRELESS_APP_DATA_USAGE_ID";
    if (v5)
    {
      v6 = @"prefs:root=MOBILE_DATA_SETTINGS_ID";
    }

    if (v2)
    {
      v0 = v6;
    }
  }

  v7 = [MEMORY[0x1E695DFF8] URLWithString:v0];
  if (v7)
  {
    v9 = v7;
    v8 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v8 openSensitiveURL:v9 withOptions:0];

    v7 = v9;
  }
}

void __32__TPAlertAction_actionWithType___block_invoke_3()
{
  v0 = @"prefs:root=WIFI";
  if (MGGetBoolAnswer())
  {
    v1 = [MEMORY[0x1E69A6108] sharedInstance];
    v2 = [v1 isWiFiEnabled];
    v3 = [MEMORY[0x1E699BE70] sharedInstance];
    v4 = TUPreferredFaceTimeBundleIdentifier();
    v5 = [v3 wifiAllowedForBundleId:v4];

    v6 = @"prefs:root=WIFI&path=WIRELESS_APP_DATA_USAGE_ID";
    if (v5)
    {
      v6 = @"prefs:root=WIFI";
    }

    if (v2)
    {
      v0 = v6;
    }
  }

  v7 = [MEMORY[0x1E695DFF8] URLWithString:v0];
  if (v7)
  {
    v9 = v7;
    v8 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v8 openSensitiveURL:v9 withOptions:0];

    v7 = v9;
  }
}

void __32__TPAlertAction_actionWithType___block_invoke_4()
{
  v1 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=Phone&path=com.apple.settings.WiFiCallingSettingsBundle"];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:0];
}

+ (id)preferencesURLForClassName:(id)name
{
  preferencesURL = CUTWeakLinkClass();
  if (preferencesURL)
  {
    preferencesURL = [preferencesURL preferencesURL];
  }

  return preferencesURL;
}

@end