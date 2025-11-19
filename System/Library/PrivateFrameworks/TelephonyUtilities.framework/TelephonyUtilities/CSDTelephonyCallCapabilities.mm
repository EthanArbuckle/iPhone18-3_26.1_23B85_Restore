@interface CSDTelephonyCallCapabilities
- (BOOL)areCapabilitiesValid;
- (BOOL)isEmergencyCallbackModeEnabled;
- (BOOL)isEmergencyCallbackPossible;
- (BOOL)shouldUpdateSubscriptions;
- (CSDTelephonyCallCapabilities)initWithQueue:(id)a3;
- (CSDTelephonyCallCapabilities)initWithQueue:(id)a3 coreTelephonyClient:(id)a4 emergencyCallbackCapabilities:(id)a5;
- (CSDTelephonyCallCapabilitiesDelegate)delegate;
- (NSArray)localThumperAccounts;
- (NSArray)secondaryThumperAccounts;
- (NSString)associatedThumperAccountID;
- (NSString)debugDescription;
- (id)_senderIdentityCapabilitiesStateForSubscription:(id)a3;
- (id)_subscriptionWithUUID:(id)a3;
- (id)primaryThumperAccountUsingDevices:(id)a3 outgoingCallerIDURI:(id)a4 requireMatchingCallerIDURI:(BOOL)a5 requireAvailableDeviceSlots:(BOOL)a6;
- (id)secondaryThumperAccountForAccountID:(id)a3;
- (id)secondaryThumperAccountForRegisteredDeviceID:(id)a3;
- (id)telephonySubscriptionLabelIdentifierForSenderIdentityUUID:(id)a3;
- (void)_updateCallCapabilitiesForSubscription:(id)a3 capabilitiesState:(id)a4;
- (void)_updateEmergencyCallbackModeEnabledState;
- (void)_updateState;
- (void)_updateSubscriptions;
- (void)_updateSystemCapabilitiesStateForSubscription:(id)a3 capabilitiesState:(id)a4;
- (void)_updateThumperAccountState;
- (void)client:(id)a3 capabilitiesDidChange:(id)a4;
- (void)client:(id)a3 subscription:(id)a4 callCapabilitiesDidChange:(id)a5;
- (void)client:(id)a3 subscription:(id)a4 capabilitiesDidChange:(id)a5;
- (void)emergencyCallbackModeDidChangeForAllSubscriptionsForClient:(id)a3;
- (void)endEmergencyCallbackMode;
- (void)invalidateAndRefreshThumperCallingCapabilitiesForSenderIdentityWithUUID:(id)a3;
- (void)invalidateAndRefreshVoLTECallingCapabilitiesForSenderIdentityWithUUID:(id)a3;
- (void)invalidateAndRefreshWiFiCallingCapabilitiesForSenderIdentityWithUUID:(id)a3;
- (void)setAssociatedThumperAccountID:(id)a3;
- (void)setCallCapabilities:(id)a3 forSenderIdentityCapabilitiesState:(id)a4;
- (void)setCapabilityInfo:(id)a3 forSubscription:(id)a4 senderIdentityCapabilitiesState:(id)a5;
- (void)setSecondaryThumperAccounts:(id)a3;
- (void)setThumperCallingAllowed:(BOOL)a3 onSecondaryDeviceWithID:(id)a4 forSenderIdentityWithUUID:(id)a5;
- (void)setThumperCallingAssociatedAccountID:(id)a3;
- (void)subscriptionsDidChangeForClient:(id)a3;
@end

@implementation CSDTelephonyCallCapabilities

- (CSDTelephonyCallCapabilities)initWithQueue:(id)a3
{
  v4 = a3;
  v5 = [[CSDCoreTelephonyClient alloc] initWithQueue:v4 shouldRegisterForECBMNotification:1];
  v6 = [[CSDEmergencyCallbackCapabilities alloc] initWithQueue:v4];
  v7 = [(CSDTelephonyCallCapabilities *)self initWithQueue:v4 coreTelephonyClient:v5 emergencyCallbackCapabilities:v6];

  return v7;
}

