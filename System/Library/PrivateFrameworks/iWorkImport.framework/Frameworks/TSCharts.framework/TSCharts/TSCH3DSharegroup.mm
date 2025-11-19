@interface TSCH3DSharegroup
+ (id)uniqueSharegroupWithOwningThread:(id)a3 token:(id)a4;
- (BOOL)isCurrentThreadOwner;
- (BOOL)isOneShot;
- (BOOL)mustRunOnMainThread;
- (BOOL)owningThreadIsNil;
- (FlushResult)p_flushCacheIfNecessary;
- (NSString)description;
- (TSCH3DSharegroup)initWithOwningThread:(id)a3 token:(id)a4;
- (TSCH3DSharegroupToken)token;
- (void)dealloc;
- (void)flush;
- (void)flushIfNecessary;
- (void)flushInTargetThread;
- (void)flushResourceSet:(id)a3;
- (void)nonThreadOwnedFlushCache;
- (void)p_flushInTargetThread;
- (void)setIfIsMoreDemandingPerformance:(int)a3;
- (void)setOwningThread:(id)a3;
@end

@implementation TSCH3DSharegroup

+ (id)uniqueSharegroupWithOwningThread:(id)a3 token:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 alloc];
  v13 = objc_msgSend_initWithOwningThread_token_(v8, v9, v10, v11, v12, v6, v7);

  return v13;
}

- (TSCH3DSharegroup)initWithOwningThread:(id)a3 token:(id)a4
{
  v7 = a3;
  v8 = a4;
  v83.receiver = self;
  v83.super_class = TSCH3DSharegroup;
  v9 = [(TSCH3DSharegroup *)&v83 init];
  v10 = v9;
  v11 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_token, v8);
    if (!v7)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCH3DSharegroup initWithOwningThread:token:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 498, 0, "invalid nil value for '%{public}s'", "owner");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    }

    objc_storeStrong(&v10->_owningThread, a3);
    v11->_performance = 0;
    v31 = objc_alloc_init(TSCH3DResourceCache);
    resourceCache = v11->_resourceCache;
    v11->_resourceCache = v31;

    v33 = objc_alloc_init(TSCH3DShaderCache);
    shaderCache = v11->_shaderCache;
    v11->_shaderCache = v33;

    objc_msgSend_setProtectResourceDelegate_(v11->_shaderCache, v35, v36, v37, v38, v11->_resourceCache);
    v39 = objc_alloc_init(MEMORY[0x277CBEB58]);
    purgeableResourceSet = v11->_purgeableResourceSet;
    v11->_purgeableResourceSet = v39;

    v45 = objc_msgSend_token(v11, v41, v42, v43, v44);
    canBeCreatedFromOtherThread = objc_msgSend_canBeCreatedFromOtherThread(v45, v46, v47, v48, v49);

    if ((canBeCreatedFromOtherThread & 1) == 0)
    {
      if (v10->_owningThread)
      {
        v55 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v51, v52, v53, v54);
        owningThread = v10->_owningThread;

        if (v55 != owningThread)
        {
          v57 = MEMORY[0x277D81150];
          v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, "[TSCH3DSharegroup initWithOwningThread:token:]");
          v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
          v68 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v64, v65, v66, v67);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v69, v70, v71, v72, v58, v63, 506, 0, "share group methods being called in the wrong thread %@, should be %@", v68, v10->_owningThread);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75, v76);
        }
      }
    }

    if (byte_280A46430 == 1)
    {
      NSLog(&cfstr_Init.isa, v11);
    }

    v77 = objc_msgSend_sharedManager(MEMORY[0x277D811D8], v51, v52, v53, v54);
    objc_msgSend_addObject_(v77, v78, v79, v80, v81, v11);
  }

  return v11;
}

- (void)dealloc
{
  if (self->_owningThread)
  {
    v6 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, v2, v3, v4);
    owningThread = self->_owningThread;

    if (v6 != owningThread)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DSharegroup dealloc]");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
      v19 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v15, v16, v17, v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v20, v21, v22, v23, v9, v14, 516, 0, "share group methods being called in the wrong thread %@, should be %@", v19, self->_owningThread);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    }
  }

  if (byte_280A46430 == 1)
  {
    NSLog(&cfstr_PDealloc_0.isa, a2, self);
  }

  objc_msgSend_setProtectResourceDelegate_(self->_shaderCache, a2, v2, v3, v4, 0);
  if (objc_msgSend_count(self->_purgeableResourceSet, v28, v29, v30, v31))
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "[TSCH3DSharegroup dealloc]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 521, 0, "pending purgeable resource set %@", self->_purgeableResourceSet);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
  }

  v51.receiver = self;
  v51.super_class = TSCH3DSharegroup;
  [(TSCH3DSharegroup *)&v51 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v17.receiver = self;
  v17.super_class = TSCH3DSharegroup;
  v4 = [(TSCH3DSharegroup *)&v17 description];
  owningThread = self->_owningThread;
  isMainThread = objc_msgSend_isMainThread(owningThread, v6, v7, v8, v9);
  v15 = objc_msgSend_stringWithFormat_(v3, v11, v12, v13, v14, @"%@(thread %p main %ld)", v4, owningThread, isMainThread);

  return v15;
}

