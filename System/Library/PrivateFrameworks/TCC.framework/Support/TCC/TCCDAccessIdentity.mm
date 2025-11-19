@interface TCCDAccessIdentity
+ (id)_createCacheKeyWithAccessorAuditToken:(id *)a3 responsibleAuditToken:(id *)a4 isSpecificIdentity:(BOOL)a5;
+ (id)cachedAccessIdentityForAccessorAuditToken:(id *)a3 responsibleAuditToken:(id *)a4 isSpecificIdentity:(BOOL)a5;
+ (void)_initIdentityCache;
+ (void)cacheAccessIdentity:(id)a3 forAccessorAuditToken:(id *)a4 responsibleAuditToken:(id *)a5 isSpecificIdentity:(BOOL)a6;
+ (void)clearCache;
- (BOOL)_deriveIdentityFromAttributionChain:(id)a3 preferMostSpecificIdentifier:(BOOL)a4;
- (BOOL)getSDKVersion:(unsigned int *)a3 platformType:(unsigned int *)a4;
- (BOOL)isEqualToCachedIdentity:(id)a3;
- (BOOL)isPlugInWithExtensionPointIdentifier:(id)a3;
- (NSString)attributionPath;
- (TCCDAccessIdentity)initWithAttributionChain:(id)a3 preferMostSpecificIdentifier:(BOOL)a4;
- (TCCDAccessIdentity)initWithBundleIdentifier:(id)a3 isWK2Proxy:(BOOL)a4;
- (TCCDAccessIdentity)initWithIdentifier:(id)a3 type:(int)a4 executableURL:(id)a5 SDKVersion:(unsigned int)a6 platformType:(unsigned int)a7;
- (TCCDAccessIdentity)initWithMessage:(id)a3;
- (id)_initExplicitlyAssumedIdentityFromRequestContext:(id)a3;
- (id)_initImplicitlyAssumedIdentityFromRequestContext:(id)a3;
- (id)_initWithAccessIdentity:(id)a3;
- (id)initAssumedIdentityWithRequestContext:(id)a3;
- (void)_makeDisplayNameBlockForURL:(id)a3;
- (void)_updateFromAccessIdentity:(id)a3;
@end

@implementation TCCDAccessIdentity

+ (void)_initIdentityCache
{
  if (qword_1000C1108 != -1)
  {
    sub_10002D884();
  }
}

+ (id)_createCacheKeyWithAccessorAuditToken:(id *)a3 responsibleAuditToken:(id *)a4 isSpecificIdentity:(BOOL)a5
{
  v17 = a5;
  v7 = [[NSMutableData alloc] initWithBytes:a3 length:32];
  v8 = v7;
  if (a4)
  {
    v9 = *a3->var0 == *a4->var0 && *&a3->var0[2] == *&a4->var0[2];
    v10 = v9 && *&a3->var0[4] == *&a4->var0[4];
    if (!v10 || *&a3->var0[6] != *&a4->var0[6])
    {
      v12 = *a3->var0 == qword_1000C1110 && *&a3->var0[2] == *algn_1000C1118;
      v13 = v12 && *&a3->var0[4] == qword_1000C1120;
      if (!v13 || *&a3->var0[6] != unk_1000C1128)
      {
        [v7 appendBytes:a4 length:32];
      }
    }
  }

  [v8 appendBytes:&v17 length:1];
  v15 = [v8 copy];

  return v15;
}

