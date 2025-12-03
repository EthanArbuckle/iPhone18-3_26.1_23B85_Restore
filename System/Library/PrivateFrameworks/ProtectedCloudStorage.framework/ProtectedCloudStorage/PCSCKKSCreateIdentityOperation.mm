@interface PCSCKKSCreateIdentityOperation
- (PCSCKKSCreateIdentityOperation)initWithItemModifyContext:(id)context;
- (int)addAndNotifyOnSync:(id)sync identity:(_PCSIdentityData *)identity attributes:(__CFDictionary *)attributes returnAttributes:(const __CFDictionary *)returnAttributes complete:(id)complete;
- (void)createPCSIdentity:(id)identity complete:(id)complete;
- (void)itemStored:(id)stored complete:(id)complete;
- (void)setIdentityToCurrent:(id)current complete:(id)complete;
- (void)start;
- (void)storePCSIdentity:(id)identity identity:(_PCSIdentityData *)a4 complete:(id)complete;
@end

@implementation PCSCKKSCreateIdentityOperation

- (PCSCKKSCreateIdentityOperation)initWithItemModifyContext:(id)context
{
  contextCopy = context;
  if ((PCSCurrentPersonaMatchesDSIDFromSet([contextCopy set]) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
    }

    goto LABEL_9;
  }

  if (!contextCopy)
  {
    goto LABEL_9;
  }

  serviceContexts = [contextCopy serviceContexts];
  v7 = [serviceContexts count];

  if (!v7 || (v18.receiver = self, v18.super_class = PCSCKKSCreateIdentityOperation, v8 = [(PCSCKKSCreateIdentityOperation *)&v18 init], (self = v8) == 0))
  {
LABEL_9:
    selfCopy = 0;
    goto LABEL_10;
  }

  objc_storeStrong(&v8->_context, context);
  serviceContexts2 = [contextCopy serviceContexts];
  v10 = [serviceContexts2 count];

  v11 = MEMORY[0x1E696AEC0];
  if (v10 == 1)
  {
    serviceContexts3 = [(PCSCKKSItemModifyContext *)self->_context serviceContexts];
    allKeys = [serviceContexts3 allKeys];
    v14 = [allKeys objectAtIndexedSubscript:0];
    v15 = [v11 stringWithFormat:@"CreateIdentityOperation service: %@", v14];
    [(PCSCKKSCreateIdentityOperation *)self setName:v15];
  }

  else
  {
    serviceContexts3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CreateIdentityOperation service: %@", @"bulk-service-identity-creation-identifier"];
    [(PCSCKKSCreateIdentityOperation *)self setName:serviceContexts3];
  }

  self = self;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (void)start
{
  PCSMigrationLog([(PCSCKKSItemModifyContext *)self->_context log], @"Starting: %s", "[PCSCKKSCreateIdentityOperation start]");
  if ([(PCSCKKSOperation *)self startOperation])
  {
    context = [(PCSCKKSCreateIdentityOperation *)self context];
    v4 = PCSCurrentPersonaMatchesDSIDFromSet([context set]);

    if (v4)
    {
      context2 = [(PCSCKKSCreateIdentityOperation *)self context];
      serviceContexts = [context2 serviceContexts];
      allKeys = [serviceContexts allKeys];

      v8 = dispatch_group_create();
      if ([allKeys count])
      {
        v9 = 0;
        do
        {
          v10 = [allKeys objectAtIndexedSubscript:v9];
          context3 = [(PCSCKKSCreateIdentityOperation *)self context];
          serviceContexts2 = [context3 serviceContexts];
          v13 = [serviceContexts2 objectForKeyedSubscript:v10];

          if (([v13 roll] & 1) == 0 && (objc_msgSend(v13, "existingItemReference"), (v14 = objc_claimAutoreleasedReturnValue()) != 0) && (v15 = v14, v16 = objc_msgSend(v13, "currentIdentity"), v15, v16))
          {
            PCSMigrationLog([(PCSCKKSItemModifyContext *)self->_context log], @"Have an identity and no need to create a new");
            [v13 setReturnedExistingIdentity:1];
            context4 = [(PCSCKKSCreateIdentityOperation *)self context];
            v18 = [context4 mtt];
            [v18 setReturnedExistingIdentity:{objc_msgSend(v18, "returnedExistingIdentity")}];
          }

          else
          {
            dispatch_group_enter(v8);
            v22[0] = MEMORY[0x1E69E9820];
            v22[1] = 3221225472;
            v22[2] = __39__PCSCKKSCreateIdentityOperation_start__block_invoke;
            v22[3] = &unk_1E7B18CF8;
            v22[4] = self;
            v19 = v10;
            v23 = v19;
            v24 = v8;
            [(PCSCKKSCreateIdentityOperation *)self createPCSIdentity:v19 complete:v22];
          }

          ++v9;
        }

        while ([allKeys count] > v9);
      }

      v20 = dispatch_time(0, 300000000000);
      if (dispatch_group_wait(v8, v20))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "timed out waiting for identity creation", buf, 2u);
        }

        v21 = [MEMORY[0x1E696ABC0] errorWithDomain:kPCSErrorDomain code:116 userInfo:&unk_1F29982F0];
        [(PCSCKKSOperation *)self setError:v21];
      }

      [(PCSCKKSOperation *)self completeOperation];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
      }

      [(PCSCKKSOperation *)self completeOperation];
    }
  }
}

