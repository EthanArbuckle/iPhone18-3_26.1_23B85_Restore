@interface TSWPTopicNumberHints
- (BOOL)isEqual:(id)a3;
- (TSWPTopicNumberHints)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TSWPTopicNumberHints

- (TSWPTopicNumberHints)init
{
  v8.receiver = self;
  v8.super_class = TSWPTopicNumberHints;
  v2 = [(TSWPTopicNumberHints *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAB00]);
    v5 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v3, v4, 512, 0, 0);
    entryForListStyle = v2->_entryForListStyle;
    v2->_entryForListStyle = v5;
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = objc_msgSend_entryForListStyle(self, v6, v7);
      v11 = objc_msgSend_entryForListStyle(v5, v9, v10);
      isEqual = objc_msgSend_isEqual_(v8, v12, v11);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = objc_msgSend_entryForListStyle(self, v5, v6, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v26, v30, 16);
  if (v11)
  {
    v12 = *v27;
    do
    {
      v13 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v26 + 1) + 8 * v13);
        v15 = objc_msgSend_entryForListStyle(self, v9, v10);
        v17 = objc_msgSend_objectForKey_(v15, v16, v14);
        v20 = objc_msgSend_copy(v17, v18, v19);

        v23 = objc_msgSend_entryForListStyle(v4, v21, v22);
        objc_msgSend_setObject_forKey_(v23, v24, v20, v14);

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v26, v30, 16);
    }

    while (v11);
  }

  return v4;
}

@end