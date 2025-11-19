void ___ZL24getUserActivityObserversb_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v1 = getUserActivityObservers(BOOL)::sResult;
  getUserActivityObservers(BOOL)::sResult = v0;
}

id _uaGetLogForCategory(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = getenv("_UALOGGINGCATEGORY");
    if (!v2 || ([MEMORY[0x277CCACA8] stringWithCString:v2 encoding:4], (v1 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v1 = @"main";
    }
  }

  if (pthread_mutex_lock(&_uaGetLogForCategory::sLock))
  {
    v3 = 0;
  }

  else
  {
    v4 = _uaGetLogForCategory::sLogs;
    if (!_uaGetLogForCategory::sLogs)
    {
      v5 = [MEMORY[0x277CBEB38] dictionary];
      v6 = _uaGetLogForCategory::sLogs;
      _uaGetLogForCategory::sLogs = v5;

      v4 = _uaGetLogForCategory::sLogs;
    }

    v3 = [v4 objectForKey:v1];
    if (!v3)
    {
      v7 = os_log_create("com.apple.useractivity", [(__CFString *)v1 cStringUsingEncoding:4]);
      if (v7)
      {
        v3 = v7;
        [_uaGetLogForCategory::sLogs setValue:v7 forKey:v1];
      }

      else
      {
        v3 = MEMORY[0x277D86220];
        v8 = MEMORY[0x277D86220];
      }
    }

    pthread_mutex_unlock(&_uaGetLogForCategory::sLock);
  }

  return v3;
}

void ___ZL24uaUserActivityObjectsMapv_block_invoke()
{
  v0 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  v1 = uaUserActivityObjectsMap(void)::sResult;
  uaUserActivityObjectsMap(void)::sResult = v0;
}

id uaUserActivityObjectsMap(void)
{
  if (uaUserActivityObjectsMap(void)::sOnce != -1)
  {
    uaUserActivityObjectsMap();
  }

  v1 = uaUserActivityObjectsMap(void)::sResult;

  return v1;
}

void __biomeInfoLogging_block_invoke()
{
  v0 = os_log_create("com.apple.useractivity", "biome-69594900");
  v1 = biomeInfoLogging::sLog;
  biomeInfoLogging::sLog = v0;

  v2 = biomeInfoLogging::sLog;
  if (os_log_type_enabled(biomeInfoLogging::sLog, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_INFO, "- UAUserActivity\tv1.0", v3, 2u);
  }
}

void ___ZL36getUAUserActivityToNSUserActivityMapv_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:5 valueOptions:5 capacity:0];
  v1 = getUAUserActivityToNSUserActivityMap(void)::sResult;
  getUAUserActivityToNSUserActivityMap(void)::sResult = v0;
}

id getUserActivityObserversCopy()
{
  v0 = getUserActivityObservers(BOOL)::sResult;
  objc_sync_enter(v0);
  v1 = [v0 copy];
  objc_sync_exit(v0);

  return v1;
}

void sub_226A4FA14(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id biomeInfoLogging()
{
  if (biomeInfoLogging::sOnce != -1)
  {
    biomeInfoLogging_cold_1();
  }

  v1 = biomeInfoLogging::sLog;

  return v1;
}

id getUAUserActivityToNSUserActivityMap(void)
{
  if (getUAUserActivityToNSUserActivityMap(void)::sOnce != -1)
  {
    getUAUserActivityToNSUserActivityMap();
  }

  v1 = getUAUserActivityToNSUserActivityMap(void)::sResult;

  return v1;
}

__CFString *trimmedString(void *a1, unsigned int a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 length];
    if (v5 <= a2)
    {
      v9 = v4;
    }

    else
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [v4 substringWithRange:{0, a2 >> 1}];
      v8 = [v4 substringWithRange:{v5 - (a2 >> 1), a2 >> 1}];
      v9 = [v6 stringWithFormat:@"%@..(%ld)..%@", v7, v5 - a2, v8];
    }
  }

  else
  {
    v9 = &stru_283A5A2C8;
  }

  return v9;
}

__CFString *suggestedActionTypeString(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 0xA && ((0x217u >> v2))
  {
    v3 = off_2785C3FA0[v2];
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"UASuggestedActionType=%ld", a1];
  }

  return v3;
}

void sub_226A4FDB8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

BOOL differ(objc_object *a1, objc_object *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = v3 != v4 && (!v3 || !v4 || ([(objc_object *)v3 isEqual:v4]& 1) == 0);

  return v6;
}

uint64_t recurse(void *a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = v3;
  v7 = v5;
  v8 = v4;
  v27 = v6;
  if (([v7 containsObject:v6] & 1) == 0)
  {
    [v7 addObject:v6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v4;
      v10 = v6;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v11 = [v10 allKeys];
      v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v12)
      {
        v25 = v3;
        v13 = *v29;
        LOBYTE(v9) = 1;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v29 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v28 + 1) + 8 * i);
            v16 = [v10 objectForKey:{v15, v25, v26}];
            if ((v9 & 1) != 0 && v8[2](v8, v15))
            {
              v9 = v8[2](v8, v16);
            }

            else
            {
              v9 = 0;
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v12);
        goto LABEL_41;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v11 = v6;
        v17 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v17)
        {
          v18 = *v29;
          LOBYTE(v9) = 1;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v29 != v18)
              {
                objc_enumerationMutation(v11);
              }

              if (v9)
              {
                v9 = v8[2](v8, *(*(&v28 + 1) + 8 * j));
              }

              else
              {
                v9 = 0;
              }
            }

            v17 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
          }

          while (v17);
          goto LABEL_41;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v9 = v8[2](v8, v6);
          goto LABEL_42;
        }

        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v11 = v6;
        v20 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v20)
        {
          v21 = *v29;
          LOBYTE(v9) = 1;
          do
          {
            for (k = 0; k != v20; ++k)
            {
              if (*v29 != v21)
              {
                objc_enumerationMutation(v11);
              }

              if (v9)
              {
                v9 = v8[2](v8, *(*(&v28 + 1) + 8 * k));
              }

              else
              {
                v9 = 0;
              }
            }

            v20 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
          }

          while (v20);
          goto LABEL_41;
        }
      }
    }

    v9 = 1;
LABEL_41:

    goto LABEL_42;
  }

  v9 = 1;
LABEL_42:

  v23 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t ___Z21acceptableForUserInfoP12NSDictionary_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = objectIsOfAcceptableClassForUserInfo(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t objectIsOfAcceptableClassForUserInfo(objc_object *a1)
{
  v18[10] = *MEMORY[0x277D85DE8];
  v1 = a1;
  os_unfair_lock_lock(&objectIsOfAcceptableClassForUserInfo(objc_object *)::sLock);
  v2 = objectIsOfAcceptableClassForUserInfo(objc_object *)::sAcceptableClasses;
  if (!objectIsOfAcceptableClassForUserInfo(objc_object *)::sAcceptableClasses)
  {
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v18[3] = objc_opt_class();
    v18[4] = objc_opt_class();
    v18[5] = objc_opt_class();
    v18[6] = objc_opt_class();
    v18[7] = objc_opt_class();
    v18[8] = objc_opt_class();
    v18[9] = objc_opt_class();
    v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:v18 count:10];
    v4 = objectIsOfAcceptableClassForUserInfo(objc_object *)::sAcceptableClasses;
    objectIsOfAcceptableClassForUserInfo(objc_object *)::sAcceptableClasses = v3;

    for (i = 9; i != -1; --i)
    {
    }

    v2 = objectIsOfAcceptableClassForUserInfo(objc_object *)::sAcceptableClasses;
  }

  if ([v2 containsObject:objc_opt_class()])
  {
    v6 = 1;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = objectIsOfAcceptableClassForUserInfo(objc_object *)::sAcceptableClasses;
    v6 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v8 = *v14;
      while (2)
      {
        for (j = 0; j != v6; ++j)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v10 = *(*(&v13 + 1) + 8 * j);
          if (objc_opt_isKindOfClass())
          {
            [objectIsOfAcceptableClassForUserInfo(objc_object *)::sAcceptableClasses addObject:{objc_opt_class(), v13}];
            v6 = 1;
            goto LABEL_17;
          }
        }

        v6 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  os_unfair_lock_unlock(&objectIsOfAcceptableClassForUserInfo(objc_object *)::sLock);

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL ___ZL25dictionaryContainsFileURLP12NSDictionary_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    *(*(*(a1 + 32) + 8) + 24) = [v4 isFileURL];
  }

  v5 = *(*(*(a1 + 32) + 8) + 24);

  return (v5 & 1) == 0;
}

void sub_226A507B0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_226A50834(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id copyNSStringOrSubclass(NSString *a1)
{
  v1 = a1;
  if ([(NSString *)v1 isMemberOfClass:objc_opt_class()])
  {
    v2 = [(NSString *)v1 copy];
LABEL_3:
    v3 = v2;
    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v2 = [MEMORY[0x277CCACA8] stringWithString:v1];
    goto LABEL_3;
  }

  v3 = 0;
LABEL_8:

  return v3;
}

uint64_t ___ZL53loadSynapseObserverWhenFirstUserActivityIsMadeCurrentv_block_invoke()
{
  result = getSYActivityObserverClass();
  if (result)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      SYActivityObserverClass = getSYActivityObserverClass();

      return [SYActivityObserverClass loadSynapseObserver];
    }
  }

  return result;
}

Class initSYActivityObserver(void)
{
  if (LoadSynapse(void)::loadPredicate != -1)
  {
    initSYActivityObserver();
  }

  result = objc_getClass("SYActivityObserver");
  classSYActivityObserver = result;
  getSYActivityObserverClass = SYActivityObserverFunction;
  return result;
}

void ___ZL11LoadSynapsev_block_invoke()
{
  LoadSynapse(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/Synapse.framework/Synapse", 2);
  if (!LoadSynapse(void)::frameworkLibrary)
  {
    NSLog(&cfstr_FailedToSoftLi_0.isa);
  }
}

id stringFromEnvWithDefault(const char *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = getenv(a1);
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithCString:v4 encoding:4];
    v6 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138543618;
      v10 = v5;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_226A4E000, v6, OS_LOG_TYPE_DEBUG, "Using service name %{public}@ for %{public}@", &v9, 0x16u);
    }
  }

  else
  {
    v5 = v3;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

id _LSGetUserActivityClientProtocolInterface()
{
  if (_LSGetUserActivityClientProtocolInterface_once != -1)
  {
    _LSGetUserActivityClientProtocolInterface_cold_1();
  }

  v1 = _LSGetUserActivityClientProtocolInterface_result;

  return v1;
}

id _LSGetUserActivityClientResponseProtocolInterface()
{
  if (_LSGetUserActivityClientResponseProtocolInterface_once != -1)
  {
    _LSGetUserActivityClientResponseProtocolInterface_cold_1();
  }

  v1 = _LSGetUserActivityClientResponseProtocolInterface_result;

  return v1;
}

void sub_226A51F08(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

objc_object *deepMutableCopyOnce(objc_object *a1, NSMutableDictionary *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v6 = [(NSMutableDictionary *)v4 objectForKey:v3];

    if (v6)
    {
      v7 = [(NSMutableDictionary *)v5 objectForKey:v3];
LABEL_4:
      v8 = v7;
      goto LABEL_38;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(NSMutableDictionary *)v5 setObject:v8 forKey:v3];
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v9 = [(objc_object *)v3 allKeys];
      v10 = [v9 countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v10)
      {
        v11 = *v39;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v39 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v38 + 1) + 8 * i);
            v14 = deepMutableCopyOnce(v13, v5);
            v15 = [(objc_object *)v3 objectForKey:v13];
            v16 = deepMutableCopyOnce(v15, v5);

            if (v14)
            {
              v17 = v16 == 0;
            }

            else
            {
              v17 = 1;
            }

            if (!v17)
            {
              [(objc_object *)v8 setObject:v16 forKey:v14];
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v38 objects:v44 count:16];
        }

        while (v10);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
        [(NSMutableDictionary *)v5 setObject:v8 forKey:v3];
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v18 = v3;
        v19 = [(objc_object *)v18 countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v19)
        {
          v20 = *v35;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v35 != v20)
              {
                objc_enumerationMutation(v18);
              }

              v22 = deepMutableCopyOnce(*(*(&v34 + 1) + 8 * j), v5);
              [(objc_object *)v8 addObject:v22];
            }

            v19 = [(objc_object *)v18 countByEnumeratingWithState:&v34 objects:v43 count:16];
          }

          while (v19);
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (objc_opt_respondsToSelector())
          {
            v7 = [(objc_object *)v3 copy];
          }

          else
          {
            v7 = v3;
          }

          goto LABEL_4;
        }

        v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
        [(NSMutableDictionary *)v5 setObject:v8 forKey:v3];
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v23 = v3;
        v24 = [(objc_object *)v23 countByEnumeratingWithState:&v30 objects:v42 count:16];
        if (v24)
        {
          v25 = *v31;
          do
          {
            for (k = 0; k != v24; ++k)
            {
              if (*v31 != v25)
              {
                objc_enumerationMutation(v23);
              }

              v27 = deepMutableCopyOnce(*(*(&v30 + 1) + 8 * k), v5);
              [(objc_object *)v8 addObject:v27, v30];
            }

            v24 = [(objc_object *)v23 countByEnumeratingWithState:&v30 objects:v42 count:16];
          }

          while (v24);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_38:

  v28 = *MEMORY[0x277D85DE8];

  return v8;
}

id deepMutableCopy(objc_object *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = deepMutableCopyOnce(v1, v2);

  return v3;
}

void sub_226A52768(_Unwind_Exception *a1)
{
  v5 = v4;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_226A52828(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_226A528FC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id getIndexPendingQueue(void)
{
  if (getIndexPendingQueue(void)::sIndexPendingOnce != -1)
  {
    getIndexPendingQueue();
  }

  v1 = getIndexPendingQueue(void)::sIndexPendingQueue;

  return v1;
}

void setIndexPendingForUUID(char a1, NSUUID *a2)
{
  v3 = a2;
  v4 = getIndexPendingQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___Z22setIndexPendingForUUIDbP6NSUUID_block_invoke;
  v6[3] = &unk_2785C3760;
  v8 = a1;
  v7 = v3;
  v5 = v3;
  dispatch_sync(v4, v6);
}

void ___ZL20getIndexPendingQueuev_block_invoke()
{
  v0 = dispatch_queue_create("indexPendingQ", 0);
  v1 = getIndexPendingQueue(void)::sIndexPendingQueue;
  getIndexPendingQueue(void)::sIndexPendingQueue = v0;
}

void *___Z22setIndexPendingForUUIDbP6NSUUID_block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1 && sIndexPendingUUIDs == 0)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = sIndexPendingUUIDs;
    sIndexPendingUUIDs = v6;

    if (*(a1 + 40))
    {
      goto LABEL_6;
    }
  }

  else if (*(a1 + 40))
  {
LABEL_6:
    v3 = sIndexPendingUUIDs;
    v4 = *(a1 + 32);

    return [v3 addObject:v4];
  }

  result = sIndexPendingUUIDs;
  if (sIndexPendingUUIDs && *(a1 + 32))
  {

    return [result removeObject:?];
  }

  return result;
}

void ___ZL24getDeferredIndexingQueuev_block_invoke()
{
  v0 = dispatch_queue_create("coreSpotlightDeferredIndexQ", 0);
  v1 = getDeferredIndexingQueue(void)::sQueue;
  getDeferredIndexingQueue(void)::sQueue = v0;
}

BOOL cmp_write_u32(uint64_t a1, unsigned int a2)
{
  v6 = -50;
  if ((*(a1 + 24))(a1, &v6, 1) == 1)
  {
    v5 = bswap32(a2);
    return (*(a1 + 24))(a1, &v5, 4) != 0;
  }

  else
  {
    result = 0;
    *a1 = 8;
  }

  return result;
}

BOOL cmp_write_uint(uint64_t a1, unint64_t a2)
{
  if (a2 > 0x7F)
  {
    if (a2 > 0xFF)
    {
      if (a2 >> 16)
      {
        if (HIDWORD(a2))
        {

          return cmp_write_u64(a1, a2);
        }

        else
        {

          return cmp_write_u32(a1, a2);
        }
      }

      else
      {

        return cmp_write_u16(a1, a2);
      }
    }

    else
    {

      return cmp_write_u8(a1, a2);
    }
  }

  else
  {
    v5 = a2;
    v3 = 1;
    if ((*(a1 + 24))(a1, &v5, 1) != 1)
    {
      v3 = 0;
      *a1 = 6;
    }

    return v3;
  }
}

