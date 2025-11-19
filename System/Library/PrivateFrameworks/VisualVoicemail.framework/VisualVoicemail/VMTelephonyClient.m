@interface VMTelephonyClient
- (VMTelephonyClient)init;
- (VMTelephonyClient)initWithQueue:(id)a3;
- (id)carrierBundle:(id)a3;
- (id)contexts;
- (id)countryCode:(id)a3;
- (id)fetchContexts;
- (id)fetchCountryCode:(id)a3;
- (id)fetchIsoCountryCode:(id)a3;
- (id)fetchNetworkCode:(id)a3;
- (id)fetchSubscriptions;
- (id)fetchVoicemailPhoneNumber:(id)a3;
- (id)getIsoContryCodes;
- (id)isoCountryCode:(id)a3;
- (id)networkCode:(id)a3;
- (id)subscriptionContextWithPhoneNumber:(id)a3;
- (id)subscriptions;
- (id)userDefaultVoiceSubscriptionContext;
- (id)voicemailPhoneNumber:(id)a3;
- (void)activeSubscriptionsDidChange;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)carrierBundleChange:(id)a3;
- (void)connectionAvailability:(id)a3 availableConnections:(id)a4;
- (void)connectionStateChanged:(id)a3 connection:(int)a4 dataConnectionStatusInfo:(id)a5;
- (void)performAtomicAccessorBlock:(id)a3;
- (void)performAtomicDelegateBlock:(id)a3;
- (void)performSelectorOnDelegates:(SEL)a3;
- (void)performSelectorOnDelegates:(SEL)a3 withObject:(id)a4;
- (void)performSelectorOnDelegates:(SEL)a3 withObject:(id)a4 withObject:(id)a5;
- (void)postSMSMessageSent:(id)a3 success:(BOOL)a4 messageID:(int64_t)a5 err1:(int64_t)a6 err2:(int64_t)a7;
- (void)removeDelegate:(id)a3;
- (void)smsReadyStateChanged:(id)a3 info:(BOOL)a4;
- (void)subscriberCountryCodeDidChange:(id)a3;
- (void)subscriptionInfoDidChange;
@end

@implementation VMTelephonyClient

