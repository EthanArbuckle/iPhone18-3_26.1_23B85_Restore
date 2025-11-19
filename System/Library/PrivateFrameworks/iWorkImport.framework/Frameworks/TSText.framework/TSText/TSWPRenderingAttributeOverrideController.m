@interface TSWPRenderingAttributeOverrideController
- (TSWPRenderingAttributeOverrideController)init;
- (id)overrideWithKey:(id)a3 forStorage:(id)a4;
- (id)overridesForStorage:(id)a3;
- (void)addOverride:(id)a3 forStorage:(id)a4;
- (void)removeAllOverridesForStorage:(id)a3;
- (void)removeOverrideWithKey:(id)a3 forStorage:(id)a4;
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

- (void)addOverride:(id)a3 forStorage:(id)a4
{
  v22 = a3;
  v6 = a4;
  v7 = self->_map;
  objc_sync_enter(v7);
  objc_opt_class();
  v10 = objc_msgSend_map(self, v8, v9);
  v12 = objc_msgSend_objectForKey_(v10, v11, v6);
  v13 = TSUCheckedDynamicCast();

  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = objc_msgSend_map(self, v16, v17);
    objc_msgSend_setObject_forKey_(v18, v19, v13, v6);
  }

  v20 = objc_msgSend_key(v22, v14, v15);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v21, v22, v20);

  objc_sync_exit(v7);
}

- (void)removeAllOverridesForStorage:(id)a3
{
  v6 = a3;
  v4 = self->_map;
  objc_sync_enter(v4);
  objc_msgSend_removeObjectForKey_(self->_map, v5, v6);
  objc_sync_exit(v4);
}

- (void)removeOverrideWithKey:(id)a3 forStorage:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = self->_map;
  objc_sync_enter(v7);
  objc_opt_class();
  v10 = objc_msgSend_map(self, v8, v9);
  v12 = objc_msgSend_objectForKey_(v10, v11, v6);
  v13 = TSUCheckedDynamicCast();
  objc_msgSend_setObject_forKeyedSubscript_(v13, v14, 0, v15);

  objc_sync_exit(v7);
}

- (id)overrideWithKey:(id)a3 forStorage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_map;
  objc_sync_enter(v8);
  v11 = objc_msgSend_map(self, v9, v10);
  v13 = objc_msgSend_objectForKey_(v11, v12, v7);
  v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, v6);

  objc_sync_exit(v8);

  return v15;
}

- (id)overridesForStorage:(id)a3
{
  v4 = a3;
  v5 = self->_map;
  objc_sync_enter(v5);
  v7 = objc_msgSend_objectForKey_(self->_map, v6, v4);
  v10 = objc_msgSend_allValues(v7, v8, v9);

  objc_sync_exit(v5);

  return v10;
}

@end