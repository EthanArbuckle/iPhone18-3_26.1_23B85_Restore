@interface TCCDPolicyOverride
+ (BOOL)isMDMPolicyOverrideActive;
+ (id)logHandle;
+ (id)orderedOverridePolicies;
+ (id)queue;
+ (unint64_t)evaluateOverridePolicyForAccessByIdentity:(id)identity toService:(id)service withIndirectObjectIdentityIdentity:(id)identityIdentity authorizationReason:(unint64_t *)reason;
+ (void)loadPolicyData;
+ (void)populatePolicyAuthorizationsForClient:(id)client message:(id)message;
+ (void)populatePolicyAuthorizationsForService:(id)service message:(id)message specifiedAuth:(unint64_t)auth;
- (BOOL)_locked_populateGeneralAuthorzationFieldsForService:(id)service info:(id)info entry:(id)entry;
- (BOOL)_locked_populateIndirectAuthorzationFieldsForService:(id)service info:(id)info entry:(id)entry;
- (BOOL)_locked_populatePolicyAuthorizationForSubjectWithInfoDict:(id)dict message:(id)message;
- (BOOL)isActive;
- (BOOL)validateEntry:(id)entry identifierType:(id)type codeRequirementString:(id)string serviceName:(id)name allowed:(id)allowed comment:(id)comment;
- (TCCDPolicyOverride)init;
- (void)_locked_populatePolicyAuthorizationsForClient:(id)client message:(id)message;
- (void)_locked_populatePolicyAuthorizationsForService:(id)service message:(id)message specifiedAuth:(unint64_t)auth;
- (void)addBundleIdWithSpecifiedAuth:(unint64_t)auth infoDict:(id)dict message:(id)message;
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
  orderedOverridePolicies = [self orderedOverridePolicies];
  firstObject = [orderedOverridePolicies firstObject];
  isActive = [firstObject isActive];

  return isActive;
}