BOOL cmp_write_u16(uint64_t a1, unsigned int a2)
{
  v6 = -51;
  if ((*(a1 + 24))(a1, &v6, 1) == 1)
  {
    v5 = __rev16(a2);
    return (*(a1 + 24))(a1, &v5, 2) != 0;
  }

  else
  {
    result = 0;
    *a1 = 8;
  }

  return result;
}

BOOL cmp_write_double(uint64_t a1, double a2)
{
  v6 = -53;
  if ((*(a1 + 24))(a1, &v6, 1) == 1)
  {
    v5 = bswap64(*&a2);
    return (*(a1 + 24))(a1, &v5, 8) != 0;
  }

  else
  {
    result = 0;
    *a1 = 8;
  }

  return result;
}

uint64_t UAMessagePack::writeNumber(UAMessagePack *this, NSNumber *a2)
{
  v3 = a2;
  v4 = [(NSNumber *)v3 objCType];
  if (*v4 == 66 && !v4[1])
  {
    cmp_write_BOOL(this + 16, [(NSNumber *)v3 BOOLValue]);
    goto LABEL_12;
  }

  Type = CFNumberGetType(v3);
  if (Type <= kCFNumberCGFloatType)
  {
    if (((1 << Type) & 0x11020) != 0)
    {
      [(NSNumber *)v3 floatValue];
      cmp_write_float(this + 16, v6);
      goto LABEL_12;
    }

    if (((1 << Type) & 0x2040) != 0)
    {
      [(NSNumber *)v3 doubleValue];
      cmp_write_double(this + 16, v7);
      goto LABEL_12;
    }
  }

  if ([(NSNumber *)v3 compare:&unk_283A63840]< 0)
  {
    cmp_write_sint(this + 16, [(NSNumber *)v3 longLongValue]);
  }

  else
  {
    cmp_write_uint(this + 16, [(NSNumber *)v3 unsignedLongLongValue]);
  }

LABEL_12:

  return 1;
}

uint64_t cmp_write_str8_marker(uint64_t a1, char a2)
{
  v6 = a2;
  v7 = -39;
  if ((*(a1 + 24))(a1, &v7, 1) != 1)
  {
    v4 = 8;
    goto LABEL_5;
  }

  v3 = 1;
  if (!(*(a1 + 24))(a1, &v6, 1))
  {
    v4 = 15;
LABEL_5:
    v3 = 0;
    *a1 = v4;
  }

  return v3;
}

id trimmedHexStringForData(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = [MEMORY[0x277CCAB68] stringWithFormat:@"$"];
  v18 = [v3 bytes];
  v5 = [v3 length];
  v6 = v5;
  if (v5 >= a2)
  {
    v7 = a2 / 2;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    v8 = v18;
    v9 = v7;
    do
    {
      v10 = *v8++;
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c", a0123456789abcd[v10 >> 4], a0123456789abcd[v10 & 0xF]];
      [v4 appendString:v11];

      --v9;
    }

    while (v9);
  }

  if (v6 > v7)
  {
    [v4 appendFormat:@".. %ld ..", v6];
    if (v6 - v7 < v6)
    {
      v12 = -v7;
      v13 = v18 + v6;
      do
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c", a0123456789abcd[*(v13 + v12) >> 4], a0123456789abcd[*(v13 + v12) & 0xF]];
        [v4 appendString:v14];
      }

      while (!__CFADD__(v12++, 1));
    }
  }

  v16 = [v4 copy];

  return v16;
}

CFDataRef UAMessagePack::CopyPacked(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  UAMessagePack::UAMessagePack(&v12, a2, a3, a4);
  if (v7 && UAMessagePack::writeObject(&v12, v7))
  {
    v8 = [v13 bytes];
    v9 = [v13 length];
    v10 = CFDataCreate(*MEMORY[0x277CBECE8], v8, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t UAMessagePack::writeObject(UAMessagePack *this, objc_object *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(this + 6);
  if (v4 && (*(v4 + 16))(v4, v3, *this))
  {
    v5 = *this;
    v6 = (*(*(this + 7) + 16))();

    v3 = v6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cmp_write_array(this + 16, [(objc_object *)v3 count]);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v7 = v3;
    v8 = [(objc_object *)v7 countByEnumeratingWithState:&v44 objects:v51 count:16];
    if (v8)
    {
      v9 = *v45;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v45 != v9)
          {
            objc_enumerationMutation(v7);
          }

          if ((UAMessagePack::writeObject(this, *(*(&v44 + 1) + 8 * i)) & 1) == 0)
          {

            goto LABEL_30;
          }
        }

        v8 = [(objc_object *)v7 countByEnumeratingWithState:&v44 objects:v51 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cmp_write_map(this + 16, [(objc_object *)v3 count]);
    [(objc_object *)v3 keyEnumerator];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v11 = v41 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v12)
    {
      v13 = *v41;
      while (2)
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v40 + 1) + 8 * j);
          if (UAMessagePack::writeObject(this, v15))
          {
            v16 = [(objc_object *)v3 objectForKeyedSubscript:v15];
            v17 = UAMessagePack::writeObject(this, v16);

            if (v17)
            {
              continue;
            }
          }

          goto LABEL_30;
        }

        v12 = [v11 countByEnumeratingWithState:&v40 objects:v50 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v3;
    v19 = [(objc_object *)v18 UTF8String];
    v20 = v19;
    if (v19)
    {
      v21 = strlen(v19);
      cmp_write_str(this + 16, v20, v21);
    }

    else
    {
      size[0] = 0;
      v23 = [(objc_object *)v18 length];
      v24 = [(objc_object *)v18 getBytes:0 maxLength:0 usedLength:size encoding:4 options:0 range:0 remainingRange:v23, 0];
      if (size[0] >= 0x7FFFFFFF)
      {
        v24 = 0;
      }

      if (v24 == 1)
      {
        v25 = malloc_type_malloc(size[0], 0x100004077774924uLL);
        if (v25)
        {
          if ([(objc_object *)v18 getBytes:v25 maxLength:size[0] usedLength:0 encoding:4 options:0 range:0 remainingRange:v23, 0])
          {
            cmp_write_str(this + 16, v25, size[0]);
          }

          free(v25);
        }
      }
    }

    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    UAMessagePack::writeNumber(this, v3);
LABEL_43:
    v22 = 1;
    goto LABEL_44;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cmp_write_nil(this + 16);
    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cmp_write_bin(this + 16, [(objc_object *)v3 bytes], [(objc_object *)v3 length]);
    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cmp_write_ext(this + 16, 2, 0, 0);
    cmp_write_array(this + 16, [(objc_object *)v3 count]);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = v3;
    v29 = [(objc_object *)v28 countByEnumeratingWithState:&v36 objects:v49 count:16];
    if (v29)
    {
      v30 = *v37;
      while (2)
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v37 != v30)
          {
            objc_enumerationMutation(v28);
          }

          if ((UAMessagePack::writeObject(this, *(*(&v36 + 1) + 8 * k)) & 1) == 0)
          {

            goto LABEL_30;
          }
        }

        v29 = [(objc_object *)v28 countByEnumeratingWithState:&v36 objects:v49 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)v3 timeIntervalSinceReferenceDate];
    size[0] = v32;
    cmp_write_ext(this + 16, 3, 8u, size);
    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    size[0] = 0;
    size[1] = 0;
    [(objc_object *)v3 getUUIDBytes:size];
    cmp_write_ext(this + 16, 1, 0x10u, size);
    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = [(objc_object *)v3 baseURL];
    if (v33)
    {
      cmp_write_ext(this + 16, 4, 0, 0);
      if (!UAMessagePack::writeObject(this, v33))
      {
        v22 = 0;
        goto LABEL_69;
      }

      v34 = [(objc_object *)v3 relativeString];
      v35 = UAMessagePack::writeObject(this, v34);
    }

    else
    {
      cmp_write_ext(this + 16, 5, 0, 0);
      v34 = [(objc_object *)v3 absoluteString];
      v35 = UAMessagePack::writeObject(this, v34);
    }

    v22 = v35;

LABEL_69:
    goto LABEL_44;
  }

LABEL_30:
  v22 = 0;
LABEL_44:

  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t cmp_write_str(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 > 0x1F)
  {
    if (a3 > 0xFF)
    {
      if (HIWORD(a3))
      {
        result = cmp_write_str32_marker(a1, a3);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = cmp_write_str16_marker(a1, a3);
        if (!result)
        {
          return result;
        }
      }
    }

    else
    {
      result = cmp_write_str8_marker(a1, a3);
      if (!result)
      {
        return result;
      }
    }

    result = (*(a1 + 24))(a1, a2, a3);
    if (result)
    {
      return 1;
    }

    else
    {
      *a1 = 10;
    }
  }

  else
  {

    return cmp_write_fixstr(a1, a2, a3);
  }

  return result;
}

uint64_t cmp_write_map(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xF)
  {
    if (HIWORD(a2))
    {

      return cmp_write_map32(a1, a2);
    }

    else
    {

      return cmp_write_map16(a1, a2);
    }
  }

  else
  {
    v5 = a2 | 0x80;
    v3 = 1;
    if ((*(a1 + 24))(a1, &v5, 1) != 1)
    {
      v3 = 0;
      *a1 = 6;
    }

    return v3;
  }
}

uint64_t UAMessagePack::UAMessagePack(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  *a1 = a2;
  *(a1 + 8) = objc_alloc_init(MEMORY[0x277CBEB28]);
  *(a1 + 48) = _Block_copy(v7);
  *(a1 + 56) = _Block_copy(v8);
  v10 = 20557;
  v11 = cmp_version();
  v12 = cmp_mp_version();
  [*(a1 + 8) appendBytes:&v10 length:4];
  cmp_init(a1 + 16, a1, UAMessagePack::mp_reader, UAMessagePack::mp_writer);

  return a1;
}

uint64_t cmp_write_fixstr(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 > 0x1F)
  {
    v7 = 5;
  }

  else
  {
    v8 = a3 | 0xA0;
    if ((*(a1 + 24))(a1, &v8, 1) == 1)
    {
      if ((*(a1 + 24))(a1, a2, a3))
      {
        return 1;
      }

      v7 = 10;
    }

    else
    {
      v7 = 6;
    }
  }

  result = 0;
  *a1 = v7;
  return result;
}

uint64_t cmp_init(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 0;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  return result;
}

uint64_t cmp_write_bin8_marker(uint64_t a1, char a2)
{
  v6 = a2;
  v7 = -60;
  if ((*(a1 + 24))(a1, &v7, 1) != 1)
  {
    v4 = 8;
    goto LABEL_5;
  }

  v3 = 1;
  if (!(*(a1 + 24))(a1, &v6, 1))
  {
    v4 = 15;
LABEL_5:
    v3 = 0;
    *a1 = v4;
  }

  return v3;
}

uint64_t cmp_write_bin(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 > 0xFF)
  {
    if (HIWORD(a3))
    {
      result = cmp_write_bin32_marker(a1, a3);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = cmp_write_bin16_marker(a1, a3);
      if (!result)
      {
        return result;
      }
    }
  }

  else
  {
    result = cmp_write_bin8_marker(a1, a3);
    if (!result)
    {
      return result;
    }
  }

  if ((*(a1 + 24))(a1, a2, a3))
  {
    return 1;
  }

  result = 0;
  *a1 = 10;
  return result;
}

void sub_226A54A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = UAUserActivity;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_226A54C34(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void encodeObjectOfType(void *a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a1;
  v7 = a2;
  v8 = a4;
  if (v9 && v7 && v8 && (!a3 || (objc_opt_isKindOfClass() & 1) != 0))
  {
    encodeObject(v9, v7, v8);
  }
}

uint64_t encodeObject(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  v9 = 0;
  if (v5 && v6 && v7)
  {
    [v5 encodeObject:v6 forKey:v7];
    v9 = 1;
  }

  return v9;
}

void encodeDictionary(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5)
  {
    if (v6)
    {
      if (v7)
      {
        v9 = v6;
        v12 = 0;
        v13 = &v12;
        v14 = 0x2020000000;
        v15 = [v9 count] == 0;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __validDictionaryTypes_block_invoke;
        v11[3] = &unk_2785C3CA0;
        v11[4] = &v12;
        [v9 enumerateKeysAndObjectsUsingBlock:v11];
        v10 = *(v13 + 24);
        _Block_object_dispose(&v12, 8);

        if (v10 == 1)
        {
          [v5 encodeObject:v9 forKey:v8];
        }
      }
    }
  }
}

void sub_226A551A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void encodeString(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  if (v8 && v5 && v6)
  {
    if ([v5 isMemberOfClass:objc_opt_class()])
    {
      encodeObject(v8, v5, v6);
    }

    else
    {
      v7 = [MEMORY[0x277CCACA8] stringWithString:v5];
      if (v7)
      {
        encodeObject(v8, v5, v6);
      }
    }
  }
}

void encodeURL(void *a1, void *a2, void *a3)
{
  if (a1 && a2 && a3)
  {
    v5 = a3;
    v6 = a1;
    v7 = [a2 absoluteURL];
    encodeObject(v6, v7, v5);
  }
}

Class initSFPeerDevice()
{
  if (LoadSharing_loadPredicate != -1)
  {
    initSFPeerDevice_cold_1();
  }

  result = objc_getClass("SFPeerDevice");
  classSFPeerDevice = result;
  getSFPeerDeviceClass = SFPeerDeviceFunction;
  return result;
}

Class initSFPeerDevice_0()
{
  if (LoadSharing_loadPredicate_0 != -1)
  {
    initSFPeerDevice_cold_1_0();
  }

  result = objc_getClass("SFPeerDevice");
  classSFPeerDevice_0 = result;
  getSFPeerDeviceClass_0 = SFPeerDeviceFunction_0;
  return result;
}

void __LoadSharing_block_invoke()
{
  LoadSharing_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/Sharing.framework/Sharing", 2);
  if (!LoadSharing_frameworkLibrary)
  {
    NSLog(&cfstr_FailedToSoftLi.isa);
  }
}

void __LoadSharing_block_invoke_0()
{
  LoadSharing_frameworkLibrary_0 = dlopen("/System/Library/PrivateFrameworks/Sharing.framework/Sharing", 2);
  if (!LoadSharing_frameworkLibrary_0)
  {
    NSLog(&cfstr_FailedToSoftLi.isa);
  }
}

id stringRemovingNewlines(void *a1)
{
  v1 = a1;
  v2 = v1;
  if ([v1 containsString:@"\n"])
  {
    v3 = [v1 mutableCopy];
    do
    {
      v4 = [v3 replaceOccurrencesOfString:@"\n" withString:&stru_283A5A2C8 options:0 range:{0, objc_msgSend(v3, "length")}];
    }

    while (v4 + [v3 replaceOccurrencesOfString:@"  " withString:@" " options:0 range:{0, objc_msgSend(v3, "length")}]);
    v2 = [v3 copy];
  }

  return v2;
}

void encodeSet(void *a1, void *a2, void *a3)
{
  v7 = a1;
  v5 = a2;
  v6 = a3;
  if (validType(v5))
  {
    encodeObject(v7, v5, v6);
  }
}

uint64_t validType(void *a1)
{
  v1 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v2 = 1;
LABEL_10:
      *(v12 + 24) = v2;
      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v10;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v6 = &unk_2785C3CC8;
      v7 = __validType_block_invoke;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8[0] = MEMORY[0x277D85DD0];
          v8[1] = 3221225472;
          v8[2] = __validType_block_invoke_3;
          v8[3] = &unk_2785C3CA0;
          v8[4] = &v11;
          [v1 enumerateKeysAndObjectsUsingBlock:v8];
          goto LABEL_11;
        }

        v2 = 0;
        goto LABEL_10;
      }

      v5 = v9;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v6 = &unk_2785C3CF0;
      v7 = __validType_block_invoke_2;
    }

    v5[2] = v7;
    v5[3] = v6;
    v5[4] = &v11;
    [v1 enumerateObjectsUsingBlock:?];
  }

