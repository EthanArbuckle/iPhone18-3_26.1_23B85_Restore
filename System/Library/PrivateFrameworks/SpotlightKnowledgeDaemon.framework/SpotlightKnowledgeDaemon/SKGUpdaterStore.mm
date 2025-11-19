@interface SKGUpdaterStore
+ (id)lock;
+ (id)stores;
+ (void)flushAndCommitAll;
- (BOOL)checkPriorityForBundleID:(const char *)a3 identifier:(const char *)a4 UUID:(const char *)a5 serialNumber:(unint64_t)a6 defaultIfNotExists:(BOOL)a7;
- (BOOL)enumerateItems:(id)a3;
- (BOOL)flushAndCommit;
- (BOOL)markForDeleteDBO:(db_obj *)a3 purgeContext:(id *)a4;
- (BOOL)markPriorityForBundleID:(const char *)a3 identifier:(const char *)a4 UUID:(const char *)a5 serialNumber:(unint64_t)a6 flag:(BOOL)a7;
- (BOOL)removePriorityForBundleID:(const char *)a3 identifier:(const char *)a4 UUID:(const char *)a5 serialNumber:(unint64_t)a6;
- (BOOL)writeLanguageForBundleID:(const char *)a3 identifier:(const char *)a4 UUID:(const char *)a5 serialNumber:(unint64_t)a6 language:(const char *)a7;
- (db_obj)getDBOWithOID:(int64_t)a3;
- (id)readLanguageFromBundleID:(const char *)a3 identifier:(const char *)a4 UUID:(const char *)a5 serialNumber:(unint64_t)a6;
- (void)closeAndDeleteStore;
- (void)dealloc;
- (void)flushAndCommit;
@end

@implementation SKGUpdaterStore

+ (id)stores
{
  if (stores_onceToken != -1)
  {
    +[SKGUpdaterStore stores];
  }

  v3 = stores_stores;

  return v3;
}

void __25__SKGUpdaterStore_stores__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = stores_stores;
  stores_stores = v0;
}

+ (id)lock
{
  if (lock_onceToken != -1)
  {
    +[SKGUpdaterStore lock];
  }

  v3 = lock_lock;

  return v3;
}

void __23__SKGUpdaterStore_lock__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v1 = lock_lock;
  lock_lock = v0;
}

uint64_t __53__SKGUpdaterStore_purgeAllWithUUIDImpl_listenerType___block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v6 = *(a1 + 64);
  v12 = v6;
  if (v5)
  {
    if ([v5 markForDeleteDBO:a2 purgeContext:&v10])
    {
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x277CCABB0] numberWithLongLong:*a2];
      [v7 addObject:v8];
    }
  }

  else
  {
  }

  objc_autoreleasePoolPop(v4);
  return 1;
}

+ (void)flushAndCommitAll
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [a1 lock];
  [v3 lock];

  v4 = [a1 stores];
  v5 = [a1 lock];
  [v5 unlock];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v4 allValues];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) flushAndCommit];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  if (self->_dsi)
  {
    [(SKGUpdaterStore *)self flushAndCommit];
    dsi = self->_dsi;
    db_release_datastore();
  }

  parentFd = self->_parentFd;
  if (parentFd)
  {
    close(parentFd);
  }

  v5.receiver = self;
  v5.super_class = SKGUpdaterStore;
  [(SKGUpdaterStore *)&v5 dealloc];
}

