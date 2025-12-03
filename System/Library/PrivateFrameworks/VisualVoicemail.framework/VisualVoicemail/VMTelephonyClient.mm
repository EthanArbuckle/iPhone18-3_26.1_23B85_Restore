@interface VMTelephonyClient
- (VMTelephonyClient)init;
- (VMTelephonyClient)initWithQueue:(id)queue;
- (id)carrierBundle:(id)bundle;
- (id)contexts;
- (id)countryCode:(id)code;
- (id)fetchContexts;
- (id)fetchCountryCode:(id)code;
- (id)fetchIsoCountryCode:(id)code;
- (id)fetchNetworkCode:(id)code;
- (id)fetchSubscriptions;
- (id)fetchVoicemailPhoneNumber:(id)number;
- (id)getIsoContryCodes;
- (id)isoCountryCode:(id)code;
- (id)networkCode:(id)code;
- (id)subscriptionContextWithPhoneNumber:(id)number;
- (id)subscriptions;
- (id)userDefaultVoiceSubscriptionContext;
- (id)voicemailPhoneNumber:(id)number;
- (void)activeSubscriptionsDidChange;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)carrierBundleChange:(id)change;
- (void)connectionAvailability:(id)availability availableConnections:(id)connections;
- (void)connectionStateChanged:(id)changed connection:(int)connection dataConnectionStatusInfo:(id)info;
- (void)performAtomicAccessorBlock:(id)block;
- (void)performAtomicDelegateBlock:(id)block;
- (void)performSelectorOnDelegates:(SEL)delegates;
- (void)performSelectorOnDelegates:(SEL)delegates withObject:(id)object;
- (void)performSelectorOnDelegates:(SEL)delegates withObject:(id)object withObject:(id)withObject;
- (void)postSMSMessageSent:(id)sent success:(BOOL)success messageID:(int64_t)d err1:(int64_t)err1 err2:(int64_t)err2;
- (void)removeDelegate:(id)delegate;
- (void)smsReadyStateChanged:(id)changed info:(BOOL)info;
- (void)subscriberCountryCodeDidChange:(id)change;
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

- (VMTelephonyClient)initWithQueue:(id)queue
{
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = VMTelephonyClient;
  v6 = [(VMTelephonyClient *)&v14 initWithQueue:queueCopy];
  v7 = v6;
  if (v6)
  {
    v6->_accessorLock._os_unfair_lock_opaque = 0;
    v6->_delegateLock._os_unfair_lock_opaque = 0;
    v8 = +[NSMapTable weakToStrongObjectsMapTable];
    delegateToQueue = v7->_delegateToQueue;
    v7->_delegateToQueue = v8;

    objc_storeStrong(&v7->_queue, queue);
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

- (id)subscriptionContextWithPhoneNumber:(id)number
{
  numberCopy = number;
  subscriptions = [(VMTelephonyClient *)self subscriptions];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100093644;
  v10[3] = &unk_1000EFEC8;
  v6 = numberCopy;
  v11 = v6;
  v7 = [subscriptions indexOfObjectPassingTest:v10];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [subscriptions objectAtIndexedSubscript:v7];
  }

  return v8;
}

- (id)userDefaultVoiceSubscriptionContext
{
  subscriptions = [(VMTelephonyClient *)self subscriptions];
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
    v7 = [subscriptions indexOfObjectPassingTest:&v9];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      v6 = [subscriptions objectAtIndexedSubscript:{v7, v9, v10, v11, v12}];
    }
  }

  return v6;
}

