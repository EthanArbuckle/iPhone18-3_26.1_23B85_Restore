@interface RestoreDownloadsOperation
+ (void)resetShouldSuppressTermsAndConditionsDialogs;
+ (void)setShouldSuppressTermsAndConditionsDialogs:(BOOL)a3;
- (BOOL)_isErrorCancelFailure:(id)a3;
- (BOOL)_isErrorSoftFail:(id)a3;
- (BOOL)_preflightAccountWithID:(id)a3 isFamily:(BOOL)a4 error:(id *)a5;
- (BOOL)_shouldAuthenticateForCancelRetry;
- (BOOL)_shouldAutomaticallyRetryAfterSoftFailError:(id)a3;
- (BOOL)_updateDownloadEntity:(id)a3 withTransaction:(id)a4 storeDownload:(id)a5 accountID:(id)a6;
- (BOOL)copyAccountID:(id *)a3 credentialSource:(unint64_t *)a4 byAuthenticatingWithContext:(id)a5 returningError:(id *)a6;
- (NSArray)errors;
- (NSOrderedSet)downloadIdentifiers;
- (NSString)restoreReason;
- (RestoreDownloadsOperation)initWithDownloadIdentifiers:(id)a3 restoreReason:(id)a4;
- (id)_accountIDForAccountName:(id)a3 error:(id *)a4;
- (id)_copyDownloadSessionPropertiesForItem:(id)a3 download:(id)a4;
- (id)_newDownloadWithStoreDownload:(id)a3;
- (id)_newRestoreItemsWithDownloadIDs:(id)a3;
- (id)_softFailRestoreItem:(id)a3 download:(id)a4 withRestoreState:(int64_t)a5 error:(id)a6;
- (int64_t)_downloadRestoreStateForError:(id)a3;
- (void)_applyResponses:(id)a3 withTransaction:(id)a4;
- (void)_establishPrimaryAccount;
- (void)_hardFailRestoreItem:(id)a3 download:(id)a4 transaction:(id)a5 error:(id)a6;
- (void)_scheduleAutomaticRetry;
- (void)_scheduleCancelRetry;
- (void)dealloc;
- (void)restoreDownloadItemsOperation:(id)a3 didReceiveResponse:(id)a4;
- (void)restorePodcastItemsOperation:(id)a3 didReceiveResponse:(id)a4;
- (void)run;
@end

@implementation RestoreDownloadsOperation