- (BOOL)markPriorityForBundleID:(const char *)a3 identifier:(const char *)a4 UUID:(const char *)a5 serialNumber:(unint64_t)a6 flag:(BOOL)a7
{
  v55 = *MEMORY[0x277D85DE8];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%s:", "Priority", a5];
  dsi = self->_dsi;
  [v11 length];
  obj = db_create_obj();
  v51 = obj;
  if (obj)
  {
    v14 = a3;
    v15 = obj;
    v48 = v14;
    v47 = a6;
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%llu:%s", "Priority", a6, v14];
    strlen(a4);
    [v16 UTF8String];
    strlen([v16 UTF8String]);
    *v15 = si_compute_oid_for_identifier_bundle_id();
    makeThreadId();
    v17 = MEMORY[0x277D294F0];
    atomic_fetch_add_explicit(MEMORY[0x277D294F0], 1u, memory_order_relaxed);
    parentFd = self->_parentFd;
    v45 = *(MEMORY[0x277D294F8] + 16);
    v46 = *MEMORY[0x277D294F8];
    *buf = *MEMORY[0x277D294F8];
    *&buf[16] = v45;
    v43 = *(MEMORY[0x277D294F8] + 48);
    v44 = *(MEMORY[0x277D294F8] + 32);
    v53 = v44;
    v54 = v43;
    v19 = setThreadIdAndInfo();
    v49 = HIDWORD(v19);
    v50 = v19;
    v20 = MEMORY[0x277D29508];
    v21 = *(MEMORY[0x277D29508] + 72 * v19 + 8) + 320 * HIDWORD(v19);
    *(v21 + 216) = 0;
    v22 = *(v21 + 312);
    v23 = *(v21 + 224);
    if (v23)
    {
      v23(*(v21 + 288));
    }

    v24 = v16;
    *buf = v50;
    if (_setjmp(v21))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SKGUpdaterStore writeSerialNumberToBundleID:identifier:UUID:serialNumber:listenerType:];
      }

      *(v21 + 312) = v22;
      CIOnThreadCleanUpReset();
      dropThreadId();
      CICleanUpReset();
    }

    else
    {
      v32 = self->_dsi;
      [v11 UTF8String];
      v33 = db_add_field();
      v34 = *(v20 + 72 * *buf + 8) + 320 * v49;
      *(v34 + 312) = v22;
      v35 = *(v34 + 232);
      if (v35)
      {
        v35(*(v34 + 288));
      }

      dropThreadId();
      if (v33)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v30 = SKGLogInit();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [SKGUpdaterStore markPriorityForBundleID:identifier:UUID:serialNumber:flag:];
          }

          goto LABEL_33;
        }

LABEL_35:
        v31 = 0;
        goto LABEL_36;
      }
    }

    atomic_fetch_add_explicit(v17, 1u, memory_order_relaxed);
    v25 = self->_parentFd;
    *buf = v46;
    *&buf[16] = v45;
    v53 = v44;
    v54 = v43;
    v26 = setThreadIdAndInfo();
    v27 = *(v20 + 72 * v26 + 8) + 320 * HIDWORD(v26);
    *(v27 + 216) = 0;
    v28 = *(v27 + 312);
    v29 = *(v27 + 224);
    if (v29)
    {
      v29(*(v27 + 288));
    }

    *buf = v26;
    if (_setjmp(v27))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SKGUpdaterStore writeSerialNumberToBundleID:identifier:UUID:serialNumber:listenerType:];
      }

      *(v27 + 312) = v28;
      CIOnThreadCleanUpReset();
      dropThreadId();
      CICleanUpReset();
LABEL_14:
      if (SKGLogGetCurrentLoggingLevel() < 7)
      {
        v31 = 1;
LABEL_36:
        MEMORY[0x2383779F0](v51);

        goto LABEL_37;
      }

      v30 = SKGLogInit();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        *&buf[4] = v47;
        *&buf[12] = 2080;
        *&buf[14] = v48;
        *&buf[22] = 2080;
        *&buf[24] = a4;
        _os_log_debug_impl(&dword_231B25000, v30, OS_LOG_TYPE_DEBUG, "SKGUpdaterStore#markPriorityForBundleID written serialNumber: %llu to bundleID: %s, identifier: %s", buf, 0x20u);
      }

      v31 = 1;
LABEL_34:

      goto LABEL_36;
    }

    v36 = self->_dsi;
    v37 = db_store_obj();
    v38 = *(v20 + 72 * *buf + 8) + 320 * HIDWORD(v26);
    *(v38 + 312) = v28;
    v39 = *(v38 + 232);
    if (v39)
    {
      v39(*(v38 + 288));
    }

    dropThreadId();
    if (!v37)
    {
      goto LABEL_14;
    }

    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v40 = SKGLogInit();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [SKGUpdaterStore markPriorityForBundleID:identifier:UUID:serialNumber:flag:];
      }

      v30 = v40;
LABEL_33:
      v31 = 0;
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v31 = 0;
LABEL_37:

  v41 = *MEMORY[0x277D85DE8];
  return v31;
}

