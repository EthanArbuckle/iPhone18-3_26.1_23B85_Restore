@interface TCCDPolicyOverride
+ (BOOL)isMDMPolicyOverrideActive;
+ (id)logHandle;
+ (id)orderedOverridePolicies;
+ (id)queue;
+ (unint64_t)evaluateOverridePolicyForAccessByIdentity:(id)a3 toService:(id)a4 withIndirectObjectIdentityIdentity:(id)a5 authorizationReason:(unint64_t *)a6;
+ (void)loadPolicyData;
+ (void)populatePolicyAuthorizationsForClient:(id)a3 message:(id)a4;
+ (void)populatePolicyAuthorizationsForService:(id)a3 message:(id)a4 specifiedAuth:(unint64_t)a5;
- (BOOL)_locked_populateGeneralAuthorzationFieldsForService:(id)a3 info:(id)a4 entry:(id)a5;
- (BOOL)_locked_populateIndirectAuthorzationFieldsForService:(id)a3 info:(id)a4 entry:(id)a5;
- (BOOL)_locked_populatePolicyAuthorizationForSubjectWithInfoDict:(id)a3 message:(id)a4;
- (BOOL)isActive;
- (BOOL)validateEntry:(id)a3 identifierType:(id)a4 codeRequirementString:(id)a5 serviceName:(id)a6 allowed:(id)a7 comment:(id)a8;
- (TCCDPolicyOverride)init;
- (void)_locked_populatePolicyAuthorizationsForClient:(id)a3 message:(id)a4;
- (void)_locked_populatePolicyAuthorizationsForService:(id)a3 message:(id)a4 specifiedAuth:(unint64_t)a5;
- (void)addBundleIdWithSpecifiedAuth:(unint64_t)a3 infoDict:(id)a4 message:(id)a5;
- (void)loadAndParse;
- (void)loadPlist;
- (void)parsePlist;
- (void)watchPlistChanges;
@end

@implementation TCCDPolicyOverride

+ (id)logHandle
{
  if (qword_1000C1238 != -1)
  {
    sub_100052CC8();
  }

  v3 = qword_1000C1240;

  return v3;
}

+ (id)queue
{
  if (qword_1000C1228 != -1)
  {
    sub_100052CDC();
  }

  v3 = qword_1000C1220;

  return v3;
}

+ (id)orderedOverridePolicies
{
  v2 = qword_1000C1230;
  qword_1000C1230 = &__NSArray0__struct;

  return &__NSArray0__struct;
}

+ (BOOL)isMDMPolicyOverrideActive
{
  v2 = [a1 orderedOverridePolicies];
  v3 = [v2 firstObject];
  v4 = [v3 isActive];

  return v4;
}

+ (void)loadPolicyData
{
  v2 = [a1 orderedOverridePolicies];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) loadAndParse];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (unint64_t)evaluateOverridePolicyForAccessByIdentity:(id)a3 toService:(id)a4 withIndirectObjectIdentityIdentity:(id)a5 authorizationReason:(unint64_t *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v13 = [a1 orderedOverridePolicies];
  if ([v13 count])
  {
    v14 = [a1 queue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000501E4;
    v17[3] = &unk_1000A6948;
    v18 = v13;
    v19 = v11;
    v22 = &v24;
    v20 = v10;
    v21 = v12;
    v23 = a6;
    dispatch_sync(v14, v17);
  }

  v15 = v25[3];

  _Block_object_dispose(&v24, 8);
  return v15;
}

+ (void)populatePolicyAuthorizationsForClient:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 orderedOverridePolicies];
  if ([v8 count])
  {
    v9 = [a1 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000504E4;
    block[3] = &unk_1000A5098;
    v11 = v8;
    v12 = v6;
    v13 = v7;
    dispatch_sync(v9, block);
  }
}

