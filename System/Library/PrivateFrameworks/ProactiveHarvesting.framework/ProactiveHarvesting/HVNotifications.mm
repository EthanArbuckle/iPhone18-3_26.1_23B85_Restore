@interface HVNotifications
+ (void)_postNotificationWithName:(uint64_t)name;
@end

@implementation HVNotifications

+ (void)_postNotificationWithName:(uint64_t)name
{
  v9 = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3 = notify_post(a2);
  v4 = hv_default_log_handle();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = a2;
      _os_log_error_impl(&dword_2321EC000, v5, OS_LOG_TYPE_ERROR, "HVNotifications: failed to post %s", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = a2;
    _os_log_impl(&dword_2321EC000, v5, OS_LOG_TYPE_DEFAULT, "HVNotifications: posted %s", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end