- (BOOL)checkPriorityForBundleID:(const char *)a3 identifier:(const char *)a4 UUID:(const char *)a5 serialNumber:(unint64_t)a6 defaultIfNotExists:(BOOL)a7
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%s:", "Priority", a5];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%llu:%s", "Priority", a6, a3];
  strlen(a4);
  [v13 UTF8String];
  strlen([v13 UTF8String]);
  v14 = [(SKGUpdaterStore *)self getDBOWithOID:si_compute_oid_for_identifier_bundle_id()];
  if (v14)
  {
    v15 = v14;
    dsi = self->_dsi;
    [v12 UTF8String];
    field = db_get_field();
    if (field)
    {
      v18 = field;
      if (SKGLogGetCurrentLoggingLevel() >= 7)
      {
        v19 = SKGLogInit();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413314;
          v25 = v12;
          v26 = 1024;
          v27 = v18;
          v28 = 2048;
          v29 = a6;
          v30 = 2080;
          v31 = a3;
          v32 = 2080;
          v33 = a4;
          _os_log_debug_impl(&dword_231B25000, v19, OS_LOG_TYPE_DEBUG, "SKGUpdaterStore#checkPriorityForBundleID Could not find field %@ err: %d serialNumber: %llu to bundleID: %s, identifier: %s", buf, 0x30u);
        }
      }

      MEMORY[0x2383779F0](v15);
    }

    else
    {
      v21 = MEMORY[0];
      MEMORY[0x2383779F0](v15);
      a7 = v21 == 1;
    }
  }

  else if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v20 = SKGLogInit();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [SKGUpdaterStore checkPriorityForBundleID:identifier:UUID:serialNumber:defaultIfNotExists:];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return a7;
}

