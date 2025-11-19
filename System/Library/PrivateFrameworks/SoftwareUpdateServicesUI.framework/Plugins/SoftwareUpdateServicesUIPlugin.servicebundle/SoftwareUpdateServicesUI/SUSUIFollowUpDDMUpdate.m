@interface SUSUIFollowUpDDMUpdate
- (NSString)notificationInformativeText;
- (NSString)notificationTitle;
- (id)_goToSUPaneAction;
- (id)notificationOptions;
@end

@implementation SUSUIFollowUpDDMUpdate

- (NSString)notificationTitle
{
  v6 = 0;
  v4 = 0;
  if (self->_notificationTitle)
  {
    v2 = self->_notificationTitle;
  }

  else
  {
    v7 = sub_2146C();
    v6 = 1;
    v5 = [v7 localizedStringForKey:@"SOFTWARE_UPDATE_AVAILABLE_ALERT_TITLE" value:&stru_62DF0 table:@"ui_alerts"];
    v4 = 1;
    v2 = v5;
  }

  v8 = v2;
  if (v4)
  {
  }

  if (v6)
  {
  }

  return v8;
}

- (NSString)notificationInformativeText
{
  v6 = 0;
  v4 = 0;
  if (self->_notificationInformativeText)
  {
    v2 = self->_notificationInformativeText;
  }

  else
  {
    v7 = sub_2146C();
    v6 = 1;
    v5 = [v7 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_FORCED_BODY_FALLBACK" value:&stru_62DF0 table:@"ui_alerts"];
    v4 = 1;
    v2 = v5;
  }

  v8 = v2;
  if (v4)
  {
  }

  if (v6)
  {
  }

  return v8;
}

- (id)notificationOptions
{
  v3[0] = FLNotificationOptionLockscreen;
  v3[1] = FLNotificationOptionKeepOnLockscreen;
  v3[2] = FLNotificationOptionNotificationCenter;
  v3[3] = FLNotificationOptionBannerAlert;
  v3[4] = FLNotificationOptionForce;
  return [NSArray arrayWithObjects:v3 count:5];
}

- (id)_goToSUPaneAction
{
  v5[2] = self;
  v5[1] = a2;
  v5[0] = objc_alloc_init(FLFollowUpAction);
  v3 = [NSURL URLWithString:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK"];
  [v5[0] setUrl:?];

  v4 = v5[0];
  objc_storeStrong(v5, 0);

  return v4;
}

@end