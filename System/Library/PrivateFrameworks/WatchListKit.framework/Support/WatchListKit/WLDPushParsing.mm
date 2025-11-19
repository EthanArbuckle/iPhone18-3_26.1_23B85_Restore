@interface WLDPushParsing
+ (int64_t)actionTypeForNotification:(id)a3;
@end

@implementation WLDPushParsing

+ (int64_t)actionTypeForNotification:(id)a3
{
  v3 = [a3 wlk_numberForKey:@"1"];
  v4 = v3;
  if (!v3)
  {
    v7 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      v8 = "WLDPushParsing - No value found for action type in payload";
      v9 = v7;
      v10 = 2;
      goto LABEL_9;
    }

LABEL_10:

    v6 = -1;
    goto LABEL_11;
  }

  v5 = [v3 unsignedIntegerValue] - 21;
  if (v5 >= 0x12 || ((0x3F401u >> v5) & 1) == 0)
  {
    v7 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      v8 = "WLDPushParsing - Unknown action type: %@";
      v9 = v7;
      v10 = 12;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, v10);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v6 = qword_100040E68[v5];
LABEL_11:

  return v6;
}

@end