- (BOOL)isEqualToCachedIdentity:(id)a3
{
  v5 = a3;
  p_isa = &v5->super.isa;
  if (v5 == self)
  {
    v23 = 1;
    goto LABEL_28;
  }

  if (!v5)
  {
    v23 = 0;
    goto LABEL_28;
  }

  client_type = self->_client_type;
  v8 = [(TCCDAccessIdentity *)v5 client_type];
  v9 = client_type == v8;
  identifier = self->_identifier;
  v11 = identifier;
  if (identifier)
  {
LABEL_6:
    v12 = client_type == v8;
    v13 = [p_isa identifier];
    v9 = v12 & [(NSString *)v11 isEqualToString:v13];

    if (identifier)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = [p_isa identifier];
  if (v3)
  {
    v11 = self->_identifier;
    goto LABEL_6;
  }

LABEL_7:

LABEL_8:
  policy_id = self->_policy_id;
  v15 = policy_id;
  if (policy_id)
  {
    goto LABEL_11;
  }

  v3 = [p_isa policy_id];
  if (v3)
  {
    v15 = self->_policy_id;
LABEL_11:
    v16 = [p_isa policy_id];
    v9 &= [(NSNumber *)v15 isEqualToNumber:v16];

    if (policy_id)
    {
      goto LABEL_13;
    }
  }

LABEL_13:
  path = self->_path;
  v18 = path;
  if (path)
  {
    goto LABEL_16;
  }

  v3 = [p_isa path];
  if (v3)
  {
    v18 = self->_path;
LABEL_16:
    v19 = [p_isa path];
    v9 &= [(NSString *)v18 isEqualToString:v19];

    if (path)
    {
      goto LABEL_18;
    }
  }

LABEL_18:
  bundle = self->_bundle;
  v21 = bundle;
  if (bundle)
  {
    goto LABEL_21;
  }

  v3 = [p_isa bundle];
  if (v3)
  {
    v21 = self->_bundle;
LABEL_21:
    v22 = [p_isa bundle];
    v9 &= [(TCCDBundle *)v21 isEqual:v22];

    if (bundle)
    {
      goto LABEL_23;
    }
  }

LABEL_23:
  if (self->displayNameBlock == p_isa[1])
  {
    v23 = v9;
  }

  else
  {
    v23 = 0;
  }

LABEL_28:

  return v23;
}

+ (void)clearCache
{
  v2 = [[NSMutableDictionary alloc] initWithCapacity:40];
  v3 = qword_1000C10F8;
  qword_1000C10F8 = v2;

  qword_1000C1100 = [[NSMutableArray alloc] initWithCapacity:40];

  _objc_release_x1();
}

+ (id)cachedAccessIdentityForAccessorAuditToken:(id *)a3 responsibleAuditToken:(id *)a4 isSpecificIdentity:(BOOL)a5
{
  v5 = a5;
  [a1 _initIdentityCache];
  v9 = [a1 _createCacheKeyWithAccessorAuditToken:a3 responsibleAuditToken:a4 isSpecificIdentity:v5];
  v10 = qword_1000C10F8;
  objc_sync_enter(v10);
  v11 = [qword_1000C10F8 objectForKeyedSubscript:v9];
  objc_sync_exit(v10);

  return v11;
}

+ (void)cacheAccessIdentity:(id)a3 forAccessorAuditToken:(id *)a4 responsibleAuditToken:(id *)a5 isSpecificIdentity:(BOOL)a6
{
  v6 = a6;
  v39 = a3;
  [a1 _initIdentityCache];
  v10 = [a1 _createCacheKeyWithAccessorAuditToken:a4 responsibleAuditToken:a5 isSpecificIdentity:v6];
  v11 = qword_1000C10F8;
  objc_sync_enter(v11);
  if ([qword_1000C10F8 count] >= 0x28)
  {
    v12 = [qword_1000C1100 objectAtIndexedSubscript:0];
    v13 = [qword_1000C10F8 objectForKeyedSubscript:v12];
    v14 = +[TCCDPlatform currentPlatform];
    v15 = [v14 server];
    v16 = [v15 logHandle];

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = [v13 identifier];
      sub_10002D898(v17, buf, v16);
    }

    [qword_1000C10F8 removeObjectForKey:v12];
    [qword_1000C1100 removeObjectAtIndex:0];
  }

  v18 = [[TCCDAccessIdentity alloc] _initWithAccessIdentity:v39];
  [qword_1000C10F8 setObject:v18 forKeyedSubscript:v10];
  [qword_1000C1100 addObject:v10];
  v19 = +[TCCDPlatform currentPlatform];
  v20 = [v19 server];
  v21 = [v20 logHandle];
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);

  if (v22)
  {
    v23 = *&a4->var0[4];
    *atoken.val = *a4->var0;
    *&atoken.val[4] = v23;
    v24 = audit_token_to_pid(&atoken);
    v25 = *&a4->var0[4];
    *atoken.val = *a4->var0;
    *&atoken.val[4] = v25;
    v26 = audit_token_to_pidversion(&atoken);
    v27 = *&a4->var0[4];
    *atoken.val = *a4->var0;
    *&atoken.val[4] = v27;
    v28 = [NSMutableString stringWithFormat:@"accessor: ([%d.%d], %d)", v24, v26, audit_token_to_asid(&atoken)];
    if (a5)
    {
      v29 = *&a5->var0[4];
      *atoken.val = *a5->var0;
      *&atoken.val[4] = v29;
      v30 = audit_token_to_pid(&atoken);
      v31 = *&a5->var0[4];
      *atoken.val = *a5->var0;
      *&atoken.val[4] = v31;
      v32 = audit_token_to_pidversion(&atoken);
      v33 = *&a5->var0[4];
      *atoken.val = *a5->var0;
      *&atoken.val[4] = v33;
      [v28 appendFormat:@", responsible: ([%d.%d], %d)", v30, v32, audit_token_to_asid(&atoken)];
    }

    v34 = +[TCCDPlatform currentPlatform];
    v35 = [v34 server];
    v36 = [v35 logHandle];

    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v37 = [v18 identifier];
      v38 = [qword_1000C1100 count];
      atoken.val[0] = 138543874;
      *&atoken.val[1] = v37;
      LOWORD(atoken.val[3]) = 2114;
      *(&atoken.val[3] + 2) = v28;
      HIWORD(atoken.val[5]) = 2048;
      *&atoken.val[6] = v38 - 1;
      _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "identityCache: adding: %{public}@ for %{public}@, idx: %lu", &atoken, 0x20u);
    }
  }

  objc_sync_exit(v11);
}

