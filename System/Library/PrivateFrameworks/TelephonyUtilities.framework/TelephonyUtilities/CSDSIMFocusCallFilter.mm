@interface CSDSIMFocusCallFilter
- (BOOL)shouldAllowCallsFromSIM:(id)a3;
- (BOOL)shouldAllowIncomingCall:(id)a3 from:(id)a4;
- (CSDSIMFocusCallFilter)initWithQueue:(id)a3;
- (id)readSimFocusDataWithError:(id *)a3;
- (id)simAccountsFromKeychain;
@end

@implementation CSDSIMFocusCallFilter

- (CSDSIMFocusCallFilter)initWithQueue:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CSDSIMFocusCallFilter;
  v6 = [(CSDSIMFocusCallFilter *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = +[CSDFocusStateManager sharedManager];
    focusStateManager = v7->_focusStateManager;
    v7->_focusStateManager = v8;

    v10 = [DNDEventBehaviorResolutionService serviceForClientIdentifier:TUBundleIdentifierCallServicesDaemon];
    behaviorResolutionService = v7->_behaviorResolutionService;
    v7->_behaviorResolutionService = v10;
  }

  return v7;
}

- (BOOL)shouldAllowIncomingCall:(id)a3 from:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 remoteHandle];
  v9 = [v8 value];

  if ([v7 isTelephonyProvider] && (objc_msgSend(v9, "destinationIdIsPhoneNumber") & 1) != 0)
  {
    v10 = [v7 bundleIdentifier];
    if (v10)
    {
      v11 = [v7 bundleIdentifier];
    }

    else
    {
      v11 = TUBundleIdentifierPhoneApplication;
    }

    v12 = v11;

    v14 = objc_alloc_init(DNDMutableClientEventDetails);
    [v14 setBundleIdentifier:v12];
    [v14 setType:1];
    v15 = objc_alloc_init(DNDMutableContactHandle);
    [v15 setType:2];
    [v15 setValue:v9];
    v38 = v15;
    [v14 setSender:v15];
    v16 = [(CSDSIMFocusCallFilter *)self behaviorResolutionService];
    v39 = 0;
    v17 = [v16 resolveBehaviorForEventDetails:v14 error:&v39];
    v18 = v39;

    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v41 = v17;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "simFocus: shouldAllowIncomingCall: behavior=%@", buf, 0xCu);
    }

    v36 = v18;
    v37 = v17;
    if (v17)
    {
      v20 = [v17 interruptionSuppression] == 0;
      v21 = [v17 resolutionReason];
    }

    else
    {
      v22 = sub_100004778();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v41 = v18;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[WARN] Error encountered resolving behavior via DND. Defaulting isDestinationIDAllowedThroughDoNotDisturb to YES. error=%@", buf, 0xCu);
      }

      v21 = 0;
      v20 = 0;
    }

    v23 = sub_100004778();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = DNDResolutionReasonToString();
      *buf = 138412546;
      *v41 = v24;
      *&v41[8] = 1024;
      *&v41[10] = v20;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "simFocus: resolutionReason: =%@, shouldAllowCall=%d", buf, 0x12u);
    }

    if (v20)
    {
      if (v21 - 5) < 0xE && ((0x216Du >> (v21 - 5)))
      {
        LOBYTE(v13) = 1;
LABEL_38:

        goto LABEL_39;
      }

      v25 = [(CSDSIMFocusCallFilter *)self simAccountsFromKeychain];
      v26 = v25;
      if (!v25 || ![v25 count])
      {
        v34 = sub_100004778();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "simFocus: no active sim accounts found, FBSS is not enabled.", buf, 2u);
        }

        LOBYTE(v13) = 1;
        goto LABEL_37;
      }
    }

    v27 = sub_100004778();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v41 = v9;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "simFocus: Check if (%@) is in denied contact list", buf, 0xCu);
    }

    v28 = [(CSDSIMFocusCallFilter *)self focusStateManager];
    v29 = [v28 contactInDeniedContactsList:v9];

    v26 = sub_100004778();
    v30 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (v29)
    {
      if (v30)
      {
        *buf = 67109120;
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "simFocus: focus based silencing, contact found in denied list, shouldAllowCall = %d", buf, 8u);
      }

      LOBYTE(v13) = 0;
    }

    else
    {
      if (v30)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "simFocus: Check if focus based sim allows the call", buf, 2u);
      }

      v31 = [v6 account];
      v32 = [v31 handle];
      v33 = [v32 value];
      v13 = [(CSDSIMFocusCallFilter *)self shouldAllowCallsFromSIM:v33];

      v26 = sub_100004778();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v41 = v13;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "simFocus: focus based sim silencing, shouldAllowCall = %d", buf, 8u);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  v12 = sub_100004778();
  LOBYTE(v13) = 1;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v41 = [v7 isTelephonyProvider];
    *&v41[4] = 2112;
    *&v41[6] = v9;
    v42 = 1024;
    v43 = 1;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "simFocus: allow call for isTelephonyProvider=%d, destinationID=%@, shouldAllowCall=%d", buf, 0x18u);
  }

