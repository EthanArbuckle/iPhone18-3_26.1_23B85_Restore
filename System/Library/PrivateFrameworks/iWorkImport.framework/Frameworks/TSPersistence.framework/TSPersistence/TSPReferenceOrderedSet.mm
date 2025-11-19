@interface TSPReferenceOrderedSet
- (BOOL)addItem:(id)a3;
- (BOOL)containsItem:(id)a3;
- (BOOL)removeItem:(id)a3;
- (TSPReferenceOrderedSet)initWithCapacity:(unint64_t)a3;
- (id)allObjects;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)enumerateItemsUsingBlock:(id)a3;
- (void)minusSet:(id)a3;
- (void)unionSet:(id)a3;
@end

@implementation TSPReferenceOrderedSet

- (TSPReferenceOrderedSet)initWithCapacity:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = TSPReferenceOrderedSet;
  result = [(TSPReferenceOrderedSet *)&v5 init];
  if (result)
  {
    result->_capacity = a3;
  }

  return result;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v9 = objc_msgSend_initWithCapacity_(v7, v8, self->_capacity);
  v11 = v9;
  if (v9)
  {
    *(v9 + 56) = self->_count;
    v12 = objc_msgSend_mutableCopyWithZone_(self->_items, v10, a3);
    v13 = v11[2];
    v11[2] = v12;

    v15 = objc_msgSend_mutableCopyWithZone_(self->_objectsIndexSet, v14, a3);
    v16 = v11[3];
    v11[3] = v15;

    v18 = objc_msgSend_mutableCopyWithZone_(self->_removedObjectsIndexSet, v17, a3);
    v19 = v11[4];
    v11[4] = v18;

    v21 = objc_msgSend_mutableCopyWithZone_(self->_lazyReferencesIndexSet, v20, a3);
    v22 = v11[5];
    v11[5] = v21;

    v24 = objc_msgSend_mutableCopyWithZone_(self->_removedLazyReferencesIndexSet, v23, a3);
    v25 = v11[6];
    v11[6] = v24;
  }

  return v11;
}

- (BOOL)containsItem:(id)a3
{
  if (!a3 || !self->_count)
  {
    return 0;
  }

  v5 = objc_msgSend_tsp_identifier(a3, a2, a3);
  if ((objc_msgSend_tsp_isLazyReference(a3, v6, v7) & 1) == 0)
  {
    if ((objc_msgSend_containsIndex_(self->_removedObjectsIndexSet, v8, v5) & 1) == 0)
    {
      v10 = 24;
      goto LABEL_9;
    }

    return 0;
  }

  if (objc_msgSend_containsIndex_(self->_removedLazyReferencesIndexSet, v8, v5))
  {
    return 0;
  }

  v10 = 40;
LABEL_9:
  v12 = *(&self->super.isa + v10);

  return objc_msgSend_containsIndex_(v12, v9, v5);
}

