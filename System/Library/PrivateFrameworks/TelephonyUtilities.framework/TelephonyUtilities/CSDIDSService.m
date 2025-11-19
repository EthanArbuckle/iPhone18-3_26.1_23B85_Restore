@interface CSDIDSService
+ (CSDIDSService)sharedInstance;
- (BOOL)_devicesArrayHasPairedDevice;
- (BOOL)checkValidityForSelfPseudonymString:(id)a3;
- (BOOL)defaultPairedDeviceExists;
- (BOOL)hasActiveAccounts;
- (BOOL)isServiceEnabledForTelephonySubscriptionLabelIdentifier:(id)a3;
- (BOOL)pairedDeviceExists;
- (BOOL)relayCapableDeviceExists;
- (BOOL)sendData:(id)a3 fromAccount:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9;
- (BOOL)telephonyCapableDeviceExists;
- (CSDIDSService)initWithName:(id)a3;
- (CSDIDSService)initWithName:(id)a3 service:(id)a4;
- (CSDIDSService)initWithName:(id)a3 service:(id)a4 queryController:(id)a5;
- (IDSAccount)account;
- (IDSDevice)defaultPairedDevice;
- (IDSDevice)pairedDevice;
- (NSArray)allAliases;
- (NSArray)devices;
- (NSSet)aliases;
- (NSSet)availableOutgoingRelayCallerIDs;
- (NSString)countryCode;
- (NSString)debugDescription;
- (NSString)localDeviceUniqueID;
- (id)accountForTelephonySubscriptionLabelIdentifier:(id)a3;
- (id)accountWithCallerID:(id)a3;
- (id)anyActiveAccount;
- (id)createGroupSessionProviderWithGroupID:(id)a3 participantDestinationIDs:(id)a4 callerID:(id)a5 account:(id)a6 queue:(id)a7 isOneToOneModeEnabled:(BOOL)a8 localMember:(id)a9 avLess:(BOOL)a10 isScreenSharingRequest:(BOOL)a11 ABTestConfiguration:(id)a12 isInitiator:(BOOL)a13;
- (id)deviceDestinationsWithCapability:(id)a3 localHandle:(id)a4;
- (id)deviceForFromID:(id)a3;
- (id)deviceWithUniqueID:(id)a3;
- (id)devicesWithCapability:(id)a3;
- (id)idsDeviceID;
- (id)pseudonymForPseudonymString:(id)a3;
- (unint64_t)registrationRestrictionReason;
- (void)_noteAction:(int64_t)a3 onHandle:(id)a4 completionHandle:(id)a5;
- (void)_update;
- (void)accountController:(id)a3 accountAdded:(id)a4;
- (void)accountController:(id)a3 accountEnabled:(id)a4;
- (void)addFirewallEntriesForHandleToDate:(id)a3;
- (void)addFirewallEntriesForHandles:(id)a3 lastSeenDate:(id)a4;
- (void)addFirewallEntryForHandle:(id)a3 lastSeenDate:(id)a4;
- (void)addServiceDelegate:(id)a3 queue:(id)a4;
- (void)checkValidityForPseudonymString:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)handleActiveAccountsChanged:(id)a3;
- (void)provisionPseudonymForHandle:(id)a3 featureID:(id)a4 scopeID:(id)a5 expiryDuration:(double)a6 allowedServices:(id)a7 completionHandler:(id)a8;
- (void)removeAllFirewallEntries;
- (void)removeFirewallEntries:(id)a3;
- (void)removeServiceDelegate:(id)a3;
- (void)renewPseudonym:(id)a3 expirationDate:(id)a4 completionHandler:(id)a5;
- (void)renewPseudonymString:(id)a3 expirationDate:(id)a4 completionHandler:(id)a5;
- (void)retrieveFirewallAndAddEntries:(id)a3;
- (void)revokePseudonym:(id)a3 completionHandler:(id)a4;
- (void)revokePseudonymString:(id)a3 completionHandler:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)service:(id)a3 didUpdatePseudonymsWithChanges:(id)a4;
- (void)service:(id)a3 nearbyDevicesChanged:(id)a4;
- (void)update;
@end

@implementation CSDIDSService

