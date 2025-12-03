@interface SSVMediaSocialAdminPermissionsCoordinator
+ (id)sharedCoordinator;
- (BOOL)_statusIsFresh:(id)fresh;
- (BOOL)isCurrentUserAdmin;
- (SSVMediaSocialAdminPermissionsCoordinator)init;
- (id)_adminStatusForAccountID:(id)d;
- (void)_setAdminStatus:(id)status forAccountID:(id)d;
- (void)getAdminStatusAndWaitWithOptions:(id)options resultBlock:(id)block;
- (void)getAdminStatusWithOptions:(id)options resultBlock:(id)block;
- (void)reset;
@end

@implementation SSVMediaSocialAdminPermissionsCoordinator

- (SSVMediaSocialAdminPermissionsCoordinator)init
{
  v9.receiver = self;
  v9.super_class = SSVMediaSocialAdminPermissionsCoordinator;
  v2 = [(SSVMediaSocialAdminPermissionsCoordinator *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.StoreKitUI.SKUIMediaSocialAdminPermissionsCoordinator", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = CFPreferencesCopyAppValue(@"MediaSocialRefreshPeriodKey", @"com.apple.itunesstored");
    v6 = v5;
    if (v5)
    {
      [v5 doubleValue];
    }

    else
    {
      v7 = 0x404E000000000000;
    }

    *&v2->_refreshPeriod = v7;
  }

  return v2;
}

+ (id)sharedCoordinator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SSVMediaSocialAdminPermissionsCoordinator_sharedCoordinator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedCoordinator_sOnce != -1)
  {
    dispatch_once(&sharedCoordinator_sOnce, block);
  }

  v2 = sharedCoordinator_sCoordinator;

  return v2;
}

void __62__SSVMediaSocialAdminPermissionsCoordinator_sharedCoordinator__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedCoordinator_sCoordinator;
  sharedCoordinator_sCoordinator = v1;
}

- (void)getAdminStatusAndWaitWithOptions:(id)options resultBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  v8 = dispatch_semaphore_create(0);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__66;
  v21 = __Block_byref_object_dispose__66;
  v22 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__SSVMediaSocialAdminPermissionsCoordinator_getAdminStatusAndWaitWithOptions_resultBlock___block_invoke;
  v13[3] = &unk_1E84AE928;
  v15 = &v23;
  v16 = &v17;
  v9 = v8;
  v14 = v9;
  [(SSVMediaSocialAdminPermissionsCoordinator *)self getAdminStatusWithOptions:optionsCopy resultBlock:v13];
  v10 = dispatch_time(0, 10000000000);
  v11 = dispatch_semaphore_wait(v9, v10);
  if (blockCopy)
  {
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSErrorDomain" code:140 userInfo:0];
      blockCopy[2](blockCopy, 0, v12);
    }

    else
    {
      blockCopy[2](blockCopy, *(v24 + 24), v18[5]);
    }
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
}

void __90__SSVMediaSocialAdminPermissionsCoordinator_getAdminStatusAndWaitWithOptions_resultBlock___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)getAdminStatusWithOptions:(id)options resultBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__SSVMediaSocialAdminPermissionsCoordinator_getAdminStatusWithOptions_resultBlock___block_invoke;
  block[3] = &unk_1E84ABEC8;
  selfCopy = self;
  v14 = blockCopy;
  v12 = optionsCopy;
  v9 = optionsCopy;
  v10 = blockCopy;
  dispatch_async(dispatchQueue, block);
}