- (CSDTelephonyCallCapabilities)initWithQueue:(id)a3 coreTelephonyClient:(id)a4 emergencyCallbackCapabilities:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v26.receiver = self;
  v26.super_class = CSDTelephonyCallCapabilities;
  v12 = [(CSDTelephonyCallCapabilities *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, a3);
    v14 = +[NSSet set];
    subscriptions = v13->_subscriptions;
    v13->_subscriptions = v14;

    senderIdentityCapabilitiesStateByUUID = v13->_senderIdentityCapabilitiesStateByUUID;
    v13->_senderIdentityCapabilitiesStateByUUID = &__NSDictionary0__struct;

    v17 = +[NSMutableDictionary dictionary];
    lastSavedAccountIDByCapability = v13->_lastSavedAccountIDByCapability;
    v13->_lastSavedAccountIDByCapability = v17;

    objc_storeStrong(&v13->_coreTelephonyClient, a4);
    [(CSDCoreTelephonyClient *)v13->_coreTelephonyClient setDelegate:v13];
    objc_storeStrong(&v13->_emergencyCallbackCapabilities, a5);
    objc_initWeak(&location, v13);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10021A6DC;
    v23[3] = &unk_10061A740;
    objc_copyWeak(&v24, &location);
    [(CSDEmergencyCallbackCapabilities *)v13->_emergencyCallbackCapabilities setEmergencyCallbackCapabilitiesDidChange:v23];
    queue = v13->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10021A734;
    block[3] = &unk_100619D38;
    v22 = v13;
    dispatch_async(queue, block);

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (NSString)debugDescription
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p>\n", objc_opt_class(), self];
  v4 = v3;
  if (self->_capabilitiesValid)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"    Are capabilities valid: %@\n", v5];
  v6 = [(CSDTelephonyCallCapabilities *)self senderIdentityCapabilitiesStateByUUID];
  [v4 appendFormat:@"    Sender identity capabilities: %@\n", v6];

  v7 = [(CSDTelephonyCallCapabilities *)self emergencyCallbackCapabilities];
  [v4 appendFormat:@"    Emergency callback capabilities: %@\n", v7];

  v8 = [(CSDTelephonyCallCapabilities *)self localThumperDeviceID];
  [v4 appendFormat:@"    Thumper local device ID: %@\n", v8];

  v9 = [(CSDTelephonyCallCapabilities *)self localThumperAccounts];
  [v4 appendFormat:@"    Thumper local accounts: %@\n", v9];

  v10 = [(CSDTelephonyCallCapabilities *)self secondaryThumperAccounts];
  [v4 appendFormat:@"    Thumper secondary accounts: %@\n", v10];

  return v4;
}

- (BOOL)areCapabilitiesValid
{
  v3 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v3);

  return self->_capabilitiesValid;
}

- (NSArray)localThumperAccounts
{
  v3 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v3);

  localThumperAccounts = self->_localThumperAccounts;

  return localThumperAccounts;
}

- (NSArray)secondaryThumperAccounts
{
  v3 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v3);

  secondaryThumperAccounts = self->_secondaryThumperAccounts;

  return secondaryThumperAccounts;
}

- (void)setSecondaryThumperAccounts:(id)a3
{
  v4 = a3;
  v5 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = self->_secondaryThumperAccounts;
  if ((TUObjectsAreEqualOrNil() & 1) == 0)
  {
    v7 = [v4 copy];
    secondaryThumperAccounts = self->_secondaryThumperAccounts;
    self->_secondaryThumperAccounts = v7;

    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_secondaryThumperAccounts;
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Secondary Thumper accounts changed from %@ to %@", &v11, 0x16u);
    }
  }
}

- (BOOL)isEmergencyCallbackModeEnabled
{
  v3 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v3);

  return self->_emergencyCallbackModeEnabled;
}

- (BOOL)isEmergencyCallbackPossible
{
  v2 = [(CSDTelephonyCallCapabilities *)self emergencyCallbackCapabilities];
  v3 = [v2 emergencyCallbackPossible];

  return v3;
}