LABEL_11:
  v3 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v3;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __validDictionaryTypes_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  valid = 0;
  if (a2 && v7)
  {
    v11 = v7;
    v9 = a2;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      valid = validType(v11);
    }

    else
    {
      valid = 0;
    }

    v7 = v11;
  }

  *(*(*(a1 + 32) + 8) + 24) = valid;
  *a4 = *(*(*(a1 + 32) + 8) + 24) ^ 1;
}

void encodeData(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = a1;
  v7 = objc_opt_class();
  encodeObjectOfType(v8, v6, v7, v5);
}

uint64_t __validType_block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = validType(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 32) + 8) + 24) ^ 1;
  return result;
}

uint64_t ___ZL21isIndexPendingForUUIDP6NSUUID_block_invoke(uint64_t a1)
{
  result = sIndexPendingUUIDs;
  if (sIndexPendingUUIDs)
  {
    result = [sIndexPendingUUIDs containsObject:*(a1 + 32)];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

Class initCSSearchableIndex(void)
{
  if (!CoreSpotlightLibrary(void)::frameworkLibrary)
  {
    CoreSpotlightLibrary(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/CoreSpotlight.framework/CoreSpotlight", 2);
  }

  result = objc_getClass("CSSearchableIndex");
  classCSSearchableIndex = result;
  getCSSearchableIndexClass = CSSearchableIndexFunction;
  return result;
}

id stringForContentSet(void *a1)
{
  v1 = [a1 description];
  v2 = stringRemovingNewlines(v1);

  return v2;
}

Class initNSUserActivity(void)
{
  if (!FoundationLibrary(void)::frameworkLibrary)
  {
    FoundationLibrary(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/Foundation.framework/Foundation", 2);
  }

  result = objc_getClass("NSUserActivity");
  classNSUserActivity = result;
  getNSUserActivityClass = NSUserActivityFunction;
  return result;
}

void sub_226A56780(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id UAMessageUnpack::CopyUnpacked(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  UAMessageUnpack::UAMessageUnpack(v7, a1, a2, a3, a4, a5);
  v5 = UAMessageUnpack::readFromContext(v7);

  return v5;
}

id _UACopyUnpackedObjectFromData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = UAMessageUnpack::CopyUnpacked(a1, a2, a3, 0, 0);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t UAMessageUnpack::UAMessageUnpack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, void *a6)
{
  *a1 = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  *(a1 + 56) = 0;
  *(a1 + 64) = a4;
  v8 = a6;
  *(a1 + 72) = _Block_copy(a5);
  v9 = _Block_copy(v8);

  *(a1 + 80) = v9;
  v10 = *(a1 + 40);
  if (v10 && *(a1 + 48) >= 4uLL && *v10 == 77 && v10[1] == 80)
  {
    *(a1 + 56) = 4;
    *a1 = 1;
  }

  cmp_init(a1 + 8, a1, UAMessageUnpack::mp_reader, UAMessageUnpack::mp_writer);
  return a1;
}

__CFString *UAMessageUnpack::readFromContext(UAMessageUnpack *this)
{
  v44[2] = *MEMORY[0x277D85DE8];
  v2 = pthread_self();
  stackaddr_np = pthread_get_stackaddr_np(v2);
  if (stackaddr_np - v42 <= pthread_get_stacksize_np(v2) - 1024 && *this == 1 && cmp_read_object(this + 8, v42))
  {
    switch(v42[0])
    {
      case 0:
      case 0xE:
        v34 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v43[0])];
        v5 = UAMessageUnpack::substitute(this, v34);

        break;
      case 1:
      case 0x20:
      case 0x21:
        v17 = UAMessageUnpack::readDictionary(this, v43[0]);
        v5 = UAMessageUnpack::substitute(this, v17);

        break;
      case 2:
      case 0x1E:
      case 0x1F:
        v18 = UAMessageUnpack::readArray(this, v43[0]);
        v5 = UAMessageUnpack::substitute(this, v18);

        break;
      case 3:
      case 0x1B:
      case 0x1C:
      case 0x1D:
        v9 = v43[0];
        if (v43[0])
        {
          if (*(this + 6) - *(this + 7) < v43[0])
          {
            goto LABEL_31;
          }

          v10 = [MEMORY[0x277CBEB28] dataWithLength:v43[0]];
          v11 = *(this + 3);
          v12 = v10;
          v11(this + 8, [v10 mutableBytes], v9);
          v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:4];
          v5 = UAMessageUnpack::substitute(this, v13);
        }

        else
        {
          v5 = &stru_283A5A2C8;
        }

        break;
      case 4:
        v31 = [MEMORY[0x277CBEB68] null];
        goto LABEL_44;
      case 5:
        v31 = [MEMORY[0x277CCABB0] numberWithBool:LOBYTE(v43[0])];
        goto LABEL_44;
      case 6:
      case 7:
      case 8:
        v19 = v43[0];
        if (v43[0])
        {
          if (*(this + 6) - *(this + 7) < v43[0])
          {
            goto LABEL_31;
          }

          v20 = [MEMORY[0x277CBEB28] dataWithLength:v43[0]];
          v21 = *(this + 3);
          v22 = v20;
          v21(this + 8, [(objc_object *)v20 mutableBytes], v19);
          v5 = UAMessageUnpack::substitute(this, v20);
        }

        else
        {
          v31 = [MEMORY[0x277CBEA90] data];
LABEL_44:
          v5 = v31;
        }

        break;
      case 9:
      case 0xA:
      case 0xB:
      case 0x16:
      case 0x17:
      case 0x18:
      case 0x19:
      case 0x1A:
        v5 = 0;
        if (LOBYTE(v43[0]) <= 2u)
        {
          if (LOBYTE(v43[0]) == 1)
          {
            if (v43[1] != 16)
            {
              goto LABEL_31;
            }

            v44[0] = 0.0;
            v44[1] = 0.0;
            (*(this + 3))(this + 8, v44, 16);
            v28 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v44];
            v5 = UAMessageUnpack::substitute(this, v28);
          }

          else if (LOBYTE(v43[0]) == 2)
          {
            v14 = objc_opt_class();
            v15 = UAMessageUnpack::readFromContextOfClass(this, v14);
            if (v15)
            {
              v16 = [MEMORY[0x277CBEB98] setWithArray:v15];
            }

            else
            {
              v16 = 0;
            }

            v5 = UAMessageUnpack::substitute(this, v16);
          }
        }

        else if (LOBYTE(v43[0]) == 3)
        {
          if (v43[1] != 8)
          {
            goto LABEL_31;
          }

          v44[0] = 0.0;
          (*(this + 3))(this + 8, v44, 8);
          v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v44[0]];
          v5 = UAMessageUnpack::substitute(this, v23);
        }

        else
        {
          if (LOBYTE(v43[0]) == 4)
          {
            v24 = objc_opt_class();
            v7 = UAMessageUnpack::readFromContextOfClass(this, v24);
            if (v7 && (v25 = objc_opt_class(), UAMessageUnpack::readFromContextOfClass(this, v25), (v26 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v27 = [MEMORY[0x277CBEBC0] URLWithString:v26 relativeToURL:v7];
              v5 = UAMessageUnpack::substitute(this, v27);
            }

            else
            {
              v5 = 0;
            }
          }

          else
          {
            if (LOBYTE(v43[0]) != 5)
            {
              break;
            }

            v6 = objc_opt_class();
            v7 = UAMessageUnpack::readFromContextOfClass(this, v6);
            if (v7)
            {
              v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
              v5 = UAMessageUnpack::substitute(this, v8);
            }

            else
            {
              v5 = 0;
            }
          }
        }

        break;
      case 0xC:
        LODWORD(v4) = v43[0];
        v40 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
        v5 = UAMessageUnpack::substitute(this, v40);

        break;
      case 0xD:
        v39 = [MEMORY[0x277CCABB0] numberWithDouble:*v43];
        v5 = UAMessageUnpack::substitute(this, v39);

        break;
      case 0xF:
        v36 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:LOWORD(v43[0])];
        v5 = UAMessageUnpack::substitute(this, v36);

        break;
      case 0x10:
        v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v43[0]];
        v5 = UAMessageUnpack::substitute(this, v33);

        break;
      case 0x11:
        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v43];
        v5 = UAMessageUnpack::substitute(this, v32);

        break;
      case 0x12:
      case 0x22:
        v35 = [MEMORY[0x277CCABB0] numberWithChar:SLOBYTE(v43[0])];
        v5 = UAMessageUnpack::substitute(this, v35);

        break;
      case 0x13:
        v38 = [MEMORY[0x277CCABB0] numberWithShort:SLOWORD(v43[0])];
        v5 = UAMessageUnpack::substitute(this, v38);

        break;
      case 0x14:
        v41 = [MEMORY[0x277CCABB0] numberWithInt:v43[0]];
        v5 = UAMessageUnpack::substitute(this, v41);

        break;
      case 0x15:
        v37 = [MEMORY[0x277CCABB0] numberWithLongLong:*v43];
        v5 = UAMessageUnpack::substitute(this, v37);

        break;
      default:
        goto LABEL_31;
    }
  }

  else
  {
LABEL_31:
    v5 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v5;
}

BOOL UAMessageUnpack::mp_reader(uint64_t a1, void *__dst, size_t a3)
{
  v3 = *(a1 + 8);
  v4 = v3[7];
  if (v3[6] - v4 < a3)
  {
    return 0;
  }

  memcpy(__dst, (v3[5] + v4), a3);
  v3[7] += a3;
  return a3 != 0;
}

uint64_t cmp_read_object(uint64_t a1, uint64_t a2)
{
  v26 = 0;
  if (((*(a1 + 16))(a1, &v26, 1) & 1) == 0)
  {
    v5 = 0;
    v6 = 7;
    goto LABEL_7;
  }

  v4 = v26;
  if ((v26 & 0x80000000) == 0)
  {
    *a2 = 0;
LABEL_4:
    *(a2 + 8) = v4;
    return 1;
  }

  if (v26 <= 0x8Fu)
  {
    v5 = 1;
    *a2 = 1;
    *(a2 + 8) = v4 & 0xF;
    return v5;
  }

  if (v26 > 0x9Fu)
  {
    if (v26 <= 0xBFu)
    {
      *a2 = 3;
      v8 = v4 & 0x1F;
      goto LABEL_15;
    }

    switch(v26)
    {
      case 0xC0u:
        v9 = 4;
        goto LABEL_43;
      case 0xC2u:
        v9 = 5;
LABEL_43:
        *a2 = v9;
        *(a2 + 8) = 0;
        return 1;
      case 0xC3u:
        *a2 = 5;
        v5 = 1;
        *(a2 + 8) = 1;
        return v5;
      case 0xC4u:
        *a2 = 6;
        v15 = (a2 + 8);
        if ((*(a1 + 16))(a1, v15, 1))
        {
          goto LABEL_58;
        }

        goto LABEL_60;
      case 0xC5u:
        *a2 = 7;
        v15 = (a2 + 8);
        if (((*(a1 + 16))(a1, v15, 2) & 1) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_75;
      case 0xC6u:
        *a2 = 8;
        v15 = (a2 + 8);
        if ((*(a1 + 16))(a1, v15, 4))
        {
          goto LABEL_78;
        }

LABEL_60:
        v5 = 0;
        v6 = 14;
        break;
      case 0xC7u:
        v25 = 0;
        v24 = 0;
        *a2 = 9;
        if (!(*(a1 + 16))(a1, &v25, 1))
        {
          goto LABEL_50;
        }

        if (!(*(a1 + 16))(a1, &v24, 1))
        {
          goto LABEL_82;
        }

        *(a2 + 8) = v25;
        v11 = v24;
        goto LABEL_71;
      case 0xC8u:
        v23 = 0;
        v22 = 0;
        *a2 = 10;
        if ((*(a1 + 16))(a1, &v23, 1))
        {
          if ((*(a1 + 16))(a1, &v22, 2))
          {
            *(a2 + 8) = v23;
            v11 = bswap32(v22) >> 16;
            goto LABEL_71;
          }

LABEL_82:
          v6 = 14;
        }

        else
        {
LABEL_50:
          v6 = 11;
        }

        v5 = 0;
        break;
      case 0xC9u:
        v21 = 0;
        v20 = 0;
        v18 = 11;
        *a2 = 11;
        if (!(*(a1 + 16))(a1, &v21, 1))
        {
          goto LABEL_85;
        }

        if ((*(a1 + 16))(a1, &v20, 4))
        {
          *(a2 + 8) = v21;
          v11 = bswap32(v20);
          goto LABEL_71;
        }

        v18 = 14;
LABEL_85:
        v5 = 0;
        *a1 = v18;
        return v5;
      case 0xCAu:
        v12 = 12;
        goto LABEL_77;
      case 0xCBu:
        v10 = 13;
        goto LABEL_52;
      case 0xCCu:
        *a2 = 14;
        v5 = 1;
        if (((*(a1 + 16))(a1, a2 + 8, 1) & 1) == 0)
        {
          goto LABEL_80;
        }

        return v5;
      case 0xCDu:
        v14 = 15;
        goto LABEL_67;
      case 0xCEu:
        v12 = 16;
        goto LABEL_77;
      case 0xCFu:
        v10 = 17;
        goto LABEL_52;
      case 0xD0u:
        *a2 = 18;
        v5 = 1;
        if (((*(a1 + 16))(a1, a2 + 8, 1) & 1) == 0)
        {
          goto LABEL_80;
        }

        return v5;
      case 0xD1u:
        v14 = 19;
LABEL_67:
        *a2 = v14;
        v19 = (a2 + 8);
        if (((*(a1 + 16))(a1, v19, 2) & 1) == 0)
        {
          goto LABEL_80;
        }

        *v19 = bswap32(*v19) >> 16;
        return 1;
      case 0xD2u:
        v12 = 20;
        goto LABEL_77;
      case 0xD3u:
        v10 = 21;
LABEL_52:
        *a2 = v10;
        v16 = (a2 + 8);
        if (((*(a1 + 16))(a1, v16, 8) & 1) == 0)
        {
          goto LABEL_80;
        }

        *v16 = bswap64(*v16);
        return 1;
      case 0xD4u:
        *a2 = 22;
        v5 = 1;
        if (((*(a1 + 16))(a1, a2 + 8, 1) & 1) == 0)
        {
          goto LABEL_72;
        }

        *(a2 + 12) = 1;
        return v5;
      case 0xD5u:
        *a2 = 23;
        if (((*(a1 + 16))(a1, a2 + 8, 1) & 1) == 0)
        {
          goto LABEL_72;
        }

        v11 = 2;
        goto LABEL_71;
      case 0xD6u:
        *a2 = 24;
        if (((*(a1 + 16))(a1, a2 + 8, 1) & 1) == 0)
        {
          goto LABEL_72;
        }

        v11 = 4;
        goto LABEL_71;
      case 0xD7u:
        *a2 = 25;
        if (((*(a1 + 16))(a1, a2 + 8, 1) & 1) == 0)
        {
          goto LABEL_72;
        }

        v11 = 8;
        goto LABEL_71;
      case 0xD8u:
        *a2 = 26;
        if (((*(a1 + 16))(a1, a2 + 8, 1) & 1) == 0)
        {
LABEL_72:
          v5 = 0;
          v6 = 11;
          break;
        }

        v11 = 16;
LABEL_71:
        *(a2 + 12) = v11;
        return 1;
      case 0xD9u:
        *a2 = 27;
        v15 = (a2 + 8);
        if (((*(a1 + 16))(a1, v15, 1) & 1) == 0)
        {
          goto LABEL_80;
        }

LABEL_58:
        v17 = *v15;
        goto LABEL_79;
      case 0xDAu:
        v13 = 28;
        goto LABEL_74;
      case 0xDBu:
        v12 = 29;
        goto LABEL_77;
      case 0xDCu:
        v13 = 30;
        goto LABEL_74;
      case 0xDDu:
        v12 = 31;
        goto LABEL_77;
      case 0xDEu:
        v13 = 32;
LABEL_74:
        *a2 = v13;
        v15 = (a2 + 8);
        if (((*(a1 + 16))(a1, v15, 2) & 1) == 0)
        {
          goto LABEL_80;
        }

LABEL_75:
        v17 = bswap32(*v15) >> 16;
        goto LABEL_79;
      case 0xDFu:
        v12 = 33;
LABEL_77:
        *a2 = v12;
        v15 = (a2 + 8);
        if (((*(a1 + 16))(a1, v15, 4) & 1) == 0)
        {
LABEL_80:
          v5 = 0;
          v6 = 9;
          break;
        }

LABEL_78:
        v17 = bswap32(*v15);
LABEL_79:
        *v15 = v17;
        return 1;
      default:
        if (v26 >= 0xE0u)
        {
          *a2 = 34;
          goto LABEL_4;
        }

        v5 = 0;
        v6 = 13;
        break;
    }

LABEL_7:
    *a1 = v6;
    return v5;
  }

  *a2 = 2;
  v8 = v4 & 0xF;
LABEL_15:
  *(a2 + 8) = v8;
  return 1;
}

id UAMessageUnpack::readDictionary(UAMessageUnpack *this, unsigned int a2)
{
  if (a2 >= 0x3E8)
  {
    v4 = 1000;
  }

  else
  {
    v4 = a2;
  }

  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v4];
  if (a2)
  {
    v6 = a2;
    while (1)
    {
      v7 = UAMessageUnpack::readFromContext(this);
      if (!v7)
      {
        break;
      }

      v8 = UAMessageUnpack::readFromContext(this);
      if (!v8)
      {

        break;
      }

      [v5 setObject:v8 forKey:v7];

      if (!--v6)
      {
        goto LABEL_9;
      }
    }

    v9 = 0;
  }

  else
  {
LABEL_9:
    v9 = [v5 copy];
  }

  return v9;
}

