@interface TSCH3DSession
- (BOOL)hasEnoughFreeMemoryOfBytes:(unint64_t)a3;
- (BOOL)isProtectedResource:(id)a3;
- (TSCH3DContext)context;
- (TSCH3DSession)init;
- (TSCH3DSession)initWithSharegroupToken:(id)a3 dataCache:(id)a4;
- (id)handleOfResource:(id)a3 loader:(id)a4;
- (id)loadResource:(id)a3 reload:(BOOL)a4 withLoader:(id)a5 config:(id)a6;
- (id)shaderForShaderContext:(id)a3 initializeProgramBlock:(id)a4;
- (int)performance;
- (int64_t)virtualScreen;
- (void)addActiveResource:(id)a3;
- (void)beginFrameWithSharegroupDelegate:(id)a3;
- (void)dealloc;
- (void)endFrameWithSharegroupDelegate:(id)a3;
- (void)flushMemoryForResources:(id)a3;
- (void)flushResources:(id)a3;
- (void)flushResourcesIfNecessary;
- (void)flushTrackedResources;
- (void)forceFlushResources:(id)a3;
- (void)garbageCollectAllUnretainedResources;
- (void)p_setContext:(id)a3;
- (void)protectResource:(id)a3 unprotectOnFail:(BOOL)a4;
- (void)resetTrackingToActiveResources;
- (void)setFailed;
- (void)setIfIsMoreDemandingPerformance:(int)a3;
- (void)setPerformance:(int)a3;
- (void)setVirtualScreen:(int64_t)a3;
- (void)trackResourcesInBlock:(id)a3;
- (void)unprotectResource:(id)a3 clearOnFailProtection:(BOOL)a4;
@end

@implementation TSCH3DSession

- (TSCH3DSession)init
{
  objc_msgSend_doesNotRecognizeSelector_(self, a2, v2, v3, v4, a2);

  return 0;
}

- (TSCH3DSession)initWithSharegroupToken:(id)a3 dataCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v36.receiver = self;
  v36.super_class = TSCH3DSession;
  v9 = [(TSCH3DSession *)&v36 init];
  if (v9)
  {
    v14 = objc_msgSend_sharegroupForToken_(TSCH3DGPUSharegroup, v8, v10, v11, v12, v6);
    if (byte_280A46430 == 1)
    {
      v18 = objc_opt_class();
      NSLog(&cfstr_PInit.isa, v18, v9);
    }

    v19 = objc_msgSend_resourceCache(v14, v13, v15, v16, v17);
    cache = v9->_cache;
    v9->_cache = v19;

    objc_storeStrong(&v9->_sharegroup, v14);
    if (objc_msgSend_isOneShot(v9->_sharegroup, v21, v22, v23, v24))
    {
      objc_msgSend_lock(v9->_sharegroup, v25, v26, v27, v28);
    }

    v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeResourceSet = v9->_activeResourceSet;
    v9->_activeResourceSet = v29;

    v31 = objc_alloc_init(MEMORY[0x277CBEB58]);
    allResourceSet = v9->_allResourceSet;
    v9->_allResourceSet = v31;

    v33 = objc_alloc_init(MEMORY[0x277CCA940]);
    scopeProtectedResourceSet = v9->_scopeProtectedResourceSet;
    v9->_scopeProtectedResourceSet = v33;

    v9->_virtualScreen = -1;
    objc_storeStrong(&v9->_dataCache, a4);
  }

  return v9;
}

- (void)dealloc
{
  if (self->_context)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DSession dealloc]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 81, 0, "expected nil value for '%{public}s'", "_context");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if (byte_280A46430 == 1)
  {
    v21 = objc_opt_class();
    NSLog(&cfstr_PDealloc.isa, v21, self);
  }

  if (objc_msgSend_isOneShot(self->_sharegroup, a2, v2, v3, v4))
  {
    objc_msgSend_unlock(self->_sharegroup, v22, v23, v24, v25);
  }

  if (objc_msgSend_count(self->_activeResourceSet, v22, v23, v24, v25))
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "[TSCH3DSession dealloc]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v37, v38, v39, v40, v31, v36, 86, 0, "tracked resources not emptied");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
  }

  if (objc_msgSend_count(self->_scopeProtectedResourceSet, v26, v27, v28, v29))
  {
    v49 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, "[TSCH3DSession dealloc]");
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v56, v57, v58, v59, v50, v55, 87, 0, "unprotect on fail resources not emptied");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
  }

  v64.receiver = self;
  v64.super_class = TSCH3DSession;
  [(TSCH3DSession *)&v64 dealloc];
}