- (void)_makeDisplayNameBlockForURL:(id)a3
{
  if ([(TCCDAccessIdentity *)self client_type])
  {

    [(TCCDAccessIdentity *)self client_type];
  }

  else
  {
    v4 = self->_identifier;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002B0B0;
    v8[3] = &unk_1000A5D48;
    v9 = v4;
    v5 = v4;
    v6 = objc_retainBlock(v8);
    displayNameBlock = self->displayNameBlock;
    self->displayNameBlock = v6;
  }
}

- (BOOL)_deriveIdentityFromAttributionChain:(id)a3 preferMostSpecificIdentifier:(BOOL)a4
{
  v5 = a3;
  v6 = [v5 responsibleProcess];
  v7 = [v6 responsiblePath];

  v8 = +[TCCDPlatform currentPlatform];
  v9 = [v8 server];
  v10 = [v9 logHandle];

  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10002D8F0(v5, v10);
    }

    v11 = *&self->_responsibleAuditToken.val[4];
    *atoken = *self->_responsibleAuditToken.val;
    *&atoken[16] = v11;
    v12 = [LSBundleRecord bundleRecordForAuditToken:atoken error:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_40:
      v91 = 0;
      v53 = [v5 attributedBundleUsingOutermostBundle:0 computedStaticCodeRef:0 computedNonIdentifiableBundleURL:&v91];
      v10 = v91;
      p_super = &self->_bundle->super;
      self->_bundle = v53;
LABEL_41:

      bundle = self->_bundle;
      if (bundle)
      {
        v55 = [(TCCDBundle *)bundle bundleIdentifier];

        if (v55)
        {
          if (!self->displayNameBlock)
          {
            self->_client_type = 0;
            v56 = [(TCCDBundle *)self->_bundle bundleIdentifier];
            identifier = self->_identifier;
            self->_identifier = v56;

            v58 = [(TCCDBundle *)self->_bundle bundleURL];
            [(TCCDAccessIdentity *)self _makeDisplayNameBlockForURL:v58];
          }

          v59 = +[TCCDPlatform currentPlatform];
          v60 = [v59 server];
          p_super = [v60 logHandle];

          if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
          {
            sub_10002DCE4(self, p_super);
          }

          v27 = 1;
          goto LABEL_51;
        }
      }

      v61 = +[TCCDPlatform currentPlatform];
      v62 = [v61 server];
      p_super = [v62 logHandle];

      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        sub_10002DD70(v5);
      }

LABEL_50:
      v27 = 0;