id UAMessageUnpack::substitute(UAMessageUnpack *this, objc_object *a2)
{
  v3 = a2;
  v4 = *(this + 9);
  v5 = v3;
  if (v4)
  {
    v5 = v3;
    if ((*(v4 + 16))(v4, v3, *(this + 8)))
    {
      v6 = *(this + 8);
      v5 = (*(*(this + 10) + 16))();
    }
  }

  return v5;
}

id sortedArrayOfNSStringValues(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        if (*(*(&v11 + 1) + 8 * i))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v8 = v1;
            goto LABEL_12;
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = [v1 mutableCopy];
  v7 = [v6 sortedArrayUsingSelector:sel_compare_];
  v8 = [v7 copy];

LABEL_12:
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t ___ZL34installSpringBoardUserEventMonitorv_block_invoke()
{
  result = suggestedActionNudges;
  if (suggestedActionNudges)
  {
    return [suggestedActionNudges enumerateKeysAndObjectsUsingBlock:&__block_literal_global_917];
  }

  return result;
}

char *serializedCFType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    Data = CFPropertyListCreateData(*MEMORY[0x277CBECE8], v1, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if ([(__CFData *)Data length]> 0xFFFFFFFE)
    {
      v3 = 0;
    }

    else
    {
      v3 = malloc_type_malloc([(__CFData *)Data length]+ 200, 0x1000040BEF03554uLL);
      *v3 = 1;
      v4 = [(__CFData *)Data length];
      *(v3 + 136) = 0u;
      *(v3 + 1) = v4;
      *(v3 + 8) = 0u;
      *(v3 + 24) = 0u;
      *(v3 + 40) = 0u;
      *(v3 + 56) = 0u;
      *(v3 + 72) = 0u;
      *(v3 + 88) = 0u;
      *(v3 + 104) = 0u;
      *(v3 + 120) = 0u;
      *(v3 + 152) = 0u;
      *(v3 + 168) = 0u;
      *(v3 + 184) = 0u;
      strlcpy(v3 + 136, "UAUserActivity", 0x40uLL);
      memcpy(v3 + 200, [(__CFData *)Data bytes], *(v3 + 1));
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id userActivityInfoOptionsDictionaryString(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1)
  {
    goto LABEL_20;
  }

  v2 = [MEMORY[0x277CCAB68] stringWithString:@"{"];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [v1 allKeys];
  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = *v18;
    v6 = *MEMORY[0x277CC1F28];
    v15 = *MEMORY[0x277CC1F30];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        if ([v8 isEqual:v6])
        {
          v9 = [v1 objectForKeyedSubscript:v8];
          [v2 appendFormat:@"fileProvider:%@", v9];
        }

        else if ([v8 isEqual:v15])
        {
          v9 = [v1 objectForKeyedSubscript:v8];
          [v2 appendFormat:@"unsyncronizedCloudDocs:%@", v9];
        }

        else if ([v8 isEqual:@"UAUserActivityContainsCloudDocsKey"])
        {
          v9 = [v1 objectForKeyedSubscript:v8];
          [v2 appendFormat:@"cloudDocs:%@", v9];
        }

        else if ([v8 isEqual:@"UAUserActivityItemIsNotActiveKey"])
        {
          v9 = [v1 objectForKeyedSubscript:v8];
          [v2 appendFormat:@"inactive:%@", v9];
        }

        else
        {
          v9 = [v1 objectForKeyedSubscript:v8];
          v10 = [v9 description];
          v11 = stringRemovingNewlines(v10);
          [v2 appendFormat:@"%@=%@", v8, v11];
        }
      }

      v3 = obj;
      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  [v2 appendFormat:@"}"];
  if (v2)
  {
    v12 = [v2 copy];
  }

  else
  {
LABEL_20:
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t cmp_write_array(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xF)
  {
    if (HIWORD(a2))
    {

      return cmp_write_array32(a1, a2);
    }

    else
    {

      return cmp_write_array16(a1, a2);
    }
  }

  else
  {
    v5 = a2 | 0x90;
    v3 = 1;
    if ((*(a1 + 24))(a1, &v5, 1) != 1)
    {
      v3 = 0;
      *a1 = 6;
    }

    return v3;
  }
}

id UAMessageUnpack::readArray(UAMessageUnpack *this, unsigned int a2)
{
  if (a2 >= 0x3E8)
  {
    v4 = 1000;
  }

  else
  {
    v4 = a2;
  }

  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
  if (a2)
  {
    v6 = a2;
    while (1)
    {
      v7 = UAMessageUnpack::readFromContext(this);
      if (!v7)
      {
        break;
      }

      [v5 addObject:v7];

      if (!--v6)
      {
        goto LABEL_8;
      }
    }

    v8 = 0;
  }

  else
  {
LABEL_8:
    v8 = v5;
  }

  return v8;
}

uint64_t cmp_write_ext(uint64_t a1, char a2, unsigned int a3, uint64_t a4)
{
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4u:
        if (!cmp_write_fixext4_marker(a1, a2))
        {
          return 0;
        }

        v7 = (*(a1 + 24))(a1, a4, 4);
        break;
      case 8u:
        if (!cmp_write_fixext8_marker(a1, a2))
        {
          return 0;
        }

        v7 = (*(a1 + 24))(a1, a4, 8);
        break;
      case 0x10u:
        if (cmp_write_fixext16_marker(a1, a2))
        {
          v7 = (*(a1 + 24))(a1, a4, 16);
          goto LABEL_21;
        }

        return 0;
      default:
        goto LABEL_18;
    }

    goto LABEL_21;
  }

  if (a3 != 1)
  {
    if (a3 != 2)
    {
LABEL_18:
      if (a3 > 0xFF)
      {
        if (HIWORD(a3))
        {
          if (!cmp_write_ext32_marker(a1, a2, a3))
          {
            return 0;
          }
        }

        else if (!cmp_write_ext16_marker(a1, a2, a3))
        {
          return 0;
        }
      }

      else if (!cmp_write_ext8_marker(a1, a2, a3))
      {
        return 0;
      }

      v7 = (*(a1 + 24))(a1, a4, a3);
      goto LABEL_21;
    }

    if (!cmp_write_fixext2_marker(a1, a2))
    {
      return 0;
    }

    v7 = (*(a1 + 24))(a1, a4, 2);
LABEL_21:
    if (v7)
    {
      return 1;
    }

LABEL_23:
    v8 = 0;
    *a1 = 10;
    return v8;
  }

  if (!cmp_write_fixext1_marker(a1, a2))
  {
    return 0;
  }

  v8 = 1;
  if (!(*(a1 + 24))(a1, a4, 1))
  {
    goto LABEL_23;
  }

  return v8;
}

uint64_t cmp_write_ext8_marker(uint64_t a1, char a2, char a3)
{
  v8 = a2;
  v7 = a3;
  v9 = -57;
  if ((*(a1 + 24))(a1, &v9, 1) != 1)
  {
    v5 = 8;
    goto LABEL_7;
  }

  if (!(*(a1 + 24))(a1, &v8, 1))
  {
    v5 = 12;
    goto LABEL_7;
  }

  v4 = 1;
  if (!(*(a1 + 24))(a1, &v7, 1))
  {
    v5 = 15;
LABEL_7:
    v4 = 0;
    *a1 = v5;
  }

  return v4;
}

uint64_t cmp_write_bin16_marker(uint64_t a1, unsigned int a2)
{
  v7 = -59;
  if ((*(a1 + 24))(a1, &v7, 1) == 1)
  {
    v6 = __rev16(a2);
    if ((*(a1 + 24))(a1, &v6, 2))
    {
      return 1;
    }

    v5 = 15;
  }

  else
  {
    v5 = 8;
  }

  result = 0;
  *a1 = v5;
  return result;
}

id UAMessageUnpack::readFromContextOfClass(UAMessageUnpack *this, objc_class *a2)
{
  v3 = UAMessageUnpack::readFromContext(this);
  if (v3 && (!a2 || (objc_opt_isKindOfClass() & 1) == 0))
  {

    v3 = 0;
  }

  return v3;
}

void sub_226A5A6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_226A5B1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak(&a20);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);

  _Unwind_Resume(a1);
}

void sub_226A5B424(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_226A5B63C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_226A5BA14(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_226A5BBE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_226A5BCA0(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_226A5BF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_226A5C220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_226A5C400(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_226A5C4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_226A5C688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_226A5CBD8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_226A5D0B0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_226A5D2B0(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_226A5D554(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_226A5D6FC(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_226A5D9F8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id getSupportsContinuationStreamsQueue(void)
{
  if (getSupportsContinuationStreamsQueue(void)::sOnce != -1)
  {
    getSupportsContinuationStreamsQueue();
  }

  v1 = getSupportsContinuationStreamsQueue(void)::sResult;

  return v1;
}

void sub_226A5DDE4(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_226A5E31C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_226A5E5B4(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_226A5F6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_226A6024C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, id a59)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v64 - 160), 8);

  _Unwind_Resume(a1);
}

void sub_226A60B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Block_object_dispose((v20 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_226A616A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50)
{
  _Block_object_dispose((v52 - 160), 8);

  _Unwind_Resume(a1);
}

void sub_226A61AE0(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

id recurseAndReplace(void *a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v43 = a1;
  v44 = a2;
  v45 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = v43;
  v7 = v5;
  v8 = v44;
  v49 = v6;
  v50 = v45;
  v46 = v7;
  v9 = [v7 objectForKey:v6];

  if (v9)
  {
    v10 = [v7 objectForKey:v49];
LABEL_3:
    v11 = v10;
    goto LABEL_54;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v47 = [MEMORY[0x277CBEB38] dictionary];
    [v7 setObject:v47 forKey:v49];
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v12 = [v49 allKeys];
    v13 = v12;
    v14 = [v12 countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v14)
    {
      v15 = *v52;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v52 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v51 + 1) + 8 * i);
          v18 = [v49 objectForKey:v17];
          if (v8[2](v8, v18))
          {
            v19 = v50[2](v50, v18);

            v18 = v19;
          }

          if (v8[2](v8, v17))
          {
            v20 = v50[2](v50, v17);

            v17 = v20;
          }

          if (v17)
          {
            v21 = v18 == 0;
          }

          else
          {
            v21 = 1;
          }

          if (!v21)
          {
            [v47 setObject:v18 forKey:v17];
          }
        }

        v12 = v13;
        v14 = [v13 countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v14);
    }

    v22 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = [v49 description];
      v24 = stringRemovingNewlines(v23);
      v25 = [v47 description];
      v26 = stringRemovingNewlines(v25);
      *buf = 138478083;
      v56 = v24;
      v57 = 2113;
      v58 = v26;
      _os_log_impl(&dword_226A4E000, v22, OS_LOG_TYPE_DEBUG, "recurseAndReplace(dict): %{private}@ => %{private}@", buf, 0x16u);
    }

    v11 = [v47 copy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = [MEMORY[0x277CBEB18] array];
      [v7 setObject:v48 forKey:v49];
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v27 = v49;
      v28 = [v27 countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (v28)
      {
        v29 = *v52;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v52 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v31 = *(*(&v51 + 1) + 8 * j);
            if (v8[2](v8, v31))
            {
              v32 = v50[2](v50, v31);

              v31 = v32;
            }

            if (v31)
            {
              [v48 addObject:v31];
            }
          }

          v28 = [v27 countByEnumeratingWithState:&v51 objects:v59 count:16];
        }

        while (v28);
      }

      v33 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138478083;
        v56 = v27;
        v57 = 2113;
        v58 = v48;
        _os_log_impl(&dword_226A4E000, v33, OS_LOG_TYPE_DEBUG, "recurseAndReplace(array): %{private}@ => %{private}@", buf, 0x16u);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v42 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *v59 = 138477827;
          v60 = v49;
          _os_log_impl(&dword_226A4E000, v42, OS_LOG_TYPE_DEBUG, "recurseAndReplace(obj): %{private}@", v59, 0xCu);
        }

        v10 = v49;
        goto LABEL_3;
      }

      v48 = [MEMORY[0x277CBEB58] set];
      [v7 setObject:v48 forKey:v49];
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v34 = v49;
      v35 = [v34 countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (v35)
      {
        v36 = *v52;
        do
        {
          for (k = 0; k != v35; ++k)
          {
            if (*v52 != v36)
            {
              objc_enumerationMutation(v34);
            }

            v38 = *(*(&v51 + 1) + 8 * k);
            if (v8[2](v8, v38))
            {
              v39 = v50[2](v50, v38);

              v38 = v39;
            }

            if (v38)
            {
              [v48 addObject:v38];
            }
          }

          v35 = [v34 countByEnumeratingWithState:&v51 objects:v59 count:16];
        }

        while (v35);
      }

      v33 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138478083;
        v56 = v34;
        v57 = 2113;
        v58 = v48;
        _os_log_impl(&dword_226A4E000, v33, OS_LOG_TYPE_DEBUG, "recurseAndReplace(set): %{private}@ => %{private}@", buf, 0x16u);
      }
    }

    v11 = [v48 copy];
  }

LABEL_54:

  v40 = *MEMORY[0x277D85DE8];

  return v11;
}

void sub_226A62560(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_226A62688(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_226A62B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_226A62BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_226A63840(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_226A64768(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_226A65618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

void sub_226A65BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_226A668A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_226A67928(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id suggestedActionNudgesQueue(void)
{
  if (suggestedActionNudgesQueue(void)::onceToken != -1)
  {
    suggestedActionNudgesQueue();
  }

  v1 = suggestedActionNudgesQueue(void)::sSuggestedActionNudgesQueue;

  return v1;
}

void sub_226A687DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_226A688A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_226A689B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_226A68A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_226A68BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  objc_sync_exit(v8);

  _Unwind_Resume(a1);
}

void sub_226A68D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_226A68ED4(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_226A68F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_226A69018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_226A69CEC(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_226A6A5A8(void *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    if (v2)
    {
      *v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UAContinuityErrorDomain" code:-114 userInfo:0];
    }

    objc_end_catch();
    JUMPOUT(0x226A6A558);
  }

  JUMPOUT(0x226A6A598);
}

NSArray *sortedArrayIfSameClass(NSArray *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1 && [(NSArray *)v1 count]>= 2 && ([(NSArray *)v2 firstObject], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_respondsToSelector(), v3, (v4 & 1) != 0))
  {
    v5 = [(NSArray *)v2 firstObject];
    v6 = objc_opt_class();

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v2;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if (objc_opt_class() != v6)
          {

            goto LABEL_14;
          }
        }

        v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = [(NSArray *)v7 sortedArrayUsingSelector:sel_compare_, v16];
  }

  else
  {
LABEL_14:
    v12 = v2;
  }

  v13 = v12;

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void ___ZL23dTraceProcessIdentifierv_block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v2 bundleIdentifier];

  v1 = v0;
  if (!v0)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PID:%lld]", getpid(), 0];
    if (!v1)
    {
      v1 = @"unknown";
    }
  }

  v3 = v1;
  dTraceProcessIdentifier(void)::result = strdup([(__CFString *)v3 UTF8String]);
}

