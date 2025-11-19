@interface TCCDMDMPolicyOverride
- (TCCDMDMPolicyOverride)init;
- (void)addOrUpdateRecordsForCurrentPolicy;
- (void)parsePlist;
- (void)resetDatabaseFlagsForRecordsRemovedFromPreviousPolicy;
- (void)updateDatabase;
- (void)updateDatabaseForPolicyAuthorizationRecord:(id)a3 service:(id)a4;
@end

@implementation TCCDMDMPolicyOverride

- (TCCDMDMPolicyOverride)init
{
  v11.receiver = self;
  v11.super_class = TCCDMDMPolicyOverride;
  v2 = [(TCCDPolicyOverride *)&v11 init];
  if (v2)
  {
    v3 = [objc_opt_class() MDMOverridesFilePath];
    v4 = [TCCDPolicyOverride useString:v3 orReadFromDefaults:@"sitePolicyOverridePath"];
    [(TCCDPolicyOverride *)v2 setPlistFilePath:v4];

    v5 = dispatch_get_global_queue(0, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10005A67C;
    handler[3] = &unk_1000A5568;
    v6 = v2;
    v10 = v6;
    notify_register_dispatch("com.apple.TCC.configuration-profile-changed", &unk_1000C12E0, v5, handler);
    v7 = v6;
  }

  return v2;
}

- (void)updateDatabaseForPolicyAuthorizationRecord:(id)a3 service:(id)a4
{
  v5 = a3;
  v29 = a4;
  v6 = [v5 objectForKeyedSubscript:@"Authorization"];
  v7 = [v5 objectForKeyedSubscript:@"Identifier"];
  v8 = [v5 objectForKeyedSubscript:@"IdentifierType"];
  v9 = [v5 objectForKeyedSubscript:@"CodeRequirementData"];
  if ([v8 isEqualToString:@"bundleID"])
  {
    v10 = v6;
    v11 = v9;
    v12 = 0;
    goto LABEL_5;
  }

  if ([v8 isEqualToString:@"path"])
  {
    v10 = v6;
    v11 = v9;
    v12 = 1;
LABEL_5:
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10005AD00;
    v42[3] = &unk_1000A6C30;
    v13 = v29;
    v43 = v13;
    v14 = v7;
    v44 = v14;
    v45 = v12;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10005ADD0;
    v41[3] = &unk_1000A5928;
    v41[4] = &v50;
    v41[5] = &v46;
    v9 = v11;
    v6 = v10;
    if (db_eval("SELECT flags FROM access WHERE service = ? AND client = ? AND client_type = ?", v42, v41))
    {
      v15 = +[TCCDPolicyOverride logHandle];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v26 = [v13 name];
        *buf = 138543874;
        v55 = v26;
        v56 = 2114;
        v57 = v14;
        v58 = 2048;
        v59 = v12;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Database query for MDM policy authorization record failed: serviceName=%{public}@, identifier=%{public}@, identifier_type=%lld", buf, 0x20u);
      }

      goto LABEL_8;
    }

    if (*(v51 + 24) != 1)
    {
      if (!v10 || ![v10 isEqualToString:@"AllowStandardUserToSetSystemService"])
      {
        goto LABEL_9;
      }

      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10005AEFC;
      v30[3] = &unk_1000A6C80;
      v20 = v13;
      v31 = v20;
      v21 = v14;
      v32 = v21;
      v34 = v12;
      v33 = v9;
      v35 = 12;
      if (db_eval("INSERT OR REPLACE INTO access   (service, client, client_type, auth_value, auth_reason, auth_version, csreq, policy_id, indirect_object_identifier, flags) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", v30, 0))
      {
        v22 = +[TCCDPolicyOverride logHandle];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v28 = [v20 name];
          *buf = 138543874;
          v55 = v28;
          v56 = 2114;
          v57 = v21;
          v58 = 2048;
          v59 = v12;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to add new database record for MDM policy authorization record: serviceName=%{public}@, identifier=%{public}@, identifier_type=%lld", buf, 0x20u);
        }
      }

      v15 = v31;
      goto LABEL_8;
    }

    v16 = *(v47 + 6);
    if (v10)
    {
      if ([v10 isEqualToString:@"AllowStandardUserToSetSystemService"])
      {
        v17 = v16 | 4;
        v18 = *(v47 + 6);
LABEL_29:
        if (v17 == v18)
        {
          goto LABEL_9;
        }

        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_10005AE18;
        v36[3] = &unk_1000A6C58;
        v40 = v17;
        v23 = v13;
        v37 = v23;
        v24 = v14;
        v38 = v24;
        v39 = v12;
        if (db_eval("UPDATE access SET flags = ? WHERE service = ? AND client = ? AND client_type = ?", v36, 0))
        {
          v25 = +[TCCDPolicyOverride logHandle];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v27 = [v23 name];
            *buf = 138543874;
            v55 = v27;
            v56 = 2114;
            v57 = v24;
            v58 = 2048;
            v59 = v12;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to update flags on existing database record: serviceName=%{public}@, identifier=%{public}@, identifier_type=%lld", buf, 0x20u);
          }
        }

        v15 = v37;
LABEL_8:

LABEL_9:
        _Block_object_dispose(&v46, 8);
        _Block_object_dispose(&v50, 8);
        goto LABEL_17;
      }

      v18 = *(v47 + 6);
    }

    else
    {
      v18 = *(v47 + 6);
    }

    v17 = v16 & 0xFFFFFFF3;
    if ((v18 & 4) == 0)
    {
      v17 = v16;
    }

    goto LABEL_29;
  }

  v19 = +[TCCDPolicyOverride logHandle];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_10005B8DC(v8, v19);
  }