LABEL_51:

      goto LABEL_52;
    }

    v13 = v12;
    v14 = [v13 URL];
    pluginBundleURL = self->_pluginBundleURL;
    self->_pluginBundleURL = v14;

    v16 = [v13 bundleIdentifier];
    pluginBundleIdentifier = self->_pluginBundleIdentifier;
    self->_pluginBundleIdentifier = v16;

    self->_pluginTargetsSystemExtensionPoint = 1;
    self->_pluginPromptPolicy = 1;
    v18 = [v13 extensionPointRecord];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 SDKDictionary];
      v21 = [v20 objectForKey:@"EXRequiresLegacyInfrastructure" ofClass:objc_opt_class()];
      v22 = [v21 BOOLValue];
      v23 = v22;
      v24 = v22 ? 1 : 2;

      self->_appExtensionType = v24;
      if ((v23 & 1) == 0)
      {
        self->_pluginTargetsSystemExtensionPoint = [v19 extensionPointType] < 2;
        v25 = [v19 TCCPolicy];
        if (v25 >= 3)
        {
          v28 = tcc_access_log();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_10002D99C();
          }

          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        self->_pluginPromptPolicy = v26;
      }
    }

    v29 = tcc_access_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      responsiblePID = self->_responsiblePID;
      v65 = [v19 name];
      pluginPromptPolicy = self->_pluginPromptPolicy;
      appExtensionType = self->_appExtensionType;
      *atoken = 67110146;
      *&atoken[4] = responsiblePID;
      *&atoken[8] = 2114;
      *&atoken[10] = v13;
      *&atoken[18] = 2114;
      *&atoken[20] = v65;
      *&atoken[28] = 2048;
      *&atoken[30] = appExtensionType;
      v101 = 2048;
      v102 = pluginPromptPolicy;
      _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "IDENTITY_ATTRIBUTION: Responsible process (pid=%u) is App Extension: %{public}@, extension point %{public}@, extension type %ld, prompt policy %ld", atoken, 0x30u);
    }

    if (!v13)
    {
      goto LABEL_40;
    }

    p_super = 0;
    v31 = self->_pluginPromptPolicy;
    if (!v31)
    {
LABEL_39:

      goto LABEL_40;
    }

    if (v31 != 2)
    {
      if (v31 == 1)
      {
        v32 = [v13 containingBundleRecord];
        v33 = v32;
        v37 = 0;
        if (v32)
        {
          v34 = [v32 bundleIdentifier];
          if (v34)
          {
            v35 = v34;
            v36 = [v33 URL];

            if (v36)
            {
              v37 = 1;
            }
          }
        }

        v51 = [v33 bundleIdentifier];
        v52 = self->_identifier;
        self->_identifier = v51;

        p_super = [v33 URL];

        if (!v37)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_68;
    }

    v38 = *&self->_responsibleAuditToken.val[4];
    v98 = *self->_responsibleAuditToken.val;
    v99 = v38;
    v39 = *&self->_responsibleAuditToken.val[4];
    *atoken = *self->_responsibleAuditToken.val;
    *&atoken[16] = v39;
    v40 = [NSNumber numberWithInt:audit_token_to_pid(atoken)];
    v97 = 0;
    v41 = [RBSProcessHandle handleForIdentifier:v40 error:&v97];
    v42 = v97;

    if (v41)
    {
      v89 = v42;
      v90 = v41;
      [v41 auditToken];
      *atoken = v98;
      *&atoken[16] = v99;
      v43 = audit_token_to_pid(atoken);
      *atoken = v95;
      *&atoken[16] = v96;
      v44 = audit_token_to_pid(atoken);
      *atoken = v98;
      *&atoken[16] = v99;
      v45 = audit_token_to_pidversion(atoken);
      *atoken = v95;
      *&atoken[16] = v96;
      v46 = audit_token_to_pidversion(atoken);
      if (v43 != v44 || v45 != v46)
      {
        v48 = tcc_access_log();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v41 = v90;
          [v90 auditToken];
          v87 = sub_10002D734(atoken);
          *atoken = v98;
          *&atoken[16] = v99;
          v88 = sub_10002D734(atoken);
          *atoken = 138543874;
          *&atoken[4] = v90;
          *&atoken[12] = 2114;
          *&atoken[14] = v87;
          *&atoken[22] = 2114;
          *&atoken[24] = v88;
          _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Rejecting RBSProcessHandle %{public}@ for App Extension because process handle's audit token %{public}@ doesn't match original %{public}@", atoken, 0x20u);

          p_super = 0;
          v42 = v89;
        }

        else
        {
          p_super = 0;
          v42 = v89;
          v41 = v90;
        }

        goto LABEL_64;
      }

      v41 = v90;
      v47 = [v90 hostProcess];
      if (v47)
      {
        v48 = v47;
        v42 = v89;
        if (([v47 isApplication]& 1) != 0)
        {
          memset(atoken, 0, 32);
          [v48 auditToken];
          v94 = v89;
          v95 = *atoken;
          v96 = *&atoken[16];
          p_super = [LSBundleRecord bundleRecordForAuditToken:&v95 error:&v94];
          v49 = v94;

          if (p_super)
          {
            v50 = p_super;
          }

          else
          {
            v86 = tcc_access_log();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
            {
              sub_10002DA80();
            }
          }

          v42 = v49;
          goto LABEL_64;
        }

        v69 = tcc_access_log();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          sub_10002DA10();
        }
      }

      else
      {
        v68 = tcc_access_log();
        v42 = v89;
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          sub_10002DAF0();
        }

        v48 = 0;
      }
    }

    else
    {
      v48 = tcc_access_log();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        sub_10002DB60();
      }
    }

    p_super = 0;
LABEL_64:

    if (!p_super || ([p_super bundleIdentifier], (v70 = objc_claimAutoreleasedReturnValue()) == 0) || (v71 = v70, [p_super URL], v72 = objc_claimAutoreleasedReturnValue(), v72, v71, !v72))
    {
      v81 = tcc_access_log();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        sub_10002DBD0();
      }

      goto LABEL_78;
    }

    v73 = [p_super bundleIdentifier];
    v74 = self->_identifier;
    self->_identifier = v73;

    v75 = [p_super URL];

    p_super = v75;
LABEL_68:
    v76 = [TCCDBundle bundleWithURL:p_super];
    v77 = self->_bundle;
    self->_bundle = v76;

    v78 = self->_bundle;
    v79 = +[TCCDPlatform currentPlatform];
    v80 = [v79 server];
    v81 = [v80 logHandle];

    if (v78)
    {
      if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
      {
        v82 = self->_pluginBundleURL;
        v83 = self->_bundle;
        *atoken = 138543618;
        *&atoken[4] = v82;
        *&atoken[12] = 2114;
        *&atoken[14] = v83;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "IDENTITY_ATTRIBUTION: Attributing App Extension %{public}@ to %{public}@", atoken, 0x16u);
      }

      *atoken = 0;
      if (TCCDServerHasPolicyOverride(self->_pluginBundleIdentifier, &self->_policy_id, &self->_identifier, atoken))
      {
        self->_client_type = 2;
        v92[0] = _NSConcreteStackBlock;
        v92[1] = 3221225472;
        v92[2] = sub_10002BB44;
        v92[3] = &unk_1000A5D48;
        v93 = *atoken;
        v84 = objc_retainBlock(v92);
        displayNameBlock = self->displayNameBlock;
        self->displayNameBlock = v84;
      }

      v10 = 0;
      goto LABEL_41;
    }

    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      sub_10002DC40(v5);
    }

LABEL_78:

    v10 = 0;
    goto LABEL_50;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10002DE14();
  }

  v27 = 0;