- (id)subscriptions
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000937FC;
  v9 = sub_10009380C;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002D64;
  v4[3] = &unk_1000ED4C8;
  v4[4] = self;
  v4[5] = &v5;
  [(VMTelephonyClient *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)contexts
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000937FC;
  v9 = sub_10009380C;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000030A0;
  v4[3] = &unk_1000ED4C8;
  v4[4] = self;
  v4[5] = &v5;
  [(VMTelephonyClient *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (VMTelephonyClient)init
{
  [(VMTelephonyClient *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMTelephonyClient)initWithQueue:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = VMTelephonyClient;
  v6 = [(VMTelephonyClient *)&v14 initWithQueue:v5];
  v7 = v6;
  if (v6)
  {
    v6->_accessorLock._os_unfair_lock_opaque = 0;
    v6->_delegateLock._os_unfair_lock_opaque = 0;
    v8 = +[NSMapTable weakToStrongObjectsMapTable];
    delegateToQueue = v7->_delegateToQueue;
    v7->_delegateToQueue = v8;

    objc_storeStrong(&v7->_queue, a3);
    [(VMTelephonyClient *)v7 setCached_subscriptions:0];
    [(VMTelephonyClient *)v7 setCached_contexts:0];
    v10 = objc_opt_new();
    [(VMTelephonyClient *)v7 setCached_iso:v10];

    [(VMTelephonyClient *)v7 setCached_mcc:0];
    [(VMTelephonyClient *)v7 setCached_mnc:0];
    v11 = objc_opt_new();
    [(VMTelephonyClient *)v7 setCached_vmnumber:v11];

    v12 = +[NSMapTable strongToStrongObjectsMapTable];
    [(VMTelephonyClient *)v7 setCached_cb:v12];

    [(VMTelephonyClient *)v7 setDelegate:v7];
  }

  return v7;
}

- (id)subscriptionContextWithPhoneNumber:(id)a3
{
  v4 = a3;
  v5 = [(VMTelephonyClient *)self subscriptions];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100093644;
  v10[3] = &unk_1000EFEC8;
  v6 = v4;
  v11 = v6;
  v7 = [v5 indexOfObjectPassingTest:v10];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v5 objectAtIndexedSubscript:v7];
  }

  return v8;
}

- (id)userDefaultVoiceSubscriptionContext
{
  v3 = [(VMTelephonyClient *)self subscriptions];
  v14 = 0;
  v4 = [(VMTelephonyClient *)self getUserDefaultVoiceSubscriptionContext:&v14];
  v5 = v14;
  v6 = 0;
  if (!v5)
  {
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100093798;
    v12 = &unk_1000EFEC8;
    v13 = v4;
    v7 = [v3 indexOfObjectPassingTest:&v9];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      v6 = [v3 objectAtIndexedSubscript:{v7, v9, v10, v11, v12}];
    }
  }

  return v6;
}

- (id)isoCountryCode:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000937FC;
  v14 = sub_10009380C;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009393C;
  v6[3] = &unk_1000EDDA0;
  v9 = &v10;
  v7 = self;
  v3 = a3;
  v8 = v3;
  [(VMTelephonyClient *)v7 performAtomicAccessorBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (id)countryCode:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000937FC;
  v14 = sub_10009380C;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100093B88;
  v6[3] = &unk_1000ED4A0;
  v7 = self;
  v3 = a3;
  v8 = v3;
  v9 = &v10;
  [(VMTelephonyClient *)v7 performAtomicAccessorBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (id)networkCode:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000937FC;
  v14 = sub_10009380C;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100093D38;
  v6[3] = &unk_1000ED4A0;
  v7 = self;
  v3 = a3;
  v8 = v3;
  v9 = &v10;
  [(VMTelephonyClient *)v7 performAtomicAccessorBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (id)getIsoContryCodes
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000937FC;
  v9 = sub_10009380C;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100093EBC;
  v4[3] = &unk_1000ED428;
  v4[4] = self;
  v4[5] = &v5;
  [(VMTelephonyClient *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)voicemailPhoneNumber:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000937FC;
  v14 = sub_10009380C;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009404C;
  v6[3] = &unk_1000ED4A0;
  v7 = self;
  v3 = a3;
  v8 = v3;
  v9 = &v10;
  [(VMTelephonyClient *)v7 performAtomicAccessorBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (id)carrierBundle:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000937FC;
  v14 = sub_10009380C;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100094248;
  v6[3] = &unk_1000ED4A0;
  v7 = self;
  v3 = a3;
  v8 = v3;
  v9 = &v10;
  [(VMTelephonyClient *)v7 performAtomicAccessorBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000943E4;
  v9[3] = &unk_1000ED478;
  v9[4] = self;
  v10 = a4;
  v11 = v6;
  v7 = v6;
  v8 = v10;
  [(VMTelephonyClient *)self performAtomicDelegateBlock:v9];
}

- (void)removeDelegate:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000944DC;
  v4[3] = &unk_1000ED450;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(VMTelephonyClient *)v5 performAtomicDelegateBlock:v4];
}

- (void)performAtomicAccessorBlock:(id)a3
{
  v5 = a3;
  if (v5)
  {
    os_unfair_lock_lock_with_options();
    v5[2]();
    os_unfair_lock_unlock(&self->_accessorLock);
  }

  else
  {
    sub_10009E47C(a2, self);
  }
}

- (void)performAtomicDelegateBlock:(id)a3
{
  v5 = a3;
  if (v5)
  {
    os_unfair_lock_lock_with_options();
    v5[2]();
    os_unfair_lock_unlock(&self->_delegateLock);
  }

  else
  {
    sub_10009E4F8(a2, self);
  }
}

- (id)fetchSubscriptions
{
  v8 = 0;
  v2 = [(VMTelephonyClient *)self getSubscriptionInfoWithError:&v8];
  v3 = v8;
  v4 = [v2 subscriptionsValid];

  if (v4 || ([v3 domain], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v5 = vm_vmd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Retrieving subscriptions %@", buf, 0xCu);
    }
  }

  else
  {
    v5 = vm_vmd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10009E574();
    }
  }

  return v4;
}

- (id)fetchContexts
{
  v8 = 0;
  v2 = [(VMTelephonyClient *)self getActiveContexts:&v8];
  v3 = v8;
  v4 = v3;
  if (v2 || ([v3 domain], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v5 = vm_vmd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Retrieving contexts %@", buf, 0xCu);
    }
  }

  else
  {
    v5 = vm_vmd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10009E5DC();
    }
  }

  return v2;
}

- (id)fetchIsoCountryCode:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  v13 = 0;
  v6 = [(VMTelephonyClient *)self getMobileSubscriberHomeCountryList:v5 error:&v13];
  v7 = v13;

  if (!v6 || ![v6 count])
  {
    v9 = vm_vmd_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10009E644();
    }

    goto LABEL_12;
  }

  v8 = [v6 firstObject];
  if (![v8 length])
  {
    v10 = vm_vmd_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Retrieved <empty> ISO country code for %@.", buf, 0xCu);
    }

    v9 = v8;
LABEL_12:
    v8 = 0;
LABEL_13:

    goto LABEL_14;
  }

  if (v8)
  {
    v9 = vm_vmd_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Retrieved ISO country code '%@' for %@.", buf, 0x16u);
    }

    goto LABEL_13;
  }