Class initSFCompanionAdvertiser(void)
{
  if (LoadSharing(void)::loadPredicate != -1)
  {
    initSFCompanionAdvertiser();
  }

  result = objc_getClass("SFCompanionAdvertiser");
  classSFCompanionAdvertiser = result;
  getSFCompanionAdvertiserClass = SFCompanionAdvertiserFunction;
  return result;
}

void ___ZL11LoadSharingv_block_invoke()
{
  LoadSharing(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/Sharing.framework/Sharing", 2);
  if (!LoadSharing(void)::frameworkLibrary)
  {
    NSLog(&cfstr_FailedToSoftLi.isa);
  }
}

void ___ZL35getSupportsContinuationStreamsQueuev_block_invoke()
{
  v0 = dispatch_queue_create("getSupportsContinuationStreamsQueue", 0);
  v1 = getSupportsContinuationStreamsQueue(void)::sResult;
  getSupportsContinuationStreamsQueue(void)::sResult = v0;
}

uint64_t initFPURLMightBeInFileProvider(const __CFURL *a1)
{
  v2 = FileProviderLibrary(void)::frameworkLibrary;
  if (!FileProviderLibrary(void)::frameworkLibrary)
  {
    v2 = dlopen("/System/Library/PrivateFrameworks/FileProvider.framework/FileProvider", 2);
    FileProviderLibrary(void)::frameworkLibrary = v2;
  }

  v3 = dlsym(v2, "FPURLMightBeInFileProvider");
  softLinkFPURLMightBeInFileProvider = v3;

  return v3(a1);
}

uint64_t initFPCreateBookmarkableStringFromDocumentURL(const __CFURL *a1, __CFError **a2)
{
  v4 = FileProviderLibrary(void)::frameworkLibrary;
  if (!FileProviderLibrary(void)::frameworkLibrary)
  {
    v4 = dlopen("/System/Library/PrivateFrameworks/FileProvider.framework/FileProvider", 2);
    FileProviderLibrary(void)::frameworkLibrary = v4;
  }

  v5 = dlsym(v4, "FPCreateBookmarkableStringFromDocumentURL");
  softLinkFPCreateBookmarkableStringFromDocumentURL = v5;

  return v5(a1, a2);
}

uint64_t initFPCreateDocumentURLFromBookmarkableString(const __CFString *a1, __CFError **a2)
{
  v4 = FileProviderLibrary(void)::frameworkLibrary;
  if (!FileProviderLibrary(void)::frameworkLibrary)
  {
    v4 = dlopen("/System/Library/PrivateFrameworks/FileProvider.framework/FileProvider", 2);
    FileProviderLibrary(void)::frameworkLibrary = v4;
  }

  v5 = dlsym(v4, "FPCreateDocumentURLFromBookmarkableString");
  softLinkFPCreateDocumentURLFromBookmarkableString = v5;

  return v5(a1, a2);
}

void ___ZL26suggestedActionNudgesQueuev_block_invoke()
{
  v0 = dispatch_queue_create("suggestedActionNudgesQ", 0);
  v1 = suggestedActionNudgesQueue(void)::sSuggestedActionNudgesQueue;
  suggestedActionNudgesQueue(void)::sSuggestedActionNudgesQueue = v0;
}

void sub_226A6C6DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_226A6DC3C(_Unwind_Exception *a1)
{
  v5 = v4;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_226A6E008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_226A6E5AC(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

Class initCSSearchableItemAttributeSet(void)
{
  if (!CoreSpotlightLibrary(void)::frameworkLibrary)
  {
    CoreSpotlightLibrary(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/CoreSpotlight.framework/CoreSpotlight", 2);
  }

  result = objc_getClass("CSSearchableItemAttributeSet");
  classCSSearchableItemAttributeSet = result;
  getCSSearchableItemAttributeSetClass = CSSearchableItemAttributeSetFunction;
  return result;
}

uint64_t __validType_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = validType(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a4 = *(*(*(a1 + 32) + 8) + 24) ^ 1;
  return result;
}

void __validType_block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    valid = validType(v10);
  }

  else
  {
    valid = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = valid;
  *a4 = *(*(*(a1 + 32) + 8) + 24) ^ 1;
}

id copyHexStringForData(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCAB68] string];
  v3 = [v1 bytes];
  v4 = [v1 length];
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = *v3++;
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c", a0123456789abcd[v6 >> 4], a0123456789abcd[v6 & 0xF]];
      [v2 appendString:v7];

      --v5;
    }

    while (v5);
  }

  v8 = [v2 copy];

  return v8;
}

id copyDataFromHexString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEB28] data];
  if ([v1 length])
  {
    v3 = 0;
    do
    {
      v4 = v3 + 1;
      v5 = [v1 characterAtIndex:v3];
      if (v5 > 0x24u || ((1 << v5) & 0x1100000400) == 0)
      {
        v7 = v5 - 48;
        if ((v5 - 48) >= 0xAu && (v5 - 65 > 0x25 || ((1 << (v5 - 65)) & 0x3F0000003FLL) == 0))
        {

          v2 = 0;
          break;
        }

        if (v5 - 48 >= 0xA)
        {
          if (v5 - 97 > 5)
          {
            if (v5 - 65 >= 6)
            {
              v7 = 0;
            }

            else
            {
              v7 = v5 - 55;
            }
          }

          else
          {
            v7 = v5 - 87;
          }
        }

        v8 = v3 + 2;
        v9 = [v1 characterAtIndex:v4];
        v10 = v9 - 48;
        if ((v9 - 65) <= 5)
        {
          v11 = v9 - 55;
        }

        else
        {
          v11 = 0;
        }

        if ((v9 - 97) <= 5)
        {
          v12 = v9 - 87;
        }

        else
        {
          v12 = v11;
        }

        if (v10 > 9)
        {
          LOBYTE(v10) = v12;
        }

        v15 = v10 + 16 * v7;
        [v2 appendBytes:&v15 length:1];
        v4 = v8;
      }

      v3 = v4;
    }

    while (v4 < [v1 length]);
  }

  v13 = [v2 copy];

  return v13;
}

const char *cmp_strerror(unsigned __int8 *a1)
{
  if (*a1 - 1 > 0xE)
  {
    return "";
  }

  else
  {
    return (&cmp_error_messages)[*a1];
  }
}

uint64_t cmp_write_pfix(uint64_t a1, char a2)
{
  if (a2 < 0)
  {
    v4 = 5;
    goto LABEL_5;
  }

  v6 = a2;
  v3 = 1;
  if ((*(a1 + 24))(a1, &v6, 1) != 1)
  {
    v4 = 6;
LABEL_5:
    v3 = 0;
    *a1 = v4;
  }

  return v3;
}

uint64_t cmp_write_nfix(uint64_t a1, unsigned int a2)
{
  if (a2 < 0xFFFFFFE0)
  {
    v4 = 5;
    goto LABEL_5;
  }

  v6 = a2;
  v3 = 1;
  if ((*(a1 + 24))(a1, &v6, 1) != 1)
  {
    v4 = 6;
LABEL_5:
    v3 = 0;
    *a1 = v4;
  }

  return v3;
}

uint64_t cmp_write_sfix(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    if (a2 < 0xFFFFFFE0)
    {
      v5 = 5;
      goto LABEL_8;
    }

    v8 = a2;
    v3 = 1;
    v4 = (*(a1 + 24))(a1, &v8, 1);
  }

  else
  {
    v7 = a2;
    v3 = 1;
    v4 = (*(a1 + 24))(a1, &v7, 1);
  }

  if (v4 != 1)
  {
    v5 = 6;
LABEL_8:
    v3 = 0;
    *a1 = v5;
  }

  return v3;
}

BOOL cmp_write_s8(uint64_t a1, char a2)
{
  v4 = a2;
  v5 = -48;
  if ((*(a1 + 24))(a1, &v5, 1) == 1)
  {
    return (*(a1 + 24))(a1, &v4, 1) != 0;
  }

  result = 0;
  *a1 = 8;
  return result;
}

BOOL cmp_write_s16(uint64_t a1, unsigned int a2)
{
  v6 = -47;
  if ((*(a1 + 24))(a1, &v6, 1) == 1)
  {
    v5 = bswap32(a2) >> 16;
    return (*(a1 + 24))(a1, &v5, 2) != 0;
  }

  else
  {
    result = 0;
    *a1 = 8;
  }

  return result;
}

BOOL cmp_write_s32(uint64_t a1, unsigned int a2)
{
  v6 = -46;
  if ((*(a1 + 24))(a1, &v6, 1) == 1)
  {
    v5 = bswap32(a2);
    return (*(a1 + 24))(a1, &v5, 4) != 0;
  }

  else
  {
    result = 0;
    *a1 = 8;
  }

  return result;
}

BOOL cmp_write_s64(uint64_t a1, unint64_t a2)
{
  v6 = -45;
  if ((*(a1 + 24))(a1, &v6, 1) == 1)
  {
    v5 = bswap64(a2);
    return (*(a1 + 24))(a1, &v5, 8) != 0;
  }

  else
  {
    result = 0;
    *a1 = 8;
  }

  return result;
}

BOOL cmp_write_sint(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    if (a2 < 0xFFFFFFFFFFFFFFE0)
    {
      if (a2 < 0xFFFFFFFFFFFFFF80)
      {
        if (a2 < 0xFFFFFFFFFFFF8000)
        {
          if (a2 < 0xFFFFFFFF80000000)
          {

            return cmp_write_s64(a1, a2);
          }

          else
          {

            return cmp_write_s32(a1, a2);
          }
        }

        else
        {

          return cmp_write_s16(a1, a2);
        }
      }

      else
      {

        return cmp_write_s8(a1, a2);
      }
    }

    else
    {
      v5 = a2;
      v4 = 1;
      if ((*(a1 + 24))(a1, &v5, 1) != 1)
      {
        v4 = 0;
        *a1 = 6;
      }

      return v4;
    }
  }

  else
  {

    return cmp_write_uint(a1, a2);
  }
}

BOOL cmp_write_u8(uint64_t a1, char a2)
{
  v4 = a2;
  v5 = -52;
  if ((*(a1 + 24))(a1, &v5, 1) == 1)
  {
    return (*(a1 + 24))(a1, &v4, 1) != 0;
  }

  result = 0;
  *a1 = 8;
  return result;
}

BOOL cmp_write_u64(uint64_t a1, unint64_t a2)
{
  v6 = -49;
  if ((*(a1 + 24))(a1, &v6, 1) == 1)
  {
    v5 = bswap64(a2);
    return (*(a1 + 24))(a1, &v5, 8) != 0;
  }

  else
  {
    result = 0;
    *a1 = 8;
  }

  return result;
}

BOOL cmp_write_float(uint64_t a1, float a2)
{
  v6 = -54;
  if ((*(a1 + 24))(a1, &v6, 1) == 1)
  {
    v5 = bswap32(LODWORD(a2));
    return (*(a1 + 24))(a1, &v5, 4) != 0;
  }

  else
  {
    result = 0;
    *a1 = 8;
  }

  return result;
}

BOOL cmp_write_nil(uint64_t a1)
{
  v4 = -64;
  v2 = (*(a1 + 24))(a1, &v4, 1);
  if (v2 != 1)
  {
    *a1 = 8;
  }

  return v2 == 1;
}

BOOL cmp_write_true(uint64_t a1)
{
  v4 = -61;
  v2 = (*(a1 + 24))(a1, &v4, 1);
  if (v2 != 1)
  {
    *a1 = 8;
  }

  return v2 == 1;
}

BOOL cmp_write_false(uint64_t a1)
{
  v4 = -62;
  v2 = (*(a1 + 24))(a1, &v4, 1);
  if (v2 != 1)
  {
    *a1 = 8;
  }

  return v2 == 1;
}

uint64_t cmp_write_BOOL(uint64_t a1, int a2)
{
  if (a2)
  {
    v6 = -61;
    v3 = 1;
    v4 = (*(a1 + 24))(a1, &v6, 1);
  }

  else
  {
    v7 = -62;
    v3 = 1;
    v4 = (*(a1 + 24))(a1, &v7, 1);
  }

  if (v4 != 1)
  {
    v3 = 0;
    *a1 = 8;
  }

  return v3;
}

uint64_t cmp_write_fixstr_marker(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x1F)
  {
    v4 = 5;
    goto LABEL_5;
  }

  v6 = a2 | 0xA0;
  v3 = 1;
  if ((*(a1 + 24))(a1, &v6, 1) != 1)
  {
    v4 = 6;
LABEL_5:
    v3 = 0;
    *a1 = v4;
  }

  return v3;
}

uint64_t cmp_write_str8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = cmp_write_str8_marker(a1, a3);
  if (result)
  {
    result = (*(a1 + 24))(a1, a2, a3);
    if (result)
    {
      return 1;
    }

    else
    {
      *a1 = 10;
    }
  }

  return result;
}

uint64_t cmp_write_str16_marker(uint64_t a1, unsigned int a2)
{
  v7 = -38;
  if ((*(a1 + 24))(a1, &v7, 1) == 1)
  {
    v6 = __rev16(a2);
    if ((*(a1 + 24))(a1, &v6, 2))
    {
      return 1;
    }

    v5 = 15;
  }

  else
  {
    v5 = 8;
  }

  result = 0;
  *a1 = v5;
  return result;
}

uint64_t cmp_write_str16(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = cmp_write_str16_marker(a1, a3);
  if (result)
  {
    result = (*(a1 + 24))(a1, a2, a3);
    if (result)
    {
      return 1;
    }

    else
    {
      *a1 = 10;
    }
  }

  return result;
}

uint64_t cmp_write_str32_marker(uint64_t a1, unsigned int a2)
{
  v7 = -37;
  if ((*(a1 + 24))(a1, &v7, 1) == 1)
  {
    v6 = bswap32(a2);
    if ((*(a1 + 24))(a1, &v6, 4))
    {
      return 1;
    }

    v5 = 15;
  }

  else
  {
    v5 = 8;
  }

  result = 0;
  *a1 = v5;
  return result;
}

uint64_t cmp_write_str32(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = cmp_write_str32_marker(a1, a3);
  if (result)
  {
    result = (*(a1 + 24))(a1, a2, a3);
    if (result)
    {
      return 1;
    }

    else
    {
      *a1 = 10;
    }
  }

  return result;
}

uint64_t cmp_write_str_marker(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x1F)
  {
    if (a2 > 0xFF)
    {
      if (HIWORD(a2))
      {

        return cmp_write_str32_marker(a1, a2);
      }

      else
      {

        return cmp_write_str16_marker(a1, a2);
      }
    }

    else
    {

      return cmp_write_str8_marker(a1, a2);
    }
  }

  else
  {
    v5 = a2 | 0xA0;
    v3 = 1;
    if ((*(a1 + 24))(a1, &v5, 1) != 1)
    {
      v3 = 0;
      *a1 = 6;
    }

    return v3;
  }
}

uint64_t cmp_write_bin8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = cmp_write_bin8_marker(a1, a3);
  if (result)
  {
    result = (*(a1 + 24))(a1, a2, a3);
    if (result)
    {
      return 1;
    }

    else
    {
      *a1 = 10;
    }
  }

  return result;
}

uint64_t cmp_write_bin16(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = cmp_write_bin16_marker(a1, a3);
  if (result)
  {
    result = (*(a1 + 24))(a1, a2, a3);
    if (result)
    {
      return 1;
    }

    else
    {
      *a1 = 10;
    }
  }

  return result;
}

uint64_t cmp_write_bin32_marker(uint64_t a1, unsigned int a2)
{
  v7 = -58;
  if ((*(a1 + 24))(a1, &v7, 1) == 1)
  {
    v6 = bswap32(a2);
    if ((*(a1 + 24))(a1, &v6, 4))
    {
      return 1;
    }

    v5 = 15;
  }

  else
  {
    v5 = 8;
  }

  result = 0;
  *a1 = v5;
  return result;
}

uint64_t cmp_write_bin32(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = cmp_write_bin32_marker(a1, a3);
  if (result)
  {
    result = (*(a1 + 24))(a1, a2, a3);
    if (result)
    {
      return 1;
    }

    else
    {
      *a1 = 10;
    }
  }

  return result;
}

uint64_t cmp_write_bin_marker(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0xFF)
  {
    return cmp_write_bin8_marker(a1, a2);
  }

  if (HIWORD(a2))
  {
    return cmp_write_bin32_marker(a1, a2);
  }

  return cmp_write_bin16_marker(a1, a2);
}

