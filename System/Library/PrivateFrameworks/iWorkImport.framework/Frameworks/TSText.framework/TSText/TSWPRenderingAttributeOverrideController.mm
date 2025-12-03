@interface TSWPRenderingAttributeOverrideController
- (TSWPRenderingAttributeOverrideController)init;
- (id)overrideWithKey:(id)key forStorage:(id)storage;
- (id)overridesForStorage:(id)storage;
- (void)addOverride:(id)override forStorage:(id)storage;
- (void)removeAllOverridesForStorage:(id)storage;
- (void)removeOverrideWithKey:(id)key forStorage:(id)storage;
- (void)reset;
@end

@implementation TSWPRenderingAttributeOverrideController

- (TSWPRenderingAttributeOverrideController)init
{
  v8.receiver = self;
  v8.super_class = TSWPRenderingAttributeOverrideController;
  v4 = [(TSWPRenderingAttributeOverrideController *)&v8 init];
  if (v4)
  {
    v5 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], v2, v3);
    map = v4->_map;
    v4->_map = v5;
  }

  return v4;
}

- (void)reset
{
  obj = self->_map;
  objc_sync_enter(obj);
  objc_msgSend_removeAllObjects(self->_map, v3, v4);
  objc_sync_exit(obj);
}

- (void)addOverride:(id)override forStorage:(id)storage
{
  overrideCopy = override;
  storageCopy = storage;
  v7 = self->_map;
  objc_sync_enter(v7);
  objc_opt_class();
  v10 = objc_msgSend_map(self, v8, v9);
  v12 = objc_msgSend_objectForKey_(v10, v11, storageCopy);
  v13 = TSUCheckedDynamicCast();

  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = objc_msgSend_map(self, v16, v17);
    objc_msgSend_setObject_forKey_(v18, v19, v13, storageCopy);
  }

  v20 = objc_msgSend_key(overrideCopy, v14, v15);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v21, overrideCopy, v20);

  objc_sync_exit(v7);
}

- (void)removeAllOverridesForStorage:(id)storage
{
  storageCopy = storage;
  v4 = self->_map;
  objc_sync_enter(v4);
  objc_msgSend_removeObjectForKey_(self->_map, v5, storageCopy);
  objc_sync_exit(v4);
}

- (void)removeOverrideWithKey:(id)key forStorage:(id)storage
{
  keyCopy = key;
  storageCopy = storage;
  v7 = self->_map;
  objc_sync_enter(v7);
  objc_opt_class();
  v10 = objc_msgSend_map(self, v8, v9);
  v12 = objc_msgSend_objectForKey_(v10, v11, storageCopy);
  v13 = TSUCheckedDynamicCast();
  objc_msgSend_setObject_forKeyedSubscript_(v13, v14, 0, keyCopy);

  objc_sync_exit(v7);
}

- (id)overrideWithKey:(id)key forStorage:(id)storage
{
  keyCopy = key;
  storageCopy = storage;
  v8 = self->_map;
  objc_sync_enter(v8);
  v11 = objc_msgSend_map(self, v9, v10);
  v13 = objc_msgSend_objectForKey_(v11, v12, storageCopy);
  v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, keyCopy);

  objc_sync_exit(v8);

  return v15;
}

- (id)overridesForStorage:(id)storage
{
  storageCopy = storage;
  v5 = self->_map;
  objc_sync_enter(v5);
  v7 = objc_msgSend_objectForKey_(self->_map, v6, storageCopy);
  v10 = objc_msgSend_allValues(v7, v8, v9);

  objc_sync_exit(v5);

  return v10;
}

@end