- (id)primaryThumperAccountUsingDevices:(id)a3 outgoingCallerIDURI:(id)a4 requireMatchingCallerIDURI:(BOOL)a5 requireAvailableDeviceSlots:(BOOL)a6
{
  v53 = a6;
  v8 = a3;
  v52 = a4;
  v9 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = [(CSDTelephonyCallCapabilities *)self secondaryThumperAccounts];
  v48 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v8 count]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v63;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v63 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v62 + 1) + 8 * i);
        v17 = [v16 uniqueIDOverride];

        if (v17)
        {
          v18 = [v16 uniqueIDOverride];
          [v48 setObject:v16 forKeyedSubscript:v18];
        }

        else
        {
          v18 = sub_100004778();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v69 = v16;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Skipping device %@ because uniqueIDOverride is nil", buf, 0xCu);
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v62 objects:v74 count:16];
    }

    while (v13);
  }

  v19 = sub_100004778();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v69 = v10;
    v70 = 2112;
    v71 = v11;
    v72 = 2112;
    v73 = v52;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Attempting to find primary Thumper account in accounts: %@ devices: %@ outgoingCallerIDURI: %@", buf, 0x20u);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v20 = v10;
  v47 = [v20 countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (!v47)
  {

    v38 = 0;
    v36 = 0;
    v21 = 0;
    v39 = 0;
    goto LABEL_52;
  }

  v44 = v11;
  obj = v20;
  v21 = 0;
  v50 = 0;
  v51 = 0;
  v46 = *v59;
  do
  {
    v22 = 0;
    do
    {
      if (*v59 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v49 = v22;
      v23 = *(*(&v58 + 1) + 8 * v22);
      v24 = [v23 phoneNumberURI];
      v25 = [v23 primaryDeviceID];
      v26 = [v48 objectForKeyedSubscript:v25];

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v27 = [v26 linkedUserURIs];
      v28 = [v27 countByEnumeratingWithState:&v54 objects:v66 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v55;
        do
        {
          for (j = 0; j != v29; j = j + 1)
          {
            if (*v55 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v54 + 1) + 8 * j);
            if (TUStringsAreCaseInsensitiveEqual() && (!v53 || [v23 availableDeviceSlots] >= 1))
            {
              v33 = v23;

              if ([v26 isDefaultPairedDevice])
              {
                v34 = v33;

                v50 = v34;
              }

              if (TUStringsAreCaseInsensitiveEqual())
              {
                v21 = v33;

                v51 = v21;
              }

              else
              {
                v21 = v33;
              }
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v54 objects:v66 count:16];
        }

        while (v29);
      }

      v22 = v49 + 1;
    }

    while ((v49 + 1) != v47);
    v47 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
  }

  while (v47);

  if (v50)
  {
    v35 = sub_100004778();
    v11 = v44;
    v36 = v51;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v69 = v50;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Found default paired device; setting primary Thumper account to %@", buf, 0xCu);
    }

    v37 = v50;
    v38 = v37;
  }

  else
  {
    v11 = v44;
    if (v51)
    {
      v40 = sub_100004778();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v69 = v52;
        v70 = 2112;
        v71 = v51;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Found matching outgoing caller ID %@; setting primary Thumper account to %@", buf, 0x16u);
      }

      v37 = v51;
      v36 = v37;
      v38 = 0;
    }

    else
    {
      v38 = 0;
      if (!v21 || a5)
      {
        v36 = 0;
        v39 = 0;
        goto LABEL_51;
      }

      v41 = sub_100004778();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v69 = v52;
        v70 = 2112;
        v71 = obj;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "No primary Thumper account found for outgoingRelayCallerID %@ but requireMatchingCallerID is NO. Arbitrarily choosing last Thumper account from list: %@", buf, 0x16u);
      }

      v37 = v21;
      v21 = v37;
      v38 = 0;
      v36 = 0;
    }
  }

  v39 = v37;
LABEL_51:
  v20 = obj;
LABEL_52:

  return v39;
}

- (NSString)associatedThumperAccountID
{
  v3 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDTelephonyCallCapabilities *)self lastSavedAccountIDByCapability];
  v5 = [v4 objectForKeyedSubscript:kPSAssociatedAccountID];

  return v5;
}

- (void)setAssociatedThumperAccountID:(id)a3
{
  v4 = a3;
  v5 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = kPSAssociatedAccountID;
  v7 = [(CSDTelephonyCallCapabilities *)self lastSavedAccountIDByCapability];
  v8 = [v7 objectForKeyedSubscript:v6];

  if ((TUStringsAreEqualOrNil() & 1) == 0)
  {
    v9 = [(CSDTelephonyCallCapabilities *)self lastSavedAccountIDByCapability];
    [v9 setObject:v4 forKeyedSubscript:v6];

    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Associated Thumper account ID changed from %@ to %@", &v11, 0x16u);
    }
  }
}

- (void)setThumperCallingAssociatedAccountID:(id)a3
{
  v4 = a3;
  v5 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDTelephonyCallCapabilities *)self associatedThumperAccountID];
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v4;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Comparing specified Thumper account ID %@ to cached associated Thumper account ID %@", buf, 0x16u);
  }

  if ((TUStringsAreCaseInsensitiveEqualOrNil() & 1) == 0)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending CommCenter a request to set associated Thumper account ID to %@", buf, 0xCu);
    }

    v9 = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
    v10 = kCTCapabilityPhoneServices;
    if (v4)
    {
      v11 = v4;
    }

    else
    {
      v11 = &stru_100631E68;
    }

    v13 = kPSAssociatedAccountID;
    v14 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v9 setCapability:v10 enabled:0 info:v12];
  }
}