uint64_t cmp_write_fixarray(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xF)
  {
    v4 = 5;
    goto LABEL_5;
  }

  v6 = a2 | 0x90;
  v3 = 1;
  if ((*(a1 + 24))(a1, &v6, 1) != 1)
  {
    v4 = 6;
LABEL_5:
    v3 = 0;
    *a1 = v4;
  }

  return v3;
}

uint64_t cmp_write_array16(uint64_t a1, unsigned int a2)
{
  v7 = -36;
  if ((*(a1 + 24))(a1, &v7, 1) == 1)
  {
    v6 = __rev16(a2);
    if ((*(a1 + 24))(a1, &v6, 2))
    {
      return 1;
    }

    v5 = 15;
  }

  else
  {
    v5 = 8;
  }

  result = 0;
  *a1 = v5;
  return result;
}

uint64_t cmp_write_array32(uint64_t a1, unsigned int a2)
{
  v7 = -35;
  if ((*(a1 + 24))(a1, &v7, 1) == 1)
  {
    v6 = bswap32(a2);
    if ((*(a1 + 24))(a1, &v6, 4))
    {
      return 1;
    }

    v5 = 15;
  }

  else
  {
    v5 = 8;
  }

  result = 0;
  *a1 = v5;
  return result;
}

uint64_t cmp_write_fixmap(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xF)
  {
    v4 = 5;
    goto LABEL_5;
  }

  v6 = a2 | 0x80;
  v3 = 1;
  if ((*(a1 + 24))(a1, &v6, 1) != 1)
  {
    v4 = 6;
LABEL_5:
    v3 = 0;
    *a1 = v4;
  }

  return v3;
}

uint64_t cmp_write_map16(uint64_t a1, unsigned int a2)
{
  v7 = -34;
  if ((*(a1 + 24))(a1, &v7, 1) == 1)
  {
    v6 = __rev16(a2);
    if ((*(a1 + 24))(a1, &v6, 2))
    {
      return 1;
    }

    v5 = 15;
  }

  else
  {
    v5 = 8;
  }

  result = 0;
  *a1 = v5;
  return result;
}

uint64_t cmp_write_map32(uint64_t a1, unsigned int a2)
{
  v7 = -33;
  if ((*(a1 + 24))(a1, &v7, 1) == 1)
  {
    v6 = bswap32(a2);
    if ((*(a1 + 24))(a1, &v6, 4))
    {
      return 1;
    }

    v5 = 15;
  }

  else
  {
    v5 = 8;
  }

  result = 0;
  *a1 = v5;
  return result;
}

uint64_t cmp_write_fixext1_marker(uint64_t a1, char a2)
{
  v6 = a2;
  v7 = -44;
  if ((*(a1 + 24))(a1, &v7, 1) != 1)
  {
    v4 = 8;
    goto LABEL_5;
  }

  v3 = 1;
  if (!(*(a1 + 24))(a1, &v6, 1))
  {
    v4 = 12;
LABEL_5:
    v3 = 0;
    *a1 = v4;
  }

  return v3;
}

uint64_t cmp_write_fixext1(uint64_t a1, char a2, uint64_t a3)
{
  if (!cmp_write_fixext1_marker(a1, a2))
  {
    return 0;
  }

  v5 = 1;
  if (!(*(a1 + 24))(a1, a3, 1))
  {
    v5 = 0;
    *a1 = 10;
  }

  return v5;
}

uint64_t cmp_write_fixext2_marker(uint64_t a1, char a2)
{
  v6 = a2;
  v7 = -43;
  if ((*(a1 + 24))(a1, &v7, 1) != 1)
  {
    v4 = 8;
    goto LABEL_5;
  }

  v3 = 1;
  if (!(*(a1 + 24))(a1, &v6, 1))
  {
    v4 = 12;
LABEL_5:
    v3 = 0;
    *a1 = v4;
  }

  return v3;
}

uint64_t cmp_write_fixext2(uint64_t a1, char a2, uint64_t a3)
{
  result = cmp_write_fixext2_marker(a1, a2);
  if (result)
  {
    result = (*(a1 + 24))(a1, a3, 2);
    if (result)
    {
      return 1;
    }

    else
    {
      *a1 = 10;
    }
  }

  return result;
}

uint64_t cmp_write_fixext4_marker(uint64_t a1, char a2)
{
  v6 = a2;
  v7 = -42;
  if ((*(a1 + 24))(a1, &v7, 1) != 1)
  {
    v4 = 8;
    goto LABEL_5;
  }

  v3 = 1;
  if (!(*(a1 + 24))(a1, &v6, 1))
  {
    v4 = 12;
LABEL_5:
    v3 = 0;
    *a1 = v4;
  }

  return v3;
}

uint64_t cmp_write_fixext4(uint64_t a1, char a2, uint64_t a3)
{
  result = cmp_write_fixext4_marker(a1, a2);
  if (result)
  {
    result = (*(a1 + 24))(a1, a3, 4);
    if (result)
    {
      return 1;
    }

    else
    {
      *a1 = 10;
    }
  }

  return result;
}

uint64_t cmp_write_fixext8_marker(uint64_t a1, char a2)
{
  v6 = a2;
  v7 = -41;
  if ((*(a1 + 24))(a1, &v7, 1) != 1)
  {
    v4 = 8;
    goto LABEL_5;
  }

  v3 = 1;
  if (!(*(a1 + 24))(a1, &v6, 1))
  {
    v4 = 12;
LABEL_5:
    v3 = 0;
    *a1 = v4;
  }

  return v3;
}

uint64_t cmp_write_fixext8(uint64_t a1, char a2, uint64_t a3)
{
  result = cmp_write_fixext8_marker(a1, a2);
  if (result)
  {
    result = (*(a1 + 24))(a1, a3, 8);
    if (result)
    {
      return 1;
    }

    else
    {
      *a1 = 10;
    }
  }

  return result;
}

uint64_t cmp_write_fixext16_marker(uint64_t a1, char a2)
{
  v6 = a2;
  v7 = -40;
  if ((*(a1 + 24))(a1, &v7, 1) != 1)
  {
    v4 = 8;
    goto LABEL_5;
  }

  v3 = 1;
  if (!(*(a1 + 24))(a1, &v6, 1))
  {
    v4 = 12;
LABEL_5:
    v3 = 0;
    *a1 = v4;
  }

  return v3;
}

uint64_t cmp_write_fixext16(uint64_t a1, char a2, uint64_t a3)
{
  result = cmp_write_fixext16_marker(a1, a2);
  if (result)
  {
    result = (*(a1 + 24))(a1, a3, 16);
    if (result)
    {
      return 1;
    }

    else
    {
      *a1 = 10;
    }
  }

  return result;
}

uint64_t cmp_write_ext8(uint64_t a1, char a2, unsigned int a3, uint64_t a4)
{
  result = cmp_write_ext8_marker(a1, a2, a3);
  if (result)
  {
    result = (*(a1 + 24))(a1, a4, a3);
    if (result)
    {
      return 1;
    }

    else
    {
      *a1 = 10;
    }
  }

  return result;
}

uint64_t cmp_write_ext16_marker(uint64_t a1, char a2, unsigned int a3)
{
  v8 = a2;
  v9 = -56;
  if ((*(a1 + 24))(a1, &v9, 1) == 1)
  {
    if ((*(a1 + 24))(a1, &v8, 1))
    {
      v7 = __rev16(a3);
      if ((*(a1 + 24))(a1, &v7, 2))
      {
        return 1;
      }

      v6 = 15;
    }

    else
    {
      v6 = 12;
    }
  }

  else
  {
    v6 = 8;
  }

  result = 0;
  *a1 = v6;
  return result;
}

uint64_t cmp_write_ext16(uint64_t a1, char a2, unsigned int a3, uint64_t a4)
{
  result = cmp_write_ext16_marker(a1, a2, a3);
  if (result)
  {
    result = (*(a1 + 24))(a1, a4, a3);
    if (result)
    {
      return 1;
    }

    else
    {
      *a1 = 10;
    }
  }

  return result;
}

uint64_t cmp_write_ext32_marker(uint64_t a1, char a2, unsigned int a3)
{
  v8 = a2;
  v9 = -55;
  if ((*(a1 + 24))(a1, &v9, 1) == 1)
  {
    if ((*(a1 + 24))(a1, &v8, 1))
    {
      v7 = bswap32(a3);
      if ((*(a1 + 24))(a1, &v7, 4))
      {
        return 1;
      }

      v6 = 15;
    }

    else
    {
      v6 = 12;
    }
  }

  else
  {
    v6 = 8;
  }

  result = 0;
  *a1 = v6;
  return result;
}

uint64_t cmp_write_ext32(uint64_t a1, char a2, unsigned int a3, uint64_t a4)
{
  result = cmp_write_ext32_marker(a1, a2, a3);
  if (result)
  {
    result = (*(a1 + 24))(a1, a4, a3);
    if (result)
    {
      return 1;
    }

    else
    {
      *a1 = 10;
    }
  }

  return result;
}

uint64_t cmp_write_ext_marker(uint64_t a1, char a2, int a3)
{
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      return cmp_write_fixext1_marker(a1, a2);
    }

    if (a3 == 2)
    {
      return cmp_write_fixext2_marker(a1, a2);
    }
  }

  else
  {
    switch(a3)
    {
      case 4:
        return cmp_write_fixext4_marker(a1, a2);
      case 8:
        return cmp_write_fixext8_marker(a1, a2);
      case 16:
        return cmp_write_fixext16_marker(a1, a2);
    }
  }

  if (a3 <= 0xFF)
  {
    return cmp_write_ext8_marker(a1, a2, a3);
  }

  if (HIWORD(a3))
  {
    return cmp_write_ext32_marker(a1, a2, a3);
  }

  return cmp_write_ext16_marker(a1, a2, a3);
}

uint64_t cmp_write_object(uint64_t a1, _BYTE *a2)
{
  switch(*a2)
  {
    case 0:
      if (a2[8] < 0)
      {
        goto LABEL_62;
      }

      v41 = a2[8];
      v3 = 1;
      v4 = (*(a1 + 24))(a1, &v41, 1);
      goto LABEL_60;
    case 1:
      v21 = a2[8];
      if (v21 > 0xF)
      {
        goto LABEL_62;
      }

      v42 = v21 | 0x80;
      v3 = 1;
      v4 = (*(a1 + 24))(a1, &v42, 1);
      goto LABEL_60;
    case 2:
      v22 = a2[8];
      if (v22 > 0xF)
      {
        goto LABEL_62;
      }

      v43 = v22 | 0x90;
      v3 = 1;
      v4 = (*(a1 + 24))(a1, &v43, 1);
      goto LABEL_60;
    case 3:
      v26 = a2[8];
      if (v26 > 0x1F)
      {
        goto LABEL_62;
      }

      v44 = v26 | 0xA0;
      v3 = 1;
      v4 = (*(a1 + 24))(a1, &v44, 1);
      goto LABEL_60;
    case 4:
      v45 = -64;
      v3 = 1;
      v23 = (*(a1 + 24))(a1, &v45, 1);
      goto LABEL_102;
    case 5:
      if (a2[8] == 1)
      {
        v46 = -61;
        v3 = 1;
        v23 = (*(a1 + 24))(a1, &v46, 1);
      }

      else
      {
        v47 = -62;
        v3 = 1;
        v23 = (*(a1 + 24))(a1, &v47, 1);
      }

LABEL_102:
      if (v23 == 1)
      {
        return v3;
      }

      v3 = 0;
      v27 = 8;
      goto LABEL_104;
    case 6:
      v31 = a2[8];

      return cmp_write_bin8_marker(a1, v31);
    case 7:
      v32 = *(a2 + 4);

      return cmp_write_bin16_marker(a1, v32);
    case 8:
      v11 = *(a2 + 2);

      return cmp_write_bin32_marker(a1, v11);
    case 9:
      v34 = a2[12];
      v35 = a2[8];

      return cmp_write_ext8_marker(a1, v35, v34);
    case 0xA:
      v13 = *(a2 + 6);
      v14 = a2[8];

      return cmp_write_ext16_marker(a1, v14, v13);
    case 0xB:
      v24 = *(a2 + 3);
      v25 = a2[8];

      return cmp_write_ext32_marker(a1, v25, v24);
    case 0xC:
      v17 = *(a2 + 2);

      return cmp_write_float(a1, v17);
    case 0xD:
      v9 = *(a2 + 1);

      return cmp_write_double(a1, v9);
    case 0xE:
      v29 = a2[8];

      return cmp_write_u8(a1, v29);
    case 0xF:
      v30 = *(a2 + 4);

      return cmp_write_u16(a1, v30);
    case 0x10:
      v37 = *(a2 + 2);

      return cmp_write_u32(a1, v37);
    case 0x11:
      v36 = *(a2 + 1);

      return cmp_write_u64(a1, v36);
    case 0x12:
      v7 = a2[8];

      return cmp_write_s8(a1, v7);
    case 0x13:
      v18 = *(a2 + 4);

      return cmp_write_s16(a1, v18);
    case 0x14:
      v38 = *(a2 + 2);

      return cmp_write_s32(a1, v38);
    case 0x15:
      v8 = *(a2 + 1);

      return cmp_write_s64(a1, v8);
    case 0x16:
      v16 = a2[8];

      return cmp_write_fixext1_marker(a1, v16);
    case 0x17:
      v12 = a2[8];

      return cmp_write_fixext2_marker(a1, v12);
    case 0x18:
      v28 = a2[8];

      return cmp_write_fixext4_marker(a1, v28);
    case 0x19:
      v10 = a2[8];

      return cmp_write_fixext8_marker(a1, v10);
    case 0x1A:
      v40 = a2[8];

      return cmp_write_fixext16_marker(a1, v40);
    case 0x1C:
      v39 = *(a2 + 4);

      return cmp_write_str16_marker(a1, v39);
    case 0x1D:
      v15 = *(a2 + 2);

      return cmp_write_str32_marker(a1, v15);
    case 0x1E:
      v19 = *(a2 + 4);

      return cmp_write_array16(a1, v19);
    case 0x1F:
      v33 = *(a2 + 2);

      return cmp_write_array32(a1, v33);
    case 0x20:
      v20 = *(a2 + 4);

      return cmp_write_map16(a1, v20);
    case 0x21:
      v5 = *(a2 + 2);

      return cmp_write_map32(a1, v5);
    case 0x22:
      if (a2[8] < 0xE0u)
      {
LABEL_62:
        v27 = 5;
      }

      else
      {
        v48 = a2[8];
        v3 = 1;
        v4 = (*(a1 + 24))(a1, &v48, 1);
LABEL_60:
        if (v4 == 1)
        {
          return v3;
        }

        v27 = 6;
      }

      v3 = 0;
LABEL_104:
      *a1 = v27;
      return v3;
    default:
      v3 = 0;
      v27 = 13;
      goto LABEL_104;
  }
}

uint64_t cmp_read_pfix(_BYTE *a1, _BYTE *a2)
{
  v5 = 0;
  v6 = 0;
  result = cmp_read_object(a1, &v5);
  if (result)
  {
    if (v5)
    {
      result = 0;
      *a1 = 13;
    }

    else
    {
      *a2 = v6;
      return 1;
    }
  }

  return result;
}

uint64_t cmp_read_nfix(_BYTE *a1, _BYTE *a2)
{
  v5 = 0;
  v6 = 0;
  result = cmp_read_object(a1, &v5);
  if (result)
  {
    if (v5 == 34)
    {
      *a2 = v6;
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 13;
    }
  }

  return result;
}

uint64_t cmp_read_sfix(_BYTE *a1, _BYTE *a2)
{
  v6 = 0;
  v7 = 0;
  result = cmp_read_object(a1, &v6);
  if (result)
  {
    if (v6 == 34 || v6 == 0)
    {
      *a2 = v7;
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 13;
    }
  }

  return result;
}

uint64_t cmp_read_s8(_BYTE *a1, _BYTE *a2)
{
  v5 = 0;
  v6 = 0;
  result = cmp_read_object(a1, &v5);
  if (result)
  {
    if (v5 == 18)
    {
      *a2 = v6;
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 13;
    }
  }

  return result;
}

uint64_t cmp_read_s16(_BYTE *a1, _WORD *a2)
{
  v5 = 0;
  v6 = 0;
  result = cmp_read_object(a1, &v5);
  if (result)
  {
    if (v5 == 19)
    {
      *a2 = bswap32(v6) >> 16;
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 13;
    }
  }

  return result;
}

