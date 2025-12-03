@interface TCCDProcess
- (BOOL)BOOLValueForEntitlement:(id)entitlement;
- (BOOL)_initializeUsingTaskForAuditToken:(id *)token;
- (BOOL)hasEntitlement:(id)entitlement containsService:(id)service options:(unint64_t)options;
- (BOOL)hasEntitlement:(id)entitlement containsServiceAllOrService:(id)service options:(unint64_t)options;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSystemPreferencesApp;
- (NSString)responsiblePath;
- (TCCDProcess)initWithAuditToken:(id *)token responsibleIdentity:(id)identity;
- (id)arrayValueForEntitlement:(id)entitlement;
- (id)description;
- (id)dictionaryValueForEntitlement:(id)entitlement;
- (id)logHandle;
- (unint64_t)hash;
- (void)dealloc;
- (void)tccd_crash_fd_limit;
@end

@implementation TCCDProcess

- (id)description
{
  v3 = objc_opt_new();
  v4 = objc_opt_class();
  identifier = [(TCCDProcess *)self identifier];
  [v3 appendFormat:@"%@: identifier=%@, pid=%d, auid=%d, euid=%d, ", v4, identifier, -[TCCDProcess pid](self, "pid"), -[TCCDProcess auid](self, "auid"), -[TCCDProcess euid](self, "euid")];

  if (self->_responsiblePath)
  {
    [v3 appendFormat:@"responsible_path=%@, ", self->_responsiblePath];
  }

  binaryPath = [(TCCDProcess *)self binaryPath];
  [v3 appendFormat:@"binary_path=%@", binaryPath];

  return v3;
}

- (id)logHandle
{
  v2 = +[TCCDPlatform currentPlatform];
  server = [v2 server];
  logHandle = [server logHandle];

  return logHandle;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TCCDProcess;
  [(TCCDProcess *)&v2 dealloc];
}

- (NSString)responsiblePath
{
  responsiblePath = self->_responsiblePath;
  if (responsiblePath)
  {
    binaryPath = responsiblePath;
  }

  else
  {
    binaryPath = [(TCCDProcess *)self binaryPath];
  }

  return binaryPath;
}

- (void)tccd_crash_fd_limit
{
  log_open_file_descriptors();
  if (os_variant_allows_internal_security_policies())
  {
    _os_crash();
    __break(1u);
  }

  logHandle = [(TCCDProcess *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_ERROR, "Too many open files", v4, 2u);
  }

  exit(1);
}