- (void)setThumperCallingAllowed:(BOOL)a3 onSecondaryDeviceWithID:(id)a4 forSenderIdentityWithUUID:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = [(CSDTelephonyCallCapabilities *)self _subscriptionWithUUID:v9];
  if (v11)
  {
    v12 = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
    v13 = v12;
    if (v6)
    {
      [v12 addSecondaryThumperDeviceWithIDSDeviceIdentifier:v8 toSubscription:v11];
    }

    else
    {
      [v12 removeSecondaryThumperDeviceWithIDSDeviceIdentifier:v8 fromSubscription:v11];
    }
  }

  else
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(CSDTelephonyCallCapabilities *)self subscriptions];
      v16 = 138412546;
      v17 = v9;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find subscription with UUID %@. All subscriptions: %@", &v16, 0x16u);
    }
  }
}

- (void)invalidateAndRefreshWiFiCallingCapabilitiesForSenderIdentityWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDTelephonyCallCapabilities *)self senderIdentityCapabilitiesStateByUUID];
  v11 = [v6 objectForKeyedSubscript:v4];

  v7 = [v11 wiFiCallingCapabilitiesState];
  [v7 invalidateProvisioningURL];

  v8 = [(CSDTelephonyCallCapabilities *)self _subscriptionWithUUID:v4];

  v9 = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
  [v9 recheckAccountStatusForSubscription:v8 capability:kCTCapabilityAgent2];

  v10 = [(CSDTelephonyCallCapabilities *)self delegate];
  [v10 telephonyCallCapabilitiesChanged];
}

- (void)invalidateAndRefreshVoLTECallingCapabilitiesForSenderIdentityWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDTelephonyCallCapabilities *)self senderIdentityCapabilitiesStateByUUID];
  v11 = [v6 objectForKeyedSubscript:v4];

  v7 = [v11 voLTECallingCapabilitiesState];
  [v7 invalidateProvisioningURL];

  v8 = [(CSDTelephonyCallCapabilities *)self _subscriptionWithUUID:v4];

  v9 = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
  [v9 recheckAccountStatusForSubscription:v8 capability:kCTCapabilityAgent];

  v10 = [(CSDTelephonyCallCapabilities *)self delegate];
  [v10 telephonyCallCapabilitiesChanged];
}

- (void)invalidateAndRefreshThumperCallingCapabilitiesForSenderIdentityWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDTelephonyCallCapabilities *)self senderIdentityCapabilitiesStateByUUID];
  v11 = [v6 objectForKeyedSubscript:v4];

  v7 = [v11 thumperCallingCapabilitiesState];
  [v7 invalidateProvisioningURL];

  v8 = [(CSDTelephonyCallCapabilities *)self _subscriptionWithUUID:v4];

  v9 = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
  [v9 recheckAccountStatusForSubscription:v8 capability:kCTCapabilityPhoneServices];

  v10 = [(CSDTelephonyCallCapabilities *)self delegate];
  [v10 telephonyCallCapabilitiesChanged];
}

- (void)endEmergencyCallbackMode
{
  v3 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
  [v4 endEmergencyCallbackMode];
}

- (id)secondaryThumperAccountForAccountID:(id)a3
{
  v4 = a3;
  v5 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v5);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(CSDTelephonyCallCapabilities *)self secondaryThumperAccounts];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 accountID];
        v12 = TUStringsAreCaseInsensitiveEqual();

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)secondaryThumperAccountForRegisteredDeviceID:(id)a3
{
  v4 = a3;
  v5 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v5);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CSDTelephonyCallCapabilities *)self secondaryThumperAccounts];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 containsRegisteredDeviceID:v4])
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)telephonySubscriptionLabelIdentifierForSenderIdentityUUID:(id)a3
{
  v3 = [(CSDTelephonyCallCapabilities *)self _subscriptionWithUUID:a3];
  v4 = [v3 labelID];

  return v4;
}

- (void)setCallCapabilities:(id)a3 forSenderIdentityCapabilitiesState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 isCSCallingAvailable];
  v10 = [v6 csCallingCapabilitiesState];
  [v10 setCurrentlyAvailable:v9];

  v11 = [v7 isVoLTECallingAvailable];
  v12 = [v6 voLTECallingCapabilitiesState];
  [v12 setCurrentlyAvailable:v11];

  v13 = [v7 isWiFiCallingAvailable];
  v14 = [v6 wiFiCallingCapabilitiesState];
  [v14 setCurrentlyAvailable:v13];

  v15 = [v7 isWiFiCallingAvailable];
  v16 = [v6 thumperCallingCapabilitiesState];
  [v16 setCurrentlyAvailable:v15];

  v17 = [v7 isWiFiEmergencyCallingAllowed];
  v18 = [v6 wiFiCallingCapabilitiesState];
  [v18 setEmergencySupported:v17];

  v19 = [v7 isWiFiEmergencyCallingAvailable];
  v20 = [v6 wiFiCallingCapabilitiesState];

  [v20 setEmergencyCurrentlyAvailable:v19];
}