uint64_t cmp_read_s32(_BYTE *a1, _DWORD *a2)
{
  v5 = 0;
  v6 = 0;
  result = cmp_read_object(a1, &v5);
  if (result)
  {
    if (v5 == 20)
    {
      *a2 = bswap32(v6);
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 13;
    }
  }

  return result;
}

uint64_t cmp_read_s64(_BYTE *a1, void *a2)
{
  v5 = 0;
  v6 = 0;
  result = cmp_read_object(a1, &v5);
  if (result)
  {
    if (v5 == 21)
    {
      *a2 = bswap64(v6);
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 13;
    }
  }

  return result;
}

uint64_t cmp_read_char(_BYTE *a1, _BYTE *a2)
{
  v7 = 0;
  v8 = 0;
  result = cmp_read_object(a1, &v7);
  if (result)
  {
    if (v7 > 0x11u)
    {
      if (v7 != 34 && v7 != 18)
      {
        goto LABEL_14;
      }
    }

    else if (v7)
    {
      if (v7 != 14 || (v5 = v8, v8 < 0))
      {
LABEL_14:
        result = 0;
        *a1 = 13;
        return result;
      }

LABEL_13:
      *a2 = v5;
      return 1;
    }

    v5 = v8;
    goto LABEL_13;
  }

  return result;
}

uint64_t cmp_read_short(_BYTE *a1, _WORD *a2)
{
  v6 = 0;
  v7 = 0;
  result = cmp_read_object(a1, &v6);
  if (result)
  {
    if (v6 > 0x11u)
    {
      if (v6 != 34)
      {
        if (v6 == 19)
        {
          v5 = v7;
          goto LABEL_15;
        }

        if (v6 != 18)
        {
LABEL_12:
          result = 0;
          *a1 = 13;
          return result;
        }
      }
    }

    else if (v6)
    {
      if (v6 == 14)
      {
        v5 = v7;
      }

      else
      {
        if (v6 != 15)
        {
          goto LABEL_12;
        }

        v5 = v7;
        if (v7 < 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_15;
    }

    v5 = v7;
LABEL_15:
    *a2 = v5;
    return 1;
  }

  return result;
}

uint64_t cmp_read_int(_BYTE *a1, _DWORD *a2)
{
  v6 = 0;
  v7 = 0;
  result = cmp_read_object(a1, &v6);
  if (result)
  {
    if (v6 > 0x11u)
    {
      if (v6 > 0x13u)
      {
        if (v6 == 20)
        {
          v5 = v7;
          goto LABEL_21;
        }

        if (v6 != 34)
        {
          goto LABEL_18;
        }
      }

      else if (v6 != 18)
      {
        if (v6 == 19)
        {
          v5 = v7;
          goto LABEL_21;
        }

LABEL_18:
        result = 0;
        *a1 = 13;
        return result;
      }
    }

    else
    {
      if (v6 > 0xEu)
      {
        if (v6 == 15)
        {
          v5 = v7;
          goto LABEL_21;
        }

        if (v6 == 16)
        {
          v5 = v7;
          if ((v7 & 0x80000000) == 0)
          {
            goto LABEL_21;
          }
        }

        goto LABEL_18;
      }

      if (v6)
      {
        if (v6 == 14)
        {
          v5 = v7;
LABEL_21:
          *a2 = v5;
          return 1;
        }

        goto LABEL_18;
      }
    }

    v5 = v7;
    goto LABEL_21;
  }

  return result;
}

uint64_t cmp_read_long(_BYTE *a1, void *a2)
{
  v6 = 0;
  v7 = 0;
  result = cmp_read_object(a1, &v6);
  if (result)
  {
    if (v6 > 0x11u)
    {
      if (v6 <= 0x13u)
      {
        if (v6 != 18)
        {
          if (v6 == 19)
          {
            v5 = v7;
            goto LABEL_26;
          }

LABEL_21:
          result = 0;
          *a1 = 13;
          return result;
        }
      }

      else
      {
        if (v6 == 20)
        {
          v5 = v7;
          goto LABEL_26;
        }

        if (v6 == 21)
        {
          v5 = v7;
          goto LABEL_26;
        }

        if (v6 != 34)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      if (v6 > 0xEu)
      {
        switch(v6)
        {
          case 0xFu:
            v5 = v7;
            break;
          case 0x10u:
            v5 = v7;
            break;
          case 0x11u:
            v5 = v7;
            if (v7 < 0)
            {
              goto LABEL_21;
            }

            break;
          default:
            goto LABEL_21;
        }

        goto LABEL_26;
      }

      if (v6)
      {
        if (v6 == 14)
        {
          v5 = v7;
LABEL_26:
          *a2 = v5;
          return 1;
        }

        goto LABEL_21;
      }
    }

    v5 = v7;
    goto LABEL_26;
  }

  return result;
}

uint64_t cmp_read_u8(_BYTE *a1, _BYTE *a2)
{
  v5 = 0;
  v6 = 0;
  result = cmp_read_object(a1, &v5);
  if (result)
  {
    if (v5 == 14)
    {
      *a2 = v6;
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 13;
    }
  }

  return result;
}

uint64_t cmp_read_u16(_BYTE *a1, _WORD *a2)
{
  v5 = 0;
  v6 = 0;
  result = cmp_read_object(a1, &v5);
  if (result)
  {
    if (v5 == 15)
    {
      *a2 = v6;
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 13;
    }
  }

  return result;
}

uint64_t cmp_read_u32(_BYTE *a1, _DWORD *a2)
{
  v5 = 0;
  v6 = 0;
  result = cmp_read_object(a1, &v5);
  if (result)
  {
    if (v5 == 16)
    {
      *a2 = v6;
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 13;
    }
  }

  return result;
}

uint64_t cmp_read_u64(_BYTE *a1, void *a2)
{
  v5 = 0;
  v6 = 0;
  result = cmp_read_object(a1, &v5);
  if (result)
  {
    if (v5 == 17)
    {
      *a2 = v6;
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 13;
    }
  }

  return result;
}

uint64_t cmp_read_uchar(_BYTE *a1, _BYTE *a2)
{
  v6 = 0;
  v7 = 0;
  result = cmp_read_object(a1, &v6);
  if (result)
  {
    if (v6 == 14 || v6 == 0)
    {
      *a2 = v7;
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 13;
    }
  }

  return result;
}

uint64_t cmp_read_ushort(_BYTE *a1, _WORD *a2)
{
  v6 = 0;
  v7 = 0;
  result = cmp_read_object(a1, &v6);
  if (result)
  {
    if (!v6)
    {
      goto LABEL_5;
    }

    if (v6 == 15)
    {
      v5 = v7;
      goto LABEL_7;
    }

    if (v6 == 14)
    {
LABEL_5:
      v5 = v7;
LABEL_7:
      *a2 = v5;
      return 1;
    }

    result = 0;
    *a1 = 13;
  }

  return result;
}

uint64_t cmp_read_uint(_BYTE *a1, _DWORD *a2)
{
  v6 = 0;
  v7 = 0;
  result = cmp_read_object(a1, &v6);
  if (result)
  {
    if (v6 <= 0xEu)
    {
      if (v6 && v6 != 14)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 == 15)
      {
        v5 = v7;
        goto LABEL_12;
      }

      if (v6 == 16)
      {
        v5 = v7;
        goto LABEL_12;
      }

      if (v6 != 34)
      {
LABEL_14:
        result = 0;
        *a1 = 13;
        return result;
      }
    }

    v5 = v7;
LABEL_12:
    *a2 = v5;
    return 1;
  }

  return result;
}

uint64_t cmp_read_ulong(_BYTE *a1, void *a2)
{
  v6 = 0;
  v7 = 0;
  result = cmp_read_object(a1, &v6);
  if (result)
  {
    if (v6 > 0xFu)
    {
      if (v6 == 16)
      {
        v5 = v7;
        goto LABEL_14;
      }

      if (v6 == 17)
      {
        v5 = v7;
        goto LABEL_14;
      }

      if (v6 != 34)
      {
        goto LABEL_12;
      }
    }

    else if (v6 && v6 != 14)
    {
      if (v6 == 15)
      {
        v5 = v7;
LABEL_14:
        *a2 = v5;
        return 1;
      }

LABEL_12:
      result = 0;
      *a1 = 13;
      return result;
    }

    v5 = v7;
    goto LABEL_14;
  }

  return result;
}

uint64_t cmp_read_float(_BYTE *a1, _DWORD *a2)
{
  v5 = 0;
  v6 = 0;
  result = cmp_read_object(a1, &v5);
  if (result)
  {
    if (v5 == 12)
    {
      *a2 = v6;
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 13;
    }
  }

  return result;
}

uint64_t cmp_read_double(_BYTE *a1, void *a2)
{
  v5 = 0;
  v6 = 0;
  result = cmp_read_object(a1, &v5);
  if (result)
  {
    if (v5 == 13)
    {
      *a2 = v6;
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 13;
    }
  }

  return result;
}

uint64_t cmp_read_nil(_BYTE *a1)
{
  v3[0] = 0;
  v3[1] = 0;
  result = cmp_read_object(a1, v3);
  if (result)
  {
    if (LOBYTE(v3[0]) == 4)
    {
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 13;
    }
  }

  return result;
}

uint64_t cmp_read_BOOL(_BYTE *a1, _BYTE *a2)
{
  v5 = 0;
  v6 = 0;
  result = cmp_read_object(a1, &v5);
  if (result)
  {
    if (v5 == 5)
    {
      *a2 = v6;
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 13;
    }
  }

  return result;
}

uint64_t cmp_read_str_size(_BYTE *a1, _DWORD *a2)
{
  v6 = 0;
  v7 = 0;
  result = cmp_read_object(a1, &v6);
  if (result)
  {
    if (v6 > 0x1Du || ((1 << v6) & 0x38000008) == 0)
    {
      result = 0;
      *a1 = 13;
    }

    else
    {
      *a2 = v7;
      return 1;
    }
  }

  return result;
}

uint64_t cmp_read_str(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  if (!cmp_read_object(a1, &v10))
  {
    return 0;
  }

  if (v10 > 0x1Du || ((1 << v10) & 0x38000008) == 0)
  {
    *a1 = 13;
    return 0;
  }

  v7 = v11;
  if ((v11 + 1) <= *a3)
  {
    if ((*(a1 + 16))(a1, a2, v11))
    {
      *(a2 + v7) = 0;
      *a3 = v7;
      return 1;
    }

    result = 0;
    v9 = 9;
  }

  else
  {
    result = 0;
    *a3 = v11;
    v9 = 1;
  }

  *a1 = v9;
  return result;
}

uint64_t cmp_read_bin_size(_BYTE *a1, _DWORD *a2)
{
  v5 = 0;
  v6 = 0;
  result = cmp_read_object(a1, &v5);
  if (result)
  {
    if (v5 - 6 > 2)
    {
      result = 0;
      *a1 = 13;
    }

    else
    {
      *a2 = v6;
      return 1;
    }
  }

  return result;
}

uint64_t cmp_read_bin(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = 0;
  v10 = 0;
  if (!cmp_read_object(a1, &v9))
  {
    return 0;
  }

  if (v9 - 6 >= 3)
  {
    *a1 = 13;
    return 0;
  }

  v6 = v10;
  if (v10 <= *a3)
  {
    if ((*(a1 + 16))(a1, a2, v10))
    {
      *a3 = v6;
      return 1;
    }

    result = 0;
    v8 = 9;
  }

  else
  {
    result = 0;
    v8 = 2;
  }

  *a1 = v8;
  return result;
}

uint64_t cmp_read_array(_BYTE *a1, _DWORD *a2)
{
  v6 = 0;
  v7 = 0;
  result = cmp_read_object(a1, &v6);
  if (result)
  {
    if (v6 > 0x1Fu || ((1 << v6) & 0xC0000004) == 0)
    {
      result = 0;
      *a1 = 13;
    }

    else
    {
      *a2 = v7;
      return 1;
    }
  }

  return result;
}

uint64_t cmp_read_map(_BYTE *a1, _DWORD *a2)
{
  v6 = 0;
  v7 = 0;
  result = cmp_read_object(a1, &v6);
  if (result)
  {
    if (v6 > 0x21u || ((1 << v6) & 0x300000002) == 0)
    {
      result = 0;
      *a1 = 13;
    }

    else
    {
      *a2 = v7;
      return 1;
    }
  }

  return result;
}

uint64_t cmp_read_fixext1_marker(_BYTE *a1, _BYTE *a2)
{
  v5 = 0;
  v6 = 0;
  result = cmp_read_object(a1, &v5);
  if (result)
  {
    if (v5 == 22)
    {
      *a2 = v6;
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 13;
    }
  }

  return result;
}

uint64_t cmp_read_fixext1(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  if (!cmp_read_object(a1, &v8))
  {
    return 0;
  }

  if (v8 != 22)
  {
    *a1 = 13;
    return 0;
  }

  *a2 = v9;
  v6 = 1;
  if (((*(a1 + 16))(a1, a3, 1) & 1) == 0)
  {
    v6 = 0;
    *a1 = 9;
  }

  return v6;
}

uint64_t cmp_read_fixext2_marker(_BYTE *a1, _BYTE *a2)
{
  v5 = 0;
  v6 = 0;
  result = cmp_read_object(a1, &v5);
  if (result)
  {
    if (v5 == 23)
    {
      *a2 = v6;
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 13;
    }
  }

  return result;
}

uint64_t cmp_read_fixext2(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0;
  if (!cmp_read_object(a1, &v7))
  {
    return 0;
  }

  if (v7 != 23)
  {
    *a1 = 13;
    return 0;
  }

  *a2 = v8;
  if ((*(a1 + 16))(a1, a3, 2))
  {
    return 1;
  }

  result = 0;
  *a1 = 9;
  return result;
}

uint64_t cmp_read_fixext4_marker(_BYTE *a1, _BYTE *a2)
{
  v5 = 0;
  v6 = 0;
  result = cmp_read_object(a1, &v5);
  if (result)
  {
    if (v5 == 24)
    {
      *a2 = v6;
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 13;
    }
  }

  return result;
}

uint64_t cmp_read_fixext4(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0;
  if (!cmp_read_object(a1, &v7))
  {
    return 0;
  }

  if (v7 != 24)
  {
    *a1 = 13;
    return 0;
  }

  *a2 = v8;
  if ((*(a1 + 16))(a1, a3, 4))
  {
    return 1;
  }

  result = 0;
  *a1 = 9;
  return result;
}

uint64_t cmp_read_fixext8_marker(_BYTE *a1, _BYTE *a2)
{
  v5 = 0;
  v6 = 0;
  result = cmp_read_object(a1, &v5);
  if (result)
  {
    if (v5 == 25)
    {
      *a2 = v6;
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 13;
    }
  }

  return result;
}

uint64_t cmp_read_fixext8(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0;
  if (!cmp_read_object(a1, &v7))
  {
    return 0;
  }

  if (v7 != 25)
  {
    *a1 = 13;
    return 0;
  }

  *a2 = v8;
  if ((*(a1 + 16))(a1, a3, 8))
  {
    return 1;
  }

  result = 0;
  *a1 = 9;
  return result;
}

uint64_t cmp_read_fixext16_marker(_BYTE *a1, _BYTE *a2)
{
  v5 = 0;
  v6 = 0;
  result = cmp_read_object(a1, &v5);
  if (result)
  {
    if (v5 == 26)
    {
      *a2 = v6;
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 13;
    }
  }

  return result;
}

uint64_t cmp_read_fixext16(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0;
  if (!cmp_read_object(a1, &v7))
  {
    return 0;
  }

  if (v7 != 26)
  {
    *a1 = 13;
    return 0;
  }

  *a2 = v8;
  if ((*(a1 + 16))(a1, a3, 16))
  {
    return 1;
  }

  result = 0;
  *a1 = 9;
  return result;
}

uint64_t cmp_read_ext8_marker(_BYTE *a1, _BYTE *a2, _BYTE *a3)
{
  v7 = 0;
  v8 = 0;
  result = cmp_read_object(a1, &v7);
  if (result)
  {
    if (v7 == 9)
    {
      *a2 = v8;
      *a3 = BYTE4(v8);
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 13;
    }
  }

  return result;
}

uint64_t cmp_read_ext8(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  result = cmp_read_ext8_marker(a1, a2, a3);
  if (result)
  {
    if ((*(a1 + 16))(a1, a4, *a3))
    {
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 9;
    }
  }

  return result;
}

uint64_t cmp_read_ext16_marker(_BYTE *a1, _BYTE *a2, _WORD *a3)
{
  v7 = 0;
  v8 = 0;
  result = cmp_read_object(a1, &v7);
  if (result)
  {
    if (v7 == 10)
    {
      *a2 = v8;
      *a3 = WORD2(v8);
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 13;
    }
  }

  return result;
}

uint64_t cmp_read_ext16(uint64_t a1, _BYTE *a2, _WORD *a3, uint64_t a4)
{
  result = cmp_read_ext16_marker(a1, a2, a3);
  if (result)
  {
    if ((*(a1 + 16))(a1, a4, *a3))
    {
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 9;
    }
  }

  return result;
}

uint64_t cmp_read_ext32_marker(_BYTE *a1, _BYTE *a2, _DWORD *a3)
{
  v7 = 0;
  v8 = 0;
  result = cmp_read_object(a1, &v7);
  if (result)
  {
    if (v7 == 11)
    {
      *a2 = v8;
      *a3 = HIDWORD(v8);
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 13;
    }
  }

  return result;
}

uint64_t cmp_read_ext32(uint64_t a1, _BYTE *a2, _DWORD *a3, uint64_t a4)
{
  result = cmp_read_ext32_marker(a1, a2, a3);
  if (result)
  {
    if ((*(a1 + 16))(a1, a4, *a3))
    {
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 9;
    }
  }

  return result;
}

uint64_t cmp_read_ext_marker(_BYTE *a1, _BYTE *a2, _DWORD *a3)
{
  v8 = 0;
  v9 = 0;
  result = cmp_read_object(a1, &v8);
  if (result)
  {
    if (v8 > 0x1Au || ((1 << v8) & 0x7C00E00) == 0)
    {
      result = 0;
      *a1 = 13;
    }

    else
    {
      *a2 = v9;
      *a3 = HIDWORD(v9);
      return 1;
    }
  }

  return result;
}

uint64_t cmp_read_ext(uint64_t a1, _BYTE *a2, _DWORD *a3, uint64_t a4)
{
  result = cmp_read_ext_marker(a1, a2, a3);
  if (result)
  {
    if ((*(a1 + 16))(a1, a4, *a3))
    {
      return 1;
    }

    else
    {
      result = 0;
      *a1 = 9;
    }
  }

  return result;
}

void sub_226A75204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226A755DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226A757D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226A75A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226A75C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226A75D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226A75EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226A76048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226A761BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226A764EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226A76684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226A7684C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UABRCopyDocumentURLForUbiquitousBookmarkData(const __CFString *a1, __CFError **a2)
{
  if (softLinkBRCopyDocumentURLForUbiquitousBookmarkData)
  {
    return softLinkBRCopyDocumentURLForUbiquitousBookmarkData(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t _UABRCopyUbiquitousBookmarkDataForDocumentAtURL(const __CFURL *a1, __CFError **a2)
{
  if (softLinkBRCopyUbiquitousBookmarkDataForDocumentAtURL)
  {
    return softLinkBRCopyUbiquitousBookmarkDataForDocumentAtURL(a1, a2);
  }

  else
  {
    return 0;
  }
}

void *_UABRCloudDocsErrorDomain()
{
  v0 = getBRCloudDocsErrorDomain();

  return v0;
}

uint64_t (*initBRCopyDocumentURLForUbiquitousBookmarkData(const __CFString *a1, __CFError **a2))(const __CFString *, __CFError **)
{
  v4 = CloudDocsLibrary(void)::frameworkLibrary;
  if (!CloudDocsLibrary(void)::frameworkLibrary)
  {
    v4 = dlopen("/System/Library/PrivateFrameworks/CloudDocs.framework/CloudDocs", 2);
    CloudDocsLibrary(void)::frameworkLibrary = v4;
  }

  result = dlsym(v4, "BRCopyDocumentURLForUbiquitousBookmarkData");
  softLinkBRCopyDocumentURLForUbiquitousBookmarkData = result;
  if (result)
  {

    return result(a1, a2);
  }

  return result;
}

uint64_t (*initBRCopyUbiquitousBookmarkDataForDocumentAtURL(const __CFURL *a1, __CFError **a2))(const __CFURL *, __CFError **)
{
  v4 = CloudDocsLibrary(void)::frameworkLibrary;
  if (!CloudDocsLibrary(void)::frameworkLibrary)
  {
    v4 = dlopen("/System/Library/PrivateFrameworks/CloudDocs.framework/CloudDocs", 2);
    CloudDocsLibrary(void)::frameworkLibrary = v4;
  }

  result = dlsym(v4, "BRCopyUbiquitousBookmarkDataForDocumentAtURL");
  softLinkBRCopyUbiquitousBookmarkDataForDocumentAtURL = result;
  if (result)
  {

    return result(a1, a2);
  }

  return result;
}

id initBRCloudDocsErrorDomain(void)
{
  v0 = CloudDocsLibrary(void)::frameworkLibrary;
  if (!CloudDocsLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/CloudDocs.framework/CloudDocs", 2);
    CloudDocsLibrary(void)::frameworkLibrary = v0;
  }

  v1 = dlsym(v0, "BRCloudDocsErrorDomain");
  objc_storeStrong(&constantBRCloudDocsErrorDomain, *v1);
  getBRCloudDocsErrorDomain = BRCloudDocsErrorDomainFunction;
  v2 = constantBRCloudDocsErrorDomain;

  return v2;
}

id _LSGetBestAppSuggestionManagerProtocolInterface()
{
  if (_LSGetBestAppSuggestionManagerProtocolInterface_once != -1)
  {
    _LSGetBestAppSuggestionManagerProtocolInterface_cold_1();
  }

  v1 = _LSGetBestAppSuggestionManagerProtocolInterface_result;

  return v1;
}

id _LSGetBestAppSuggestionManagerResponseProtocolInterface()
{
  if (_LSGetBestAppSuggestionManagerResponseProtocolInterface_once != -1)
  {
    _LSGetBestAppSuggestionManagerResponseProtocolInterface_cold_1();
  }

  v1 = _LSGetBestAppSuggestionManagerResponseProtocolInterface_result;

  return v1;
}

id _UAGetSharedPasteboardManagerProtocolInterface()
{
  if (_UAGetSharedPasteboardManagerProtocolInterface_once != -1)
  {
    _UAGetSharedPasteboardManagerProtocolInterface_cold_1();
  }

  v1 = _UAGetSharedPasteboardManagerProtocolInterface_result;

  return v1;
}

id _UAGetSharedPasteboardManagerResponseProtocolInterface()
{
  if (_UAGetSharedPasteboardManagerResponseProtocolInterface_once != -1)
  {
    _UAGetSharedPasteboardManagerResponseProtocolInterface_cold_1();
  }

  v1 = _UAGetSharedPasteboardManagerResponseProtocolInterface_result;

  return v1;
}

id _UAGetSharedPasteboardAUXProtocolInterface()
{
  if (_UAGetSharedPasteboardAUXProtocolInterface_once != -1)
  {
    _UAGetSharedPasteboardAUXProtocolInterface_cold_1();
  }

  v1 = _UAGetSharedPasteboardAUXProtocolInterface_result;

  return v1;
}

id _UAGetSharedPasteboardControllProtocolInterface()
{
  if (_UAGetSharedPasteboardControllProtocolInterface_once != -1)
  {
    _UAGetSharedPasteboardControllProtocolInterface_cold_1();
  }

  v1 = _UAGetSharedPasteboardControllProtocolInterface_result;

  return v1;
}

BOOL isEarlierThan(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = [v3 compare:v4] == -1;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL isEarlierThanNow(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = isEarlierThan(v1, v2);

  return v3;
}

BOOL isLaterThanNow(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = isEarlierThan(v1, v2);

  return !v3;
}

id teamIDFromApplicationIdentifier(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length] >= 0xB)
  {
    v3 = [v2 rangeOfString:@"."];
    v4 = 0;
    if (v5 == 1 && v3 == 10)
    {
      v4 = [v2 substringToIndex:10];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id trimmedDataString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length] >= 0x41)
  {
    v3 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(v2 length:"bytes") freeWhenDone:{64, 0}];
    v4 = [v3 description];
  }

  else
  {
    v4 = [v2 description];
  }

  return v4;
}

__CFString *timeoutStr(double a1)
{
  if (a1 >= 1.0e98)
  {
    v1 = @"forever";
    goto LABEL_14;
  }

  if (a1 <= 0.0)
  {
    v1 = @"now";
    goto LABEL_14;
  }

  if (a1 < 300.0)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%ld seconds", a1];
    v1 = LABEL_13:;
    goto LABEL_14;
  }

  if (a1 < 3600.0)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"roughly %ld minutes", a1 / 60];
    goto LABEL_13;
  }

  if (a1 < 86400.0)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"roughly %ld hours", a1 / 3600];
    goto LABEL_13;
  }

  if (a1 < 7776000.0)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"roughly %ld days", 3600 * (a1 / 24)];
    goto LABEL_13;
  }

  v1 = @"a long time";