LABEL_14:
  v11 = v8;

  return v8;
}

- (id)fetchCountryCode:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  v12 = 0;
  v6 = [(VMTelephonyClient *)self copyLastKnownMobileSubscriberCountryCode:v5 error:&v12];
  v7 = v12;

  v8 = [v7 domain];

  v9 = vm_vmd_log();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10009E6B8();
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Retrieved country code '%@' for %@", buf, 0x16u);
  }

  return v6;
}

- (id)fetchNetworkCode:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  v12 = 0;
  v6 = [(VMTelephonyClient *)self copyMobileSubscriberNetworkCode:v5 error:&v12];
  v7 = v12;

  v8 = [v7 domain];

  v9 = vm_vmd_log();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10009E720();
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Retrieved network code '%@' for %@", buf, 0x16u);
  }

  return v6;
}

- (id)fetchVoicemailPhoneNumber:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  v11 = 0;
  v6 = [(VMTelephonyClient *)self getVoicemailCallInDetails:v5 outError:&v11];
  v7 = v11;

  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:kCTVVMNumberKey];
    v9 = vm_vmd_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Retrieved call-in phoneNumber [%@] for %@", buf, 0x16u);
    }
  }

  else
  {
    v9 = vm_vmd_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10009E788();
    }

    v8 = 0;
  }

  return v8;
}

