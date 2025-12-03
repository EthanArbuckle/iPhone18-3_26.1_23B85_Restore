@interface TSCH3DDictionaryOfDictionary
- (TSCH3DDictionaryOfDictionary)init;
- (id)description;
- (id)objectForFirstLevelKey:(id)key secondLevelKey:(id)levelKey;
- (void)addEntriesFromDictionaryOfDictionary:(id)dictionary;
- (void)removeObjectForFirstLevelKey:(id)key secondLevelKey:(id)levelKey;
- (void)setObject:(id)object forFirstLevelKey:(id)key secondLevelKey:(id)levelKey;
@end

@implementation TSCH3DDictionaryOfDictionary

- (TSCH3DDictionaryOfDictionary)init
{
  v6.receiver = self;
  v6.super_class = TSCH3DDictionaryOfDictionary;
  v2 = [(TSCH3DDictionaryOfDictionary *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dictionary = v2->_dictionary;
    v2->_dictionary = v3;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSCH3DDictionaryOfDictionary;
  v4 = [(TSCH3DDictionaryOfDictionary *)&v11 description];
  v9 = objc_msgSend_stringWithFormat_(v3, v5, v6, v7, v8, @"%@(%@)", v4, self->_dictionary);

  return v9;
}

- (void)setObject:(id)object forFirstLevelKey:(id)key secondLevelKey:(id)levelKey
{
  objectCopy = object;
  keyCopy = key;
  levelKeyCopy = levelKey;
  v15 = objc_msgSend_objectForKey_(self->_dictionary, v10, v11, v12, v13, keyCopy);
  if (!v15)
  {
    v15 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v14, v16, v17, v18);
    objc_msgSend_setObject_forKey_(self->_dictionary, v19, v20, v21, v22);
  }

  objc_msgSend_setObject_forKey_(v15, v14, v16, v17, v18, objectCopy, levelKeyCopy);
}

- (id)objectForFirstLevelKey:(id)key secondLevelKey:(id)levelKey
{
  levelKeyCopy = levelKey;
  v11 = objc_msgSend_objectForKey_(self->_dictionary, v7, v8, v9, v10, key);
  v16 = objc_msgSend_objectForKey_(v11, v12, v13, v14, v15, levelKeyCopy);

  return v16;
}

- (void)removeObjectForFirstLevelKey:(id)key secondLevelKey:(id)levelKey
{
  levelKeyCopy = levelKey;
  v10 = objc_msgSend_objectForKey_(self->_dictionary, v6, v7, v8, v9, key);
  objc_msgSend_removeObjectForKey_(v10, v11, v12, v13, v14, levelKeyCopy);
}

- (void)addEntriesFromDictionaryOfDictionary:(id)dictionary
{
  v83 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v72 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v9 = dictionaryCopy[1];
    if (!v9)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCH3DDictionaryOfDictionary addEntriesFromDictionaryOfDictionary:]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSceneRenderCache.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 71, 0, "invalid nil value for '%{public}s'", "other->_dictionary");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
      v9 = v72[1];
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = v9;
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, v26, v27, v28, &v77, v82, 16);
    if (v30)
    {
      v71 = *v78;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v78 != v71)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v77 + 1) + 8 * i);
          v36 = objc_msgSend_objectForKey_(v72[1], v29, v31, v32, v33, v35);
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v37 = v36;
          v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, v39, v40, v41, &v73, v81, 16);
          if (v43)
          {
            v47 = *v74;
            do
            {
              for (j = 0; j != v43; ++j)
              {
                if (*v74 != v47)
                {
                  objc_enumerationMutation(v37);
                }

                v49 = *(*(&v73 + 1) + 8 * j);
                v50 = objc_msgSend_objectForKey_(v37, v42, v44, v45, v46, v49);
                objc_msgSend_setObject_forFirstLevelKey_secondLevelKey_(self, v51, v52, v53, v54, v50, v35, v49);
              }

              v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v42, v44, v45, v46, &v73, v81, 16);
            }

            while (v43);
          }
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, v31, v32, v33, &v77, v82, 16);
      }

      while (v30);
    }
  }

  else
  {
    v55 = MEMORY[0x277D81150];
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCH3DDictionaryOfDictionary addEntriesFromDictionaryOfDictionary:]");
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSceneRenderCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v62, v63, v64, v65, v56, v61, 66, 0, "invalid nil value for '%{public}s'", "other");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
  }
}

@end