- (BOOL)removePriorityForBundleID:(const char *)a3 identifier:(const char *)a4 UUID:(const char *)a5 serialNumber:(unint64_t)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%llu:%s", a4, a5, "Priority", a6, a3];
  strlen(a4);
  [v8 UTF8String];
  v9 = v8;
  strlen([v8 UTF8String]);
  v10 = si_compute_oid_for_identifier_bundle_id();
  v11 = [(SKGUpdaterStore *)self getDBOWithOID:v10];
  if (v11)
  {
    v12 = v11;
    makeThreadId();
    atomic_fetch_add_explicit(MEMORY[0x277D294F0], 1u, memory_order_relaxed);
    parentFd = self->_parentFd;
    v14 = *(MEMORY[0x277D294F8] + 16);
    *buf = *MEMORY[0x277D294F8];
    *&buf[16] = v14;
    v15 = *(MEMORY[0x277D294F8] + 48);
    v32 = *(MEMORY[0x277D294F8] + 32);
    v33 = v15;
    v16 = setThreadIdAndInfo();
    v30 = v16;
    v17 = MEMORY[0x277D29508];
    v18 = *(MEMORY[0x277D29508] + 72 * v16 + 8) + 320 * HIDWORD(v16);
    v29 = HIDWORD(v16);
    *(v18 + 216) = 0;
    v19 = *(v18 + 312);
    v20 = *(v18 + 224);
    if (v20)
    {
      v20(*(v18 + 288));
    }

    *buf = v30;
    if (_setjmp(v18))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SKGUpdaterStore writeSerialNumberToBundleID:identifier:UUID:serialNumber:listenerType:];
      }

      *(v18 + 312) = v19;
      CIOnThreadCleanUpReset();
      v21 = 1;
      dropThreadId();
      CICleanUpReset();
      MEMORY[0x2383779F0](v12);
    }

    else
    {
      dsi = self->_dsi;
      v23 = db_delete_obj();
      v24 = *(v17 + 72 * *buf + 8) + 320 * v29;
      *(v24 + 312) = v19;
      v25 = *(v24 + 232);
      if (v25)
      {
        v25(*(v24 + 288));
      }

      dropThreadId();
      MEMORY[0x2383779F0](v12);
      if (v23)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v26 = SKGLogInit();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            *&buf[4] = self;
            *&buf[12] = 2048;
            *&buf[14] = v10;
            *&buf[22] = 1024;
            *&buf[24] = v23;
            _os_log_error_impl(&dword_231B25000, v26, OS_LOG_TYPE_ERROR, "SKGUpdaterStore[%@]#removePriorityForBundleID failed to delete dbo: %lld with rc: %d", buf, 0x1Cu);
          }
        }

        v21 = 0;
      }

      else
      {
        v21 = 1;
      }
    }
  }

  else
  {
    v21 = 1;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)writeLanguageForBundleID:(const char *)a3 identifier:(const char *)a4 UUID:(const char *)a5 serialNumber:(unint64_t)a6 language:(const char *)a7
{
  v49 = *MEMORY[0x277D85DE8];
  v47 = 0;
  v48 = 0;
  v46 = a6;
  if (__strlcpy_chk() < 0x10)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%s", "Language", a5];
    strlen(a4);
    strlen(a3);
    v15 = si_compute_oid_for_identifier_bundle_id();
    obj = [(SKGUpdaterStore *)self getDBOWithOID:v15];
    v42 = obj;
    if (!obj)
    {
      dsi = self->_dsi;
      obj = db_create_obj();
      v42 = obj;
      if (!obj)
      {
        LOBYTE(v13) = 0;
LABEL_34:
        v38 = v13;

        result = v38;
        goto LABEL_35;
      }
    }

    obj->var0 = v15;
    v18 = self->_dsi;
    [v14 UTF8String];
    if (db_add_field())
    {
      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v19 = SKGLogInit();
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
        if (v20)
        {
          [SKGUpdaterStore writeLanguageForBundleID:identifier:UUID:serialNumber:language:];
LABEL_12:
          LOBYTE(v20) = 0;
        }

LABEL_31:
        v36 = v20;

        v31 = v36;
        goto LABEL_33;
      }

LABEL_32:
      v31 = 0;
      goto LABEL_33;
    }

    makeThreadId();
    atomic_fetch_add_explicit(MEMORY[0x277D294F0], 1u, memory_order_relaxed);
    parentFd = self->_parentFd;
    v23 = *(MEMORY[0x277D294F8] + 16);
    *buf = *MEMORY[0x277D294F8];
    *&buf[16] = v23;
    v24 = *(MEMORY[0x277D294F8] + 48);
    v44 = *(MEMORY[0x277D294F8] + 32);
    v45 = v24;
    v25 = setThreadIdAndInfo();
    v41 = v25;
    v26 = MEMORY[0x277D29508];
    v27 = *(MEMORY[0x277D29508] + 72 * v25 + 8) + 320 * HIDWORD(v25);
    v40 = HIDWORD(v25);
    *(v27 + 216) = 0;
    v28 = *(v27 + 312);
    v29 = *(v27 + 224);
    if (v29)
    {
      v29(*(v27 + 288));
    }

    *buf = v41;
    if (_setjmp(v27))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SKGUpdaterStore writeSerialNumberToBundleID:identifier:UUID:serialNumber:listenerType:];
      }

      *(v27 + 312) = v28;
      CIOnThreadCleanUpReset();
      dropThreadId();
      CICleanUpReset();
    }

    else
    {
      v32 = self->_dsi;
      v33 = db_store_obj();
      v34 = *(v26 + 72 * *buf + 8) + 320 * v40;
      *(v34 + 312) = v28;
      v35 = *(v34 + 232);
      if (v35)
      {
        v35(*(v34 + 288));
      }

      dropThreadId();
      if (v33)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v19 = SKGLogInit();
          v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
          if (!v20)
          {
            goto LABEL_31;
          }

          [SKGUpdaterStore writeLanguageForBundleID:identifier:UUID:serialNumber:language:];
          goto LABEL_12;
        }

        goto LABEL_32;
      }
    }

    if (SKGLogGetCurrentLoggingLevel() < 7)
    {
      v31 = 1;
LABEL_33:
      v37 = v31;
      MEMORY[0x2383779F0](v42);
      LOBYTE(v13) = v37;
      goto LABEL_34;
    }

    v30 = SKGLogInit();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      *&buf[4] = a6;
      *&buf[12] = 2080;
      *&buf[14] = a3;
      *&buf[22] = 2080;
      *&buf[24] = a4;
      _os_log_debug_impl(&dword_231B25000, v30, OS_LOG_TYPE_DEBUG, "SKGUpdaterStore#writeLanguageForBundleID written serialNumber: %llu to bundleID: %s, identifier: %s", buf, 0x20u);
    }

    LOBYTE(v20) = 1;
    v19 = v30;
    goto LABEL_31;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v12 = SKGLogInit();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      [SKGUpdaterStore writeLanguageForBundleID:identifier:UUID:serialNumber:language:];
      LOBYTE(v13) = 0;
    }

    v14 = v12;
    goto LABEL_34;
  }

  result = 0;