- (void)setFailed
{
  v26 = *MEMORY[0x277D85DE8];
  ++self->_failures;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = self->_scopeProtectedResourceSet;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, v5, v6, v7, &v21, v25, 16);
  if (v9)
  {
    v13 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v3);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        for (j = objc_msgSend_countForObject_(self->_scopeProtectedResourceSet, v8, v10, v11, v12, v15, v21); j; --j)
        {
          objc_msgSend_unprotectResource_(self->_cache, v8, v10, v11, v12, v15);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v8, v10, v11, v12, &v21, v25, 16);
    }

    while (v9);
  }

  objc_msgSend_removeAllObjects(self->_scopeProtectedResourceSet, v17, v18, v19, v20);
}

- (TSCH3DContext)context
{
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, a2, v2, v3, v4) & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DSession context]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 126, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  context = self->_context;
  if (!context)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DSession context]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 127, 0, "invalid nil value for '%{public}s'", "_context");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
    context = self->_context;
  }

  return context;
}

- (void)p_setContext:(id)a3
{
  v30 = a3;
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, v5, v6, v7, v8) & 1) == 0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DSession p_setContext:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 132, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  context = self->_context;
  p_context = &self->_context;
  if (context != v30)
  {
    objc_storeStrong(p_context, a3);
  }
}

- (id)handleOfResource:(id)a3 loader:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, v8, v9, v10, v11) & 1) == 0)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCH3DSession handleOfResource:loader:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 139, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  cache = self->_cache;
  v32 = objc_msgSend_virtualScreenForContext_(v7, v12, v13, v14, v15, self->_context);
  v37 = objc_msgSend_keyForLoader_resource_virtualScreen_(cache, v33, v34, v35, v36, v7, v6, v32);
  v42 = objc_msgSend_handleForKey_(self->_cache, v38, v39, v40, v41, v37);

  return v42;
}

- (void)addActiveResource:(id)a3
{
  v31 = a3;
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, v4, v5, v6, v7) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DSession addActiveResource:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 147, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  objc_msgSend_addObject_(self->_activeResourceSet, v8, v9, v10, v11, v31);
  objc_msgSend_addObject_(self->_allResourceSet, v27, v28, v29, v30, v31);
}

