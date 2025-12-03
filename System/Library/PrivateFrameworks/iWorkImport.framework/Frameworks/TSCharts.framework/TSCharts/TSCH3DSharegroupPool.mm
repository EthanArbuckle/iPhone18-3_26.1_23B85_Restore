@interface TSCH3DSharegroupPool
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)sharedInstance;
- (BOOL)canCreateOpenGLObjects;
- (BOOL)canFlushObjects;
- (BOOL)canRenderForAnimations;
- (BOOL)canRenderUsingOpenGL;
- (BOOL)p_canUseOpenGLWithCheck:(id)check;
- (TSCH3DSharegroupPool)init;
- (id)obtainSharegroup;
- (id)p_obtainSharegroupFromSharegroups;
- (void)applicationDidBecomeActive;
- (void)applicationWillEnterForeground;
- (void)applicationWillResignActive;
- (void)disable;
- (void)enable;
- (void)flush;
- (void)p_conditionLockedWaitForBackgroundThreadsWithTimeout:(double)timeout;
- (void)p_flushSharegroupsIfPossible;
- (void)p_lockAndPerformBlock:(id)block;
- (void)p_removeSharegroupsFromFlushingManager;
- (void)releaseSharegroup:(id)sharegroup;
- (void)waitForBackgroundThreadsWithTimeout:(double)timeout;
- (void)willCheckCondition;
@end

@implementation TSCH3DSharegroupPool

+ (id)_singletonAlloc
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___TSCH3DSharegroupPool;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2762FF304;
  block[3] = &unk_27A6B6250;
  block[4] = self;
  if (qword_280A47A60 != -1)
  {
    dispatch_once(&qword_280A47A60, block);
  }

  v2 = qword_280A47A58;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCH3DSharegroupPool allocWithZone:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 190, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

- (TSCH3DSharegroupPool)init
{
  v25.receiver = self;
  v25.super_class = TSCH3DSharegroupPool;
  v2 = [(TSCH3DSharegroupPool *)&v25 init];
  v3 = v2;
  if (v2)
  {
    v2->_size = 2;
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sharegroups = v3->_sharegroups;
    v3->_sharegroups = v4;

    v6 = objc_alloc_init(MEMORY[0x277CCA928]);
    condition = v3->_condition;
    v3->_condition = v6;

    v3->_applicationState = 2;
    v8 = [TSCH3DSharegroupDelayChecker alloc];
    v13 = objc_msgSend_initWithParent_(v8, v9, v10, v11, v12, v3);
    checker = v3->_checker;
    v3->_checker = v13;

    v19 = objc_msgSend_sharedManager(MEMORY[0x277D811D8], v15, v16, v17, v18);
    objc_msgSend_addObject_(v19, v20, v21, v22, v23, v3);
  }

  return v3;
}

- (void)p_lockAndPerformBlock:(id)block
{
  blockCopy = block;
  objc_msgSend_lock(self->_condition, v4, v5, v6, v7);
  blockCopy[2]();
  objc_msgSend_unlock(self->_condition, v8, v9, v10, v11);
}

- (void)applicationWillResignActive
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2762FF6BC;
  v4[3] = &unk_27A6B6888;
  v4[4] = self;
  objc_msgSend_p_lockAndPerformBlock_(self, a2, COERCE_DOUBLE(3221225472), v2, v3, v4);
}

- (void)applicationWillEnterForeground
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2762FF848;
  v4[3] = &unk_27A6B6888;
  v4[4] = self;
  objc_msgSend_p_lockAndPerformBlock_(self, a2, COERCE_DOUBLE(3221225472), v2, v3, v4);
}

- (void)applicationDidBecomeActive
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2762FF8C8;
  v4[3] = &unk_27A6B6888;
  v4[4] = self;
  objc_msgSend_p_lockAndPerformBlock_(self, a2, COERCE_DOUBLE(3221225472), v2, v3, v4);
}

