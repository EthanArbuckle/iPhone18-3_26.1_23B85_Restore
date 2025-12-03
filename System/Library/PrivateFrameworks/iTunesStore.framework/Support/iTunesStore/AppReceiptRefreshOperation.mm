@interface AppReceiptRefreshOperation
- (AppReceiptRefreshOperation)initWithOptions:(id)options;
- (BOOL)_handleResponse:(id)response forApp:(id)app options:(id)options;
- (BOOL)_refreshReceiptForApplication:(id)application withOptions:(id)options vppState:(int64_t)state error:(id *)error;
- (id)_optionsWithVPPState:(int64_t)state;
- (id)_postBodyDataWithApplication:(id)application options:(id)options vppState:(int64_t)state error:(id *)error;
- (id)receiptExpirationDateForProxy:(id)proxy;
- (void)run;
- (void)setResultsBlock:(id)block;
@end

@implementation AppReceiptRefreshOperation

- (AppReceiptRefreshOperation)initWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [(AppReceiptRefreshOperation *)self init];
  if (v5)
  {
    v6 = objc_alloc_init(AppReceiptOperationResult);
    operationResult = v5->_operationResult;
    v5->_operationResult = v6;

    if (optionsCopy)
    {
      v8 = [optionsCopy copy];
      options = v5->_options;
      v5->_options = v8;
    }

    else
    {
      v10 = objc_alloc_init(AppReceiptRefreshOperationOptions);
      v11 = v5->_options;
      v5->_options = v10;

      [(AppReceiptRefreshOperationOptions *)v5->_options setAuthenticationPromptStyle:1000];
      [(AppReceiptRefreshOperationOptions *)v5->_options setPerformSinfMirartionCheckBeforeFailing:1];
    }
  }

  return v5;
}

- (void)run
{
  v3 = objc_alloc_init(FamilyCircleOperation);
  if ([(AppReceiptRefreshOperation *)self runSubOperation:v3 returningError:0])
  {
    familyCircle = [(FamilyCircleOperation *)v3 familyCircle];

    if (familyCircle)
    {
      familyCircle2 = [(FamilyCircleOperation *)v3 familyCircle];
      allITunesIdentifiers = [familyCircle2 allITunesIdentifiers];
      allObjects = [allITunesIdentifiers allObjects];
      v8 = [allObjects mutableCopy];

      v9 = +[SSAccountStore defaultStore];
      activeAccount = [v9 activeAccount];
      uniqueIdentifier = [activeAccount uniqueIdentifier];

      if (uniqueIdentifier)
      {
        [(NSArray *)v8 removeObject:uniqueIdentifier];
      }

      familyAccountIDs = self->_familyAccountIDs;
      self->_familyAccountIDs = v8;
    }
  }

  bundleIdentifier = [(AppReceiptRefreshOperationOptions *)self->_options bundleIdentifier];
  if (bundleIdentifier)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = [LSApplicationProxy applicationProxyForIdentifier:bundleIdentifier];
    if (v15 || ([AppExtensionSupport supportedProxyExtensionForBundleIdentifier:bundleIdentifier], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = v15;
      [(AppReceiptRefreshOperation *)self _refreshReceiptForApplication:v15 withOptions:self->_options vppState:[SSPurchaseReceipt error:"vppStateFlagsWithProxy:" vppStateFlagsWithProxy:v15], 0];
    }

    objc_autoreleasePoolPop(v14);
  }

  else
  {
    v17 = [SSURLBagContext contextWithBagType:0];
    v18 = +[ISURLBagCache sharedCache];
    v19 = [v18 URLBagForContext:v17];

    v20 = [v19 valueForKey:@"receipt-max-lookup-count"];
    if (v20 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      integerValue = [v20 integerValue];
    }

    else
    {
      integerValue = 10;
    }

    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v28[3] = 0;
    v22 = +[LSApplicationWorkspace defaultWorkspace];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10017E500;
    v27[3] = &unk_10032A640;
    v27[5] = v28;
    v27[6] = integerValue;
    v27[4] = self;
    [v22 enumerateApplicationsOfType:0 block:v27];

    _Block_object_dispose(v28, 8);
  }

  [(AppReceiptRefreshOperation *)self lock];
  v23 = self->_operationResult;
  v24 = objc_retainBlock(self->_resultsBlock);
  operationResult = self->_operationResult;
  self->_operationResult = 0;

  resultsBlock = self->_resultsBlock;
  self->_resultsBlock = 0;

  [(AppReceiptRefreshOperation *)self unlock];
  if (v24)
  {
    v24[2](v24, v23);
  }
}