- (id)loadResource:(id)a3 reload:(BOOL)a4 withLoader:(id)a5 config:(id)a6
{
  v10 = a3;
  v11 = a5;
  v185 = a6;
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, v12, v13, v14, v15) & 1) == 0)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCH3DSession loadResource:reload:withLoader:config:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 153, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  if (byte_280A46430 == 1)
  {
    v35 = objc_opt_class();
    NSLog(&cfstr_PLoad.isa, v35, self, v10);
  }

  v36 = objc_alloc_init(TSCH3DSessionLoadResourceResult);
  cache = self->_cache;
  v42 = objc_msgSend_virtualScreenForContext_(v11, v38, v39, v40, v41, self->_context);
  v47 = objc_msgSend_keyForLoader_resource_virtualScreen_(cache, v43, v44, v45, v46, v11, v10, v42);
  v52 = objc_msgSend_resource(v47, v48, v49, v50, v51);
  LOBYTE(cache) = objc_msgSend_isEqual_(v52, v53, v54, v55, v56, v10);

  if ((cache & 1) == 0)
  {
    v61 = MEMORY[0x277D81150];
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "[TSCH3DSession loadResource:reload:withLoader:config:]");
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v68, v69, v70, v71, v62, v67, 160, 0, "Resource returned from the cache didn't match the original resource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73, v74, v75);
  }

  v76 = objc_msgSend_resource(v47, v57, v58, v59, v60);

  v82 = objc_msgSend_handleForKey_(self->_cache, v77, v78, v79, v80, v47);
  if (v82)
  {
    if (a4)
    {
      shouldReuploadHandle_config = 1;
    }

    else
    {
      shouldReuploadHandle_config = objc_msgSend_shouldReuploadHandle_config_(v11, v81, v83, v84, v85, v82, v185);
    }

    v101 = v82;
    objc_msgSend_bindHandle_config_(v11, v81, v83, v84, v85, v82, v185);
    goto LABEL_17;
  }

  if (byte_280A46430 == 1)
  {
    v87 = objc_opt_class();
    NSLog(&cfstr_PGenerate.isa, v87, self, v76);
  }

  if (objc_msgSend_hasFailed(self, v81, v83, v84, v85))
  {
LABEL_26:
    objc_msgSend_setFailed_(v36, v88, v89, v90, v91, 1);
    objc_msgSend_setFailed(self, v180, v181, v182, v183);
    goto LABEL_27;
  }

  v93 = objc_msgSend_generateHandleWithConfig_(v11, v88, v89, v90, v91, v185);
  if (!v93)
  {
    v165 = MEMORY[0x277D81150];
    v166 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, v94, v95, v96, "[TSCH3DSession loadResource:reload:withLoader:config:]");
    v171 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v167, v168, v169, v170, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v165, v172, v173, v174, v175, v166, v171, 170, 0, "invalid nil value for '%{public}s'", "handle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v176, v177, v178, v179);
    goto LABEL_26;
  }

  objc_msgSend_setGenerated_(v36, v92, v94, v95, v96, 1);
  objc_msgSend_setHandle_forKey_(self->_cache, v97, v98, v99, v100, v93, v47);
  shouldReuploadHandle_config = 1;
  v101 = v93;
  objc_msgSend_bindHandle_config_(v11, v102, v103, v104, v105, v93, v185);
LABEL_17:
  hasFailed = objc_msgSend_hasFailed(self, v106, v107, v108, v109);
  if (hasFailed & 1 | ((shouldReuploadHandle_config & 1) == 0))
  {
    hasEnoughFreeMemoryOfBytes = hasFailed ^ 1;
  }

  else
  {
    v117 = objc_autoreleasePoolPush();
    if (byte_280A46430 == 1)
    {
      v121 = objc_opt_class();
      NSLog(&cfstr_PUpload.isa, v121, self, v76);
    }

    v122 = objc_msgSend_uploadResource_handle_insideSession_config_(v11, v116, v118, v119, v120, v76, v101, self, v185);
    objc_msgSend_setBytesUploaded_forKey_(self->_cache, v123, v124, v125, v126, v122, v47);
    hasEnoughFreeMemoryOfBytes = objc_msgSend_hasEnoughFreeMemoryOfBytes_(self->_cache, v127, v128, v129, v130, 0);
    objc_msgSend_setUploaded_(v36, v131, v132, v133, v134, 1);
    objc_autoreleasePoolPop(v117);
  }

  objc_msgSend_postbindHandle_config_(v11, v111, v112, v113, v114, v101, v185);
  objc_msgSend_addActiveResource_(self, v135, v136, v137, v138, v76);
  objc_msgSend_setHandle_(v36, v139, v140, v141, v142, v101);
  v147 = objc_msgSend_keyForKey_(self->_cache, v143, v144, v145, v146, v47);
  v152 = objc_msgSend_resource(v147, v148, v149, v150, v151);
  objc_msgSend_setResource_(v36, v153, v154, v155, v156, v152);

  if ((hasEnoughFreeMemoryOfBytes & 1) == 0)
  {
    objc_msgSend_setFailed_(v36, v157, v158, v159, v160, 1);
    objc_msgSend_setFailed(self, v161, v162, v163, v164);
  }

LABEL_27:

  return v36;
}

