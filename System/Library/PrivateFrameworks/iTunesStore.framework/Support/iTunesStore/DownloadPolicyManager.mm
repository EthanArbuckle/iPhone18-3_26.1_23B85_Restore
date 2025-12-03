@interface DownloadPolicyManager
- (BOOL)_isPolicyRuleCellularDataAllowed:(id)allowed networkType:(int64_t)type;
- (BOOL)_isPolicyRuleNetworkTypeAllowed:(id)allowed networkType:(int64_t)type;
- (BOOL)_isPolicyRuleSatisfied:(id)satisfied forPolicy:(id)policy networkType:(int64_t)type;
- (DownloadPolicyManager)init;
- (DownloadPolicyManager)initWithDownloadsDatabase:(id)database;
- (id)downloadPolicyForID:(int64_t)d;
- (id)overrideDownloadSizeLimitForDownloadIdentifier:(int64_t)identifier;
- (int64_t)_sizeLimitForPolicy:(id)policy networkType:(int64_t)type;
- (int64_t)addDownloadPolicy:(id)policy;
- (int64_t)downloadSizeLimitForPolicyWithID:(int64_t)d;
- (int64_t)downloadSizeLimitForPolicyWithID:(int64_t)d networkType:(int64_t)type;
- (void)_addPolicy:(id)policy;
- (void)_initializePolicy;
- (void)dealloc;
- (void)removeOverrideDownloadSizeLimitForDownloadIdentifier:(int64_t)identifier;
- (void)setOverrideDownloadSizeLimit:(int64_t)limit forDownloadIdentifier:(int64_t)identifier;
@end

@implementation DownloadPolicyManager

- (DownloadPolicyManager)init
{
  v3 = +[DownloadsDatabase downloadsDatabase];

  return [(DownloadPolicyManager *)self initWithDownloadsDatabase:v3];
}

