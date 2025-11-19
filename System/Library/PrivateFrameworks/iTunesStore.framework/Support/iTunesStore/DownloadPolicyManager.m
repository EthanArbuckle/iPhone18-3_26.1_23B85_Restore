@interface DownloadPolicyManager
- (BOOL)_isPolicyRuleCellularDataAllowed:(id)a3 networkType:(int64_t)a4;
- (BOOL)_isPolicyRuleNetworkTypeAllowed:(id)a3 networkType:(int64_t)a4;
- (BOOL)_isPolicyRuleSatisfied:(id)a3 forPolicy:(id)a4 networkType:(int64_t)a5;
- (DownloadPolicyManager)init;
- (DownloadPolicyManager)initWithDownloadsDatabase:(id)a3;
- (id)downloadPolicyForID:(int64_t)a3;
- (id)overrideDownloadSizeLimitForDownloadIdentifier:(int64_t)a3;
- (int64_t)_sizeLimitForPolicy:(id)a3 networkType:(int64_t)a4;
- (int64_t)addDownloadPolicy:(id)a3;
- (int64_t)downloadSizeLimitForPolicyWithID:(int64_t)a3;
- (int64_t)downloadSizeLimitForPolicyWithID:(int64_t)a3 networkType:(int64_t)a4;
- (void)_addPolicy:(id)a3;
- (void)_initializePolicy;
- (void)dealloc;
- (void)removeOverrideDownloadSizeLimitForDownloadIdentifier:(int64_t)a3;
- (void)setOverrideDownloadSizeLimit:(int64_t)a3 forDownloadIdentifier:(int64_t)a4;
@end

@implementation DownloadPolicyManager

- (DownloadPolicyManager)init
{
  v3 = +[DownloadsDatabase downloadsDatabase];

  return [(DownloadPolicyManager *)self initWithDownloadsDatabase:v3];
}