- (void)setOwningThread:(id)a3
{
  v29 = a3;
  v6 = self;
  objc_sync_enter(v6);
  if (byte_280A46430 == 1)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromSelector(a2);
    NSLog(&cfstr_PCurrentOwning.isa, v11, v6, v12, v6->_owningThread, v29);
  }

  owningThread = v6->_owningThread;
  if (owningThread != v29)
  {
    if (v29 && owningThread)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DSharegroup setOwningThread:]");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 535, 0, "at least one must be nil, owning thread %@ new %@", v6->_owningThread, v29);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    }

    objc_msgSend_p_owningThreadWillChange(v6, v7, v8, v9, v10);
    objc_storeStrong(&v6->_owningThread, a3);
  }

  objc_sync_exit(v6);
}

- (BOOL)owningThreadIsNil
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_owningThread == 0;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isCurrentThreadOwner
{
  v2 = self;
  objc_sync_enter(v2);
  owningThread = v2->_owningThread;
  v8 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v4, v5, v6, v7);
  LOBYTE(owningThread) = owningThread == v8;

  objc_sync_exit(v2);
  return owningThread;
}

- (BOOL)isOneShot
{
  v5 = objc_msgSend_token(self, a2, v2, v3, v4);
  isOneShot = objc_msgSend_isOneShot(v5, v6, v7, v8, v9);

  return isOneShot;
}

- (BOOL)mustRunOnMainThread
{
  v5 = objc_msgSend_token(self, a2, v2, v3, v4);
  mustRunOnMainThread = objc_msgSend_mustRunOnMainThread(v5, v6, v7, v8, v9);

  return mustRunOnMainThread;
}

- (void)nonThreadOwnedFlushCache
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_owningThread)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, v3, v4, v5, "[TSCH3DSharegroup nonThreadOwnedFlushCache]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 564, 0, "expected nil value for '%{public}s'", "_owningThread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  objc_msgSend_p_flushCache(obj, v2, v3, v4, v5);
  objc_sync_exit(obj);
}

- (FlushResult)p_flushCacheIfNecessary
{
  v3 = self;
  objc_sync_enter(v3);
  if (byte_280A46430 == 1)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(a2);
    v14 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v10, v11, v12, v13);
    NSLog(&cfstr_PReceivedLd.isa, v8, v3, v9, v14, v3->_didReceiveFlush);
  }

  didReceiveFlush = v3->_didReceiveFlush;
  if (didReceiveFlush)
  {
    v3->_didReceiveFlush = 0;
    objc_msgSend_p_flushCache(v3, v4, v5, v6, v7);
    v20 = objc_msgSend_sharedManager(MEMORY[0x277D811D8], v16, v17, v18, v19);
    objc_msgSend_addObject_(v20, v21, v22, v23, v24, v3);

    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  objc_sync_exit(v3);

  return (v25 | (didReceiveFlush << 8));
}

- (void)flushIfNecessary
{
  if (self->_owningThread)
  {
    v7 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, v2, v3, v4);
    owningThread = self->_owningThread;

    if (v7 != owningThread)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DSharegroup flushIfNecessary]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
      v20 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v16, v17, v18, v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v21, v22, v23, v24, v10, v15, 603, 0, "share group methods being called in the wrong thread %@, should be %@", v20, self->_owningThread);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    }
  }

  v29 = objc_msgSend_p_flushCacheIfNecessary(self, a2, v2, v3, v4);
  v34 = v29;
  if ((v29 & 1) == 0 && (v29 & 0x100) == 0)
  {
    goto LABEL_10;
  }

  if (byte_280A46430 == 1)
  {
    v35 = objc_opt_class();
    v36 = NSStringFromSelector(a2);
    NSLog(&cfstr_PFlushedLdRece.isa, v35, self, v36, v34 & 1, (v34 >> 8) & 1);
  }

  if ((v34 & 1) == 0)
  {
LABEL_10:
    if (!self->_performance || (v34 & 0x100) != 0)
    {

      objc_msgSend_p_flushPurgeableResourceSet(self, v30, v31, v32, v33);
    }
  }
}

- (void)flushResourceSet:(id)a3
{
  v42 = a3;
  if (self->_owningThread)
  {
    v9 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v5, v6, v7, v8);
    owningThread = self->_owningThread;

    if (v9 != owningThread)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCH3DSharegroup flushResourceSet:]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
      v22 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v18, v19, v20, v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v23, v24, v25, v26, v12, v17, 622, 0, "share group methods being called in the wrong thread %@, should be %@", v22, self->_owningThread);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    }
  }

  objc_msgSend_unionSet_(self->_purgeableResourceSet, v5, v6, v7, v8, v42);
  if (byte_280A46430 == 1)
  {
    v35 = objc_opt_class();
    v36 = NSStringFromSelector(a2);
    v41 = objc_msgSend_count(v42, v37, v38, v39, v40);
    NSLog(&cfstr_PFlushLuPurgea.isa, v35, self, v36, v41, self->_purgeableResourceSet);
  }

  if (self->_performance != 2)
  {
    objc_msgSend_p_flushPurgeableResourceSet(self, v31, v32, v33, v34);
  }
}