LABEL_52:

  return v27;
}

- (TCCDAccessIdentity)initWithAttributionChain:(id)a3 preferMostSpecificIdentifier:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(TCCDAccessIdentity *)self init];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = [v6 requestingProcess];
  v7->_targetPID = [v8 pid];

  v9 = [v6 responsibleProcess];
  v7->_responsiblePID = [v9 pid];

  v24 = 0u;
  v25 = 0u;
  v10 = [v6 accessingProcess];
  v11 = v10;
  if (v10)
  {
    [v10 auditToken];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  *v7->_accessorAuditToken.val = v24;
  *&v7->_accessorAuditToken.val[4] = v25;
  v12 = [v6 responsibleProcess];
  v13 = v12;
  if (v12)
  {
    [v12 auditToken];
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  *v7->_responsibleAuditToken.val = v22;
  *&v7->_responsibleAuditToken.val[4] = v23;
  v14 = [v6 responsibleProcess];
  v15 = [v14 responsiblePath];
  path = v7->_path;
  v7->_path = v15;

  if (!v7->_path)
  {
    v18 = +[TCCDPlatform currentPlatform];
    v19 = [v18 server];
    v20 = [v19 logHandle];

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10002DE54();
    }

    goto LABEL_14;
  }

  if (![(TCCDAccessIdentity *)v7 _deriveIdentityFromAttributionChain:v6 preferMostSpecificIdentifier:v4])
  {
LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v17 = v7;
LABEL_15:

  return v17;
}

- (TCCDAccessIdentity)initWithMessage:(id)a3
{
  v4 = a3;
  length = 0;
  if (!xpc_dictionary_get_data(v4, "target_token", &length) || length != 32)
  {
    self = [(TCCDAccessIdentity *)self init];
    if (self)
    {
      string = xpc_dictionary_get_string(v4, "client_type");
      v8 = xpc_dictionary_get_string(v4, "client");
      v9 = xpc_dictionary_get_string(v4, "bundle_url");
      if (!string || !v8)
      {
        goto LABEL_24;
      }

      v10 = v9;
      v11 = [NSString stringWithUTF8String:v8];
      identifier = self->_identifier;
      self->_identifier = v11;

      if (v11)
      {
        if (!strcmp(string, "bundle"))
        {
          self->_client_type = 0;
          if (v10)
          {
            v13 = [NSString stringWithUTF8String:v10];
            v14 = [NSURL URLWithString:v13];

            v15 = [TCCDBundle bundleWithURL:v14];
            bundle = self->_bundle;
            self->_bundle = v15;
          }

          else
          {
            v19 = [TCCDBundle bundleWithIdentifier:self->_identifier];
            v14 = self->_bundle;
            self->_bundle = v19;
          }

          v20 = [(TCCDBundle *)self->_bundle executablePath];
          path = self->_path;
          self->_path = v20;

          v22 = self->_bundle;
          v23 = +[TCCDPlatform currentPlatform];
          v24 = [v23 server];
          v18 = [v24 logHandle];

          if (v22)
          {
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              v25 = self->_bundle;
              v26 = self->_identifier;
              *buf = 136446978;
              v32 = "[TCCDAccessIdentity initWithMessage:]";
              v33 = 2114;
              v34 = v25;
              v35 = 2114;
              v36 = v26;
              v37 = 2082;
              v38 = v10;
              _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%{public}s: bundle:%{public}@; for: %{public}@ with url: %{public}s", buf, 0x2Au);
            }
          }

          else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v28 = self->_bundle;
            v29 = self->_identifier;
            *buf = 136447234;
            v32 = "[TCCDAccessIdentity initWithMessage:]";
            v33 = 2048;
            v34 = v28;
            v35 = 2114;
            v36 = v28;
            v37 = 2114;
            v38 = v29;
            v39 = 2082;
            v40 = v10;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s: self.bundle=%p, bundle:%{public}@; for: %{public}@ with url: %{public}s", buf, 0x34u);
          }
        }

        else
        {
          if (strcmp(string, "path"))
          {
            goto LABEL_11;
          }

          self->_client_type = 1;
          v17 = self->_identifier;
          v18 = self->_path;
          self->_path = v17;
        }

LABEL_24:
        self = self;
        v6 = self;
        goto LABEL_25;
      }
    }

LABEL_11:
    v6 = 0;
    goto LABEL_25;
  }

  v5 = [[TCCDAttributionChain alloc] initWithMessage:v4];
  if (v5)
  {
    self = [(TCCDAccessIdentity *)self initWithAttributionChain:v5 preferMostSpecificIdentifier:1];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

LABEL_25:
  return v6;
}