- (void)setCapabilityInfo:(id)a3 forSubscription:(id)a4 senderIdentityCapabilitiesState:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = v8;
    v35 = 2112;
    v36 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received request to set capability information %@ capabilityInfo for subscription %@", buf, 0x16u);
  }

  v13 = [v8 objectForKeyedSubscript:kCTCapabilityAgent];
  if (v13)
  {
    v14 = [[TUCTCapabilitiesState alloc] initWithCapabilityInfo:v13];
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Updating VoLTE capability state with %@", buf, 0xCu);
    }

    [v10 setVoLTECallingCapabilitiesState:v14];
  }

  v16 = [v8 objectForKeyedSubscript:kCTCapabilityAgent2];
  if (v16)
  {
    v17 = [[TUCTCapabilitiesState alloc] initWithCapabilityInfo:v16];
    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Updating VoWiFi capability state with %@", buf, 0xCu);
    }

    [v10 setWiFiCallingCapabilitiesState:v17];
  }

  v19 = [v8 objectForKeyedSubscript:kCTCapabilityPhoneServices];
  if (v19)
  {
    v20 = [[TUThumperCTCapabilitiesState alloc] initWithCapabilityInfo:v19];
    v21 = [v20 accountID];
    v22 = [(CSDTelephonyCallCapabilities *)self associatedThumperAccountID];
    [v20 setAssociated:TUStringsAreCaseInsensitiveEqual()];

    if ([v20 isEnabled])
    {
      v32 = v9;
      v23 = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
      v24 = [v23 telephonySubscriptions];
      v25 = [v24 count];
      if (v25 == 1 || ![v32 csd_isTelephony])
      {
        [v20 setSupportsDefaultPairedDevice:v25 == 1];
      }

      else
      {
        v31 = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
        v30 = [v31 preferredVoiceSubscriptionUUID];
        v26 = [v32 uuid];
        [v20 setSupportsDefaultPairedDevice:{objc_msgSend(v30, "isEqual:")}];
      }

      v9 = v32;
    }

    else
    {
      [v20 setSupportsDefaultPairedDevice:0];
    }

    v27 = sub_100004778();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v20;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Updating Thumper capability state with %@", buf, 0xCu);
    }

    [v10 setThumperCallingCapabilitiesState:v20];
  }

  v28 = [v8 objectForKeyedSubscript:kSimultaneousCallAndDataCurrentlySupported];
  v29 = [v8 objectForKeyedSubscript:kSuspendInternetOnBBCall];
  if (v28 | v29)
  {
    [(CSDTelephonyCallCapabilities *)self _updateSystemCapabilitiesStateForSubscription:v9 capabilitiesState:v10];
  }

  if (v13 || v16 || v19)
  {
    [(CSDTelephonyCallCapabilities *)self _updateCallCapabilitiesForSubscription:v9 capabilitiesState:v10];
  }
}

- (id)_subscriptionWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v5);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(CSDTelephonyCallCapabilities *)self subscriptions];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 uuid];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)_updateState
{
  v3 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v3);

  [(CSDTelephonyCallCapabilities *)self _updateThumperAccountState];

  [(CSDTelephonyCallCapabilities *)self _updateSubscriptions];
}