- (RestoreDownloadsOperation)initWithDownloadIdentifiers:(id)a3 restoreReason:(id)a4
{
  v8.receiver = self;
  v8.super_class = RestoreDownloadsOperation;
  v6 = [(RestoreDownloadsOperation *)&v8 init];
  if (v6)
  {
    v6->_downloadIDs = [a3 copy];
    v6->_restoreReason = [a4 copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = RestoreDownloadsOperation;
  [(RestoreDownloadsOperation *)&v3 dealloc];
}

+ (void)resetShouldSuppressTermsAndConditionsDialogs
{
  CFPreferencesSetAppValue(@"RestoreSuppressTermsAndConditions", 0, kSSUserDefaultsIdentifier);

  CFPreferencesAppSynchronize(@"RestoreSuppressTermsAndConditions");
}

+ (void)setShouldSuppressTermsAndConditionsDialogs:(BOOL)a3
{
  v3 = &kCFBooleanTrue;
  if (!a3)
  {
    v3 = &kCFBooleanFalse;
  }

  CFPreferencesSetAppValue(@"RestoreSuppressTermsAndConditions", *v3, kSSUserDefaultsIdentifier);

  CFPreferencesAppSynchronize(@"RestoreSuppressTermsAndConditions");
}

- (NSOrderedSet)downloadIdentifiers
{
  v2 = self->_downloadIDs;

  return v2;
}

- (NSArray)errors
{
  [(RestoreDownloadsOperation *)self lock];
  v3 = [(NSMutableArray *)self->_errors copy];
  [(RestoreDownloadsOperation *)self unlock];
  return v3;
}

- (NSString)restoreReason
{
  v2 = self->_restoreReason;

  return v2;
}

- (BOOL)copyAccountID:(id *)a3 credentialSource:(unint64_t *)a4 byAuthenticatingWithContext:(id)a5 returningError:(id *)a6
{
  v6 = a6;
  v7 = a4;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  if (self->_cancelRetryAlertState == 1)
  {
    v9 = [SSLogConfig sharedDaemonConfig:a3];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v50 = 138543362;
      v51 = objc_opt_class();
      LODWORD(v42) = 12;
      v12 = _os_log_send_and_compose_impl();
      if (v12)
      {
        v13 = v12;
        [NSString stringWithCString:v12 encoding:4, &v50, v42];
        free(v13);
        SSFileLog();
      }
    }

    v14 = 0;
    v49 = SSError();
LABEL_44:
    v32 = a3;
    goto LABEL_45;
  }

  v16 = [(NSString *)self->_restoreReason isEqualToString:@"cancel-retry"];
  if (!v16)
  {
    goto LABEL_27;
  }

LABEL_14:
  if (self->_cancelRetryAlertState)
  {
    goto LABEL_27;
  }

  v17 = +[SSLogConfig sharedDaemonConfig];
  if (!v17)
  {
    v17 = +[SSLogConfig sharedConfig];
  }

  v18 = [v17 shouldLog];
  if ([v17 shouldLogToDisk])
  {
    v19 = v18 | 2;
  }

  else
  {
    v19 = v18;
  }

  if (!os_log_type_enabled([v17 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v19 &= 2u;
  }

  if (v19)
  {
    v20 = objc_opt_class();
    v50 = 138543362;
    v51 = v20;
    LODWORD(v42) = 12;
    v41 = &v50;
    v21 = _os_log_send_and_compose_impl();
    if (v21)
    {
      v22 = v21;
      v23 = [NSString stringWithCString:v21 encoding:4, &v50, v42];
      free(v22);
      v41 = v23;
      SSFileLog();
    }
  }

  if ([(RestoreDownloadsOperation *)self _shouldAuthenticateForCancelRetry])
  {
    self->_cancelRetryAlertState = 2;
    while (1)
    {
LABEL_27:
      v46.receiver = self;
      v46.super_class = RestoreDownloadsOperation;
      v24 = [(RestoreDownloadsOperation *)&v46 copyAccountID:&v48 credentialSource:&v47 byAuthenticatingWithContext:a5 returningError:&v49, v40];
      if ((v24 | v16 ^ 1))
      {
        v14 = v24;
        goto LABEL_43;
      }

      if (!ISErrorIsEqual())
      {
        break;
      }

      v25 = +[SSLogConfig sharedDaemonConfig];
      if (!v25)
      {
        v25 = +[SSLogConfig sharedConfig];
      }

      v26 = [v25 shouldLog];
      if ([v25 shouldLogToDisk])
      {
        v27 = v26 | 2;
      }

      else
      {
        v27 = v26;
      }

      if (!os_log_type_enabled([v25 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v27 &= 2u;
      }

      if (v27)
      {
        v28 = objc_opt_class();
        v50 = 138543362;
        v51 = v28;
        LODWORD(v42) = 12;
        v40 = &v50;
        v29 = _os_log_send_and_compose_impl();
        if (v29)
        {
          v30 = v29;
          v31 = [NSString stringWithCString:v29 encoding:4, &v50, v42];
          free(v30);
          v40 = v31;
          SSFileLog();
        }
      }

      self->_cancelRetryAlertState = 0;

      v48 = 0;
      if (v16)
      {
        goto LABEL_14;
      }
    }

    v14 = 0;
LABEL_43:
    v7 = a4;
    v6 = a6;
    goto LABEL_44;
  }

  v34 = +[SSLogConfig sharedDaemonConfig];
  if (!v34)
  {
    v34 = +[SSLogConfig sharedConfig];
  }

  v35 = [v34 shouldLog];
  if ([v34 shouldLogToDisk])
  {
    v36 = v35 | 2;
  }

  else
  {
    v36 = v35;
  }

  if (!os_log_type_enabled([v34 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v36 &= 2u;
  }

  v7 = a4;
  v6 = a6;
  v32 = a3;
  if (v36)
  {
    v37 = objc_opt_class();
    v50 = 138543362;
    v51 = v37;
    LODWORD(v42) = 12;
    v38 = _os_log_send_and_compose_impl();
    if (v38)
    {
      v39 = v38;
      [NSString stringWithCString:v38 encoding:4, &v50, v42];
      free(v39);
      SSFileLog();
    }
  }

  self->_cancelRetryAlertState = 1;
  v14 = 0;
  v49 = SSError();
LABEL_45:
  if (v32)
  {
    *v32 = v48;
    if (!v7)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (v7)
  {
LABEL_47:
    *v7 = v47;
  }

LABEL_48:
  if (v6)
  {
    *v6 = v49;
  }

  return v14;
}

- (void)run
{
  v172 = objc_alloc_init(NSMutableDictionary);
  v183 = objc_alloc_init(NSMutableDictionary);
  v173 = objc_alloc_init(NSMutableArray);
  v184 = +[SSAccountStore defaultStore];
  self->_hadAutoRetrySoftFailure = 0;
  self->_hadCancelFailure = 0;
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  if (os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v6 = v5;
  }

  else
  {
    v6 = v5 & 2;
  }

  if (v6)
  {
    v7 = objc_opt_class();
    v8 = [(NSOrderedSet *)self->_downloadIDs count];
    *v220 = 138543618;
    *&v220[4] = v7;
    *&v220[12] = 2048;
    *&v220[14] = v8;
    LODWORD(v162) = 22;
    v154 = v220;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      v11 = [NSString stringWithCString:v9 encoding:4, v220, v162];
      free(v10);
      v154 = v11;
      SSFileLog();
    }
  }

  v174 = objc_alloc_init(NSMutableArray);
  v171 = objc_alloc_init(NSMutableArray);
  v168 = objc_alloc_init(NSMutableArray);
  v12 = objc_alloc_init(FamilyCircleOperation);
  if ([(RestoreDownloadsOperation *)self runSubOperation:v12 returningError:0]&& [(FamilyCircleOperation *)v12 familyCircle])
  {
    [(RestoreDownloadsOperation *)self _establishPrimaryAccount];
    v13 = [v184 activeAccount];
    v14 = [objc_msgSend(-[SSFamilyCircle allITunesIdentifiers](-[FamilyCircleOperation familyCircle](v12 "familyCircle")];
    v15 = [objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
    if (v15)
    {
      [v14 removeObject:v15];
    }

    v170 = 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v170 = 0;
  }

  v16 = [(RestoreDownloadsOperation *)self _newRestoreItemsWithDownloadIDs:self->_downloadIDs];
  v211 = 0u;
  v212 = 0u;
  v213 = 0u;
  v214 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v211 objects:v219 count:16];
  v187 = self;
  v182 = v14;
  if (!v17)
  {
    v20 = v13;
    goto LABEL_112;
  }

  v18 = v17;
  v19 = *v212;
  v188 = SSDownloadPhaseDownloading;
  v20 = v13;
  obj = *v212;
  v175 = v16;
  do
  {
    v21 = 0;
    v180 = v18;
    do
    {
      if (*v212 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v22 = *(*(&v211 + 1) + 8 * v21);
      [v22 downloadKind];
      IsPodcastKind = SSDownloadKindIsPodcastKind();
      v210 = 0;
      if ((IsPodcastKind & 1) == 0 && ![v22 storeAccountID])
      {
        v24 = [v22 storeAccountAppleID];
        if (v24)
        {
          v25 = [(RestoreDownloadsOperation *)self _accountIDForAccountName:v24 error:&v210];
          goto LABEL_42;
        }

        if ((v170 & 1) == 0)
        {
          [(RestoreDownloadsOperation *)self _establishPrimaryAccount];
          v20 = [v184 activeAccount];
        }

        if (v20)
        {
          v26 = v20;
          v27 = +[SSLogConfig sharedDaemonConfig];
          if (!v27)
          {
            v27 = +[SSLogConfig sharedConfig];
          }

          v28 = [v27 shouldLog];
          if ([v27 shouldLogToDisk])
          {
            v29 = v28 | 2;
          }

          else
          {
            v29 = v28;
          }

          if (os_log_type_enabled([v27 OSLogObject], OS_LOG_TYPE_DEFAULT))
          {
            v30 = v29;
          }

          else
          {
            v30 = v29 & 2;
          }

          if (v30)
          {
            v31 = objc_opt_class();
            v32 = [v22 downloadIdentifier];
            *v220 = 138543618;
            *&v220[4] = v31;
            self = v187;
            *&v220[12] = 2048;
            *&v220[14] = v32;
            LODWORD(v162) = 22;
            v154 = v220;
            v33 = _os_log_send_and_compose_impl();
            if (v33)
            {
              v34 = v33;
              v35 = [NSString stringWithCString:v33 encoding:4, v220, v162];
              free(v34);
              v154 = v35;
              SSFileLog();
            }
          }

          v20 = v26;
          [v22 setStoreAccountAppleID:{objc_msgSend(v26, "accountName", v154)}];
          v25 = [v26 uniqueIdentifier];
          v170 = 1;
          v18 = v180;
          v14 = v182;
          v19 = obj;
LABEL_42:
          [v22 setStoreAccountID:v25];
        }

        else
        {
          v170 = 1;
        }

        v36 = [v22 storeAccountID];
        if (!(v36 | v210))
        {
          v210 = SSError();
        }
      }

      v37 = [v22 storeAccountID];
      if (v37)
      {
        v38 = v20 == 0;
      }

      else
      {
        v38 = 1;
      }

      if (!v38)
      {
        v39 = v37;
        if ([v14 containsObject:v37])
        {
          [v22 setStoreOriginalPurchaserAccountID:v39];
          [v22 setStoreAccountID:{objc_msgSend(v20, "uniqueIdentifier")}];
        }
      }

      v209 = 0;
      if (IsPodcastKind)
      {
        if ([v22 isEligibleForRestore:&v209])
        {
          [v173 addObject:v22];
          goto LABEL_106;
        }

LABEL_93:
        v62 = -[DownloadSessionProperties initWithClientIdentifier:handlerIdentifier:]([DownloadSessionProperties alloc], "initWithClientIdentifier:handlerIdentifier:", [v22 clientIdentifier], objc_msgSend(v22, "handlerIdentifier"));
        [(DownloadSessionProperties *)v62 setDownloadPhase:v188];
        [v22 setDownloadSessionProperties:v62];
        if (v209)
        {
          v63 = v209;
        }

        else
        {
          v63 = v210;
        }

        [v22 setError:v63];
        if ([(RestoreDownloadsOperation *)self _isErrorCancelFailure:v210])
        {
          [v174 addObject:v22];
          self->_hadCancelFailure = 1;
        }

        else if (v210 && [(RestoreDownloadsOperation *)self _isErrorSoftFail:?])
        {
          [v168 addObject:v22];
          if (self->_hadAutoRetrySoftFailure)
          {
            v64 = 1;
          }

          else
          {
            v64 = [(RestoreDownloadsOperation *)self _shouldAutomaticallyRetryAfterSoftFailError:v210];
          }

          self->_hadAutoRetrySoftFailure = v64;
        }

        else
        {
          [v171 addObject:v22];
        }

        goto LABEL_106;
      }

      if (![v22 storeAccountID] || (objc_msgSend(v22, "isEligibleForRestore:", &v209) & 1) == 0)
      {
        goto LABEL_93;
      }

      v40 = [v22 storeOriginalPurchaserAccountID];
      if (!v40)
      {
        v40 = [v22 storeAccountID];
      }

      v41 = [v172 objectForKey:v40];
      if (!v41)
      {
        v41 = [v184 accountWithUniqueIdentifier:v40];
        if (!v41)
        {
          v41 = objc_alloc_init(SSAccount);
          [v41 setUniqueIdentifier:v40];
        }

        [v172 setObject:v41 forKey:v40];
      }

      if (![v41 accountName])
      {
        [v41 setAccountName:{objc_msgSend(v22, "storeAccountAppleID")}];
      }

      if (![v41 storeFrontIdentifier])
      {
        [v41 setStoreFrontIdentifier:{objc_msgSend(v22, "storeFrontID")}];
      }

      v42 = v20;
      v43 = +[SSLogConfig sharedAccountsConfig];
      if (!v43)
      {
        v43 = +[SSLogConfig sharedConfig];
      }

      v44 = [v43 shouldLog];
      if ([v43 shouldLogToDisk])
      {
        v45 = v44 | 2;
      }

      else
      {
        v45 = v44;
      }

      if (os_log_type_enabled([v43 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v46 = v45;
      }

      else
      {
        v46 = v45 & 2;
      }

      if (v46)
      {
        v47 = objc_opt_class();
        [v41 accountName];
        v48 = SSHashIfNeeded();
        *v220 = 138543618;
        *&v220[4] = v47;
        *&v220[12] = 2114;
        *&v220[14] = v48;
        LODWORD(v162) = 22;
        v154 = v220;
        v49 = _os_log_send_and_compose_impl();
        if (v49)
        {
          v50 = v49;
          v51 = [NSString stringWithCString:v49 encoding:4, v220, v162];
          free(v50);
          v154 = v51;
          SSFileLog();
        }
      }

      v208 = 0;
      v20 = v42;
      if (([v184 saveAccount:v41 verifyCredentials:0 error:{&v208, v154}] & 1) == 0 && v208)
      {
        v52 = +[SSLogConfig sharedAccountsConfig];
        if (!v52)
        {
          v52 = +[SSLogConfig sharedConfig];
        }

        v53 = [v52 shouldLog];
        if ([v52 shouldLogToDisk])
        {
          v54 = v53 | 2;
        }

        else
        {
          v54 = v53;
        }

        if (os_log_type_enabled([v52 OSLogObject], OS_LOG_TYPE_ERROR))
        {
          v55 = v54;
        }

        else
        {
          v55 = v54 & 2;
        }

        v20 = v42;
        if (v55)
        {
          v56 = objc_opt_class();
          [v41 accountName];
          v57 = SSHashIfNeeded();
          *v220 = 138543874;
          *&v220[4] = v56;
          *&v220[12] = 2114;
          *&v220[14] = v57;
          *&v220[22] = 2114;
          v221 = v208;
          LODWORD(v162) = 32;
          v155 = v220;
          v58 = _os_log_send_and_compose_impl();
          if (v58)
          {
            v59 = v58;
            v60 = [NSString stringWithCString:v58 encoding:4, v220, v162];
            free(v59);
            v155 = v60;
            SSFileLog();
          }
        }
      }

      v61 = [v183 objectForKey:v40];
      if (!v61)
      {
        v61 = +[NSMutableArray array];
        [v183 setObject:v61 forKey:v40];
      }

      [v61 addObject:{v22, v155}];
      self = v187;
      v18 = v180;
      v14 = v182;
      v16 = v175;
      v19 = obj;
LABEL_106:
      v21 = v21 + 1;
    }

    while (v18 != v21);
    v65 = [v16 countByEnumeratingWithState:&v211 objects:v219 count:16];
    v18 = v65;
  }

  while (v65);
LABEL_112:

  v66 = objc_alloc_init(NSMutableArray);
  v169 = v20;
  if ([v171 count])
  {
    v67 = +[SSLogConfig sharedDaemonConfig];
    if (!v67)
    {
      v67 = +[SSLogConfig sharedConfig];
    }

    v68 = [v67 shouldLog];
    if ([v67 shouldLogToDisk])
    {
      v69 = v68 | 2;
    }

    else
    {
      v69 = v68;
    }

    if (os_log_type_enabled([v67 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v70 = v69;
    }

    else
    {
      v70 = v69 & 2;
    }

    if (v70)
    {
      v71 = objc_opt_class();
      v72 = [v171 componentsJoinedByString:{@", "}];
      *v220 = 138543618;
      *&v220[4] = v71;
      *&v220[12] = 2114;
      *&v220[14] = v72;
      LODWORD(v162) = 22;
      v73 = _os_log_send_and_compose_impl();
      if (v73)
      {
        v74 = v73;
        [NSString stringWithCString:v73 encoding:4, v220, v162];
        free(v74);
        SSFileLog();
      }
    }

    v156 = objc_opt_class();
    v163 = [v171 componentsJoinedByString:{@", "}];
    SSDebugLog();
    v75 = objc_alloc_init(RestoreDownloadItemsResponse);
    [(RestoreDownloadItemsResponse *)v75 setRequestItems:v171, v156, v163];
    [v66 addObject:v75];

    v20 = v169;
  }

  if ([v168 count])
  {
    v76 = +[SSLogConfig sharedDaemonConfig];
    if (!v76)
    {
      v76 = +[SSLogConfig sharedConfig];
    }

    v77 = [v76 shouldLog];
    if ([v76 shouldLogToDisk])
    {
      v78 = v77 | 2;
    }

    else
    {
      v78 = v77;
    }

    if (os_log_type_enabled([v76 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v79 = v78;
    }

    else
    {
      v79 = v78 & 2;
    }

    if (v79)
    {
      v80 = objc_opt_class();
      v81 = [v168 componentsJoinedByString:{@", "}];
      *v220 = 138543618;
      *&v220[4] = v80;
      *&v220[12] = 2114;
      *&v220[14] = v81;
      LODWORD(v162) = 22;
      v82 = _os_log_send_and_compose_impl();
      if (v82)
      {
        v83 = v82;
        [NSString stringWithCString:v82 encoding:4, v220, v162];
        free(v83);
        SSFileLog();
      }
    }

    v158 = objc_opt_class();
    v164 = [v168 componentsJoinedByString:{@", "}];
    SSDebugLog();
    v84 = objc_alloc_init(RestoreDownloadItemsResponse);
    [(RestoreDownloadItemsResponse *)v84 setRequestItems:v168, v158, v164];
    [(RestoreDownloadItemsResponse *)v84 setServerResponseWithError:SSError()];
    [v66 addObject:v84];

    v20 = v169;
  }

  if ([v174 count])
  {
    v85 = +[SSLogConfig sharedDaemonConfig];
    if (!v85)
    {
      v85 = +[SSLogConfig sharedConfig];
    }

    v86 = [v85 shouldLog];
    if ([v85 shouldLogToDisk])
    {
      v87 = v86 | 2;
    }

    else
    {
      v87 = v86;
    }

    if (os_log_type_enabled([v85 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v88 = v87;
    }

    else
    {
      v88 = v87 & 2;
    }

    if (v88)
    {
      v89 = objc_opt_class();
      v90 = [v174 componentsJoinedByString:{@", "}];
      *v220 = 138543618;
      *&v220[4] = v89;
      *&v220[12] = 2114;
      *&v220[14] = v90;
      LODWORD(v162) = 22;
      v91 = _os_log_send_and_compose_impl();
      if (v91)
      {
        v92 = v91;
        [NSString stringWithCString:v91 encoding:4, v220, v162];
        free(v92);
        SSFileLog();
      }
    }

    v159 = objc_opt_class();
    v165 = [v174 componentsJoinedByString:{@", "}];
    SSDebugLog();
    v93 = objc_alloc_init(RestoreDownloadItemsResponse);
    [(RestoreDownloadItemsResponse *)v93 setRequestItems:v174, v159, v165];
    [(RestoreDownloadItemsResponse *)v93 setServerResponseWithError:SSError()];
    [v66 addObject:v93];

    v20 = v169;
  }

  if ([v66 count])
  {
    v207[0] = _NSConcreteStackBlock;
    v207[1] = 3221225472;
    v207[2] = sub_10014FF3C;
    v207[3] = &unk_100327F38;
    v207[4] = self;
    v207[5] = v66;
    [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
  }

  if ([v183 count])
  {
    if ((v170 & 1) == 0 && ![(NSString *)self->_restoreReason isEqualToString:@"cancel-retry"])
    {
      [(RestoreDownloadsOperation *)self _establishPrimaryAccount];
    }

    v94 = [objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
    v95 = [v183 allKeys];
    *v220 = _NSConcreteStackBlock;
    *&v220[8] = 3221225472;
    *&v220[16] = sub_100153BF4;
    v221 = &unk_100329EE0;
    v222 = v94;
    v223 = v183;
    v96 = [v95 sortedArrayUsingComparator:v220];
    v181 = objc_alloc_init(NSMutableArray);
    v97 = objc_alloc_init(NSCountedSet);
    v203 = 0u;
    v204 = 0u;
    v205 = 0u;
    v206 = 0u;
    obja = v96;
    v98 = [v96 countByEnumeratingWithState:&v203 objects:v218 count:16];
    if (v98)
    {
      v99 = v98;
      v185 = *v204;
      v189 = 1;
      do
      {
        for (i = 0; i != v99; i = i + 1)
        {
          if (*v204 != v185)
          {
            objc_enumerationMutation(obja);
          }

          v101 = *(*(&v203 + 1) + 8 * i);
          v102 = [v14 containsObject:v101];
          v210 = 0;
          v103 = [(RestoreDownloadsOperation *)self _preflightAccountWithID:v101 isFamily:v102 error:&v210];
          v104 = +[SSAccountStore defaultStore];
          if (v102)
          {
            v105 = [v104 activeAccount];
          }

          else
          {
            v105 = [v104 accountWithUniqueIdentifier:v101];
          }

          v106 = v105;
          v107 = [v183 objectForKey:v101];
          v108 = [[RestoreDownloadItemsOperation alloc] initWithDownloadItems:v107 account:v106];
          if (v103)
          {
            v201 = 0u;
            v202 = 0u;
            v199 = 0u;
            v200 = 0u;
            v109 = [v107 countByEnumeratingWithState:&v199 objects:v217 count:16];
            v14 = v182;
            if (v109)
            {
              v110 = v109;
              v111 = *v200;
              do
              {
                for (j = 0; j != v110; j = j + 1)
                {
                  if (*v200 != v111)
                  {
                    objc_enumerationMutation(v107);
                  }

                  [v97 addObject:{objc_msgSend(*(*(&v199 + 1) + 8 * j), "downloadKind")}];
                }

                v110 = [v107 countByEnumeratingWithState:&v199 objects:v217 count:16];
              }

              while (v110);
            }

            [v181 addObject:v108];
          }

          else
          {
            v113 = +[SSLogConfig sharedDaemonConfig];
            if (!v113)
            {
              v113 = +[SSLogConfig sharedConfig];
            }

            v114 = [v113 shouldLog];
            if ([v113 shouldLogToDisk])
            {
              v115 = v114 | 2;
            }

            else
            {
              v115 = v114;
            }

            if (os_log_type_enabled([v113 OSLogObject], OS_LOG_TYPE_DEFAULT))
            {
              v116 = v115;
            }

            else
            {
              v116 = v115 & 2;
            }

            if (v116)
            {
              v117 = objc_opt_class();
              v118 = [v107 componentsJoinedByString:{@", "}];
              *v220 = 138543874;
              *&v220[4] = v117;
              *&v220[12] = 2114;
              *&v220[14] = v118;
              *&v220[22] = 2114;
              v221 = v210;
              LODWORD(v162) = 32;
              v119 = _os_log_send_and_compose_impl();
              if (v119)
              {
                v120 = v119;
                [NSString stringWithCString:v119 encoding:4, v220, v162];
                free(v120);
                SSFileLog();
              }
            }

            self = v187;
            v121 = objc_opt_class();
            v122 = [v107 componentsJoinedByString:{@", "}];
            v167 = v210;
            v160 = v121;
            v166 = v122;
            SSDebugLog();
            v123 = objc_alloc_init(RestoreDownloadItemsResponse);
            [(RestoreDownloadItemsResponse *)v123 setRequestItems:v107, v160, v166, v101, v167];
            [(RestoreDownloadItemsResponse *)v123 setServerResponseWithError:v210];
            [(RestoreDownloadsOperation *)v187 restoreDownloadItemsOperation:v108 didReceiveResponse:v123];

            v189 = 0;
            v14 = v182;
          }
        }

        v99 = [obja countByEnumeratingWithState:&v203 objects:v218 count:16];
      }

      while (v99);
    }

    else
    {
      v189 = 1;
    }

    v125 = +[SSLogConfig sharedDaemonConfig];
    if (!v125)
    {
      v125 = +[SSLogConfig sharedConfig];
    }

    v126 = [v125 shouldLog];
    if ([v125 shouldLogToDisk])
    {
      v127 = v126 | 2;
    }

    else
    {
      v127 = v126;
    }

    if (os_log_type_enabled([v125 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v128 = v127;
    }

    else
    {
      v128 = v127 & 2;
    }

    v20 = v169;
    if (v128)
    {
      v129 = objc_opt_class();
      v130 = [v181 count];
      *v220 = 138543618;
      *&v220[4] = v129;
      *&v220[12] = 2048;
      *&v220[14] = v130;
      LODWORD(v162) = 22;
      v157 = v220;
      v131 = _os_log_send_and_compose_impl();
      if (v131)
      {
        v132 = v131;
        v133 = [NSString stringWithCString:v131 encoding:4, v220, v162];
        free(v132);
        v157 = v133;
        SSFileLog();
      }
    }

    v134 = [objc_opt_class() shouldSuppressTermsAndConditionsDialogs];
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    v198 = 0u;
    objb = [v181 countByEnumeratingWithState:&v195 objects:v216 count:16];
    if (objb)
    {
      v135 = v134 ^ 1;
      v176 = *v196;
      v124 = v189;
      do
      {
        for (k = 0; k != objb; k = k + 1)
        {
          if (*v196 != v176)
          {
            objc_enumerationMutation(v181);
          }

          v190 = v124;
          v137 = *(*(&v195 + 1) + 8 * k);
          v186 = objc_alloc_init(NSAutoreleasePool);
          [v137 setDelegate:self];
          [v137 setShouldShowTermsAndConditionsDialog:v135 & 1];
          v138 = [(RestoreDownloadsOperation *)self runSubOperation:v137 returningError:0];
          v139 = [v137 responses];
          v191 = 0u;
          v192 = 0u;
          v193 = 0u;
          v194 = 0u;
          v140 = [v139 countByEnumeratingWithState:&v191 objects:v215 count:16];
          if (v140)
          {
            v141 = v140;
            v142 = *v192;
            do
            {
              for (m = 0; m != v141; m = m + 1)
              {
                if (*v192 != v142)
                {
                  objc_enumerationMutation(v139);
                }

                [objc_msgSend(*(*(&v191 + 1) + 8 * m) serverResponse];
                v135 &= ISErrorIsEqual() ^ 1;
              }

              v141 = [v139 countByEnumeratingWithState:&v191 objects:v215 count:16];
            }

            while (v141);
          }

          v124 = v190 & v138;
          [v137 setDelegate:{0, v157}];
          [v186 drain];
          self = v187;
        }

        objb = [v181 countByEnumeratingWithState:&v195 objects:v216 count:16];
      }

      while (objb);
      LOBYTE(v134) = v135 ^ 1;
      v14 = v182;
      v20 = v169;
    }

    else
    {
      LOBYTE(v124) = v189;
    }

    [objc_opt_class() setShouldSuppressTermsAndConditionsDialogs:v134 & 1];
  }

  else
  {
    LOBYTE(v124) = 1;
  }

  if ([v173 count])
  {
    v144 = +[SSLogConfig sharedDaemonConfig];
    if (!v144)
    {
      v144 = +[SSLogConfig sharedConfig];
    }

    v145 = [v144 shouldLog];
    if ([v144 shouldLogToDisk])
    {
      v146 = v145 | 2;
    }

    else
    {
      v146 = v145;
    }

    if (os_log_type_enabled([v144 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v147 = v146;
    }

    else
    {
      v147 = v146 & 2;
    }

    if (v147)
    {
      v148 = objc_opt_class();
      v149 = [v173 componentsJoinedByString:{@", "}];
      *v220 = 138543618;
      *&v220[4] = v148;
      *&v220[12] = 2114;
      *&v220[14] = v149;
      LODWORD(v162) = 22;
      v161 = v220;
      v150 = _os_log_send_and_compose_impl();
      if (v150)
      {
        v151 = v150;
        v152 = [NSString stringWithCString:v150 encoding:4, v220, v162];
        free(v151);
        v161 = v152;
        SSFileLog();
      }
    }

    v153 = [[RestorePodcastItemsOperation alloc] initWithDownloadItems:v173];
    [(RestorePodcastItemsOperation *)v153 setDelegate:self];
    LOBYTE(v124) = v124 & [(RestoreDownloadsOperation *)self runSubOperation:v153 returningError:0];
    [(RestorePodcastItemsOperation *)v153 setDelegate:0];
  }

  if (self->_hadAutoRetrySoftFailure)
  {
    [(RestoreDownloadsOperation *)self _scheduleAutomaticRetry];
  }

  if (self->_hadCancelFailure && ![(NSString *)self->_restoreReason isEqualToString:@"cancel-retry"])
  {
    [(RestoreDownloadsOperation *)self _scheduleCancelRetry];
  }

  [(RestoreDownloadsOperation *)self setSuccess:v124 & 1, v161];
}

- (void)restoreDownloadItemsOperation:(id)a3 didReceiveResponse:(id)a4
{
  v5 = [[NSArray alloc] initWithObjects:{a4, 0}];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10015000C;
  v6[3] = &unk_100327F38;
  v6[4] = self;
  v6[5] = v5;
  [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
}

- (void)restorePodcastItemsOperation:(id)a3 didReceiveResponse:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001500BC;
  v4[3] = &unk_100327F38;
  v4[4] = a4;
  v4[5] = self;
  [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase downloadsDatabase];
}

- (id)_accountIDForAccountName:(id)a3 error:(id *)a4
{
  v52 = 0;
  v53 = 0;
  [(RestoreDownloadsOperation *)self lock];
  if (!self->_accountIDsByAppleID)
  {
    v7 = [+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
    self->_accountIDsByAppleID = objc_alloc_init(NSMutableDictionary);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v48 objects:v62 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v49;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v49 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v48 + 1) + 8 * i);
          v13 = [v12 uniqueIdentifier];
          v14 = [v12 accountName];
          if (v13)
          {
            v15 = v14 == 0;
          }

          else
          {
            v15 = 1;
          }

          if (!v15)
          {
            [(NSMutableDictionary *)self->_accountIDsByAppleID setObject:v13 forKey:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v48 objects:v62 count:16];
      }

      while (v9);
    }
  }

  v16 = [(NSMutableDictionary *)self->_accountIDsByAppleID objectForKey:a3];
  [(RestoreDownloadsOperation *)self unlock];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v52 = v16;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = v16;
    }

    else if (!v16)
    {
      v17 = objc_alloc_init(SSMutableAuthenticationContext);
      [v17 setAccountName:a3];
      [v17 setAccountNameEditable:1];
      [v17 setCanCreateNewAccount:0];
      [v17 setPersistsAcrossDeviceLock:1];
      [v17 setPromptStyle:1001];
      v18 = +[SSLogConfig sharedDaemonConfig];
      if (!v18)
      {
        v18 = +[SSLogConfig sharedConfig];
      }

      v19 = [v18 shouldLog];
      if ([v18 shouldLogToDisk])
      {
        v20 = v19 | 2;
      }

      else
      {
        v20 = v19;
      }

      if (!os_log_type_enabled([v18 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v20 &= 2u;
      }

      if (v20)
      {
        v21 = objc_opt_class();
        v54 = 138543618;
        v55 = v21;
        v56 = 2112;
        v57 = a3;
        LODWORD(v47) = 22;
        v45 = &v54;
        v22 = _os_log_send_and_compose_impl();
        if (v22)
        {
          v23 = v22;
          v24 = [NSString stringWithCString:v22 encoding:4, &v54, v47];
          free(v23);
          v45 = v24;
          SSFileLog();
        }
      }

      if (-[RestoreDownloadsOperation copyAccountID:credentialSource:byAuthenticatingWithContext:returningError:](self, "copyAccountID:credentialSource:byAuthenticatingWithContext:returningError:", &v53, 0, v17, &v52, v45) && (v25 = +[SSAccountStore defaultStore](SSAccountStore, "defaultStore"), v26 = [objc_msgSend(v25 accountWithUniqueIdentifier:{v53), "accountName"}], objc_msgSend(v26, "length")))
      {
        v27 = +[SSLogConfig sharedDaemonConfig];
        if (!v27)
        {
          v27 = +[SSLogConfig sharedConfig];
        }

        v28 = [v27 shouldLog];
        if ([v27 shouldLogToDisk])
        {
          v29 = v28 | 2;
        }

        else
        {
          v29 = v28;
        }

        if (!os_log_type_enabled([v27 OSLogObject], OS_LOG_TYPE_DEFAULT))
        {
          v29 &= 2u;
        }

        if (v29)
        {
          v30 = objc_opt_class();
          v54 = 138544130;
          v55 = v30;
          v56 = 2114;
          v57 = a3;
          v58 = 2114;
          v59 = v26;
          v60 = 2114;
          v61 = v53;
          LODWORD(v47) = 42;
          v46 = &v54;
          v31 = _os_log_send_and_compose_impl();
          if (v31)
          {
            v32 = v31;
            v33 = [NSString stringWithCString:v31 encoding:4, &v54, v47];
            free(v32);
            v46 = v33;
            SSFileLog();
          }
        }

        [(NSMutableDictionary *)self->_accountIDsByAppleID setObject:v53 forKey:a3, v46];
        accountIDsByAppleID = self->_accountIDsByAppleID;
        v35 = v53;
        v36 = v26;
      }

      else
      {
        v37 = +[SSLogConfig sharedDaemonConfig];
        if (!v37)
        {
          v37 = +[SSLogConfig sharedConfig];
        }

        v38 = [v37 shouldLog];
        if ([v37 shouldLogToDisk])
        {
          v39 = v38 | 2;
        }

        else
        {
          v39 = v38;
        }

        if (!os_log_type_enabled([v37 OSLogObject], OS_LOG_TYPE_ERROR))
        {
          v39 &= 2u;
        }

        if (v39)
        {
          v40 = objc_opt_class();
          v54 = 138543874;
          v55 = v40;
          v56 = 2114;
          v57 = a3;
          v58 = 2114;
          v59 = v52;
          LODWORD(v47) = 32;
          v46 = &v54;
          v41 = _os_log_send_and_compose_impl();
          if (v41)
          {
            v42 = v41;
            v43 = [NSString stringWithCString:v41 encoding:4, &v54, v47];
            free(v42);
            v46 = v43;
            SSFileLog();
          }
        }

        v35 = v52;
        if (!v52)
        {
          v35 = SSError();
          v52 = v35;
        }

        accountIDsByAppleID = self->_accountIDsByAppleID;
        v36 = a3;
      }

      [(NSMutableDictionary *)accountIDsByAppleID setObject:v35 forKey:v36, v46];
    }
  }

  if (a4)
  {
    *a4 = v52;
  }

  return v53;
}

- (void)_applyResponses:(id)a3 withTransaction:(id)a4
{
  v4 = a4;
  v85 = [a4 database];
  v81 = +[DownloadHandlerManager handlerManager];
  v72 = [(NSString *)self->_restoreReason isEqualToString:@"cancel-retry"];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = a3;
  v74 = [a3 countByEnumeratingWithState:&v97 objects:v110 count:16];
  if (v74)
  {
    v73 = *v98;
    v76 = SSDownloadPhaseCanceled;
    v82 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v98 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v75 = v7;
        v8 = *(*(&v97 + 1) + 8 * v7);
        v88 = objc_alloc_init(NSMutableDictionary);
        v9 = [v8 serverResponse];
        v80 = [v9 userIdentifier];
        v79 = [v9 error];
        v84 = [(RestoreDownloadsOperation *)self _downloadRestoreStateForError:?];
        v77 = v9;
        v10 = [v9 downloads];
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v93 objects:v109 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v94;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v94 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v93 + 1) + 8 * i);
              v16 = [[NSNumber alloc] initWithItemIdentifier:{objc_msgSend(v15, "itemIdentifier")}];
              [v88 setObject:v15 forKey:v16];
            }

            v12 = [v10 countByEnumeratingWithState:&v93 objects:v109 count:16];
          }

          while (v12);
        }

        v17 = [v8 requestItems];
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v83 = v17;
        v87 = [v17 countByEnumeratingWithState:&v89 objects:v108 count:16];
        if (v87)
        {
          v86 = *v90;
          v18 = v72;
          if (v84 != 3)
          {
            v18 = 0;
          }

          v78 = v18;
          do
          {
            for (j = 0; j != v87; j = j + 1)
            {
              if (*v90 != v86)
              {
                objc_enumerationMutation(v83);
              }

              v20 = *(*(&v89 + 1) + 8 * j);
              v21 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v20 downloadIdentifier], v85);
              v22 = [v20 storeItemID];
              v23 = [v88 objectForKey:v22];
              if (v23)
              {
                v24 = v23;
                [v23 kind];
                if (SSDownloadKindIsSoftwareKind() && (v25 = [v24 requiredDeviceCapabilities]) != 0)
                {
                  v26 = [+[ISDevice sharedInstance](ISDevice checkCapabilities:"checkCapabilities:withMismatches:" withMismatches:v25, 0];
                }

                else
                {
                  v26 = 1;
                }

                [v24 kind];
                if (SSDownloadKindIsBookToShimKind())
                {
                  v27 = +[SSLogConfig sharedDaemonConfig];
                  if (!v27)
                  {
                    v27 = +[SSLogConfig sharedConfig];
                  }

                  v28 = [v27 shouldLog];
                  if ([v27 shouldLogToDisk])
                  {
                    v29 = v28 | 2;
                  }

                  else
                  {
                    v29 = v28;
                  }

                  if (os_log_type_enabled([v27 OSLogObject], OS_LOG_TYPE_DEFAULT))
                  {
                    v30 = v29;
                  }

                  else
                  {
                    v30 = v29 & 2;
                  }

                  if (v30)
                  {
                    v31 = objc_opt_class();
                    v32 = [(DownloadEntity *)v21 persistentID];
                    v102 = 138543874;
                    v103 = v31;
                    v104 = 2048;
                    v105 = v32;
                    v106 = 2114;
                    v107 = v22;
                    LODWORD(v70) = 32;
                    v67 = &v102;
                    v33 = _os_log_send_and_compose_impl();
                    if (v33)
                    {
                      v34 = v33;
                      v35 = [NSString stringWithCString:v33 encoding:4, &v102, v70];
                      free(v34);
                      v67 = v35;
                      SSFileLog();
                    }
                  }

                  [v24 setRequestPersistentID:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", objc_msgSend(v20, "downloadIdentifier", v67))}];
                  v101 = v24;
                  [BookAssetDaemonUtility sendRestoreDownloads:[NSArray arrayWithObjects:&v101 count:1] withReason:@"restoring books"];
                  v4 = v82;
                }

                else if (v26)
                {
                  [(RestoreDownloadsOperation *)self _updateDownloadEntity:v21 withTransaction:v4 storeDownload:v24 accountID:v80];
                  goto LABEL_99;
                }

                v43 = +[SSLogConfig sharedDaemonConfig];
                if (!v43)
                {
                  v43 = +[SSLogConfig sharedConfig];
                }

                v44 = [v43 shouldLog];
                if ([v43 shouldLogToDisk])
                {
                  v45 = v44 | 2;
                }

                else
                {
                  v45 = v44;
                }

                if (os_log_type_enabled([v43 OSLogObject], OS_LOG_TYPE_DEFAULT))
                {
                  v46 = v45;
                }

                else
                {
                  v46 = v45 & 2;
                }

                if (v46)
                {
                  v47 = objc_opt_class();
                  v48 = [(DownloadEntity *)v21 persistentID];
                  v102 = 138543874;
                  v103 = v47;
                  v104 = 2048;
                  v105 = v48;
                  v106 = 2112;
                  v107 = v22;
                  LODWORD(v70) = 32;
                  v67 = &v102;
                  v49 = _os_log_send_and_compose_impl();
                  if (v49)
                  {
                    v50 = v49;
                    v51 = [NSString stringWithCString:v49 encoding:4, &v102, v70];
                    free(v50);
                    v67 = v51;
                    SSFileLog();
                  }
                }

                [v4 unionChangeset:{-[DownloadEntity failWithError:](v21, "failWithError:", SSError())}];
              }

              else if (v84)
              {
                v36 = [(RestoreDownloadsOperation *)self _copyDownloadSessionPropertiesForItem:v20 download:v21];
                if ([v81 canOpenSessionWithProperties:v36])
                {
                  v37 = +[SSLogConfig sharedDaemonConfig];
                  if (!v37)
                  {
                    v37 = +[SSLogConfig sharedConfig];
                  }

                  v38 = [v37 shouldLog];
                  if ([v37 shouldLogToDisk])
                  {
                    v38 |= 2u;
                  }

                  if (os_log_type_enabled([v37 OSLogObject], OS_LOG_TYPE_DEFAULT))
                  {
                    v39 = v38;
                  }

                  else
                  {
                    v39 = v38 & 2;
                  }

                  if (v39)
                  {
                    v40 = objc_opt_class();
                    v102 = 138543618;
                    v103 = v40;
                    v104 = 2114;
                    v105 = v20;
                    LODWORD(v70) = 22;
                    v41 = _os_log_send_and_compose_impl();
                    if (v41)
                    {
                      v42 = v41;
                      [NSString stringWithCString:v41 encoding:4, &v102, v70];
                      free(v42);
                      SSFileLog();
                    }
                  }

                  v68 = objc_opt_class();
                  SSDebugLog();
                  [(DownloadEntity *)v21 setValue:[NSNumber forProperty:"numberWithInteger:" numberWithInteger:v84, v68, v20], @"download_state.restore_state"];
                }

                else if (v84 == 1)
                {
                  v59 = [v20 error];
                  if (v22 && !v59)
                  {
                    v59 = [v77 errorForItemIdentifier:v22];
                  }

                  if (v59)
                  {
                    v60 = v59;
                  }

                  else
                  {
                    v60 = v79;
                  }

                  [(RestoreDownloadsOperation *)self _hardFailRestoreItem:v20 download:v21 transaction:v4 error:v60, v67];
                }

                else if (v78)
                {
                  v61 = +[SSLogConfig sharedDaemonConfig];
                  if (!v61)
                  {
                    v61 = +[SSLogConfig sharedConfig];
                  }

                  v62 = [v61 shouldLog];
                  if ([v61 shouldLogToDisk])
                  {
                    v62 |= 2u;
                  }

                  if (os_log_type_enabled([v61 OSLogObject], OS_LOG_TYPE_DEFAULT))
                  {
                    v63 = v62;
                  }

                  else
                  {
                    v63 = v62 & 2;
                  }

                  if (v63)
                  {
                    v64 = objc_opt_class();
                    v102 = 138543618;
                    v103 = v64;
                    v104 = 2114;
                    v105 = v20;
                    LODWORD(v70) = 22;
                    v65 = _os_log_send_and_compose_impl();
                    if (v65)
                    {
                      v66 = v65;
                      [NSString stringWithCString:v65 encoding:4, &v102, v70];
                      free(v66);
                      SSFileLog();
                    }
                  }

                  v69 = objc_opt_class();
                  SSDebugLog();
                  [v4 finishDownloadWithID:-[DownloadEntity persistentID](v21 finalPhase:{"persistentID", v69, v20), v76}];
                }

                else
                {
                  [v4 unionChangeset:{-[RestoreDownloadsOperation _softFailRestoreItem:download:withRestoreState:error:](self, "_softFailRestoreItem:download:withRestoreState:error:", v20, v21, v84, v79)}];
                }
              }

              else
              {
                v52 = +[SSLogConfig sharedDaemonConfig];
                if (!v52)
                {
                  v52 = +[SSLogConfig sharedConfig];
                }

                v53 = [v52 shouldLog];
                if ([v52 shouldLogToDisk])
                {
                  v54 = v53 | 2;
                }

                else
                {
                  v54 = v53;
                }

                if (os_log_type_enabled([v52 OSLogObject], OS_LOG_TYPE_DEFAULT))
                {
                  v55 = v54;
                }

                else
                {
                  v55 = v54 & 2;
                }

                if (v55)
                {
                  v56 = objc_opt_class();
                  v102 = 138543618;
                  v103 = v56;
                  v104 = 2114;
                  v105 = v20;
                  LODWORD(v70) = 22;
                  v57 = _os_log_send_and_compose_impl();
                  if (v57)
                  {
                    v58 = v57;
                    [NSString stringWithCString:v57 encoding:4, &v102, v70];
                    free(v58);
                    SSFileLog();
                  }
                }

                v67 = objc_opt_class();
                v70 = v20;
                SSDebugLog();
              }

LABEL_99:
            }

            v87 = [v83 countByEnumeratingWithState:&v89 objects:v108 count:16];
          }

          while (v87);
        }

        v7 = v75 + 1;
      }

      while ((v75 + 1) != v74);
      v74 = [obj countByEnumeratingWithState:&v97 objects:v110 count:16];
    }

    while (v74);
  }
}

- (id)_copyDownloadSessionPropertiesForItem:(id)a3 download:(id)a4
{
  v5 = [a3 downloadSessionProperties];
  if (!v5)
  {
    v12[0] = @"client_id";
    v12[1] = @"handler_id";
    [a4 getValues:&v10 forProperties:v12 count:2];
    v6 = [DownloadSessionProperties alloc];
    v7 = v10;
    if (v11)
    {
      v8 = [v11 longLongValue];
    }

    else
    {
      v8 = 0;
    }

    v5 = [(DownloadSessionProperties *)v6 initWithClientIdentifier:v7 handlerIdentifier:v8];
    [(DownloadSessionProperties *)v5 setDownloadPhase:SSDownloadPhaseDownloading];
  }

  return v5;
}

- (int64_t)_downloadRestoreStateForError:(id)a3
{
  if ([(RestoreDownloadsOperation *)self _isErrorCancelFailure:?])
  {
    return 3;
  }

  if ([(RestoreDownloadsOperation *)self _isErrorSoftFail:a3])
  {
    return 2;
  }

  return !a3 || (SSErrorIsNetworkError() & 1) == 0;
}

- (void)_establishPrimaryAccount
{
  if (![+[SSAccountStore defaultStore](SSAccountStore "defaultStore")])
  {
    v3 = +[SSLogConfig sharedDaemonConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      LODWORD(v9) = 12;
      v6 = _os_log_send_and_compose_impl();
      if (v6)
      {
        v7 = v6;
        [NSString stringWithCString:v6 encoding:4, &v10, v9];
        free(v7);
        SSFileLog();
      }
    }

    v8 = objc_alloc_init(SSMutableAuthenticationContext);
    [v8 setAccountNameEditable:1];
    [v8 setCanCreateNewAccount:0];
    [v8 setPersistsAcrossDeviceLock:1];
    [v8 setPromptStyle:1001];
    [(RestoreDownloadsOperation *)self copyAccountID:0 credentialSource:0 byAuthenticatingWithContext:v8 returningError:0];
  }
}

- (void)_hardFailRestoreItem:(id)a3 download:(id)a4 transaction:(id)a5 error:(id)a6
{
  v10 = [a4 persistentID];
  [a4 downloadKind];
  if (SSDownloadKindIsPodcastKind() && (v11 = [a6 domain], objc_msgSend(v11, "isEqualToString:", SSServerErrorDomain)) && objc_msgSend(a6, "code") == 3701)
  {
    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    if (!os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v25 = 138543618;
      v26 = objc_opt_class();
      v27 = 2114;
      v28 = a3;
      LODWORD(v23) = 22;
      v15 = _os_log_send_and_compose_impl();
      if (v15)
      {
        v16 = v15;
        [NSString stringWithCString:v15 encoding:4, &v25, v23];
        free(v16);
        SSFileLog();
      }
    }

    v22 = objc_opt_class();
    v24 = a3;
  }

  else
  {
    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    v18 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    if (!os_log_type_enabled([v17 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v25 = 138543874;
      v26 = objc_opt_class();
      v27 = 2114;
      v28 = a3;
      v29 = 2114;
      v30 = a6;
      LODWORD(v23) = 32;
      v20 = _os_log_send_and_compose_impl();
      if (v20)
      {
        v21 = v20;
        [NSString stringWithCString:v20 encoding:4, &v25, v23];
        free(v21);
        SSFileLog();
      }
    }

    v24 = a3;
    v22 = objc_opt_class();
  }

  SSDebugLog();
  [a5 finishDownloadWithID:v10 finalPhase:{SSDownloadPhaseCanceled, v22, v24}];
}

- (BOOL)_isErrorCancelFailure:(id)a3
{
  if (ISErrorIsEqual())
  {
    return 1;
  }

  return ISErrorIsEqual();
}

- (BOOL)_isErrorSoftFail:(id)a3
{
  v4 = [a3 domain];
  if ([v4 isEqualToString:SSServerErrorDomain] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", NSURLErrorDomain) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kCFErrorDomainCFNetwork))
  {
LABEL_4:
    LOBYTE(v5) = 1;
    return v5;
  }

  if ([v4 isEqualToString:SSErrorDomain])
  {
    v6 = [a3 code];
    if ((v6 - 109) <= 0x17 && ((1 << (v6 - 109)) & 0x800003) != 0 || v6 == 16 || v6 == 2)
    {
      goto LABEL_4;
    }

    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [v4 isEqualToString:NSCocoaErrorDomain];
    if (v5)
    {
      LOBYTE(v5) = ([a3 code] & 0xFFFFFFFFFFFFFF00) == 3840;
    }
  }

  return v5;
}

- (id)_newDownloadWithStoreDownload:(id)a3
{
  v3 = [[Download alloc] initWithStoreDownload:a3];
  [(Download *)v3 setValue:[NSNumber forProperty:"numberWithBool:" numberWithBool:?], @"is_from_store"];
  [(Download *)v3 setValue:&off_10034BEE0 forProperty:@"priority"];
  [(Download *)v3 setValue:[NSNumber forProperty:"numberWithBool:" numberWithBool:?], @"suppress_error_dialogs"];
  v4 = objc_alloc_init(SSNetworkConstraints);
  [v4 disableCellularNetworkTypes];
  [(Download *)v3 unionNetworkConstraints:v4];

  return v3;
}

- (id)_newRestoreItemsWithDownloadIDs:(id)a3
{
  v4 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(NSMutableArray);
  v6 = +[DownloadsDatabase downloadsDatabase];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100152318;
  v29[3] = &unk_100327EE8;
  v29[4] = a3;
  v29[5] = v4;
  [v6 readUsingTransactionBlock:v29];
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v10 = objc_opt_class();
    v11 = [v5 count];
    *v31 = 138543618;
    *&v31[4] = v10;
    v32 = 2048;
    v33 = v11;
    LODWORD(v23) = 22;
    v22 = v31;
    v12 = _os_log_send_and_compose_impl();
    if (v12)
    {
      v13 = v12;
      v14 = [NSString stringWithCString:v12 encoding:4, v31, v23];
      free(v13);
      v22 = v14;
      SSFileLog();
    }
  }

  if ([v5 count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v5);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          v20 = [v19 bundleID];
          if (v20)
          {
            *v31 = 0;
            [v19 setHasRestoreData:{+[RestoreBackupOperation restoreDataExistsForApplicationWithBundleID:size:](RestoreBackupOperation, "restoreDataExistsForApplicationWithBundleID:size:", v20, v31)}];
            [v19 setRestoreDataSize:*v31];
          }
        }

        v16 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v16);
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1001528C4;
    v24[3] = &unk_100329E90;
    v24[4] = v5;
    [v6 modifyUsingTransactionBlock:v24];
  }

  return v4;
}

- (BOOL)_preflightAccountWithID:(id)a3 isFamily:(BOOL)a4 error:(id *)a5
{
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 1;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3052000000;
  v39 = sub_100152F70;
  v40 = sub_100152F80;
  v41 = 0;
  v8 = +[SSAccountStore defaultStore];
  v9 = v8;
  if (a4)
  {
    v10 = [v8 activeAccount];
  }

  else
  {
    v10 = [v8 accountWithUniqueIdentifier:a3];
  }

  v11 = v10;
  if ([objc_msgSend(v10 "accountName")])
  {
    if (([v9 isExpired] & 1) != 0 || (objc_msgSend(v11, "isAuthenticated") & 1) == 0)
    {
      v12 = [[SSMutableAuthenticationContext alloc] initWithAccount:v11];
      [v12 setAccountNameEditable:1];
      [v12 setAllowsSilentAuthentication:1];
      [v12 setCanCreateNewAccount:0];
      [v12 setPersistsAcrossDeviceLock:1];
      [v12 setPromptStyle:1001];
      v13 = [[SSAuthenticateRequest alloc] initWithAuthenticationContext:v12];
      v14 = +[SSLogConfig sharedDaemonConfig];
      if (!v14)
      {
        v14 = +[SSLogConfig sharedConfig];
      }

      v15 = [v14 shouldLog];
      v16 = [v14 shouldLogToDisk];
      v17 = [v14 OSLogObject];
      if (v16)
      {
        v15 |= 2u;
      }

      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v15 &= 2u;
      }

      if (v15)
      {
        v18 = objc_opt_class();
        v46 = 138543618;
        v47 = v18;
        v48 = 2114;
        v49 = v11;
        LODWORD(v34) = 22;
        v19 = _os_log_send_and_compose_impl();
        if (v19)
        {
          v20 = v19;
          [NSString stringWithCString:v19 encoding:4, &v46, v34];
          free(v20);
          SSFileLog();
        }
      }

      v21 = dispatch_semaphore_create(0);
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100152F8C;
      v35[3] = &unk_100329EB8;
      v35[6] = &v36;
      v35[4] = v21;
      v35[5] = &v42;
      [v13 startWithAuthenticateResponseBlock:v35];
      dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v21);
    }
  }

  else
  {
    v22 = +[SSLogConfig sharedDaemonConfig];
    if (!v22)
    {
      v22 = +[SSLogConfig sharedConfig];
    }

    v23 = [v22 shouldLog];
    v24 = [v22 shouldLogToDisk];
    v25 = [v22 OSLogObject];
    if (v24)
    {
      v23 |= 2u;
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v26 = objc_opt_class();
      v46 = 138543618;
      v47 = v26;
      v48 = 2114;
      v49 = a3;
      LODWORD(v34) = 22;
      v27 = _os_log_send_and_compose_impl();
      if (v27)
      {
        v28 = v27;
        [NSString stringWithCString:v27 encoding:4, &v46, v34];
        free(v28);
        SSFileLog();
      }
    }

    v29 = SSError();
    v37[5] = v29;
    *(v43 + 24) = 0;
  }

  v30 = v37[5];
  if (a5)
  {
    *a5 = v30;
  }

  v31 = v30;
  v32 = *(v43 + 24);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);
  return v32;
}

- (void)_scheduleAutomaticRetry
{
  v2 = kSSUserDefaultsIdentifier;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"RestoreSoftFailRetryCount", kSSUserDefaultsIdentifier, 0);
  if (AppIntegerValue <= 4)
  {
    v4 = AppIntegerValue;
    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v8 = v4 + 1;
      v14 = 138543874;
      v15 = objc_opt_class();
      v16 = 2048;
      v17 = v4 + 1;
      v18 = 2048;
      v19 = 0x40AC200000000000;
      LODWORD(v13) = 32;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        [NSString stringWithCString:v9 encoding:4, &v14, v13];
        free(v10);
        SSFileLog();
      }
    }

    else
    {
      v8 = v4 + 1;
    }

    v11 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v11, XPC_ACTIVITY_DELAY, 3600);
    xpc_dictionary_set_BOOL(v11, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
    xpc_dictionary_set_BOOL(v11, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
    v12 = [[BackgroundTaskRequest alloc] initWithBackgroundTaskAgentJob:v11];
    [(BackgroundTaskRequest *)v12 setRequestIdentifier:@"com.apple.itunesstored.RetrySoftFailedRestoreDownloads"];
    [+[Daemon daemon](Daemon "daemon")];

    CFPreferencesSetAppValue(@"RestoreSoftFailRetryCount", [NSNumber numberWithInteger:v8], v2);
    CFPreferencesAppSynchronize(v2);
    xpc_release(v11);
  }
}

- (void)_scheduleCancelRetry
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  if (!os_log_type_enabled([v2 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2048;
    v13 = 0x40F5180000000000;
    LODWORD(v9) = 22;
    v5 = _os_log_send_and_compose_impl();
    if (v5)
    {
      v6 = v5;
      [NSString stringWithCString:v5 encoding:4, &v10, v9];
      free(v6);
      SSFileLog();
    }
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v7, XPC_ACTIVITY_DELAY, 3600);
  xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  v8 = [[BackgroundTaskRequest alloc] initWithBackgroundTaskAgentJob:v7];
  [(BackgroundTaskRequest *)v8 setRequestIdentifier:@"com.apple.itunesstored.RetryCanceledRestoreDownloads"];
  [+[Daemon daemon](Daemon "daemon")];

  xpc_release(v7);
}

- (BOOL)_shouldAuthenticateForCancelRetry
{
  v3 = [ISDialog alloc];
  v4 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"RESTORE_CANCEL_RETRY_TITLE", &stru_10033CC30, 0];
  v5 = [v3 initWithTitle:v4 message:{-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"RESTORE_CANCEL_RETRY_BODY", &stru_10033CC30, 0)}];
  v6 = [ISDialogButton buttonWithTitle:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"RESTORE_CANCEL_RETRY_DELETE_BUTTON", &stru_10033CC30, 0]];
  v7 = [NSArray arrayWithObjects:v6, [ISDialogButton buttonWithTitle:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"RESTORE_CANCEL_RETRY_DOWNLOAD_BUTTON", &stru_10033CC30, 0]], 0];
  [v5 setButtons:v7];
  v8 = 1;
  [v5 setDefaultButtonIndex:1];
  [v5 setDismissOnLock:0];
  [v5 setShouldDismissAfterUnlock:0];
  v9 = [ISDialogOperation operationWithDialog:v5];
  [(RestoreDownloadsOperation *)self runSubOperation:v9 returningError:0];

  v10 = [(ISDialogOperation *)v9 selectedButton];
  if (v10)
  {
    return v10 == [(NSArray *)v7 objectAtIndex:1];
  }

  return v8;
}

- (BOOL)_shouldAutomaticallyRetryAfterSoftFailError:(id)a3
{
  v4 = [a3 domain];
  if ([v4 isEqualToString:NSURLErrorDomain])
  {
    LOBYTE(v5) = 1;
  }

  else if ([v4 isEqualToString:SSServerErrorDomain])
  {
    LOBYTE(v5) = [a3 code] != 3038;
  }

  else if ([v4 isEqualToString:SSErrorDomain])
  {
    v6 = [a3 code];
    v5 = 0x800003u >> (v6 - 109);
    if ((v6 - 109) > 0x17)
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (id)_softFailRestoreItem:(id)a3 download:(id)a4 withRestoreState:(int64_t)a5 error:(id)a6
{
  [a4 setValue:+[NSNumber numberWithInteger:](NSNumber forProperty:{"numberWithInteger:", a5), @"download_state.restore_state"}];
  v11 = [a4 failWithError:a6];
  v12 = +[SSLogConfig sharedDaemonConfig];
  if (!v12)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  v13 = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v14 = v13 | 2;
  }

  else
  {
    v14 = v13;
  }

  if (!os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v14 &= 2u;
  }

  if (v14)
  {
    v22 = 138543874;
    v23 = objc_opt_class();
    v24 = 2114;
    v25 = a3;
    v26 = 2114;
    v27 = a6;
    LODWORD(v20) = 32;
    v15 = _os_log_send_and_compose_impl();
    if (v15)
    {
      v16 = v15;
      [NSString stringWithCString:v15 encoding:4, &v22, v20];
      free(v16);
      SSFileLog();
    }
  }

  v21 = a3;
  v19 = objc_opt_class();
  v17 = 1;
  SSDebugLog();
  if (!self->_hadAutoRetrySoftFailure)
  {
    v17 = [(RestoreDownloadsOperation *)self _shouldAutomaticallyRetryAfterSoftFailError:a6, v19, v21, a6];
  }

  self->_hadAutoRetrySoftFailure = v17;
  self->_hadCancelFailure |= a5 == 3;
  return v11;
}

- (BOOL)_updateDownloadEntity:(id)a3 withTransaction:(id)a4 storeDownload:(id)a5 accountID:(id)a6
{
  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  v11 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    v12 = v11 | 2;
  }

  else
  {
    v12 = v11;
  }

  if (os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 & 2;
  }

  if (v13)
  {
    v24 = 138544386;
    v25 = objc_opt_class();
    v26 = 2048;
    v27 = [a3 persistentID];
    v28 = 2048;
    v29 = [a5 itemIdentifier];
    v30 = 2114;
    v31 = [a5 artistName];
    v32 = 2114;
    v33 = [a5 title];
    LODWORD(v22) = 52;
    v21 = &v24;
    v14 = _os_log_send_and_compose_impl();
    if (v14)
    {
      v15 = v14;
      v16 = [NSString stringWithCString:v14 encoding:4, &v24, v22];
      free(v15);
      v21 = v16;
      SSFileLog();
    }
  }

  v17 = [(RestoreDownloadsOperation *)self _newDownloadWithStoreDownload:a5, v21];
  v18 = v17;
  if (a6)
  {
    [v17 setValue:a6 forProperty:@"store_account_id"];
  }

  v19 = [a4 updateDownloadEntityWithIdentifier:objc_msgSend(a3 withDownload:{"persistentID"), v18}];
  if (v19)
  {
    [a5 writeToFile:objc_msgSend(+[ScratchManager directoryPathForDownloadID:kind:createIfNeeded:](ScratchManager options:"directoryPathForDownloadID:kind:createIfNeeded:" error:{objc_msgSend(a3, "persistentID"), objc_msgSend(a5, "kind"), 1), "stringByAppendingPathComponent:", @"iTunesMetadata.plist", 0, 0}];
  }

  return v19;
}

@end