LABEL_14:

  return v1;
}

__CFString *dispatchTimeStr(unint64_t a1)
{
  if (a1 == -1)
  {
    v4 = @"forever";
    goto LABEL_9;
  }

  if (!a1 || (v2 = dispatch_time(0, 0), v2 > a1) || (v3 = (a1 - v2) / 1000000000.0, v3 <= 0.0))
  {
    v4 = @"now";
    goto LABEL_9;
  }

  if (v3 < 10.0)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%2.1g seconds", *&v3];
    v4 = LABEL_20:;
    goto LABEL_9;
  }

  if (v3 < 30.0)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%2ld seconds", v3];
    goto LABEL_20;
  }

  if (v3 < 300.0)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%3ld seconds", v3];
    goto LABEL_20;
  }

  if (v3 < 3600.0)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"roughly %2ld minutes", v3 / 60];
    goto LABEL_20;
  }

  v6 = MEMORY[0x277CCACA8];
  if (v3 < 86400.0)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"roughly %2ld hours", (v3 / 60.0) / 24];
    goto LABEL_20;
  }

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:?];
  v4 = [v6 stringWithFormat:@"%@", v7];

LABEL_9:

  return v4;
}

double currentAbsoluteTime()
{
  v0 = mach_absolute_time();
  if (!v0)
  {
    return NAN;
  }

  v1 = v0;
  info = 0;
  if (mach_timebase_info(&info))
  {
    return NAN;
  }

  LODWORD(v2) = info.numer;
  LODWORD(v3) = info.denom;
  result = v1 * v2 / v3 / 1000000000.0;
  if (fabs(result) == INFINITY)
  {
    return NAN;
  }

  return result;
}

uint64_t applicationProxyCanHandleWebBrowserContinuation(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 appState], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isInstalled"), v3, v2, v4))
  {
    v5 = [v2 activityTypes];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 containsObject:@"NSUserActivityTypeBrowsingWeb"];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_226A7A2B8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id applicationProxyForWebBrowserSupportingContinuation()
{
  v0 = objc_alloc(MEMORY[0x277CC1E98]);
  v1 = [MEMORY[0x277CBEBC0] URLWithString:@"https:"];
  v9 = 0;
  v2 = [v0 initWithURL:v1 error:&v9];
  v3 = v9;

  if (v2)
  {
    v4 = [v2 bundleRecord];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6 = [v2 bundleRecord];
      v7 = [v6 compatibilityObject];

      if (v7)
      {
        if (applicationProxyCanHandleWebBrowserContinuation(v7))
        {
          goto LABEL_7;
        }
      }
    }
  }

  v7 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:@"com.apple.mobilesafari"];
LABEL_7:

  return v7;
}

void sub_226A7A964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226A7B26C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

void sub_226A7E018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226A7E9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226A7F7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226A819E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226A82164(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exc_buf);
    v12 = _uaGetLogForCategory(@"pasteboard-client");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      LODWORD(a9) = 138543362;
      *(&a9 + 4) = v11;
      _os_log_impl(&dword_226A4E000, v12, OS_LOG_TYPE_FAULT, "Exception accessing data file: %{public}@", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x226A82108);
  }

  objc_sync_exit(v9);
  _Unwind_Resume(exc_buf);
}

void sub_226A83100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_226A88BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __dTraceProcessIdentifier_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v0 bundleIdentifier];

  v1 = v3;
  if (!v3)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PID:%lld]", getpid()];
    if (!v1)
    {
      v1 = @"unknown";
    }
  }

  v4 = v1;
  v2 = v1;
  dTraceProcessIdentifier_result = strdup([(__CFString *)v4 UTF8String]);
}

void sub_226A8A6C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t _UACheckEntitlementForSecTask(__SecTask *a1, const __CFString *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = SecTaskCopyValueForEntitlement(a1, a2, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 == CFBooleanGetTypeID())
  {
    Value = CFBooleanGetValue(v3);
  }

  else if (v4 == CFNumberGetTypeID())
  {
    valuePtr = 0;
    CFNumberGetValue(v4, kCFNumberLongLongType, &valuePtr);
    Value = valuePtr != 0;
  }

  else
  {
    Value = 0;
  }

  CFRelease(v3);
  return Value;
}

uint64_t _UAGetAuditTokenForSelf(void)
{
  if (_UAGetAuditTokenForSelf(void)::once != -1)
  {
    _UAGetAuditTokenForSelf();
  }

  return _UAGetAuditTokenForSelf(void)::result;
}

void ___Z23_UAGetAuditTokenForSelfv_block_invoke()
{
  task_info_outCnt = 8;
  v0 = task_info(*MEMORY[0x277D85F48], 0xFu, task_info_out, &task_info_outCnt);
  if (!v0)
  {
    operator new();
  }

  syslog(3, "failed to get audit token for current process: %llx", v0);
}

__int128 *_UAIsAuditTokenSandboxed(__int128 *result, BOOL *a2)
{
  if (result)
  {
    v3 = *result;
    v4 = result[1];
    result = sandbox_check_by_audit_token();
    if (a2)
    {
      *a2 = result != 0;
    }
  }

  return result;
}

__CFString *_UACopyCodeSigningIdentifierForAuditToken(_OWORD *a1)
{
  v1 = *MEMORY[0x277CBECE8];
  v2 = a1[1];
  *v7.val = *a1;
  *&v7.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(v1, &v7);
  v4 = v3;
  if (v3)
  {
    v5 = SecTaskCopySigningIdentifier(v3, 0);
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

Class initCSSearchableIndex()
{
  if (!CoreSpotlightLibrary_frameworkLibrary)
  {
    CoreSpotlightLibrary_frameworkLibrary = dlopen("/System/Library/Frameworks/CoreSpotlight.framework/CoreSpotlight", 2);
  }

  result = objc_getClass("CSSearchableIndex");
  classCSSearchableIndex = result;
  getCSSearchableIndexClass = CSSearchableIndexFunction;
  return result;
}

void sub_226A8C918(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_226A8D520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

void sub_226A8DA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226A8F110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

__CFString *UAResumableActivitiesManagerServiceName()
{
  v0 = getenv("_UAUSERACTIVITYADMIN");
  if (v0)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithCString:v0 encoding:4];
  }

  else
  {
    v1 = @"com.apple.coreservices.lsuseractivityadministration.xpc";
  }

  return v1;
}

id _LSGetResumableActivitiesAdministrativeProtocolInterface()
{
  if (_LSGetResumableActivitiesAdministrativeProtocolInterface_once != -1)
  {
    _LSGetResumableActivitiesAdministrativeProtocolInterface_cold_1();
  }

  v1 = _LSGetResumableActivitiesAdministrativeProtocolInterface_result;

  return v1;
}

id _LSGetResumableActivitiesSysdiagnoseSupportProtocolInterface()
{
  if (_LSGetResumableActivitiesSysdiagnoseSupportProtocolInterface_once != -1)
  {
    _LSGetResumableActivitiesSysdiagnoseSupportProtocolInterface_cold_1();
  }

  v1 = _LSGetResumableActivitiesSysdiagnoseSupportProtocolInterface_result;

  return v1;
}

CFTypeRef _UACopyUnpackedObjectFromDataWithSubstitution(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = UAMessageUnpack::CopyUnpacked(a1, a2, a3, v9, v10);
  if (v11)
  {
    v12 = CFRetain(v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void operator new()
{
    ;
  }
}