- (TCCDAccessIdentity)initWithBundleIdentifier:(id)a3 isWK2Proxy:(BOOL)a4
{
  v7 = a3;
  v8 = [(TCCDAccessIdentity *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_client_type = 0;
    v9->_is_wk2_proxy = a4;
    v10 = [TCCDBundle bundleWithIdentifier:v7];
    bundle = v9->_bundle;
    v9->_bundle = v10;

    v12 = v9->_bundle;
    if (v12)
    {
      v13 = [(TCCDBundle *)v12 executablePath];
      path = v9->_path;
      v9->_path = v13;
    }

    v15 = v9->_identifier;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10002C1D0;
    v21[3] = &unk_1000A5D48;
    v22 = v15;
    v16 = v15;
    v17 = objc_retainBlock(v21);
    displayNameBlock = v9->displayNameBlock;
    v9->displayNameBlock = v17;

    v19 = v9;
  }

  return v9;
}

- (TCCDAccessIdentity)initWithIdentifier:(id)a3 type:(int)a4 executableURL:(id)a5 SDKVersion:(unsigned int)a6 platformType:(unsigned int)a7
{
  v13 = a3;
  v14 = a5;
  v15 = [(TCCDAccessIdentity *)self init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, a3);
    v16->_client_type = a4;
    if (a4 == 1)
    {
      objc_storeStrong(&v16->_path, v16->_identifier);
      if (v16->_path)
      {
        v22 = [NSURL fileURLWithPath:?];
        if (!v22)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      v35 = +[TCCDPlatform currentPlatform];
      v36 = [v35 server];
      v22 = [v36 logHandle];

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10002DE94();
      }

LABEL_22:
      v21 = 0;
      goto LABEL_23;
    }

    if (!a4)
    {
      if (v14)
      {
        v17 = +[TCCDPlatform currentPlatform];
        v18 = [v17 appBundleURLContainingExecutableURL:v14];

        if (v18)
        {
          v19 = [TCCDBundle bundleWithURL:v18];
          bundle = v16->_bundle;
          v16->_bundle = v19;
        }
      }

      else
      {
        v23 = [TCCDBundle bundleWithIdentifier:v13];
        v18 = v16->_bundle;
        v16->_bundle = v23;
      }

      v24 = v16->_bundle;
      if (v24)
      {
        v25 = [(TCCDBundle *)v24 executablePath];
        path = v16->_path;
        v16->_path = v25;

        v22 = [(TCCDBundle *)v16->_bundle bundleURL];
        v27 = +[TCCDPlatform currentPlatform];
        v28 = [v27 server];
        v29 = [v28 logHandle];

        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = [(TCCDAccessIdentity *)v16 bundle];
          v31 = v16->_bundle;
          identifier = v16->_identifier;
          v38 = 136447490;
          v39 = "[TCCDAccessIdentity initWithIdentifier:type:executableURL:SDKVersion:platformType:]";
          v40 = 2048;
          v41 = v30;
          v42 = 2114;
          v43 = v31;
          v44 = 2114;
          v45 = identifier;
          v46 = 2114;
          v47 = v14;
          v48 = 2082;
          v49 = [v14 fileSystemRepresentation];
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%{public}s: self.bundle=%p, bundle:%{public}@; for: %{public}@, URL: %{public}@, %{public}s", &v38, 0x3Eu);
        }

        if (!v22)
        {
          goto LABEL_17;
        }

LABEL_16:
        [(TCCDAccessIdentity *)v16 _makeDisplayNameBlockForURL:v22];
LABEL_17:
        v16->_sdkVersion = a6;
        v16->_platformType = a7;
        v21 = v16;
LABEL_23:

        goto LABEL_24;
      }

      v33 = +[TCCDPlatform currentPlatform];
      v34 = [v33 server];
      v22 = [v34 logHandle];

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10002DED4(v16 + 40, v14);
      }

      goto LABEL_22;
    }
  }

  v21 = 0;
LABEL_24:

  return v21;
}

- (id)_initWithAccessIdentity:(id)a3
{
  v4 = a3;
  v5 = [(TCCDAccessIdentity *)self init];
  v6 = v5;
  if (v5)
  {
    [(TCCDAccessIdentity *)v5 _updateFromAccessIdentity:v4];
    v7 = v6;
  }

  return v6;
}

- (void)_updateFromAccessIdentity:(id)a3
{
  v4 = a3;
  self->_client_type = [v4 client_type];
  v5 = [v4 identifier];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [v4 policy_id];
  policy_id = self->_policy_id;
  self->_policy_id = v7;

  v9 = [v4 path];
  path = self->_path;
  self->_path = v9;

  v11 = [v4 bundle];
  bundle = self->_bundle;
  self->_bundle = v11;

  v13 = v4[1];
  self->displayNameBlock = objc_retainBlock(v13);

  _objc_release_x1();
}

