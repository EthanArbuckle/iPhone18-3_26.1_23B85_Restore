@interface TSCH3DSharegroupMapSharegroupToken
+ (id)tokenWithDevice:(id)a3;
- (TSCH3DSharegroupMapSharegroupToken)initWithDevice:(id)a3;
- (id)tokenSharegroup;
- (void)dealloc;
- (void)releaseSharegroup:(id)a3;
@end

@implementation TSCH3DSharegroupMapSharegroupToken

+ (id)tokenWithDevice:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v10 = objc_msgSend_initWithDevice_(v5, v6, v7, v8, v9, v4);

  return v10;
}

- (TSCH3DSharegroupMapSharegroupToken)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSCH3DSharegroupMapSharegroupToken;
  v6 = [(TSCH3DSharegroupMapSharegroupToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (void)releaseSharegroup:(id)a3
{
  v28 = a3;
  v8 = objc_msgSend_sharegroup(self, v4, v5, v6, v7);

  if (v8 != v28)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DSharegroupMapSharegroupToken releaseSharegroup:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 1200, 0, "unexpected sharegroup");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  objc_msgSend_setOwningThread_(v28, v9, v10, v11, v12, 0);
}

- (void)dealloc
{
  v6 = objc_msgSend_sharedManager(MEMORY[0x277D811D8], a2, v2, v3, v4);
  v11 = objc_msgSend_sharegroup(self, v7, v8, v9, v10);
  objc_msgSend_removeObject_(v6, v12, v13, v14, v15, v11);

  v20 = objc_msgSend_sharegroup(self, v16, v17, v18, v19);
  objc_msgSend_p_flushCache(v20, v21, v22, v23, v24);

  v25.receiver = self;
  v25.super_class = TSCH3DSharegroupMapSharegroupToken;
  [(TSCH3DSharegroupMapSharegroupToken *)&v25 dealloc];
}

- (id)tokenSharegroup
{
  v6 = objc_msgSend_sharegroup(self, a2, v2, v3, v4);

  if (v6)
  {
    v11 = objc_msgSend_sharegroup(self, v7, v8, v9, v10);
  }

  else
  {
    v12 = objc_msgSend_sharedInstance(TSCH3DSharegroupMTLDeviceToSharegroupMap, v7, v8, v9, v10);
    v17 = objc_msgSend_map(v12, v13, v14, v15, v16);

    if (!v17)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "[TSCH3DSharegroupMapSharegroupToken tokenSharegroup]");
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 1215, 0, "invalid nil value for '%{public}s'", "deviceToSharegroupMap");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
    }

    v37 = v17;
    objc_sync_enter(v37);
    v42 = objc_msgSend_device(self, v38, v39, v40, v41);
    v47 = objc_msgSend_objectForKey_(v37, v43, v44, v45, v46, v42);

    if (v47)
    {
      v11 = objc_msgSend_objectForKey_(v37, v48, v49, v50, v51, v42);
      objc_msgSend_updateSharegroupMapToken_(v11, v52, v53, v54, v55, self);
    }

    else
    {
      v60 = [TSCH3DGPUSharegroup alloc];
      v65 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v61, v62, v63, v64);
      v11 = objc_msgSend_initWithOwningThread_token_context_(v60, v66, v67, v68, v69, v65, self, 0);

      objc_msgSend_setObject_forKey_(v37, v70, v71, v72, v73, v11, v42);
    }

    if (!v11)
    {
      v74 = MEMORY[0x277D81150];
      v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v57, v58, v59, "[TSCH3DSharegroupMapSharegroupToken tokenSharegroup]");
      v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, v77, v78, v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v81, v82, v83, v84, v75, v80, 1231, 0, "invalid nil value for '%{public}s'", "result");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86, v87, v88);
    }

    objc_msgSend_setSharegroup_(self, v56, v57, v58, v59, v11);

    objc_sync_exit(v37);
  }

  return v11;
}

@end