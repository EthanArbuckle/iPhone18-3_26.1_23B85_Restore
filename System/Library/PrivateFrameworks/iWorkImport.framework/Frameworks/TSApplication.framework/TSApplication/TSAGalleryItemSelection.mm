@interface TSAGalleryItemSelection
- (BOOL)isEqual:(id)equal;
- (TSAGalleryItemSelection)initWithItems:(id)items displayedItem:(id)item;
- (id)UUIDDescription;
- (id)description;
- (unint64_t)hash;
@end

@implementation TSAGalleryItemSelection

- (TSAGalleryItemSelection)initWithItems:(id)items displayedItem:(id)item
{
  itemsCopy = items;
  itemCopy = item;
  if (!itemCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSAGalleryItemSelection initWithItems:displayedItem:]", v9);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryItemSelection.m", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 29, 0, "Invalid parameter not satisfying: %{public}s", "displayedItem != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
    goto LABEL_5;
  }

  if ((objc_msgSend_containsObject_(itemsCopy, v8, itemCopy, v9) & 1) == 0)
  {
LABEL_5:
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSAGalleryItemSelection initWithItems:displayedItem:]", v12);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryItemSelection.m", v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 30, 0, "Invalid parameter not satisfying: %{public}s", "(displayedItem != nil) && [items containsObject:displayedItem]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
  }

  v34.receiver = self;
  v34.super_class = TSAGalleryItemSelection;
  v31 = [(TSAGalleryItemSelection *)&v34 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_displayedItem, item);
    objc_storeStrong(&v32->_items, items);
  }

  return v32;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v8 = objc_msgSend_displayedItem(self, v5, v6, v7);
  v12 = objc_msgSend_items(self, v9, v10, v11);
  v15 = objc_msgSend_stringWithFormat_(v3, v13, @"<%@ %p displayedItem=%@ selectedItems=%@>", v14, v4, self, v8, v12);

  return v15;
}

- (id)UUIDDescription
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v7 = objc_msgSend_items(self, v4, v5, v6);
  v11 = objc_msgSend_count(v7, v8, v9, v10);
  v14 = objc_msgSend_initWithCapacity_(v3, v12, v11, v13);

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v18 = objc_msgSend_items(self, v15, v16, v17);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v51, v55, 16);
  if (v20)
  {
    v21 = v20;
    v22 = *v52;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v52 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v51 + 1) + 8 * i);
        v25 = MEMORY[0x277CCACA8];
        v26 = objc_opt_class();
        v30 = objc_msgSend_objectUUIDPath(v24, v27, v28, v29);
        v33 = objc_msgSend_stringWithFormat_(v25, v31, @"<%@ %p item=%@>", v32, v26, self, v30);
        objc_msgSend_addObject_(v14, v34, v33, v35);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v36, &v51, v55, 16);
    }

    while (v21);
  }

  v37 = MEMORY[0x277CCACA8];
  v38 = objc_opt_class();
  v42 = objc_msgSend_displayedItem(self, v39, v40, v41);
  v46 = objc_msgSend_objectUUIDPath(v42, v43, v44, v45);
  v49 = objc_msgSend_stringWithFormat_(v37, v47, @"<%@ %p displayedItem=%@ selectedItems=%@>", v48, v38, self, v46, v14);

  return v49;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5)
  {
    v9 = objc_msgSend_displayedItem(self, v6, v7, v8);
    v16 = objc_msgSend_displayedItem(v5, v10, v11, v12);
    if (v9 == v16)
    {
      v18 = objc_msgSend_items(self, v13, v14, v15);
      v22 = objc_msgSend_items(v5, v19, v20, v21);
      isEqual = objc_msgSend_isEqual_(v18, v23, v22, v24);
    }

    else
    {
      isEqual = 0;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v5 = objc_msgSend_displayedItem(self, a2, v2, v3);
  v9 = objc_msgSend_hash(v5, v6, v7, v8);
  v13 = objc_msgSend_items(self, v10, v11, v12);
  v17 = objc_msgSend_hash(v13, v14, v15, v16);

  return v17 ^ v9;
}

@end