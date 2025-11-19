@interface RMMDMv1Liaison
+ (BOOL)isEnrolledInMDMv1;
+ (BOOL)isEnrollmentInMDMv1Restricted;
+ (void)_didEnroll:(BOOL)a3;
+ (void)refreshState;
@end

@implementation RMMDMv1Liaison

+ (BOOL)isEnrolledInMDMv1
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 installedMDMProfileIdentifier];
  v4 = v3 != 0;

  return v4;
}

+ (BOOL)isEnrollmentInMDMv1Restricted
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 BOOLRestrictionForFeature:MCFeatureMDMEnrollmentAllowed] == 2;

  return v3;
}

+ (void)_didEnroll:(BOOL)a3
{
  if (a3)
  {
    v3 = objc_opt_new();
    [v3 MCSetBoolRestriction:MCFeatureMDMEnrollmentAllowed value:0];
  }

  else
  {
    v3 = 0;
  }

  v4 = +[MCProfileConnection sharedConnection];
  v8 = 0;
  v5 = [v4 applyRestrictionDictionary:v3 clientType:@"com.apple.remotemanagementd" clientUUID:@"com.apple.RemoteManagement.MDMv1Liaison" localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v8];
  v6 = v8;

  if ((v5 & 1) == 0)
  {
    v7 = +[RMLog mdmv1Liaison];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100052680(v3, v6, v7);
    }
  }
}

+ (void)refreshState
{
  v2 = +[RMLog mdmv1Liaison];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100052708(v2);
  }

  v3 = +[RMManagedDevice currentManagedDevice];
  [v3 refreshState];
}

@end