+ (void)populatePolicyAuthorizationsForService:(id)a3 message:(id)a4 specifiedAuth:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 orderedOverridePolicies];
  if ([v10 count])
  {
    v11 = [a1 queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100050788;
    v12[3] = &unk_1000A6970;
    v13 = v10;
    v14 = v8;
    v15 = v9;
    v16 = a5;
    dispatch_sync(v11, v12);
  }
}

- (TCCDPolicyOverride)init
{
  v6.receiver = self;
  v6.super_class = TCCDPolicyOverride;
  v2 = [(TCCDPolicyOverride *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    [(TCCDPolicyOverride *)v2 setPolicyAccessByIdentifier:v3];

    v4 = v2;
  }

  return v2;
}

- (BOOL)isActive
{
  v3 = [(TCCDPolicyOverride *)self plistDictionary];
  if (v3)
  {
    v4 = [(TCCDPolicyOverride *)self plistDictionary];
    if ([v4 count])
    {
      v5 = [(TCCDPolicyOverride *)self policyAccessByIdentifier];
      v6 = [v5 count] != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)loadPlist
{
  v3 = [(TCCDPolicyOverride *)self plistFilePath];
  if (v3)
  {
    if (qword_1000C1238 != -1)
    {
      sub_100052CC8();
    }

    v4 = qword_1000C1240;
    if (os_log_type_enabled(qword_1000C1240, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v19 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Override: loading from: %{public}@", buf, 0xCu);
    }

    v17 = 0;
    v5 = [NSData dataWithContentsOfFile:v3 options:0 error:&v17];
    v6 = v17;
    v7 = v6;
    if (v5)
    {
      v16 = 0;
      v8 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:&v16];
      v9 = v16;

      [(TCCDPolicyOverride *)self setPlistDictionary:v8];
      v10 = [(TCCDPolicyOverride *)self plistDictionary];

      if (!v10)
      {
        if (qword_1000C1238 != -1)
        {
          sub_100052CF0();
        }

        v11 = qword_1000C1240;
        if (os_log_type_enabled(qword_1000C1240, OS_LOG_TYPE_ERROR))
        {
          sub_100052D18(v3, v9, v11);
        }
      }

      v7 = v9;
      goto LABEL_31;
    }

    v12 = [v6 domain];
    if ([v12 isEqualToString:NSCocoaErrorDomain])
    {
      if ([v7 code] == 4)
      {

LABEL_26:
        if (qword_1000C1238 != -1)
        {
          sub_100052CF0();
        }

        v15 = qword_1000C1240;
        if (os_log_type_enabled(qword_1000C1240, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v19 = v3;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Override: no file at: %{public}@", buf, 0xCu);
        }

LABEL_30:
        [(TCCDPolicyOverride *)self setPlistDictionary:0];
LABEL_31:

        goto LABEL_32;
      }

      v14 = [v7 code];

      if (v14 == 260)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    if (qword_1000C1238 != -1)
    {
      sub_100052CF0();
    }

    v13 = qword_1000C1240;
    if (os_log_type_enabled(qword_1000C1240, OS_LOG_TYPE_ERROR))
    {
      sub_100052D90(v3, v7, v13);
    }

    goto LABEL_30;
  }

  if (qword_1000C1238 != -1)
  {
    sub_100052CC8();
  }

  if (os_log_type_enabled(qword_1000C1240, OS_LOG_TYPE_ERROR))
  {
    sub_100052E08();
  }

LABEL_32:
}

- (void)loadAndParse
{
  v3 = +[TCCDPolicyOverride queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050DA8;
  block[3] = &unk_1000A4F58;
  block[4] = self;
  dispatch_barrier_async(v3, block);
}

- (BOOL)validateEntry:(id)a3 identifierType:(id)a4 codeRequirementString:(id)a5 serviceName:(id)a6 allowed:(id)a7 comment:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (!v15 || !v13 || !v14 || !v17)
  {
    if (qword_1000C1238 != -1)
    {
      sub_100052CC8();
    }

    v20 = qword_1000C1240;
    if (!os_log_type_enabled(qword_1000C1240, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v26 = 138544386;
    v27 = v16;
    v28 = 2114;
    v29 = v13;
    v30 = 2114;
    v31 = v14;
    v32 = 2114;
    v33 = v15;
    v34 = 2114;
    v35 = v18;
    v21 = "Override: missing configuration info for Service: %{public}@: Identifier: %{public}@, type: %{public}@, code requirement: %{public}@, comment: %{public}@";
    v22 = v20;
    v23 = 52;
    goto LABEL_16;
  }

  if (([v14 isEqualToString:@"bundleID"] & 1) == 0 && (objc_msgSend(v14, "isEqualToString:", @"path") & 1) == 0)
  {
    if (qword_1000C1238 != -1)
    {
      sub_100052CC8();
    }

    v24 = qword_1000C1240;
    if (!os_log_type_enabled(qword_1000C1240, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v26 = 138543874;
    v27 = v16;
    v28 = 2114;
    v29 = v13;
    v30 = 2114;
    v31 = v14;
    v21 = "Override: invalid identifier type for Service %{public}@, Identifier: %{public}@, type: %{public}@";
    v22 = v24;
    v23 = 32;
LABEL_16:
    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v21, &v26, v23);
LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

  v19 = 1;
LABEL_18:

  return v19;
}

- (void)parsePlist
{
  v5 = &qword_1000C1000;
  if (qword_1000C1238 != -1)
  {
    sub_100052CC8();
  }

  v6 = &qword_1000C1000;
  v7 = qword_1000C1240;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(TCCDPolicyOverride *)self plistDictionary];
    if (v8)
    {
      v2 = [(TCCDPolicyOverride *)self plistDictionary];
      v3 = [v2 objectForKeyedSubscript:@"Services"];
      v9 = [v3 count];
    }

    else
    {
      v9 = -1;
    }

    *buf = 138412546;
    v76 = self;
    v77 = 2048;
    v78 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Override: parsing plist for %@ with %ld entries.", buf, 0x16u);
    if (v8)
    {
    }
  }

  v10 = [(TCCDPolicyOverride *)self plistDictionary];

  if (v10)
  {
    v11 = [(TCCDPolicyOverride *)self policyAccessByIdentifier];
    [v11 removeAllObjects];

    v12 = [(TCCDPolicyOverride *)self plistDictionary];
    v13 = [v12 objectForKeyedSubscript:@"Services"];

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = v13;
    v51 = [obj countByEnumeratingWithState:&v71 objects:v86 count:16];
    if (v51)
    {
      v50 = *v72;
      *&v14 = 138544386;
      v49 = v14;
      v54 = self;
      do
      {
        v15 = 0;
        do
        {
          if (*v72 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v71 + 1) + 8 * v15);
          v59 = [@"kTCCService" stringByAppendingString:{v16, v49}];
          v57 = [v59 isEqualToString:@"kTCCServiceAppleEvents"];
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v63 = v16;
          v55 = [obj objectForKeyedSubscript:v16];
          v56 = [v55 countByEnumeratingWithState:&v67 objects:v85 count:16];
          if (v56)
          {
            v58 = *v68;
            v52 = v15;
            while (2)
            {
              v17 = 0;
              do
              {
                v18 = v5;
                v19 = v6;
                if (*v68 != v58)
                {
                  objc_enumerationMutation(v55);
                }

                v61 = v17;
                v20 = *(*(&v67 + 1) + 8 * v17);
                v21 = [v20 objectForKeyedSubscript:@"Identifier"];
                v22 = [v20 objectForKeyedSubscript:@"IdentifierType"];
                v23 = [v20 objectForKeyedSubscript:@"CodeRequirement"];
                v24 = [v20 objectForKeyedSubscript:@"Comment"];
                v25 = [v20 objectForKeyedSubscript:@"Allowed"];
                v26 = [(TCCDPolicyOverride *)self allowedParser:v25];

                v62 = [v20 objectForKeyedSubscript:@"StaticCode"];
                v65 = v22;
                v66 = v26;
                v27 = [(TCCDPolicyOverride *)self validateEntry:v21 identifierType:v22 codeRequirementString:v23 serviceName:v63 allowed:v26 comment:v24];
                v6 = v19;
                v5 = v18;
                if (!v27)
                {
                  goto LABEL_57;
                }

                v28 = [(TCCDPolicyOverride *)self parseCodeRequirements:v23];
                v29 = v18[71];
                if (!v28)
                {
                  if (v29 != -1)
                  {
                    sub_100052CF0();
                  }

                  v47 = v6[72];
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138544130;
                    v76 = v63;
                    v77 = 2114;
                    v78 = v21;
                    v79 = 2114;
                    v80 = v22;
                    v81 = 2114;
                    v82 = v23;
                    _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Override: invalid code requirements for Service %{public}@, Identifier: %{public}@, type: %{public}@, requirement: %{public}@", buf, 0x2Au);
                  }

                  goto LABEL_57;
                }

                v30 = v28;
                if (v29 != -1)
                {
                  sub_100052CF0();
                }

                v31 = v6[72];
                if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                {
                  *buf = 138544130;
                  v76 = v63;
                  v77 = 2114;
                  v78 = v21;
                  v79 = 2114;
                  v80 = v23;
                  v81 = 2114;
                  v82 = v24;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Override: service: %{public}@, processed entry: %{public}@, '%{public}@', %{public}@", buf, 0x2Au);
                }

                v64 = v24;
                v60 = v23;
                v32 = [(TCCDPolicyOverride *)self policyAccessByIdentifier];
                v33 = [v32 objectForKeyedSubscript:v21];

                if (!v33)
                {
                  v33 = +[NSMutableDictionary dictionary];
                  v34 = [(TCCDPolicyOverride *)self policyAccessByIdentifier];
                  [v34 setObject:v33 forKeyedSubscript:v21];
                }

                v35 = [v33 objectForKeyedSubscript:v59];
                if (!v35)
                {
                  v35 = +[NSMutableDictionary dictionary];
                  [v33 setObject:v35 forKeyedSubscript:v59];
                }

                if (v57)
                {
                  v36 = [v20 objectForKeyedSubscript:@"AEReceiverIdentifier"];
                  v37 = [v20 objectForKeyedSubscript:@"AEReceiverIdentifierType"];
                  v38 = [v20 objectForKeyedSubscript:@"AEReceiverCodeRequirement"];
                  if (![(TCCDPolicyOverride *)self validateEntry:v36 identifierType:v37 codeRequirementString:v38 serviceName:v63 allowed:v66 comment:v64])
                  {
                    goto LABEL_56;
                  }

                  v39 = [(TCCDPolicyOverride *)self parseCodeRequirements:v38];
                  if (!v39)
                  {
                    if (qword_1000C1238 != -1)
                    {
                      sub_100052CF0();
                    }

                    self = v54;
                    v48 = qword_1000C1240;
                    if (os_log_type_enabled(qword_1000C1240, OS_LOG_TYPE_ERROR))
                    {
                      *buf = v49;
                      v76 = v63;
                      v77 = 2114;
                      v78 = v21;
                      v79 = 2114;
                      v80 = v36;
                      v81 = 2114;
                      v82 = v37;
                      v83 = 2114;
                      v84 = v38;
                      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Override: invalid code requirements for Service %{public}@, Identifier: %{public}@, Target Identifier: %{public}@, target type: %{public}@, target requirement: %{public}@", buf, 0x34u);
                    }

LABEL_56:

                    v5 = &qword_1000C1000;
                    v6 = &qword_1000C1000;
                    v23 = v60;
                    v24 = v64;
LABEL_57:

                    v15 = v52;
                    goto LABEL_58;
                  }

                  v40 = v39;
                  v41 = [v35 objectForKeyedSubscript:v36];
                  if (!v41)
                  {
                    v41 = +[NSMutableDictionary dictionary];
                    [v35 setObject:v41 forKeyedSubscript:v36];
                  }

                  [v41 setObject:v36 forKeyedSubscript:@"AEReceiverIdentifier"];
                  [v41 setObject:v37 forKeyedSubscript:@"AEReceiverIdentifierType"];
                  [v41 setObject:v40 forKeyedSubscript:@"AEReceiverCodeRequirementData"];

                  self = v54;
                  v5 = &qword_1000C1000;
                  v6 = &qword_1000C1000;
                }

                else
                {
                  v41 = v35;
                }

                [v41 setObject:v21 forKeyedSubscript:@"Identifier"];
                [v41 setObject:v65 forKeyedSubscript:@"IdentifierType"];
                [v41 setObject:v66 forKeyedSubscript:@"Allowed"];
                if (v62)
                {
                  v42 = v62;
                }

                else
                {
                  v42 = &off_1000AE300;
                }

                [v41 setObject:v42 forKeyedSubscript:@"StaticCode"];
                [v41 setObject:v30 forKeyedSubscript:@"CodeRequirementData"];
                if (v5[71] != -1)
                {
                  sub_100052CF0();
                }

                v43 = v6[72];
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                {
                  v44 = v43;
                  v45 = [(TCCDPolicyOverride *)self policyAccessByIdentifier];
                  v46 = [v45 objectForKeyedSubscript:v21];
                  *buf = 138412546;
                  v76 = v21;
                  v77 = 2112;
                  v78 = v46;
                  _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "Override: policyAccessByIdentifier[%@] = %@", buf, 0x16u);

                  v6 = &qword_1000C1000;
                  self = v54;
                }

                v17 = v61 + 1;
              }

              while (v56 != (v61 + 1));
              v15 = v52;
              v56 = [v55 countByEnumeratingWithState:&v67 objects:v85 count:16];
              if (v56)
              {
                continue;
              }

              break;
            }
          }

LABEL_58:

          v15 = v15 + 1;
        }

        while (v15 != v51);
        v51 = [obj countByEnumeratingWithState:&v71 objects:v86 count:16];
      }

      while (v51);
    }
  }
}

- (void)addBundleIdWithSpecifiedAuth:(unint64_t)a3 infoDict:(id)a4 message:(id)a5
{
  v16 = a4;
  v8 = a5;
  v9 = [v16 objectForKeyedSubscript:@"Allowed"];
  v10 = [(TCCDPolicyOverride *)self allowedParser:v9];

  v11 = [v10 BOOLValue];
  if (a3 == 2 && (v11 & 1) != 0 || (v12 = [v10 BOOLValue], !a3) && (v12 & 1) == 0)
  {
    v13 = [v16 objectForKeyedSubscript:@"IdentifierType"];
    if ([v13 isEqualToString:@"bundleID"])
    {
      v14 = [v16 objectForKeyedSubscript:@"Identifier"];
      v15 = xpc_string_create([v14 UTF8String]);
      xpc_array_append_value(v8, v15);
    }
  }
}

- (BOOL)_locked_populateGeneralAuthorzationFieldsForService:(id)a3 info:(id)a4 entry:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v10 objectForKeyedSubscript:@"Allowed"];
  v12 = [(TCCDPolicyOverride *)self allowedParser:v11];

  v13 = [v10 objectForKeyedSubscript:@"CodeRequirementData"];

  if (v13)
  {
    BytePtr = CFDataGetBytePtr(v13);
    Length = CFDataGetLength(v13);
    xpc_dictionary_set_data(v9, "code_requirement", BytePtr, Length);
    v16 = [v8 name];
    xpc_dictionary_set_string(v9, "service", [v16 UTF8String]);

    xpc_dictionary_set_BOOL(v9, "granted", [v12 BOOLValue]);
    if ([v12 BOOLValue])
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    xpc_dictionary_set_uint64(v9, "auth_value", v17);
    xpc_dictionary_set_uint64(v9, "auth_reason", 6uLL);
    xpc_dictionary_set_uint64(v9, "auth_version", [v8 authorizationVersionNumber]);
    xpc_dictionary_set_BOOL(v9, "non_modifiable", 1);
  }

  else
  {
    v18 = +[TCCDPlatform currentPlatform];
    v19 = [v18 server];
    v20 = [v19 logHandle];

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100052EC4(v8, v20);
    }
  }

  return v13 != 0;
}

- (BOOL)_locked_populateIndirectAuthorzationFieldsForService:(id)a3 info:(id)a4 entry:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 objectForKeyedSubscript:@"AEReceiverCodeRequirementData"];

  v12 = [v9 objectForKeyedSubscript:@"AEReceiverIdentifier"];
  v13 = [v9 objectForKeyedSubscript:@"AEReceiverIdentifierType"];
  v14 = v13;
  if (!v11 || !v12 || !v13)
  {
    v18 = +[TCCDPlatform currentPlatform];
    v19 = [v18 server];
    v20 = [v19 logHandle];

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100052FF0();
    }

    goto LABEL_10;
  }

  BytePtr = CFDataGetBytePtr(v11);
  Length = CFDataGetLength(v11);
  xpc_dictionary_set_data(v10, "indirect_object_code_requirement", BytePtr, Length);
  xpc_dictionary_set_string(v10, "indirect_object_identifier", [v12 UTF8String]);
  xpc_dictionary_set_string(v10, "indirect_object_type", [v14 UTF8String]);
  if (![(TCCDPolicyOverride *)self _locked_populateGeneralAuthorzationFieldsForService:v8 info:v9 entry:v10])
  {
    v21 = +[TCCDPlatform currentPlatform];
    v22 = [v21 server];
    v20 = [v22 logHandle];

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100052F70();
    }

