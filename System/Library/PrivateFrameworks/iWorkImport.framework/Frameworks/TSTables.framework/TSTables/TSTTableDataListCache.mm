@interface TSTTableDataListCache
+ (id)cacheWithDataStore:(id)store;
- (TSTTableDataListCache)initWithDataStore:(id)store;
- (TSULocale)locale;
- (id)cellStyleHandleForKey:(unsigned int)key;
- (id)formatForKey:(unsigned int)key;
- (id)stringForKey:(unsigned int)key shouldWrap:(BOOL *)wrap;
- (id)textStyleHandleForKey:(unsigned int)key;
@end

@implementation TSTTableDataListCache

+ (id)cacheWithDataStore:(id)store
{
  storeCopy = store;
  v5 = [self alloc];
  v9 = objc_msgSend_initWithDataStore_(v5, v6, storeCopy, v7, v8);

  return v9;
}

- (TSTTableDataListCache)initWithDataStore:(id)store
{
  storeCopy = store;
  v29.receiver = self;
  v29.super_class = TSTTableDataListCache;
  v6 = [(TSTTableDataListCache *)&v29 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataStore, store);
    v12 = objc_msgSend_cache(TSTTableDataListItemCache, v8, v9, v10, v11);
    formats = v7->_formats;
    v7->_formats = v12;

    v18 = objc_msgSend_cache(TSTTableDataListItemCache, v14, v15, v16, v17);
    cellStyleHandles = v7->_cellStyleHandles;
    v7->_cellStyleHandles = v18;

    v24 = objc_msgSend_cache(TSTTableDataListItemCache, v20, v21, v22, v23);
    textStyleHandles = v7->_textStyleHandles;
    v7->_textStyleHandles = v24;

    v26 = objc_alloc_init(MEMORY[0x277D81210]);
    strings = v7->_strings;
    v7->_strings = v26;
  }

  return v7;
}

- (TSULocale)locale
{
  locale = self->_locale;
  if (!locale)
  {
    v7 = objc_msgSend_documentRoot(self->_dataStore, a2, v2, v3, v4);
    v12 = objc_msgSend_documentLocale(v7, v8, v9, v10, v11);
    v13 = self->_locale;
    self->_locale = v12;

    locale = self->_locale;
  }

  return locale;
}

- (id)formatForKey:(unsigned int)key
{
  v5 = *&key;
  v10 = objc_msgSend_objectForKey_(self->_formats, a2, *&key, v3, v4);
  if (!v10)
  {
    v10 = objc_msgSend_i_formatForDataListKey_(self->_dataStore, v7, v5, v8, v9);
    if (v10)
    {
      objc_msgSend_setObject_forKey_(self->_formats, v11, v10, v5, v12);
    }
  }

  return v10;
}

- (id)cellStyleHandleForKey:(unsigned int)key
{
  v5 = *&key;
  v10 = objc_msgSend_objectForKey_(self->_cellStyleHandles, a2, *&key, v3, v4);
  if (!v10)
  {
    v10 = objc_msgSend_i_cellStyleHandleForDataListKey_(self->_dataStore, v7, v5, v8, v9);
    if (v10)
    {
      objc_msgSend_setObject_forKey_(self->_cellStyleHandles, v11, v10, v5, v12);
    }
  }

  return v10;
}

- (id)textStyleHandleForKey:(unsigned int)key
{
  v5 = *&key;
  v10 = objc_msgSend_objectForKey_(self->_textStyleHandles, a2, *&key, v3, v4);
  if (!v10)
  {
    v10 = objc_msgSend_i_textStyleHandleForDataListKey_(self->_dataStore, v7, v5, v8, v9);
    if (v10)
    {
      objc_msgSend_setObject_forKey_(self->_textStyleHandles, v11, v10, v5, v12);
    }
  }

  return v10;
}

- (id)stringForKey:(unsigned int)key shouldWrap:(BOOL *)wrap
{
  v6 = *&key;
  v43 = 0;
  keyCopy = key;
  v9 = objc_msgSend_objectForKey_(self->_strings, a2, key, wrap, v4);
  v14 = v9;
  if (v9)
  {
    v15 = objc_msgSend_first(v9, v10, v11, v12, v13);
    v20 = objc_msgSend_second(v14, v16, v17, v18, v19);
    HIBYTE(v43) = objc_msgSend_BOOLValue(v20, v21, v22, v23, v24);
  }

  else
  {
    v25 = objc_msgSend_i_stringForDataListKey_outShouldWrap_outIsShared_(self->_dataStore, v10, v6, &v43 + 1, &v43);
    v15 = v25;
    v30 = v43 != 1 || v25 == 0;
    if (!v30 && (objc_msgSend_tsu_isTaggedPointer(v25, v26, v27, v28, v29) & 1) == 0)
    {
      v37 = objc_msgSend_mutableCopy(v15, v31, v32, v33, v34);
      strings = self->_strings;
      if (HIBYTE(v43))
      {
        objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v35, v37, MEMORY[0x277CBEC38], v36);
      }

      else
      {
        objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v35, v37, MEMORY[0x277CBEC28], v36);
      }
      v39 = ;
      objc_msgSend_setObject_forKey_(strings, v40, v39, keyCopy, v41);

      v15 = v37;
    }
  }

  if (wrap)
  {
    *wrap = HIBYTE(v43);
  }

  return v15;
}

@end