- (TCCDProcess)initWithAuditToken:(id *)token responsibleIdentity:(id)identity
{
  identityCopy = identity;
  v23.receiver = self;
  v23.super_class = TCCDProcess;
  v7 = [(TCCDProcess *)&v23 init];
  p_isa = &v7->super.isa;
  if (v7)
  {
    v9 = *&token->var0[4];
    *atoken.val = *token->var0;
    *&atoken.val[4] = v9;
    [(TCCDProcess *)v7 setAuditToken:&atoken];
    *pidp = 0;
    euidp = 0;
    tidp = 0;
    [p_isa auditToken];
    audit_token_to_au32(&atoken, pidp, &euidp, 0, 0, 0, &pidp[1], 0, &tidp);
    if (pidp[0] == -1)
    {
      pidp[0] = euidp;
    }

    [p_isa setPid:pidp[1]];
    [p_isa setAuid:pidp[0]];
    [p_isa setEuid:euidp];
    [p_isa setPidVersion:tidp];
    if (identityCopy)
    {
      if (([p_isa _initializeUsingResponsibleIdentity:identityCopy] & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v10 = *&token->var0[4];
      *atoken.val = *token->var0;
      *&atoken.val[4] = v10;
      if (![p_isa _initializeUsingTaskForAuditToken:&atoken])
      {
LABEL_18:
        v16 = 0;
        goto LABEL_19;
      }
    }

    bzero(&atoken, 0x400uLL);
    if (proc_pidpath_audittoken(token, &atoken, 0x400u) <= 0)
    {
      logHandle = [p_isa logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        sub_1000599F0(p_isa);
      }

      goto LABEL_18;
    }

    v11 = [NSString stringWithUTF8String:&atoken];
    v19 = 0;
    v12 = [v11 stringByResolvingRealPathWithError:&v19];
    v13 = v19;
    v14 = p_isa[8];
    p_isa[8] = v12;

    if (!p_isa[8])
    {
      logHandle2 = [p_isa logHandle];
      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
      {
        sub_100059AAC();
      }

      objc_storeStrong(p_isa + 8, v11);
    }
  }

  v16 = p_isa;
LABEL_19:

  return v16;
}

- (BOOL)BOOLValueForEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  entitlements = [(TCCDProcess *)self entitlements];

  if (!entitlements)
  {
    goto LABEL_9;
  }

  entitlements2 = [(TCCDProcess *)self entitlements];
  v7 = [entitlements2 objectForKeyedSubscript:entitlementCopy];

  if (!v7)
  {
LABEL_8:

LABEL_9:
    bOOLValue = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    logHandle = [(TCCDProcess *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_100059B20(self);
    }

    goto LABEL_8;
  }

  bOOLValue = [v7 BOOLValue];

LABEL_10:
  return bOOLValue;
}

- (id)arrayValueForEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  entitlements = [(TCCDProcess *)self entitlements];

  if (entitlements && (-[TCCDProcess entitlements](self, "entitlements"), v6 = objc_claimAutoreleasedReturnValue(), [v6 objectForKeyedSubscript:entitlementCopy], v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      logHandle = [(TCCDProcess *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        sub_100059BBC(self);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = objc_opt_new();
  }

  return v8;
}

- (id)dictionaryValueForEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  entitlements = [(TCCDProcess *)self entitlements];

  if (entitlements)
  {
    entitlements2 = [(TCCDProcess *)self entitlements];
    entitlements = [entitlements2 objectForKeyedSubscript:entitlementCopy];

    if (entitlements)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_8;
      }

      v7 = tcc_access_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100059C58(self);
      }
    }

    entitlements = 0;
  }

LABEL_8:

  return entitlements;
}

- (BOOL)hasEntitlement:(id)entitlement containsService:(id)service options:(unint64_t)options
{
  optionsCopy = options;
  entitlementCopy = entitlement;
  serviceCopy = service;
  v10 = [(TCCDProcess *)self arrayValueForEntitlement:entitlementCopy];
  if (!v10)
  {
    goto LABEL_11;
  }

  name = [serviceCopy name];
  v12 = [v10 containsObject:name];

  if ((v12 & 1) == 0)
  {
    if (optionsCopy)
    {
      macos_compositionParentService = [serviceCopy macos_compositionParentService];
      if (macos_compositionParentService)
      {
        v21 = macos_compositionParentService;
        while (1)
        {
          name2 = [v21 name];
          v23 = [v10 containsObject:name2];

          if (v23)
          {
            break;
          }

          macos_compositionParentService2 = [v21 macos_compositionParentService];

          v21 = macos_compositionParentService2;
          if (!macos_compositionParentService2)
          {
            goto LABEL_11;
          }
        }

        goto LABEL_3;
      }
    }

LABEL_11:
    v19 = 0;
    goto LABEL_12;
  }

LABEL_3:
  logHandle = [(TCCDProcess *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    v14 = objc_opt_class();
    identifier = [(TCCDProcess *)self identifier];
    v16 = [(TCCDProcess *)self pid];
    name3 = [serviceCopy name];
    name4 = [0 name];
    v26 = 138544642;
    v27 = v14;
    v28 = 2114;
    v29 = identifier;
    v30 = 1024;
    v31 = v16;
    v32 = 2114;
    v33 = entitlementCopy;
    v34 = 2114;
    v35 = name3;
    v36 = 2114;
    v37 = name4;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_INFO, "<%{public}@: identifier=%{public}@, pid=%d> has the %{public}@ entitlement for service %{public}@ (composed to parent: %{public}@)", &v26, 0x3Au);
  }

  v19 = 1;
LABEL_12:

  return v19;
}