- (id)isoCountryCode:(id)code
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
  selfCopy = self;
  codeCopy = code;
  v8 = codeCopy;
  [(VMTelephonyClient *)selfCopy performAtomicAccessorBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (id)countryCode:(id)code
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
  selfCopy = self;
  codeCopy = code;
  v8 = codeCopy;
  v9 = &v10;
  [(VMTelephonyClient *)selfCopy performAtomicAccessorBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (id)networkCode:(id)code
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
  selfCopy = self;
  codeCopy = code;
  v8 = codeCopy;
  v9 = &v10;
  [(VMTelephonyClient *)selfCopy performAtomicAccessorBlock:v6];
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

- (id)voicemailPhoneNumber:(id)number
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
  selfCopy = self;
  numberCopy = number;
  v8 = numberCopy;
  v9 = &v10;
  [(VMTelephonyClient *)selfCopy performAtomicAccessorBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (id)carrierBundle:(id)bundle
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
  selfCopy = self;
  bundleCopy = bundle;
  v8 = bundleCopy;
  v9 = &v10;
  [(VMTelephonyClient *)selfCopy performAtomicAccessorBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000943E4;
  v9[3] = &unk_1000ED478;
  v9[4] = self;
  queueCopy = queue;
  v11 = delegateCopy;
  v7 = delegateCopy;
  v8 = queueCopy;
  [(VMTelephonyClient *)self performAtomicDelegateBlock:v9];
}

- (void)removeDelegate:(id)delegate
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000944DC;
  v4[3] = &unk_1000ED450;
  selfCopy = self;
  delegateCopy = delegate;
  v3 = delegateCopy;
  [(VMTelephonyClient *)selfCopy performAtomicDelegateBlock:v4];
}

- (void)performAtomicAccessorBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    os_unfair_lock_lock_with_options();
    blockCopy[2]();
    os_unfair_lock_unlock(&self->_accessorLock);
  }

  else
  {
    sub_10009E47C(a2, self);
  }
}

- (void)performAtomicDelegateBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    os_unfair_lock_lock_with_options();
    blockCopy[2]();
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
  subscriptionsValid = [v2 subscriptionsValid];

  if (subscriptionsValid || ([v3 domain], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v5 = vm_vmd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = subscriptionsValid;
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

  return subscriptionsValid;
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

- (id)fetchIsoCountryCode:(id)code
{
  codeCopy = code;
  context = [codeCopy context];
  v13 = 0;
  v6 = [(VMTelephonyClient *)self getMobileSubscriberHomeCountryList:context error:&v13];
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

  firstObject = [v6 firstObject];
  if (![firstObject length])
  {
    v10 = vm_vmd_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = codeCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Retrieved <empty> ISO country code for %@.", buf, 0xCu);
    }

    v9 = firstObject;
LABEL_12:
    firstObject = 0;
LABEL_13:

    goto LABEL_14;
  }

  if (firstObject)
  {
    v9 = vm_vmd_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = firstObject;
      v16 = 2112;
      v17 = codeCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Retrieved ISO country code '%@' for %@.", buf, 0x16u);
    }

    goto LABEL_13;
  }

LABEL_14:
  v11 = firstObject;

  return firstObject;
}

- (id)fetchCountryCode:(id)code
{
  codeCopy = code;
  context = [codeCopy context];
  v12 = 0;
  v6 = [(VMTelephonyClient *)self copyLastKnownMobileSubscriberCountryCode:context error:&v12];
  v7 = v12;

  domain = [v7 domain];

  v9 = vm_vmd_log();
  v10 = v9;
  if (domain)
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
    v16 = codeCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Retrieved country code '%@' for %@", buf, 0x16u);
  }

  return v6;
}

- (id)fetchNetworkCode:(id)code
{
  codeCopy = code;
  context = [codeCopy context];
  v12 = 0;
  v6 = [(VMTelephonyClient *)self copyMobileSubscriberNetworkCode:context error:&v12];
  v7 = v12;

  domain = [v7 domain];

  v9 = vm_vmd_log();
  v10 = v9;
  if (domain)
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
    v16 = codeCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Retrieved network code '%@' for %@", buf, 0x16u);
  }

  return v6;
}

