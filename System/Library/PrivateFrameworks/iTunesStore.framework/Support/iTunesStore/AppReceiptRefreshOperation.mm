@interface AppReceiptRefreshOperation
- (AppReceiptRefreshOperation)initWithOptions:(id)a3;
- (BOOL)_handleResponse:(id)a3 forApp:(id)a4 options:(id)a5;
- (BOOL)_refreshReceiptForApplication:(id)a3 withOptions:(id)a4 vppState:(int64_t)a5 error:(id *)a6;
- (id)_optionsWithVPPState:(int64_t)a3;
- (id)_postBodyDataWithApplication:(id)a3 options:(id)a4 vppState:(int64_t)a5 error:(id *)a6;
- (id)receiptExpirationDateForProxy:(id)a3;
- (void)run;
- (void)setResultsBlock:(id)a3;
@end

@implementation AppReceiptRefreshOperation

- (AppReceiptRefreshOperation)initWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(AppReceiptRefreshOperation *)self init];
  if (v5)
  {
    v6 = objc_alloc_init(AppReceiptOperationResult);
    operationResult = v5->_operationResult;
    v5->_operationResult = v6;

    if (v4)
    {
      v8 = [v4 copy];
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
    v4 = [(FamilyCircleOperation *)v3 familyCircle];

    if (v4)
    {
      v5 = [(FamilyCircleOperation *)v3 familyCircle];
      v6 = [v5 allITunesIdentifiers];
      v7 = [v6 allObjects];
      v8 = [v7 mutableCopy];

      v9 = +[SSAccountStore defaultStore];
      v10 = [v9 activeAccount];
      v11 = [v10 uniqueIdentifier];

      if (v11)
      {
        [(NSArray *)v8 removeObject:v11];
      }

      familyAccountIDs = self->_familyAccountIDs;
      self->_familyAccountIDs = v8;
    }
  }

  v13 = [(AppReceiptRefreshOperationOptions *)self->_options bundleIdentifier];
  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = [LSApplicationProxy applicationProxyForIdentifier:v13];
    if (v15 || ([AppExtensionSupport supportedProxyExtensionForBundleIdentifier:v13], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
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
      v21 = [v20 integerValue];
    }

    else
    {
      v21 = 10;
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
    v27[6] = v21;
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

- (void)setResultsBlock:(id)a3
{
  v6 = a3;
  [(AppReceiptRefreshOperation *)self lock];
  if (self->_resultsBlock != v6)
  {
    v4 = [v6 copy];
    resultsBlock = self->_resultsBlock;
    self->_resultsBlock = v4;
  }

  [(AppReceiptRefreshOperation *)self unlock];
}

- (id)receiptExpirationDateForProxy:(id)a3
{
  v3 = [SSPurchaseReceipt receiptPathForProxy:a3];
  if (v3)
  {
    v4 = [[SSPurchaseReceipt alloc] initWithContentsOfFile:v3];
    v5 = [v4 expirationDate];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_handleResponse:(id)a3 forApp:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 objectForKey:@"status"];
  v12 = v11;
  if (!v11 || ![v11 integerValue])
  {
    v13 = [v8 objectForKey:@"receipt"];
    v19 = [v10 receiptFlags];
    if (![v13 length])
    {
      v24 = +[SSLogConfig sharedDaemonConfig];
      if (!v24)
      {
        v24 = +[SSLogConfig sharedConfig];
      }

      v39 = [v24 shouldLog];
      if ([v24 shouldLogToDisk])
      {
        v40 = v39 | 2;
      }

      else
      {
        v40 = v39;
      }

      v31 = [v24 OSLogObject];
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
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
      v84 = v9;
      v41 = v82;
      LODWORD(v67) = 22;
      v42 = _os_log_send_and_compose_impl();

      if (!v42)
      {
        goto LABEL_99;
      }

      v31 = [NSString stringWithCString:v42 encoding:4, &v81, v67];
      free(v42);
      SSFileLog();
      goto LABEL_98;
    }

    v20 = [v9 bundleIdentifier];
    v21 = [AppReceipt writeReceipt:v13 forBundleIdentifier:v20 style:(v19 >> 2) & 1];

    if (v21)
    {
      [(AppReceiptOperationResult *)self->_operationResult addRefreshed:v9];
      v22 = [SSPurchaseReceipt vppStateFlagsWithProxy:v9];
      v23 = [v8 objectForKey:@"revoked"];
      v24 = v23;
      if (v23)
      {
        if ([v23 BOOLValue])
        {
          if (!-[AppReceiptRefreshOperationOptions performSinfMirartionCheckBeforeFailing](self->_options, "performSinfMirartionCheckBeforeFailing") || ([v9 hasMIDBasedSINF] & 1) != 0 || (v22 & 8) == 0)
          {
LABEL_32:
            [(AppReceiptOperationResult *)self->_operationResult addRevoked:v9, v66];
            v31 = +[SSLogConfig sharedDaemonConfig];
            if (!v31)
            {
              v31 = +[SSLogConfig sharedConfig];
            }

            v32 = [v31 shouldLog];
            if ([v31 shouldLogToDisk])
            {
              v33 = v32 | 2;
            }

            else
            {
              v33 = v32;
            }

            v34 = [v31 OSLogObject];
            if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v33 &= 2u;
            }

            if (v33)
            {
              v75 = v10;
              v35 = objc_opt_class();
              v78 = v35;
              v36 = [v9 itemName];
              v37 = [v13 length];
              v81 = 138544130;
              v82 = v35;
              v83 = 2114;
              v84 = v36;
              v85 = 2114;
              v86 = v9;
              v87 = 2048;
              v88 = v37;
              LODWORD(v67) = 42;
              v38 = _os_log_send_and_compose_impl();

              if (!v38)
              {
                v10 = v75;
                goto LABEL_98;
              }

              v34 = [NSString stringWithCString:v38 encoding:4, &v81, v67];
              free(v38);
              SSFileLog();
              v10 = v75;
            }

            goto LABEL_97;
          }

          v77 = [(AppReceiptRefreshOperation *)self _preformMigrationCheckForApp:v9];
          v25 = +[SSLogConfig sharedDaemonConfig];
          if (!v25)
          {
            v25 = +[SSLogConfig sharedConfig];
          }

          v26 = v25;
          v27 = [v25 shouldLog];
          if ([v26 shouldLogToDisk])
          {
            v27 |= 2u;
          }

          v74 = v26;
          v28 = [v26 OSLogObject];
          if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v27 &= 2u;
          }

          if (v27)
          {
            v70 = v28;
            v29 = objc_opt_class();
            v72 = v29;
            v68 = [v9 bundleIdentifier];
            v81 = 138543874;
            v82 = v29;
            v83 = 2114;
            v84 = v68;
            v85 = 1024;
            LODWORD(v86) = v77;
            LODWORD(v67) = 28;
            v66 = &v81;
            v30 = _os_log_send_and_compose_impl();

            if (!v30)
            {
              goto LABEL_31;
            }

            v28 = [NSString stringWithCString:v30 encoding:4, &v81, v67];
            free(v30);
            v66 = v28;
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

        v31 = +[SSLogConfig sharedDaemonConfig];
        if (!v31)
        {
          v31 = +[SSLogConfig sharedConfig];
        }

        v62 = [v31 shouldLog];
        if ([v31 shouldLogToDisk])
        {
          v63 = v62 | 2;
        }

        else
        {
          v63 = v62;
        }

        v34 = [v31 OSLogObject];
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
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
        v84 = v9;
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

      if (!-[AppReceiptRefreshOperationOptions performSinfMirartionCheckBeforeFailing](self->_options, "performSinfMirartionCheckBeforeFailing") || ([v9 hasMIDBasedSINF] & 1) != 0)
      {
LABEL_77:
        [(AppReceiptOperationResult *)self->_operationResult addRevoked:v9, v66];
        v31 = +[SSLogConfig sharedDaemonConfig];
        if (!v31)
        {
          v31 = +[SSLogConfig sharedConfig];
        }

        v54 = [v31 shouldLog];
        if ([v31 shouldLogToDisk])
        {
          v55 = v54 | 2;
        }

        else
        {
          v55 = v54;
        }

        v34 = [v31 OSLogObject];
        v56 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
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
        v59 = [v9 itemName];
        v60 = [v13 length];
        v81 = 138413058;
        v82 = v58;
        v83 = 2114;
        v84 = v59;
        v85 = 2114;
        v86 = v9;
        v87 = 2048;
        v88 = v60;
        LODWORD(v67) = 42;
        v61 = _os_log_send_and_compose_impl();

LABEL_95:
        if (v61)
        {
          v34 = [NSString stringWithCString:v61 encoding:4, &v81, v67];
          free(v61);
          SSFileLog();
          goto LABEL_97;
        }

LABEL_98:

        goto LABEL_99;
      }

      v79 = [(AppReceiptRefreshOperation *)self _preformMigrationCheckForApp:v9];
      v48 = +[SSLogConfig sharedDaemonConfig];
      if (!v48)
      {
        v48 = +[SSLogConfig sharedConfig];
      }

      v49 = v48;
      v50 = [v48 shouldLog];
      if ([v49 shouldLogToDisk])
      {
        v50 |= 2u;
      }

      v76 = v49;
      v51 = [v49 OSLogObject];
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v50 &= 2u;
      }

      if (v50)
      {
        v71 = v51;
        v52 = objc_opt_class();
        v73 = v52;
        v69 = [v9 bundleIdentifier];
        v81 = 138543874;
        v82 = v52;
        v83 = 2114;
        v84 = v69;
        v85 = 1024;
        LODWORD(v86) = v79;
        LODWORD(v67) = 28;
        v66 = &v81;
        v53 = _os_log_send_and_compose_impl();

        if (!v53)
        {
          goto LABEL_76;
        }

        v51 = [NSString stringWithCString:v53 encoding:4, &v81, v67];
        free(v53);
        v66 = v51;
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

    v43 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v44 = v43 | 2;
    }

    else
    {
      v44 = v43;
    }

    v45 = [v24 OSLogObject];
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
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
      v84 = v9;
      v85 = 2048;
      v86 = [v13 length];
      LODWORD(v67) = 32;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
LABEL_100:

        goto LABEL_101;
      }

      v45 = [NSString stringWithCString:v18 encoding:4, &v81, v67];
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

  v14 = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    v15 = v14 | 2;
  }

  else
  {
    v15 = v14;
  }

  v16 = [v13 OSLogObject];
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
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
  v84 = v8;
  v17 = v82;
  LODWORD(v67) = 22;
  v18 = _os_log_send_and_compose_impl();

  if (v18)
  {
    v16 = [NSString stringWithCString:v18 encoding:4, &v81, v67];
    free(v18);
    SSFileLog();
LABEL_13:

    LOBYTE(v18) = 0;
  }

LABEL_101:

  return v18;
}

- (id)_optionsWithVPPState:(int64_t)a3
{
  if ((a3 & 2) != 0)
  {
    v3 = [(AppReceiptRefreshOperationOptions *)self->_options copy];
    [v3 setReceiptFlags:{objc_msgSend(v3, "receiptFlags") | 8}];
    v4 = v3;
    v5 = 0;
  }

  else
  {
    if ((a3 & 0x40000000) == 0)
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

- (id)_postBodyDataWithApplication:(id)a3 options:(id)a4 vppState:(int64_t)a5 error:(id *)a6
{
  v6 = a5;
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(NSMutableDictionary);
  if (([v10 receiptFlags] & 4) != 0)
  {
    v15 = [ACAccountStore ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeAppStoreSandbox];
    v16 = [v15 ams_activeiTunesAccount];

    v13 = [[SSAccount alloc] initWithBackingAccount:v16];
    v14 = [v16 ams_DSID];
  }

  else
  {
    v12 = +[SSAccountStore defaultStore];
    v13 = [v12 activeAccount];

    v14 = [v9 purchaserDSID];
  }

  if (v14)
  {
    v17 = v13 == 0;
  }

  else
  {
    v17 = 1;
  }

  v82 = v13;
  v83 = v10;
  if (!v17)
  {
    familyAccountIDs = self->_familyAccountIDs;
    if (familyAccountIDs)
    {
      if ([(NSArray *)familyAccountIDs containsObject:v14])
      {
        v19 = [v9 storeFront];
        v20 = objc_opt_respondsToSelector();

        if (v20)
        {
          v21 = [v9 storeFront];
          v81 = [v21 stringValue];
        }

        else
        {
          v81 = 0;
        }

        v22 = [v13 storeFrontIdentifier];
        v80 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v22 integerValue]);

        v23 = [v13 uniqueIdentifier];
        v79 = v23;
        if (!v23 || !v81 || (v24 = v23, ![v80 isEqualToString:v81]))
        {
          v78 = v9;
          v34 = v14;
          v26 = +[SSLogConfig sharedDaemonConfig];
          if (!v26)
          {
            v26 = +[SSLogConfig sharedConfig];
          }

          v35 = [v26 shouldLog];
          if ([v26 shouldLogToDisk])
          {
            v36 = v35 | 2;
          }

          else
          {
            v36 = v35;
          }

          v37 = [v26 OSLogObject];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
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
            v40 = [v78 bundleIdentifier];
            v86 = 138544386;
            v87 = v39;
            v88 = 2114;
            v89 = v34;
            v90 = 2114;
            v91 = v40;
            v92 = 2114;
            v93 = v81;
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

          v9 = v78;
          goto LABEL_42;
        }

        v25 = [v24 copy];

        v26 = +[SSLogConfig sharedDaemonConfig];
        if (!v26)
        {
          v26 = +[SSLogConfig sharedConfig];
        }

        v27 = [v26 shouldLog];
        if ([v26 shouldLogToDisk])
        {
          v28 = v27 | 2;
        }

        else
        {
          v28 = v27;
        }

        v29 = [v26 OSLogObject];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
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
          v32 = [v9 bundleIdentifier];
          v86 = 138544130;
          v87 = v31;
          v88 = 2114;
          v89 = v25;
          v90 = 2114;
          v91 = v32;
          v92 = 2114;
          v93 = v80;
          LODWORD(v75) = 42;
          v74 = &v86;
          v33 = _os_log_send_and_compose_impl();

          if (!v33)
          {
LABEL_42:

            v14 = v25;
            v10 = v83;
            goto LABEL_43;
          }

          v29 = [NSString stringWithCString:v33 encoding:4, &v86, v75];
          free(v33);
          v74 = v29;
          SSFileLog();
        }

        goto LABEL_42;
      }
    }
  }

LABEL_43:
  if (objc_opt_respondsToSelector())
  {
    [v10 setTargetAccount:v14];
    v43 = [v14 stringValue];
    [v11 setObject:v43 forKey:@"dsid"];
  }

  v44 = +[ISDevice sharedInstance];
  v45 = [v44 guid];

  if (v45)
  {
    [v11 setObject:v45 forKey:@"guid"];
  }

  v46 = [v9 bundleIdentifier];

  if (v46)
  {
    [v11 setObject:v46 forKey:@"bundle-id"];
  }

  v47 = [v9 bundleVersion];

  if (v47)
  {
    [v11 setObject:v47 forKey:@"version-id"];
  }

  v48 = +[ISDevice sharedInstance];
  v49 = [v48 serialNumber];

  if (v49)
  {
    [v11 setObject:v49 forKey:@"serialNumber"];
  }

  v50 = [v10 receiptFlags] & 1;
  if (v50)
  {
    [v11 setObject:&__kCFBooleanTrue forKey:@"want-expired"];
  }

  if (([v10 receiptFlags] & 2) != 0)
  {
    [v11 setObject:&__kCFBooleanTrue forKey:@"want-revoked"];
    v50 = 1;
  }

  v51 = v50 | ([v10 receiptFlags] >> 3) & 1;
  if (v51 == 1)
  {
    [v11 setObject:&__kCFBooleanTrue forKey:@"want-vpp"];
  }

  if ((v6 & 8) != 0)
  {
    [v11 setObject:&__kCFBooleanTrue forKey:@"revoked"];
  }

  v52 = [v9 itemID];

  if (v52)
  {
    v53 = [v52 stringValue];
    if (v51)
    {
      v54 = @"appAdamId";
    }

    else
    {
      v54 = @"adam-id";
    }

    [v11 setObject:v53 forKey:v54];
  }

  v55 = v9;
  v56 = [v9 externalVersionIdentifier];

  if (v56)
  {
    v57 = [v56 stringValue];
    if (v51)
    {
      v58 = @"appExtVrsId";
    }

    else
    {
      v58 = @"software-version-external-identifier";
    }

    [v11 setObject:v57 forKey:v58];
  }

  v59 = v14;
  v60 = [v55 deviceIdentifierForVendor];
  v61 = [v60 UUIDString];

  if (v61)
  {
    [v11 setObject:v61 forKey:@"vid"];
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

    v65 = [v64 shouldLog];
    if ([v64 shouldLogToDisk])
    {
      v66 = v65 | 2;
    }

    else
    {
      v66 = v65;
    }

    v67 = [v64 OSLogObject];
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
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

      v67 = [NSString stringWithCString:v71 encoding:4, &v86, v75];
      free(v71);
      SSFileLog();
    }

    goto LABEL_86;
  }

LABEL_87:
  if (a6 && !v62)
  {
    v72 = v63;
    *a6 = v63;
  }

  return v62;
}

- (BOOL)_refreshReceiptForApplication:(id)a3 withOptions:(id)a4 vppState:(int64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v59 = 0;
  v12 = [(AppReceiptRefreshOperation *)self _postBodyDataWithApplication:v10 options:v11 vppState:a5 error:&v59];
  v13 = v59;
  if (v12)
  {
    v57 = a6;
    v14 = objc_alloc_init(ISStoreURLOperation);
    [v14 setNeedsAuthentication:{objc_msgSend(v11, "needsAuthentication")}];
    v15 = +[DaemonProtocolDataProvider provider];
    [v14 setDataProvider:v15];
    v16 = objc_alloc_init(SSMutableURLRequestProperties);
    [v16 setAllowedRetryCount:0];
    v56 = v12;
    [v16 setHTTPBody:v12];
    [v16 setHTTPMethod:@"POST"];
    v17 = [v11 URLBagKey];
    [v16 setURLBagKey:v17];

    [v16 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
    v18 = [v11 targetAccount];

    v19 = [SSMutableAuthenticationContext alloc];
    if (v18)
    {
      [v11 targetAccount];
    }

    else
    {
      [v10 purchaserDSID];
    }
    v21 = ;
    v22 = [v19 initWithAccountIdentifier:v21];

    [v22 setPromptStyle:{objc_msgSend(v11, "authenticationPromptStyle")}];
    if (([v11 receiptFlags] & 4) != 0)
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

    v24 = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      v24 |= 2u;
    }

    v25 = [v23 OSLogObject];
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v24 &= 2u;
    }

    if (v24)
    {
      v26 = objc_opt_class();
      v60 = 138543618;
      v61 = v26;
      v62 = 2114;
      v63 = v10;
      v53 = v13;
      v27 = v11;
      v28 = v16;
      v29 = self;
      v30 = v14;
      v31 = v10;
      v32 = v15;
      v33 = v26;
      LODWORD(v52) = 22;
      v50 = &v60;
      v34 = _os_log_send_and_compose_impl();

      v15 = v32;
      v10 = v31;
      v14 = v30;
      self = v29;
      v16 = v28;
      v11 = v27;
      v13 = v53;

      if (!v34)
      {
LABEL_19:

        v58 = v13;
        v35 = [(AppReceiptRefreshOperation *)self runSubOperation:v14 returningError:&v58];
        v36 = v58;

        if (v35)
        {
          v37 = [v15 output];
          v38 = [(AppReceiptRefreshOperation *)self _handleResponse:v37 forApp:v10 options:v11];

          if (v38)
          {
            v20 = 1;
            a6 = v57;
            goto LABEL_39;
          }
        }

        v39 = +[SSLogConfig sharedDaemonConfig];
        if (!v39)
        {
          v39 = +[SSLogConfig sharedConfig];
        }

        v54 = v14;
        v40 = [v39 shouldLog];
        if ([v39 shouldLogToDisk])
        {
          v40 |= 2u;
        }

        v41 = [v39 OSLogObject];
        if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v40 &= 2u;
        }

        if (v40)
        {
          v42 = objc_opt_class();
          v60 = 138543874;
          v61 = v42;
          v62 = 2114;
          v43 = v10;
          v63 = v10;
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

            v47 = [(AppReceiptOperationResult *)self->_operationResult resultingError];

            if (v47)
            {
              v20 = 0;
              a6 = v57;
              v10 = v43;
            }

            else
            {
              v10 = v43;
              if (!v36)
              {
                v36 = [NSError errorWithDomain:SSErrorDomain code:100 userInfo:0];
              }

              [(AppReceiptOperationResult *)self->_operationResult setResultingError:v36, v51];
              v20 = 0;
              a6 = v57;
            }

            v14 = v54;
LABEL_39:

            v13 = v36;
            v12 = v56;
            if (!a6)
            {
              goto LABEL_42;
            }

            goto LABEL_40;
          }

          v41 = [NSString stringWithCString:v46 encoding:4, &v60, v52];
          free(v46);
          v51 = v41;
          SSFileLog();
        }

        else
        {
          v43 = v10;
        }

        goto LABEL_33;
      }

      v25 = [NSString stringWithCString:v34 encoding:4, &v60, v52];
      free(v34);
      v50 = v25;
      SSFileLog();
    }

    goto LABEL_19;
  }

  v20 = 0;
  if (!a6)
  {
    goto LABEL_42;
  }

LABEL_40:
  if (!v20)
  {
    v48 = v13;
    *a6 = v13;
  }

LABEL_42:

  return v20;
}

@end