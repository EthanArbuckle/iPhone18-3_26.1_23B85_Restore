@interface VMDCarrierAccountDataSource
- (NSArray)accounts;
- (NSOperationQueue)delegateQueue;
- (VMAccountDataSourceDelegate)delegate;
- (VMDCarrierAccountDataSource)init;
- (VMDCarrierAccountDataSource)initWithServicesController:(id)a3 queue:(id)a4 telephonyClient:(id)a5;
- (id)findValidContextForSubscription:(id)a3;
- (void)checkUpdateAccounts;
- (void)dataMigration_legacy:(id)a3 context:(id)a4 isoCountryCode:(id)a5 phone:(id)a6 accountDir:(id)a7;
- (void)dealloc;
- (void)handleVMCarrierIMAPParametersChangedNotification:(id)a3;
- (void)local_voicemailInfoAvailableNotification:(id)a3 voicemailInfo:(id)a4;
- (void)notifyDelegateAccountsDidChange;
- (void)performAtomicAccessorBlock:(id)a3;
- (void)performSynchronousBlock:(id)a3;
- (void)setAccount:(id)a3 forUUID:(id)a4;
- (void)setAccounts:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDelegateQueue:(id)a3;
- (void)updateAccount:(id)a3 withDictionary:(id)a4;
@end

@implementation VMDCarrierAccountDataSource

- (NSArray)accounts
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100043C30;
  v9 = sub_100043C40;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003E0C;
  v4[3] = &unk_1000ED428;
  v4[4] = self;
  v4[5] = &v5;
  [(VMDCarrierAccountDataSource *)self performSynchronousBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (VMDCarrierAccountDataSource)init
{
  [(VMDCarrierAccountDataSource *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMDCarrierAccountDataSource)initWithServicesController:(id)a3 queue:(id)a4 telephonyClient:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = VMDCarrierAccountDataSource;
  v12 = [(VMDCarrierAccountDataSource *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, a4);
    dispatch_queue_set_specific(v13->_queue, off_10010D130, v13, 0);
    v13->_accessorLock._os_unfair_lock_opaque = 0;
    v14 = objc_opt_new();
    accounts = v13->_accounts;
    v13->_accounts = v14;

    objc_storeStrong(&v13->_carrierServicesController, a3);
    [v9 setCarrierAccountDataSource:v13];
    [(VMDCarrierAccountDataSource *)v13 setTelephonyClient:v11];
    v16 = [(VMDCarrierAccountDataSource *)v13 queue];
    [v11 addDelegate:v13 queue:v16];

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v13 selector:"handleVMCarrierIMAPParametersChangedNotification:" name:@"VMCarrierIMAPParametersChangedNotification" object:0];
  }

  return v13;
}

- (void)dealloc
{
  v3 = [(VMDCarrierAccountDataSource *)self telephonyClient];
  [v3 removeDelegate:self];

  v4.receiver = self;
  v4.super_class = VMDCarrierAccountDataSource;
  [(VMDCarrierAccountDataSource *)&v4 dealloc];
}

- (VMAccountDataSourceDelegate)delegate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100043C30;
  v9 = sub_100043C40;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100043D48;
  v4[3] = &unk_1000ED428;
  v4[4] = self;
  v4[5] = &v5;
  [(VMDCarrierAccountDataSource *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setDelegate:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100043E28;
  v4[3] = &unk_1000ED450;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(VMDCarrierAccountDataSource *)v5 performAtomicAccessorBlock:v4];
}

- (NSOperationQueue)delegateQueue
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100043C30;
  v9 = sub_100043C40;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100043F98;
  v4[3] = &unk_1000ED428;
  v4[4] = self;
  v4[5] = &v5;
  [(VMDCarrierAccountDataSource *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setDelegateQueue:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100044078;
  v4[3] = &unk_1000ED450;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(VMDCarrierAccountDataSource *)v5 performAtomicAccessorBlock:v4];
}

- (void)setAccounts:(id)a3
{
  v4 = a3;
  v5 = [(VMDCarrierAccountDataSource *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = vm_vmd_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    accounts = self->_accounts;
    v12 = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = accounts;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Set accounts to %@ from %@", &v12, 0x16u);
  }

  if (![(NSArray *)self->_accounts isEqualToArray:v4])
  {
    v8 = [(NSArray *)v4 copy];
    v9 = self->_accounts;
    self->_accounts = v8;

    v10 = vm_vmd_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_accounts;
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notifying delegate the list of accounts was set to %@", &v12, 0xCu);
    }

    [(VMDCarrierAccountDataSource *)self notifyDelegateAccountsDidChange];
  }
}

- (void)setAccount:(id)a3 forUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VMDCarrierAccountDataSource *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(NSArray *)self->_accounts mutableCopy];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100044478;
  v22[3] = &unk_1000EE7B0;
  v10 = v7;
  v23 = v10;
  v11 = [v9 indexOfObjectPassingTest:v22];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000444CC;
    v15[3] = &unk_1000ED450;
    v16 = v9;
    v17 = v6;
    v12 = objc_retainBlock(v15);

    v13 = v16;
  }

  else
  {
    v14 = v11;
    v13 = [v9 objectAtIndexedSubscript:v11];
    if ([v13 isEqualToAccount:v6])
    {
      v12 = 0;
    }

    else
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000444BC;
      v18[3] = &unk_1000EE7D8;
      v19 = v9;
      v21 = v14;
      v20 = v6;
      v12 = objc_retainBlock(v18);
    }
  }

  if (v12)
  {
    (v12[2])(v12);
    objc_storeStrong(&self->_accounts, v9);
    [(VMDCarrierAccountDataSource *)self notifyDelegateAccountsDidChange];
  }
}