- (BOOL)addItem:(id)a3
{
  if (!a3)
  {
    LOBYTE(v14) = 0;
    return v14;
  }

  if (!self->_items)
  {
    v5 = objc_alloc(MEMORY[0x277CBEB18]);
    v7 = objc_msgSend_initWithCapacity_(v5, v6, self->_capacity);
    items = self->_items;
    self->_items = v7;
  }

  v9 = objc_msgSend_tsp_identifier(a3, a2, a3);
  if (objc_msgSend_tsp_isLazyReference(a3, v10, v11))
  {
    if (objc_msgSend_containsIndex_(self->_lazyReferencesIndexSet, v12, v9))
    {
      v14 = objc_msgSend_containsIndex_(self->_removedLazyReferencesIndexSet, v13, v9);
      if (v14)
      {
        objc_msgSend_removeIndex_(self->_removedLazyReferencesIndexSet, v15, v9);
LABEL_12:
        ++self->_count;
LABEL_19:
        LOBYTE(v14) = 1;
        return v14;
      }

      return v14;
    }

    objc_msgSend_addObject_(self->_items, v13, a3);
    ++self->_count;
    lazyReferencesIndexSet = self->_lazyReferencesIndexSet;
    if (!lazyReferencesIndexSet)
    {
      v20 = objc_alloc(MEMORY[0x277CCAB58]);
      v22 = objc_msgSend_initWithIndex_(v20, v21, v9);
      objectsIndexSet = self->_lazyReferencesIndexSet;
      self->_lazyReferencesIndexSet = v22;
LABEL_18:

      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if ((objc_msgSend_containsIndex_(self->_objectsIndexSet, v12, v9) & 1) == 0)
  {
    objc_msgSend_addObject_(self->_items, v16, a3);
    ++self->_count;
    lazyReferencesIndexSet = self->_objectsIndexSet;
    if (!lazyReferencesIndexSet)
    {
      v24 = objc_alloc(MEMORY[0x277CCAB58]);
      v26 = objc_msgSend_initWithIndex_(v24, v25, v9);
      objectsIndexSet = self->_objectsIndexSet;
      self->_objectsIndexSet = v26;
      goto LABEL_18;
    }

LABEL_16:
    objc_msgSend_addIndex_(lazyReferencesIndexSet, v18, v9);
    goto LABEL_19;
  }

  v14 = objc_msgSend_containsIndex_(self->_removedObjectsIndexSet, v16, v9);
  if (v14)
  {
    objc_msgSend_removeIndex_(self->_removedObjectsIndexSet, v17, v9);
    goto LABEL_12;
  }

  return v14;
}

- (BOOL)removeItem:(id)a3
{
  v3 = self;
  LOBYTE(self) = 0;
  if (!a3 || !v3->_count)
  {
    return self;
  }

  v5 = objc_msgSend_tsp_identifier(a3, a2, a3);
  if (objc_msgSend_tsp_isLazyReference(a3, v6, v7))
  {
    if ((objc_msgSend_containsIndex_(v3->_removedLazyReferencesIndexSet, v8, v5) & 1) == 0)
    {
      LODWORD(self) = objc_msgSend_containsIndex_(v3->_lazyReferencesIndexSet, v9, v5);
      if (self)
      {
        removedLazyReferencesIndexSet = v3->_removedLazyReferencesIndexSet;
        if (!removedLazyReferencesIndexSet)
        {
          v12 = objc_alloc(MEMORY[0x277CCAB58]);
          v14 = objc_msgSend_initWithIndex_(v12, v13, v5);
          removedObjectsIndexSet = v3->_removedLazyReferencesIndexSet;
          v3->_removedLazyReferencesIndexSet = v14;
LABEL_14:

          goto LABEL_15;
        }

        goto LABEL_12;
      }

      return self;
    }

LABEL_9:
    LOBYTE(self) = 0;
    return self;
  }

  if (objc_msgSend_containsIndex_(v3->_removedObjectsIndexSet, v8, v5))
  {
    goto LABEL_9;
  }

  LODWORD(self) = objc_msgSend_containsIndex_(v3->_objectsIndexSet, v16, v5);
  if (self)
  {
    removedLazyReferencesIndexSet = v3->_removedObjectsIndexSet;
    if (!removedLazyReferencesIndexSet)
    {
      v17 = objc_alloc(MEMORY[0x277CCAB58]);
      v19 = objc_msgSend_initWithIndex_(v17, v18, v5);
      removedObjectsIndexSet = v3->_removedObjectsIndexSet;
      v3->_removedObjectsIndexSet = v19;
      goto LABEL_14;
    }

LABEL_12:
    objc_msgSend_addIndex_(removedLazyReferencesIndexSet, v10, v5);
LABEL_15:
    --v3->_count;
    LOBYTE(self) = 1;
  }

  return self;
}

- (void)enumerateItemsUsingBlock:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && self->_count)
  {
    v24 = 0;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = self->_items;
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v20, v25, 16);
    if (v7)
    {
      v10 = v7;
      v11 = *v21;
LABEL_5:
      v12 = 0;
      while (1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        v14 = objc_msgSend_tsp_identifier(v13, v8, v9, v20);
        v18 = (objc_msgSend_tsp_isLazyReference(v13, v15, v16) & 1) != 0 ? objc_msgSend_containsIndex_(self->_removedLazyReferencesIndexSet, v17, v14) : objc_msgSend_containsIndex_(self->_removedObjectsIndexSet, v17, v14);
        if ((v18 & 1) == 0)
        {
          v4[2](v4, v13, &v24);
        }

        if (v24)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v20, v25, 16);
          if (v10)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)unionSet:(id)a3
{
  v5 = objc_msgSend_count(a3, a2, a3);
  if (v5)
  {
    if (!self->_items)
    {
      v7 = v5;
      v8 = objc_alloc(MEMORY[0x277CBEB18]);
      if (self->_capacity <= v7)
      {
        v10 = objc_msgSend_initWithCapacity_(v8, v9, v7);
      }

      else
      {
        v10 = objc_msgSend_initWithCapacity_(v8, v9, self->_capacity);
      }

      items = self->_items;
      self->_items = v10;
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_276AC6704;
    v12[3] = &unk_27A6E6B38;
    v12[4] = self;
    objc_msgSend_enumerateItemsUsingBlock_(a3, v6, v12);
  }
}

- (void)minusSet:(id)a3
{
  if (self->_count)
  {
    v5 = objc_msgSend_count(a3, a2, a3);
    if (v5)
    {
      if (self->_count <= v5)
      {
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_276AC6814;
        v7[3] = &unk_27A6E6B60;
        v7[4] = self;
        v7[5] = a3;
        objc_msgSend_enumerateItemsUsingBlock_(self, v6, v7);
      }

      else
      {
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = sub_276AC6808;
        v8[3] = &unk_27A6E6B38;
        v8[4] = self;
        objc_msgSend_enumerateItemsUsingBlock_(a3, v6, v8);
      }
    }
  }
}

- (id)allObjects
{
  v4 = objc_msgSend_count(self, a2, v2);
  if (v4)
  {
    v5 = v4;
    v6 = objc_alloc(MEMORY[0x277CBEB18]);
    v8 = objc_msgSend_initWithCapacity_(v6, v7, v5);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_276AC6938;
    v12[3] = &unk_27A6E6B38;
    v9 = v8;
    v13 = v9;
    objc_msgSend_enumerateItemsUsingBlock_(self, v10, v12);
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

@end