void __39__PCSCKKSCreateIdentityOperation_start__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) setError:v5];
    dispatch_group_leave(*(a1 + 48));
  }

  else
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v13 = 0;
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__PCSCKKSCreateIdentityOperation_start__block_invoke_2;
    v8[3] = &unk_1E7B18CD0;
    v11 = v12;
    v8[4] = v7;
    v9 = v6;
    v10 = *(a1 + 48);
    [v7 storePCSIdentity:v9 identity:a2 complete:v8];

    _Block_object_dispose(v12, 8);
  }
}

void __39__PCSCKKSCreateIdentityOperation_start__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = atomic_load((*(*(a1 + 56) + 8) + 24));
  v7 = v3;
  if (v4)
  {
    PCSMigrationLog([*(*(a1 + 32) + 272) log], @"BUG: callback for service %@ invoked again, ignoring", *(a1 + 40));
  }

  else
  {
    atomic_store(1u, (*(*(a1 + 56) + 8) + 24));
    if (v3)
    {
      [*(a1 + 32) setError:v3];
      v5 = [*(*(a1 + 32) + 272) log];
      v6 = [v7 description];
      PCSMigrationLog(v5, @"Errored storing identity: %@", v6);
    }

    dispatch_group_leave(*(a1 + 48));
  }
}

- (void)createPCSIdentity:(id)identity complete:(id)complete
{
  identityCopy = identity;
  completeCopy = complete;
  v19 = 0;
  context = [(PCSCKKSCreateIdentityOperation *)self context];
  v9 = PCSCurrentPersonaMatchesDSIDFromSet([context set]);

  if ((v9 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", &v18, 2u);
    }

    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:kPCSErrorDomain code:46 userInfo:&unk_1F2998318];
    goto LABEL_12;
  }

  v10 = [(PCSCKKSItemModifyContext *)self->_context set];
  v11 = _PCSIdentitySetCopyCurrentIdentityInternal(v10, kPCSServiceMaster, &v19);
  if (!v11)
  {
    v16 = v19;
LABEL_12:
    completeCopy[2](completeCopy, 0, v16);

    goto LABEL_13;
  }

  v12 = v11;
  if (PCSServiceItemTypeIsManatee(identityCopy))
  {
    v13 = 5;
  }

  else
  {
    v13 = 1;
  }

  Service = PCSIdentityCreateService(v12, v13, identityCopy, &v19);
  if (Service)
  {
    v15 = Service;
    (completeCopy)[2](completeCopy, Service, 0);
    CFRelease(v15);
    CFRelease(v12);
  }

  else
  {
    v17 = v19;
    CFRelease(v12);
    completeCopy[2](completeCopy, 0, v17);
  }

LABEL_13:
}