- (void)_update
{
  p_pairedDevice = &self->_pairedDevice;
  v31 = self->_pairedDevice;
  v4 = +[NSMutableSet set];
  defaultPairedDevice = self->_defaultPairedDevice;
  self->_defaultPairedDevice = 0;

  v6 = *p_pairedDevice;
  v32 = p_pairedDevice;
  *p_pairedDevice = 0;

  *&self->_telephonyCapableDeviceExists = 0;
  v7 = [(CSDIDSService *)self idsService];
  v8 = [v7 devices];
  devices = self->_devices;
  self->_devices = v8;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = self->_devices;
  v10 = [(NSArray *)obj countByEnumeratingWithState:&v39 objects:v58 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v40;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v39 + 1) + 8 * i);
        if ([v14 isDefaultPairedDevice])
        {
          objc_storeStrong(&self->_defaultPairedDevice, v14);
        }

        if ([v14 isPairedDevice])
        {
          objc_storeStrong(v32, v14);
        }

        if ([v14 supportsPhoneCalls])
        {
          self->_telephonyCapableDeviceExists = 1;
        }

        if (![v14 isDefaultPairedDevice] || objc_msgSend(v14, "isPairedDevice"))
        {
          self->_relayCapableDeviceExists = 1;
        }

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v15 = [v14 linkedUserURIs];
        v16 = [v15 countByEnumeratingWithState:&v35 objects:v57 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v36;
          do
          {
            for (j = 0; j != v17; j = j + 1)
            {
              if (*v36 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = [*(*(&v35 + 1) + 8 * j) _stripFZIDPrefix];
              [v4 addObject:v20];
            }

            v17 = [v15 countByEnumeratingWithState:&v35 objects:v57 count:16];
          }

          while (v17);
        }
      }

      v11 = [(NSArray *)obj countByEnumeratingWithState:&v39 objects:v58 count:16];
    }

    while (v11);
  }

  v21 = [v4 copy];
  availableOutgoingRelayCallerIDs = self->_availableOutgoingRelayCallerIDs;
  self->_availableOutgoingRelayCallerIDs = v21;

  v23 = sub_100004778();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    obja = self->_availableOutgoingRelayCallerIDs;
    v24 = self->_defaultPairedDevice != 0;
    v25 = self->_pairedDevice != 0;
    telephonyCapableDeviceExists = self->_telephonyCapableDeviceExists;
    relayCapableDeviceExists = self->_relayCapableDeviceExists;
    v28 = [(NSArray *)self->_devices arrayByApplyingSelector:"name"];
    v29 = [v28 componentsJoinedByString:{@", "}];
    *buf = 138413826;
    v44 = self;
    v45 = 1024;
    v46 = v24;
    v47 = 1024;
    v48 = v25;
    v49 = 1024;
    v50 = telephonyCapableDeviceExists;
    v51 = 1024;
    v52 = relayCapableDeviceExists;
    v53 = 2112;
    v54 = obja;
    v55 = 2112;
    v56 = v29;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@ updated state: defaultPairedDeviceExists=%d, pairedDeviceExists=%d, telephonyCapableDeviceExists=%d, relayCapableDeviceExists=%d, availableOutgoingRelayCallerIDs=%@ deviceNames=%@", buf, 0x38u);
  }

  if (v31 != *v32)
  {
    [(CSDIDSService *)self _handlePairedDeviceChangedFrom:v31 to:?];
  }

  v30 = +[NSNotificationCenter defaultCenter];
  [v30 postNotificationName:@"CSDIDSDeviceListChangedNotification" object:self];
}

- (NSArray)devices
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028730;
  v11 = sub_100032914;
  v12 = 0;
  v3 = [(CSDIDSService *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001CF28;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)pairedDeviceExists
{
  v2 = [(CSDIDSService *)self pairedDevice];
  v3 = v2 != 0;

  return v3;
}

- (IDSDevice)pairedDevice
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028730;
  v11 = sub_100032914;
  v12 = 0;
  v3 = [(CSDIDSService *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000288C8;
  v6[3] = &unk_10061C1E0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)_devicesArrayHasPairedDevice
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_devices;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isPairedDevice])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

+ (CSDIDSService)sharedInstance
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"CSDIDSService.m" lineNumber:60 description:@"All CSDIDSService subclasses must override +sharedInstance"];

  return 0;
}

- (CSDIDSService)initWithName:(id)a3
{
  v4 = a3;
  v5 = [[IDSService alloc] initWithService:v4];
  v6 = [(CSDIDSService *)self initWithName:v4 service:v5];

  return v6;
}

