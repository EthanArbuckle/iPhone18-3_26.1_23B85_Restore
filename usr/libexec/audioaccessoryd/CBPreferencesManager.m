@interface CBPreferencesManager
+ (BOOL)isDeviceClass:(id)a3;
+ (id)deviceName;
+ (id)readUserPreference:(id)a3;
+ (void)removeuserPreference:(id)a3 sync:(BOOL)a4;
+ (void)setuserPreference:(id)a3 value:(id)a4 sync:(BOOL)a5;
@end

@implementation CBPreferencesManager

+ (id)readUserPreference:(id)a3
{
  v3 = CFPreferencesCopyValue(a3, kCFPreferencesCurrentApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  return v3;
}

+ (void)setuserPreference:(id)a3 value:(id)a4 sync:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = qword_100300AE8;
  if (os_log_type_enabled(qword_100300AE8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[setSystemPreference] prefName %@\n", &v11, 0xCu);
  }

  CFPreferencesSetValue(v7, v8, kCFPreferencesCurrentApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v5 && !CFPreferencesSynchronize(@"com.apple.cloudpaird", kCFPreferencesCurrentUser, kCFPreferencesAnyHost))
  {
    v10 = qword_100300AE8;
    if (os_log_type_enabled(qword_100300AE8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[setSystemPreference] syncs returns false\n", &v11, 2u);
    }
  }
}

+ (void)removeuserPreference:(id)a3 sync:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = qword_100300AE8;
  if (os_log_type_enabled(qword_100300AE8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[removeuserPreference] prefName %@\n", &v8, 0xCu);
  }

  CFPreferencesSetValue(v5, 0, @"com.apple.cloudpaird", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v4 && !CFPreferencesSynchronize(@"com.apple.cloudpaird", kCFPreferencesCurrentUser, kCFPreferencesAnyHost))
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

+ (BOOL)isDeviceClass:(id)a3
{
  v3 = a3;
  v4 = MGGetStringAnswer();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 isEqualToString:v3];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end