- (BOOL)hasEntitlement:(id)entitlement containsServiceAllOrService:(id)service options:(unint64_t)options
{
  entitlementCopy = entitlement;
  if ([(TCCDProcess *)self hasEntitlement:entitlementCopy containsService:service options:options])
  {
    v9 = 1;
  }

  else
  {
    v10 = +[TCCDService serviceAll];
    v9 = [(TCCDProcess *)self hasEntitlement:entitlementCopy containsService:v10 options:options];
  }

  return v9;
}

- (BOOL)isSystemPreferencesApp
{
  isPlatformBinary = [(TCCDProcess *)self isPlatformBinary];
  if (isPlatformBinary)
  {
    identifier = [(TCCDProcess *)self identifier];
    v5 = [identifier isEqualToString:@"com.apple.Preferences"];

    LOBYTE(isPlatformBinary) = v5;
  }

  return isPlatformBinary;
}

- (BOOL)_initializeUsingTaskForAuditToken:(id *)token
{
  v20 = 0;
  if (csops_audittoken())
  {
    logHandle = [(TCCDProcess *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_100059CF4();
    }

    v6 = 0;
  }

  else
  {
    v6 = v20;
  }

  self->_codesignStatus = v6;
  v7 = *&token->var0[4];
  *cf.val = *token->var0;
  *&cf.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(0, &cf);
  if (v8)
  {
    *cf.val = 0;
    v9 = SecTaskCopyValuesForEntitlements(v8, +[TCCDPlatform allTCCEntitlements], &cf);
    if (!v9)
    {
      if (*cf.val)
      {
        logHandle2 = [(TCCDProcess *)self logHandle];
        if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
        {
          sub_100059DCC();
        }
      }

      v9 = objc_opt_new();
    }

    entitlements = self->_entitlements;
    self->_entitlements = v9;

    *__error() = 0;
    identifierForInvalidCode = SecTaskCopySigningIdentifier(v8, &cf);
    if (!identifierForInvalidCode)
    {
      v13 = *cf.val;
      logHandle3 = [(TCCDProcess *)self logHandle];
      v15 = os_log_type_enabled(logHandle3, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        if (v15)
        {
          sub_100059E50();
        }
      }

      else if (v15)
      {
        sub_100059ED4();
      }

      identifierForInvalidCode = [objc_opt_class() identifierForInvalidCode];
    }

    identifier = self->_identifier;
    self->_identifier = identifierForInvalidCode;

    CFRelease(v8);
    if (*cf.val)
    {
      CFRelease(*cf.val);
    }
  }

  else
  {
    logHandle4 = [(TCCDProcess *)self logHandle];
    if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_ERROR))
    {
      sub_100059D60();
    }
  }

  return v8 != 0;
}

- (unint64_t)hash
{
  v2 = veorq_s8(*self->_auditToken.val, *&self->_auditToken.val[4]);
  v3 = vmovl_high_s8(v2);
  v4 = vmovl_s16(*v3.i8);
  v5 = vmovl_s8(*v2.i8);
  v6 = vmovl_s16(*v5.i8);
  v7 = vmovl_high_s16(v3);
  v8 = vmovl_high_s16(v5);
  *v8.i8 = veor_s8(veor_s8(veor_s8(*v6.i8, *v4.i8), veor_s8(*v8.i8, *v7.i8)), veor_s8(veor_s8(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(v4, v4, 8uLL)), veor_s8(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v7, v7, 8uLL))));
  v9.i64[0] = v8.i32[0];
  v9.i64[1] = v8.i32[1];
  return veor_s8(v8.i32[0], *&vextq_s8(v9, v9, 8uLL));
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(TCCDProcess *)self auditToken];
      if (v5)
      {
        [(TCCDProcess *)v5 auditToken];
      }

      else
      {
        v12 = 0u;
        v13 = 0u;
      }

      if (v14 == v12 && v15 == *(&v12 + 1) && v16 == v13 && v17 == *(&v13 + 1))
      {
        v10 = [(TCCDProcess *)self pid];
        v6 = v10 == [(TCCDProcess *)v5 pid];
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
  }

  return v6;
}

@end