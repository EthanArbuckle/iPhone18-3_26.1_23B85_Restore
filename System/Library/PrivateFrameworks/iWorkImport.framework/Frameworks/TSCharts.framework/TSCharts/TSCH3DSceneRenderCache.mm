@interface TSCH3DSceneRenderCache
+ (id)cache;
+ (id)cacheFromScene:(id)scene;
- (TSCH3DSceneRenderCache)init;
- (id)cacheObjectForKey:(id)key cacheID:(id)d created:(BOOL *)created ifAbsent:(id)absent;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)enableCache:(BOOL)cache forKey:(id)key;
- (void)setCacheObject:(id)object forKey:(id)key cacheID:(id)d;
@end

@implementation TSCH3DSceneRenderCache

+ (id)cacheFromScene:(id)scene
{
  sceneCopy = scene;
  v10 = objc_msgSend_mutablePropertiesForType_(sceneCopy, v5, v6, v7, v8, self);
  if (!v10)
  {
    v10 = objc_msgSend_cache(self, v9, v11, v12, v13);
    objc_msgSend_setProperties_forType_(sceneCopy, v14, v15, v16, v17, v10, self);
  }

  return v10;
}

+ (id)cache
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TSCH3DSceneRenderCache)init
{
  v8.receiver = self;
  v8.super_class = TSCH3DSceneRenderCache;
  v2 = [(TSCH3DSceneRenderCache *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    enabledKeys = v2->_enabledKeys;
    v2->_enabledKeys = v3;

    v5 = objc_alloc_init(TSCH3DDictionaryOfDictionary);
    cache = v2->_cache;
    v2->_cache = v5;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, v9, zone);
  v15 = objc_msgSend_init(v10, v11, v12, v13, v14);
  v20 = v15;
  if (v15)
  {
    objc_msgSend_unionSet_(*(v15 + 8), v16, v17, v18, v19, self->_enabledKeys);
    objc_msgSend_addEntriesFromDictionaryOfDictionary_(v20[2], v21, v22, v23, v24, self->_cache);
  }

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSCH3DSceneRenderCache;
  v4 = [(TSCH3DSceneRenderCache *)&v11 description];
  v9 = objc_msgSend_stringWithFormat_(v3, v5, v6, v7, v8, @"%@(enabled %@, cache %@)", v4, self->_enabledKeys, self->_cache);

  return v9;
}

- (void)enableCache:(BOOL)cache forKey:(id)key
{
  cacheCopy = cache;
  keyCopy = key;
  enabledKeys = self->_enabledKeys;
  v11 = keyCopy;
  if (cacheCopy)
  {
    objc_msgSend_addObject_(enabledKeys, keyCopy, v7, v8, v9, keyCopy);
  }

  else
  {
    objc_msgSend_removeObject_(enabledKeys, keyCopy, v7, v8, v9, keyCopy);
  }
}

- (id)cacheObjectForKey:(id)key cacheID:(id)d created:(BOOL *)created ifAbsent:(id)absent
{
  keyCopy = key;
  dCopy = d;
  absentCopy = absent;
  if (created)
  {
    *created = 0;
  }

  v17 = objc_msgSend_cacheEnabledForKey_(self, v12, v14, v15, v16, keyCopy);
  v22 = objc_msgSend_objectForFirstLevelKey_secondLevelKey_(self->_cache, v18, v19, v20, v21, keyCopy, dCopy);
  v27 = v22;
  if (v22)
  {
    if (v17 == objc_msgSend_cachingEnabled(v22, v23, v24, v25, v26))
    {
LABEL_15:
      if (v17 != objc_msgSend_cachingEnabled(v27, v28, v29, v30, v31))
      {
        v44 = MEMORY[0x277D81150];
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "[TSCH3DSceneRenderCache cacheObjectForKey:cacheID:created:ifAbsent:]");
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSceneRenderCache.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v51, v52, v53, v54, v45, v50, 164, 0, "enabled flag mismatch between cache %@ and object %@", self, v27);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58);
      }

      goto LABEL_19;
    }

    if (absentCopy)
    {
      objc_msgSend_removeObjectForFirstLevelKey_secondLevelKey_(self->_cache, v28, v29, v30, v31, keyCopy, dCopy);
      if (created)
      {
        *created = 1;
      }

      if ((v17 & 1) == 0)
      {
        objc_msgSend_flushCache(v27, v32, v33, v34, v35);
      }

      objc_msgSend_setCachingEnabled_(v27, v32, v33, v34, v35, v17);
      goto LABEL_15;
    }

LABEL_18:
    v27 = 0;
    goto LABEL_19;
  }

  if (!absentCopy)
  {
    goto LABEL_18;
  }

  v27 = absentCopy[2](absentCopy);
  objc_msgSend_setCachingEnabled_(v27, v36, v37, v38, v39, v17);
  if (created)
  {
    *created = 1;
  }

  if (v27)
  {
    goto LABEL_15;
  }

LABEL_19:

  return v27;
}

- (void)setCacheObject:(id)object forKey:(id)key cacheID:(id)d
{
  objectCopy = object;
  keyCopy = key;
  dCopy = d;
  v14 = objc_msgSend_cacheEnabledForKey_(self, v10, v11, v12, v13, keyCopy);
  v19 = objc_msgSend_cacheObjectForKey_cacheID_created_ifAbsent_(self, v15, v16, v17, v18, keyCopy, dCopy, 0, 0);
  v24 = v19;
  if (v19 && v14 != objc_msgSend_cachingEnabled(v19, v20, v21, v22, v23))
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "[TSCH3DSceneRenderCache setCacheObject:forKey:cacheID:]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSceneRenderCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v33, v34, v35, v26, v31, 178, 0, "enabled flag must always match between cache %@ and object %@", self, objectCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
  }

  if (v24 != objectCopy)
  {
    objc_msgSend_setCachingEnabled_(objectCopy, v20, v21, v22, v23, v14);
    objc_msgSend_setObject_forFirstLevelKey_secondLevelKey_(self->_cache, v40, v41, v42, v43, objectCopy, keyCopy, dCopy);
  }
}

@end