- (void)p_removeSharegroupsFromFlushingManager
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = self->_sharegroups;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, v4, v5, v6, &v20, v24, 16);
  if (v8)
  {
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v2);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        v15 = objc_msgSend_sharedManager(MEMORY[0x277D811D8], v7, v9, v10, v11, v20);
        objc_msgSend_removeObject_(v15, v16, v17, v18, v19, v14);

        ++v13;
      }

      while (v8 != v13);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v7, v9, v10, v11, &v20, v24, 16);
    }

    while (v8);
  }
}

- (void)p_flushSharegroupsIfPossible
{
  if ((objc_msgSend_p_applicationStateAllowsObjectFlushing(self, a2, v2, v3, v4) & 1) == 0)
  {
    if (!byte_280A46430)
    {
      return;
    }

    v25 = objc_opt_class();
    v27 = NSStringFromSelector(a2);
    NSLog(&cfstr_PFlushInBackgr.isa, v25, self, v27);
    goto LABEL_8;
  }

  if (byte_280A46430)
  {
    v11 = objc_opt_class();
    v26 = NSStringFromSelector(a2);
    NSLog(&cfstr_PBegin.isa, v11, self, v26);
  }

  objc_msgSend_makeObjectsPerformSelector_(self->_sharegroups, v7, v8, v9, v10, sel_nonThreadOwnedFlushCache);
  objc_msgSend_p_removeSharegroupsFromFlushingManager(self, v12, v13, v14, v15);
  self->_numAlive -= objc_msgSend_count(self->_sharegroups, v16, v17, v18, v19);
  objc_msgSend_removeAllObjects(self->_sharegroups, v20, v21, v22, v23);
  if (byte_280A46430 == 1)
  {
    v24 = objc_opt_class();
    v27 = NSStringFromSelector(a2);
    NSLog(&cfstr_PEnd.isa, v24, self, v27);
LABEL_8:
  }
}

- (void)flush
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2762FFC28;
  v4[3] = &unk_27A6B6888;
  v4[4] = self;
  objc_msgSend_p_lockAndPerformBlock_(self, a2, COERCE_DOUBLE(3221225472), v2, v3, v4);
}

- (id)p_obtainSharegroupFromSharegroups
{
  v7 = objc_msgSend_lastObject(self->_sharegroups, a2, v2, v3, v4);
  if (v7)
  {
    objc_msgSend_removeLastObject(self->_sharegroups, v6, v8, v9, v10);
    v15 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v11, v12, v13, v14);
    objc_msgSend_setOwningThread_(v7, v16, v17, v18, v19, v15);
  }

  return v7;
}

- (id)obtainSharegroup
{
  v6 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, v2, v3, v4);
  if (objc_msgSend_isMainThread(v6, v7, v8, v9, v10))
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCH3DSharegroupPool obtainSharegroup]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 305, 0, "Main thread should not use the sharegroup pool");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_2762FFF24;
  v44 = sub_2762FFF34;
  v45 = 0;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_2762FFF3C;
  v37[3] = &unk_27A6B9868;
  v37[4] = self;
  v39 = &v40;
  v30 = v6;
  v38 = v30;
  objc_msgSend_p_lockAndPerformBlock_(self, v31, v32, v33, v34, v37);
  v35 = v41[5];

  _Block_object_dispose(&v40, 8);

  return v35;
}

- (void)releaseSharegroup:(id)sharegroup
{
  sharegroupCopy = sharegroup;
  objc_msgSend_setPerformance_(sharegroupCopy, v5, v6, v7, v8, 1);
  objc_msgSend_flushIfNecessary(sharegroupCopy, v9, v10, v11, v12);
  objc_msgSend_setPerformance_(sharegroupCopy, v13, v14, v15, v16, 0);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_276300324;
  v22[3] = &unk_27A6B6338;
  v22[4] = self;
  v17 = sharegroupCopy;
  v23 = v17;
  objc_msgSend_p_lockAndPerformBlock_(self, v18, v19, v20, v21, v22);
}

- (void)disable
{
  if (byte_280A46430 == 1)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(a2);
    NSLog(&cfstr_P_1.isa, v6, self, v7);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2763004CC;
  v8[3] = &unk_27A6B6888;
  v8[4] = self;
  objc_msgSend_p_lockAndPerformBlock_(self, a2, COERCE_DOUBLE(3221225472), v2, v3, v8);
}