LABEL_10:

    v17 = 0;
    goto LABEL_11;
  }

  v17 = 1;
LABEL_11:

  return v17;
}

- (void)_locked_populatePolicyAuthorizationsForClient:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TCCDPolicyOverride *)self policyAccessByIdentifier];
  v31 = v6;
  v9 = [v8 objectForKeyedSubscript:v6];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v10 = v9;
  v34 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v34)
  {
    v11 = *v41;
    v32 = *v41;
    v33 = v10;
    do
    {
      v12 = 0;
      do
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v10);
        }

        v35 = v12;
        v13 = *(*(&v40 + 1) + 8 * v12);
        v14 = [v10 objectForKeyedSubscript:v13];
        v15 = +[TCCDPlatform currentPlatform];
        v16 = [v15 serviceByName:v13];

        v17 = +[TCCDPlatform currentPlatform];
        v18 = [v17 server];
        v19 = [v18 macos_isSystemServer];
        v20 = [v16 macos_isPerSystem];

        if (v19 == v20)
        {
          v22 = xpc_dictionary_create(0, 0, 0);
          v23 = [v16 name];
          v24 = [v23 isEqualToString:@"kTCCServiceAppleEvents"];

          if (v24)
          {
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v25 = v14;
            v26 = [v25 countByEnumeratingWithState:&v36 objects:v44 count:16];
            v14 = v25;
            if (v26)
            {
              v27 = v26;
              v28 = *v37;
              v14 = v25;
              do
              {
                v29 = 0;
                v30 = v14;
                do
                {
                  if (*v37 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v14 = [v30 objectForKeyedSubscript:*(*(&v36 + 1) + 8 * v29)];

                  if ([(TCCDPolicyOverride *)self _locked_populateIndirectAuthorzationFieldsForService:v16 info:v14 entry:v22])
                  {
                    xpc_array_append_value(v7, v22);
                  }

                  v29 = v29 + 1;
                  v30 = v14;
                }

                while (v27 != v29);
                v27 = [v25 countByEnumeratingWithState:&v36 objects:v44 count:16];
              }

              while (v27);
            }

            v11 = v32;
            v10 = v33;
          }

          else if ([(TCCDPolicyOverride *)self _locked_populateGeneralAuthorzationFieldsForService:v16 info:v14 entry:v22])
          {
            xpc_array_append_value(v7, v22);
          }

          v21 = v35;
        }

        else
        {
          v21 = v35;
        }

        v12 = v21 + 1;
      }

      while (v12 != v34);
      v34 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v34);
  }
}