- (CSDIDSService)initWithName:(id)a3 service:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[IDSIDQueryController sharedInstance];
  v9 = [(CSDIDSService *)self initWithName:v7 service:v6 queryController:v8];

  return v9;
}

- (CSDIDSService)initWithName:(id)a3 service:(id)a4 queryController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v34.receiver = self;
  v34.super_class = CSDIDSService;
  v11 = [(CSDIDSService *)&v34 init];
  if (v11)
  {
    v12 = [NSString stringWithFormat:@"com.apple.telephonyutilities.callservicesd.%@", objc_opt_class()];
    v13 = dispatch_queue_create([v12 UTF8String], 0);
    queue = v11->_queue;
    v11->_queue = v13;

    v15 = [v8 copy];
    name = v11->_name;
    v11->_name = v15;

    v17 = [[IDSAccountController alloc] initWithService:v8];
    accountController = v11->_accountController;
    v11->_accountController = v17;

    [(IDSAccountController *)v11->_accountController addDelegate:v11 queue:v11->_queue];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = [(IDSAccountController *)v11->_accountController accounts];
    v20 = [v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        v23 = 0;
        do
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v30 + 1) + 8 * v23) addRegistrationDelegate:v11 queue:v11->_queue];
          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v21);
    }

    objc_storeStrong(&v11->_idsService, a4);
    objc_storeStrong(&v11->_idsQueryController, a5);
    v24 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v11->_featureFlags;
    v11->_featureFlags = v24;

    [(CSDIDSService *)v11 addServiceDelegate:v11 queue:v11->_queue];
    v26 = v11->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002416B0;
    block[3] = &unk_100619D38;
    v29 = v11;
    dispatch_async(v26, block);
  }

  return v11;
}

- (void)dealloc
{
  v3 = [(CSDIDSService *)self idsService];
  [v3 removeDelegate:self];

  v4.receiver = self;
  v4.super_class = CSDIDSService;
  [(CSDIDSService *)&v4 dealloc];
}

- (NSString)debugDescription
{
  v3 = [NSMutableString stringWithFormat:@"%@\n", self];
  v4 = [(CSDIDSService *)self devices];
  [v3 appendFormat:@"    devices: %@\n", v4];

  v5 = [(CSDIDSService *)self availableOutgoingRelayCallerIDs];
  [v3 appendFormat:@"    availableOutgoingRelayCallerIDs: %@\n", v5];

  v6 = [(CSDIDSService *)self defaultPairedDevice];
  [v3 appendFormat:@"    defaultPairedDevice: %@\n", v6];

  v7 = [(CSDIDSService *)self pairedDevice];
  [v3 appendFormat:@"    pairedDevice: %@\n", v7];

  if ([(CSDIDSService *)self telephonyCapableDeviceExists])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@"    telephonyCapableDeviceExists: %@\n", v8];
  if ([(CSDIDSService *)self relayCapableDeviceExists])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v3 appendFormat:@"    relayCapableDeviceExists: %@\n", v9];

  return v3;
}

- (NSArray)allAliases
{
  v3 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(CSDIDSService *)self idsService];
  v5 = [v4 accounts];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) vettedAliases];
        [v3 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v3 copy];

  return v11;
}