- (void)storePCSIdentity:(id)identity identity:(_PCSIdentityData *)a4 complete:(id)complete
{
  v153[1] = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  completeCopy = complete;
  objc_initWeak(&location, self);
  v139[0] = 0;
  v139[1] = v139;
  v139[2] = 0x2020000000;
  v140 = 0;
  context = [(PCSCKKSCreateIdentityOperation *)self context];
  v9 = PCSCurrentPersonaMatchesDSIDFromSet([context set]);

  if (v9)
  {
    context2 = [(PCSCKKSCreateIdentityOperation *)self context];
    v11 = [context2 mtt];
    v121 = [v11 measurePoint:@"PCSStoreIdentity"];

    dsid = [(PCSCKKSItemModifyContext *)self->_context dsid];
    theDict = _PCSIdentityCopyKeychainAttributes(a4);

    if (!theDict)
    {
      v49 = MEMORY[0x1E696ABC0];
      v50 = kPCSErrorDomain;
      v152 = *MEMORY[0x1E696A578];
      v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get attributes from %@", a4];
      v153[0] = v51;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v153 forKeys:&v152 count:1];
      v53 = [v49 errorWithDomain:v50 code:101 userInfo:v52];
      [(PCSCKKSOperation *)self setError:v53];

      [v121 complete:0];
      error = [(PCSCKKSOperation *)self error];
      completeCopy[2](completeCopy, error);
LABEL_27:

      error12 = v121;
      goto LABEL_28;
    }

    v13 = *MEMORY[0x1E695E4D0];
    v116 = *MEMORY[0x1E697B320];
    CFDictionarySetValue(theDict, *MEMORY[0x1E697B320], *MEMORY[0x1E695E4D0]);
    v115 = *MEMORY[0x1E697B310];
    CFDictionarySetValue(theDict, *MEMORY[0x1E697B310], v13);
    v14 = dispatch_semaphore_create(0);
    v15 = dispatch_semaphore_create(0);
    v16 = dispatch_queue_create("PCSAddIdentitySyncQueue", 0);
    CFRetain(a4);
    serviceContexts = [(PCSCKKSItemModifyContext *)self->_context serviceContexts];
    v18 = [serviceContexts objectForKeyedSubscript:identityCopy];
    v19 = v18[1];

    if (v19)
    {
      serviceContexts2 = [(PCSCKKSItemModifyContext *)self->_context serviceContexts];
      v21 = [serviceContexts2 objectForKeyedSubscript:identityCopy];
      CFRelease(v21[1]);

      serviceContexts3 = [(PCSCKKSItemModifyContext *)self->_context serviceContexts];
      v23 = [serviceContexts3 objectForKeyedSubscript:identityCopy];
      v23[1] = 0;
    }

    serviceContexts4 = [(PCSCKKSItemModifyContext *)self->_context serviceContexts];
    v25 = [serviceContexts4 objectForKeyedSubscript:identityCopy];
    v130[0] = MEMORY[0x1E69E9820];
    v130[1] = 3221225472;
    v130[2] = __69__PCSCKKSCreateIdentityOperation_storePCSIdentity_identity_complete___block_invoke;
    v130[3] = &unk_1E7B18D48;
    objc_copyWeak(v138, &location);
    v138[1] = a4;
    dsema = v14;
    v131 = dsema;
    v26 = identityCopy;
    v132 = v26;
    v133 = v121;
    v120 = v15;
    v134 = v120;
    v117 = completeCopy;
    v136 = v117;
    queue = v16;
    v135 = queue;
    v137 = v139;
    v27 = [(PCSCKKSCreateIdentityOperation *)self addAndNotifyOnSync:v26 identity:a4 attributes:theDict returnAttributes:v25 + 8 complete:v130];

    if (v27)
    {
      if (v27 == -25299)
      {
        PCSMigrationLog([(PCSCKKSItemModifyContext *)self->_context log], @"Item already in keychain, find it so we can set it to current");
        PublicKey = PCSIdentityGetPublicKey(a4);
        cf = 0;
        ServiceViewHint = PCSIdentityGetServiceViewHint(a4);
        if (!ServiceViewHint)
        {
          context3 = [(PCSCKKSCreateIdentityOperation *)self context];
          [context3 resetIdentities];

          v85 = MEMORY[0x1E696ABC0];
          v86 = kPCSErrorDomain;
          v150 = *MEMORY[0x1E696A578];
          v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get view hint from identity %@", a4];
          v151 = v87;
          v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
          v89 = [v85 errorWithDomain:v86 code:113 userInfo:v88];
          [(PCSCKKSOperation *)self setError:v89];

          v90 = [(PCSCKKSItemModifyContext *)self->_context log];
          error2 = [(PCSCKKSOperation *)self error];
          PCSMigrationLog(v90, @"Set current: %@", error2);

          error3 = [(PCSCKKSOperation *)self error];
          v117[2](v117, error3);

          CFRelease(theDict);
          goto LABEL_26;
        }

        ServiceAccessGroup = PCSIdentityGetServiceAccessGroup(a4);
        v31 = kPCSServiceName[0];
        [(PCSCKKSItemModifyContext *)self->_context dsid];
        v114 = v13;
        v113 = v13;
        v110 = v112 = ServiceViewHint;
        v111 = *MEMORY[0x1E697AEA8];
        v108 = PublicKey;
        v109 = *MEMORY[0x1E697AE80];
        v106 = v31;
        v107 = *MEMORY[0x1E697AC30];
        v104 = ServiceAccessGroup;
        v105 = *MEMORY[0x1E697AE70];
        v102 = v13;
        v103 = *MEMORY[0x1E697ABD0];
        v101 = *MEMORY[0x1E697B390];
        MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(v110, v32, v33, v34, v35, v36, v37, v38, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);

        if (PCSUseSyncKeychain == 1)
        {
          CFDictionarySetValue(MutableForCFTypesWith, *MEMORY[0x1E697AEB0], v13);
        }

        v40 = _PCSKeychainForwardTable(MutableForCFTypesWith, &cf);
        CFRelease(MutableForCFTypesWith);
        context4 = [(PCSCKKSCreateIdentityOperation *)self context];
        serviceContexts5 = [context4 serviceContexts];
        v43 = [serviceContexts5 objectForKeyedSubscript:v26];

        if (v40 || !cf || (v44 = CFGetTypeID(cf), v44 != CFDictionaryGetTypeID()))
        {
          [v43 resetIdentity];
          v76 = MEMORY[0x1E696ABC0];
          v77 = kPCSErrorDomain;
          v148 = *MEMORY[0x1E696A578];
          v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to find manatee identity %@: %d", a4, v40, v101, v13, v103, v104, v105, v31, v107, v108, v109, v110, v111, v112, v116, v13, v115, v13, 0];
          v149 = v78;
          v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
          v80 = [v76 errorWithDomain:v77 code:114 userInfo:v79];
          [(PCSCKKSOperation *)self setError:v80];

          v81 = [(PCSCKKSItemModifyContext *)self->_context log];
          error4 = [(PCSCKKSOperation *)self error];
          PCSMigrationLog(v81, @"Failed to find in local keychain: %@", error4);

          error5 = [(PCSCKKSOperation *)self error];
          v117[2](v117, error5);

          CFRelease(theDict);
          goto LABEL_26;
        }

        v45 = CFDictionaryGetValue(cf, *MEMORY[0x1E697AE68]);
        v46 = CFDictionaryGetValue(cf, *MEMORY[0x1E697B3C8]);
        if (!v46 || !v45)
        {
          [v43 resetIdentity];
          v93 = MEMORY[0x1E696ABC0];
          v94 = kPCSErrorDomain;
          v146 = *MEMORY[0x1E696A578];
          v95 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to find manatee identity %@: %d", a4, 0, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v116, v113, v115, v114, 0];
          v147 = v95;
          v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
          v97 = [v93 errorWithDomain:v94 code:114 userInfo:v96];
          [(PCSCKKSOperation *)self setError:v97];

          v98 = [(PCSCKKSItemModifyContext *)self->_context log];
          error6 = [(PCSCKKSOperation *)self error];
          PCSMigrationLog(v98, @"Failed to find %@ from local keychain: %@", a4, error6);

          error7 = [(PCSCKKSOperation *)self error];
          v117[2](v117, error7);

          CFRelease(cf);
          CFRelease(theDict);

          goto LABEL_26;
        }

        PCSMigrationLog([(PCSCKKSItemModifyContext *)self->_context log], @"Setting already stored identity %@ with pref %@ to current", a4, v46, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v116, v113, v115, v114, 0);
        [v43 setRollItemReference:v46];
        [v43 setRollItemSHA1:v45];
        [v43 setRollIdentity:CFRetain(a4)];
        [(PCSCKKSCreateIdentityOperation *)self setIdentityToCurrent:v26 complete:v117];
        CFRelease(cf);
      }

      else
      {
        context5 = [(PCSCKKSCreateIdentityOperation *)self context];
        serviceContexts6 = [context5 serviceContexts];
        v66 = [serviceContexts6 objectForKeyedSubscript:v26];
        [v66 resetIdentity];

        v67 = MEMORY[0x1E696ABC0];
        v68 = kPCSErrorDomain;
        v144 = *MEMORY[0x1E696A578];
        v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to store manatee identity %@ with error: %d", a4, v27];
        v145 = v69;
        v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
        v71 = [v67 errorWithDomain:v68 code:115 userInfo:v70];
        [(PCSCKKSOperation *)self setError:v71];

        v72 = [(PCSCKKSItemModifyContext *)self->_context log];
        error8 = [(PCSCKKSOperation *)self error];
        PCSMigrationLog(v72, @"Failed to store service %@ to local keychain: %@", v26, error8);

        error9 = [(PCSCKKSOperation *)self error];
        v117[2](v117, error9);

        CFRelease(a4);
      }
    }

    else
    {
      dispatch_semaphore_signal(dsema);
      v55 = dispatch_time(0, 1000000000 * [(PCSCKKSItemModifyContext *)self->_context timeoutValue]);
      if (dispatch_semaphore_wait(v120, v55))
      {
        cf = 0;
        p_cf = &cf;
        v128 = 0x2020000000;
        v129 = 0;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __69__PCSCKKSCreateIdentityOperation_storePCSIdentity_identity_complete___block_invoke_2;
        block[3] = &unk_1E7B18D20;
        block[4] = &cf;
        block[5] = v139;
        dispatch_sync(queue, block);
        if ((p_cf[3] & 1) == 0)
        {
          v56 = MEMORY[0x1E696ABC0];
          v57 = kPCSErrorDomain;
          v142 = *MEMORY[0x1E696A578];
          v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to store manatee identity %@, operation timed out", a4];
          v143 = v58;
          v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
          v60 = [v56 errorWithDomain:v57 code:116 userInfo:v59];
          [(PCSCKKSOperation *)self setError:v60];

          v61 = [(PCSCKKSItemModifyContext *)self->_context log];
          error10 = [(PCSCKKSOperation *)self error];
          PCSMigrationLog(v61, @"Failed to store service %@ to CKKS: %@", v26, error10);

          error11 = [(PCSCKKSOperation *)self error];
          v117[2](v117, error11);
        }

        _Block_object_dispose(&cf, 8);
      }
    }

    CFRelease(theDict);
LABEL_26:

    objc_destroyWeak(v138);
    error = dsema;
    goto LABEL_27;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(cf) = 0;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", &cf, 2u);
  }

  v47 = [MEMORY[0x1E696ABC0] errorWithDomain:kPCSErrorDomain code:46 userInfo:&unk_1F2998340];
  [(PCSCKKSOperation *)self setError:v47];

  error12 = [(PCSCKKSOperation *)self error];
  completeCopy[2](completeCopy, error12);
