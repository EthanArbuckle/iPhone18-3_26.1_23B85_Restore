@interface VFXOrderedDictionary
- (id)allKeys;
- (id)copy;
- (id)description;
- (id)objectAtIndex:(int64_t)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)_setupFrom:(id)a3;
- (void)applyBlock:(id)a3;
- (void)applyFunction:(void *)a3 withContext:(void *)a4;
- (void)dealloc;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation VFXOrderedDictionary

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXOrderedDictionary;
  [(VFXOrderedDictionary *)&v3 dealloc];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v6 = a3;
    objc_msgSend_removeObjectForKey_(self, v7, a4, v8);
    keys = self->_keys;
    if (!keys)
    {
      self->_keys = objc_alloc_init(MEMORY[0x1E695DF70]);
      self->_keyValues = objc_alloc_init(MEMORY[0x1E695DF90]);
      keys = self->_keys;
    }

    objc_msgSend_addObject_(keys, v9, a4, v10);
    objc_msgSend_setObject_forKeyedSubscript_(self->_keyValues, v12, a3, a4);
  }

  else
  {

    objc_msgSend_removeObjectForKey_(self, a2, a4, a4);
  }
}

- (id)objectAtIndex:(int64_t)a3
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(self->_keys, a2, a3, v3);
  keyValues = self->_keyValues;

  return objc_msgSend_objectForKeyedSubscript_(keyValues, v5, v6, v7);
}

- (void)removeObjectForKey:(id)a3
{
  if (objc_msgSend_objectForKey_(self->_keyValues, a2, a3, v3))
  {
    if (objc_msgSend_count(self->_keys, v6, v7, v8) == 1)
    {

      objc_msgSend_removeAllObjects(self, v9, v10, v11);
    }

    else
    {
      objc_msgSend_removeObject_(self->_keys, v9, a3, v11);
      keyValues = self->_keyValues;

      objc_msgSend_removeObjectForKey_(keyValues, v12, a3, v13);
    }
  }
}

- (id)allKeys
{
  v4 = objc_msgSend_copy(self->_keys, a2, v2, v3);

  return v4;
}

- (void)applyFunction:(void *)a3 withContext:(void *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  keys = self->_keys;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(keys, a2, &v16, v20, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(keys);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        v15 = objc_msgSend_objectForKeyedSubscript_(self->_keyValues, v9, v14, v10);
        (a3)(v14, v15, a4);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(keys, v9, &v16, v20, 16);
    }

    while (v11);
  }
}

- (void)applyBlock:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  keys = self->_keys;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(keys, a2, &v14, v18, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(keys);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = objc_msgSend_objectForKeyedSubscript_(self->_keyValues, v7, v12, v8);
        (*(a3 + 2))(a3, v12, v13);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(keys, v7, &v14, v18, 16);
    }

    while (v9);
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  var0 = a3->var0;
  v10 = objc_msgSend_count(self->_keys, a2, a3, a4);
  if (v10 - var0 < a5)
  {
    a5 = v10 - var0;
  }

  if (a5)
  {
    v13 = var0;
    v14 = a4;
    v15 = a5;
    do
    {
      v16 = objc_msgSend_objectAtIndexedSubscript_(self->_keys, v11, v13, v12);
      *v14++ = objc_msgSend_objectForKeyedSubscript_(self->_keyValues, v17, v16, v18);
      ++v13;
      --v15;
    }

    while (v15);
  }

  a3->var0 = a5 + var0;
  a3->var1 = a4;
  a3->var2 = &a3->var2;
  return a5;
}

- (void)_setupFrom:(id)a3
{
  v6 = objc_msgSend_dictionary(a3, a2, a3, v3);
  self->_keyValues = objc_msgSend_mutableCopy(v6, v7, v8, v9);
  v13 = objc_msgSend_keys(a3, v10, v11, v12);
  self->_keys = objc_msgSend_mutableCopy(v13, v14, v15, v16);
}

- (id)copy
{
  v3 = objc_alloc_init(objc_opt_class());
  objc_msgSend__setupFrom_(v3, v4, self, v5);
  return v3;
}

- (id)description
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@: %p\n{\n", v7, v5, self);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  keys = self->_keys;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(keys, v10, &v22, v26, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(keys);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        v18 = objc_msgSend_objectForKeyedSubscript_(self->_keyValues, v12, v17, v13);
        objc_msgSend_appendFormat_(v8, v19, @"    %@ = %@\n", v20, v17, v18);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(keys, v12, &v22, v26, 16);
    }

    while (v14);
  }

  objc_msgSend_appendString_(v8, v12, @"}>", v13);
  return v8;
}

@end