LABEL_17:
}

- (void)addOrUpdateRecordsForCurrentPolicy
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(TCCDPolicyOverride *)self policyAccessByIdentifier];
  v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v18)
  {
    v17 = *v24;
    do
    {
      v3 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v23 + 1) + 8 * v3);
        v5 = [(TCCDPolicyOverride *)self policyAccessByIdentifier];
        v6 = [v5 objectForKeyedSubscript:v4];

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v20;
          do
          {
            v11 = 0;
            do
            {
              if (*v20 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v19 + 1) + 8 * v11);
              v13 = +[TCCDPlatform currentPlatform];
              v14 = [v13 serviceByName:v12];

              v15 = [v7 objectForKeyedSubscript:v12];
              [(TCCDMDMPolicyOverride *)self updateDatabaseForPolicyAuthorizationRecord:v15 service:v14];

              v11 = v11 + 1;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v9);
        }

        v3 = v3 + 1;
      }

      while (v3 != v18);
      v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v18);
  }
}

- (void)resetDatabaseFlagsForRecordsRemovedFromPreviousPolicy
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005B34C;
  v4[3] = &unk_1000A54B8;
  v5 = 12;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10005B394;
  v2[3] = &unk_1000A5A90;
  v2[4] = self;
  v3 = 12;
  db_eval("SELECT service, client, client_type, flags FROM access WHERE flags & ?", v4, v2);
}

- (void)updateDatabase
{
  [(TCCDMDMPolicyOverride *)self resetDatabaseFlagsForRecordsRemovedFromPreviousPolicy];

  [(TCCDMDMPolicyOverride *)self addOrUpdateRecordsForCurrentPolicy];
}

- (void)parsePlist
{
  v4 = +[TCCDPolicyOverride logHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(TCCDPolicyOverride *)self plistDictionary];
    if (v5)
    {
      v2 = [(TCCDPolicyOverride *)self plistDictionary];
      v6 = [v2 count];
    }

    else
    {
      v6 = -1;
    }

    v14 = 138412546;
    v15 = self;
    v16 = 2048;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Override: %@ MDM Plist with %ld entries.", &v14, 0x16u);
    if (v5)
    {
    }
  }

  v7 = [(TCCDPolicyOverride *)self policyAccessByIdentifier];
  [v7 removeAllObjects];

  v8 = [(TCCDPolicyOverride *)self plistDictionary];

  if (v8)
  {
    v9 = [(TCCDPolicyOverride *)self policyAccessByIdentifier];
    v10 = [(TCCDPolicyOverride *)self plistDictionary];
    [v9 addEntriesFromDictionary:v10];
  }

  v11 = +[TCCDPlatform currentPlatform];
  v12 = [v11 server];
  v13 = [v12 macos_isSystemServer];

  if (v13)
  {
    [(TCCDMDMPolicyOverride *)self updateDatabase];
  }
}

@end