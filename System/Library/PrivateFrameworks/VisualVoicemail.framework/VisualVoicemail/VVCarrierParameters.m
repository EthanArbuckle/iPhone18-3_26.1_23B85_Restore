@interface VVCarrierParameters
- (VVCarrierParameters)initWithService:(id)a3;
- (id)parameterValueForKey:(id)a3;
- (void)dealloc;
@end

@implementation VVCarrierParameters

- (VVCarrierParameters)initWithService:(id)a3
{
  v4 = a3;
  v77.receiver = self;
  v77.super_class = VVCarrierParameters;
  v5 = [(VVCarrierParameters *)&v77 init];
  v63 = v5;
  if (v5)
  {
    v62 = v4;
    v65 = [v4 contextInfo];
    v64 = [v4 telephonyClient];
    v6 = +[NSMutableDictionary dictionary];
    v5->mambaID = [v4 getServiceObjLogPrefix];
    p_mambaID = &v5->mambaID;
    v8 = [v65 context];
    v89 = @"com.apple.voicemail.imap";
    v9 = [NSArray arrayWithObjects:&v89 count:1];
    v76 = 0;
    v10 = [v64 context:v8 getCarrierBundleValue:v9 error:&v76];
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
    v14 = [v65 context];
    v75 = v11;
    v15 = [v64 context:v14 getCarrierBundleValue:v13 error:&v75];
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

    v18 = [v65 context];
    v87 = @"VVMIgnoresIntlDataRoaming";
    v19 = [NSArray arrayWithObjects:&v87 count:1];
    v74 = v16;
    v20 = [v64 context:v18 getCarrierBundleValue:v19 error:&v74];
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

    v23 = [v65 context];
    v86 = @"VVMRetryIntervals";
    v24 = [NSArray arrayWithObjects:&v86 count:1];
    v73 = v21;
    v25 = [v64 context:v23 getCarrierBundleValue:v24 error:&v73];
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

    v28 = [v65 context];
    v85 = @"VVMDetachedStorageDisabled";
    v29 = [NSArray arrayWithObjects:&v85 count:1];
    v72 = v26;
    v30 = [v64 context:v28 getCarrierBundleValue:v29 error:&v72];
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

    v33 = [v65 context];
    v84 = @"VVMNotificationFallbackTimeout";
    v34 = [NSArray arrayWithObjects:&v84 count:1];
    v71 = v31;
    v35 = [v64 context:v33 getCarrierBundleValue:v34 error:&v71];
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

    v37 = [v64 carrierBundle:v65];
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
      v42 = [v41 allKeys];
      v43 = [v42 countByEnumeratingWithState:&v67 objects:v83 count:16];
      if (v43)
      {
        v44 = *v68;
        do
        {
          for (i = 0; i != v43; i = i + 1)
          {
            if (*v68 != v44)
            {
              objc_enumerationMutation(v42);
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

          v43 = [v42 countByEnumeratingWithState:&v67 objects:v83 count:16];
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
      v53 = [v62 contextInfo];
      *buf = 136315650;
      *&buf[4] = v51;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v79 = 2112;
      v80 = v53;
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

    v4 = v62;
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
    v14 = self;
    v5 = v12;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s<%@ %p> Deleted", buf, 0x2Au);
  }

  v6.receiver = self;
  v6.super_class = VVCarrierParameters;
  [(VVCarrierParameters *)&v6 dealloc];
}

- (id)parameterValueForKey:(id)a3
{
  v3 = [(NSDictionary *)self->_parameterValues objectForKeyedSubscript:a3];

  return v3;
}

@end