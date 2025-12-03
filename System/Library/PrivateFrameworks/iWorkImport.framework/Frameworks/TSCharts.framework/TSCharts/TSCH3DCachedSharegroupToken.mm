@interface TSCH3DCachedSharegroupToken
- (TSCH3DCachedSharegroupToken)init;
- (id)tokenSharegroup;
- (void)dealloc;
- (void)deleteTokenSharegroup;
- (void)releaseSharegroup:(id)sharegroup;
- (void)willCheckCondition;
@end

@implementation TSCH3DCachedSharegroupToken

- (TSCH3DCachedSharegroupToken)init
{
  v11.receiver = self;
  v11.super_class = TSCH3DCachedSharegroupToken;
  v2 = [(TSCH3DCachedSharegroupToken *)&v11 init];
  if (v2)
  {
    v3 = [TSCH3DSharegroupDelayChecker alloc];
    v8 = objc_msgSend_initWithParent_(v3, v4, v5, v6, v7, v2);
    checker = v2->_checker;
    v2->_checker = v8;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_sharegroup)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DCachedSharegroupToken dealloc]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 1033, 0, "expected nil value for '%{public}s'", "_sharegroup");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v21.receiver = self;
  v21.super_class = TSCH3DCachedSharegroupToken;
  [(TSCH3DCachedSharegroupToken *)&v21 dealloc];
}

- (id)tokenSharegroup
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_sharegroup)
  {
    v7 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v3, v4, v5, v6);
    v12 = objc_msgSend_uniqueSharegroupWithOwningThread_token_(TSCH3DGPUSharegroup, v8, v9, v10, v11, v7, selfCopy);
    sharegroup = selfCopy->_sharegroup;
    selfCopy->_sharegroup = v12;
  }

  objc_msgSend_invalidateCondition(selfCopy->_checker, v3, v4, v5, v6);
  v14 = selfCopy->_sharegroup;
  objc_sync_exit(selfCopy);

  return v14;
}

- (void)deleteTokenSharegroup
{
  obj = self;
  objc_sync_enter(obj);
  v5 = obj;
  sharegroup = obj->_sharegroup;
  if (sharegroup)
  {
    if ((objc_msgSend_owningThreadIsNil(sharegroup, obj, v2, v3, v4) & 1) == 0)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DCachedSharegroupToken deleteTokenSharegroup]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 1055, 0, "Owning thread must be nil when sharegroup is deleted");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    }

    v26 = objc_msgSend_sharedManager(MEMORY[0x277D811D8], v7, v8, v9, v10);
    objc_msgSend_removeObject_(v26, v27, v28, v29, v30, obj->_sharegroup);

    objc_msgSend_p_flushCache(obj->_sharegroup, v31, v32, v33, v34);
    v35 = obj->_sharegroup;
    obj->_sharegroup = 0;

    v5 = obj;
  }

  objc_sync_exit(v5);
}

- (void)releaseSharegroup:(id)sharegroup
{
  sharegroupCopy = sharegroup;
  sharegroup = self->_sharegroup;
  v24 = sharegroupCopy;
  if (sharegroup != sharegroupCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], sharegroupCopy, v5, v6, v7, "[TSCH3DCachedSharegroupToken releaseSharegroup:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 1068, 0, "Incorrect sharegroup");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
    sharegroup = self->_sharegroup;
  }

  objc_msgSend_setOwningThread_(sharegroup, sharegroupCopy, v5, v6, v7, 0);
}

- (void)willCheckCondition
{
  obj = self;
  objc_sync_enter(obj);
  if (objc_msgSend_owningThreadIsNil(obj->_sharegroup, v2, v3, v4, v5) && (objc_msgSend_hasInterestForSharegroupToken_(TSCH3DGPUSharegroup, v6, v7, v8, v9, obj) & 1) == 0)
  {
    objc_msgSend_deleteTokenSharegroup(obj, v10, v11, v12, v13);
  }

  objc_sync_exit(obj);
}

@end