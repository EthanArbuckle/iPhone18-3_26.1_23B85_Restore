@interface KNLiveVideoSourceUsageEntry
- (BOOL)isEqual:(id)a3;
- (KNLiveVideoSourceUsageEntry)initWithArchivedBackgroundKinds:(id)a3;
- (KNLiveVideoSourceUsageEntry)initWithMessage:(const void *)a3 unarchiver:(id)a4;
- (id)entryByMergingEntry:(id)a3;
- (unint64_t)hash;
- (void)saveToMessage:(void *)a3 archiver:(id)a4;
@end

@implementation KNLiveVideoSourceUsageEntry

- (KNLiveVideoSourceUsageEntry)initWithArchivedBackgroundKinds:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = KNLiveVideoSourceUsageEntry;
  v7 = [(KNLiveVideoSourceUsageEntry *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(v4, v5, v6);
    archivedBackgroundKinds = v7->_archivedBackgroundKinds;
    v7->_archivedBackgroundKinds = v8;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    v7 = TSUDynamicCast();
    if (v7)
    {
      v8 = objc_msgSend_archivedBackgroundKinds(self, v5, v6);
      v11 = objc_msgSend_archivedBackgroundKinds(v7, v9, v10);
      isEqual = objc_msgSend_isEqual_(v8, v12, v11);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_archivedBackgroundKinds(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (id)entryByMergingEntry:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_archivedBackgroundKinds(self, v5, v6);
  v10 = objc_msgSend_archivedBackgroundKinds(v4, v8, v9);
  v12 = objc_msgSend_setByAddingObjectsFromSet_(v7, v11, v10);

  v13 = [KNLiveVideoSourceUsageEntry alloc];
  v15 = objc_msgSend_initWithArchivedBackgroundKinds_(v13, v14, v12);

  return v15;
}

- (KNLiveVideoSourceUsageEntry)initWithMessage:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v29.receiver = self;
  v29.super_class = KNLiveVideoSourceUsageEntry;
  v7 = [(KNLiveVideoSourceUsageEntry *)&v29 init];
  if (v7)
  {
    v9 = objc_alloc(MEMORY[0x277CBEB58]);
    v10 = *(a3 + 4);
    if ((v10 & 0x80000000) != 0)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[KNLiveVideoSourceUsageEntry initWithMessage:unarchiver:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSourceUsage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 310, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
      v11 = objc_msgSend_initWithCapacity_(v9, v28, 0);
    }

    else
    {
      v11 = objc_msgSend_initWithCapacity_(v9, v8, v10);
    }

    v13 = v11;
    v14 = *(a3 + 4);
    if (v14)
    {
      v15 = *(a3 + 3);
      v16 = 4 * v14;
      do
      {
        v17 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v12, *v15);
        objc_msgSend_addObject_(v13, v18, v17);

        ++v15;
        v16 -= 4;
      }

      while (v16);
    }

    archivedBackgroundKinds = v7->_archivedBackgroundKinds;
    v7->_archivedBackgroundKinds = v13;
  }

  return v7;
}

- (void)saveToMessage:(void *)a3 archiver:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_archivedBackgroundKinds(self, a2, a3, a4);
  v8 = objc_msgSend_allObjects(v5, v6, v7);
  v10 = objc_msgSend_sortedArrayUsingSelector_(v8, v9, sel_compare_);

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = v10;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v37, v41, 16);
  if (v15)
  {
    v16 = *v38;
    do
    {
      v17 = 0;
      do
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = objc_msgSend_integerValue(*(*(&v37 + 1) + 8 * v17), v13, v14, v37);
        v19 = v18;
        if (v18 >= 0x80000000)
        {
          v22 = MEMORY[0x277D81150];
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[KNLiveVideoSourceUsageEntry saveToMessage:archiver:]");
          v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSourceUsage.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 328, 0, "Out-of-bounds type assignment was clamped to max");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
          v19 = 0x7FFFFFFF;
        }

        else if (v18 <= 0xFFFFFFFF7FFFFFFFLL)
        {
          v29 = MEMORY[0x277D81150];
          v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[KNLiveVideoSourceUsageEntry saveToMessage:archiver:]");
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSourceUsage.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 328, 0, "Out-of-bounds type assignment was clamped to min");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
          v19 = 0x80000000;
        }

        v20 = *(a3 + 4);
        if (v20 == *(a3 + 5))
        {
          v21 = v20 + 1;
          sub_275D98CF0(a3 + 4, v20 + 1);
          *(*(a3 + 3) + 4 * v20) = v19;
        }

        else
        {
          *(*(a3 + 3) + 4 * v20) = v19;
          v21 = v20 + 1;
        }

        *(a3 + 4) = v21;
        ++v17;
      }

      while (v15 != v17);
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v37, v41, 16);
      v15 = v36;
    }

    while (v36);
  }
}

@end