- (DownloadPolicyManager)initWithDownloadsDatabase:(id)database
{
  v9.receiver = self;
  v9.super_class = DownloadPolicyManager;
  v4 = [(DownloadPolicyManager *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_database = database;
    v4->_policies = objc_alloc_init(NSMutableDictionary);
    database = v5->_database;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001E7DB4;
    v8[3] = &unk_100327378;
    v8[4] = v5;
    [(DownloadsDatabase *)database dispatchBlockAsync:v8];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadPolicyManager;
  [(DownloadPolicyManager *)&v3 dealloc];
}

- (int64_t)addDownloadPolicy:(id)policy
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  policies = self->_policies;
  v6 = [(NSMutableDictionary *)policies countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v6)
  {
    v7 = *v26;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(policies);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        if ([objc_msgSend(-[NSMutableDictionary objectForKey:](self->_policies objectForKey:{v9), "downloadPolicy"), "isEqual:", policy}])
        {
          longLongValue = [v9 longLongValue];
          v30[3] = longLongValue;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableDictionary *)policies countByEnumeratingWithState:&v25 objects:v37 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v11 = v30[3];
  if (!v11)
  {
    v24 = 0;
    v12 = [NSKeyedArchiver archivedDataWithRootObject:policy requiringSecureCoding:1 error:&v24];
    if (v24)
    {
      v13 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v13)
      {
        v13 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v13 shouldLog];
      shouldLogToDisk = [v13 shouldLogToDisk];
      oSLogObject = [v13 OSLogObject];
      if (shouldLogToDisk)
      {
        shouldLog |= 2u;
      }

      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        shouldLog &= 2u;
      }

      if (shouldLog)
      {
        v17 = objc_opt_class();
        v33 = 138543618;
        v34 = v17;
        v35 = 2114;
        v36 = v24;
        LODWORD(v22) = 22;
        v18 = _os_log_send_and_compose_impl();
        if (v18)
        {
          v19 = v18;
          [NSString stringWithCString:v18 encoding:4, &v33, v22];
          free(v19);
          SSFileLog();
        }
      }
    }

    if (v12)
    {
      database = self->_database;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1001E8140;
      v23[3] = &unk_10032BEC8;
      v23[5] = self;
      v23[6] = &v29;
      v23[4] = v12;
      [(DownloadsDatabase *)database modifyUsingTransactionBlock:v23];
    }

    v11 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  return v11;
}

- (id)downloadPolicyForID:(int64_t)d
{
  v4 = [[NSNumber alloc] initWithLongLong:d];
  v5 = [(NSMutableDictionary *)self->_policies objectForKey:v4];

  return [v5 downloadPolicy];
}

- (int64_t)downloadSizeLimitForPolicyWithID:(int64_t)d
{
  networkType = [+[ISNetworkObserver sharedInstance](ISNetworkObserver networkType];

  return [(DownloadPolicyManager *)self downloadSizeLimitForPolicyWithID:d networkType:networkType];
}

- (int64_t)downloadSizeLimitForPolicyWithID:(int64_t)d networkType:(int64_t)type
{
  v6 = [[NSNumber alloc] initWithLongLong:d];
  v7 = [(NSMutableDictionary *)self->_policies objectForKey:v6];
  if (v7)
  {
    v8 = [(DownloadPolicyManager *)self _sizeLimitForPolicy:v7 networkType:type];
  }

  else
  {
    v8 = SSDownloadSizeLimitDisabled;
  }

  return v8;
}

- (id)overrideDownloadSizeLimitForDownloadIdentifier:(int64_t)identifier
{
  v4 = [[NSNumber alloc] initWithLongLong:identifier];
  v5 = [(NSMutableDictionary *)self->_sizeLimitOverrides objectForKey:v4];

  return v5;
}

- (void)removeOverrideDownloadSizeLimitForDownloadIdentifier:(int64_t)identifier
{
  if (self->_sizeLimitOverrides)
  {
    v4 = [[NSNumber alloc] initWithLongLong:identifier];
    [(NSMutableDictionary *)self->_sizeLimitOverrides removeObjectForKey:?];
    if (![(NSMutableDictionary *)self->_sizeLimitOverrides count])
    {

      self->_sizeLimitOverrides = 0;
    }
  }
}

- (void)setOverrideDownloadSizeLimit:(int64_t)limit forDownloadIdentifier:(int64_t)identifier
{
  if (!self->_sizeLimitOverrides)
  {
    self->_sizeLimitOverrides = objc_alloc_init(NSMutableDictionary);
  }

  v8 = [[NSNumber alloc] initWithLongLong:identifier];
  v7 = [[NSNumber alloc] initWithLongLong:limit];
  [(NSMutableDictionary *)self->_sizeLimitOverrides setObject:v7 forKey:v8];
}

- (void)_addPolicy:(id)policy
{
  v5 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(policy, "databaseID")}];
  if (![(NSMutableDictionary *)self->_policies objectForKey:v5])
  {
    v6 = -[DownloadPolicyManager _sizeLimitForPolicy:networkType:](self, "_sizeLimitForPolicy:networkType:", policy, [+[ISNetworkObserver sharedInstance](ISNetworkObserver networkType]);
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v15 = 138412802;
      v16 = objc_opt_class();
      v17 = 2112;
      v18 = v5;
      v19 = 2048;
      v20 = v6;
      LODWORD(v14) = 32;
      v13 = &v15;
      v10 = _os_log_send_and_compose_impl();
      if (v10)
      {
        v11 = v10;
        v12 = [NSString stringWithCString:v10 encoding:4, &v15, v14];
        free(v11);
        v13 = v12;
        SSFileLog();
      }
    }

    [(NSMutableDictionary *)self->_policies setObject:policy forKey:v5, v13];
  }
}

- (void)_initializePolicy
{
  v3 = objc_alloc_init(NSMutableArray);
  database = self->_database;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1001E894C;
  v23[3] = &unk_10032A5A0;
  v23[4] = v3;
  [(DownloadsDatabase *)database readUsingTransactionBlock:v23];
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = [v3 count];
    v25 = 138412546;
    v26 = v8;
    v27 = 2048;
    v28 = v9;
    LODWORD(v18) = 22;
    v17 = &v25;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      v12 = [NSString stringWithCString:v10 encoding:4, &v25, v18];
      free(v11);
      v17 = v12;
      SSFileLog();
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:{16, v17}];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v3);
        }

        [(DownloadPolicyManager *)self _addPolicy:*(*(&v19 + 1) + 8 * i)];
      }

      v14 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v14);
  }
}