- (id)_initImplicitlyAssumedIdentityFromRequestContext:(id)a3
{
  v4 = [a3 attributionChain];
  v5 = [v4 accessingProcess];

  v6 = [v5 dictionaryValueForEntitlement:@"com.apple.private.attribution.implicitly-assumed-identity"];
  v7 = v6;
  if (v6)
  {
    v13 = 0;
    v8 = sub_10002C7EC(v6, &v13);
    v9 = v13;
    if (v8)
    {
      v10 = [NSString stringWithUTF8String:tcc_identity_get_identifier()];
      self = [(TCCDAccessIdentity *)self initWithIdentifier:v10 type:tcc_identity_get_type() executableURL:0 SDKVersion:0 platformType:0];
      v11 = self;
    }

    else
    {
      v10 = tcc_access_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_10002DF9C();
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_initExplicitlyAssumedIdentityFromRequestContext:(id)a3
{
  v4 = a3;
  v5 = [v4 explicitlyAssumedIdentity];
  v6 = [v4 attributionChain];
  v7 = [v6 accessingProcess];

  v8 = [v7 arrayValueForEntitlement:@"com.apple.private.attribution.explicitly-assumed-identities"];
  v9 = v8;
  if (v8)
  {
    v24 = self;
    v25 = v4;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = 0;
            v16 = sub_10002C7EC(v15, &v26);
            v17 = v26;
            if (v16)
            {
              if (tcc_identity_type_and_identifiers_are_equal())
              {

                v21 = [NSString stringWithUTF8String:tcc_identity_get_identifier()];
                self = [(TCCDAccessIdentity *)v24 initWithIdentifier:v21 type:tcc_identity_get_type() executableURL:0 SDKVersion:0 platformType:0];
                v22 = self;
                v4 = v25;
                goto LABEL_23;
              }
            }

            else
            {
              v19 = tcc_access_log();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v32 = v17;
                _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Invalid explicitly assumed identity entitlement: %{public}@", buf, 0xCu);
              }
            }
          }

          else
          {
            v17 = tcc_access_log();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = objc_opt_class();
              *buf = 138543618;
              v32 = v18;
              v33 = 2114;
              v34 = v15;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid explicitly assumed identity entitlement: identities should be dictionaries, found %{public}@: %{public}@", buf, 0x16u);
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v12);
    }

    v21 = tcc_object_copy_description();
    v20 = tcc_access_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_10002E094();
    }

    v22 = 0;
    self = v24;
    v4 = v25;
LABEL_23:
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)initAssumedIdentityWithRequestContext:(id)a3
{
  v4 = a3;
  v5 = [v4 explicitlyAssumedIdentity];

  if (v5)
  {
    v6 = [(TCCDAccessIdentity *)self _initExplicitlyAssumedIdentityFromRequestContext:v4];
  }

  else
  {
    v6 = [(TCCDAccessIdentity *)self _initImplicitlyAssumedIdentityFromRequestContext:v4];
  }

  v7 = v6;

  v8 = v7;
  return v8;
}

- (NSString)attributionPath
{
  if (self->_client_type == 1 || !self->_bundle)
  {
    v2 = self->_path;
  }

  else
  {
    v2 = [(TCCDBundle *)self->_bundle bundlePath];
  }

  return v2;
}

- (BOOL)getSDKVersion:(unsigned int *)a3 platformType:(unsigned int *)a4
{
  sdkVersion = self->_sdkVersion;
  if (sdkVersion)
  {
    *a3 = sdkVersion;
    *a4 = self->_platformType;
    return 1;
  }

  v9 = self;
  objc_sync_enter(v9);
  v10 = self->_sdkVersion;
  if (v10)
  {
    goto LABEL_4;
  }

  v11 = [(TCCDAccessIdentity *)v9 path];
  v12 = [v11 fileSystemRepresentation];

  if (!v12)
  {
    v25 = +[TCCDPlatform currentPlatform];
    v26 = [v25 server];
    v27 = [v26 logHandle];

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [(TCCDAccessIdentity *)v9 path];
      sub_10002E324(v28, buf, v27);
    }

    goto LABEL_54;
  }

  *__error() = 0;
  v13 = [(TCCDAccessIdentity *)v9 targetPID];
  if (v13 >= 1 && csops())
  {
    v14 = +[TCCDPlatform currentPlatform];
    v15 = [v14 server];
    v16 = [v15 logHandle];

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v44 = *__error();
      v45 = __error();
      v46 = strerror(*v45);
      *buf = 136446978;
      v66 = v12;
      v67 = 1024;
      *v68 = v13;
      *&v68[4] = 1024;
      *&v68[6] = v44;
      *&v68[10] = 2082;
      *&v68[12] = v46;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "failed to get text offset for %{public}s[%d]: (#%d) %{public}s", buf, 0x22u);
    }

    goto LABEL_54;
  }

  v17 = +[TCCDPlatform currentPlatform];
  v18 = [v17 server];
  v19 = [v18 logHandle];

  v20 = open(v12, 0);
  v21 = v20;
  if (v20 == -1)
  {
    v29 = v19;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v47 = *__error();
      v48 = __error();
      v49 = strerror(*v48);
      *buf = 136446722;
      v66 = v12;
      v67 = 1024;
      *v68 = v47;
      *&v68[4] = 2082;
      *&v68[6] = v49;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "failed to open %{public}s: (#%d): %{public}s", buf, 0x1Cu);
    }

    goto LABEL_54;
  }

  __buf[0] = 0;
  __buf[1] = 0;
  v64 = 0;
  size = 0;
  v22 = pread(v20, __buf, 0x1CuLL, 0);
  if (v22 != 28)
  {
    v30 = v19;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      if (v22 == -1)
      {
        v50 = __error();
        v51 = strerror(*v50);
      }

      else
      {
        v51 = "truncated";
      }

      *buf = 136447234;
      v66 = v12;
      v67 = 2082;
      *v68 = v51;
      *&v68[8] = 2048;
      *&v68[10] = 0;
      *&v68[18] = 2048;
      v69 = 28;
      v70 = 2048;
      v71 = v22;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "failed to read header from %{public}s: %{public}s;  (textoff: %llu, expected size: %lu, got: %zd)", buf, 0x34u);
    }

    goto LABEL_51;
  }

  v23 = __buf[0];
  if (LODWORD(__buf[0]) == -17958193)
  {
    v24 = 32;
  }

  else
  {
    if (LODWORD(__buf[0]) != -17958194)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v66 = v12;
        v67 = 1024;
        *v68 = v23;
        *&v68[4] = 2048;
        *&v68[6] = 0;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "spooky magic for %{public}s (0x%x) at text offset: %lld", buf, 0x1Cu);
      }

      goto LABEL_52;
    }

    v24 = 28;
  }

  v31 = malloc_type_malloc(HIDWORD(size), 0x52D3EF93uLL);
  if (!v31)
  {
    v30 = v19;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v58 = *__error();
      v59 = __error();
      v60 = strerror(*v59);
      *buf = 136446722;
      v66 = v12;
      v67 = 1024;
      *v68 = v58;
      *&v68[4] = 2082;
      *&v68[6] = v60;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "can't allocate buffer for %{public}s: (#%d) %{public}s", buf, 0x1Cu);
    }