- (BOOL)_locked_populatePolicyAuthorizationForSubjectWithInfoDict:(id)a3 message:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"IdentifierType"];
  v8 = [v7 isEqualToString:@"path"];
  v9 = [v5 objectForKeyedSubscript:@"CodeRequirementData"];

  if (v9)
  {
    BytePtr = CFDataGetBytePtr(v9);
    Length = CFDataGetLength(v9);
    xpc_dictionary_set_data(v6, "code_requirement", BytePtr, Length);
  }

  v12 = [v5 objectForKeyedSubscript:@"Identifier"];
  if (v12)
  {
    v13 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v13, "TCCD_MSG_IDENTITY_TYPE_KEY", v8);
    xpc_dictionary_set_string(v13, "TCCD_MSG_IDENTITY_ID_KEY", [v12 UTF8String]);
    xpc_dictionary_set_value(v6, "TCC_MSG_REQUEST_AUTHORIZATION_SUBJECT_IDENTITY_DICTIONARY_KEY", v13);
    v14 = [v12 UTF8String];
    if (v8)
    {
      v15 = "path";
    }

    else
    {
      v15 = "bundle_id";
    }

    xpc_dictionary_set_string(v6, v15, v14);
  }

  else
  {
    v16 = +[TCCDPlatform currentPlatform];
    v17 = [v16 server];
    v18 = [v17 logHandle];

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100053070();
    }
  }

  return v12 != 0;
}

