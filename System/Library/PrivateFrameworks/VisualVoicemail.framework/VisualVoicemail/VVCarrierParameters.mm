@interface VVCarrierParameters
- (VVCarrierParameters)initWithService:(id)service;
- (id)parameterValueForKey:(id)key;
- (void)dealloc;
@end

@implementation VVCarrierParameters

- (VVCarrierParameters)initWithService:(id)service
{
  serviceCopy = service;
  v77.receiver = self;
  v77.super_class = VVCarrierParameters;
  v5 = [(VVCarrierParameters *)&v77 init];
  v63 = v5;
  if (v5)
  {
    v62 = serviceCopy;
    contextInfo = [serviceCopy contextInfo];
    telephonyClient = [serviceCopy telephonyClient];
    v6 = +[NSMutableDictionary dictionary];
    v5->mambaID = [serviceCopy getServiceObjLogPrefix];
    p_mambaID = &v5->mambaID;
    context = [contextInfo context];
    v89 = @"com.apple.voicemail.imap";
    v9 = [NSArray arrayWithObjects:&v89 count:1];
    v76 = 0;
    v10 = [telephonyClient context:context getCarrierBundleValue:v9 error:&v76];
    v11 = v76;

    if (v11)
    {
      v12 = sub_1000090B8();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10009B3C8(p_mambaID);
      }
    }

    else if (v10)
    {
      [v6 addEntriesFromDictionary:v10];
    }

    v88[0] = @"com.apple.voicemail.imap";
    v88[1] = @"AllowedIMAPServers";
    v13 = [NSArray arrayWithObjects:v88 count:2];
    context2 = [contextInfo context];
    v75 = v11;
    v15 = [telephonyClient context:context2 getCarrierBundleValue:v13 error:&v75];
    v16 = v75;

    if (v16)
    {
      v17 = sub_1000090B8();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10009B3C8(p_mambaID);
      }
    }

    else if (v15)
    {
      [v6 addEntriesFromDictionary:v15];
    }

    context3 = [contextInfo context];
    v87 = @"VVMIgnoresIntlDataRoaming";
    v19 = [NSArray arrayWithObjects:&v87 count:1];
    v74 = v16;
    v20 = [telephonyClient context:context3 getCarrierBundleValue:v19 error:&v74];
    v21 = v74;

    if (v21)
    {
      v22 = sub_1000090B8();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10009B3C8(p_mambaID);
      }
    }

    else if (v20)
    {
      [v6 setObject:v20 forKey:@"VVMIgnoresIntlDataRoaming"];
    }

    context4 = [contextInfo context];
    v86 = @"VVMRetryIntervals";
    v24 = [NSArray arrayWithObjects:&v86 count:1];
    v73 = v21;
    v25 = [telephonyClient context:context4 getCarrierBundleValue:v24 error:&v73];
    v26 = v73;

    if (v26)
    {
      v27 = sub_1000090B8();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10009B3C8(p_mambaID);
      }
    }

    else if (v25)
    {
      [v6 setObject:v25 forKey:@"VVMRetryIntervals"];
    }

    context5 = [contextInfo context];
    v85 = @"VVMDetachedStorageDisabled";
    v29 = [NSArray arrayWithObjects:&v85 count:1];
    v72 = v26;
    v30 = [telephonyClient context:context5 getCarrierBundleValue:v29 error:&v72];
    v31 = v72;

    if (v31)
    {
      v32 = sub_1000090B8();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_10009B3C8(p_mambaID);
      }
    }

    else if (v30)
    {
      [v6 setObject:v30 forKey:@"VVMDetachedStorageDisabled"];
    }

    context6 = [contextInfo context];
    v84 = @"VVMNotificationFallbackTimeout";
    v34 = [NSArray arrayWithObjects:&v84 count:1];
    v71 = v31;
    v35 = [telephonyClient context:context6 getCarrierBundleValue:v34 error:&v71];
    v61 = v71;

    if (v61)
    {
      v36 = sub_1000090B8();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_10009B3C8(p_mambaID);
      }
    }

    else if (v35)
    {
      [v6 setObject:v35 forKey:@"VVMNotificationFallbackTimeout"];
    }

    v37 = [telephonyClient carrierBundle:contextInfo];
    v38 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v37 isGreetingChangeSupportedForSubscription]);
    [v6 setObject:v38 forKey:@"GreetingChangeSupported"];

    v39 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v37 isPasswordChangeSupportedForSubscription]);
    [v6 setObject:v39 forKey:@"PasswordChangeSupported"];

    v60 = [NSBundle bundleForClass:objc_opt_class()];
    v40 = [v60 pathForResource:@"CarrierParameters-Default" ofType:@"plist"];
    if (v40)
    {
      v41 = [[NSDictionary alloc] initWithContentsOfFile:v40];
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      allKeys = [v41 allKeys];
      v43 = [allKeys countByEnumeratingWithState:&v67 objects:v83 count:16];
      if (v43)
      {
        v44 = *v68;
        do
        {
          for (i = 0; i != v43; i = i + 1)
          {
            if (*v68 != v44)
            {
              objc_enumerationMutation(allKeys);
            }

            v46 = *(*(&v67 + 1) + 8 * i);
            v47 = [v6 objectForKeyedSubscript:v46];
            v48 = v47 == 0;

            if (v48)
            {
              v49 = [v41 objectForKeyedSubscript:v46];
              [v6 setObject:v49 forKeyedSubscript:v46];
            }
          }

          v43 = [allKeys countByEnumeratingWithState:&v67 objects:v83 count:16];
        }

        while (v43);
      }
    }

    else
    {
      v41 = sub_1000090B8();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v50 = *p_mambaID;
        *buf = 136315394;
        *&buf[4] = v50;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s%sdefaultPath not found", buf, 0x16u);
      }
    }

    v51 = *p_mambaID;
    v66 = *p_mambaID;
    v52 = sub_1000090B8();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      contextInfo2 = [v62 contextInfo];
      *buf = 136315650;
      *&buf[4] = v51;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v79 = 2112;
      v80 = contextInfo2;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I %s%sInitialized CarrierParameters for context %@:", buf, 0x20u);
    }

    *buf = off_1000ED750;
    *&buf[8] = &v66;
    v80 = buf;
    logger::CFTypeRefLogger();
    sub_100009514(buf);
    v54 = [v6 copy];
    [(VVCarrierParameters *)v63 setParameterValues:v54];

    v55 = sub_1000090B8();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = v63->mambaID;
      v57 = objc_opt_class();
      *buf = 136315906;
      *&buf[4] = mambaID;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v79 = 2112;
      v80 = v57;
      v81 = 2048;
      v82 = v63;
      v58 = v57;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s%s<%@ %p> Created", buf, 0x2Au);
    }

    serviceCopy = v62;
  }

  return v63;
}

- (void)dealloc
{
  v3 = sub_1000090B8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    *buf = 136315906;
    v8 = mambaID;
    v9 = 2080;
    v10 = " ";
    v11 = 2112;
    v12 = objc_opt_class();
    v13 = 2048;
    selfCopy = self;
    v5 = v12;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s<%@ %p> Deleted", buf, 0x2Au);
  }

  v6.receiver = self;
  v6.super_class = VVCarrierParameters;
  [(VVCarrierParameters *)&v6 dealloc];
}

- (id)parameterValueForKey:(id)key
{
  v3 = [(NSDictionary *)self->_parameterValues objectForKeyedSubscript:key];

  return v3;
}

@end