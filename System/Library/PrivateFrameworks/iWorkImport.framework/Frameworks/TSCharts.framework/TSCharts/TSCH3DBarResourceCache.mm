@interface TSCH3DBarResourceCache
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)barWithExtrusionSetting:(const BarExtrusionSetting *)setting;
+ (id)instance;
- (TSCH3DBarResourceCache)init;
- (id)p_barWithExtrusionSetting:(const BarExtrusionSetting *)setting;
@end

@implementation TSCH3DBarResourceCache

+ (id)_singletonAlloc
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___TSCH3DBarResourceCache;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)instance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2761CCEF4;
  block[3] = &unk_27A6B6250;
  block[4] = self;
  if (qword_280A469F0 != -1)
  {
    dispatch_once(&qword_280A469F0, block);
  }

  v2 = qword_280A469E8;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCH3DBarResourceCache allocWithZone:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DBarResourceCache.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 106, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

+ (id)barWithExtrusionSetting:(const BarExtrusionSetting *)setting
{
  size = setting->size;
  hasBottomBevel = setting->hasBottomBevel;
  if (hasBottomBevel || (LODWORD(v3) = 1.0, setting->hasTopBevel))
  {
    if (setting->isStackedBar || (LODWORD(v3) = 1.0, setting->isCylindrical || hasBottomBevel))
    {
      if (size >= 1.0)
      {
LABEL_9:
        *&v3 = setting->size;
      }

      else
      {
        v6 = &dword_2764D6438;
        v7 = 5;
        while (size >= *v6)
        {
          ++v6;
          if (!--v7)
          {
            goto LABEL_9;
          }
        }

        *&v3 = (*v6 + *(v6 - 1)) * 0.5;
      }
    }
  }

  v8 = *&setting->details.crossSection.adaptiveThreshold;
  v17 = *&setting->size;
  v18 = v8;
  v9 = *&setting->details.spine.stride;
  v19 = *&setting->details.spine.bevelHeight;
  LODWORD(v17) = LODWORD(v3);
  v10 = objc_msgSend_instance(self, a2, *&v19, v3, *&v9, v17, v18, v19, v9);
  v15 = objc_msgSend_p_barWithExtrusionSetting_(v10, v11, v12, v13, v14, &v17);

  return v15;
}

- (TSCH3DBarResourceCache)init
{
  v6.receiver = self;
  v6.super_class = TSCH3DBarResourceCache;
  v2 = [(TSCH3DBarResourceCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D81278]);
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

- (id)p_barWithExtrusionSetting:(const BarExtrusionSetting *)setting
{
  v8 = objc_msgSend_keyWithExtrusionSetting_(TSCH3DBarResourceCacheKey, a2, v3, v4, v5);
  v9 = self->_cache;
  objc_sync_enter(v9);
  v15 = objc_msgSend_objectForKey_(self->_cache, v10, v11, v12, v13, v8);
  if (!v15)
  {
    v15 = objc_msgSend_itemWithExtrusionSetting_(TSCH3DBarResourceCacheItem, v14, v16, v17, v18, setting);
    objc_msgSend_setObject_forUncopiedKey_(self->_cache, v19, v20, v21, v22, v15, v8);
  }

  objc_sync_exit(v9);

  if (!v15)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "[TSCH3DBarResourceCache p_barWithExtrusionSetting:]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DBarResourceCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 148, 0, "invalid nil value for '%{public}s'", "item");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
  }

  return v15;
}

@end