- (void)_locked_populatePolicyAuthorizationsForService:(id)a3 message:(id)a4 specifiedAuth:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[TCCDPlatform currentPlatform];
  v44 = [v10 serviceByName:v8];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v11 = [(TCCDPolicyOverride *)self policyAccessByIdentifier];
  v41 = [v11 countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (!v41)
  {
    goto LABEL_41;
  }

  v40 = *v50;
  v38 = v11;
  v39 = v8;
  while (2)
  {
    v12 = 0;
    do
    {
      if (*v50 != v40)
      {
        objc_enumerationMutation(v11);
      }

      v42 = v12;
      v13 = *(*(&v49 + 1) + 8 * v12);
      v14 = [(TCCDPolicyOverride *)self policyAccessByIdentifier:v38];
      v15 = [v14 objectForKeyedSubscript:v13];

      v43 = v15;
      v16 = [v15 objectForKeyedSubscript:v8];
      v17 = +[TCCDPlatform currentPlatform];
      v18 = [v17 server];
      v19 = v18;
      if (v16)
      {
        v20 = [v18 macos_isSystemServer];
        v21 = [v44 macos_isPerSystem];

        if (v20 != v21)
        {
          v23 = v42;
          v22 = v43;
          goto LABEL_29;
        }

        v25 = xpc_dictionary_create(0, 0, 0);
        if (!v25)
        {
          v35 = +[TCCDPlatform currentPlatform];
          v36 = [v35 server];
          v37 = [v36 logHandle];

          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            sub_1000530F0();
          }

          goto LABEL_41;
        }

        v24 = v25;
        v26 = [v44 name];
        v27 = [v26 isEqualToString:@"kTCCServiceAppleEvents"];

        if (!v27)
        {
          v23 = v42;
          v22 = v43;
          if (a5 == 1)
          {
            if ([(TCCDPolicyOverride *)self _locked_populatePolicyAuthorizationForSubjectWithInfoDict:v16 message:v24]&& [(TCCDPolicyOverride *)self _locked_populateGeneralAuthorzationFieldsForService:v44 info:v16 entry:v24])
            {
              xpc_array_append_value(v9, v24);
            }
          }

          else
          {
            [(TCCDPolicyOverride *)self addBundleIdWithSpecifiedAuth:a5 infoDict:v16 message:v9];
          }

          goto LABEL_28;
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v28 = v16;
        v29 = [v28 countByEnumeratingWithState:&v45 objects:v53 count:16];
        v16 = v28;
        if (v29)
        {
          v30 = v29;
          v31 = *v46;
          v16 = v28;
          do
          {
            for (i = 0; i != v30; i = i + 1)
            {
              v33 = v16;
              if (*v46 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v16 = [v16 objectForKeyedSubscript:*(*(&v45 + 1) + 8 * i)];

              if (a5 == 1)
              {
                if ([(TCCDPolicyOverride *)self _locked_populatePolicyAuthorizationForSubjectWithInfoDict:v16 message:v24]&& [(TCCDPolicyOverride *)self _locked_populateIndirectAuthorzationFieldsForService:v44 info:v16 entry:v24])
                {
                  xpc_array_append_value(v9, v24);
                }
              }

              else
              {
                [(TCCDPolicyOverride *)self addBundleIdWithSpecifiedAuth:a5 infoDict:v16 message:v9];
              }
            }

            v30 = [v28 countByEnumeratingWithState:&v45 objects:v53 count:16];
          }

          while (v30);
        }

        v11 = v38;
        v8 = v39;
      }

      else
      {
        v24 = [v18 logHandle];

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v55 = v13;
          v56 = 2112;
          v57 = v8;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "client: %@  has no MDM records for service: %@", buf, 0x16u);
        }

        v16 = 0;
      }

      v23 = v42;
      v22 = v43;
LABEL_28:

LABEL_29:
      v12 = v23 + 1;
    }

    while (v12 != v41);
    v34 = [v11 countByEnumeratingWithState:&v49 objects:v58 count:16];
    v41 = v34;
    if (v34)
    {
      continue;
    }

    break;
  }

