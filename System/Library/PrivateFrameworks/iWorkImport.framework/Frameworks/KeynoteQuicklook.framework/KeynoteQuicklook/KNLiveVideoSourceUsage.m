@interface KNLiveVideoSourceUsage
- (BOOL)isEqual:(id)a3;
- (BOOL)usesSource:(id)a3 withBackgroundKind:(int64_t)a4;
- (BOOL)usesSourceWithUUID:(id)a3;
- (KNLiveVideoSourceUsage)initWithEntriesForLiveVideoSourceUUIDs:(id)a3;
- (KNLiveVideoSourceUsage)initWithLiveVideoInfos:(id)a3;
- (KNLiveVideoSourceUsage)initWithLiveVideoSourceUUIDMessages:(const void *)a3 entryMessages:(const void *)a4 unarchiver:(id)a5;
- (KNLiveVideoSourceUsage)initWithMergedUsages:(id)a3;
- (id)usedSourcesInContext:(id)a3;
- (unint64_t)hash;
- (void)saveToLiveVideoSourceUUIDMessages:(void *)a3 entryMessages:(void *)a4 archiver:(id)a5;
@end

@implementation KNLiveVideoSourceUsage

- (KNLiveVideoSourceUsage)initWithEntriesForLiveVideoSourceUUIDs:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = KNLiveVideoSourceUsage;
  v7 = [(KNLiveVideoSourceUsage *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(v4, v5, v6);
    entriesForLiveVideoSourceUUIDs = v7->_entriesForLiveVideoSourceUUIDs;
    v7->_entriesForLiveVideoSourceUUIDs = v8;
  }

  return v7;
}

- (KNLiveVideoSourceUsage)initWithLiveVideoInfos:(id)a3
{
  v75 = *MEMORY[0x277D85DE8];
  v67 = a3;
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  v6 = objc_msgSend_count(v67, v4, v5);
  v8 = objc_msgSend_initWithCapacity_(v3, v7, v6);
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v67;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v70, v74, 16);
  if (v12)
  {
    v69 = *v71;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v71 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v70 + 1) + 8 * i);
        v17 = objc_msgSend_i_sourceId(v14, v10, v11);
        if (!v17)
        {
          objc_opt_class();
          v20 = objc_msgSend_context(v14, v18, v19);
          v23 = objc_msgSend_documentRoot(v20, v21, v22);
          v24 = TSUCheckedDynamicCast();

          v27 = objc_msgSend_show(v24, v25, v26);
          v30 = objc_msgSend_theme(v27, v28, v29);
          v33 = objc_msgSend_liveVideoSourceCollection(v30, v31, v32);
          v36 = objc_msgSend_defaultSource(v33, v34, v35);
          v17 = objc_msgSend_objectUUID(v36, v37, v38);

          if (!v17)
          {
            v40 = MEMORY[0x277D81150];
            v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[KNLiveVideoSourceUsage initWithLiveVideoInfos:]");
            v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSourceUsage.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v44, v41, v43, 80, 0, "invalid nil value for '%{public}s'", "defaultLiveVideoSourceUUID");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46);
          }
        }

        v47 = objc_msgSend_i_archivedBackgroundKind(v14, v15, v16);
        v48 = [KNLiveVideoSourceUsageEntry alloc];
        v49 = MEMORY[0x277CBEB98];
        v51 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v50, v47);
        v53 = objc_msgSend_setWithObject_(v49, v52, v51);
        v55 = objc_msgSend_initWithArchivedBackgroundKinds_(v48, v54, v53);

        v57 = objc_msgSend_objectForKeyedSubscript_(v8, v56, v17);
        v59 = v57;
        if (v57)
        {
          v60 = objc_msgSend_entryByMergingEntry_(v57, v58, v55);
        }

        else
        {
          v60 = v55;
        }

        v62 = v60;
        objc_msgSend_setObject_forKeyedSubscript_(v8, v61, v60, v17);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v70, v74, 16);
    }

    while (v12);
  }

  v64 = objc_msgSend_initWithEntriesForLiveVideoSourceUUIDs_(self, v63, v8);
  return v64;
}

