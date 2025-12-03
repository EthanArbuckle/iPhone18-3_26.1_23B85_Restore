@interface TSTTextStyleToFontHeightCache
- (TSTTextStyleToFontHeightCache)init;
- (double)heightForTextStyle:(id)style;
- (void)dealloc;
- (void)removeAllObjects;
- (void)setHeight:(double)height forTextStyle:(id)style;
@end

@implementation TSTTextStyleToFontHeightCache

- (TSTTextStyleToFontHeightCache)init
{
  v17.receiver = self;
  v17.super_class = TSTTextStyleToFontHeightCache;
  v2 = [(TSTTextStyleToFontHeightCache *)&v17 init];
  v3 = v2;
  if (v2)
  {
    pthread_rwlock_init(&v2->_rwLock, 0);
    v8 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5, v6, v7);
    textStyleReferences = v3->_textStyleReferences;
    v3->_textStyleReferences = v8;

    v14 = objc_msgSend_dictionary(MEMORY[0x277D812B8], v10, v11, v12, v13);
    textStyleToFontHeight = v3->_textStyleToFontHeight;
    v3->_textStyleToFontHeight = v14;
  }

  return v3;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->_rwLock);
  v3.receiver = self;
  v3.super_class = TSTTextStyleToFontHeightCache;
  [(TSTTextStyleToFontHeightCache *)&v3 dealloc];
}

- (void)setHeight:(double)height forTextStyle:(id)style
{
  pthread_rwlock_wrlock(&self->_rwLock);
  v11 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v7, v8, v9, v10, height);
  objc_msgSend_setObject_forKeyedSubscript_(self->_textStyleToFontHeight, v12, v11, style, v13);

  objc_msgSend_addObject_(self->_textStyleReferences, v14, style, v15, v16);

  pthread_rwlock_unlock(&self->_rwLock);
}

- (double)heightForTextStyle:(id)style
{
  pthread_rwlock_rdlock(&self->_rwLock);
  v8 = objc_msgSend_objectForKeyedSubscript_(self->_textStyleToFontHeight, v5, style, v6, v7);
  v13 = v8;
  if (v8)
  {
    objc_msgSend_tsu_CGFloatValue(v8, v9, v10, v11, v12);
    v15 = v14;
  }

  else
  {
    v15 = -1.0;
  }

  pthread_rwlock_unlock(&self->_rwLock);

  return v15;
}

- (void)removeAllObjects
{
  pthread_rwlock_wrlock(&self->_rwLock);
  objc_msgSend_removeAllObjects(self->_textStyleReferences, v3, v4, v5, v6);
  objc_msgSend_removeAllObjects(self->_textStyleToFontHeight, v7, v8, v9, v10);

  pthread_rwlock_unlock(&self->_rwLock);
}

@end