- (void)setIfIsMoreDemandingPerformance:(int)a3
{
  if (self->_performance < a3)
  {
    objc_msgSend_setPerformance_(self, a2, v3, v4, v5);
  }
}

- (void)p_flushInTargetThread
{
  v99 = objc_msgSend_targetThreadForFlushing(self, a2, v2, v3, v4);
  if (v99 && !objc_msgSend_isFinished(v99, v7, v8, v9, v10))
  {
    if (byte_280A46430 == 1)
    {
      v87 = objc_opt_class();
      v88 = NSStringFromSelector(a2);
      owningThread = self->_owningThread;
      isInteractive = objc_msgSend_debug_isInteractive(self, v90, v91, v92, v93);
      NSLog(&cfstr_PFlushingOwnin.isa, v87, self, v88, owningThread, v99, isInteractive);
    }

    if ((objc_msgSend_isFinished(v99, v7, v8, v9, v10) & 1) == 0)
    {
      objc_msgSend_performSelector_onThread_withObject_waitUntilDone_(self, v95, v96, v97, v98, sel_flushIfNecessary, v99, 0, 0);
    }
  }

  else
  {
    if (byte_280A46430 == 1)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromSelector(a2);
      v17 = objc_msgSend_debug_isInteractive(self, v13, v14, v15, v16);
      NSLog(&cfstr_PFlushingNoOwn.isa, v11, self, v12, v17);
    }

    v18 = objc_msgSend_GPUContext(self, v7, v8, v9, v10);
    v19 = objc_opt_class();
    v24 = objc_msgSend_currentSystemContext(v19, v20, v21, v22, v23);

    objc_msgSend_flushIfNecessary(self, v25, v26, v27, v28);
    v33 = objc_msgSend_GPUContext(self, v29, v30, v31, v32);
    v34 = objc_opt_class();
    v39 = objc_msgSend_currentSystemContext(v34, v35, v36, v37, v38);

    v40 = v39;
    v42 = v24;
    if (v42 | v40)
    {
      isEqual = objc_msgSend_isEqual_(v40, v41, v43, v44, v45, v42);

      if ((isEqual & 1) == 0)
      {
        v47 = MEMORY[0x277D81150];
        v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v43, v44, v45, "[TSCH3DSharegroup p_flushInTargetThread]");
        v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v54, v55, v56, v57, v48, v53, 686, 0, "Context was not restored after flushing");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61);
      }
    }

    v62 = objc_msgSend_GPUContext(self, v41, v43, v44, v45);
    isCurrentSystemContext = objc_msgSend_isCurrentSystemContext(v62, v63, v64, v65, v66);

    if (isCurrentSystemContext)
    {
      v72 = MEMORY[0x277D81150];
      v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, v69, v70, v71, "[TSCH3DSharegroup p_flushInTargetThread]");
      v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, v75, v76, v77, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v72, v79, v80, v81, v82, v73, v78, 687, 0, "GPUContext should not be bound after flushing in target thread");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v83, v84, v85, v86);
    }
  }
}

- (void)flushInTargetThread
{
  obj = self;
  objc_sync_enter(obj);
  objc_msgSend_p_flushInTargetThread(obj, v2, v3, v4, v5);
  objc_sync_exit(obj);
}

- (void)flush
{
  obja = objc_msgSend_sharedInstance(TSCH3DSharegroupPool, a2, v2, v3, v4);
  canFlushObjects = objc_msgSend_canFlushObjects(obja, v7, v8, v9, v10);

  if ((canFlushObjects & 1) == 0)
  {
    if (byte_280A46430)
    {
      v24 = objc_opt_class();
      objc = NSStringFromSelector(a2);
      NSLog(&cfstr_PFlushWhileInT.isa, v24, self, objc);
    }

    objd = objc_msgSend_sharedManager(MEMORY[0x277D811D8], v12, v13, v14, v15);
    objc_msgSend_addObject_(objd, v25, v26, v27, v28, self);
    v23 = objd;
    goto LABEL_9;
  }

  if (byte_280A46430)
  {
    v16 = objc_opt_class();
    objb = NSStringFromSelector(a2);
    NSLog(&cfstr_PBegin.isa, v16, self, objb);
  }

  obj = self;
  objc_sync_enter(obj);
  obj->_didReceiveFlush = 1;
  objc_msgSend_p_flushInTargetThread(obj, v17, v18, v19, v20);
  objc_sync_exit(obj);

  if (byte_280A46430 == 1)
  {
    v21 = objc_opt_class();
    v22 = NSStringFromSelector(a2);
    NSLog(&cfstr_PEnd.isa, v21, obj, v22);
    v23 = v22;
LABEL_9:
  }
}

- (TSCH3DSharegroupToken)token
{
  WeakRetained = objc_loadWeakRetained(&self->_token);

  return WeakRetained;
}

@end