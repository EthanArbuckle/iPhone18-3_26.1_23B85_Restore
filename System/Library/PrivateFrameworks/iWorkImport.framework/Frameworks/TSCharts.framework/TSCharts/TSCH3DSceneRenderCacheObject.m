@interface TSCH3DSceneRenderCacheObject
+ (id)cacheObject;
- (BOOL)cachingEnabled;
- (TSCH3DSceneRenderCacheObject)init;
- (id)childCacheObjectAtIndex:(unint64_t)a3;
- (id)resourceAtIndex:(unint64_t)a3;
- (id)resourceAtIndex:(unint64_t)a3 created:(BOOL *)a4 ifAbsent:(id)a5;
- (int)p_resourceUpdateFlag;
- (void)flushCache;
- (void)p_updateResourceUpdateFlags:(int)a3;
- (void)setCachingEnabled:(BOOL)a3;
@end

@implementation TSCH3DSceneRenderCacheObject

+ (id)cacheObject
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (TSCH3DSceneRenderCacheObject)init
{
  v19.receiver = self;
  v19.super_class = TSCH3DSceneRenderCacheObject;
  v3 = [(TSCH3DSceneRenderCacheObject *)&v19 init];
  if (v3)
  {
    v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v2, v4, v5, v6);
    objc_msgSend_allocateDynamicResourcesIntoArray_(v3, v8, v9, v10, v11, v7);
    objc_storeStrong(&v3->_dynamicResources, v7);
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    childCacheObjects = v3->_childCacheObjects;
    v3->_childCacheObjects = v12;

    objc_msgSend_setCachingEnabled_(v3, v14, v15, v16, v17, 0);
  }

  return v3;
}

- (void)flushCache
{
  v49 = *MEMORY[0x277D85DE8];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v3 = self->_dynamicResources;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, v5, v6, v7, &v43, v48, 16);
  if (v9)
  {
    v13 = *v44;
    do
    {
      v14 = 0;
      do
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(v3);
        }

        v15 = *(*(&v43 + 1) + 8 * v14);
        v16 = objc_msgSend_null(MEMORY[0x277CBEB68], v8, v10, v11, v12);
        isEqual = objc_msgSend_isEqual_(v16, v17, v18, v19, v20, v15);

        if ((isEqual & 1) == 0)
        {
          v22 = v15;
          objc_msgSend_clear(v22, v23, v24, v25, v26);
        }

        ++v14;
      }

      while (v9 != v14);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v8, v10, v11, v12, &v43, v48, 16);
    }

    while (v9);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v27 = self->_childCacheObjects;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, v29, v30, v31, &v39, v47, 16);
  if (v33)
  {
    v37 = *v40;
    do
    {
      v38 = 0;
      do
      {
        if (*v40 != v37)
        {
          objc_enumerationMutation(v27);
        }

        objc_msgSend_flushCache(*(*(&v39 + 1) + 8 * v38++), v32, v34, v35, v36, v39);
      }

      while (v33 != v38);
      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v32, v34, v35, v36, &v39, v47, 16);
    }

    while (v33);
  }
}

- (int)p_resourceUpdateFlag
{
  if (self->_cachingEnabled)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (void)p_updateResourceUpdateFlags:(int)a3
{
  v6 = *&a3;
  v54 = *MEMORY[0x277D85DE8];
  dynamicResources = self->_dynamicResources;
  if (!dynamicResources)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DSceneRenderCacheObject p_updateResourceUpdateFlags:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSceneRenderCacheObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 61, 0, "invalid nil value for '%{public}s'", "_dynamicResources");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
    dynamicResources = self->_dynamicResources;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v24 = dynamicResources;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, v26, v27, v28, &v49, v53, 16);
  if (v29)
  {
    v30 = *v50;
    do
    {
      v31 = 0;
      do
      {
        if (*v50 != v30)
        {
          objc_enumerationMutation(v24);
        }

        objc_opt_class();
        v32 = TSUDynamicCast();
        if (objc_msgSend_update(v32, v33, v34, v35, v36) != v6)
        {
          objc_msgSend_setUpdate_(v32, v37, v38, v39, v40, v6);
          objc_msgSend_setChanged_(v32, v41, v42, v43, v44, 1);
        }

        ++v31;
      }

      while (v29 != v31);
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v45, v46, v47, v48, &v49, v53, 16);
    }

    while (v29);
  }
}

- (BOOL)cachingEnabled
{
  v51 = *MEMORY[0x277D85DE8];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v3 = self->_childCacheObjects;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, v5, v6, v7, &v46, v50, 16);
  if (v8)
  {
    v9 = *v47;
    do
    {
      v10 = 0;
      do
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        v11 = TSUDynamicCast();
        v16 = v11;
        if (v11 && self->_cachingEnabled != objc_msgSend_cachingEnabled(v11, v12, v13, v14, v15))
        {
          v21 = MEMORY[0x277D81150];
          v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCH3DSceneRenderCacheObject cachingEnabled]");
          v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSceneRenderCacheObject.mm");
          v32 = objc_msgSend_cachingEnabled(v16, v28, v29, v30, v31);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v33, v34, v35, v36, v22, v27, 78, 0, "child enable flag %ld out of sync with parent %ld", v32, self->_cachingEnabled, v46);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v41, v42, v43, v44, &v46, v50, 16);
    }

    while (v8);
  }

  return self->_cachingEnabled;
}