LABEL_35:
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)readLanguageFromBundleID:(const char *)a3 identifier:(const char *)a4 UUID:(const char *)a5 serialNumber:(unint64_t)a6
{
  v44 = *MEMORY[0x277D85DE8];
  strlen(a4);
  strlen(a3);
  si_compute_oid_for_identifier_bundle_id();
  makeThreadId();
  atomic_fetch_add_explicit(MEMORY[0x277D294F0], 1u, memory_order_relaxed);
  parentFd = self->_parentFd;
  v12 = *(MEMORY[0x277D294F8] + 16);
  *buf = *MEMORY[0x277D294F8];
  *&buf[16] = v12;
  v13 = *(MEMORY[0x277D294F8] + 48);
  *&buf[32] = *(MEMORY[0x277D294F8] + 32);
  v43 = v13;
  v14 = setThreadIdAndInfo();
  LODWORD(v40) = v14;
  v15 = MEMORY[0x277D29508];
  v16 = *(MEMORY[0x277D29508] + 72 * v14 + 8) + 320 * HIDWORD(v14);
  v39 = HIDWORD(v14);
  *(v16 + 216) = 0;
  v17 = *(v16 + 312);
  v18 = *(v16 + 224);
  if (v18)
  {
    v18(*(v16 + 288));
  }

  *buf = v40;
  if (_setjmp(v16))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SKGUpdaterStore writeSerialNumberToBundleID:identifier:UUID:serialNumber:listenerType:];
    }

    *(v16 + 312) = v17;
    CIOnThreadCleanUpReset();
    dropThreadId();
    CICleanUpReset();
    goto LABEL_7;
  }

  dsi = self->_dsi;
  obj = db_get_obj();
  v27 = *(v15 + 72 * *buf + 8) + 320 * v39;
  *(v27 + 312) = v17;
  v28 = *(v27 + 232);
  if (v28)
  {
    v28(*(v27 + 288));
  }

  dropThreadId();
  if (!obj)
  {
LABEL_7:
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%s", "Language", a5];
    v20 = self->_dsi;
    v21 = v19;
    [v21 UTF8String];
    field = db_get_field();
    if (field)
    {
      v23 = field;
      if (SKGLogGetCurrentLoggingLevel() >= 7)
      {
        v24 = SKGLogInit();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413314;
          *&buf[4] = v21;
          *&buf[12] = 1024;
          *&buf[14] = v23;
          *&buf[18] = 2048;
          *&buf[20] = a6;
          *&buf[28] = 2080;
          *&buf[30] = a3;
          *&buf[38] = 2080;
          *&buf[40] = a4;
          _os_log_debug_impl(&dword_231B25000, v24, OS_LOG_TYPE_DEBUG, "SKGUpdaterStore#readLanguageFromBundleID Could not find field %@ err: %d serialNumber: %llu to bundleID: %s, identifier: %s", buf, 0x30u);
        }
      }

      MEMORY[0x2383779F0](0);
      goto LABEL_33;
    }

    v31 = MEMORY[8];
    CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
    if (v31 == 24)
    {
      if (CurrentLoggingLevel >= 7)
      {
        v33 = SKGLogInit();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          [SKGUpdaterStore readLanguageFromBundleID:identifier:UUID:serialNumber:];
        }
      }

      v40 = MEMORY[0];
      v41 = MEMORY[0x10];
      MEMORY[0x2383779F0](0);
      if (HIBYTE(v41))
      {
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v34 = SKGLogInit();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [SKGUpdaterStore readLanguageFromBundleID:identifier:UUID:serialNumber:];
          }

LABEL_32:
        }
      }

      else
      {
        if (v40 == a6)
        {
          v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v40 + 8];
          goto LABEL_34;
        }

        if (SKGLogGetCurrentLoggingLevel() >= 7)
        {
          v34 = SKGLogInit();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            *&buf[4] = &v40 + 8;
            *&buf[12] = 2080;
            *&buf[14] = a3;
            *&buf[22] = 2080;
            *&buf[24] = a4;
            _os_log_debug_impl(&dword_231B25000, v34, OS_LOG_TYPE_DEBUG, "SKGUpdaterStore#readLanguageFromBundleID illegal language: %s to bundleID: %s, identifier: %s", buf, 0x20u);
          }

          goto LABEL_32;
        }
      }
    }

    else if (CurrentLoggingLevel >= 7)
    {
      v34 = SKGLogInit();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        [SKGUpdaterStore readLanguageFromBundleID:identifier:UUID:serialNumber:];
      }

      goto LABEL_32;
    }

