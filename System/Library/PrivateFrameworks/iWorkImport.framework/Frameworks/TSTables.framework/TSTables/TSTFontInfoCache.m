@interface TSTFontInfoCache
- (TSTFontInfoCache)initWithName:(id)a3;
- (id).cxx_construct;
- (id)fontInfoForTextStyle:(id)a3;
- (id)fontInfoForTextStyle:(id)a3 withString:(id)a4;
- (id)resolvedTextStyleWithPropertyMap:(id)a3;
- (void)dealloc;
- (void)p_didEnterBackground:(id)a3;
- (void)p_didReceiveMemoryWarning:(id)a3;
@end

@implementation TSTFontInfoCache

- (TSTFontInfoCache)initWithName:(id)a3
{
  v24.receiver = self;
  v24.super_class = TSTFontInfoCache;
  v3 = [(TSTFontInfoCache *)&v24 init];
  v4 = v3;
  if (v3)
  {
    pthread_rwlock_init(&v3->_rwlock, 0);
    v4->_resolvedTextStyleLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7, v8);
    strongReferences = v4->_strongReferences;
    v4->_strongReferences = v9;

    v15 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v11, v12, v13, v14);
    propertyMapToTextStyleMap = v4->_propertyMapToTextStyleMap;
    v4->_propertyMapToTextStyleMap = v15;

    v17 = MEMORY[0x277D811B0];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_221406570;
    v22[3] = &unk_2784649F8;
    v23 = v4;
    objc_msgSend_performWithApplication_(v17, v18, v22, v19, v20);
  }

  return v4;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->_rwlock);
  v3.receiver = self;
  v3.super_class = TSTFontInfoCache;
  [(TSTFontInfoCache *)&v3 dealloc];
}

- (id)fontInfoForTextStyle:(id)a3
{
  v25[0] = a3;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = sub_2210BE30C(&self->_cache.__table_.__bucket_list_.__ptr_, v25);
  if (v5)
  {
    v6 = v5[3];
    pthread_rwlock_unlock(&self->_rwlock);
    v7 = v6;
  }

  else
  {
    pthread_rwlock_unlock(&self->_rwlock);
    if (objc_msgSend_canQuicklyMeasureParagraphStyle_(MEMORY[0x277D80F78], v8, a3, v9, v10))
    {
      pthread_rwlock_wrlock(&self->_rwlock);
      v11 = sub_2210BE30C(&self->_cache.__table_.__bucket_list_.__ptr_, v25);
      if (v11)
      {
        v7 = v11[3];
      }

      else
      {
        v15 = objc_msgSend_textMeasurerBundleForParagraphStyle_(MEMORY[0x277D80F78], v12, a3, v13, v14);
        v16 = [TSTFontInfoCacheEntry alloc];
        v7 = objc_msgSend_initWithTextMeasurerBundle_(v16, v17, v15, v18, v19);
        v25[2] = v25;
        v20 = sub_221406DB0(&self->_cache.__table_.__bucket_list_.__ptr_, v25);
        objc_storeStrong(v20 + 3, v7);
        objc_msgSend_addObject_(self->_strongReferences, v21, a3, v22, v23);
      }

      pthread_rwlock_unlock(&self->_rwlock);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)fontInfoForTextStyle:(id)a3 withString:(id)a4
{
  v9 = a4;
  if (v9)
  {
    v10 = objc_msgSend_fontInfoForTextStyle_(self, v6, a3, v7, v8);
    v15 = v10;
    if (v10)
    {
      v16 = MEMORY[0x277D80F78];
      v17 = objc_msgSend_textMeasurerBundle(v10, v11, v12, v13, v14);
      LODWORD(v16) = objc_msgSend_canQuicklyMeasureString_textMeasurerBundle_(v16, v18, v9, v17, v19);

      if (v16)
      {
        v15 = v15;
        v20 = v15;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v20 = 0;
LABEL_7:

  return v20;
}

- (id)resolvedTextStyleWithPropertyMap:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_resolvedTextStyleLock);
  isVariation = objc_msgSend_objectForKey_(self->_propertyMapToTextStyleMap, v5, v4, v6, v7);
  if (!isVariation)
  {
    v9 = objc_alloc(MEMORY[0x277D80EC8]);
    isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v9, v10, 0, 0, v4, 0);
    objc_msgSend_setObject_forKey_(self->_propertyMapToTextStyleMap, v11, isVariation, v4, v12);
  }

  os_unfair_lock_unlock(&self->_resolvedTextStyleLock);

  return isVariation;
}

- (void)p_didReceiveMemoryWarning:(id)a3
{
  pthread_rwlock_wrlock(&self->_rwlock);
  sub_2211A89A4(&self->_cache);
  pthread_rwlock_unlock(&self->_rwlock);
  os_unfair_lock_lock(&self->_resolvedTextStyleLock);
  objc_msgSend_removeAllObjects(self->_propertyMapToTextStyleMap, v4, v5, v6, v7);

  os_unfair_lock_unlock(&self->_resolvedTextStyleLock);
}

- (void)p_didEnterBackground:(id)a3
{
  pthread_rwlock_wrlock(&self->_rwlock);
  sub_2211A89A4(&self->_cache);
  pthread_rwlock_unlock(&self->_rwlock);
  os_unfair_lock_lock(&self->_resolvedTextStyleLock);
  objc_msgSend_removeAllObjects(self->_propertyMapToTextStyleMap, v4, v5, v6, v7);

  os_unfair_lock_unlock(&self->_resolvedTextStyleLock);
}

- (id).cxx_construct
{
  *(self + 232) = 0u;
  *(self + 216) = 0u;
  *(self + 62) = 1065353216;
  return self;
}

@end