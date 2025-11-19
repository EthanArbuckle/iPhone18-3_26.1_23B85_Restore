@interface TRMUserNotification
@end

@implementation TRMUserNotification

void ___acc_userNotifications_TRMUserNotification_block_invoke(id a1)
{
  v1 = objc_alloc_init(ACCUserNotification);
  v2 = _acc_userNotifications_TRMUserNotification_userNotification;
  _acc_userNotifications_TRMUserNotification_userNotification = v1;

  [_acc_userNotifications_TRMUserNotification_userNotification setType:2];
  v3 = acc_strings_bundle();
  v4 = _localizedStringFromTableInBundle(@"Allow accessory to connect?", v3);
  [_acc_userNotifications_TRMUserNotification_userNotification setTitle:v4];

  v5 = acc_strings_bundle();
  v6 = _localizedStringFromTableInBundle(@"Allow", v5);
  [_acc_userNotifications_TRMUserNotification_userNotification setDefaultButtonName:v6];

  v7 = acc_strings_bundle();
  v8 = _localizedStringFromTableInBundle(@"Don’t Allow", v7);
  [_acc_userNotifications_TRMUserNotification_userNotification setOtherButtonName:v8];

  [_acc_userNotifications_TRMUserNotification_userNotification setIsModal:1];
  [_acc_userNotifications_TRMUserNotification_userNotification setIgnoreQuietMode:1];
  v9 = acc_strings_bundle();
  v10 = _localizedStringFromTableInBundle(@"Accessory Connected", v9);
  [_acc_userNotifications_TRMUserNotification_userNotification setLockScreenTitle:v10];

  v11 = acc_strings_bundle();
  v12 = _localizedStringFromTableInBundle(@"Unlock %@ to use accessories", v11);
  v13 = systemInfo_copyDeviceClass();
  v14 = [NSString stringWithFormat:v12, v13];
  [_acc_userNotifications_TRMUserNotification_userNotification setLockScreenMessage:v14];

  v15 = [_acc_userNotifications_TRMUserNotification_userNotification title];
  [_acc_userNotifications_TRMUserNotification_userNotification setMessage:v15];

  [_acc_userNotifications_TRMUserNotification_userNotification setSystemSoundID:&off_63648];
  v16 = _acc_userNotifications_TRMUserNotification_userNotification;

  [v16 setAllowLockScreenDismissal:0];
}

@end