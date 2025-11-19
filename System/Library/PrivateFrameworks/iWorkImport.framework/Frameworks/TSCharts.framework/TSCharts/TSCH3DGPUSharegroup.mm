@interface TSCH3DGPUSharegroup
+ (id)sharegroupForToken:(id)a3;
- (BOOL)debug_isInteractive;
- (TSCH3DGPUSharegroup)initWithOwningThread:(id)a3 token:(id)a4 context:(id)a5;
- (id)description;
- (id)targetThreadForFlushing;
- (void)garbageCollectAllUnretainedResources;
- (void)garbageCollectResources:(id)a3;
- (void)lock;
- (void)p_clearContextInCurrentThread;
- (void)p_flushCache;
- (void)p_flushPurgeableResourceSet;
- (void)p_forceFlushResourceSet:(id)a3;
- (void)p_owningThreadWillChange;
- (void)unlock;
- (void)updateSharegroupMapToken:(id)a3;
@end

@implementation TSCH3DGPUSharegroup

+ (id)sharegroupForToken:(id)a3
{
  v6 = objc_msgSend_tokenSharegroup(a3, a2, v3, v4, v5);

  return v6;
}

- (TSCH3DGPUSharegroup)initWithOwningThread:(id)a3 token:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v36.receiver = self;
  v36.super_class = TSCH3DGPUSharegroup;
  v9 = [(TSCH3DSharegroup *)&v36 initWithOwningThread:v7 token:v8];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCAC60]);
    lock = v9->_lock;
    v9->_lock = v10;

    GPUContext = v9->_GPUContext;
    v9->_GPUContext = 0;

    v17 = v9->_GPUContext;
    if (!v17)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCH3DGPUSharegroup initWithOwningThread:token:context:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 818, 0, "_GPUContext can only be nil when the test is running.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
      v17 = v9->_GPUContext;
      if (!v17)
      {
        v33 = objc_alloc_init(TSCH3DNullContext);
        v34 = v9->_GPUContext;
        v9->_GPUContext = &v33->super;

        v17 = v9->_GPUContext;
      }
    }

    objc_msgSend_enableSharing(v17, v13, v14, v15, v16);
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSCH3DGPUSharegroup;
  v4 = [(TSCH3DSharegroup *)&v11 description];
  v9 = objc_msgSend_stringWithFormat_(v3, v5, v6, v7, v8, @"%@(context %@ lock %ld)", v4, self->_GPUContext, self->_lockLevel);

  return v9;
}

- (BOOL)debug_isInteractive
{
  WeakRetained = objc_loadWeakRetained(&self->super._token);
  v7 = objc_msgSend_interactiveCanvas(TSCH3DSharegroupToken, v3, v4, v5, v6);
  v8 = WeakRetained == v7;

  return v8;
}

- (id)targetThreadForFlushing
{
  v6 = objc_msgSend_token(self, a2, v2, v3, v4);
  v11 = objc_msgSend_targetThreadForFlushingWithOwningThread_(v6, v7, v8, v9, v10, self->super._owningThread);

  return v11;
}

- (void)p_flushCache
{
  if (self->super._owningThread)
  {
    v7 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, v2, v3, v4);
    owningThread = self->super._owningThread;

    if (v7 != owningThread)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DGPUSharegroup p_flushCache]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
      v20 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v16, v17, v18, v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v21, v22, v23, v24, v10, v15, 841, 0, "share group methods being called in the wrong thread %@, should be %@", v20, self->super._owningThread);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    }
  }

  if (byte_280A46430 == 1)
  {
    v29 = objc_opt_class();
    v30 = NSStringFromSelector(a2);
    NSLog(&cfstr_P_1.isa, v29, self, v30);
  }

  objc_msgSend_flush(self->super._shaderCache, a2, v2, v3, v4);
  GPUContext = self->_GPUContext;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_276302B9C;
  v35[3] = &unk_27A6B6888;
  v35[4] = self;
  objc_msgSend_performBlockWithContext_block_(TSCH3DContextSession, v32, COERCE_DOUBLE(3221225472), v33, v34, GPUContext, v35);
}

