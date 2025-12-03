@interface TSTTableDataListItemCache
+ (id)cache;
- (TSTTableDataListItemCache)init;
- (void)removeAllObjects;
- (void)setObject:(id)object forKey:(unsigned int)key;
@end

@implementation TSTTableDataListItemCache

+ (id)cache
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TSTTableDataListItemCache)init
{
  v14.receiver = self;
  v14.super_class = TSTTableDataListItemCache;
  v4 = [(TSTTableDataListItemCache *)&v14 init];
  if (v4)
  {
    v5 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x277CCAB00], v2, 1282, 514, v3);
    data = v4->_data;
    v4->_data = v5;

    v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9, v10);
    strongRefs = v4->_strongRefs;
    v4->_strongRefs = v11;
  }

  return v4;
}

- (void)setObject:(id)object forKey:(unsigned int)key
{
  if (objc_msgSend_count(self->_data, a2, object, *&key, v4) <= 0x3FF)
  {
    objc_msgSend_setObject_forKey_(self->_data, v8, object, key, v9);
    strongRefs = self->_strongRefs;

    objc_msgSend_addObject_(strongRefs, v10, object, v11, v12);
  }
}

- (void)removeAllObjects
{
  objc_msgSend_removeAllObjects(self->_data, a2, v2, v3, v4);
  strongRefs = self->_strongRefs;

  objc_msgSend_removeAllObjects(strongRefs, v6, v7, v8, v9);
}

@end