@interface CHManager
+ (id)siriManagerForIntentType:(Class)type;
@end

@implementation CHManager

+ (id)siriManagerForIntentType:(Class)type
{
  v4 = objc_alloc_init(CHManager);
  if (objc_opt_class() == type || objc_opt_class() == type)
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