- (void)setResultsBlock:(id)block
{
  blockCopy = block;
  [(AppReceiptRefreshOperation *)self lock];
  if (self->_resultsBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    resultsBlock = self->_resultsBlock;
    self->_resultsBlock = v4;
  }

  [(AppReceiptRefreshOperation *)self unlock];
}

- (id)receiptExpirationDateForProxy:(id)proxy
{
  v3 = [SSPurchaseReceipt receiptPathForProxy:proxy];
  if (v3)
  {
    v4 = [[SSPurchaseReceipt alloc] initWithContentsOfFile:v3];
    expirationDate = [v4 expirationDate];
  }

  else
  {
    expirationDate = 0;
  }

  return expirationDate;
}

- (BOOL)_handleResponse:(id)response forApp:(id)app options:(id)options
{
  responseCopy = response;
  appCopy = app;
  optionsCopy = options;
  v11 = [responseCopy objectForKey:@"status"];
  v12 = v11;
  if (!v11 || ![v11 integerValue])
  {
    v13 = [responseCopy objectForKey:@"receipt"];
    receiptFlags = [optionsCopy receiptFlags];
    if (![v13 length])
    {
      v24 = +[SSLogConfig sharedDaemonConfig];
      if (!v24)
      {
        v24 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v24 shouldLog];
      if ([v24 shouldLogToDisk])
      {
        v40 = shouldLog | 2;
      }

      else
      {
        v40 = shouldLog;
      }

      oSLogObject = [v24 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        v40 &= 2u;
      }

      if (!v40)
      {
        goto LABEL_98;
      }

      v81 = 138543618;
      v82 = objc_opt_class();
      v83 = 2114;
      v84 = appCopy;
      v41 = v82;
      LODWORD(v67) = 22;
      v42 = _os_log_send_and_compose_impl();

      if (!v42)
      {
        goto LABEL_99;
      }

      oSLogObject = [NSString stringWithCString:v42 encoding:4, &v81, v67];
      free(v42);
      SSFileLog();
      goto LABEL_98;
    }

    bundleIdentifier = [appCopy bundleIdentifier];
    v21 = [AppReceipt writeReceipt:v13 forBundleIdentifier:bundleIdentifier style:(receiptFlags >> 2) & 1];

    if (v21)
    {
      [(AppReceiptOperationResult *)self->_operationResult addRefreshed:appCopy];
      v22 = [SSPurchaseReceipt vppStateFlagsWithProxy:appCopy];
      v23 = [responseCopy objectForKey:@"revoked"];
      v24 = v23;
      if (v23)
      {
        if ([v23 BOOLValue])
        {
          if (!-[AppReceiptRefreshOperationOptions performSinfMirartionCheckBeforeFailing](self->_options, "performSinfMirartionCheckBeforeFailing") || ([appCopy hasMIDBasedSINF] & 1) != 0 || (v22 & 8) == 0)
          {
LABEL_32:
            [(AppReceiptOperationResult *)self->_operationResult addRevoked:appCopy, v66];
            oSLogObject = +[SSLogConfig sharedDaemonConfig];
            if (!oSLogObject)
            {
              oSLogObject = +[SSLogConfig sharedConfig];
            }

            shouldLog2 = [oSLogObject shouldLog];
            if ([oSLogObject shouldLogToDisk])
            {
              v33 = shouldLog2 | 2;
            }

            else
            {
              v33 = shouldLog2;
            }

            v31OSLogObject = [oSLogObject OSLogObject];
            if (!os_log_type_enabled(v31OSLogObject, OS_LOG_TYPE_DEFAULT))
            {
              v33 &= 2u;
            }

            if (v33)
            {
              v75 = optionsCopy;
              v35 = objc_opt_class();
              v78 = v35;
              itemName = [appCopy itemName];
              v37 = [v13 length];
              v81 = 138544130;
              v82 = v35;
              v83 = 2114;
              v84 = itemName;
              v85 = 2114;
              v86 = appCopy;
              v87 = 2048;
              v88 = v37;
              LODWORD(v67) = 42;
              v38 = _os_log_send_and_compose_impl();

              if (!v38)
              {
                optionsCopy = v75;
                goto LABEL_98;
              }

              v31OSLogObject = [NSString stringWithCString:v38 encoding:4, &v81, v67];
              free(v38);
              SSFileLog();
              optionsCopy = v75;
            }

            goto LABEL_97;
          }

          v77 = [(AppReceiptRefreshOperation *)self _preformMigrationCheckForApp:appCopy];
          v25 = +[SSLogConfig sharedDaemonConfig];
          if (!v25)
          {
            v25 = +[SSLogConfig sharedConfig];
          }

          v26 = v25;
          shouldLog3 = [v25 shouldLog];
          if ([v26 shouldLogToDisk])
          {
            shouldLog3 |= 2u;
          }

          v74 = v26;
          oSLogObject2 = [v26 OSLogObject];
          if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
          {
            shouldLog3 &= 2u;
          }

          if (shouldLog3)
          {
            v70 = oSLogObject2;
            v29 = objc_opt_class();
            v72 = v29;
            bundleIdentifier2 = [appCopy bundleIdentifier];
            v81 = 138543874;
            v82 = v29;
            v83 = 2114;
            v84 = bundleIdentifier2;
            v85 = 1024;
            LODWORD(v86) = v77;
            LODWORD(v67) = 28;
            v66 = &v81;
            v30 = _os_log_send_and_compose_impl();

            if (!v30)
            {
              goto LABEL_31;
            }

            oSLogObject2 = [NSString stringWithCString:v30 encoding:4, &v81, v67];
            free(v30);
            v66 = oSLogObject2;
            SSFileLog();
          }

LABEL_31:
          if ((v77 & 1) == 0)
          {
            goto LABEL_32;
          }

LABEL_99:
          LOBYTE(v18) = 1;
          goto LABEL_100;
        }

        oSLogObject = +[SSLogConfig sharedDaemonConfig];
        if (!oSLogObject)
        {
          oSLogObject = +[SSLogConfig sharedConfig];
        }

        shouldLog4 = [oSLogObject shouldLog];
        if ([oSLogObject shouldLogToDisk])
        {
          v63 = shouldLog4 | 2;
        }

        else
        {
          v63 = shouldLog4;
        }

        v31OSLogObject = [oSLogObject OSLogObject];
        if (!os_log_type_enabled(v31OSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v63 &= 2u;
        }

        if (!v63)
        {
LABEL_97:

          goto LABEL_98;
        }

        v64 = objc_opt_class();
        v80 = v64;
        v81 = 138543874;
        v82 = v64;
        v83 = 2114;
        v84 = appCopy;
        v85 = 2048;
        v86 = [v13 length];
        LODWORD(v67) = 32;
        v61 = _os_log_send_and_compose_impl();
        goto LABEL_95;
      }

      if ((v22 & 8) == 0)
      {
        goto LABEL_99;
      }

      if (!-[AppReceiptRefreshOperationOptions performSinfMirartionCheckBeforeFailing](self->_options, "performSinfMirartionCheckBeforeFailing") || ([appCopy hasMIDBasedSINF] & 1) != 0)
      {
LABEL_77:
        [(AppReceiptOperationResult *)self->_operationResult addRevoked:appCopy, v66];
        oSLogObject = +[SSLogConfig sharedDaemonConfig];
        if (!oSLogObject)
        {
          oSLogObject = +[SSLogConfig sharedConfig];
        }

        shouldLog5 = [oSLogObject shouldLog];
        if ([oSLogObject shouldLogToDisk])
        {
          v55 = shouldLog5 | 2;
        }

        else
        {
          v55 = shouldLog5;
        }

        v31OSLogObject = [oSLogObject OSLogObject];
        v56 = os_log_type_enabled(v31OSLogObject, OS_LOG_TYPE_DEFAULT);
        v57 = v55 & 2;
        if (v56)
        {
          v57 = v55;
        }

        if (!v57)
        {
          goto LABEL_97;
        }

        v58 = objc_opt_class();
        v80 = v58;
        itemName2 = [appCopy itemName];
        v60 = [v13 length];
        v81 = 138413058;
        v82 = v58;
        v83 = 2114;
        v84 = itemName2;
        v85 = 2114;
        v86 = appCopy;
        v87 = 2048;
        v88 = v60;
        LODWORD(v67) = 42;
        v61 = _os_log_send_and_compose_impl();

LABEL_95:
        if (v61)
        {
          v31OSLogObject = [NSString stringWithCString:v61 encoding:4, &v81, v67];
          free(v61);
          SSFileLog();
          goto LABEL_97;
        }

LABEL_98:

        goto LABEL_99;
      }

      v79 = [(AppReceiptRefreshOperation *)self _preformMigrationCheckForApp:appCopy];
      v48 = +[SSLogConfig sharedDaemonConfig];
      if (!v48)
      {
        v48 = +[SSLogConfig sharedConfig];
      }

      v49 = v48;
      shouldLog6 = [v48 shouldLog];
      if ([v49 shouldLogToDisk])
      {
        shouldLog6 |= 2u;
      }

      v76 = v49;
      oSLogObject3 = [v49 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        shouldLog6 &= 2u;
      }

      if (shouldLog6)
      {
        v71 = oSLogObject3;
        v52 = objc_opt_class();
        v73 = v52;
        bundleIdentifier3 = [appCopy bundleIdentifier];
        v81 = 138543874;
        v82 = v52;
        v83 = 2114;
        v84 = bundleIdentifier3;
        v85 = 1024;
        LODWORD(v86) = v79;
        LODWORD(v67) = 28;
        v66 = &v81;
        v53 = _os_log_send_and_compose_impl();

        if (!v53)
        {
          goto LABEL_76;
        }

        oSLogObject3 = [NSString stringWithCString:v53 encoding:4, &v81, v67];
        free(v53);
        v66 = oSLogObject3;
        SSFileLog();
      }

LABEL_76:
      if (v79)
      {
        goto LABEL_99;
      }

      goto LABEL_77;
    }

    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    shouldLog7 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v44 = shouldLog7 | 2;
    }

    else
    {
      v44 = shouldLog7;
    }

    oSLogObject4 = [v24 OSLogObject];
    if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      v44 &= 2u;
    }

    if (v44)
    {
      v46 = objc_opt_class();
      v47 = v46;
      v81 = 138543874;
      v82 = v46;
      v83 = 2114;
      v84 = appCopy;
      v85 = 2048;
      v86 = [v13 length];
      LODWORD(v67) = 32;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
LABEL_100:

        goto LABEL_101;
      }

      oSLogObject4 = [NSString stringWithCString:v18 encoding:4, &v81, v67];
      free(v18);
      SSFileLog();
    }

    LOBYTE(v18) = 0;
    goto LABEL_100;
  }

  v13 = +[SSLogConfig sharedDaemonConfig];
  if (!v13)
  {
    v13 = +[SSLogConfig sharedConfig];
  }

  shouldLog8 = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    v15 = shouldLog8 | 2;
  }

  else
  {
    v15 = shouldLog8;
  }

  oSLogObject5 = [v13 OSLogObject];
  if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
  {
    v15 &= 2u;
  }

  if (!v15)
  {
    goto LABEL_13;
  }

  v81 = 138543618;
  v82 = objc_opt_class();
  v83 = 2114;
  v84 = responseCopy;
  v17 = v82;
  LODWORD(v67) = 22;
  v18 = _os_log_send_and_compose_impl();

  if (v18)
  {
    oSLogObject5 = [NSString stringWithCString:v18 encoding:4, &v81, v67];
    free(v18);
    SSFileLog();
LABEL_13:

    LOBYTE(v18) = 0;
  }