LABEL_33:
    v30 = 0;
LABEL_34:
    v35 = v30;

    v36 = v35;
    goto LABEL_35;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v29 = SKGLogInit();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = a3;
      *&buf[12] = 2080;
      *&buf[14] = a4;
      *&buf[22] = 1024;
      *&buf[24] = obj;
      _os_log_debug_impl(&dword_231B25000, v29, OS_LOG_TYPE_DEBUG, "SKGUpdaterStore#readLanguageFromBundleID Could not find object-id for bundleID:%s identifier: %s err: %d", buf, 0x1Cu);
    }

    v30 = 0;
    v21 = v29;
    goto LABEL_34;
  }

  v36 = 0;
LABEL_35:
  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (BOOL)flushAndCommit
{
  dsi = self->_dsi;
  db_lock_datastore();
  v4 = self->_dsi;
  if (db_flush_datastore())
  {
    if (SKGLogGetCurrentLoggingLevel() < 2)
    {
      v6 = 0;
      goto LABEL_9;
    }

    v5 = SKGLogInit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [EmbeddingCache flush];
    }

    v6 = 0;
  }

  else
  {
    v7 = self->_dsi;
    db_downgrade_datastore();
    if (SKGLogGetCurrentLoggingLevel() < 7)
    {
      v6 = 1;
      goto LABEL_9;
    }

    v5 = SKGLogInit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SKGUpdaterStore flushAndCommit];
    }

    v6 = 1;
  }

LABEL_9:
  v8 = self->_dsi;
  db_unlock_datastore();
  return v6;
}

- (db_obj)getDBOWithOID:(int64_t)a3
{
  makeThreadId();
  atomic_fetch_add_explicit(MEMORY[0x277D294F0], 1u, memory_order_relaxed);
  parentFd = self->_parentFd;
  v16 = *MEMORY[0x277D294F8];
  v17 = *(MEMORY[0x277D294F8] + 16);
  v18 = *(MEMORY[0x277D294F8] + 32);
  v19 = *(MEMORY[0x277D294F8] + 48);
  v5 = setThreadIdAndInfo();
  v21 = v5;
  v6 = MEMORY[0x277D29508];
  v7 = *(MEMORY[0x277D29508] + 72 * v5 + 8) + 320 * HIDWORD(v5);
  v20 = HIDWORD(v5);
  *(v7 + 216) = 0;
  v8 = *(v7 + 312);
  v9 = *(v7 + 224);
  if (v9)
  {
    v9(*(v7 + 288));
  }

  if (_setjmp(v7))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SKGUpdaterStore writeSerialNumberToBundleID:identifier:UUID:serialNumber:listenerType:];
    }

    *(v7 + 312) = v8;
    CIOnThreadCleanUpReset();
    dropThreadId();
    CICleanUpReset();
    return 0;
  }

  dsi = self->_dsi;
  obj = db_get_obj();
  v13 = *(v6 + 72 * v21 + 8) + 320 * v20;
  *(v13 + 312) = v8;
  v14 = *(v13 + 232);
  if (v14)
  {
    v14(*(v13 + 288));
  }

  dropThreadId();
  if (obj)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v15 = SKGLogInit();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SKGUpdaterStore getDBOWithOID:];
      }
    }

    return 0;
  }

  return 0;
}