- (BOOL)_isPolicyRuleCellularDataAllowed:(id)allowed networkType:(int64_t)type
{
  cellularDataStates = [allowed cellularDataStates];
  if (cellularDataStates == 3 || (v6 = cellularDataStates, !SSNetworkTypeIsCellularType()) || (AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AllowAutoDownloadOnCellular", kSSUserDefaultsIdentifier, 0), (v6 & 2) != 0) && AppBooleanValue)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 & (AppBooleanValue == 0);
  }

  if (SSNetworkTypeIsCellularType())
  {
    if ([allowed isCellularAllowed])
    {
      userDefaultStates = [allowed userDefaultStates];
      if ([userDefaultStates count])
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v10 = [userDefaultStates countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v17;
          while (2)
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v17 != v12)
              {
                objc_enumerationMutation(userDefaultStates);
              }

              if ([*(*(&v16 + 1) + 8 * i) currentBoolValue])
              {
                downloadSizeLimit = [allowed downloadSizeLimit];
                if (downloadSizeLimit == SSDownloadSizeLimitDisabled)
                {
                  return 0;
                }

                return v8;
              }
            }

            v11 = [userDefaultStates countByEnumeratingWithState:&v16 objects:v20 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }
      }
    }
  }

  return v8;
}

- (BOOL)_isPolicyRuleNetworkTypeAllowed:(id)allowed networkType:(int64_t)type
{
  networkTypes = [allowed networkTypes];
  if (![networkTypes count])
  {
    return 1;
  }

  v6 = [[NSNumber alloc] initWithInteger:type];
  v7 = [networkTypes containsObject:v6];

  return v7;
}

- (BOOL)_isPolicyRuleSatisfied:(id)satisfied forPolicy:(id)policy networkType:(int64_t)type
{
  v8 = [(DownloadPolicyManager *)self _isPolicyRuleNetworkTypeAllowed:satisfied networkType:type];
  if (v8)
  {

    LOBYTE(v8) = [(DownloadPolicyManager *)self _isPolicyRuleCellularDataAllowed:satisfied networkType:type];
  }

  return v8;
}

- (int64_t)_sizeLimitForPolicy:(id)policy networkType:(int64_t)type
{
  v7 = SSDownloadSizeLimitDisabled;
  downloadPolicy = [policy downloadPolicy];
  policyRules = [downloadPolicy policyRules];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [policyRules countByEnumeratingWithState:&v23 objects:v27 count:16];
  downloadSizeLimit = v7;
  if (v10)
  {
    v12 = v10;
    v13 = *v24;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(policyRules);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        if ([(DownloadPolicyManager *)self _isPolicyRuleSatisfied:v15 forPolicy:policy networkType:type])
        {
          downloadSizeLimit = [v15 downloadSizeLimit];
          goto LABEL_11;
        }
      }

      v12 = [policyRules countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    downloadSizeLimit = v7;
  }

LABEL_11:
  downloadKind = [downloadPolicy downloadKind];
  if (!downloadKind)
  {
    return downloadSizeLimit;
  }

  v17 = downloadKind;
  if (![policyRules count] || downloadSizeLimit != v7)
  {
    v18 = [objc_msgSend(+[ISURLBagCache sharedCache](ISURLBagCache "sharedCache")];
    if (v18)
    {
      v19 = [v18 sizeLimitForNetworkType:type];
      if (downloadSizeLimit >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = downloadSizeLimit;
      }

      if (downloadSizeLimit == SSDownloadSizeLimitNoLimit || downloadSizeLimit == v7)
      {
        return v19;
      }

      else
      {
        return v20;
      }
    }

    else if (type)
    {
      if (SSNetworkTypeIsCellularType())
      {
        return 104857600;
      }

      else
      {
        return SSDownloadSizeLimitNoLimit;
      }
    }
  }

  return v7;
}

@end