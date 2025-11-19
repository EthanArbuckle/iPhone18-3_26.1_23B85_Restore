@interface VMCarrierBundleClient
- (BOOL)isGreetingChangeSupportedForSubscription;
- (BOOL)isPasswordChangeSupportedForSubscription;
- (BOOL)isServiceSupportedForSubscription;
- (BOOL)isServiceSupportedOnInternetForSubscription;
- (VMCarrierBundleClient)initWithTelephonyClient:(id)a3 context:(id)a4;
- (id)cbValueForDomain:(id)a3 key:(id)a4;
- (id)cbValueForKey:(id)a3;
- (id)serviceNameForSubscription;
- (unint64_t)maximumGreetingDurationForSubscription;
- (void)dealloc;
@end

@implementation VMCarrierBundleClient

- (VMCarrierBundleClient)initWithTelephonyClient:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = VMCarrierBundleClient;
  v8 = [(VMCarrierBundleClient *)&v15 init];
  if (v8)
  {
    [v7 slotID];
    v8->instanceID = ++qword_10010D788;
    v8->mambaID = calculateLogPrefix();
    [(VMCarrierBundleClient *)v8 setTelephonyClient:v6];
    v9 = objc_opt_new();
    [(VMCarrierBundleClient *)v8 setValues:v9];

    [(VMCarrierBundleClient *)v8 setContext:v7];
    v8->_accessorLock._os_unfair_lock_opaque = 0;
    v10 = sub_100002630();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = v8->mambaID;
      v12 = objc_opt_class();
      *buf = 136316162;
      v17 = mambaID;
      v18 = 2080;
      v19 = " ";
      v20 = 2112;
      v21 = v12;
      v22 = 2048;
      v23 = v8;
      v24 = 2112;
      v25 = v7;
      v13 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s<%@ %p> Created for subscription %@", buf, 0x34u);
    }
  }

  return v8;
}

- (void)dealloc
{
  v3 = [(VMCarrierBundleClient *)self telephonyClient];
  [v3 removeDelegate:self];

  v4 = sub_100002630();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    *buf = 136315906;
    v9 = mambaID;
    v10 = 2080;
    v11 = " ";
    v12 = 2112;
    v13 = objc_opt_class();
    v14 = 2048;
    v15 = self;
    v6 = v13;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s<%@ %p> Deleted", buf, 0x2Au);
  }

  v7.receiver = self;
  v7.super_class = VMCarrierBundleClient;
  [(VMCarrierBundleClient *)&v7 dealloc];
}

