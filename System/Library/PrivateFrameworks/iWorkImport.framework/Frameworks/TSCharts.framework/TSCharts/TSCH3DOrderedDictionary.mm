@interface TSCH3DOrderedDictionary
+ (id)dictionary;
+ (id)dictionaryWithMutableDictionaryStore:(id)store;
- (TSCH3DOrderedDictionary)init;
- (TSCH3DOrderedDictionary)initWithMutableDictionaryStore:(id)store;
- (id)description;
- (id)lastObject;
- (id)objectForKey:(id)key;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation TSCH3DOrderedDictionary

+ (id)dictionary
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3, v4);
  v11 = objc_msgSend_dictionaryWithMutableDictionaryStore_(self, v7, v8, v9, v10, v6);

  return v11;
}

+ (id)dictionaryWithMutableDictionaryStore:(id)store
{
  storeCopy = store;
  v5 = [self alloc];
  v10 = objc_msgSend_initWithMutableDictionaryStore_(v5, v6, v7, v8, v9, storeCopy);

  return v10;
}

- (TSCH3DOrderedDictionary)init
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3, v4);
  v11 = objc_msgSend_initWithMutableDictionaryStore_(self, v7, v8, v9, v10, v6);

  return v11;
}

- (TSCH3DOrderedDictionary)initWithMutableDictionaryStore:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = TSCH3DOrderedDictionary;
  v6 = [(TSCH3DOrderedDictionary *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    keyOrder = v7->_keyOrder;
    v7->_keyOrder = v8;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSCH3DOrderedDictionary;
  v4 = [(TSCH3DOrderedDictionary *)&v11 description];
  v9 = objc_msgSend_stringWithFormat_(v3, v5, v6, v7, v8, @"%@(store %@, order %@)", v4, self->_store, self->_keyOrder);

  return v9;
}

- (id)lastObject
{
  store = self->_store;
  v6 = objc_msgSend_lastKey(self, a2, v2, v3, v4);
  v11 = objc_msgSend_objectForKeyedSubscript_(store, v7, v8, v9, v10, v6);

  return v11;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  store = self->_store;
  if (!store)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCH3DOrderedDictionary objectForKey:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DOrderedDictionary.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 57, 0, "invalid nil value for '%{public}s'", "_store");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    store = self->_store;
  }

  v25 = objc_msgSend_objectForKey_(store, v4, v6, v7, v8, keyCopy);

  return v25;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (!objectCopy)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DOrderedDictionary setObject:forKey:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DOrderedDictionary.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 62, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  store = self->_store;
  if (!store)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DOrderedDictionary setObject:forKey:]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DOrderedDictionary.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 63, 0, "invalid nil value for '%{public}s'", "_store");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
    store = self->_store;
  }

  v42 = objc_msgSend_objectForKey_(store, v6, v8, v9, v10, keyCopy);

  if (!v42)
  {
    keyOrder = self->_keyOrder;
    if (!keyOrder)
    {
      v48 = MEMORY[0x277D81150];
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "[TSCH3DOrderedDictionary setObject:forKey:]");
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DOrderedDictionary.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v55, v56, v57, v58, v49, v54, 65, 0, "invalid nil value for '%{public}s'", "_keyOrder");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61, v62);
      keyOrder = self->_keyOrder;
    }

    objc_msgSend_addObject_(keyOrder, v43, v44, v45, v46, keyCopy);
  }

  objc_msgSend_setObject_forKey_(self->_store, v43, v44, v45, v46, objectCopy, keyCopy);
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  keyOrder = self->_keyOrder;
  if (!keyOrder)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, "[TSCH3DOrderedDictionary countByEnumeratingWithState:objects:count:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DOrderedDictionary.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 73, 0, "invalid nil value for '%{public}s'", "_keyOrder");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    keyOrder = self->_keyOrder;
  }

  return objc_msgSend_countByEnumeratingWithState_objects_count_(keyOrder, a2, v5, v6, v7, state, objects, count);
}

@end