LABEL_51:

LABEL_52:
    close(v21);
LABEL_53:

LABEL_54:
    v8 = 0;
    goto LABEL_55;
  }

  v32 = pread(v21, v31, HIDWORD(size), v24);
  if (v32 != HIDWORD(size))
  {
    v42 = v19;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      if (v32 == -1)
      {
        v52 = __error();
        v43 = strerror(*v52);
      }

      else
      {
        v43 = "truncated";
      }

      sub_10002E10C(v43, buf, v12, v42);
    }

    close(v21);
LABEL_65:
    free(v31);
    goto LABEL_53;
  }

  close(v21);
  *&self->_sdkVersion = 0;
  v33 = size;
  if (!size)
  {
    goto LABEL_83;
  }

  v34 = v31 + HIDWORD(size);
  v35 = v31;
  while (1)
  {
    if ((v35 + 2) > v34)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10002E2B4();
      }

      goto LABEL_65;
    }

    v36 = v35[1];
    v37 = (v35 + v36);
    if (v36 < 8 || v37 > v34 || v37 < v31)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10002E244();
      }

      goto LABEL_65;
    }

    v40 = *v35;
    if (*v35 > 46)
    {
      break;
    }

    if (v40 == 36)
    {
      v54 = 1;
LABEL_78:
      v9->_platformType = v54;
      if ((v35 + 4) > v34)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10002E1D4();
        }

        goto LABEL_65;
      }

      v55 = v35[3];
      self->_sdkVersion = v55;
      if (*v35 != 48)
      {
        goto LABEL_83;
      }

LABEL_82:
      self->_sdkVersion = v55 + 458752;
      goto LABEL_83;
    }

    if (v40 == 37)
    {
      v54 = 2;
      goto LABEL_78;
    }

LABEL_45:
    v35 = v37;
    if (!--v33)
    {
      goto LABEL_83;
    }
  }

  if (v40 != 50)
  {
    if (v40 == 48)
    {
      v54 = 4;
      goto LABEL_78;
    }

    if (v40 == 47)
    {
      v54 = 3;
      goto LABEL_78;
    }

    goto LABEL_45;
  }

  if ((v35 + 6) > v34)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10002E164();
    }

    goto LABEL_65;
  }

  v55 = v35[4];
  self->_sdkVersion = v55;
  v61 = v35[2];
  v9->_platformType = v61;
  if (v61 == 4)
  {
    goto LABEL_82;
  }

LABEL_83:
  free(v31);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v56 = self->_sdkVersion;
    platformType = v9->_platformType;
    *buf = 136446978;
    v66 = v12;
    v67 = 2048;
    *v68 = 0;
    *&v68[8] = 1024;
    *&v68[10] = v56;
    *&v68[14] = 1024;
    *&v68[16] = platformType;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%{public}s (offset %lld) linked against SDK version 0x%x, platform: %u", buf, 0x22u);
  }

  v10 = self->_sdkVersion;
LABEL_4:
  *a3 = v10;
  *a4 = v9->_platformType;
  v8 = 1;
LABEL_55:
  objc_sync_exit(v9);

  return v8;
}

- (BOOL)isPlugInWithExtensionPointIdentifier:(id)a3
{
  v4 = a3;
  if (self->_pluginBundleURL)
  {
    v5 = [TCCDBundle bundleWithURL:?];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 extensionPointIdentifier];
      v8 = [v7 isEqualToString:v4];
    }

    else
    {
      v9 = tcc_access_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10002E37C();
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end