LABEL_39:

  return v13;
}

- (BOOL)shouldAllowCallsFromSIM:(id)a3
{
  v4 = a3;
  v5 = [(CSDSIMFocusCallFilter *)self simAccountsFromKeychain];
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "simFocus: Found simAccounts from keychain : %@", buf, 0xCu);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v9)
    {
      v19 = v6;
      v10 = *v21;
      while (2)
      {
        for (i = 0; i != v9; i = (i + 1))
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = sub_100004778();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v12 phNumber];
            *buf = 138412546;
            v25 = v14;
            v26 = 2112;
            v27 = v4;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "simFocus: simAccount.phNumber: %@, myPhoneNumber: %@", buf, 0x16u);
          }

          v15 = [v12 phNumber];
          v16 = [v4 isEqualToString:v15];

          if (v16 && [v12 focusAllowCalls])
          {
            v9 = sub_100004778();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v17 = [v12 phNumber];
              *buf = 138412290;
              v25 = v17;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "simFocus: Found a match for sim number: %@", buf, 0xCu);
            }

            LOBYTE(v9) = 1;
            goto LABEL_23;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

LABEL_23:
      v6 = v19;
    }
  }

  else
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "simFocus: shouldAllowCallsFromSIM - no active sim accounts found, FBSS is not enabled.", buf, 2u);
    }

    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)simAccountsFromKeychain
{
  v3 = +[NSArray array];
  v19 = 0;
  v4 = [(CSDSIMFocusCallFilter *)self readSimFocusDataWithError:&v19];
  v5 = v19;
  if (v5)
  {
    v6 = v5;
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10047F2C0(v7);
    }

    v8 = 0;
    goto LABEL_14;
  }

  if (v4)
  {
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v9, v10, v11, objc_opt_class(), 0];
    v18 = 0;
    v13 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v12 fromData:v4 error:&v18];
    v14 = v18;

    if (v14)
    {
      v15 = sub_100004778();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "simFocus: Reading data with error %@", buf, 0xCu);
      }

      v8 = 0;
      v3 = v13;
      goto LABEL_14;
    }

    v3 = v13;
  }

  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "simFocus: simAccounts read from keychain %@", buf, 0xCu);
  }

  v8 = [v3 copy];
LABEL_14:

  return v8;
}

- (id)readSimFocusDataWithError:(id *)a3
{
  v11[0] = kSecClass;
  v11[1] = kSecAttrAccessible;
  v12[0] = kSecClassGenericPassword;
  v12[1] = kSecAttrAccessibleAfterFirstUnlock;
  v11[2] = kSecAttrService;
  v11[3] = kSecReturnData;
  v12[2] = @"apple.phoneFocus";
  v12[3] = &__kCFBooleanTrue;
  v11[4] = kSecAttrAccessGroup;
  v12[4] = @"apple";
  v4 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:5];
  result = 0;
  v5 = SecItemCopyMatching(v4, &result);
  if (v5)
  {
    if (a3)
    {
      *a3 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v5 userInfo:0];
    }

    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "simFocus: Failed to read data from keychain", v9, 2u);
    }

    v7 = 0;
  }

  else
  {
    v7 = result;
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "simFocus: Successfully read data from keychain", v9, 2u);
    }
  }

  return v7;
}

@end