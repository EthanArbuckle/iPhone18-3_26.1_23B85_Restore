@interface TSTTableGroupSortOrderUID
+ (id)groupSortOrderWithRules:(id)rules withTableInfo:(id)info;
- (BOOL)containsAnyRulesInColumnUIDList:(const void *)list;
- (TSTTableGroupSortOrderUID)initWithGroupRules:(id)rules withTableInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)groupSortOrderByRemovingColumnUIDs:(const void *)ds tableInfo:(id)info;
- (id)groupSortOrderByReplacingRuleAtIndex:(unint64_t)index withRule:(id)rule withTableInfo:(id)info;
- (id)groupSortOrderWithTableInfo:(id)info;
- (id)groupSortRulesForLevel:(unsigned __int8)level tableInfo:(id)info;
- (id)initFromArchive:(const void *)archive;
- (void)encodeToArchive:(void *)archive;
- (void)sortRulesWithTableInfo:(id)info;
@end

@implementation TSTTableGroupSortOrderUID

+ (id)groupSortOrderWithRules:(id)rules withTableInfo:(id)info
{
  rulesCopy = rules;
  infoCopy = info;
  v7 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_initWithGroupRules_withTableInfo_(v7, v8, rulesCopy, infoCopy, v9);

  return v10;
}

- (TSTTableGroupSortOrderUID)initWithGroupRules:(id)rules withTableInfo:(id)info
{
  rulesCopy = rules;
  infoCopy = info;
  v19.receiver = self;
  v19.super_class = TSTTableGroupSortOrderUID;
  v12 = [(TSTTableGroupSortOrderUID *)&v19 init];
  if (v12)
  {
    if (rulesCopy)
    {
      v13 = objc_msgSend_copy(rulesCopy, v8, v9, v10, v11);
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEA60]);
    }

    v14 = v13;
    objc_storeStrong(&v12->_groupSortRules, v13);

    if (infoCopy)
    {
      objc_msgSend_sortRulesWithTableInfo_(v12, v15, infoCopy, v16, v17);
    }
  }

  return v12;
}

- (id)groupSortOrderWithTableInfo:(id)info
{
  v49 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v43 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7, v8);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v13 = objc_msgSend_groupSortRules(self, v9, v10, v11, v12);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v44, v48, 16);
  if (v19)
  {
    v20 = *v45;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v45 != v20)
        {
          objc_enumerationMutation(v13);
        }

        v22 = *(*(&v44 + 1) + 8 * i);
        v23 = objc_msgSend_translator(infoCopy, v15, v16, v17, v18);
        v28 = objc_msgSend_columnUID(v22, v24, v25, v26, v27);
        v31 = objc_msgSend_baseColumnIndexForColumnUID_(v23, v29, v28, v29, v30);

        v36 = objc_msgSend_columnUID(v22, v32, v33, v34, v35);
        v37 = v15 == *" column" && v36 == *"category column";
        if (v37 || v31 != 0x7FFF)
        {
          objc_msgSend_addObject_(v43, v15, v22, v17, v18);
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v44, v48, 16);
    }

    while (v19);
  }

  v38 = objc_alloc(objc_opt_class());
  v41 = objc_msgSend_initWithGroupRules_withTableInfo_(v38, v39, v43, infoCopy, v40);

  return v41;
}

- (id)groupSortOrderByRemovingColumnUIDs:(const void *)ds tableInfo:(id)info
{
  v52 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v6 = MEMORY[0x277CBEB18];
  v11 = objc_msgSend_groupSortOrder(infoCopy, v7, v8, v9, v10);
  v16 = objc_msgSend_groupSortRules(v11, v12, v13, v14, v15);
  v20 = objc_msgSend_arrayWithArray_(v6, v17, v16, v18, v19);

  v25 = *ds;
  v26 = *(ds + 1);
  while (v25 != v26)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v27 = objc_msgSend_groupSortOrder(infoCopy, v21, v22, v23, v24, 0);
    v32 = objc_msgSend_groupSortRules(v27, v28, v29, v30, v31);

    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v47, v51, 16);
    if (v38)
    {
      v39 = *v48;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v48 != v39)
          {
            objc_enumerationMutation(v32);
          }

          v41 = *(*(&v47 + 1) + 8 * i);
          if (*v25 == objc_msgSend_columnUID(v41, v34, v35, v36, v37) && v25[1] == v34)
          {
            objc_msgSend_removeObject_(v20, v34, v41, v36, v37);
          }
        }

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v47, v51, 16);
      }

      while (v38);
    }

    v25 += 2;
  }

  v42 = objc_alloc(objc_opt_class());
  v45 = objc_msgSend_initWithGroupRules_withTableInfo_(v42, v43, v20, infoCopy, v44);

  return v45;
}

