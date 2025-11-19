@interface DefaultCoreTelephonyDataSource
+ (id)sharedInstance;
- (BOOL)isCellularServiceAvailable;
- (CoreTelephonyClient)coreTelephonyClient;
- (DefaultCoreTelephonyDataSource)init;
- (NSArray)allRelevantISOCountryCodes;
- (id)isoCountryCodeOverride;
@end

@implementation DefaultCoreTelephonyDataSource

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003EBC;
  block[3] = &unk_10004CC00;
  block[4] = a1;
  if (qword_100057A40 != -1)
  {
    dispatch_once(&qword_100057A40, block);
  }

  v2 = qword_100057A38;

  return v2;
}

- (DefaultCoreTelephonyDataSource)init
{
  v8.receiver = self;
  v8.super_class = DefaultCoreTelephonyDataSource;
  v2 = [(DefaultCoreTelephonyDataSource *)&v8 init];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"com.apple.TelephonyUtilities.PhoneIntentHandler.%@", objc_opt_class()];
    v4 = dispatch_queue_create([v3 UTF8String], 0);
    coreTelephonyClientQueue = v2->_coreTelephonyClientQueue;
    v2->_coreTelephonyClientQueue = v4;

    isSuperboxEnabled = v2->_isSuperboxEnabled;
    v2->_isSuperboxEnabled = &stru_10004CC40;
  }

  return v2;
}

- (CoreTelephonyClient)coreTelephonyClient
{
  coreTelephonyClient = self->_coreTelephonyClient;
  if (!coreTelephonyClient)
  {
    v4 = [CoreTelephonyClient alloc];
    v5 = [(DefaultCoreTelephonyDataSource *)self coreTelephonyClientQueue];
    v6 = [v4 initWithQueue:v5];
    v7 = self->_coreTelephonyClient;
    self->_coreTelephonyClient = v6;

    [(CoreTelephonyClient *)self->_coreTelephonyClient setDelegate:self];
    coreTelephonyClient = self->_coreTelephonyClient;
  }

  return coreTelephonyClient;
}

- (NSArray)allRelevantISOCountryCodes
{
  v3 = [(DefaultCoreTelephonyDataSource *)self isoCountryCodeOverride];
  if (v3)
  {
    v4 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Using ISO Country Code Override: %@", buf, 0xCu);
    }

    v5 = [[NSArray alloc] initWithObjects:{v3, 0}];
  }

  else
  {
    if (!self->_allRelevantISOCountryCodes || [(DefaultCoreTelephonyDataSource *)self subscriberCountryCodeDidChange])
    {
      v6 = objc_alloc_init(NSMutableOrderedSet);
      v7 = [(DefaultCoreTelephonyDataSource *)self coreTelephonyClient];
      v35 = 0;
      v8 = [v7 getSubscriptionInfoWithError:&v35];
      v9 = v35;

      if (v8)
      {
        v29 = v9;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v10 = [v8 subscriptionsInUse];
        v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v11)
        {
          v12 = v11;
          v28 = v8;
          v13 = *v32;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v32 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v31 + 1) + 8 * i);
              v16 = [(DefaultCoreTelephonyDataSource *)self coreTelephonyClient];
              v30 = 0;
              v17 = [v16 copyMobileCountryCode:v15 error:&v30];
              v18 = v30;

              if ([(NSArray *)v17 length])
              {
                v19 = TUISOCountryCodeForMCC();
                if ([v19 length])
                {
                  [v6 addObject:v19];
                }

                else
                {
                  v20 = IntentHandlerDefaultLog();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v38 = v17;
                    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Could not determine ISO Country Code from Mobile Country Code: %@", buf, 0xCu);
                  }
                }
              }

              else
              {
                v19 = IntentHandlerDefaultLog();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v38 = v18;
                  _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Could not determine mobile country code from Core Telephony Subscription Context. Error: %@", buf, 0xCu);
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
          }

          while (v12);
          v8 = v28;
          v3 = 0;
        }

        v9 = v29;
      }

      else
      {
        v10 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10002F20C(v9, v10);
        }
      }

      v21 = TUHomeCountryCode();
      if ([v21 length])
      {
        [v6 addObject:v21];
      }

      [(DefaultCoreTelephonyDataSource *)self setSubscriberCountryCodeDidChange:0];
      v22 = [v6 array];
      allRelevantISOCountryCodes = self->_allRelevantISOCountryCodes;
      self->_allRelevantISOCountryCodes = v22;

      v24 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = self->_allRelevantISOCountryCodes;
        *buf = 138412290;
        v38 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Resolved relevant ISO country codes: %@", buf, 0xCu);
      }
    }

    v5 = self->_allRelevantISOCountryCodes;
  }

  v26 = v5;

  return v26;
}

- (BOOL)isCellularServiceAvailable
{
  if ((*(self->_isSuperboxEnabled + 2))())
  {
    v3 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Superbox is enabled, returning YES", buf, 2u);
    }

    v4 = 1;
  }

  else
  {
    v5 = [(DefaultCoreTelephonyDataSource *)self coreTelephonyClient];
    v29 = 0;
    v6 = [v5 getSubscriptionInfoWithError:&v29];
    v3 = v29;

    if (v6)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v7 = [v6 subscriptionsInUse];
      v8 = [v7 countByEnumeratingWithState:&v25 objects:v34 count:16];
      if (v8)
      {
        v10 = v8;
        v21 = v6;
        v22 = v3;
        v11 = *v26;
        v12 = kCTRegistrationStatusRegisteredHome;
        v23 = kCTRegistrationStatusRegisteredRoaming;
        *&v9 = 138412290;
        v20 = v9;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v26 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v14 = *(*(&v25 + 1) + 8 * i);
            v15 = [(DefaultCoreTelephonyDataSource *)self coreTelephonyClient];
            v24 = 0;
            v16 = [v15 copyRegistrationStatus:v14 error:&v24];
            v17 = v24;

            if ([v16 length])
            {
              if ([v16 isEqualToString:v12] & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", v23))
              {

                v4 = 1;
                v6 = v21;
                v3 = v22;
                goto LABEL_27;
              }

              v18 = IntentHandlerDefaultLog();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v31 = v16;
                v32 = 2112;
                v33 = v14;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Cellular service is not available for SIM. Registration Status: %@ Subscription context: %@", buf, 0x16u);
              }
            }

            else
            {
              v18 = IntentHandlerDefaultLog();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = v20;
                v31 = v17;
                _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not determine registration status from Core Telephony Subscription Context. Error: %@", buf, 0xCu);
              }
            }
          }

          v10 = [v7 countByEnumeratingWithState:&v25 objects:v34 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }

        v6 = v21;
        v3 = v22;
      }
    }

    else
    {
      v7 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10002F20C(v3, v7);
      }
    }

    v7 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Determined cellular service is unavailable.", buf, 2u);
    }

    v4 = 0;
LABEL_27:
  }

  return v4;
}

- (id)isoCountryCodeOverride
{
  if (_TUIsInternalInstall())
  {
    v2 = +[NSUserDefaults tu_defaults];
    v3 = [v2 stringForKey:@"IntentHandlerISOCountryCodeInternalOverride"];

    if (v3)
    {
      v4 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        sub_10002F284(v3, v4);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end