- (void)p_clearContextInCurrentThread
{
  v6 = objc_msgSend_sharedInstance(TSCH3DSharegroupPool, a2, v2, v3, v4);
  canFlushObjects = objc_msgSend_canFlushObjects(v6, v7, v8, v9, v10);

  if (canFlushObjects)
  {
    GPUContext = self->_GPUContext;
    if (!GPUContext)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCH3DGPUSharegroup p_clearContextInCurrentThread]");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 856, 0, "invalid nil value for '%{public}s'", "_GPUContext");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
      GPUContext = self->_GPUContext;
    }

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_276302DC8;
    v42[3] = &unk_27A6B6888;
    v42[4] = self;
    objc_msgSend_performBlockWithContext_block_(TSCH3DContextSession, v12, COERCE_DOUBLE(3221225472), v14, v15, GPUContext, v42);
  }

  v32 = objc_msgSend_token(self, v12, v13, v14, v15);
  v37 = objc_msgSend_shouldClearCurrentContextOnOwnerChange(v32, v33, v34, v35, v36);

  if (v37)
  {
    objc_msgSend_clearIfBoundAsCurrentContext(self->_GPUContext, v38, v39, v40, v41);
  }
}

- (void)p_owningThreadWillChange
{
  owningThread = self->super._owningThread;
  if (owningThread)
  {
    v7 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, v2, v3, v4);

    if (owningThread != v7)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DGPUSharegroup p_owningThreadWillChange]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
      v19 = self->super._owningThread;
      v24 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v20, v21, v22, v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v25, v26, v27, v28, v13, v18, 869, 0, "must change owner in original thread %@ current %@", v19, v24);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
    }

    MEMORY[0x2821F9670](self, sel_p_clearContextInCurrentThread, v9, v10, v11);
  }
}

- (void)garbageCollectResources:(id)a3
{
  v5 = a3;
  if (self->super._owningThread)
  {
    v9 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v4, v6, v7, v8);
    owningThread = self->super._owningThread;

    if (v9 != owningThread)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCH3DGPUSharegroup garbageCollectResources:]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
      v22 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v18, v19, v20, v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v23, v24, v25, v26, v12, v17, 875, 0, "share group methods being called in the wrong thread %@, should be %@", v22, self->super._owningThread);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    }
  }

  v31 = objc_msgSend_token(self, v4, v6, v7, v8);
  shouldGarbageCollect = objc_msgSend_shouldGarbageCollect(v31, v32, v33, v34, v35);

  if (shouldGarbageCollect)
  {
    GPUContext = self->_GPUContext;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_276303108;
    v42[3] = &unk_27A6B6338;
    v42[4] = self;
    v43 = v5;
    objc_msgSend_performBlockWithContext_block_(TSCH3DContextSession, v38, v39, v40, v41, GPUContext, v42);
  }
}

- (void)garbageCollectAllUnretainedResources
{
  if (self->super._owningThread)
  {
    v6 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, v2, v3, v4);
    owningThread = self->super._owningThread;

    if (v6 != owningThread)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v8, v3, v4, "[TSCH3DGPUSharegroup garbageCollectAllUnretainedResources]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
      v20 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v16, v17, v18, v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v21, v22, v23, v24, v10, v15, 885, 0, "share group methods being called in the wrong thread %@, should be %@", v20, self->super._owningThread);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    }
  }

  if (!self->super._performance)
  {
    GPUContext = self->_GPUContext;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_2763032A8;
    v30[3] = &unk_27A6B6888;
    v30[4] = self;
    objc_msgSend_performBlockWithContext_block_(TSCH3DContextSession, a2, COERCE_DOUBLE(3221225472), v3, v4, GPUContext, v30);
  }
}

- (void)p_flushPurgeableResourceSet
{
  if (self->super._owningThread)
  {
    v7 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, v2, v3, v4);
    owningThread = self->super._owningThread;

    if (v7 != owningThread)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DGPUSharegroup p_flushPurgeableResourceSet]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
      v20 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v16, v17, v18, v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v21, v22, v23, v24, v10, v15, 894, 0, "share group methods being called in the wrong thread %@, should be %@", v20, self->super._owningThread);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    }
  }

  if (objc_msgSend_count(self->super._purgeableResourceSet, a2, v2, v3, v4))
  {
    GPUContext = self->_GPUContext;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_276303458;
    v33[3] = &unk_27A6B7688;
    v33[4] = self;
    v33[5] = a2;
    objc_msgSend_performBlockWithContext_block_(TSCH3DContextSession, v29, COERCE_DOUBLE(3221225472), v30, v31, GPUContext, v33);
  }
}