- (KNLiveVideoSourceUsage)initWithMergedUsages:(id)a3
{
  v17 = self;
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v19, v23, 16);
  if (v9)
  {
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = objc_msgSend_entriesForLiveVideoSourceUUIDs(*(*(&v19 + 1) + 8 * v11), v7, v8, v17);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = sub_275D974E8;
        v18[3] = &unk_27A6988B0;
        v18[4] = v4;
        objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v12, v13, v18);

        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v19, v23, 16);
    }

    while (v9);
  }

  v15 = objc_msgSend_initWithEntriesForLiveVideoSourceUUIDs_(v17, v14, v4);
  return v15;
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
      v8 = objc_msgSend_entriesForLiveVideoSourceUUIDs(self, v5, v6);
      v11 = objc_msgSend_entriesForLiveVideoSourceUUIDs(v7, v9, v10);
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
  v3 = objc_msgSend_entriesForLiveVideoSourceUUIDs(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (id)usedSourcesInContext:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v39 = objc_msgSend_entriesForLiveVideoSourceUUIDs(self, v4, v5);
  v6 = objc_alloc(MEMORY[0x277CBEB58]);
  v9 = objc_msgSend_count(v39, v7, v8);
  v43 = objc_msgSend_initWithCapacity_(v6, v10, v9);
  objc_opt_class();
  v13 = objc_msgSend_documentRoot(v41, v11, v12);
  v14 = TSUCheckedDynamicCast();

  v40 = v14;
  v17 = objc_msgSend_show(v14, v15, v16);
  v20 = objc_msgSend_theme(v17, v18, v19);
  v23 = objc_msgSend_liveVideoSourceCollection(v20, v21, v22);

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v39;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v44, v48, 16);
  if (v26)
  {
    v27 = *v45;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v45 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = objc_msgSend_sourceWithObjectUUID_(v23, v25, *(*(&v44 + 1) + 8 * i));
        if (v30)
        {
          objc_msgSend_addObject_(v43, v29, v30);
        }

        else
        {
          v31 = MEMORY[0x277D81150];
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[KNLiveVideoSourceUsage usedSourcesInContext:]");
          v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSourceUsage.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 166, 0, "invalid nil value for '%{public}s'", "usedSource", v39);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v44, v48, 16);
    }

    while (v26);
  }

  return v43;
}

- (BOOL)usesSource:(id)a3 withBackgroundKind:(int64_t)a4
{
  v6 = a3;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  objc_opt_class();
  v9 = objc_msgSend_context(v6, v7, v8);
  v12 = objc_msgSend_documentRoot(v9, v10, v11);
  v13 = TSUCheckedDynamicCast();

  v16 = objc_msgSend_show(v13, v14, v15);
  v19 = objc_msgSend_theme(v16, v17, v18);
  v22 = objc_msgSend_liveVideoSourceCollection(v19, v20, v21);

  v25 = objc_msgSend_entriesForLiveVideoSourceUUIDs(self, v23, v24);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_275D97C1C;
  v29[3] = &unk_27A6988D8;
  v29[4] = v22;
  v26 = v6;
  v30 = v26;
  v31 = &v33;
  v32 = a4;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v25, v27, v29);

  LOBYTE(v6) = *(v34 + 24);
  _Block_object_dispose(&v33, 8);

  return v6;
}

- (BOOL)usesSourceWithUUID:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_entriesForLiveVideoSourceUUIDs(self, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, v4);
  v10 = v9 != 0;

  return v10;
}

