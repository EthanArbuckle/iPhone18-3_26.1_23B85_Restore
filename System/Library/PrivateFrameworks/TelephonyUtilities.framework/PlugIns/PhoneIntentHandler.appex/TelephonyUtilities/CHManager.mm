@interface CHManager
+ (id)siriManagerForIntentType:(Class)a3;
@end

@implementation CHManager

+ (id)siriManagerForIntentType:(Class)a3
{
  v4 = objc_alloc_init(CHManager);
  if (objc_opt_class() == a3 || objc_opt_class() == a3)
  {
    if (MGGetBoolAnswer())
    {
      [NSSet setWithObjects:TUBundleIdentifierMobilePhoneApplication, TUBundleIdentifierFaceTimeApplication, 0];
    }

    else
    {
      [NSSet setWithObject:TUBundleIdentifierMobilePhoneApplication];
    }
    v5 = ;
    [v4 setAllowedProtectedAppBundleIDs:v5];
  }

  return v4;
}

@end