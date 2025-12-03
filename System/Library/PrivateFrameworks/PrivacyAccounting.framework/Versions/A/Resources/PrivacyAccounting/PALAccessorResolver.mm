@interface PALAccessorResolver
- (PALAccessorResolver)initWithSettings:(id)settings tccAttributionResolver:(id)resolver applicationMetadataResolver:(id)metadataResolver;
- (id)resolveAccessorForAccess:(id)access senderAuditToken:(id *)token withError:(id *)error;
@end

@implementation PALAccessorResolver

- (PALAccessorResolver)initWithSettings:(id)settings tccAttributionResolver:(id)resolver applicationMetadataResolver:(id)metadataResolver
{
  settingsCopy = settings;
  resolverCopy = resolver;
  metadataResolverCopy = metadataResolver;
  v18.receiver = self;
  v18.super_class = PALAccessorResolver;
  v12 = [(PALAccessorResolver *)&v18 init];
  if (v12)
  {
    v13 = os_log_create("com.apple.PrivacyAccounting", "PALAccessorResolver");
    logger = v12->_logger;
    v12->_logger = v13;

    objc_storeStrong(&v12->_settings, settings);
    objc_storeStrong(&v12->_tccAttributionResolver, resolver);
    objc_storeStrong(&v12->_applicationMetadataResolver, metadataResolver);
    v15 = objc_alloc_init(NSCache);
    resolvedAccessorCache = v12->_resolvedAccessorCache;
    v12->_resolvedAccessorCache = v15;

    [(NSCache *)v12->_resolvedAccessorCache setName:@"com.apple.PrivacyAccounting.ResolvedAccessorCache"];
  }

  return v12;
}

- (id)resolveAccessorForAccess:(id)access senderAuditToken:(id *)token withError:(id *)error
{
  accessCopy = access;
  accessor = [accessCopy accessor];
  identifierType = [accessor identifierType];

  if (identifierType == 3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      accessCopy = accessCopy;
      tccService = [accessCopy tccService];
      v17 = [tccService isEqualToString:kTCCServiceMicrophone];

      if (v17)
      {
        *task_info_out = 0u;
        v60 = 0u;
        accessor2 = [accessCopy accessor];
        insecureProcessIdentifier = [accessor2 insecureProcessIdentifier];
        target_task[0] = 0;
        v20 = 0;
        if (!task_name_for_pid(mach_task_self_, insecureProcessIdentifier, target_task))
        {
          task_info_outCnt = 8;
          v20 = task_info(target_task[0], 0xFu, task_info_out, &task_info_outCnt) == 0;
        }

        if (target_task[0] - 1 <= 0xFFFFFFFD)
        {
          mach_port_deallocate(mach_task_self_, target_task[0]);
        }

        if (v20)
        {
          *target_task = *task_info_out;
          v58 = v60;
          v21 = [PAApplication applicationWithAuditToken:target_task];
          v15 = [accessCopy copyWithNewAccessor:v21];

          bridgedAssumedIdentity = 0;
          goto LABEL_4;
        }

        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
        {
          sub_1000041A4(logger, accessCopy);
        }
      }

      else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_10000413C();
      }

      v29 = [NSError errorWithDomain:@"PAErrorDomain" code:5 userInfo:0];
    }

    else
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_1000040D4();
      }

      v29 = [NSError errorWithDomain:@"PAErrorDomain" code:5 userInfo:0];
    }

    v30 = 0;
    v25 = 0;
    v24 = 0;
    bridgedAssumedIdentity = 0;
    goto LABEL_56;
  }

  if (identifierType == 4)
  {
    accessor3 = [accessCopy accessor];
    bridgedAssumedIdentity = [accessor3 bridgedAssumedIdentity];

    v13 = *&token->var0[4];
    *task_info_out = *token->var0;
    v60 = v13;
    v14 = [PAApplication applicationWithAuditToken:task_info_out];
    v15 = [accessCopy copyWithNewAccessor:v14];

    accessCopy = v14;
LABEL_4:

    accessCopy = v15;
    goto LABEL_14;
  }

  bridgedAssumedIdentity = 0;