- (BOOL)markForDeleteDBO:(db_obj *)a3 purgeContext:(id *)a4
{
  if (!a3->var0)
  {
    v16 = 0;
    goto LABEL_22;
  }

  v19 = 1;
  v20 = a4;
  while (1)
  {
    dsi = self->_dsi;
    if (db_next_field() != 35)
    {
      break;
    }

    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:0];
    if ([v6 rangeOfString:@":"] != 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend(v6, "isEqual:", @"kMDItemAttributeChangeDate") & 1) == 0)
    {
      v7 = [v6 componentsSeparatedByString:@":"];
      if ([v7 count] == 2)
      {
        v8 = [v7 objectAtIndexedSubscript:0];
        if ([v8 isEqual:@"Priority"])
        {
          v9 = [v7 objectAtIndexedSubscript:1];
          var2 = v20->var2;

          if (v9 == var2)
          {
            v19 = 0;
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      if ([v7 count] == 3)
      {
        v11 = [v7 objectAtIndexedSubscript:0];
        if ([v11 isEqual:@"SerialNumber"])
        {
          v12 = [v7 objectAtIndexedSubscript:1];
          v13 = v12;
          if (v12 == v20->var2)
          {
            v14 = [v7 objectAtIndexedSubscript:2];
            v15 = [v14 intValue];
            var1 = v20->var1;

            if (v15 == var1)
            {
              v19 &= v20->var0 >= MEMORY[0xD];
            }

            goto LABEL_16;
          }
        }
      }

LABEL_16:
    }
  }

  v16 = v19;
  a4 = v20;
LABEL_22:

  return v16 & 1;
}

- (BOOL)enumerateItems:(id)a3
{
  v4 = a3;
  makeThreadId();
  atomic_fetch_add_explicit(MEMORY[0x277D294F0], 1u, memory_order_relaxed);
  parentFd = self->_parentFd;
  v15 = *MEMORY[0x277D294F8];
  v16 = *(MEMORY[0x277D294F8] + 16);
  v17 = *(MEMORY[0x277D294F8] + 32);
  v18 = *(MEMORY[0x277D294F8] + 48);
  v6 = setThreadIdAndInfo();
  v20 = v6;
  v7 = MEMORY[0x277D29508];
  v8 = *(MEMORY[0x277D29508] + 72 * v6 + 8) + 320 * HIDWORD(v6);
  v19 = HIDWORD(v6);
  *(v8 + 216) = 0;
  v9 = *(v8 + 312);
  v10 = *(v8 + 224);
  if (v10)
  {
    v10(*(v8 + 288));
  }

  if (_setjmp(v8))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SKGUpdaterStore writeSerialNumberToBundleID:identifier:UUID:serialNumber:listenerType:];
    }

    *(v8 + 312) = v9;
    CIOnThreadCleanUpReset();
    dropThreadId();
    CICleanUpReset();
  }

  else
  {
    dsi = self->_dsi;
    db_iterate_objects_in_range();
    v12 = *(v7 + 72 * v20 + 8) + 320 * v19;
    *(v12 + 312) = v9;
    v13 = *(v12 + 232);
    if (v13)
    {
      v13(*(v12 + 288));
    }

    dropThreadId();
  }

  return 1;
}

- (void)closeAndDeleteStore
{
  dsi = self->_dsi;
  db_release_datastore();
  parentFd = self->_parentFd;

  MEMORY[0x282187490](parentFd, "skg_store.db", 270336);
}

+ (void)instanceForIndexType:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)instanceForIndexType:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)instanceForIndexType:(void *)a1 .cold.3(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *__error();
  [a1 fileSystemRepresentation];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)purgeAllWithUUIDImpl:(uint8_t *)buf listenerType:(_BYTE *)a2 .cold.1(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
}

+ (void)purgeAllWithUUID:listenerType:indexType:.cold.1()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithParentFd:indexType:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithParentFd:indexType:.cold.3()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_2();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x18u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)initWithParentFd:indexType:.cold.4()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_2();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x18u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)initWithParentFd:indexType:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeSerialNumberToBundleID:identifier:UUID:serialNumber:listenerType:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeSerialNumberToBundleID:identifier:UUID:serialNumber:listenerType:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)markPriorityForBundleID:identifier:UUID:serialNumber:flag:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)markPriorityForBundleID:identifier:UUID:serialNumber:flag:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)checkPriorityForBundleID:identifier:UUID:serialNumber:defaultIfNotExists:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeLanguageForBundleID:identifier:UUID:serialNumber:language:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeLanguageForBundleID:identifier:UUID:serialNumber:language:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeLanguageForBundleID:identifier:UUID:serialNumber:language:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)readLanguageFromBundleID:identifier:UUID:serialNumber:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_5_2();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)readLanguageFromBundleID:identifier:UUID:serialNumber:.cold.3()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_5_2();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)readLanguageFromBundleID:identifier:UUID:serialNumber:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeUpdaterStatus:(void *)a1 UUID:serialNumber:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)writeUpdaterStatus:UUID:serialNumber:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeUpdaterStatus:UUID:serialNumber:.cold.4()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)readUpdaterStatus:UUID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)readUpdaterStatus:UUID:.cold.2()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)flushAndCommit
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getDBOWithOID:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setProtectionClassForFolder:protectionClass:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *__error();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setProtectionClassForFolder:protectionClass:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

@end