- (void)_updateSubscriptions
{
  v2 = self;
  v3 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDTelephonyCallCapabilities *)v2 coreTelephonyClient];
  v5 = [v4 subscriptions];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[NSSet set];
  }

  v8 = v7;

  v53 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v8 count]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v63;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v63 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v62 + 1) + 8 * i);
        v14 = [v13 uuid];
        v15 = [(CSDTelephonyCallCapabilities *)v2 _senderIdentityCapabilitiesStateForSubscription:v13];
        if (v15)
        {
          [(CSDTelephonyCallCapabilities *)v2 _updateSystemCapabilitiesStateForSubscription:v13 capabilitiesState:v15];
          [v53 setObject:v15 forKeyedSubscript:v14];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
    }

    while (v10);
  }

  v46 = +[NSMutableSet set];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v47 = [(CSDTelephonyCallCapabilities *)v2 secondaryThumperAccounts];
  v52 = [v47 countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v52)
  {
    v51 = *v59;
    v49 = v2;
    do
    {
      for (j = 0; j != v52; j = j + 1)
      {
        if (*v59 != v51)
        {
          objc_enumerationMutation(v47);
        }

        v17 = *(*(&v58 + 1) + 8 * j);
        v18 = [v17 accountID];
        if ([v18 length])
        {
          v50 = v17;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v19 = [v53 allValues];
          v20 = [v19 countByEnumeratingWithState:&v54 objects:v66 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v55;
LABEL_21:
            v23 = 0;
            while (1)
            {
              if (*v55 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v54 + 1) + 8 * v23);
              v25 = [v24 thumperCallingCapabilitiesState];
              v26 = [v25 accountID];
              v27 = TUStringsAreCaseInsensitiveEqualOrNil();

              if (v27)
              {
                break;
              }

              if (v21 == ++v23)
              {
                v21 = [v19 countByEnumeratingWithState:&v54 objects:v66 count:16];
                v2 = v49;
                if (v21)
                {
                  goto LABEL_21;
                }

                goto LABEL_27;
              }
            }

            v28 = v24;

            v2 = v49;
            if (v28)
            {
              goto LABEL_32;
            }
          }

          else
          {
LABEL_27:
          }

          v29 = [CTXPCContextInfo csd_unknownContextInfoForAccountID:v18];
          if (v29)
          {
            [v46 addObject:v29];
            v30 = [TUSenderIdentityCapabilitiesState alloc];
            v31 = [v29 uuid];
            v32 = [v30 initWithSenderIdentityUUID:v31];

            v33 = [v50 accountID];
            v34 = [v32 thumperCallingCapabilitiesState];
            [v34 setAccountID:v33];

            v35 = [v50 allowedSecondaryDeviceIDs];
            v36 = [v32 thumperCallingCapabilitiesState];
            [v36 setApprovedSecondaryDeviceIDs:v35];

            v37 = [v50 accountID];
            v38 = [(CSDTelephonyCallCapabilities *)v2 associatedThumperAccountID];
            v39 = TUStringsAreCaseInsensitiveEqual();
            v40 = [v32 thumperCallingCapabilitiesState];
            [v40 setAssociated:v39];

            v41 = [v50 primaryDeviceID];
            v42 = [v32 thumperCallingCapabilitiesState];
            [v42 setLocalDeviceID:v41];

            v43 = [v32 thumperCallingCapabilitiesState];
            [v43 setSupported:1];

            v44 = [v32 senderIdentityUUID];
            [v53 setObject:v32 forKeyedSubscript:v44];
          }

          v28 = 0;
LABEL_32:
        }
      }

      v52 = [v47 countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v52);
  }

  v45 = [obj setByAddingObjectsFromSet:v46];
  [(CSDTelephonyCallCapabilities *)v2 setSubscriptions:v45];

  [(CSDTelephonyCallCapabilities *)v2 setSenderIdentityCapabilitiesStateByUUID:v53];
  [(CSDTelephonyCallCapabilities *)v2 _updateEmergencyCallbackModeEnabledState];
}

- (void)_updateCallCapabilitiesForSubscription:(id)a3 capabilitiesState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
  v10 = [v9 callCapabilitiesForSubscription:v6];

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Retrieved new telephony call capabilities for subscription %@: %@", &v12, 0x16u);
  }

  [(CSDTelephonyCallCapabilities *)self setCallCapabilities:v10 forSenderIdentityCapabilitiesState:v7];
}

- (id)_senderIdentityCapabilitiesStateForSubscription:(id)a3
{
  v4 = a3;
  v5 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[NSMutableDictionary dictionary];
  v7 = kCTCapabilityAgent;
  v8 = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
  v9 = [v8 capabilityInfoForSubscription:v4 capability:v7];
  [v6 setObject:v9 forKeyedSubscript:v7];

  v10 = kCTCapabilityAgent2;
  v11 = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
  v12 = [v11 capabilityInfoForSubscription:v4 capability:v10];
  [v6 setObject:v12 forKeyedSubscript:v10];

  v13 = kCTCapabilityPhoneServices;
  v14 = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
  v15 = [v14 capabilityInfoForSubscription:v4 capability:v13];
  [v6 setObject:v15 forKeyedSubscript:v13];

  if ([v6 count])
  {
    v16 = [TUSenderIdentityCapabilitiesState alloc];
    v17 = [v4 uuid];
    v18 = [v16 initWithSenderIdentityUUID:v17];

    [(CSDTelephonyCallCapabilities *)self setCapabilityInfo:v6 forSubscription:v4 senderIdentityCapabilitiesState:v18];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)_updateSystemCapabilitiesStateForSubscription:(id)a3 capabilitiesState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
  v10 = [v9 systemCapabilitiesForSubscription:v6];

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Retrieved new system capabilities for subscription %@: %@", &v14, 0x16u);
  }

  v12 = [v10 objectForKeyedSubscript:kSimultaneousCallAndDataCurrentlySupported];
  if ([v12 BOOLValue])
  {
    v13 = [v10 objectForKeyedSubscript:kSuspendInternetOnBBCall];
    [v7 setSupportsSimultaneousVoiceAndData:{objc_msgSend(v13, "BOOLValue") ^ 1}];
  }

  else
  {
    [v7 setSupportsSimultaneousVoiceAndData:0];
  }
}