- (KNLiveVideoSourceUsage)initWithLiveVideoSourceUUIDMessages:(const void *)a3 entryMessages:(const void *)a4 unarchiver:(id)a5
{
  v9 = a5;
  v10 = *(a3 + 2);
  v11 = *(a4 + 2);
  if (v10 == v11)
  {
    v42.receiver = self;
    v42.super_class = KNLiveVideoSourceUsage;
    v12 = [(KNLiveVideoSourceUsage *)&v42 init];
    if (v12)
    {
      v14 = objc_alloc(MEMORY[0x277CBEB38]);
      if ((v10 & 0x80000000) != 0)
      {
        v34 = MEMORY[0x277D81150];
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[KNLiveVideoSourceUsage initWithLiveVideoSourceUUIDMessages:entryMessages:unarchiver:]");
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSourceUsage.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 222, 0, "Out-of-bounds type assignment was clamped to min");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
        v15 = objc_msgSend_initWithCapacity_(v14, v41, 0);
      }

      else
      {
        v15 = objc_msgSend_initWithCapacity_(v14, v13, v10);
      }

      v17 = v15;
      if (v10 >= 1)
      {
        v18 = 8;
        do
        {
          v19 = objc_msgSend_readWeakObjectUUIDReferenceMessage_(v9, v16, *(*(a3 + 2) + v18));
          v20 = [KNLiveVideoSourceUsageEntry alloc];
          v22 = objc_msgSend_initWithMessage_unarchiver_(v20, v21, *(*(a4 + 2) + v18), v9);
          objc_msgSend_setObject_forKeyedSubscript_(v17, v23, v22, v19);

          v18 += 8;
          --v10;
        }

        while (v10);
      }

      entriesForLiveVideoSourceUUIDs = v12->_entriesForLiveVideoSourceUUIDs;
      v12->_entriesForLiveVideoSourceUUIDs = v17;
    }

    self = v12;
    v25 = self;
  }

  else
  {
    if (v11)
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[KNLiveVideoSourceUsage initWithLiveVideoSourceUUIDMessages:entryMessages:unarchiver:]");
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSourceUsage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 215, 0, "If there is a mismatch between live video source UUIDs and usage entries, the usage entries should be empty (i.e. when upgrading from an old version.)");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
    }

    v25 = 0;
  }

  return v25;
}

- (void)saveToLiveVideoSourceUUIDMessages:(void *)a3 entryMessages:(void *)a4 archiver:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v12 = objc_msgSend_count(self->_entriesForLiveVideoSourceUUIDs, v10, v11);
  v14 = objc_msgSend_initWithCapacity_(v9, v13, v12);
  entriesForLiveVideoSourceUUIDs = self->_entriesForLiveVideoSourceUUIDs;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = sub_275D98434;
  v50[3] = &unk_27A6988B0;
  v50[4] = v14;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(entriesForLiveVideoSourceUUIDs, v16, v50);
  objc_msgSend_sortUsingComparator_(v14, v17, &unk_2884D4F70);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v18 = v14;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v46, v51, 16);
  if (v22)
  {
    v23 = *v47;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v47 != v23)
        {
          objc_enumerationMutation(v18);
        }

        v25 = *(*(&v46 + 1) + 8 * i);
        v27 = objc_msgSend_first(v25, v20, v21, v46);
        v28 = *(a3 + 2);
        if (!v28)
        {
          goto LABEL_11;
        }

        v29 = *(a3 + 2);
        v30 = *v28;
        if (v29 >= *v28)
        {
          if (v30 == *(a3 + 3))
          {
LABEL_11:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3);
            v28 = *(a3 + 2);
            v30 = *v28;
          }

          *v28 = v30 + 1;
          v31 = MEMORY[0x277C8F000](*a3);
          v32 = *(a3 + 2);
          v33 = *(a3 + 2) + 8 * v32;
          *(a3 + 2) = v32 + 1;
          *(v33 + 8) = v31;
          objc_msgSend_setWeakReferenceToObjectUUID_message_(v8, v34, v27, v31);
          goto LABEL_13;
        }

        *(a3 + 2) = v29 + 1;
        objc_msgSend_setWeakReferenceToObjectUUID_message_(v8, v26, v27, *&v28[2 * v29 + 2]);
LABEL_13:

        v38 = objc_msgSend_second(v25, v35, v36);
        v39 = *(a4 + 2);
        if (!v39)
        {
          goto LABEL_18;
        }

        v40 = *(a4 + 2);
        v41 = *v39;
        if (v40 < *v39)
        {
          *(a4 + 2) = v40 + 1;
          objc_msgSend_saveToMessage_archiver_(v38, v37, *&v39[2 * v40 + 2], v8);
          goto LABEL_20;
        }

        if (v41 == *(a4 + 3))
        {
LABEL_18:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a4);
          v39 = *(a4 + 2);
          v41 = *v39;
        }

        *v39 = v41 + 1;
        v42 = sub_275E2196C(*a4);
        v43 = *(a4 + 2);
        v44 = *(a4 + 2) + 8 * v43;
        *(a4 + 2) = v43 + 1;
        *(v44 + 8) = v42;
        objc_msgSend_saveToMessage_archiver_(v38, v45, v42, v8);
LABEL_20:
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v20, &v46, v51, 16);
    }

    while (v22);
  }
}

@end