- (void)dataMigration_legacy:(id)a3 context:(id)a4 isoCountryCode:(id)a5 phone:(id)a6 accountDir:(id)a7
{
  v10 = a7;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v15 = objc_alloc_init(VVDataMigrator);
  [(VVDataMigrator *)v15 setLabel:v13];

  [(VVDataMigrator *)v15 setAccountDir:v10];
  [(VVDataMigrator *)v15 setIsoCountryCode:v12];
  v14 = sub_100025188(v11, v12);

  [(VVDataMigrator *)v15 setNormalizedPhoneNumber:v14];
  [(VVDataMigrator *)v15 createFoldersIfNecessary];
  [(VVDataMigrator *)v15 performMigrationIfNecessary];
}

- (id)findValidContextForSubscription:(id)a3
{
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(VMDCarrierAccountDataSource *)self telephonyClient];
  v6 = [v5 subscriptions];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 uuid];
        v12 = [v4 uuid];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)checkUpdateAccounts
{
  v2 = self;
  v3 = [(VMDCarrierAccountDataSource *)self queue];
  dispatch_assert_queue_V2(v3);

  v91 = +[NSMutableArray array];
  v4 = [(VMDCarrierAccountDataSource *)v2 telephonyClient];
  v5 = [v4 contexts];

  v6 = vm_vmd_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v110 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Update accounts for active contexts %@", buf, 0xCu);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v86 = v5;
  v7 = [v5 subscriptions];
  v8 = [v7 countByEnumeratingWithState:&v105 objects:v115 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v106;
    v94 = v2;
    v90 = v7;
    v98 = *v106;
    do
    {
      v11 = 0;
      v96 = v9;
      do
      {
        if (*v106 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v105 + 1) + 8 * v11);
        if (![v12 slotID])
        {
          v13 = vm_vmd_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v110 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Current context is not supported; cancelling account creation for subscription %@", buf, 0xCu);
          }
        }

        v14 = [v12 context];
        v15 = [(VMDCarrierAccountDataSource *)v2 telephonyClient];
        v16 = [v15 carrierBundle:v12];

        v101 = v14;
        if ([v16 isServiceSupportedForSubscription])
        {
          v17 = [(VMDCarrierAccountDataSource *)v2 findValidContextForSubscription:v14];
          if (!v17)
          {
            v18 = vm_vmd_log();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v110 = v101;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not find valid context for subscription %@", buf, 0xCu);
            }
          }

          v19 = [v17 isSimDataOnly];
          v20 = vm_vmd_log();
          v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          if (v19)
          {
            if (v21)
            {
              *buf = 138412290;
              v110 = v12;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Current context does not support voice service; cancelling account creation for subscription %@", buf, 0xCu);
            }

            goto LABEL_78;
          }

          if (v21)
          {
            *buf = 138412290;
            v110 = v12;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Carrier supports voicemail; creating account for subscription %@", buf, 0xCu);
          }

          v22 = [(VMDCarrierAccountDataSource *)v2 telephonyClient];
          v20 = [v22 voicemailPhoneNumber:v12];

          v23 = vm_vmd_log();
          v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          if (v20)
          {
            if (v24)
            {
              *buf = 138412546;
              v110 = v20;
              v111 = 2112;
              v112 = v12;
              v25 = v23;
              v26 = "Call voicemail with phoneNumber '%@' is supported for subscription %@";
              v27 = 22;
              goto LABEL_29;
            }
          }

          else if (v24)
          {
            *buf = 138412290;
            v110 = v12;
            v25 = v23;
            v26 = "Call voicemail is not supported for subscription %@, invalid voicemail phoneNumber";
            v27 = 12;
LABEL_29:
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v26, buf, v27);
          }

          v28 = [NSUUID alloc];
          v29 = [v12 labelID];
          v30 = [v28 initWithUUIDString:v29];

          v31 = [(VMDCarrierAccountDataSource *)v2 telephonyClient];
          v32 = [v31 isoCountryCode:v12];

          v99 = v32;
          if (!v30 || !v32)
          {
            v38 = vm_vmd_log();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v110 = v30;
              v111 = 2112;
              v112 = v32;
              v113 = 2112;
              v114 = v12;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Invalid label UUID %@ or ISO country code %@; unable to create account for subscription %@", buf, 0x20u);
            }

            goto LABEL_77;
          }

          v33 = [v12 accountID];
          v100 = sub_1000855D4(v33);

          v34 = VMMap_copyAccountForLabel(v30);
          if (v34)
          {
            v35 = v34;
            v36 = [v12 accountID];
            v37 = [v36 isEqualToString:v35];

            if (v37)
            {
              v93 = v35;
LABEL_53:
              v95 = v30;
              v48 = [[VMMutableAccount alloc] initWithUUID:v30];
              v49 = [(VMDCarrierAccountDataSource *)v2 telephonyClient];
              v50 = [v12 context];
              v104 = 0;
              [v49 getShortLabel:v50 error:&v104];
              v52 = v51 = v2;
              v92 = v104;
              [v48 setAbbreviatedAccountDescription:v52];

              v53 = [v12 label];
              [v48 setAccountDescription:v53];

              v54 = [(VMDCarrierAccountDataSource *)v51 telephonyClient];
              v55 = [v54 isoCountryCode:v12];
              v97 = v48;
              [v48 setIsoCountryCode:v55];

              v56 = +[NSFileManager defaultManager];
              v57 = [v100 path];
              LOBYTE(v52) = [v56 fileExistsAtPath:v57];

              v7 = v90;
              if (v52)
              {
                goto LABEL_68;
              }

              v58 = [v12 phoneNumber];
              if (!v58)
              {
                goto LABEL_68;
              }

              v59 = v58;
              v60 = [v12 phoneNumber];
              v61 = [v60 length];

              if (!v61)
              {
                goto LABEL_68;
              }

              v62 = [v12 phoneNumber];
              v63 = v99;
              v64 = sub_10002532C(v62, v99);

              v89 = v64;
              if (v64)
              {
                v65 = [v64 UUIDString];
                v66 = sub_1000856C8(v65);

                v68 = v94;
                v67 = v95;
                if (v66)
                {
                  v69 = +[NSFileManager defaultManager];
                  v103 = 0;
                  v88 = v66;
                  v70 = [v69 moveItemAtURL:v66 toURL:v100 error:&v103];
                  v87 = v103;

                  if (v70)
                  {
                    v71 = vm_vmd_log();
                    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                    {
                      v72 = [v66 path];
                      v73 = [v100 path];
                      *buf = 138412546;
                      v110 = v72;
                      v111 = 2112;
                      v112 = v73;
                      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "successfully moved old storage from %@ to %@", buf, 0x16u);

                      v74 = v89;
                      goto LABEL_67;
                    }

LABEL_66:
                    v66 = v88;
                    v74 = v89;
LABEL_67:

LABEL_68:
                    v77 = [v100 URLByAppendingPathComponent:@"com.apple.voicemail.imap.parameters.plist" isDirectory:0];
                    v78 = +[NSFileManager defaultManager];
                    v79 = [v77 path];
                    v80 = [v78 fileExistsAtPath:v79];

                    v30 = v95;
                    if (v80)
                    {
                      v81 = [NSDictionary alloc];
                      v102 = 0;
                      v82 = [v81 initWithContentsOfURL:v77 error:&v102];
                      v83 = v102;
                      v84 = v83;
                      if (v82)
                      {
                        [(VMDCarrierAccountDataSource *)v94 updateAccount:v97 withDictionary:v82];
                      }

                      else if (v83)
                      {
                        v85 = vm_vmd_log();
                        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412546;
                          v110 = v77;
                          v111 = 2112;
                          v112 = v84;
                          _os_log_error_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "Could not open account file at %@ due to error %@", buf, 0x16u);
                        }
                      }
                    }

                    [v91 addObject:v97];

                    v2 = v94;
                    v38 = v100;
LABEL_77:

                    v9 = v96;
LABEL_78:

                    v10 = v98;
                    goto LABEL_79;
                  }

                  v63 = v99;
LABEL_64:
                  v67 = v95;
                }

                else
                {
                  v87 = 0;
                  v88 = 0;
                }

                v75 = [v12 phoneNumber];
                v76 = v63;
                v71 = v75;
                [(VMDCarrierAccountDataSource *)v68 dataMigration_legacy:v67 context:v12 isoCountryCode:v76 phone:v75 accountDir:v100];
                goto LABEL_66;
              }

              v87 = 0;
              v88 = 0;
              v68 = v94;
              goto LABEL_64;
            }

            v39 = vm_vmd_log();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v40 = [v30 UUIDString];
              *buf = 138412546;
              v110 = v35;
              v111 = 2112;
              v112 = v40;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "found old mapping %@ <> %@ - unmapping", buf, 0x16u);
            }

            while (1)
            {
              v41 = VMMap_copyRecordWithLabel(v30);
              if (!v41)
              {
                break;
              }

              VMMap_removeRecord();
              CFRelease(v41);
              sub_100093258(v35);
            }

            while (1)
            {
              v42 = VMMap_copyRecordWithAccount([v12 accountID]);
              if (!v42)
              {
                break;
              }

              VMMap_removeRecord();
              CFRelease(v42);
            }
          }

          v43 = VMMap_addRecord([v12 accountID], v30);
          if (v43)
          {
            CFRelease(v43);
            v44 = vm_vmd_log();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              v45 = [v12 accountID];
              *buf = 138412546;
              v110 = v45;
              v111 = 2112;
              v112 = v30;
              v46 = v44;
              v47 = "created new account map record: %@ <=> %@";
              goto LABEL_51;
            }
          }

          else
          {
            v44 = vm_vmd_log();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              v45 = [v12 accountID];
              *buf = 138412546;
              v110 = v45;
              v111 = 2112;
              v112 = v30;
              v46 = v44;
              v47 = "FAILED to create new account map record: %@ <=> %@";
LABEL_51:
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, v47, buf, 0x16u);
            }
          }

          VMStoreSave();
          v93 = 0;
          v2 = v94;
          goto LABEL_53;
        }

        v17 = vm_vmd_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v110 = v12;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Carrier does not support voicemail; cancelling account creation for subscription %@", buf, 0xCu);
        }

