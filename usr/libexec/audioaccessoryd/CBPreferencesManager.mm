@interface CBPreferencesManager
+ (BOOL)isDeviceClass:(id)class;
+ (id)deviceName;
+ (id)readUserPreference:(id)preference;
+ (void)removeuserPreference:(id)preference sync:(BOOL)sync;
+ (void)setuserPreference:(id)preference value:(id)value sync:(BOOL)sync;
@end

@implementation CBPreferencesManager

+ (id)readUserPreference:(id)preference
{
  v3 = CFPreferencesCopyValue(preference, kCFPreferencesCurrentApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  return v3;
}

+ (void)setuserPreference:(id)preference value:(id)value sync:(BOOL)sync
{
  syncCopy = sync;
  preferenceCopy = preference;
  valueCopy = value;
  v9 = qword_100300AE8;
  if (os_log_type_enabled(qword_100300AE8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = preferenceCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[setSystemPreference] prefName %@\n", &v11, 0xCu);
  }

  CFPreferencesSetValue(preferenceCopy, valueCopy, kCFPreferencesCurrentApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (syncCopy && !CFPreferencesSynchronize(@"com.apple.cloudpaird", kCFPreferencesCurrentUser, kCFPreferencesAnyHost))
  {
    v10 = qword_100300AE8;
    if (os_log_type_enabled(qword_100300AE8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[setSystemPreference] syncs returns false\n", &v11, 2u);
    }
  }
}

+ (void)removeuserPreference:(id)preference sync:(BOOL)sync
{
  syncCopy = sync;
  preferenceCopy = preference;
  v6 = qword_100300AE8;
  if (os_log_type_enabled(qword_100300AE8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = preferenceCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[removeuserPreference] prefName %@\n", &v8, 0xCu);
  }

  CFPreferencesSetValue(preferenceCopy, 0, @"com.apple.cloudpaird", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (syncCopy && !CFPreferencesSynchronize(@"com.apple.cloudpaird", kCFPreferencesCurrentUser, kCFPreferencesAnyHost))
  {
    v7 = qword_100300AE8;
    if (os_log_type_enabled(qword_100300AE8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[removeuserPreference] psyncs returns false\n", &v8, 2u);
    }
  }
}

+ (id)deviceName
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (BOOL)isDeviceClass:(id)class
{
  classCopy = class;
  v4 = MGGetStringAnswer();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 isEqualToString:classCopy];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end