void __83__SSVMediaSocialAdminPermissionsCoordinator_getAdminStatusWithOptions_resultBlock___block_invoke(uint64_t a1)
{
  v2 = +[SSAccountStore defaultStore];
  v3 = [v2 activeAccount];
  v4 = [v3 uniqueIdentifier];

  if (v4)
  {
    v5 = *(a1 + 32);
    if (v5 && ([v5 objectForKey:@"SSVMediaSocialAdminPermissionsOptionIgnoreCache"], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLValue"), v6, (v7 & 1) != 0))
    {
      v8 = 0;
    }

    else
    {
      v8 = [*(a1 + 40) _adminStatusForAccountID:v4];
      if (v8)
      {
        if ([*(a1 + 40) _statusIsFresh:v8])
        {
          v9 = *(a1 + 48);
          if (v9)
          {
            (*(v9 + 16))(v9, [v8 isAdmin], 0);
LABEL_12:

            goto LABEL_13;
          }
        }
      }
    }

    v10 = [SSURLBagContext contextWithBagType:0];
    v11 = SSVDefaultUserAgent();
    [v10 setValue:v11 forHTTPHeaderField:@"User-Agent"];

    v12 = [[SSURLBag alloc] initWithURLBagContext:v10];
    v13 = objc_alloc_init(SSVMediaSocialAdminStatusOperation);
    [(SSVComplexOperation *)v13 configureWithURLBag:v12];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __83__SSVMediaSocialAdminPermissionsCoordinator_getAdminStatusWithOptions_resultBlock___block_invoke_2;
    v14[3] = &unk_1E84B2B48;
    v14[4] = *(a1 + 40);
    v15 = v4;
    v16 = *(a1 + 48);
    [(SSVMediaSocialAdminStatusOperation *)v13 setOutputBlock:v14];
    [(SSVMediaSocialAdminStatusOperation *)v13 main];

    goto LABEL_12;
  }

  if (*(a1 + 48))
  {
    v8 = SSError(@"SSErrorDomain", 119, 0, 0);
    (*(*(a1 + 48) + 16))(*(a1 + 48), 0, v8);
    goto LABEL_12;
  }

LABEL_13:
}

void __83__SSVMediaSocialAdminPermissionsCoordinator_getAdminStatusWithOptions_resultBlock___block_invoke_2(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v11 = a4;
  if (a2)
  {
    v7 = [SSVMediaSocialAdminStatus alloc];
    v8 = [MEMORY[0x1E695DF00] date];
    v9 = [(SSVMediaSocialAdminStatus *)v7 initWithAdminStatus:a3 dateUpdated:v8];

    [*(a1 + 32) _setAdminStatus:v9 forAccountID:*(a1 + 40)];
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, [(SSVMediaSocialAdminStatus *)v9 isAdmin], v11);
  }
}

- (BOOL)isCurrentUserAdmin
{
  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
  ams_DSID = [ams_activeiTunesAccount ams_DSID];

  if (ams_DSID)
  {
    v6 = [(SSVMediaSocialAdminPermissionsCoordinator *)self _adminStatusForAccountID:ams_DSID];
    isAdmin = [v6 isAdmin];
  }

  else
  {
    isAdmin = 0;
  }

  return isAdmin;
}

- (void)reset
{
  CFPreferencesSetAppValue(@"MediaSocialSavedAdminStatusesKey", 0, @"com.apple.itunesstored");

  [(SSVMediaSocialAdminPermissionsCoordinator *)self setRefreshPeriod:60.0];
}

- (id)_adminStatusForAccountID:(id)d
{
  v35 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy)
  {
    [(SSVMediaSocialAdminPermissionsCoordinator *)a2 _adminStatusForAccountID:?];
  }

  v6 = CFPreferencesCopyAppValue(@"MediaSocialSavedAdminStatusesKey", @"com.apple.itunesstored");
  if (v6)
  {
    v7 = MEMORY[0x1E696ACD0];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v30 = 0;
    v12 = [v7 unarchivedObjectOfClasses:v11 fromData:v6 error:&v30];
    v13 = v30;

    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v12 objectForKeyedSubscript:dCopy];
LABEL_19:

        goto LABEL_21;
      }
    }

    v15 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = shouldLog | 2;
    }

    else
    {
      v17 = shouldLog;
    }

    oSLogObject = [v15 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v19 = objc_opt_class();
      v31 = 138543618;
      v32 = v19;
      v33 = 2114;
      v34 = v13;
      v20 = v19;
      LODWORD(v29) = 22;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_18:

        v14 = 0;
        goto LABEL_19;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:{4, &v31, v29}];
      free(v21);
      SSFileLog(v15, @"%@", v22, v23, v24, v25, v26, v27, oSLogObject);
    }

    goto LABEL_18;
  }

  v14 = 0;
