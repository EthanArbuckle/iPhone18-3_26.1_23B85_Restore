@interface TSCH3DDictionaryOfSet
+ (id)dictionary;
+ (id)dictionaryWithMutableDictionaryClass:(Class)a3;
- (TSCH3DDictionaryOfSet)initWithMutableDictionaryClass:(Class)a3;
- (id)description;
- (id)objectsForKey:(id)a3;
- (void)addObject:(id)a3 forKey:(id)a4;
- (void)removeObject:(id)a3 forKey:(id)a4;
@end

@implementation TSCH3DDictionaryOfSet

+ (id)dictionary
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)dictionaryWithMutableDictionaryClass:(Class)a3
{
  v4 = [a1 alloc];
  v9 = objc_msgSend_initWithMutableDictionaryClass_(v4, v5, v6, v7, v8, a3);

  return v9;
}

- (TSCH3DDictionaryOfSet)initWithMutableDictionaryClass:(Class)a3
{
  v8.receiver = self;
  v8.super_class = TSCH3DDictionaryOfSet;
  v4 = [(TSCH3DDictionaryOfSet *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(a3);
    sets = v4->_sets;
    v4->_sets = v5;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSCH3DDictionaryOfSet;
  v4 = [(TSCH3DDictionaryOfSet *)&v11 description];
  v9 = objc_msgSend_stringWithFormat_(v3, v5, v6, v7, v8, @"%@(sets %@)", v4, self->_sets);

  return v9;
}

- (void)addObject:(id)a3 forKey:(id)a4
{
  v24 = a3;
  v6 = a4;
  v12 = objc_msgSend_objectForKey_(self->_sets, v7, v8, v9, v10, v6);
  if (v12)
  {
    objc_msgSend_removeObjectForKey_(self->_sets, v11, v13, v14, v15, v6);
  }

  else
  {
    v12 = objc_msgSend_set(MEMORY[0x277CBEB58], v11, v13, v14, v15);
  }

  objc_msgSend_addObject_(v12, v16, v17, v18, v19, v24);
  objc_msgSend_setObject_forKey_(self->_sets, v20, v21, v22, v23, v12, v6);
}

- (void)removeObject:(id)a3 forKey:(id)a4
{
  v25 = a3;
  v6 = a4;
  v11 = objc_msgSend_objectForKey_(self->_sets, v7, v8, v9, v10, v6);
  v16 = v11;
  if (v11)
  {
    objc_msgSend_removeObject_(v11, v12, v13, v14, v15, v25);
    if (!objc_msgSend_count(v16, v17, v18, v19, v20))
    {
      objc_msgSend_removeObjectForKey_(self->_sets, v21, v22, v23, v24, v6);
    }
  }
}

- (id)objectsForKey:(id)a3
{
  v6 = objc_msgSend_objectForKey_(self->_sets, a2, v3, v4, v5, a3);

  return v6;
}

@end