LABEL_41:
}

- (void)watchPlistChanges
{
  v3 = [(TCCDPolicyOverride *)self watchedFileVnodeSource];

  if (v3)
  {
    v4 = [(TCCDPolicyOverride *)self watchedFileVnodeSource];
    dispatch_source_cancel(v4);

    [(TCCDPolicyOverride *)self setWatchedFileVnodeSource:0];
  }

  v5 = [(TCCDPolicyOverride *)self watchedPath];
  v6 = v5;
  if (v5)
  {
    v7 = open([v5 UTF8String], 0x8000);
    if ((v7 & 0x80000000) != 0)
    {
      if (qword_1000C1238 != -1)
      {
        sub_100052CC8();
      }

      v15 = qword_1000C1240;
      if (os_log_type_enabled(qword_1000C1240, OS_LOG_TYPE_ERROR))
      {
        sub_100053130(v6, v15);
      }
    }

    else
    {
      v8 = v7;
      v9 = dispatch_get_global_queue(0, 0);
      v10 = dispatch_source_create(&_dispatch_source_type_vnode, v8, 0x4FuLL, v9);
      [(TCCDPolicyOverride *)self setWatchedFileVnodeSource:v10];

      [(TCCDPolicyOverride *)self watchedFileVnodeSource];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100052AB4;
      v11 = handler[3] = &unk_1000A5098;
      v19 = v11;
      v12 = v6;
      v20 = v12;
      v21 = self;
      dispatch_source_set_event_handler(v11, handler);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100052BAC;
      v16[3] = &unk_1000A4F58;
      v13 = v11;
      v17 = v13;
      dispatch_source_set_cancel_handler(v13, v16);
      dispatch_resume(v13);
      if (qword_1000C1238 != -1)
      {
        sub_100052CF0();
      }

      v14 = qword_1000C1240;
      if (os_log_type_enabled(qword_1000C1240, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v23 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Override: watchPlistChanges: watching: %{public}@", buf, 0xCu);
      }
    }
  }
}

@end