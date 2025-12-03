@interface TSCH3DSharegroupPoolSharegroupToken
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)token;
- (id)tokenSharegroup;
- (void)deleteTokenSharegroup;
- (void)didRemoveAllInterests;
- (void)flushTokenSharegroup;
- (void)releaseSharegroup:(id)sharegroup;
@end

@implementation TSCH3DSharegroupPoolSharegroupToken

+ (id)_singletonAlloc
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___TSCH3DSharegroupPoolSharegroupToken;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)token
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276304A3C;
  block[3] = &unk_27A6B6250;
  block[4] = self;
  if (qword_280A47A90 != -1)
  {
    dispatch_once(&qword_280A47A90, block);
  }

  v2 = qword_280A47A88;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCH3DSharegroupPoolSharegroupToken allocWithZone:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 1125, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

- (id)tokenSharegroup
{
  v6 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, v2, v3, v4);
  v12 = objc_msgSend_threadDictionary(v6, v7, v8, v9, v10);
  if (!v12)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCH3DSharegroupPoolSharegroupToken tokenSharegroup]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 1130, 0, "invalid nil value for '%{public}s'", "dictionary");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v32 = objc_msgSend_objectForKey_(v12, v11, v13, v14, v15, self);
  if (!v32)
  {
    v36 = objc_msgSend_sharedInstance(TSCH3DSharegroupPool, v31, v33, v34, v35);
    v32 = objc_msgSend_obtainSharegroup(v36, v37, v38, v39, v40);

    objc_msgSend_setObject_forKey_(v12, v41, v42, v43, v44, v32, self);
  }

  return v32;
}

- (void)didRemoveAllInterests
{
  v9 = objc_msgSend_sharedInstance(TSCH3DSharegroupPool, a2, v2, v3, v4);
  objc_msgSend_scheduleCheckCondition(v9, v5, v6, v7, v8);
}

- (void)releaseSharegroup:(id)sharegroup
{
  obj = sharegroup;
  objc_sync_enter(obj);
  if ((objc_msgSend_isCurrentThreadOwner(obj, v4, v5, v6, v7) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DSharegroupPoolSharegroupToken releaseSharegroup:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 1148, 0, "Should only get here for the owning thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v8, v9, v10, v11);
  v32 = objc_msgSend_threadDictionary(v27, v28, v29, v30, v31);

  objc_msgSend_removeObjectForKey_(v32, v33, v34, v35, v36, self);
  objc_msgSend_setOwningThread_(obj, v37, v38, v39, v40, 0);
  v45 = objc_msgSend_GPUContext(obj, v41, v42, v43, v44);
  v50 = v45;
  if (v45 && objc_msgSend_isCurrentSystemContext(v45, v46, v47, v48, v49))
  {
    v51 = MEMORY[0x277D81150];
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "[TSCH3DSharegroupPoolSharegroupToken releaseSharegroup:]");
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v58, v59, v60, v61, v52, v57, 1158, 0, "Expect the current context to not be bound");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64, v65);
  }

  v66 = objc_msgSend_sharedInstance(TSCH3DSharegroupPool, v46, v47, v48, v49);
  objc_msgSend_releaseSharegroup_(v66, v67, v68, v69, v70, obj);

  objc_sync_exit(obj);
}

- (void)deleteTokenSharegroup
{
  v9 = objc_msgSend_sharedInstance(TSCH3DSharegroupPool, a2, v2, v3, v4);
  objc_msgSend_scheduleCheckCondition(v9, v5, v6, v7, v8);
}

- (void)flushTokenSharegroup
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DSharegroupPoolSharegroupToken flushTokenSharegroup]");
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v12, v13, v14, v15, v6, v11, 1172, 0, "should not be called for this token");

  v20 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v20, v16, v17, v18, v19);
}

@end