- (void)trackResourcesInBlock:(id)a3
{
  v51 = a3;
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, v4, v5, v6, v7) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DSession trackResourcesInBlock:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 225, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = self->_activeResourceSet;
  v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
  activeResourceSet = self->_activeResourceSet;
  self->_activeResourceSet = v28;

  v51[2]();
  objc_msgSend_updateUsageCountForResourceSet_fromPreviousResourceSet_(self->_cache, v30, v31, v32, v33, self->_activeResourceSet, v27);
  objc_msgSend_flushMemoryForResourceSet_(self->_sharegroup, v34, v35, v36, v37, self->_activeResourceSet);
  v42 = objc_msgSend_mutableCopy(v27, v38, v39, v40, v41);
  objc_msgSend_minusSet_(v42, v43, v44, v45, v46, self->_activeResourceSet);
  objc_msgSend_flushResourceSet_(self->_sharegroup, v47, v48, v49, v50, v42);
}

- (void)flushResourcesIfNecessary
{
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, a2, v2, v3, v4) & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DSession flushResourcesIfNecessary]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 241, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  sharegroup = self->_sharegroup;

  objc_msgSend_flushIfNecessary(sharegroup, v6, v7, v8, v9);
}

- (void)garbageCollectAllUnretainedResources
{
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, a2, v2, v3, v4) & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DSession garbageCollectAllUnretainedResources]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 246, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  sharegroup = self->_sharegroup;

  MEMORY[0x2821F9670](sharegroup, sel_garbageCollectAllUnretainedResources, v7, v8, v9);
}

- (BOOL)hasEnoughFreeMemoryOfBytes:(unint64_t)a3
{
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, a2, v3, v4, v5) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DSession hasEnoughFreeMemoryOfBytes:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 251, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  cache = self->_cache;

  return objc_msgSend_hasEnoughFreeMemoryOfBytes_(cache, v8, v9, v10, v11, a3);
}

- (void)protectResource:(id)a3 unprotectOnFail:(BOOL)a4
{
  v4 = a4;
  v33 = a3;
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, v6, v7, v8, v9) & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCH3DSession protectResource:unprotectOnFail:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 256, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  if (!v4 || (objc_msgSend_hasFailed(self, v10, v11, v12, v13) & 1) == 0)
  {
    objc_msgSend_protectResource_(self->_cache, v10, v11, v12, v13, v33);
    if (v4)
    {
      objc_msgSend_addObject_(self->_scopeProtectedResourceSet, v29, v30, v31, v32, v33);
    }
  }
}

- (void)unprotectResource:(id)a3 clearOnFailProtection:(BOOL)a4
{
  v4 = a4;
  v52 = a3;
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, v6, v7, v8, v9) & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCH3DSession unprotectResource:clearOnFailProtection:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 267, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  objc_msgSend_unprotectResource_(self->_cache, v10, v11, v12, v13, v52);
  if (v4)
  {
    if ((objc_msgSend_containsObject_(self->_scopeProtectedResourceSet, v29, v30, v31, v32, v52) & 1) == 0)
    {
      v37 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "[TSCH3DSession unprotectResource:clearOnFailProtection:]");
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v44, v45, v46, v47, v38, v43, 271, 0, "invalid resource to clear on fail protection %@", v52);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
    }

    objc_msgSend_removeObject_(self->_scopeProtectedResourceSet, v33, v34, v35, v36, v52);
  }
}

- (BOOL)isProtectedResource:(id)a3
{
  v4 = a3;
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, v5, v6, v7, v8) & 1) == 0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DSession isProtectedResource:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 277, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  isProtectedResource = objc_msgSend_isProtectedResource_(self->_cache, v9, v10, v11, v12, v4);

  return isProtectedResource;
}

- (void)flushMemoryForResources:(id)a3
{
  v27 = a3;
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, v4, v5, v6, v7) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DSession flushMemoryForResources:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 282, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  objc_msgSend_flushMemoryForResources_(self->_cache, v8, v9, v10, v11, v27);
}

- (void)resetTrackingToActiveResources
{
  objc_msgSend_garbageCollectResources_(self->_sharegroup, a2, v2, v3, v4, self->_allResourceSet);
  v10 = objc_msgSend_mutableCopy(self->_activeResourceSet, v6, v7, v8, v9);
  allResourceSet = self->_allResourceSet;
  self->_allResourceSet = v10;
}