LABEL_79:

        v11 = v11 + 1;
      }

      while (v11 != v9);
      v9 = [v7 countByEnumeratingWithState:&v105 objects:v115 count:16];
    }

    while (v9);
  }

  [(VMDCarrierAccountDataSource *)v2 setAccounts:v91];
}

- (void)updateAccount:(id)a3 withDictionary:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(VMDCarrierAccountDataSource *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [v6 objectForKeyedSubscript:@"AccountState"];
  v9 = [v6 objectForKeyedSubscript:@"AccountSettings"];

  v10 = sub_10006B7C4();
  v11 = [v9 objectForKeyedSubscript:v10];

  if (v8)
  {
    [v13 setProvisioned:{objc_msgSend(v8, "isEqualToString:", @"NewAccount"}];
  }

  if (v11)
  {
    v12 = [[VMHandle alloc] initWithType:1 value:v11];
    [v13 setHandle:v12];
  }
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
    sub_10009CF54(a2, self);
  }
}

- (void)performSynchronousBlock:(id)a3
{
  if (dispatch_get_specific(off_10010D130) == self)
  {
    v6 = *(a3 + 2);
    v7 = a3;
    v6();
  }

  else
  {
    v5 = a3;
    v7 = [(VMDCarrierAccountDataSource *)self queue];
    dispatch_sync(v7, v5);
  }
}

- (void)notifyDelegateAccountsDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_loadWeakRetained(&self->_delegateQueue);
  v5 = [v4 underlyingQueue];

  if (!v5)
  {
    v5 = &_dispatch_main_q;
    v6 = &_dispatch_main_q;
  }

  if (objc_opt_respondsToSelector())
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100045614;
    v7[3] = &unk_1000ED450;
    v8 = WeakRetained;
    v9 = self;
    dispatch_async(v5, v7);
  }
}

- (void)local_voicemailInfoAvailableNotification:(id)a3 voicemailInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VMDCarrierAccountDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000456F8;
  block[3] = &unk_1000ED478;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)handleVMCarrierIMAPParametersChangedNotification:(id)a3
{
  v4 = a3;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = objc_opt_class();
    v14 = 2112;
    v15 = v4;
    v6 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@ ", buf, 0x16u);
  }

  v7 = [(VMDCarrierAccountDataSource *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100045D44;
  v9[3] = &unk_1000ED450;
  v10 = v4;
  v11 = self;
  v8 = v4;
  dispatch_async(v7, v9);
}

@end