- (void)_updateEmergencyCallbackModeEnabledState
{
  v3 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
  v5 = [v4 isEmergencyCallbackModeEnabled];

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"disabled";
    if (v5)
    {
      v7 = @"enabled";
    }

    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting new emergency callback mode %@.", &v8, 0xCu);
  }

  [(CSDTelephonyCallCapabilities *)self setEmergencyCallbackModeEnabled:v5];
}

- (void)_updateThumperAccountState
{
  v3 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v3);

  v45 = self;
  v4 = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
  v5 = [v4 thumperDeviceInfo];

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v59 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updating Thumper account state with %@", buf, 0xCu);
  }

  [(CSDTelephonyCallCapabilities *)v45 setCapabilitiesValid:v5 != 0];
  v7 = [(CSDThumperAccount *)v5 objectForKeyedSubscript:kPSDeviceId];
  objc_opt_class();
  v42 = v7;
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 uppercaseString];
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v59 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updated local Thumper device ID to %@", buf, 0xCu);
    }

    [(CSDTelephonyCallCapabilities *)v45 setLocalThumperDeviceID:v8];
  }

  else
  {
    v8 = 0;
  }

  v47 = +[NSMutableArray array];
  v46 = +[NSMutableArray array];
  v10 = [(CSDThumperAccount *)v5 objectForKeyedSubscript:kPSThumperCalling];

  v44 = v5;
  v11 = [(CSDThumperAccount *)v5 objectForKeyedSubscript:kPSAccountList];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v53;
    do
    {
      v15 = 0;
      do
      {
        if (*v53 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v52 + 1) + 8 * v15);
        v17 = [[CSDThumperAccount alloc] initWithDictionaryRepresentation:v16];
        v18 = v17;
        if (v17)
        {
          v19 = [(CSDThumperAccount *)v17 primaryDeviceID];
          v20 = TUStringsAreCaseInsensitiveEqual();

          if (v20)
          {
            v21 = v47;
LABEL_23:
            [(CSDThumperAccount *)v21 addObject:v18];
            goto LABEL_24;
          }

          v23 = sub_100004778();
          v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          if (v10)
          {
            if (v24)
            {
              *buf = 138412290;
              v59 = v18;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Adding thumperAccount %@ to secondaryThumperAccounts", buf, 0xCu);
            }

            v21 = v46;
            goto LABEL_23;
          }

          if (v24)
          {
            *buf = 138412290;
            v59 = v18;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Not adding thumperAccount %@ to accounts list", buf, 0xCu);
          }
        }

        else
        {
          v22 = sub_100004778();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v59 = v16;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[WARN] Could not initialize Thumper account with Thumper account dictionary: %@", buf, 0xCu);
          }
        }

LABEL_24:

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v25 = [v11 countByEnumeratingWithState:&v52 objects:v57 count:16];
      v13 = v25;
    }

    while (v25);
  }

  v26 = [(CSDThumperAccount *)v47 sortedArrayUsingComparator:&stru_10061ECB0];
  [(CSDTelephonyCallCapabilities *)v45 setLocalThumperAccounts:v26];

  v27 = sub_100004778();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v59 = v47;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Updated local Thumper accounts to %@", buf, 0xCu);
  }

  v28 = [(CSDThumperAccount *)v46 sortedArrayUsingComparator:&stru_10061ECD0];
  [(CSDTelephonyCallCapabilities *)v45 setSecondaryThumperAccounts:v28];

  v29 = sub_100004778();
  v30 = v44;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v59 = v46;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Updated secondary Thumper accounts to %@", buf, 0xCu);
  }

  v31 = kPSAssociatedAccountID;
  v32 = [(CSDThumperAccount *)v44 objectForKeyedSubscript:v31];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CSDTelephonyCallCapabilities *)v45 setAssociatedThumperAccountID:v32];
    v33 = sub_100004778();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v59 = v32;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Found associated Thumper account ID; updated associated Thumper account ID to %@", buf, 0xCu);
    }