LABEL_101:

  return v18;
}

- (id)_optionsWithVPPState:(int64_t)state
{
  if ((state & 2) != 0)
  {
    v3 = [(AppReceiptRefreshOperationOptions *)self->_options copy];
    [v3 setReceiptFlags:{objc_msgSend(v3, "receiptFlags") | 8}];
    v4 = v3;
    v5 = 0;
  }

  else
  {
    if ((state & 0x40000000) == 0)
    {
      v3 = 0;
      goto LABEL_7;
    }

    v3 = [(AppReceiptRefreshOperationOptions *)self->_options copy];
    [v3 setReceiptFlags:{objc_msgSend(v3, "receiptFlags") & 0xFFFFFFFFFFFFFFF7}];
    v4 = v3;
    v5 = 1;
  }

  [v4 setNeedsAuthentication:v5];
LABEL_7:

  return v3;
}

- (id)_postBodyDataWithApplication:(id)application options:(id)options vppState:(int64_t)state error:(id *)error
{
  stateCopy = state;
  applicationCopy = application;
  optionsCopy = options;
  v11 = objc_alloc_init(NSMutableDictionary);
  if (([optionsCopy receiptFlags] & 4) != 0)
  {
    v15 = [ACAccountStore ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeAppStoreSandbox];
    ams_activeiTunesAccount = [v15 ams_activeiTunesAccount];

    activeAccount = [[SSAccount alloc] initWithBackingAccount:ams_activeiTunesAccount];
    ams_DSID = [ams_activeiTunesAccount ams_DSID];
  }

  else
  {
    v12 = +[SSAccountStore defaultStore];
    activeAccount = [v12 activeAccount];

    ams_DSID = [applicationCopy purchaserDSID];
  }

  if (ams_DSID)
  {
    v17 = activeAccount == 0;
  }

  else
  {
    v17 = 1;
  }

  v82 = activeAccount;
  v83 = optionsCopy;
  if (!v17)
  {
    familyAccountIDs = self->_familyAccountIDs;
    if (familyAccountIDs)
    {
      if ([(NSArray *)familyAccountIDs containsObject:ams_DSID])
      {
        storeFront = [applicationCopy storeFront];
        v20 = objc_opt_respondsToSelector();

        if (v20)
        {
          storeFront2 = [applicationCopy storeFront];
          stringValue = [storeFront2 stringValue];
        }

        else
        {
          stringValue = 0;
        }

        storeFrontIdentifier = [activeAccount storeFrontIdentifier];
        v80 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [storeFrontIdentifier integerValue]);

        uniqueIdentifier = [activeAccount uniqueIdentifier];
        v79 = uniqueIdentifier;
        if (!uniqueIdentifier || !stringValue || (v24 = uniqueIdentifier, ![v80 isEqualToString:stringValue]))
        {
          v78 = applicationCopy;
          v34 = ams_DSID;
          v26 = +[SSLogConfig sharedDaemonConfig];
          if (!v26)
          {
            v26 = +[SSLogConfig sharedConfig];
          }

          shouldLog = [v26 shouldLog];
          if ([v26 shouldLogToDisk])
          {
            v36 = shouldLog | 2;
          }

          else
          {
            v36 = shouldLog;
          }

          oSLogObject = [v26 OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
          {
            v38 = v36;
          }

          else
          {
            v38 = v36 & 2;
          }

          if (v38)
          {
            v39 = objc_opt_class();
            v76 = v39;
            bundleIdentifier = [v78 bundleIdentifier];
            v86 = 138544386;
            v87 = v39;
            v88 = 2114;
            v89 = v34;
            v90 = 2114;
            v91 = bundleIdentifier;
            v92 = 2114;
            v93 = stringValue;
            v94 = 2114;
            v95 = v80;
            LODWORD(v75) = 52;
            v74 = &v86;
            v41 = _os_log_send_and_compose_impl();

            if (v41)
            {
              v42 = [NSString stringWithCString:v41 encoding:4, &v86, v75];
              free(v41);
              v74 = v42;
              SSFileLog();
            }

            v25 = v34;
          }

          else
          {

            v25 = v34;
          }

          applicationCopy = v78;
          goto LABEL_42;
        }

        v25 = [v24 copy];

        v26 = +[SSLogConfig sharedDaemonConfig];
        if (!v26)
        {
          v26 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v26 shouldLog];
        if ([v26 shouldLogToDisk])
        {
          v28 = shouldLog2 | 2;
        }

        else
        {
          v28 = shouldLog2;
        }

        oSLogObject2 = [v26 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v28;
        }

        else
        {
          v30 = v28 & 2;
        }

        if (v30)
        {
          v31 = objc_opt_class();
          v77 = v31;
          bundleIdentifier2 = [applicationCopy bundleIdentifier];
          v86 = 138544130;
          v87 = v31;
          v88 = 2114;
          v89 = v25;
          v90 = 2114;
          v91 = bundleIdentifier2;
          v92 = 2114;
          v93 = v80;
          LODWORD(v75) = 42;
          v74 = &v86;
          v33 = _os_log_send_and_compose_impl();

          if (!v33)
          {
LABEL_42:

            ams_DSID = v25;
            optionsCopy = v83;
            goto LABEL_43;
          }

          oSLogObject2 = [NSString stringWithCString:v33 encoding:4, &v86, v75];
          free(v33);
          v74 = oSLogObject2;
          SSFileLog();
        }

        goto LABEL_42;
      }
    }
  }

LABEL_43:
  if (objc_opt_respondsToSelector())
  {
    [optionsCopy setTargetAccount:ams_DSID];
    stringValue2 = [ams_DSID stringValue];
    [v11 setObject:stringValue2 forKey:@"dsid"];
  }

  v44 = +[ISDevice sharedInstance];
  guid = [v44 guid];

  if (guid)
  {
    [v11 setObject:guid forKey:@"guid"];
  }

  bundleIdentifier3 = [applicationCopy bundleIdentifier];

  if (bundleIdentifier3)
  {
    [v11 setObject:bundleIdentifier3 forKey:@"bundle-id"];
  }

  bundleVersion = [applicationCopy bundleVersion];

  if (bundleVersion)
  {
    [v11 setObject:bundleVersion forKey:@"version-id"];
  }

  v48 = +[ISDevice sharedInstance];
  serialNumber = [v48 serialNumber];

  if (serialNumber)
  {
    [v11 setObject:serialNumber forKey:@"serialNumber"];
  }

  v50 = [optionsCopy receiptFlags] & 1;
  if (v50)
  {
    [v11 setObject:&__kCFBooleanTrue forKey:@"want-expired"];
  }

  if (([optionsCopy receiptFlags] & 2) != 0)
  {
    [v11 setObject:&__kCFBooleanTrue forKey:@"want-revoked"];
    v50 = 1;
  }

  v51 = v50 | ([optionsCopy receiptFlags] >> 3) & 1;
  if (v51 == 1)
  {
    [v11 setObject:&__kCFBooleanTrue forKey:@"want-vpp"];
  }

  if ((stateCopy & 8) != 0)
  {
    [v11 setObject:&__kCFBooleanTrue forKey:@"revoked"];
  }

  itemID = [applicationCopy itemID];

  if (itemID)
  {
    stringValue3 = [itemID stringValue];
    if (v51)
    {
      v54 = @"appAdamId";
    }

    else
    {
      v54 = @"adam-id";
    }

    [v11 setObject:stringValue3 forKey:v54];
  }

  v55 = applicationCopy;
  externalVersionIdentifier = [applicationCopy externalVersionIdentifier];

  if (externalVersionIdentifier)
  {
    stringValue4 = [externalVersionIdentifier stringValue];
    if (v51)
    {
      v58 = @"appExtVrsId";
    }

    else
    {
      v58 = @"software-version-external-identifier";
    }

    [v11 setObject:stringValue4 forKey:v58];
  }

  v59 = ams_DSID;
  deviceIdentifierForVendor = [v55 deviceIdentifierForVendor];
  uUIDString = [deviceIdentifierForVendor UUIDString];

  if (uUIDString)
  {
    [v11 setObject:uUIDString forKey:@"vid"];
  }

  v85 = 0;
  v62 = [NSPropertyListSerialization dataWithPropertyList:v11 format:100 options:0 error:&v85];
  v63 = v85;
  if (v63)
  {
    v64 = +[SSLogConfig sharedDaemonConfig];
    if (!v64)
    {
      v64 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v64 shouldLog];
    if ([v64 shouldLogToDisk])
    {
      v66 = shouldLog3 | 2;
    }

    else
    {
      v66 = shouldLog3;
    }

    oSLogObject3 = [v64 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v68 = v66;
    }

    else
    {
      v68 = v66 & 2;
    }

    if (v68)
    {
      v69 = objc_opt_class();
      v86 = 138543618;
      v87 = v69;
      v88 = 2114;
      v89 = v63;
      v70 = v69;
      LODWORD(v75) = 22;
      v71 = _os_log_send_and_compose_impl();

      if (!v71)
      {
LABEL_86:

        goto LABEL_87;
      }

      oSLogObject3 = [NSString stringWithCString:v71 encoding:4, &v86, v75];
      free(v71);
      SSFileLog();
    }

    goto LABEL_86;
  }

LABEL_87:
  if (error && !v62)
  {
    v72 = v63;
    *error = v63;
  }

  return v62;
}