- (id)anyActiveAccount
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(CSDIDSService *)self idsService];
  v3 = [v2 accounts];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 canSend])
        {
          v10 = v9;

          v6 = v10;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasActiveAccounts
{
  v2 = [(CSDIDSService *)self idsService];
  v3 = [v2 accounts];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)accountWithCallerID:(id)a3
{
  v4 = a3;
  v5 = [(CSDIDSService *)self anyActiveAccount];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(CSDIDSService *)self idsService];
    v9 = [v8 accounts];
    v7 = [v9 anyObject];
  }

  if (!v4)
  {
    v14 = 0;
    goto LABEL_41;
  }

  v34 = v7;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = [(CSDIDSService *)self idsService];
  v11 = [v10 accounts];

  v12 = [v11 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (!v12)
  {
    v14 = 0;
    goto LABEL_40;
  }

  v13 = v12;
  v14 = 0;
  v15 = *v48;
  v35 = *v48;
  v36 = v11;
  do
  {
    v16 = 0;
    v38 = v13;
    do
    {
      if (*v48 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v47 + 1) + 8 * v16);
      if ([v17 canSend] && objc_msgSend(v4, "destinationIdIsPseudonym"))
      {
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v18 = [v17 pseudonyms];
        v19 = [v18 countByEnumeratingWithState:&v43 objects:v52 count:16];
        if (v19)
        {
          v20 = v19;
          v37 = v14;
          v21 = *v44;
          while (2)
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v44 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = [*(*(&v43 + 1) + 8 * i) URI];
              v24 = [v23 prefixedURI];
              v25 = [v24 isEqualToString:v4];

              if (v25)
              {
                v11 = v36;
                v14 = v37;
                v15 = v35;
                goto LABEL_32;
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v43 objects:v52 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }

          v11 = v36;
          v14 = v37;
          v15 = v35;
LABEL_33:
          v13 = v38;
        }
      }

      else
      {
        if (![v17 canSend])
        {
          goto LABEL_35;
        }

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v18 = [v17 aliasStrings];
        v26 = [v18 countByEnumeratingWithState:&v39 objects:v51 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v40;
          while (2)
          {
            for (j = 0; j != v27; j = j + 1)
            {
              if (*v40 != v28)
              {
                objc_enumerationMutation(v18);
              }

              if ([*(*(&v39 + 1) + 8 * j) isEqualToString:v4])
              {
LABEL_32:
                v30 = v17;

                v14 = v30;
                goto LABEL_33;
              }
            }

            v27 = [v18 countByEnumeratingWithState:&v39 objects:v51 count:16];
            if (v27)
            {
              continue;
            }

            goto LABEL_33;
          }
        }
      }

LABEL_35:
      v16 = v16 + 1;
    }

    while (v16 != v13);
    v13 = [v11 countByEnumeratingWithState:&v47 objects:v53 count:16];
  }

  while (v13);
LABEL_40:

  v7 = v34;
LABEL_41:
  if (v14)
  {
    v31 = v14;
  }

  else
  {
    v31 = v7;
  }

  v32 = v31;

  return v31;
}

- (IDSAccount)account
{
  v3 = [(CSDIDSService *)self callerID];
  v4 = [(CSDIDSService *)self accountWithCallerID:v3];

  return v4;
}

- (id)idsDeviceID
{
  v2 = [(CSDIDSService *)self account];
  v3 = [v2 loginID];
  v4 = [v3 IDSFormattedDestinationID];

  return v4;
}

- (void)addServiceDelegate:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDIDSService *)self idsService];
  [v8 addDelegate:v7 queue:v6];
}

- (void)removeServiceDelegate:(id)a3
{
  v4 = a3;
  v5 = [(CSDIDSService *)self idsService];
  [v5 removeDelegate:v4];
}

- (BOOL)sendData:(id)a3 fromAccount:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a4;
  v18 = [a7 mutableCopy];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = objc_alloc_init(NSMutableDictionary);
  }

  v21 = v20;

  v22 = [[CSDMessagingConversationMessage alloc] initWithData:v15];
  v23 = v22;
  if (v22 && [(CSDMessagingConversationMessage *)v22 type]>= 30)
  {
    v35 = a6;
    v36 = a8;
    v24 = IDSSendMessageOptionRequireAllRegistrationPropertiesKey;
    v25 = [v21 objectForKeyedSubscript:IDSSendMessageOptionRequireAllRegistrationPropertiesKey];
    if (!v25)
    {
      goto LABEL_9;
    }

    v26 = v25;
    [v21 objectForKeyedSubscript:v24];
    v27 = v34 = self;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    self = v34;
    if (isKindOfClass)
    {
      v29 = [v21 objectForKeyedSubscript:v24];
      v30 = [v29 mutableCopy];

      self = v34;
      [v30 addObject:IDSRegistrationPropertySupportsSelfOneToOneInvites];
    }

    else
    {
LABEL_9:
      v30 = [NSSet setWithObject:IDSRegistrationPropertySupportsSelfOneToOneInvites];
    }

    [v21 setObject:v30 forKeyedSubscript:v24];

    a6 = v35;
    a8 = v36;
  }

  v31 = [(CSDIDSService *)self service];
  v32 = [v31 sendData:v15 fromAccount:v17 toDestinations:v16 priority:a6 options:v21 identifier:a8 error:a9];

  return v32;
}

- (NSSet)aliases
{
  v2 = [(CSDIDSService *)self idsService];
  v3 = [v2 aliases];

  return v3;
}