- (void)flushTrackedResources
{
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, a2, v2, v3, v4) & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DSession flushTrackedResources]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 292, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  cache = self->_cache;
  v26 = objc_msgSend_set(MEMORY[0x277CBEB98], v6, v7, v8, v9);
  objc_msgSend_updateUsageCountForResourceSet_fromPreviousResourceSet_(cache, v27, v28, v29, v30, v26, self->_activeResourceSet);

  objc_msgSend_removeAllObjects(self->_activeResourceSet, v31, v32, v33, v34);
  sharegroup = self->_sharegroup;
  allResourceSet = self->_allResourceSet;

  objc_msgSend_garbageCollectResources_(sharegroup, v35, v36, v37, v38, allResourceSet);
}

- (void)flushResources:(id)a3
{
  v27 = a3;
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, v4, v5, v6, v7) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DSession flushResources:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 302, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  objc_msgSend_flushResourceSet_(self->_sharegroup, v8, v9, v10, v11, v27);
}

- (void)forceFlushResources:(id)a3
{
  v35 = a3;
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, v4, v5, v6, v7) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DSession forceFlushResources:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 311, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  objc_msgSend_minusSet_(self->_activeResourceSet, v8, v9, v10, v11, v35);
  objc_msgSend_minusSet_(self->_allResourceSet, v27, v28, v29, v30, v35);
  objc_msgSend_forceFlushResourceSet_(self->_sharegroup, v31, v32, v33, v34, v35);
}

- (id)shaderForShaderContext:(id)a3 initializeProgramBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, v8, v9, v10, v11) & 1) == 0)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCH3DSession shaderForShaderContext:initializeProgramBlock:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 318, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = objc_msgSend_shaderCache(self->_sharegroup, v12, v13, v14, v15);
  v36 = objc_msgSend_shaderForShaderContext_initializeProgramBlock_(v31, v32, v33, v34, v35, v6, v7);

  return v36;
}

- (void)beginFrameWithSharegroupDelegate:(id)a3
{
  v47 = a3;
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, v4, v5, v6, v7) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DSession beginFrameWithSharegroupDelegate:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 323, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_delegate(self->_sharegroup, v8, v9, v10, v11);

  if (v27)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "[TSCH3DSession beginFrameWithSharegroupDelegate:]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v40, v41, v42, v33, v38, 324, 0, "expected nil value for '%{public}s'", "_sharegroup.delegate");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
  }

  objc_msgSend_setDelegate_(self->_sharegroup, v28, v29, v30, v31, v47);
}

- (void)endFrameWithSharegroupDelegate:(id)a3
{
  v47 = a3;
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, v4, v5, v6, v7) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DSession endFrameWithSharegroupDelegate:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 329, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_delegate(self->_sharegroup, v8, v9, v10, v11);

  if (v27 != v47)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "[TSCH3DSession endFrameWithSharegroupDelegate:]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v40, v41, v42, v33, v38, 330, 0, "unexpected change in delegate");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
  }

  objc_msgSend_setDelegate_(self->_sharegroup, v28, v29, v30, v31, 0);
}

- (void)setIfIsMoreDemandingPerformance:(int)a3
{
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, a2, v3, v4, v5) & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DSession setIfIsMoreDemandingPerformance:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 335, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  sharegroup = self->_sharegroup;

  MEMORY[0x2821F9670](sharegroup, sel_setIfIsMoreDemandingPerformance_, v8, v9, v10);
}

- (void)setPerformance:(int)a3
{
  v6 = *&a3;
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, a2, v3, v4, v5) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DSession setPerformance:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 340, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  sharegroup = self->_sharegroup;

  objc_msgSend_setPerformance_(sharegroup, v8, v9, v10, v11, v6);
}

- (int64_t)virtualScreen
{
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, a2, v2, v3, v4) & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DSession virtualScreen]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 345, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  return self->_virtualScreen;
}

- (void)setVirtualScreen:(int64_t)a3
{
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, a2, v3, v4, v5) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DSession setVirtualScreen:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 350, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  self->_virtualScreen = a3;
}

- (int)performance
{
  if ((objc_msgSend_isCurrentThreadOwner(self->_sharegroup, a2, v2, v3, v4) & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DSession performance]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 355, 0, "session group methods being called in the wrong thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  sharegroup = self->_sharegroup;

  return MEMORY[0x2821F9670](sharegroup, sel_performance, v7, v8, v9);
}

@end