LABEL_50:

    goto LABEL_51;
  }

  if ([(CSDThumperAccount *)v8 length])
  {
    v33 = [(CSDTelephonyCallCapabilities *)v45 secondaryThumperAccounts];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v34 = [v33 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v34)
    {
      v35 = v34;
      v41 = v31;
      v43 = v32;
      v36 = *v49;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v49 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v48 + 1) + 8 * i);
          if ([v38 containsRegisteredDeviceID:{v8, v41}])
          {
            v39 = [v38 accountID];
            [(CSDTelephonyCallCapabilities *)v45 setAssociatedThumperAccountID:v39];
            v40 = sub_100004778();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v59 = v39;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Found matching secondary Thumper account; updated associated Thumper account ID to %@", buf, 0xCu);
            }
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v35);
      v32 = v43;
      v30 = v44;
      v31 = v41;
    }

    goto LABEL_50;
  }

LABEL_51:
}

- (void)subscriptionsDidChangeForClient:(id)a3
{
  v4 = a3;
  v5 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Subscriptions changed for client: %@", &v8, 0xCu);
  }

  [(CSDTelephonyCallCapabilities *)self _updateSubscriptions];
  v7 = [(CSDTelephonyCallCapabilities *)self delegate];
  [v7 telephonyCallCapabilitiesChanged];
}

- (void)client:(id)a3 subscription:(id)a4 callCapabilitiesDidChange:(id)a5
{
  v13 = a5;
  v7 = a4;
  v8 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDTelephonyCallCapabilities *)self senderIdentityCapabilitiesStateByUUID];
  v10 = [v7 uuid];

  v11 = [v9 objectForKeyedSubscript:v10];

  if (v11)
  {
    [(CSDTelephonyCallCapabilities *)self setCallCapabilities:v13 forSenderIdentityCapabilitiesState:v11];
    v12 = [(CSDTelephonyCallCapabilities *)self delegate];
    [v12 telephonyCallCapabilitiesChanged];
  }
}

- (void)client:(id)a3 capabilitiesDidChange:(id)a4
{
  v5 = [(CSDTelephonyCallCapabilities *)self queue:a3];
  dispatch_assert_queue_V2(v5);

  if ([(CSDTelephonyCallCapabilities *)self shouldUpdateSubscriptions])
  {
    [(CSDTelephonyCallCapabilities *)self _updateSubscriptions];
    v6 = [(CSDTelephonyCallCapabilities *)self delegate];
    [v6 telephonyCallCapabilitiesChanged];
  }
}

- (void)client:(id)a3 subscription:(id)a4 capabilitiesDidChange:(id)a5
{
  v13 = a4;
  v7 = a5;
  v8 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDTelephonyCallCapabilities *)self senderIdentityCapabilitiesStateByUUID];
  v10 = [v13 uuid];
  v11 = [v9 objectForKeyedSubscript:v10];

  if ([(CSDTelephonyCallCapabilities *)self shouldUpdateSubscriptions]|| !v11)
  {
    [(CSDTelephonyCallCapabilities *)self _updateSubscriptions];
  }

  else
  {
    [(CSDTelephonyCallCapabilities *)self setCapabilityInfo:v7 forSubscription:v13 senderIdentityCapabilitiesState:v11];
  }

  v12 = [(CSDTelephonyCallCapabilities *)self delegate];
  [v12 telephonyCallCapabilitiesChanged];
}

- (void)emergencyCallbackModeDidChangeForAllSubscriptionsForClient:(id)a3
{
  v4 = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v4);

  [(CSDTelephonyCallCapabilities *)self _updateEmergencyCallbackModeEnabledState];
  v5 = [(CSDTelephonyCallCapabilities *)self delegate];
  [v5 telephonyCallCapabilitiesChanged];
}

- (BOOL)shouldUpdateSubscriptions
{
  v3 = [(CSDTelephonyCallCapabilities *)self associatedThumperAccountID];
  v4 = [(CSDTelephonyCallCapabilities *)self secondaryThumperAccounts];
  [(CSDTelephonyCallCapabilities *)self _updateThumperAccountState];
  v5 = [(CSDTelephonyCallCapabilities *)self associatedThumperAccountID];
  v6 = [(CSDTelephonyCallCapabilities *)self secondaryThumperAccounts];
  if ((TUStringsAreCaseInsensitiveEqualOrNil() & 1) == 0)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v9 = "Subscription cache requires an update; associated Thumper account ID changed";
      v10 = &v13;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }

LABEL_9:

    v7 = 1;
    goto LABEL_10;
  }

  if (([v4 isEqualToArray:v6] & 1) == 0)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v9 = "Subscription cache requires an update; secondary Thumper accounts changed";
      v10 = &v12;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (CSDTelephonyCallCapabilitiesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end