- (id)createGroupSessionProviderWithGroupID:(id)a3 participantDestinationIDs:(id)a4 callerID:(id)a5 account:(id)a6 queue:(id)a7 isOneToOneModeEnabled:(BOOL)a8 localMember:(id)a9 avLess:(BOOL)a10 isScreenSharingRequest:(BOOL)a11 ABTestConfiguration:(id)a12 isInitiator:(BOOL)a13
{
  v31 = a8;
  HIDWORD(v30) = a11;
  v18 = a12;
  v19 = a9;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = [CSDIDSGroupSessionProvider alloc];
  v26 = [v19 isLightweightMember];

  LOBYTE(v30) = a13;
  *(&v29 + 1) = __PAIR16__(a11, a10);
  LOBYTE(v29) = v26;
  v27 = [CSDIDSGroupSessionProvider initWithGroupID:v25 participantDestinationIDs:"initWithGroupID:participantDestinationIDs:callerID:account:queue:isOneToOneModeEnabled:isLightweightMember:avLess:isScreenSharingRequest:ABTestConfiguration:isInitiator:" callerID:v24 account:v23 queue:v22 isOneToOneModeEnabled:v21 isLightweightMember:v20 avLess:v31 isScreenSharingRequest:v29 ABTestConfiguration:v18 isInitiator:v30];

  return v27;
}

- (id)accountForTelephonySubscriptionLabelIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDIDSService *)self idsService];
  v6 = [v5 accountMatchingSimIdentifier:v4];

  return v6;
}

- (BOOL)isServiceEnabledForTelephonySubscriptionLabelIdentifier:(id)a3
{
  v3 = [(CSDIDSService *)self accountForTelephonySubscriptionLabelIdentifier:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)addFirewallEntriesForHandleToDate:(id)a3
{
  v4 = a3;
  v5 = [(CSDIDSService *)self featureFlags];
  v6 = [v5 offrampEnabled];

  if (v6)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding firewall entries for dictionary: %@", buf, 0xCu);
    }

    +[NSMutableArray array];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1002426B8;
    v11 = v10[3] = &unk_10061F7A8;
    v8 = v11;
    [v4 enumerateKeysAndObjectsUsingBlock:v10];
    v9 = [v8 copy];
    [(CSDIDSService *)self retrieveFirewallAndAddEntries:v9];
  }
}

- (void)addFirewallEntryForHandle:(id)a3 lastSeenDate:(id)a4
{
  v6 = a4;
  v7 = [NSArray arrayWithObject:a3];
  [(CSDIDSService *)self addFirewallEntriesForHandles:v7 lastSeenDate:v6];
}

- (void)addFirewallEntriesForHandles:(id)a3 lastSeenDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDIDSService *)self featureFlags];
  v9 = [v8 offrampEnabled];

  if (v9)
  {
    v21 = self;
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = v7;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adding firewall entries with time %@ for handles: %@", buf, 0x16u);
    }

    v23 = +[NSMutableArray array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v22 = v6;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = [v16 normalizedValue];
          v18 = [IDSURI URIWithUnprefixedURI:v17];

          if (v18)
          {
            v19 = [[IDSFirewallEntry alloc] initWithURI:v18 andLastSeenDate:v7];
            if (v19)
            {
              [v23 addObject:v19];
            }
          }

          else
          {
            v19 = sub_100004778();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v30 = v16;
              v31 = 2112;
              v32 = 0;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Not adding handle %@ to firewall since uri %@ is nil", buf, 0x16u);
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    v20 = [v23 copy];
    [(CSDIDSService *)v21 retrieveFirewallAndAddEntries:v20];

    v6 = v22;
  }
}

- (void)retrieveFirewallAndAddEntries:(id)a3
{
  v4 = a3;
  v5 = [(CSDIDSService *)self featureFlags];
  v6 = [v5 offrampEnabled];

  if (v6)
  {
    v7 = [(CSDIDSService *)self service];
    v8 = [(CSDIDSService *)self queue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100242B78;
    v9[3] = &unk_10061F7D0;
    v10 = v4;
    [v7 retrieveFirewallWithQueue:v8 completion:v9];
  }
}

- (void)removeAllFirewallEntries
{
  v3 = [(CSDIDSService *)self featureFlags];
  v4 = [v3 offrampEnabled];

  if (v4)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing all IDSFirewall entries", v8, 2u);
    }

    v6 = [(CSDIDSService *)self service];
    v7 = [(CSDIDSService *)self queue];
    [v6 retrieveFirewallWithQueue:v7 completion:&stru_10061F810];
  }
}