- (void)p_forceFlushResourceSet:(id)a3
{
  v5 = a3;
  if (self->super._owningThread)
  {
    v9 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v4, v6, v7, v8);
    owningThread = self->super._owningThread;

    if (v9 != owningThread)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCH3DGPUSharegroup p_forceFlushResourceSet:]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
      v22 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v18, v19, v20, v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v23, v24, v25, v26, v12, v17, 907, 0, "share group methods being called in the wrong thread %@, should be %@", v22, self->super._owningThread);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    }
  }

  if (objc_msgSend_count(v5, v4, v6, v7, v8))
  {
    GPUContext = self->_GPUContext;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_276303730;
    v36[3] = &unk_27A6B6338;
    v36[4] = self;
    v37 = v5;
    objc_msgSend_performBlockWithContext_block_(TSCH3DContextSession, v32, v33, v34, v35, GPUContext, v36);
  }
}

- (void)lock
{
  objc_msgSend_lock(self->_lock, a2, v2, v3, v4);
  if (self->super._owningThread)
  {
    v11 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v7, v8, v9, v10);
    owningThread = self->super._owningThread;

    if (v11 != owningThread)
    {
      v13 = MEMORY[0x277D81150];
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DGPUSharegroup lock]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
      v23 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v19, v20, v21, v22);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v24, v25, v26, v27, v50, v18, 925, 0, "share group methods being called in the wrong thread %@, should be %@", v23, self->super._owningThread);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
    }
  }

  lockLevel = self->_lockLevel;
  if (!lockLevel)
  {
    v51 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v7, v8, v9, v10);
    objc_msgSend_setOwningThread_(self, v33, v34, v35, v36);

    lockLevel = self->_lockLevel;
  }

  self->_lockLevel = lockLevel + 1;
  if (byte_280A46430 == 1)
  {
    v37 = objc_opt_class();
    v52 = NSStringFromSelector(a2);
    v42 = objc_msgSend_token(self, v38, v39, v40, v41);
    v43 = self->_lockLevel;
    v44 = self->super._owningThread;
    isMainThread = objc_msgSend_isMainThread(v44, v45, v46, v47, v48);
    NSLog(&cfstr_PTokenLevelLuO.isa, v37, self, v52, v42, v43, v44, isMainThread);
  }
}

- (void)unlock
{
  if (self->super._owningThread)
  {
    v7 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, v2, v3, v4);
    owningThread = self->super._owningThread;

    if (v7 != owningThread)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DGPUSharegroup unlock]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
      v20 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v16, v17, v18, v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v21, v22, v23, v24, v10, v15, 936, 0, "share group methods being called in the wrong thread %@, should be %@", v20, self->super._owningThread);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    }
  }

  objc_msgSend_flushIfNecessary(self, a2, v2, v3, v4);
  v33 = self->_lockLevel - 1;
  self->_lockLevel = v33;
  if (!v33)
  {
    v34 = objc_msgSend_token(self, v29, v30, v31, v32);
    objc_msgSend_releaseSharegroup_(v34, v35, v36, v37, v38, self);
  }

  if (byte_280A46430 == 1)
  {
    v39 = objc_opt_class();
    v40 = NSStringFromSelector(a2);
    v45 = objc_msgSend_token(self, v41, v42, v43, v44);
    NSLog(&cfstr_PTokenLevelLuO_0.isa, v39, self, v40, v45, self->_lockLevel, self->super._owningThread);
  }

  lock = self->_lock;

  objc_msgSend_unlock(lock, v29, v30, v31, v32);
}

- (void)updateSharegroupMapToken:(id)a3
{
  objc_storeWeak(&self->super._token, a3);
  v20 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v4, v5, v6, v7);
  objc_msgSend_setOwningThread_(self, v8, v9, v10, v11);

  v21 = objc_msgSend_sharedManager(MEMORY[0x277D811D8], v12, v13, v14, v15);
  objc_msgSend_addObject_(v21, v16, v17, v18, v19, self);
}

@end