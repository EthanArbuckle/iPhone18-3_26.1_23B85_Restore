@interface PALAccessorResolver
- (PALAccessorResolver)initWithSettings:(id)a3 tccAttributionResolver:(id)a4 applicationMetadataResolver:(id)a5;
- (id)resolveAccessorForAccess:(id)a3 senderAuditToken:(id *)a4 withError:(id *)a5;
@end

@implementation PALAccessorResolver

- (PALAccessorResolver)initWithSettings:(id)a3 tccAttributionResolver:(id)a4 applicationMetadataResolver:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = PALAccessorResolver;
  v12 = [(PALAccessorResolver *)&v18 init];
  if (v12)
  {
    v13 = os_log_create("com.apple.PrivacyAccounting", "PALAccessorResolver");
    logger = v12->_logger;
    v12->_logger = v13;

    objc_storeStrong(&v12->_settings, a3);
    objc_storeStrong(&v12->_tccAttributionResolver, a4);
    objc_storeStrong(&v12->_applicationMetadataResolver, a5);
    v15 = objc_alloc_init(NSCache);
    resolvedAccessorCache = v12->_resolvedAccessorCache;
    v12->_resolvedAccessorCache = v15;

    [(NSCache *)v12->_resolvedAccessorCache setName:@"com.apple.PrivacyAccounting.ResolvedAccessorCache"];
  }

  return v12;
}

- (id)resolveAccessorForAccess:(id)a3 senderAuditToken:(id *)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = [v8 accessor];
  v10 = [v9 identifierType];

  if (v10 == 3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v8;
      v16 = [v8 tccService];
      v17 = [v16 isEqualToString:kTCCServiceMicrophone];

      if (v17)
      {
        *task_info_out = 0u;
        v60 = 0u;
        v18 = [v8 accessor];
        v19 = [v18 insecureProcessIdentifier];
        target_task[0] = 0;
        v20 = 0;
        if (!task_name_for_pid(mach_task_self_, v19, target_task))
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
          v15 = [v8 copyWithNewAccessor:v21];

          v12 = 0;
          goto LABEL_4;
        }

        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
        {
          sub_1000041A4(logger, v8);
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
    v12 = 0;
    goto LABEL_56;
  }

  if (v10 == 4)
  {
    v11 = [v8 accessor];
    v12 = [v11 bridgedAssumedIdentity];

    v13 = *&a4->var0[4];
    *task_info_out = *a4->var0;
    v60 = v13;
    v14 = [PAApplication applicationWithAuditToken:task_info_out];
    v15 = [v8 copyWithNewAccessor:v14];

    v8 = v14;
LABEL_4:

    v8 = v15;
    goto LABEL_14;
  }

  v12 = 0;
LABEL_14:
  v22 = [PALResolvedAccessorCacheKey alloc];
  v23 = [v8 accessor];
  v24 = [(PALResolvedAccessorCacheKey *)v22 initWithAccessor:v23 clientProvidedIdentity:v12];

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
        sub_100004264(v31, v8);
      }

      v30 = [v8 copyWithNewAccessor:v25];
      goto LABEL_22;
    }

    v32 = [v8 accessor];
    v33 = [v32 identifierType];

    if (v33 != 2)
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
      v35 = [v12 identity];
      v36 = [(PALTCCAttributionResolverProtocol *)tccAttributionResolver resolveAttributionForTCCAccess:v8 clientProvidedIdentity:v35];

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
      v37 = v8;
    }

    v38 = [(PALApplicationMetadataResolver *)self->_applicationMetadataResolver resolveApplicationMetadataForAccess:v37];

    if (v38)
    {
      v39 = v38;
      v40 = [PALResolvedAccessorCacheKey alloc];
      v41 = [v39 accessor];
      v42 = [(PALResolvedAccessorCacheKey *)v40 initWithAccessor:v41 clientProvidedIdentity:0];

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
    sub_1000043F0(v28, v8);
  }

  v29 = [NSError errorWithDomain:@"PAErrorDomain" code:16 userInfo:0];
  v30 = 0;
LABEL_56:
  if ([(PALSettings *)self->_settings accessFilteringPolicy]== 2)
  {
    v47 = [v30 accessor];
    v48 = [v47 identifierType];

    if (v48)
    {
      v49 = self->_logger;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        sub_100004484(v8, v49, v30);
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
  v52 = [v30 accessor];
  [(NSCache *)v51 setObject:v52 forKey:v24];

  if (v29)
  {
LABEL_68:
    v55 = v29;
    *a5 = v29;
  }

LABEL_70:

  return v30;
}

@end