LABEL_28:

  _Block_object_dispose(v139, 8);
  objc_destroyWeak(&location);

  v75 = *MEMORY[0x1E69E9840];
}

void __69__PCSCKKSCreateIdentityOperation_storePCSIdentity_identity_complete___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v64[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(a1 + 32);
    v9 = dispatch_time(0, 1000000000 * [WeakRetained[34] timeoutValue]);
    if (dispatch_semaphore_wait(v8, v9))
    {
      PCSMigrationLog([v7[34] log], @"Timed out waiting for add to complete: %@", *(a1 + 40));
      v10 = MEMORY[0x1E696ABC0];
      v11 = kPCSErrorDomain;
      v63 = *MEMORY[0x1E696A578];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"timeout waiting SecItemAdd for service: %@", *(a1 + 40)];
      v64[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:1];
      v14 = [v10 errorWithDomain:v11 code:110 userInfo:v13];
      [v7 setError:v14];

      [*(a1 + 48) complete:0];
      dispatch_semaphore_signal(*(a1 + 56));
      v15 = *(a1 + 72);
      v16 = [v7 error];
      (*(v15 + 16))(v15, v16);

      CFRelease(*(a1 + 96));
      goto LABEL_19;
    }

    dispatch_semaphore_signal(*(a1 + 56));
    *buf = 0;
    v56 = buf;
    v57 = 0x2020000000;
    v58 = 0;
    v18 = *(a1 + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__PCSCKKSCreateIdentityOperation_storePCSIdentity_identity_complete___block_invoke_49;
    block[3] = &unk_1E7B18D20;
    v19 = *(a1 + 80);
    block[4] = buf;
    block[5] = v19;
    dispatch_sync(v18, block);
    if (v56[24] != 1)
    {
      v20 = [v7[34] serviceContexts];
      v21 = [v20 objectForKeyedSubscript:*(a1 + 40)];
      Value = CFDictionaryGetValue(v21[1], *MEMORY[0x1E697B3C8]);

      if (!a2 || ([v7[34] serviceContexts], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "objectForKeyedSubscript:", *(a1 + 40)), v24 = objc_claimAutoreleasedReturnValue(), v25 = v24[1] == 0, v24, v23, v25))
      {
        PCSMigrationLog([v7[34] log], @"Failed to push service %@ to CKKS: %@", *(a1 + 40), a3);
        if (a3)
        {
          [v7 setError:a3];
        }

        else
        {
          v34 = MEMORY[0x1E696ABC0];
          v35 = kPCSErrorDomain;
          v59 = *MEMORY[0x1E696A578];
          v36 = MEMORY[0x1E696AEC0];
          v37 = [v7[34] serviceContexts];
          v38 = [v37 objectForKeyedSubscript:*(a1 + 40)];
          v39 = [v36 stringWithFormat:@"Failed but no error on addandnotifyonsync: %@", v38[1]];
          v60 = v39;
          v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          v41 = [v34 errorWithDomain:v35 code:111 userInfo:v40];
          [v7 setError:v41];
        }

        v42 = [v7 context];
        v43 = [v42 serviceContexts];
        v44 = [v43 objectForKeyedSubscript:*(a1 + 40)];
        [v44 resetIdentity];

        [*(a1 + 48) complete:0];
        v45 = *(a1 + 72);
        v30 = [v7 error];
        (*(v45 + 16))(v45, v30);
      }

      else
      {
        v26 = [v7[34] serviceContexts];
        v27 = [v26 objectForKeyedSubscript:*(a1 + 40)];
        v28 = CFDictionaryGetValue(v27[1], *MEMORY[0x1E697AE68]);

        if (!Value || !v28)
        {
          v47 = MEMORY[0x1E696ABC0];
          v48 = kPCSErrorDomain;
          v61 = *MEMORY[0x1E696A578];
          v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Store manatee and sync, but didn't get a pref/sha1"];
          v62 = v49;
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
          v51 = [v47 errorWithDomain:v48 code:112 userInfo:v50];
          [v7 setError:v51];

          v52 = *(a1 + 72);
          v53 = [v7 error];
          (*(v52 + 16))(v52, v53);

          [*(a1 + 48) complete:0];
          goto LABEL_18;
        }

        PCSMigrationLog([v7[34] log], @"Stored identity with pref: %@", Value);
        v29 = [v7[34] serviceContexts];
        v30 = [v29 objectForKeyedSubscript:*(a1 + 40)];

        [v30 setRollItemReference:Value];
        [v30 setRollItemSHA1:v28];
        [v30 setRollIdentity:CFRetain(*(a1 + 96))];
        v31 = *(a1 + 96);
        v32 = [v7[34] serviceContexts];
        v33 = [v32 objectForKeyedSubscript:*(a1 + 40)];
        _PCSIdentityCheckPCSAttributes(v31, v33[1]);

        [*(a1 + 48) complete:1];
        [v7 setIdentityToCurrent:*(a1 + 40) complete:*(a1 + 72)];
      }
    }