- (void)removeFirewallEntries:(id)a3
{
  v4 = a3;
  v5 = [(CSDIDSService *)self featureFlags];
  v6 = [v5 offrampEnabled];

  if (v6)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing handles from IDSFirewall: %@", buf, 0xCu);
    }

    v8 = [(CSDIDSService *)self service];
    v9 = [(CSDIDSService *)self queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1002431BC;
    v10[3] = &unk_10061F7D0;
    v11 = v4;
    [v8 retrieveFirewallWithQueue:v9 completion:v10];
  }
}

- (id)deviceWithUniqueID:(id)a3
{
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(CSDIDSService *)self devices];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
LABEL_3:
    v10 = 0;
    v11 = v8;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v8 = *(*(&v15 + 1) + 8 * v10);

      v12 = [v8 uniqueIDOverride];
      v13 = [v12 isEqualToString:v4];

      if (v13)
      {
        break;
      }

      v10 = v10 + 1;
      v11 = v8;
      if (v7 == v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v8 = 0;
  }

  return v8;
}

- (id)deviceForFromID:(id)a3
{
  v4 = a3;
  v5 = [(CSDIDSService *)self idsService];
  v6 = [v5 deviceForFromID:v4];

  return v6;
}

- (id)devicesWithCapability:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(CSDIDSService *)self devices];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 capabilities];
        v13 = [v12 valueForCapability:v4];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (id)deviceDestinationsWithCapability:(id)a3 localHandle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v45 = +[NSMutableArray array];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v8 = [(CSDIDSService *)self devices];
  v9 = [v8 countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v51;
    v39 = v8;
    v40 = v6;
    v38 = *v51;
    do
    {
      v12 = 0;
      v42 = v10;
      do
      {
        if (*v51 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v50 + 1) + 8 * v12);
        v14 = [v13 capabilities];
        v15 = [v14 valueForCapability:v6];

        if (v15)
        {
          v16 = [v13 destination];
          v17 = [v16 destinationURIs];
          v18 = [v17 count];

          if (v18)
          {
            v43 = v16;
            v44 = v12;
            v19 = [v16 destinationURIs];
            v20 = [v19 anyObject];
            v21 = IDSCopyAddressDestinationForDestination();
            v22 = IDSCopyRawAddressForDestination();
            v23 = [TUHandle normalizedHandleWithDestinationID:v22];

            v24 = v23;
            if (([v23 isEquivalentToHandle:v7] & 1) == 0)
            {
              v41 = v23;
              v25 = [v13 csd_aliasStrings];
              v46 = 0u;
              v47 = 0u;
              v48 = 0u;
              v49 = 0u;
              v26 = [v25 countByEnumeratingWithState:&v46 objects:v58 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v47;
                do
                {
                  for (i = 0; i != v27; i = i + 1)
                  {
                    if (*v47 != v28)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v30 = *(*(&v46 + 1) + 8 * i);
                    v31 = [TUHandle normalizedHandleWithDestinationID:v30];
                    if ([v31 isEquivalentToHandle:v7])
                    {
                      v32 = sub_100004778();
                      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                      {
                        v33 = [v13 csd_destinationForAlias:v30];
                        *buf = 138412546;
                        v55 = v33;
                        v56 = 2112;
                        v57 = v13;
                        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Adding copyIDtoken:%@ to capable destinations for device: %@", buf, 0x16u);
                      }

                      v34 = [v13 csd_destinationForAlias:v30];
                      [v45 addObject:v34];
                    }
                  }

                  v27 = [v25 countByEnumeratingWithState:&v46 objects:v58 count:16];
                }

                while (v27);
              }

              v8 = v39;
              v6 = v40;
              v11 = v38;
              v24 = v41;
            }

            v35 = [v13 destination];
            [v45 addObject:v35];

            v10 = v42;
            v16 = v43;
            v12 = v44;
          }
        }

        v12 = v12 + 1;
      }

      while (v12 != v10);
      v10 = [v8 countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v10);
  }

  v36 = [v45 copy];

  return v36;
}