- (BOOL)_refreshReceiptForApplication:(id)application withOptions:(id)options vppState:(int64_t)state error:(id *)error
{
  applicationCopy = application;
  optionsCopy = options;
  v59 = 0;
  v12 = [(AppReceiptRefreshOperation *)self _postBodyDataWithApplication:applicationCopy options:optionsCopy vppState:state error:&v59];
  v13 = v59;
  if (v12)
  {
    errorCopy = error;
    v14 = objc_alloc_init(ISStoreURLOperation);
    [v14 setNeedsAuthentication:{objc_msgSend(optionsCopy, "needsAuthentication")}];
    v15 = +[DaemonProtocolDataProvider provider];
    [v14 setDataProvider:v15];
    v16 = objc_alloc_init(SSMutableURLRequestProperties);
    [v16 setAllowedRetryCount:0];
    v56 = v12;
    [v16 setHTTPBody:v12];
    [v16 setHTTPMethod:@"POST"];
    uRLBagKey = [optionsCopy URLBagKey];
    [v16 setURLBagKey:uRLBagKey];

    [v16 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
    targetAccount = [optionsCopy targetAccount];

    v19 = [SSMutableAuthenticationContext alloc];
    if (targetAccount)
    {
      [optionsCopy targetAccount];
    }

    else
    {
      [applicationCopy purchaserDSID];
    }
    v21 = ;
    v22 = [v19 initWithAccountIdentifier:v21];

    [v22 setPromptStyle:{objc_msgSend(optionsCopy, "authenticationPromptStyle")}];
    if (([optionsCopy receiptFlags] & 4) != 0)
    {
      [v22 setAccountScope:1];
      [v16 setURLBagType:1];
    }

    v55 = v22;
    [v14 setAuthenticationContext:v22];
    [v14 setRequestProperties:v16];
    v23 = +[SSLogConfig sharedDaemonConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [v23 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v26 = objc_opt_class();
      v60 = 138543618;
      v61 = v26;
      v62 = 2114;
      v63 = applicationCopy;
      v53 = v13;
      v27 = optionsCopy;
      v28 = v16;
      selfCopy = self;
      v30 = v14;
      v31 = applicationCopy;
      v32 = v15;
      v33 = v26;
      LODWORD(v52) = 22;
      v50 = &v60;
      v34 = _os_log_send_and_compose_impl();

      v15 = v32;
      applicationCopy = v31;
      v14 = v30;
      self = selfCopy;
      v16 = v28;
      optionsCopy = v27;
      v13 = v53;

      if (!v34)
      {
LABEL_19:

        v58 = v13;
        v35 = [(AppReceiptRefreshOperation *)self runSubOperation:v14 returningError:&v58];
        v36 = v58;

        if (v35)
        {
          output = [v15 output];
          v38 = [(AppReceiptRefreshOperation *)self _handleResponse:output forApp:applicationCopy options:optionsCopy];

          if (v38)
          {
            v20 = 1;
            error = errorCopy;
            goto LABEL_39;
          }
        }

        v39 = +[SSLogConfig sharedDaemonConfig];
        if (!v39)
        {
          v39 = +[SSLogConfig sharedConfig];
        }

        v54 = v14;
        shouldLog2 = [v39 shouldLog];
        if ([v39 shouldLogToDisk])
        {
          shouldLog2 |= 2u;
        }

        oSLogObject2 = [v39 OSLogObject];
        if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
        {
          shouldLog2 &= 2u;
        }

        if (shouldLog2)
        {
          v42 = objc_opt_class();
          v60 = 138543874;
          v61 = v42;
          v62 = 2114;
          v43 = applicationCopy;
          v63 = applicationCopy;
          v64 = 2114;
          v65 = v36;
          v44 = v15;
          v45 = v42;
          LODWORD(v52) = 32;
          v51 = &v60;
          v46 = _os_log_send_and_compose_impl();

          v15 = v44;
          if (!v46)
          {
LABEL_33:

            resultingError = [(AppReceiptOperationResult *)self->_operationResult resultingError];

            if (resultingError)
            {
              v20 = 0;
              error = errorCopy;
              applicationCopy = v43;
            }

            else
            {
              applicationCopy = v43;
              if (!v36)
              {
                v36 = [NSError errorWithDomain:SSErrorDomain code:100 userInfo:0];
              }

              [(AppReceiptOperationResult *)self->_operationResult setResultingError:v36, v51];
              v20 = 0;
              error = errorCopy;
            }

            v14 = v54;
LABEL_39:

            v13 = v36;
            v12 = v56;
            if (!error)
            {
              goto LABEL_42;
            }

            goto LABEL_40;
          }

          oSLogObject2 = [NSString stringWithCString:v46 encoding:4, &v60, v52];
          free(v46);
          v51 = oSLogObject2;
          SSFileLog();
        }

        else
        {
          v43 = applicationCopy;
        }

        goto LABEL_33;
      }

      oSLogObject = [NSString stringWithCString:v34 encoding:4, &v60, v52];
      free(v34);
      v50 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_19;
  }

  v20 = 0;
  if (!error)
  {
    goto LABEL_42;
  }

LABEL_40:
  if (!v20)
  {
    v48 = v13;
    *error = v13;
  }

LABEL_42:

  return v20;
}

@end