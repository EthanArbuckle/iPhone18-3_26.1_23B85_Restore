@interface CSDCarrierBundleProviderController
- (CSDCarrierBundleProviderController)init;
- (CSDCarrierBundleProviderControllerDelegate)delegate;
- (NSArray)serviceProviders;
- (NSArray)serviceProvidersWithCarrierNumbers;
- (id)arrayOfStringsForKeyHierarchy:(id)hierarchy subscriptionContext:(id)context error:(id *)error;
- (id)carrierNumbersForSubscriptionContext:(id)context;
- (id)fetchServiceProviders;
- (id)objectForKeyHierarchy:(id)hierarchy subscriptionContext:(id)context error:(id *)error;
- (id)spamIdentifiersForSubscriptionUUID:(id)d;
- (void)carrierBundleChange:(id)change;
- (void)setServiceProviders:(id)providers;
- (void)subscriptionInfoDidChange;
@end

@implementation CSDCarrierBundleProviderController

- (CSDCarrierBundleProviderController)init
{
  v12.receiver = self;
  v12.super_class = CSDCarrierBundleProviderController;
  v2 = [(CSDCarrierBundleProviderController *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("CSDCarrierBundlePhoneNumberProviderController", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [[CoreTelephonyClient alloc] initWithQueue:v2->_queue];
    telephonyClient = v2->_telephonyClient;
    v2->_telephonyClient = v6;

    [(CoreTelephonyClient *)v2->_telephonyClient setDelegate:v2];
    v8 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C0768;
    block[3] = &unk_100619D38;
    v11 = v2;
    dispatch_async(v8, block);
  }

  return v2;
}

- (NSArray)serviceProviders
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028624;
  v11 = sub_10003289C;
  v12 = 0;
  queue = [(CSDCarrierBundleProviderController *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C08E4;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSArray)serviceProvidersWithCarrierNumbers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028624;
  v11 = sub_10003289C;
  v12 = 0;
  queue = [(CSDCarrierBundleProviderController *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C0A14;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setServiceProviders:(id)providers
{
  providersCopy = providers;
  queue = [(CSDCarrierBundleProviderController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C0B84;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = providersCopy;
  v6 = providersCopy;
  dispatch_async(queue, v7);
}

- (id)fetchServiceProviders
{
  v3 = objc_alloc_init(NSMutableArray);
  telephonyClient = [(CSDCarrierBundleProviderController *)self telephonyClient];
  v34 = 0;
  v5 = [telephonyClient getSubscriptionInfoWithError:&v34];
  v6 = v34;
  subscriptionsInUse = [v5 subscriptionsInUse];

  if (subscriptionsInUse || ([v6 domain], v24 = objc_claimAutoreleasedReturnValue(), v24, !v24))
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = subscriptionsInUse;
    v8 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v26 = subscriptionsInUse;
      v27 = v6;
      v10 = *v31;
      p_vtable = &OBJC_METACLASS___CSDOrientationMonitor.vtable;
      selfCopy = self;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          uuid = [v13 uuid];
          v15 = objc_alloc((p_vtable + 262));
          v16 = [(CSDCarrierBundleProviderController *)self carrierNumbersForSubscriptionContext:v13];
          v17 = [v15 initWithUUID:uuid carrierPhoneNumbers:v16];

          [v3 addObject:v17];
          v18 = sub_100004778();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            [v17 uuid];
            v19 = v3;
            v21 = v20 = p_vtable;
            [v17 carrierPhoneNumbers];
            v23 = v22 = v10;
            *buf = 138412546;
            v36 = v21;
            v37 = 2112;
            v38 = v23;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "added service provider uuid=%@ carrierPhoneNumbers=%@", buf, 0x16u);

            v10 = v22;
            p_vtable = v20;
            v3 = v19;
            self = selfCopy;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v9);
      subscriptionsInUse = v26;
      v6 = v27;
    }
  }

  else
  {
    obj = sub_100004778();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      sub_100473A7C(v6, self, obj);
    }
  }

  return v3;
}

- (id)spamIdentifiersForSubscriptionUUID:(id)d
{
  dCopy = d;
  telephonyClient = [(CSDCarrierBundleProviderController *)self telephonyClient];
  v28 = 0;
  v6 = [telephonyClient getSubscriptionInfoWithError:&v28];
  v7 = v28;
  subscriptionsInUse = [v6 subscriptionsInUse];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = subscriptionsInUse;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v25 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v24 + 1) + 8 * v13);
      uuid = [v14 uuid];
      v16 = [uuid isEqual:dCopy];

      if (v16)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v18 = v14;

    if (!v18)
    {
      v17 = 0;
      goto LABEL_21;
    }

    v23 = v7;
    v17 = [(CSDCarrierBundleProviderController *)self arrayOfStringsForKeyHierarchy:&off_10063EE48 subscriptionContext:v18 error:&v23];
    v19 = v23;

    if (v17)
    {
      v20 = sub_100004778();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
LABEL_19:

        goto LABEL_20;
      }

      *buf = 138412546;
      v30 = v17;
      v31 = 2112;
      v32 = v18;
      v21 = "Retrieved spamIdentifiersForSubscriptionContext '%@' for subscription %@";
    }

    else
    {
      if (!v19)
      {
        goto LABEL_20;
      }

      v20 = sub_100004778();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 138412546;
      v30 = v18;
      v31 = 2112;
      v32 = v19;
      v21 = "Retrieving spamIdentifiersForSubscriptionContext for subscription %@ failed with error %@";
    }

    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0x16u);
    goto LABEL_19;
  }

LABEL_9:
  v17 = 0;
  v18 = v9;
  v19 = v7;
LABEL_20:

  v7 = v19;
LABEL_21:

  return v17;
}

- (id)carrierNumbersForSubscriptionContext:(id)context
{
  contextCopy = context;
  v11 = 0;
  v5 = [(CSDCarrierBundleProviderController *)self arrayOfStringsForKeyHierarchy:&off_10063EE60 subscriptionContext:contextCopy error:&v11];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = contextCopy;
      v9 = "Retrieved carrier phone number '%@' for subscription %@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0x16u);
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = contextCopy;
      v14 = 2112;
      v15 = v7;
      v9 = "Retrieving carrier phone number for subscription %@ failed with error %@";
      goto LABEL_7;
    }
  }

LABEL_9:

  return v5;
}

- (id)objectForKeyHierarchy:(id)hierarchy subscriptionContext:(id)context error:(id *)error
{
  contextCopy = context;
  hierarchyCopy = hierarchy;
  v10 = [[CTBundle alloc] initWithBundleType:1];
  telephonyClient = [(CSDCarrierBundleProviderController *)self telephonyClient];
  v12 = [telephonyClient copyCarrierBundleValue:contextCopy keyHierarchy:hierarchyCopy bundleType:v10 error:error];

  return v12;
}

- (id)arrayOfStringsForKeyHierarchy:(id)hierarchy subscriptionContext:(id)context error:(id *)error
{
  v5 = [(CSDCarrierBundleProviderController *)self objectForKeyHierarchy:hierarchy subscriptionContext:context error:error];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)carrierBundleChange:(id)change
{
  changeCopy = change;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = changeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Carrier bundle changed for subscription context %@.", buf, 0xCu);
  }

  queue = [(CSDCarrierBundleProviderController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C1594;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)subscriptionInfoDidChange
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Subscription info changed", buf, 2u);
  }

  queue = [(CSDCarrierBundleProviderController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C16BC;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CSDCarrierBundleProviderControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end