- (DownloadPolicyManager)initWithDownloadsDatabase:(id)a3
{
  v9.receiver = self;
  v9.super_class = DownloadPolicyManager;
  v4 = [(DownloadPolicyManager *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_database = a3;
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

- (int64_t)addDownloadPolicy:(id)a3
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
        if ([objc_msgSend(-[NSMutableDictionary objectForKey:](self->_policies objectForKey:{v9), "downloadPolicy"), "isEqual:", a3}])
        {
          v10 = [v9 longLongValue];
          v30[3] = v10;
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
    v12 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v24];
    if (v24)
    {
      v13 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v13)
      {
        v13 = +[SSLogConfig sharedConfig];
      }

      v14 = [v13 shouldLog];
      v15 = [v13 shouldLogToDisk];
      v16 = [v13 OSLogObject];
      if (v15)
      {
        v14 |= 2u;
      }

      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v14 &= 2u;
      }

      if (v14)
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

- (id)downloadPolicyForID:(int64_t)a3
{
  v4 = [[NSNumber alloc] initWithLongLong:a3];
  v5 = [(NSMutableDictionary *)self->_policies objectForKey:v4];

  return [v5 downloadPolicy];
}

- (int64_t)downloadSizeLimitForPolicyWithID:(int64_t)a3
{
  v5 = [+[ISNetworkObserver sharedInstance](ISNetworkObserver networkType];

  return [(DownloadPolicyManager *)self downloadSizeLimitForPolicyWithID:a3 networkType:v5];
}

- (int64_t)downloadSizeLimitForPolicyWithID:(int64_t)a3 networkType:(int64_t)a4
{
  v6 = [[NSNumber alloc] initWithLongLong:a3];
  v7 = [(NSMutableDictionary *)self->_policies objectForKey:v6];
  if (v7)
  {
    v8 = [(DownloadPolicyManager *)self _sizeLimitForPolicy:v7 networkType:a4];
  }

  else
  {
    v8 = SSDownloadSizeLimitDisabled;
  }

  return v8;
}

- (id)overrideDownloadSizeLimitForDownloadIdentifier:(int64_t)a3
{
  v4 = [[NSNumber alloc] initWithLongLong:a3];
  v5 = [(NSMutableDictionary *)self->_sizeLimitOverrides objectForKey:v4];

  return v5;
}

- (void)removeOverrideDownloadSizeLimitForDownloadIdentifier:(int64_t)a3
{
  if (self->_sizeLimitOverrides)
  {
    v4 = [[NSNumber alloc] initWithLongLong:a3];
    [(NSMutableDictionary *)self->_sizeLimitOverrides removeObjectForKey:?];
    if (![(NSMutableDictionary *)self->_sizeLimitOverrides count])
    {

      self->_sizeLimitOverrides = 0;
    }
  }
}

- (void)setOverrideDownloadSizeLimit:(int64_t)a3 forDownloadIdentifier:(int64_t)a4
{
  if (!self->_sizeLimitOverrides)
  {
    self->_sizeLimitOverrides = objc_alloc_init(NSMutableDictionary);
  }

  v8 = [[NSNumber alloc] initWithLongLong:a4];
  v7 = [[NSNumber alloc] initWithLongLong:a3];
  [(NSMutableDictionary *)self->_sizeLimitOverrides setObject:v7 forKey:v8];
}

- (void)_addPolicy:(id)a3
{
  v5 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(a3, "databaseID")}];
  if (![(NSMutableDictionary *)self->_policies objectForKey:v5])
  {
    v6 = -[DownloadPolicyManager _sizeLimitForPolicy:networkType:](self, "_sizeLimitForPolicy:networkType:", a3, [+[ISNetworkObserver sharedInstance](ISNetworkObserver networkType]);
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

    [(NSMutableDictionary *)self->_policies setObject:a3 forKey:v5, v13];
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

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
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

- (BOOL)_isPolicyRuleCellularDataAllowed:(id)a3 networkType:(int64_t)a4
{
  v5 = [a3 cellularDataStates];
  if (v5 == 3 || (v6 = v5, !SSNetworkTypeIsCellularType()) || (AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AllowAutoDownloadOnCellular", kSSUserDefaultsIdentifier, 0), (v6 & 2) != 0) && AppBooleanValue)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 & (AppBooleanValue == 0);
  }

  if (SSNetworkTypeIsCellularType())
  {
    if ([a3 isCellularAllowed])
    {
      v9 = [a3 userDefaultStates];
      if ([v9 count])
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
                objc_enumerationMutation(v9);
              }

              if ([*(*(&v16 + 1) + 8 * i) currentBoolValue])
              {
                v14 = [a3 downloadSizeLimit];
                if (v14 == SSDownloadSizeLimitDisabled)
                {
                  return 0;
                }

                return v8;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (BOOL)_isPolicyRuleNetworkTypeAllowed:(id)a3 networkType:(int64_t)a4
{
  v5 = [a3 networkTypes];
  if (![v5 count])
  {
    return 1;
  }

  v6 = [[NSNumber alloc] initWithInteger:a4];
  v7 = [v5 containsObject:v6];

  return v7;
}

- (BOOL)_isPolicyRuleSatisfied:(id)a3 forPolicy:(id)a4 networkType:(int64_t)a5
{
  v8 = [(DownloadPolicyManager *)self _isPolicyRuleNetworkTypeAllowed:a3 networkType:a5];
  if (v8)
  {

    LOBYTE(v8) = [(DownloadPolicyManager *)self _isPolicyRuleCellularDataAllowed:a3 networkType:a5];
  }

  return v8;
}

- (int64_t)_sizeLimitForPolicy:(id)a3 networkType:(int64_t)a4
{
  v7 = SSDownloadSizeLimitDisabled;
  v8 = [a3 downloadPolicy];
  v9 = [v8 policyRules];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  v11 = v7;
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
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        if ([(DownloadPolicyManager *)self _isPolicyRuleSatisfied:v15 forPolicy:a3 networkType:a4])
        {
          v11 = [v15 downloadSizeLimit];
          goto LABEL_11;
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v11 = v7;
  }

LABEL_11:
  v16 = [v8 downloadKind];
  if (!v16)
  {
    return v11;
  }

  v17 = v16;
  if (![v9 count] || v11 != v7)
  {
    v18 = [objc_msgSend(+[ISURLBagCache sharedCache](ISURLBagCache "sharedCache")];
    if (v18)
    {
      v19 = [v18 sizeLimitForNetworkType:a4];
      if (v11 >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v11;
      }

      if (v11 == SSDownloadSizeLimitNoLimit || v11 == v7)
      {
        return v19;
      }

      else
      {
        return v20;
      }
    }

    else if (a4)
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