- (void)subscriptionInfoDidChange
{
  v3 = [(VMTelephonyClient *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = vm_vmd_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Subscription information has changed; updating the cached list of subscriptions.", buf, 2u);
  }

  v5 = [(VMTelephonyClient *)self fetchSubscriptions];
  *buf = 0;
  v12 = buf;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100094FDC;
  v7[3] = &unk_1000ED4A0;
  v6 = v5;
  v8 = v6;
  v9 = self;
  v10 = buf;
  [(VMTelephonyClient *)self performAtomicAccessorBlock:v7];
  if (v12[24] == 1)
  {
    [(VMTelephonyClient *)self performSelectorOnDelegates:"subscriptionDataOnlyDidChange"];
  }

  _Block_object_dispose(buf, 8);
}

- (void)activeSubscriptionsDidChange
{
  v3 = [(VMTelephonyClient *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = vm_vmd_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Active context information has changed; updating the cached list of active contexts.", buf, 2u);
  }

  [(VMTelephonyClient *)self fetchContexts];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100095500;
  v9 = &unk_1000ED450;
  v11 = v10 = self;
  v5 = v11;
  [(VMTelephonyClient *)self performAtomicAccessorBlock:&v6];
  [(VMTelephonyClient *)self performSelectorOnDelegates:"activeSubscriptionsDidChange", v6, v7, v8, v9, v10];
}

- (void)subscriberCountryCodeDidChange:(id)a3
{
  v4 = a3;
  v5 = [(VMTelephonyClient *)self queue];
  dispatch_assert_queue_V2(v5);

  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000956D4;
  v11 = &unk_1000ED450;
  v12 = self;
  v6 = v4;
  v13 = v6;
  [(VMTelephonyClient *)self performAtomicAccessorBlock:&v8];
  v7 = vm_vmd_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ISO country code has changed for subscription %@; updating the cached list of subscriptions.", buf, 0xCu);
  }

  [(VMTelephonyClient *)self performSelectorOnDelegates:"subscriberCountryCodeDidChange:" withObject:v6, v8, v9, v10, v11, v12];
}

- (void)carrierBundleChange:(id)a3
{
  v4 = a3;
  v5 = [(VMTelephonyClient *)self queue];
  dispatch_assert_queue_V2(v5);

  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10009588C;
  v11 = &unk_1000ED450;
  v12 = self;
  v6 = v4;
  v13 = v6;
  [(VMTelephonyClient *)self performAtomicAccessorBlock:&v8];
  v7 = vm_vmd_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CB changed for %@", buf, 0xCu);
  }

  [(VMTelephonyClient *)self performSelectorOnDelegates:"carrierBundleChange:" withObject:v6, v8, v9, v10, v11, v12];
}

- (void)postSMSMessageSent:(id)a3 success:(BOOL)a4 messageID:(int64_t)a5 err1:(int64_t)a6 err2:(int64_t)a7
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000959F4;
  v12[3] = &unk_1000EFEF0;
  v13 = self;
  v14 = a3;
  v18 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v11 = v14;
  [(VMTelephonyClient *)v13 performAtomicDelegateBlock:v12];
}

- (void)connectionAvailability:(id)a3 availableConnections:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = vm_vmd_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "connectionAvailability changed for %@", &v9, 0xCu);
  }

  [(VMTelephonyClient *)self performSelectorOnDelegates:"connectionAvailability:availableConnections:" withObject:v6 withObject:v7];
}

- (void)connectionStateChanged:(id)a3 connection:(int)a4 dataConnectionStatusInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = vm_vmd_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "connectionStateChanged changed for %@", buf, 0xCu);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100095E08;
  v13[3] = &unk_1000EFF18;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [(VMTelephonyClient *)self performAtomicDelegateBlock:v13];
}

- (void)smsReadyStateChanged:(id)a3 info:(BOOL)a4
{
  v6 = a3;
  v7 = vm_vmd_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "smsReadyStateChanged changed for %@", buf, 0xCu);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100096110;
  v9[3] = &unk_1000EEEE8;
  v9[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  [(VMTelephonyClient *)self performAtomicDelegateBlock:v9];
}

- (void)performSelectorOnDelegates:(SEL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10009635C;
  v3[3] = &unk_1000EEF10;
  v3[4] = self;
  v3[5] = a3;
  [(VMTelephonyClient *)self performAtomicDelegateBlock:v3];
}

- (void)performSelectorOnDelegates:(SEL)a3 withObject:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000965A0;
  v7[3] = &unk_1000EE7D8;
  v8 = a4;
  v9 = a3;
  v7[4] = self;
  v6 = v8;
  [(VMTelephonyClient *)self performAtomicDelegateBlock:v7];
}

- (void)performSelectorOnDelegates:(SEL)a3 withObject:(id)a4 withObject:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009682C;
  v9[3] = &unk_1000EFF40;
  v10 = self;
  v11 = a4;
  v12 = a5;
  v13 = a3;
  v7 = v12;
  v8 = v11;
  [(VMTelephonyClient *)v10 performAtomicDelegateBlock:v9];
}

@end