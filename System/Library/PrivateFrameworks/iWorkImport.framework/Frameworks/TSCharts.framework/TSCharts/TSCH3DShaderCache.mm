@interface TSCH3DShaderCache
- (TSCH3DProtectResourceDelegate)protectResourceDelegate;
- (TSCH3DShaderCache)init;
- (id)description;
- (id)shaderForShaderContext:(id)context initializeProgramBlock:(id)block;
- (void)dealloc;
- (void)debug_verifyUniqueShadersInCache;
- (void)p_ensureCacheLimit;
- (void)p_unprotectAllCacheItems;
- (void)setProtectResourceDelegate:(id)delegate;
@end

@implementation TSCH3DShaderCache

- (TSCH3DShaderCache)init
{
  v6.receiver = self;
  v6.super_class = TSCH3DShaderCache;
  v2 = [(TSCH3DShaderCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    shaderCache = v2->_shaderCache;
    v2->_shaderCache = v3;
  }

  return v2;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_protectResourceDelegate);

  if (WeakRetained)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DShaderCache dealloc]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 41, 0, "expected nil value for '%{public}s'", "_protectResourceDelegate");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_msgSend_sharedInstance(TSCH3DChartPlatformSettings, v4, v5, v6, v7);
  if (objc_msgSend_protectCachedShaders(v23, v24, v25, v26, v27))
  {
    v32 = objc_msgSend_count(self->_shaderCache, v28, v29, v30, v31);

    if (v32)
    {
      v37 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "[TSCH3DShaderCache dealloc]");
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderCache.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v44, v45, v46, v47, v38, v43, 43, 0, "must not have any shaders left if we are protecting them or they will be leaked %@", self->_shaderCache);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
    }
  }

  else
  {
  }

  v52.receiver = self;
  v52.super_class = TSCH3DShaderCache;
  [(TSCH3DShaderCache *)&v52 dealloc];
}

- (void)setProtectResourceDelegate:(id)delegate
{
  v5 = objc_initWeak(&location, delegate);
  WeakRetained = objc_loadWeakRetained(&self->_protectResourceDelegate);

  if (WeakRetained != delegate)
  {
    objc_msgSend_p_unprotectAllCacheItems(self, v7, v8, v9, v10);
    v11 = objc_loadWeakRetained(&location);
    objc_storeWeak(&self->_protectResourceDelegate, v11);
  }

  objc_destroyWeak(&location);
}

- (void)p_unprotectAllCacheItems
{
  v6 = objc_msgSend_sharedInstance(TSCH3DChartPlatformSettings, a2, v2, v3, v4);
  v11 = objc_msgSend_protectCachedShaders(v6, v7, v8, v9, v10);

  if (v11)
  {
    shaderCache = self->_shaderCache;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2761AF380;
    v17[3] = &unk_27A6B6778;
    v17[4] = self;
    objc_msgSend_enumerateObjectsUsingBlock_(shaderCache, v12, COERCE_DOUBLE(3221225472), v14, v15, v17);
  }

  objc_msgSend_removeAllObjects(self->_shaderCache, v12, v13, v14, v15);
}

- (void)debug_verifyUniqueShadersInCache
{
  v98 = *MEMORY[0x277D85DE8];
  v92 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3, v4);
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = self->_shaderCache;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, v7, v8, v9, &v93, v97, 16);
  if (v10)
  {
    v90 = *v94;
    do
    {
      v91 = v10;
      for (i = 0; i != v91; ++i)
      {
        if (*v94 != v90)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v12 = TSUCheckedDynamicCast();
        v18 = objc_msgSend_shader(v12, v13, v14, v15, v16);
        if (!v18)
        {
          v22 = MEMORY[0x277D81150];
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v19, v20, v21, "[TSCH3DShaderCache debug_verifyUniqueShadersInCache]");
          v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderCache.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 68, 0, "invalid nil value for '%{public}s'", "shader");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
        }

        v37 = objc_msgSend_get(v18, v17, v19, v20, v21);
        objc_msgSend_stringsFromBuffer_(TSCH3DShaderResource, v38, v39, v40, v41, v37);

        v46 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v42, v43, v44, v45, @"%s\n%s");
        v52 = objc_msgSend_objectForKey_(v92, v47, v48, v49, v50, v46);
        if (v52)
        {
          v56 = MEMORY[0x277D81150];
          v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v53, v54, v55, "[TSCH3DShaderCache debug_verifyUniqueShadersInCache]");
          v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderCache.mm");
          v67 = objc_msgSend_diffEffects_(v52, v63, v64, v65, v66, v12);
          v72 = objc_msgSend_diffEffects_(v12, v68, v69, v70, v71, v52);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v73, v74, v75, v76, v57, v62, 77, 0, "Identical shader source code already exists %@, %@, differences %@, %@", v52, v12, v67, v72);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v77, v78, v79, v80);
        }

        objc_msgSend_setObject_forKey_(v92, v81, v82, v83, v84, v12, v46);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v85, v86, v87, v88, &v93, v97, 16);
    }

    while (v10);
  }
}