- (id)groupSortOrderByReplacingRuleAtIndex:(unint64_t)index withRule:(id)rule withTableInfo:(id)info
{
  ruleCopy = rule;
  infoCopy = info;
  v13 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v10, self->_groupSortRules, v11, v12);
  if (objc_msgSend_count(v13, v14, v15, v16, v17) <= index)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTTableGroupSortOrderUID groupSortOrderByReplacingRuleAtIndex:withRule:withTableInfo:]", v19, v20);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableGroupSortOrderUID.mm", v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 74, 0, "Group Sort Order: trying to replace an object at an index that doesn't exist");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  else
  {
    objc_msgSend_replaceObjectAtIndex_withObject_(v13, v18, index, ruleCopy, v20);
  }

  v32 = objc_opt_class();
  v35 = objc_msgSend_groupSortOrderWithRules_withTableInfo_(v32, v33, v13, infoCopy, v34);

  return v35;
}

- (id)initFromArchive:(const void *)archive
{
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, archive, v3, v4);
  v10 = *(archive + 6);
  if (v10 >= 1)
  {
    v11 = 8;
    do
    {
      v12 = *(*(archive + 4) + v11);
      v13 = [TSTTableGroupSortRuleUID alloc];
      v17 = objc_msgSend_initFromArchive_(v13, v14, v12, v15, v16);
      objc_msgSend_addObject_(v9, v18, v17, v19, v20);

      v11 += 8;
      --v10;
    }

    while (v10);
  }

  v21 = objc_msgSend_initWithGroupRules_withTableInfo_(self, v7, v9, 0, v8);

  return v21;
}

- (void)encodeToArchive:(void *)archive
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = self->_groupSortRules;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v22, v26, 16);
  if (v9)
  {
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = *(archive + 4);
        if (!v13)
        {
          goto LABEL_11;
        }

        v14 = *(archive + 6);
        v15 = *v13;
        if (v14 < *v13)
        {
          *(archive + 6) = v14 + 1;
          objc_msgSend_encodeToArchive_(v12, v6, *&v13[2 * v14 + 2], v7, v8, v22);
          goto LABEL_13;
        }

        if (v15 == *(archive + 7))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 16));
          v13 = *(archive + 4);
          v15 = *v13;
        }

        *v13 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive>(*(archive + 2));
        v17 = *(archive + 6);
        v18 = *(archive + 4) + 8 * v17;
        *(archive + 6) = v17 + 1;
        *(v18 + 8) = v16;
        objc_msgSend_encodeToArchive_(v12, v19, v16, v20, v21, v22);
LABEL_13:
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v22, v26, 16);
    }

    while (v9);
  }
}

- (void)sortRulesWithTableInfo:(id)info
{
  infoCopy = info;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = 0; i != 11; ++i)
  {
    v8 = objc_msgSend_groupSortRulesForLevel_tableInfo_(self, v4, i, infoCopy, v5);
    objc_msgSend_addObjectsFromArray_(v6, v9, v8, v10, v11);
  }

  groupSortRules = self->_groupSortRules;
  self->_groupSortRules = v6;
}

- (BOOL)containsAnyRulesInColumnUIDList:(const void *)list
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *list;
  v4 = *(list + 1);
  if (*list != v4)
  {
    v6 = 0uLL;
    do
    {
      v19 = v6;
      v20 = v6;
      v17 = v6;
      v18 = v6;
      v7 = self->_groupSortRules;
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v17, v21, 16);
      if (v13)
      {
        v14 = *v18;
        while (2)
        {
          v15 = 0;
          do
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(v7);
            }

            if (*v3 == objc_msgSend_columnUID(*(*(&v17 + 1) + 8 * v15), v9, v10, v11, v12) && v3[1] == v9)
            {

              return 1;
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v17, v21, 16);
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v3 += 2;
      v6 = 0uLL;
    }

    while (v3 != v4);
  }

  return 0;
}

- (id)groupSortRulesForLevel:(unsigned __int8)level tableInfo:(id)info
{
  infoCopy = info;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_22169D0F4;
  v26 = sub_22169D104;
  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = objc_msgSend_groupSortRules(self, v7, v8, v9, v10);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_22169D10C;
  v18[3] = &unk_278468468;
  v12 = infoCopy;
  levelCopy = level;
  v19 = v12;
  v20 = &v22;
  objc_msgSend_enumerateObjectsUsingBlock_(v11, v13, v18, v14, v15);

  v16 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8);
  groupSortRules = self->_groupSortRules;

  return objc_msgSend_initWithGroupRules_withTableInfo_(v9, v10, groupSortRules, 0, v11);
}

@end