LABEL_14:
  v22 = [PALResolvedAccessorCacheKey alloc];
  accessor4 = [accessCopy accessor];
  v24 = [(PALResolvedAccessorCacheKey *)v22 initWithAccessor:accessor4 clientProvidedIdentity:bridgedAssumedIdentity];

  v25 = [(NSCache *)self->_resolvedAccessorCache objectForKey:v24];
  v26 = +[NSNull null];
  v27 = [v25 isEqual:v26];

  if (!v27)
  {
    if (v25)
    {
      v31 = self->_logger;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        sub_100004264(v31, accessCopy);
      }

      v30 = [accessCopy copyWithNewAccessor:v25];
      goto LABEL_22;
    }

    accessor5 = [accessCopy accessor];
    identifierType2 = [accessor5 identifierType];

    if (identifierType2 != 2)
    {
      goto LABEL_33;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
        {
          sub_1000042F8();
        }

        goto LABEL_54;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      tccAttributionResolver = self->_tccAttributionResolver;
      identity = [bridgedAssumedIdentity identity];
      v36 = [(PALTCCAttributionResolverProtocol *)tccAttributionResolver resolveAttributionForTCCAccess:accessCopy clientProvidedIdentity:identity];

      if (!v36)
      {
        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
        {
          sub_100004388();
        }

LABEL_54:
        v46 = 5;
        goto LABEL_55;
      }
    }

    else
    {
LABEL_33:
      v36 = 0;
    }

    if (v36)
    {
      v37 = v36;
    }

    else
    {
      v37 = accessCopy;
    }

    v38 = [(PALApplicationMetadataResolver *)self->_applicationMetadataResolver resolveApplicationMetadataForAccess:v37];

    if (v38)
    {
      v39 = v38;
      v40 = [PALResolvedAccessorCacheKey alloc];
      accessor6 = [v39 accessor];
      v42 = [(PALResolvedAccessorCacheKey *)v40 initWithAccessor:accessor6 clientProvidedIdentity:0];

      if (qword_10001ECF8 != -1)
      {
        sub_100004360();
      }

      v43 = [qword_10001ECF0 objectForKeyedSubscript:v42];
      v44 = v43 ? [v39 copyWithNewAccessor:v43] : v39;
      v30 = v44;

      if (v30)
      {
        v25 = 0;
LABEL_22:
        v29 = 0;
        goto LABEL_56;
      }
    }

    v46 = 14;
LABEL_55:
    v29 = [NSError errorWithDomain:@"PAErrorDomain" code:v46 userInfo:0];
    v30 = 0;
    v25 = 0;
    goto LABEL_56;
  }

  v28 = self->_logger;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    sub_1000043F0(v28, accessCopy);
  }

  v29 = [NSError errorWithDomain:@"PAErrorDomain" code:16 userInfo:0];
  v30 = 0;
LABEL_56:
  if ([(PALSettings *)self->_settings accessFilteringPolicy]== 2)
  {
    accessor7 = [v30 accessor];
    identifierType3 = [accessor7 identifierType];

    if (identifierType3)
    {
      v49 = self->_logger;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        sub_100004484(accessCopy, v49, v30);
      }

      v50 = [NSError errorWithDomain:@"PAErrorDomain" code:5 userInfo:0];

      v29 = v50;
      goto LABEL_64;
    }
  }

  if (!v30)
  {
LABEL_64:
    if (v29)
    {
      if ([v29 code] == 5)
      {
        resolvedAccessorCache = self->_resolvedAccessorCache;
        v54 = +[NSNull null];
        [(NSCache *)resolvedAccessorCache setObject:v54 forKey:v24];
      }

      v30 = 0;
      goto LABEL_68;
    }

    v30 = 0;
    goto LABEL_70;
  }

  v51 = self->_resolvedAccessorCache;
  accessor8 = [v30 accessor];
  [(NSCache *)v51 setObject:accessor8 forKey:v24];

  if (v29)
  {
LABEL_68:
    v55 = v29;
    *error = v29;
  }

LABEL_70:

  return v30;
}

@end