- (void)enable
{
  if (byte_280A46430 == 1)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(a2);
    NSLog(&cfstr_P_1.isa, v6, self, v7);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276300618;
  v8[3] = &unk_27A6B6888;
  v8[4] = self;
  objc_msgSend_p_lockAndPerformBlock_(self, a2, COERCE_DOUBLE(3221225472), v2, v3, v8);
}

- (BOOL)p_canUseOpenGLWithCheck:(id)check
{
  checkCopy = check;
  if (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v4, v5, v6, v7))
  {
    v12 = objc_msgSend_sharedDelegate(MEMORY[0x277D80610], v8, v9, v10, v11);
    v17 = objc_msgSend_isInBackground(v12, v13, v14, v15, v16);
LABEL_6:
    v18 = v17 ^ 1;

    goto LABEL_7;
  }

  if (!checkCopy)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DSharegroupPool p_canUseOpenGLWithCheck:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 384, 0, "The passed-in block should not be nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
    v12 = objc_msgSend_sharedDelegate(MEMORY[0x277D80610], v34, v35, v36, v37);
    v17 = objc_msgSend_isInBackground(v12, v38, v39, v40, v41);
    goto LABEL_6;
  }

  v18 = checkCopy[2](checkCopy);
LABEL_7:

  return v18;
}

- (BOOL)canRenderForAnimations
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_276300920;
  v6[3] = &unk_27A6B65F0;
  v6[4] = self;
  v6[5] = &v7;
  objc_msgSend_p_lockAndPerformBlock_(self, a2, COERCE_DOUBLE(3221225472), v2, v3, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)canCreateOpenGLObjects
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_276300A70;
  v6[3] = &unk_27A6B65F0;
  v6[4] = self;
  v6[5] = &v7;
  objc_msgSend_p_lockAndPerformBlock_(self, a2, COERCE_DOUBLE(3221225472), v2, v3, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)canRenderUsingOpenGL
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_276300BC0;
  v6[3] = &unk_27A6B65F0;
  v6[4] = self;
  v6[5] = &v7;
  objc_msgSend_p_lockAndPerformBlock_(self, a2, COERCE_DOUBLE(3221225472), v2, v3, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)canFlushObjects
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_276300D10;
  v6[3] = &unk_27A6B65F0;
  v6[4] = self;
  v6[5] = &v7;
  objc_msgSend_p_lockAndPerformBlock_(self, a2, COERCE_DOUBLE(3221225472), v2, v3, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)p_conditionLockedWaitForBackgroundThreadsWithTimeout:(double)timeout
{
  if (objc_msgSend_count(self->_sharegroups, a2, timeout, v3, v4) < self->_numAlive)
  {
    do
    {
      condition = self->_condition;
      if (timeout <= 0.0)
      {
        objc_msgSend_wait(self->_condition, v7, v8, v9, v10);
      }

      else
      {
        v12 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v7, timeout, v9, v10);
        v17 = objc_msgSend_waitUntilDate_(condition, v13, v14, v15, v16, v12);

        if ((v17 & 1) == 0)
        {
          return;
        }
      }
    }

    while (objc_msgSend_count(self->_sharegroups, v18, v19, v20, v21) < self->_numAlive);
  }
}

- (void)waitForBackgroundThreadsWithTimeout:(double)timeout
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_276300ECC;
  v4[3] = &unk_27A6B7688;
  v4[4] = self;
  *&v4[5] = timeout;
  objc_msgSend_p_lockAndPerformBlock_(self, a2, timeout, COERCE_DOUBLE(3221225472), v3, v4);
}

- (void)willCheckCondition
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_276300F54;
  v4[3] = &unk_27A6B7688;
  v4[4] = self;
  v4[5] = a2;
  objc_msgSend_p_lockAndPerformBlock_(self, a2, COERCE_DOUBLE(3221225472), v2, v3, v4);
}

@end