LABEL_18:
    CFRelease(*(a1 + 96));
    _Block_object_dispose(buf, 8);
    goto LABEL_19;
  }

  v17 = pcsLogObjForScope("ckks");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, v17, OS_LOG_TYPE_DEFAULT, "Strong self no longer exists", buf, 2u);
  }

  CFRelease(*(a1 + 96));
LABEL_19:

  v46 = *MEMORY[0x1E69E9840];
}

uint64_t __69__PCSCKKSCreateIdentityOperation_storePCSIdentity_identity_complete___block_invoke_49(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = *(*(*(result + 40) + 8) + 24);
  *(*(*(result + 40) + 8) + 24) = 1;
  return result;
}

uint64_t __69__PCSCKKSCreateIdentityOperation_storePCSIdentity_identity_complete___block_invoke_2(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = *(*(*(result + 40) + 8) + 24);
  *(*(*(result + 40) + 8) + 24) = 1;
  return result;
}

- (int)addAndNotifyOnSync:(id)sync identity:(_PCSIdentityData *)identity attributes:(__CFDictionary *)attributes returnAttributes:(const __CFDictionary *)returnAttributes complete:(id)complete
{
  v22[1] = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  PCSMigrationLog([(PCSCKKSItemModifyContext *)self->_context log], @"Saving identity %@ to keychain", identity);
  context = [(PCSCKKSCreateIdentityOperation *)self context];
  LOBYTE(self) = PCSCurrentPersonaMatchesDSIDFromSet([context set]);

  if (self)
  {
    v13 = xmmword_1ED6F2368(attributes, returnAttributes, completeCopy);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
    }

    v14 = MEMORY[0x1E696ABC0];
    v15 = kPCSErrorDomain;
    v21 = *MEMORY[0x1E696A578];
    v22[0] = @"dsid does not match current persona's account dsid";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v17 = [v14 errorWithDomain:v15 code:146 userInfo:v16];

    completeCopy[2](completeCopy, 0, v17);
    v13 = -25291;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)setIdentityToCurrent:(id)current complete:(id)complete
{
  v48[1] = *MEMORY[0x1E69E9840];
  currentCopy = current;
  completeCopy = complete;
  context = [(PCSCKKSCreateIdentityOperation *)self context];
  v9 = PCSCurrentPersonaMatchesDSIDFromSet([context set]);

  if (v9)
  {
    CKKSViewByName = PCSServiceItemGetCKKSViewByName(currentCopy);
    if (CKKSViewByName)
    {
      v11 = CKKSViewByName;
      context2 = [(PCSCKKSCreateIdentityOperation *)self context];
      v13 = [context2 mtt];
      v33 = [v13 measurePoint:@"CKKSSetCurrentIdentity"];

      *buf = 0;
      v40 = buf;
      v41 = 0x3032000000;
      v42 = __Block_byref_object_copy_;
      v43 = __Block_byref_object_dispose_;
      context3 = [(PCSCKKSCreateIdentityOperation *)self context];
      serviceContexts = [context3 serviceContexts];
      v44 = [serviceContexts objectForKeyedSubscript:currentCopy];

      v32 = off_1ED6F2378;
      AccessGroupByName = PCSServiceItemGetAccessGroupByName(currentCopy);
      rollItemReference = [*(v40 + 5) rollItemReference];
      rollItemSHA1 = [*(v40 + 5) rollItemSHA1];
      existingItemReference = [*(v40 + 5) existingItemReference];
      existingItemSHA1 = [*(v40 + 5) existingItemSHA1];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __64__PCSCKKSCreateIdentityOperation_setIdentityToCurrent_complete___block_invoke;
      v34[3] = &unk_1E7B18D70;
      v38 = buf;
      v34[4] = self;
      v35 = currentCopy;
      error = v33;
      v36 = error;
      v37 = completeCopy;
      v32(AccessGroupByName, v35, v11, rollItemReference, rollItemSHA1, existingItemReference, existingItemSHA1, v34);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v26 = MEMORY[0x1E696ABC0];
      v27 = kPCSErrorDomain;
      v45 = *MEMORY[0x1E696A578];
      currentCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"No view hint for %@", currentCopy];
      v46 = currentCopy;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v30 = [v26 errorWithDomain:v27 code:102 userInfo:v29];
      [(PCSCKKSOperation *)self setError:v30];

      error = [(PCSCKKSOperation *)self error];
      (*(completeCopy + 2))(completeCopy, error);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
    }

    v22 = MEMORY[0x1E696ABC0];
    v23 = kPCSErrorDomain;
    v47 = *MEMORY[0x1E696A578];
    v48[0] = @"dsid does not match current persona's account dsid";
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    v25 = [v22 errorWithDomain:v23 code:146 userInfo:v24];
    [(PCSCKKSOperation *)self setError:v25];

    error = [(PCSCKKSOperation *)self error];
    (*(completeCopy + 2))(completeCopy, error);
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __64__PCSCKKSCreateIdentityOperation_setIdentityToCurrent_complete___block_invoke(uint64_t a1, const void *a2)
{
  cf = 0;
  if (a2)
  {
    v3 = a2;
    [*(a1 + 48) complete:0];
LABEL_3:
    [*(a1 + 32) setError:v3];
    v4 = *(a1 + 56);
    v5 = [*(a1 + 32) error];
    (*(v4 + 16))(v4, v5);

    goto LABEL_10;
  }

  if (![*(*(*(a1 + 64) + 8) + 40) rollIdentity] || _PCSIdentityIsManatee(objc_msgSend(*(*(*(a1 + 64) + 8) + 40), "rollIdentity")))
  {
    goto LABEL_8;
  }

  v6 = PCSIdentitySetSetCurrentIdentityWithError([*(*(a1 + 32) + 272) set], objc_msgSend(*(*(*(a1 + 64) + 8) + 40), "rollIdentity"), &cf);
  v7 = [*(*(a1 + 32) + 272) log];
  v8 = *(a1 + 40);
  if (v6)
  {
    PCSMigrationLog(v7, @"Successfully set current 'type' bit for service %@", *(a1 + 40));
LABEL_8:
    [*(a1 + 48) complete:1];
    goto LABEL_9;
  }

  PCSMigrationLog(v7, @"Failed to set current 'type' bit for service %@: %@", *(a1 + 40), cf);
  v3 = cf;
  [*(a1 + 48) complete:cf == 0];
  if (v3)
  {
    goto LABEL_3;
  }

LABEL_9:
  [*(a1 + 32) itemStored:*(a1 + 40) complete:*(a1 + 56)];
LABEL_10:
  v9 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v9);
  }
}