- (BOOL)telephonyCapableDeviceExists
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CSDIDSService *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100243D34;
  v5[3] = &unk_100619E80;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (BOOL)relayCapableDeviceExists
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CSDIDSService *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100243E20;
  v5[3] = &unk_100619E80;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (BOOL)defaultPairedDeviceExists
{
  v2 = [(CSDIDSService *)self defaultPairedDevice];
  v3 = v2 != 0;

  return v3;
}

- (NSSet)availableOutgoingRelayCallerIDs
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028730;
  v11 = sub_100032914;
  v12 = 0;
  v3 = [(CSDIDSService *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100243F84;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (IDSDevice)defaultPairedDevice
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028730;
  v11 = sub_100032914;
  v12 = 0;
  v3 = [(CSDIDSService *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002440B4;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSString)countryCode
{
  v3 = [(CSDIDSService *)self account];
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 accountInfo];
    v19 = 138412290;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Determining country code using account info %@", &v19, 0xCu);
  }

  v6 = [v3 accountType];
  if (v6 != 1)
  {
    if (!v6)
    {
      v7 = [(CSDIDSService *)self callerID];
      v8 = 0;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v9 = +[FTDeviceSupport sharedInstance];
  v10 = [v9 isTelephonyDevice];

  if (!v10)
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v11 = +[FTDeviceSupport sharedInstance];
  v8 = [v11 telephoneNumber];

LABEL_9:
  v7 = 0;
LABEL_10:
  v12 = IMCountryCodeForNumber();
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = IMCountryCodeForNumber();
    v16 = v15;
    if (v15)
    {
      v14 = v15;
    }

    else
    {
      v17 = [v3 regionBasePhoneNumber];
      v14 = IMCountryCodeForNumber();
    }
  }

  return v14;
}

- (NSString)localDeviceUniqueID
{
  v2 = IDSCopyLocalDeviceUniqueID();

  return v2;
}

- (void)provisionPseudonymForHandle:(id)a3 featureID:(id)a4 scopeID:(id)a5 expiryDuration:(double)a6 allowedServices:(id)a7 completionHandler:(id)a8
{
  v13 = a3;
  v14 = a8;
  v15 = a5;
  v16 = a4;
  v17 = [(CSDIDSService *)self service];
  v18 = [v17 pseudonymPropertiesWithFeatureID:v16 scopeID:v15 expiryDurationInSeconds:a6];

  v19 = sub_100004778();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v13 value];
    v21 = [(CSDIDSService *)self service];
    v22 = [v21 serviceIdentifier];
    v23 = IDSLoggableDescriptionForHandleOnService();
    *buf = 138412546;
    v32 = v23;
    v33 = 2112;
    v34 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Asking IDS to generated a pseudonym for unprefixedURI: %@ and properties: %@", buf, 0x16u);
  }

  v24 = [(CSDIDSService *)self service];
  v25 = [IDSURI alloc];
  v26 = [v13 value];
  v27 = [v25 initWithUnprefixedURI:v26];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10024452C;
  v29[3] = &unk_10061F748;
  v30 = v14;
  v28 = v14;
  [v24 provisionPseudonymForURI:v27 withProperties:v18 completion:v29];
}

- (void)revokePseudonymString:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDIDSService *)self pseudonymForPseudonymString:v6];
  if (v8)
  {
    [(CSDIDSService *)self revokePseudonym:v8 completionHandler:v7];
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(CSDIDSService *)self service];
      v11 = [v10 pseudonymURIMap];
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No IDSPseudonym matching string %@ was found. All pseudonym URIs: %@", &v12, 0x16u);
    }

    v7[2](v7, 1, 0);
  }
}

- (void)revokePseudonym:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asking IDS to revoke pseudonym: %@", &v10, 0xCu);
  }

  v9 = [(CSDIDSService *)self service];
  [v9 revokePseudonym:v6 completion:v7];
}

- (void)renewPseudonymString:(id)a3 expirationDate:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDIDSService *)self pseudonymForPseudonymString:v8];
  if (v11)
  {
    [(CSDIDSService *)self renewPseudonym:v11 expirationDate:v9 completionHandler:v10];
  }

  else
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No pseudonym matching %@ was found.", &v13, 0xCu);
    }

    (*(v10 + 2))(v10, 0, 0, 0);
  }
}