- (void)setCachingEnabled:(BOOL)a3
{
  v6 = a3;
  v35 = *MEMORY[0x277D85DE8];
  self->_cachingEnabled = a3;
  updated = objc_msgSend_p_resourceUpdateFlag(self, a2, v3, v4, v5);
  objc_msgSend_p_updateResourceUpdateFlags_(self, v9, v10, v11, v12, updated);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = self->_childCacheObjects;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v15, v16, v17, &v30, v34, 16);
  if (v18)
  {
    v19 = *v31;
    do
    {
      v20 = 0;
      do
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v13);
        }

        objc_opt_class();
        v21 = TSUDynamicCast();
        objc_msgSend_setCachingEnabled_(v21, v22, v23, v24, v25, v6, v30);

        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v26, v27, v28, v29, &v30, v34, 16);
    }

    while (v18);
  }
}

- (id)resourceAtIndex:(unint64_t)a3
{
  if (objc_msgSend_count(self->_dynamicResources, a2, v3, v4, v5) <= a3)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DSceneRenderCacheObject resourceAtIndex:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSceneRenderCacheObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 98, 0, "index out of bounds %lu %@", a3, self->_dynamicResources);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v28 = objc_msgSend_objectAtIndexedSubscript_(self->_dynamicResources, v8, v9, v10, v11, a3);
  if (!v28)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v29, v30, v31, "[TSCH3DSceneRenderCacheObject resourceAtIndex:]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSceneRenderCacheObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v40, v41, v42, v33, v38, 101, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
  }

  return v28;
}

- (id)resourceAtIndex:(unint64_t)a3 created:(BOOL *)a4 ifAbsent:(id)a5
{
  v9 = a5;
  if (a4)
  {
    *a4 = 0;
  }

  dynamicResources = self->_dynamicResources;
  v14 = objc_msgSend_null(MEMORY[0x277CBEB68], v8, v10, v11, v12);
  v15 = dynamicResources;
  v16 = v14;
  v21 = objc_msgSend_count(v15, v17, v18, v19, v20);
  if (v21 < a3 + 1)
  {
    v26 = a3 - v21 + 1;
    do
    {
      objc_msgSend_addObject_(v15, v22, v23, v24, v25, v16);
      --v26;
    }

    while (v26);
  }

  v31 = objc_msgSend_objectAtIndexedSubscript_(self->_dynamicResources, v27, v28, v29, v30, a3);
  v36 = objc_msgSend_null(MEMORY[0x277CBEB68], v32, v33, v34, v35);
  isEqual = objc_msgSend_isEqual_(v31, v37, v38, v39, v40, v36);

  if (isEqual)
  {
    if (v9)
    {
      v42 = v9[2](v9);

      updated = objc_msgSend_p_resourceUpdateFlag(self, v43, v44, v45, v46);
      objc_msgSend_setUpdate_(v42, v48, v49, v50, v51, updated);
      objc_msgSend_replaceObjectAtIndex_withObject_(self->_dynamicResources, v52, v53, v54, v55, a3, v42);
      if (a4)
      {
        *a4 = 1;
      }
    }

    else
    {

      v42 = 0;
    }
  }

  else
  {
    v42 = v31;
  }

  return v42;
}

- (id)childCacheObjectAtIndex:(unint64_t)a3
{
  childCacheObjects = self->_childCacheObjects;
  v9 = objc_msgSend_null(MEMORY[0x277CBEB68], a2, v3, v4, v5);
  v10 = childCacheObjects;
  v11 = v9;
  v16 = objc_msgSend_count(v10, v12, v13, v14, v15);
  if (v16 < a3 + 1)
  {
    v21 = a3 - v16 + 1;
    do
    {
      objc_msgSend_addObject_(v10, v17, v18, v19, v20, v11);
      --v21;
    }

    while (v21);
  }

  v26 = objc_msgSend_objectAtIndexedSubscript_(self->_childCacheObjects, v22, v23, v24, v25, a3);
  v31 = objc_msgSend_null(MEMORY[0x277CBEB68], v27, v28, v29, v30);
  isEqual = objc_msgSend_isEqual_(v26, v32, v33, v34, v35, v31);

  if (isEqual)
  {
    v41 = objc_msgSend_cacheObject(TSCH3DSceneRenderCacheObject, v37, v38, v39, v40);

    v46 = objc_msgSend_cachingEnabled(self, v42, v43, v44, v45);
    objc_msgSend_setCachingEnabled_(v41, v47, v48, v49, v50, v46);
    objc_msgSend_replaceObjectAtIndex_withObject_(self->_childCacheObjects, v51, v52, v53, v54, a3, v41);
  }

  else
  {
    v41 = v26;
  }

  return v41;
}

@end