- (BOOL)isGreetingChangeSupportedForSubscription
{
  v2 = [(VMCarrierBundleClient *)self cbValueForKey:@"VVMGreetingChangesSupported"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (unint64_t)maximumGreetingDurationForSubscription
{
  v2 = [(VMCarrierBundleClient *)self cbValueForDomain:@"com.apple.voicemail.imap" key:@"MaxGreetingDuration"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 unsignedIntegerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isPasswordChangeSupportedForSubscription
{
  v2 = [(VMCarrierBundleClient *)self cbValueForKey:@"VVMPasswordChangesSupported"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (id)serviceNameForSubscription
{
  v2 = [(VMCarrierBundleClient *)self cbValueForKey:@"VisualVoicemailServiceName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isServiceSupportedForSubscription
{
  v3 = [(VMCarrierBundleClient *)self cbValueForKey:@"SupportsVoicemail"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v3 BOOLValue])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v4 = [(VMCarrierBundleClient *)self cbValueForKey:@"ShouldHideAllVoicemailUI"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 BOOLValue] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 1;
    }

    v3 = v4;
  }

  return v5;
}

- (BOOL)isServiceSupportedOnInternetForSubscription
{
  v2 = [(VMCarrierBundleClient *)self cbValueForKey:@"AllowedServicesTypeMaskOnInternet"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = ([v2 unsignedIntValue] >> 1) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)cbValueForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(VMCarrierBundleClient *)self context];
  v6 = [v5 context];

  v7 = [(VMCarrierBundleClient *)self values];
  v8 = [v7 objectForKey:v4];
  if (!v8)
  {
    v9 = [(VMCarrierBundleClient *)self telephonyClient];
    v29 = v4;
    v10 = [NSArray arrayWithObjects:&v29 count:1];
    v18 = 0;
    v8 = [v9 context:v6 getCarrierBundleValue:v10 error:&v18];
    v11 = v18;

    if (v11)
    {
      v12 = sub_100002630();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_11:

        goto LABEL_12;
      }

      mambaID = self->mambaID;
      v14 = [(VMCarrierBundleClient *)self context];
      *buf = 136316162;
      v20 = mambaID;
      v21 = 2080;
      v22 = " ";
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v14;
      v27 = 2112;
      v28 = v11;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#E %s%sCould not retrieve carrier bundle key %@ value for subscription %@ with error %@", buf, 0x34u);
    }

    else
    {
      if (v8)
      {
        [v7 setObject:v8 forKey:v4];
      }

      else
      {
        v15 = +[NSNull null];
        [v7 setObject:v15 forKey:v4];
      }

      v12 = sub_100002630();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v16 = self->mambaID;
      v14 = [(VMCarrierBundleClient *)self context];
      *buf = 136316162;
      v20 = v16;
      v21 = 2080;
      v22 = " ";
      v23 = 2112;
      v24 = v4;
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sRetrieved carrier bundle key %@ value %@ for subscription %@", buf, 0x34u);
    }

    goto LABEL_11;
  }

LABEL_12:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_accessorLock);

  return v8;
}

- (id)cbValueForDomain:(id)a3 key:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  v8 = [(VMCarrierBundleClient *)self context];
  v9 = [v8 context];

  v10 = [(VMCarrierBundleClient *)self values];
  v11 = [v10 objectForKey:v6];
  if (!v11)
  {
    v11 = objc_opt_new();
  }

  v12 = [v11 objectForKey:v7];
  v13 = NSDateComponentsFormatter_ptr;
  if (!v12)
  {
    v14 = [(VMCarrierBundleClient *)self telephonyClient];
    v39[0] = v6;
    v39[1] = v7;
    v15 = [NSArray arrayWithObjects:v39 count:2];
    v26 = 0;
    v12 = [v14 context:v9 getCarrierBundleValue:v15 error:&v26];
    v16 = v26;

    if (v16)
    {
      v17 = sub_100002630();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
LABEL_13:

        v13 = NSDateComponentsFormatter_ptr;
        goto LABEL_14;
      }

      mambaID = self->mambaID;
      v19 = [(VMCarrierBundleClient *)self context];
      *buf = 136316418;
      v28 = mambaID;
      v29 = 2080;
      v30 = " ";
      v31 = 2112;
      v32 = v7;
      v33 = 2112;
      v34 = v6;
      v35 = 2112;
      v36 = v19;
      v20 = v19;
      v37 = 2112;
      v38 = v16;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#E %s%sCould not retrieve carrier bundle key %@ domain %@ value for subscription %@ with error %@", buf, 0x3Eu);
    }

    else
    {
      if (v12)
      {
        [v11 setObject:v12 forKey:v7];
      }

      else
      {
        v21 = +[NSNull null];
        [v11 setObject:v21 forKey:v7];
      }

      v17 = sub_100002630();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v22 = self->mambaID;
      v23 = [(VMCarrierBundleClient *)self context];
      *buf = 136316418;
      v28 = v22;
      v29 = 2080;
      v30 = " ";
      v31 = 2112;
      v32 = v7;
      v33 = 2112;
      v34 = v6;
      v35 = 2112;
      v36 = v12;
      v37 = 2112;
      v38 = v23;
      v20 = v23;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sRetrieved carrier bundle key %@ domain %@ value %@ for subscription %@", buf, 0x3Eu);
    }

    goto LABEL_13;
  }

LABEL_14:
  v24 = v13[97];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v12 = 0;
  }

  os_unfair_lock_unlock(&self->_accessorLock);

  return v12;
}

@end