- (void)renewPseudonym:(id)a3 expirationDate:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Asking IDS to renew pseudonym: %@", buf, 0xCu);
  }

  v12 = [(CSDIDSService *)self service];
  [v10 timeIntervalSince1970];
  v14 = v13;

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100244AF0;
  v16[3] = &unk_10061F748;
  v17 = v9;
  v15 = v9;
  [v12 renewPseudonym:v8 forUpdatedExpiryEpoch:v16 completion:v14];
}

- (void)checkValidityForPseudonymString:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([(CSDIDSService *)self checkValidityForSelfPseudonymString:v6])
    {
      v7[2](v7, 1);
    }

    else
    {
      v8 = [(CSDIDSService *)self idsQueryController];
      v9 = [(CSDIDSService *)self name];
      v10 = [(CSDIDSService *)self queue];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100244D00;
      v13[3] = &unk_10061F858;
      v11 = v7;
      v14 = v11;
      v12 = [v8 refreshIDStatusForDestination:v6 service:v9 listenerID:@"CSDIDSServiceQueryListenerID" queue:v10 completionBlock:v13];

      if ((v12 & 1) == 0)
      {
        v11[2](v11, 0);
      }
    }
  }
}

- (BOOL)checkValidityForSelfPseudonymString:(id)a3
{
  v3 = [(CSDIDSService *)self pseudonymForPseudonymString:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 csd_isExpired] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)pseudonymForPseudonymString:(id)a3
{
  v4 = a3;
  v5 = [(CSDIDSService *)self service];
  v6 = [[IDSURI alloc] initWithPrefixedURI:v4];

  v7 = [v5 pseudonymForPseudonymURI:v6];

  return v7;
}

- (void)_noteAction:(int64_t)a3 onHandle:(id)a4 completionHandle:(id)a5
{
  v8 = a5;
  v9 = [a4 normalizedValue];
  v10 = [IDSURI URIWithPrefixedURI:v9];

  if ([v10 FZIDType] == 4)
  {
    v11 = [(CSDIDSService *)self callerID];
    v12 = [IDSURI URIWithPrefixedURI:v11];

    v13 = [(CSDIDSService *)self service];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100244F70;
    v14[3] = &unk_10061F880;
    v15 = v8;
    [v13 reportAction:a3 ofTempURI:v10 fromURI:v12 withCompletion:v14];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 0);
  }
}

- (void)accountController:(id)a3 accountAdded:(id)a4
{
  v5 = a4;
  v6 = [(CSDIDSService *)self queue];
  [v5 addRegistrationDelegate:self queue:v6];
}

- (void)accountController:(id)a3 accountEnabled:(id)a4
{
  v5 = a4;
  v6 = [(CSDIDSService *)self queue];
  [v5 addRegistrationDelegate:self queue:v6];
}

- (void)handleActiveAccountsChanged:(id)a3
{
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: Active accounts changed", &v6, 0xCu);
  }

  [(CSDIDSService *)self _update];
  v5 = [(CSDIDSService *)self delegate];
  [v5 activeAccountsChangedForService:self];
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Devices changed", &v6, 0xCu);
  }

  [(CSDIDSService *)self _update];
}

- (void)service:(id)a3 nearbyDevicesChanged:(id)a4
{
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Nearby devices changed", &v6, 0xCu);
  }

  [(CSDIDSService *)self _update];
}

- (void)service:(id)a3 didUpdatePseudonymsWithChanges:(id)a4
{
  v5 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v17;
    *&v7 = 138412290;
    v15 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 changeType];
        if (!v12)
        {
          v13 = [(CSDIDSService *)self delegate];
          v14 = [v11 pseudonym];
          [v13 service:self pseudonymRemoved:v14];
          goto LABEL_13;
        }

        if (v12 == 2)
        {
          v13 = [(CSDIDSService *)self delegate];
          v14 = [v11 pseudonym];
          [v13 service:self pseudonymUpdated:v14];
LABEL_13:

          goto LABEL_14;
        }

        if (v12 != 1)
        {
          continue;
        }

        v13 = sub_100004778();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v15;
          v21 = self;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@: Told that a pseudonym was added to our account.", buf, 0xCu);
        }

LABEL_14:
      }

      v8 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v8);
  }
}

- (unint64_t)registrationRestrictionReason
{
  v2 = [(CSDIDSService *)self idsService];
  v3 = [v2 registrationRestrictionReason];

  return v3;
}

- (void)update
{
  v3 = [(CSDIDSService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100245538;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v3, block);
}

@end