- (void)itemStored:(id)stored complete:(id)complete
{
  v23[1] = *MEMORY[0x1E69E9840];
  storedCopy = stored;
  completeCopy = complete;
  context = [(PCSCKKSCreateIdentityOperation *)self context];
  v9 = PCSCurrentPersonaMatchesDSIDFromSet([context set]);

  if (v9)
  {
    context2 = [(PCSCKKSCreateIdentityOperation *)self context];
    serviceContexts = [context2 serviceContexts];
    v12 = [serviceContexts objectForKeyedSubscript:storedCopy];

    rollIdentity = [v12 rollIdentity];
    rollItemReference = [v12 rollItemReference];
    [v12 setCurrentIdentity:rollIdentity persistentReference:rollItemReference];

    completeCopy[2](completeCopy, 0);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", v21, 2u);
    }

    v15 = MEMORY[0x1E696ABC0];
    v16 = kPCSErrorDomain;
    v22 = *MEMORY[0x1E696A578];
    v23[0] = @"dsid does not match current persona's account dsid";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v18 = [v15 errorWithDomain:v16 code:146 userInfo:v17];
    [(PCSCKKSOperation *)self setError:v18];

    error = [(PCSCKKSOperation *)self error];
    (completeCopy)[2](completeCopy, error);
  }

  v20 = *MEMORY[0x1E69E9840];
}

@end