LABEL_21:

  return v14;
}

- (void)_setAdminStatus:(id)status forAccountID:(id)d
{
  v54 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  dCopy = d;
  if (dCopy)
  {
    if (statusCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SSVMediaSocialAdminPermissionsCoordinator _setAdminStatus:a2 forAccountID:self];
    if (statusCopy)
    {
      goto LABEL_3;
    }
  }

  [SSVMediaSocialAdminPermissionsCoordinator _setAdminStatus:a2 forAccountID:self];
LABEL_3:
  v8 = CFPreferencesCopyAppValue(@"MediaSocialSavedAdminStatusesKey", @"com.apple.itunesstored");
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (!v8)
  {
    goto LABEL_20;
  }

  v10 = MEMORY[0x1E696ACD0];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v49 = 0;
  v14 = [v10 unarchivedObjectOfClasses:v13 fromData:v8 error:&v49];
  v15 = v49;

  if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v16 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = shouldLog | 2;
    }

    else
    {
      v18 = shouldLog;
    }

    oSLogObject = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 & 2;
    }

    if (v20)
    {
      v21 = objc_opt_class();
      v50 = 138543618;
      v51 = v21;
      v52 = 2114;
      v53 = v15;
      v22 = v21;
      LODWORD(v46) = 22;
      v45 = &v50;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
        goto LABEL_19;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:{4, &v50, v46}];
      free(v23);
      SSFileLog(v16, @"%@", v24, v25, v26, v27, v28, v29, oSLogObject);
    }

    goto LABEL_19;
  }

  v16 = dictionary;
  dictionary = [v14 mutableCopy];
LABEL_19:

LABEL_20:
  [dictionary setObject:statusCopy forKeyedSubscript:{dCopy, v45}];
  v48 = 0;
  v30 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:dictionary requiringSecureCoding:1 error:&v48];
  v31 = v48;
  if (v31)
  {
    v32 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v32)
    {
      v32 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v32 shouldLog];
    if ([v32 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [v32 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v35 = shouldLog2;
    }

    else
    {
      v35 = shouldLog2 & 2;
    }

    if (v35)
    {
      v36 = objc_opt_class();
      v50 = 138543618;
      v51 = v36;
      v52 = 2114;
      v53 = v31;
      v37 = v36;
      LODWORD(v46) = 22;
      v38 = _os_log_send_and_compose_impl();

      if (!v38)
      {
LABEL_32:

        goto LABEL_33;
      }

      oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v38 encoding:{4, &v50, v46}];
      free(v38);
      SSFileLog(v32, @"%@", v39, v40, v41, v42, v43, v44, oSLogObject2);
    }

    goto LABEL_32;
  }

LABEL_33:
  CFPreferencesSetAppValue(@"MediaSocialSavedAdminStatusesKey", v30, @"com.apple.itunesstored");
}

- (BOOL)_statusIsFresh:(id)fresh
{
  if (!fresh)
  {
    return 0;
  }

  dateUpdated = [fresh dateUpdated];
  [dateUpdated timeIntervalSinceNow];
  v6 = fabs(v5);
  [(SSVMediaSocialAdminPermissionsCoordinator *)self refreshPeriod];
  v8 = v6 < v7;

  return v8;
}

- (void)_adminStatusForAccountID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SSVMediaSocialAdminPermissionsCoordinator.m" lineNumber:135 description:{@"Invalid parameter not satisfying: %@", @"accountID"}];
}

- (void)_setAdminStatus:(uint64_t)a1 forAccountID:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SSVMediaSocialAdminPermissionsCoordinator.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"accountID"}];
}

- (void)_setAdminStatus:(uint64_t)a1 forAccountID:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SSVMediaSocialAdminPermissionsCoordinator.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"adminStatus"}];
}

@end