+ (void)loadPolicyData
{
  orderedOverridePolicies = [self orderedOverridePolicies];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [orderedOverridePolicies countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(orderedOverridePolicies);
        }

        [*(*(&v7 + 1) + 8 * v6) loadAndParse];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [orderedOverridePolicies countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (unint64_t)evaluateOverridePolicyForAccessByIdentity:(id)identity toService:(id)service withIndirectObjectIdentityIdentity:(id)identityIdentity authorizationReason:(unint64_t *)reason
{
  identityCopy = identity;
  serviceCopy = service;
  identityIdentityCopy = identityIdentity;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  orderedOverridePolicies = [self orderedOverridePolicies];
  if ([orderedOverridePolicies count])
  {
    queue = [self queue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000501E4;
    v17[3] = &unk_1000A6948;
    v18 = orderedOverridePolicies;
    v19 = serviceCopy;
    v22 = &v24;
    v20 = identityCopy;
    v21 = identityIdentityCopy;
    reasonCopy = reason;
    dispatch_sync(queue, v17);
  }

  v15 = v25[3];

  _Block_object_dispose(&v24, 8);
  return v15;
}

+ (void)populatePolicyAuthorizationsForClient:(id)client message:(id)message
{
  clientCopy = client;
  messageCopy = message;
  orderedOverridePolicies = [self orderedOverridePolicies];
  if ([orderedOverridePolicies count])
  {
    queue = [self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000504E4;
    block[3] = &unk_1000A5098;
    v11 = orderedOverridePolicies;
    v12 = clientCopy;
    v13 = messageCopy;
    dispatch_sync(queue, block);
  }
}

+ (void)populatePolicyAuthorizationsForService:(id)service message:(id)message specifiedAuth:(unint64_t)auth
{
  serviceCopy = service;
  messageCopy = message;
  orderedOverridePolicies = [self orderedOverridePolicies];
  if ([orderedOverridePolicies count])
  {
    queue = [self queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100050788;
    v12[3] = &unk_1000A6970;
    v13 = orderedOverridePolicies;
    v14 = serviceCopy;
    v15 = messageCopy;
    authCopy = auth;
    dispatch_sync(queue, v12);
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
  plistDictionary = [(TCCDPolicyOverride *)self plistDictionary];
  if (plistDictionary)
  {
    plistDictionary2 = [(TCCDPolicyOverride *)self plistDictionary];
    if ([plistDictionary2 count])
    {
      policyAccessByIdentifier = [(TCCDPolicyOverride *)self policyAccessByIdentifier];
      v6 = [policyAccessByIdentifier count] != 0;
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
  plistFilePath = [(TCCDPolicyOverride *)self plistFilePath];
  if (plistFilePath)
  {
    if (qword_1000C1238 != -1)
    {
      sub_100052CC8();
    }

    v4 = qword_1000C1240;
    if (os_log_type_enabled(qword_1000C1240, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v19 = plistFilePath;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Override: loading from: %{public}@", buf, 0xCu);
    }

    v17 = 0;
    v5 = [NSData dataWithContentsOfFile:plistFilePath options:0 error:&v17];
    v6 = v17;
    v7 = v6;
    if (v5)
    {
      v16 = 0;
      v8 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:&v16];
      v9 = v16;

      [(TCCDPolicyOverride *)self setPlistDictionary:v8];
      plistDictionary = [(TCCDPolicyOverride *)self plistDictionary];

      if (!plistDictionary)
      {
        if (qword_1000C1238 != -1)
        {
          sub_100052CF0();
        }

        v11 = qword_1000C1240;
        if (os_log_type_enabled(qword_1000C1240, OS_LOG_TYPE_ERROR))
        {
          sub_100052D18(plistFilePath, v9, v11);
        }
      }

      v7 = v9;
      goto LABEL_31;
    }

    domain = [v6 domain];
    if ([domain isEqualToString:NSCocoaErrorDomain])
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
          v19 = plistFilePath;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Override: no file at: %{public}@", buf, 0xCu);
        }

LABEL_30:
        [(TCCDPolicyOverride *)self setPlistDictionary:0];
LABEL_31:

        goto LABEL_32;
      }

      code = [v7 code];

      if (code == 260)
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
      sub_100052D90(plistFilePath, v7, v13);
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

- (BOOL)validateEntry:(id)entry identifierType:(id)type codeRequirementString:(id)string serviceName:(id)name allowed:(id)allowed comment:(id)comment
{
  entryCopy = entry;
  typeCopy = type;
  stringCopy = string;
  nameCopy = name;
  allowedCopy = allowed;
  commentCopy = comment;
  if (!stringCopy || !entryCopy || !typeCopy || !allowedCopy)
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
    v27 = nameCopy;
    v28 = 2114;
    v29 = entryCopy;
    v30 = 2114;
    v31 = typeCopy;
    v32 = 2114;
    v33 = stringCopy;
    v34 = 2114;
    v35 = commentCopy;
    v21 = "Override: missing configuration info for Service: %{public}@: Identifier: %{public}@, type: %{public}@, code requirement: %{public}@, comment: %{public}@";
    v22 = v20;
    v23 = 52;
    goto LABEL_16;
  }

  if (([typeCopy isEqualToString:@"bundleID"] & 1) == 0 && (objc_msgSend(typeCopy, "isEqualToString:", @"path") & 1) == 0)
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
    v27 = nameCopy;
    v28 = 2114;
    v29 = entryCopy;
    v30 = 2114;
    v31 = typeCopy;
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
    plistDictionary = [(TCCDPolicyOverride *)self plistDictionary];
    if (plistDictionary)
    {
      plistDictionary2 = [(TCCDPolicyOverride *)self plistDictionary];
      v3 = [plistDictionary2 objectForKeyedSubscript:@"Services"];
      v9 = [v3 count];
    }

    else
    {
      v9 = -1;
    }

    *buf = 138412546;
    selfCopy = self;
    v77 = 2048;
    v78 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Override: parsing plist for %@ with %ld entries.", buf, 0x16u);
    if (plistDictionary)
    {
    }
  }

  plistDictionary3 = [(TCCDPolicyOverride *)self plistDictionary];

  if (plistDictionary3)
  {
    policyAccessByIdentifier = [(TCCDPolicyOverride *)self policyAccessByIdentifier];
    [policyAccessByIdentifier removeAllObjects];

    plistDictionary4 = [(TCCDPolicyOverride *)self plistDictionary];
    v13 = [plistDictionary4 objectForKeyedSubscript:@"Services"];

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
      selfCopy2 = self;
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
                    selfCopy = v63;
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
                  selfCopy = v63;
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
                policyAccessByIdentifier2 = [(TCCDPolicyOverride *)self policyAccessByIdentifier];
                v33 = [policyAccessByIdentifier2 objectForKeyedSubscript:v21];

                if (!v33)
                {
                  v33 = +[NSMutableDictionary dictionary];
                  policyAccessByIdentifier3 = [(TCCDPolicyOverride *)self policyAccessByIdentifier];
                  [policyAccessByIdentifier3 setObject:v33 forKeyedSubscript:v21];
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

                    self = selfCopy2;
                    v48 = qword_1000C1240;
                    if (os_log_type_enabled(qword_1000C1240, OS_LOG_TYPE_ERROR))
                    {
                      *buf = v49;
                      selfCopy = v63;
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

                  self = selfCopy2;
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
                  policyAccessByIdentifier4 = [(TCCDPolicyOverride *)self policyAccessByIdentifier];
                  v46 = [policyAccessByIdentifier4 objectForKeyedSubscript:v21];
                  *buf = 138412546;
                  selfCopy = v21;
                  v77 = 2112;
                  v78 = v46;
                  _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "Override: policyAccessByIdentifier[%@] = %@", buf, 0x16u);

                  v6 = &qword_1000C1000;
                  self = selfCopy2;
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

- (void)addBundleIdWithSpecifiedAuth:(unint64_t)auth infoDict:(id)dict message:(id)message
{
  dictCopy = dict;
  messageCopy = message;
  v9 = [dictCopy objectForKeyedSubscript:@"Allowed"];
  v10 = [(TCCDPolicyOverride *)self allowedParser:v9];

  bOOLValue = [v10 BOOLValue];
  if (auth == 2 && (bOOLValue & 1) != 0 || (v12 = [v10 BOOLValue], !auth) && (v12 & 1) == 0)
  {
    v13 = [dictCopy objectForKeyedSubscript:@"IdentifierType"];
    if ([v13 isEqualToString:@"bundleID"])
    {
      v14 = [dictCopy objectForKeyedSubscript:@"Identifier"];
      v15 = xpc_string_create([v14 UTF8String]);
      xpc_array_append_value(messageCopy, v15);
    }
  }
}

- (BOOL)_locked_populateGeneralAuthorzationFieldsForService:(id)service info:(id)info entry:(id)entry
{
  serviceCopy = service;
  entryCopy = entry;
  infoCopy = info;
  v11 = [infoCopy objectForKeyedSubscript:@"Allowed"];
  v12 = [(TCCDPolicyOverride *)self allowedParser:v11];

  v13 = [infoCopy objectForKeyedSubscript:@"CodeRequirementData"];

  if (v13)
  {
    BytePtr = CFDataGetBytePtr(v13);
    Length = CFDataGetLength(v13);
    xpc_dictionary_set_data(entryCopy, "code_requirement", BytePtr, Length);
    name = [serviceCopy name];
    xpc_dictionary_set_string(entryCopy, "service", [name UTF8String]);

    xpc_dictionary_set_BOOL(entryCopy, "granted", [v12 BOOLValue]);
    if ([v12 BOOLValue])
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    xpc_dictionary_set_uint64(entryCopy, "auth_value", v17);
    xpc_dictionary_set_uint64(entryCopy, "auth_reason", 6uLL);
    xpc_dictionary_set_uint64(entryCopy, "auth_version", [serviceCopy authorizationVersionNumber]);
    xpc_dictionary_set_BOOL(entryCopy, "non_modifiable", 1);
  }

  else
  {
    v18 = +[TCCDPlatform currentPlatform];
    server = [v18 server];
    logHandle = [server logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_100052EC4(serviceCopy, logHandle);
    }
  }

  return v13 != 0;
}

- (BOOL)_locked_populateIndirectAuthorzationFieldsForService:(id)service info:(id)info entry:(id)entry
{
  serviceCopy = service;
  infoCopy = info;
  entryCopy = entry;
  v11 = [infoCopy objectForKeyedSubscript:@"AEReceiverCodeRequirementData"];

  v12 = [infoCopy objectForKeyedSubscript:@"AEReceiverIdentifier"];
  v13 = [infoCopy objectForKeyedSubscript:@"AEReceiverIdentifierType"];
  v14 = v13;
  if (!v11 || !v12 || !v13)
  {
    v18 = +[TCCDPlatform currentPlatform];
    server = [v18 server];
    logHandle = [server logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_100052FF0();
    }

    goto LABEL_10;
  }

  BytePtr = CFDataGetBytePtr(v11);
  Length = CFDataGetLength(v11);
  xpc_dictionary_set_data(entryCopy, "indirect_object_code_requirement", BytePtr, Length);
  xpc_dictionary_set_string(entryCopy, "indirect_object_identifier", [v12 UTF8String]);
  xpc_dictionary_set_string(entryCopy, "indirect_object_type", [v14 UTF8String]);
  if (![(TCCDPolicyOverride *)self _locked_populateGeneralAuthorzationFieldsForService:serviceCopy info:infoCopy entry:entryCopy])
  {
    v21 = +[TCCDPlatform currentPlatform];
    server2 = [v21 server];
    logHandle = [server2 logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
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

- (void)_locked_populatePolicyAuthorizationsForClient:(id)client message:(id)message
{
  clientCopy = client;
  messageCopy = message;
  policyAccessByIdentifier = [(TCCDPolicyOverride *)self policyAccessByIdentifier];
  v31 = clientCopy;
  v9 = [policyAccessByIdentifier objectForKeyedSubscript:clientCopy];

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
        server = [v17 server];
        macos_isSystemServer = [server macos_isSystemServer];
        macos_isPerSystem = [v16 macos_isPerSystem];

        if (macos_isSystemServer == macos_isPerSystem)
        {
          v22 = xpc_dictionary_create(0, 0, 0);
          name = [v16 name];
          v24 = [name isEqualToString:@"kTCCServiceAppleEvents"];

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
                    xpc_array_append_value(messageCopy, v22);
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
            xpc_array_append_value(messageCopy, v22);
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

- (BOOL)_locked_populatePolicyAuthorizationForSubjectWithInfoDict:(id)dict message:(id)message
{
  dictCopy = dict;
  messageCopy = message;
  v7 = [dictCopy objectForKeyedSubscript:@"IdentifierType"];
  v8 = [v7 isEqualToString:@"path"];
  v9 = [dictCopy objectForKeyedSubscript:@"CodeRequirementData"];

  if (v9)
  {
    BytePtr = CFDataGetBytePtr(v9);
    Length = CFDataGetLength(v9);
    xpc_dictionary_set_data(messageCopy, "code_requirement", BytePtr, Length);
  }

  v12 = [dictCopy objectForKeyedSubscript:@"Identifier"];
  if (v12)
  {
    v13 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v13, "TCCD_MSG_IDENTITY_TYPE_KEY", v8);
    xpc_dictionary_set_string(v13, "TCCD_MSG_IDENTITY_ID_KEY", [v12 UTF8String]);
    xpc_dictionary_set_value(messageCopy, "TCC_MSG_REQUEST_AUTHORIZATION_SUBJECT_IDENTITY_DICTIONARY_KEY", v13);
    uTF8String = [v12 UTF8String];
    if (v8)
    {
      v15 = "path";
    }

    else
    {
      v15 = "bundle_id";
    }

    xpc_dictionary_set_string(messageCopy, v15, uTF8String);
  }

  else
  {
    v16 = +[TCCDPlatform currentPlatform];
    server = [v16 server];
    logHandle = [server logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_100053070();
    }
  }

  return v12 != 0;
}

- (void)_locked_populatePolicyAuthorizationsForService:(id)service message:(id)message specifiedAuth:(unint64_t)auth
{
  serviceCopy = service;
  messageCopy = message;
  v10 = +[TCCDPlatform currentPlatform];
  v44 = [v10 serviceByName:serviceCopy];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  policyAccessByIdentifier = [(TCCDPolicyOverride *)self policyAccessByIdentifier];
  v41 = [policyAccessByIdentifier countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (!v41)
  {
    goto LABEL_41;
  }

  v40 = *v50;
  v38 = policyAccessByIdentifier;
  v39 = serviceCopy;
  while (2)
  {
    v12 = 0;
    do
    {
      if (*v50 != v40)
      {
        objc_enumerationMutation(policyAccessByIdentifier);
      }

      v42 = v12;
      v13 = *(*(&v49 + 1) + 8 * v12);
      v14 = [(TCCDPolicyOverride *)self policyAccessByIdentifier:v38];
      v15 = [v14 objectForKeyedSubscript:v13];

      v43 = v15;
      v16 = [v15 objectForKeyedSubscript:serviceCopy];
      v17 = +[TCCDPlatform currentPlatform];
      server = [v17 server];
      v19 = server;
      if (v16)
      {
        macos_isSystemServer = [server macos_isSystemServer];
        macos_isPerSystem = [v44 macos_isPerSystem];

        if (macos_isSystemServer != macos_isPerSystem)
        {
          v23 = v42;
          v22 = v43;
          goto LABEL_29;
        }

        v25 = xpc_dictionary_create(0, 0, 0);
        if (!v25)
        {
          v35 = +[TCCDPlatform currentPlatform];
          server2 = [v35 server];
          logHandle = [server2 logHandle];

          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
          {
            sub_1000530F0();
          }

          goto LABEL_41;
        }

        logHandle2 = v25;
        name = [v44 name];
        v27 = [name isEqualToString:@"kTCCServiceAppleEvents"];

        if (!v27)
        {
          v23 = v42;
          v22 = v43;
          if (auth == 1)
          {
            if ([(TCCDPolicyOverride *)self _locked_populatePolicyAuthorizationForSubjectWithInfoDict:v16 message:logHandle2]&& [(TCCDPolicyOverride *)self _locked_populateGeneralAuthorzationFieldsForService:v44 info:v16 entry:logHandle2])
            {
              xpc_array_append_value(messageCopy, logHandle2);
            }
          }

          else
          {
            [(TCCDPolicyOverride *)self addBundleIdWithSpecifiedAuth:auth infoDict:v16 message:messageCopy];
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

              if (auth == 1)
              {
                if ([(TCCDPolicyOverride *)self _locked_populatePolicyAuthorizationForSubjectWithInfoDict:v16 message:logHandle2]&& [(TCCDPolicyOverride *)self _locked_populateIndirectAuthorzationFieldsForService:v44 info:v16 entry:logHandle2])
                {
                  xpc_array_append_value(messageCopy, logHandle2);
                }
              }

              else
              {
                [(TCCDPolicyOverride *)self addBundleIdWithSpecifiedAuth:auth infoDict:v16 message:messageCopy];
              }
            }

            v30 = [v28 countByEnumeratingWithState:&v45 objects:v53 count:16];
          }

          while (v30);
        }

        policyAccessByIdentifier = v38;
        serviceCopy = v39;
      }

      else
      {
        logHandle2 = [server logHandle];

        if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v55 = v13;
          v56 = 2112;
          v57 = serviceCopy;
          _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "client: %@  has no MDM records for service: %@", buf, 0x16u);
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
    v34 = [policyAccessByIdentifier countByEnumeratingWithState:&v49 objects:v58 count:16];
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
  watchedFileVnodeSource = [(TCCDPolicyOverride *)self watchedFileVnodeSource];

  if (watchedFileVnodeSource)
  {
    watchedFileVnodeSource2 = [(TCCDPolicyOverride *)self watchedFileVnodeSource];
    dispatch_source_cancel(watchedFileVnodeSource2);

    [(TCCDPolicyOverride *)self setWatchedFileVnodeSource:0];
  }

  watchedPath = [(TCCDPolicyOverride *)self watchedPath];
  v6 = watchedPath;
  if (watchedPath)
  {
    v7 = open([watchedPath UTF8String], 0x8000);
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
      selfCopy = self;
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