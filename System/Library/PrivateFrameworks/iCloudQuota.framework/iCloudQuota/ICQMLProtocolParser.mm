@interface ICQMLProtocolParser
+ (BOOL)shouldCallMlDaemonForFetchOfferStub:(id)stub;
+ (BOOL)shouldCallMlDaemonForPushNotification:(id)notification;
+ (id)parseMaxDelaySecsFromFetchOffersResponse:(id)response;
+ (id)parseMaxDelaySecsFromPushNotification:(id)notification;
@end

@implementation ICQMLProtocolParser

+ (BOOL)shouldCallMlDaemonForPushNotification:(id)notification
{
  v3 = [notification objectForKey:@"callSubD"];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v6 = objc_opt_class();
      if (v6 == objc_opt_class())
      {
        bOOLValue = [v4 BOOLValue];

        if (bOOLValue)
        {
          v9 = _ICQGetLogSystem();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "[SUBD] IND will now use the new code path calling into ML Subscription Daemon.", buf, 2u);
          }

          v7 = 1;
          goto LABEL_13;
        }
      }

      else
      {
      }

      v9 = _ICQGetLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "[SUBD] IND will use the original codepath. ML Subscription Daemon will not be called.", v11, 2u);
      }

      v7 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  v7 = 0;
LABEL_14:

  return v7;
}

+ (BOOL)shouldCallMlDaemonForFetchOfferStub:(id)stub
{
  v4 = [stub objectForKey:@"subdContext"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [self shouldCallMlDaemonForPushNotification:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)parseMaxDelaySecsFromPushNotification:(id)notification
{
  v3 = [notification objectForKey:@"maxDelayInSecs"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)parseMaxDelaySecsFromFetchOffersResponse:(id)response
{
  v4 = [response objectForKey:@"subdContext"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [self parseMaxDelaySecsFromPushNotification:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end