- (void)p_ensureCacheLimit
{
  v6 = objc_msgSend_count(self->_shaderCache, a2, v2, v3, v4);
  if (v6 >= 0x1F)
  {
    for (i = v6; i > 0x1E; --i)
    {
      v12 = objc_msgSend_sharedInstance(TSCH3DChartPlatformSettings, v7, v8, v9, v10);
      v17 = objc_msgSend_protectCachedShaders(v12, v13, v14, v15, v16);

      if (v17)
      {
        objc_opt_class();
        v26 = objc_msgSend_firstObject(self->_shaderCache, v22, v23, v24, v25);
        v27 = TSUCheckedDynamicCast();

        WeakRetained = objc_loadWeakRetained(&self->_protectResourceDelegate);
        v33 = objc_msgSend_shader(v27, v29, v30, v31, v32);
        objc_msgSend_unprotectResource_(WeakRetained, v34, v35, v36, v37, v33);
      }

      objc_msgSend_removeObjectAtIndex_(self->_shaderCache, v18, v19, v20, v21, 0);
    }
  }
}

- (id)shaderForShaderContext:(id)context initializeProgramBlock:(id)block
{
  contextCopy = context;
  blockCopy = block;
  v13 = objc_msgSend_count(self->_shaderCache, v8, v9, v10, v11);
  if (v13 < 1)
  {
LABEL_5:
    v27 = objc_msgSend_sharedInstance(TSCH3DChartPlatformSettings, v12, v14, v15, v16);
    v32 = objc_msgSend_protectCachedShaders(v27, v28, v29, v30, v31);

    if (v32)
    {
      WeakRetained = objc_loadWeakRetained(&self->_protectResourceDelegate);
      v42 = objc_msgSend_shader(contextCopy, v38, v39, v40, v41);
      objc_msgSend_protectResource_(WeakRetained, v43, v44, v45, v46, v42);
    }

    objc_msgSend_addObject_(self->_shaderCache, v33, v34, v35, v36, contextCopy);
    objc_msgSend_p_ensureCacheLimit(self, v47, v48, v49, v50);
    v55 = objc_msgSend_shader(contextCopy, v51, v52, v53, v54);
    v18 = objc_msgSend_program(v55, v56, v57, v58, v59);
    blockCopy[2](blockCopy, v18, contextCopy);
  }

  else
  {
    v17 = 0;
    while (1)
    {
      v18 = objc_msgSend_objectAtIndexedSubscript_(self->_shaderCache, v12, v14, v15, v16, --v13);
      if (objc_msgSend_isEqual_(v18, v19, v20, v21, v22, contextCopy))
      {
        break;
      }

      ++v17;
      if (v13 <= 0)
      {
        goto LABEL_5;
      }
    }

    if (v17)
    {
      objc_msgSend_removeObjectAtIndex_(self->_shaderCache, v23, v24, v25, v26, v13);
      objc_msgSend_addObject_(self->_shaderCache, v60, v61, v62, v63, v18);
    }

    v55 = objc_msgSend_shader(v18, v23, v24, v25, v26);
  }

  return v55;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v25.receiver = self;
  v25.super_class = TSCH3DShaderCache;
  v4 = [(TSCH3DShaderCache *)&v25 description];
  v9 = objc_msgSend_initWithFormat_(v3, v5, v6, v7, v8, @"%@ = {\n", v4);

  v14 = objc_msgSend_count(self->_shaderCache, v10, v11, v12, v13);
  objc_msgSend_appendFormat_(v9, v15, v16, v17, v18, @"cache size: %ld }", v14);
  v23 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v19, v20, v21, v22, v9);

  return v23;
}

- (TSCH3DProtectResourceDelegate)protectResourceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_protectResourceDelegate);

  return WeakRetained;
}

@end