- (id)fetchVoicemailPhoneNumber:(id)number
{
  numberCopy = number;
  context = [numberCopy context];
  v11 = 0;
  v6 = [(VMTelephonyClient *)self getVoicemailCallInDetails:context outError:&v11];
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
      v15 = numberCopy;
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
  queue = [(VMTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = vm_vmd_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Subscription information has changed; updating the cached list of subscriptions.", buf, 2u);
  }

  fetchSubscriptions = [(VMTelephonyClient *)self fetchSubscriptions];
  *buf = 0;
  v12 = buf;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100094FDC;
  v7[3] = &unk_1000ED4A0;
  v6 = fetchSubscriptions;
  v8 = v6;
  selfCopy = self;
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
  queue = [(VMTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

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

- (void)subscriberCountryCodeDidChange:(id)change
{
  changeCopy = change;
  queue = [(VMTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000956D4;
  v11 = &unk_1000ED450;
  selfCopy = self;
  v6 = changeCopy;
  v13 = v6;
  [(VMTelephonyClient *)self performAtomicAccessorBlock:&v8];
  v7 = vm_vmd_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ISO country code has changed for subscription %@; updating the cached list of subscriptions.", buf, 0xCu);
  }

  [(VMTelephonyClient *)self performSelectorOnDelegates:"subscriberCountryCodeDidChange:" withObject:v6, v8, v9, v10, v11, selfCopy];
}

- (void)carrierBundleChange:(id)change
{
  changeCopy = change;
  queue = [(VMTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10009588C;
  v11 = &unk_1000ED450;
  selfCopy = self;
  v6 = changeCopy;
  v13 = v6;
  [(VMTelephonyClient *)self performAtomicAccessorBlock:&v8];
  v7 = vm_vmd_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CB changed for %@", buf, 0xCu);
  }

  [(VMTelephonyClient *)self performSelectorOnDelegates:"carrierBundleChange:" withObject:v6, v8, v9, v10, v11, selfCopy];
}

- (void)postSMSMessageSent:(id)sent success:(BOOL)success messageID:(int64_t)d err1:(int64_t)err1 err2:(int64_t)err2
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000959F4;
  v12[3] = &unk_1000EFEF0;
  selfCopy = self;
  sentCopy = sent;
  successCopy = success;
  dCopy = d;
  err1Copy = err1;
  err2Copy = err2;
  v11 = sentCopy;
  [(VMTelephonyClient *)selfCopy performAtomicDelegateBlock:v12];
}

- (void)connectionAvailability:(id)availability availableConnections:(id)connections
{
  availabilityCopy = availability;
  connectionsCopy = connections;
  v8 = vm_vmd_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = availabilityCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "connectionAvailability changed for %@", &v9, 0xCu);
  }

  [(VMTelephonyClient *)self performSelectorOnDelegates:"connectionAvailability:availableConnections:" withObject:availabilityCopy withObject:connectionsCopy];
}

- (void)connectionStateChanged:(id)changed connection:(int)connection dataConnectionStatusInfo:(id)info
{
  changedCopy = changed;
  infoCopy = info;
  v10 = vm_vmd_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = changedCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "connectionStateChanged changed for %@", buf, 0xCu);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100095E08;
  v13[3] = &unk_1000EFF18;
  v13[4] = self;
  v14 = changedCopy;
  connectionCopy = connection;
  v15 = infoCopy;
  v11 = infoCopy;
  v12 = changedCopy;
  [(VMTelephonyClient *)self performAtomicDelegateBlock:v13];
}

- (void)smsReadyStateChanged:(id)changed info:(BOOL)info
{
  changedCopy = changed;
  v7 = vm_vmd_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = changedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "smsReadyStateChanged changed for %@", buf, 0xCu);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100096110;
  v9[3] = &unk_1000EEEE8;
  v9[4] = self;
  v10 = changedCopy;
  infoCopy = info;
  v8 = changedCopy;
  [(VMTelephonyClient *)self performAtomicDelegateBlock:v9];
}

- (void)performSelectorOnDelegates:(SEL)delegates
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10009635C;
  v3[3] = &unk_1000EEF10;
  v3[4] = self;
  v3[5] = delegates;
  [(VMTelephonyClient *)self performAtomicDelegateBlock:v3];
}

- (void)performSelectorOnDelegates:(SEL)delegates withObject:(id)object
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000965A0;
  v7[3] = &unk_1000EE7D8;
  objectCopy = object;
  delegatesCopy = delegates;
  v7[4] = self;
  v6 = objectCopy;
  [(VMTelephonyClient *)self performAtomicDelegateBlock:v7];
}

- (void)performSelectorOnDelegates:(SEL)delegates withObject:(id)object withObject:(id)withObject
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009682C;
  v9[3] = &unk_1000EFF40;
  selfCopy = self;
  objectCopy = object;
  withObjectCopy = withObject;
  delegatesCopy = delegates;
  v7 = withObjectCopy;
  v8 = objectCopy;
  [(VMTelephonyClient *)selfCopy performAtomicDelegateBlock:v9];
}

@end