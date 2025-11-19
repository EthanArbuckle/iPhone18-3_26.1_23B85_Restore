@interface TSTTableSortOrder
+ (TSTTableSortOrder)sortOrderWithBaseColumn:(TSUModelColumnIndex)a3 direction:(int)a4 type:(int)a5;
+ (TSTTableSortOrder)sortOrderWithRules:(id)a3 type:(int)a4;
- (BOOL)containsAnyRulesInBaseColumns:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSIndexSet)baseColumnIndices;
- (TSTTableSortOrder)initWithRules:(id)a3 type:(int)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromArchive:(const void *)a3;
- (id)sortOrderByAddingRule:(id)a3;
- (id)sortOrderByChangingTypeTo:(int)a3;
- (id)sortOrderByRemovingBaseColumnIndices:(id)a3;
- (id)sortOrderByRemovingRuleAtIndex:(unint64_t)a3;
- (id)sortOrderByReplacingRuleAtIndex:(unint64_t)a3 withRule:(id)a4;
- (id)sortOrderByReplacingRulesWithRules:(id)a3;
- (void)encodeToArchive:(void *)a3;
@end

@implementation TSTTableSortOrder

+ (TSTTableSortOrder)sortOrderWithRules:(id)a3 type:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithRules_type_(v6, v7, v5, v4, v8);

  return v9;
}

+ (TSTTableSortOrder)sortOrderWithBaseColumn:(TSUModelColumnIndex)a3 direction:(int)a4 type:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = objc_alloc(objc_opt_class());
  v11 = objc_msgSend_ruleWithBaseIndex_direction_(TSTTableSortRule, v9, a3._column, v6, v10);
  v19[0] = v11;
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, v19, 1, v13);
  v17 = objc_msgSend_initWithRules_type_(v8, v15, v14, v5, v16);

  return v17;
}

- (TSTTableSortOrder)initWithRules:(id)a3 type:(int)a4
{
  v6 = a3;
  v32.receiver = self;
  v32.super_class = TSTTableSortOrder;
  v7 = [(TSTTableSortOrder *)&v32 init];
  v12 = v7;
  if (v7)
  {
    if (v6)
    {
      v7->_type = a4;
      v13 = objc_msgSend_copy(v6, v8, v9, v10, v11);
    }

    else
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableSortOrder initWithRules:type:]", v10, v11);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableSortOrder.mm", v17, v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 44, 0, "invalid nil value for '%{public}s'", "sortRules");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
      v12->_type = a4;
      v13 = objc_msgSend_array(MEMORY[0x277CBEA60], v25, v26, v27, v28);
    }

    rules = v12->_rules;
    v12->_rules = v13;

    cachedIndexes = v12->_cachedIndexes;
    v12->_cachedIndexes = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, a3, v7, v8);
  rules = self->_rules;
  type = self->_type;

  return objc_msgSend_initWithRules_type_(v9, v10, rules, type, v11);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v10 = v5;
  if (v5 && (type = self->_type, type == objc_msgSend_type(v5, v6, v7, v8, v9)))
  {
    rules = self->_rules;
    v17 = objc_msgSend_rules(v10, v12, v13, v14, v15);
    isEqualToArray = objc_msgSend_isEqualToArray_(rules, v18, v17, v19, v20);
  }

  else
  {
    isEqualToArray = 0;
  }

  return isEqualToArray;
}

- (NSIndexSet)baseColumnIndices
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_cachedIndexes)
  {
    v7 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v3, v4, v5, v6);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = v2->_rules;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v29, v33, 16);
    if (v14)
    {
      v15 = *v30;
      do
      {
        v16 = 0;
        do
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v8);
          }

          v17 = objc_msgSend_baseIndex(*(*(&v29 + 1) + 8 * v16), v10, v11, v12, v13, v29);
          objc_msgSend_addIndex_(v7, v18, v17, v19, v20);
          ++v16;
        }

        while (v14 != v16);
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v29, v33, 16);
      }

      while (v14);
    }

    v21 = objc_alloc(MEMORY[0x277CCAA78]);
    v25 = objc_msgSend_initWithIndexSet_(v21, v22, v7, v23, v24);
    cachedIndexes = v2->_cachedIndexes;
    v2->_cachedIndexes = v25;
  }

  objc_sync_exit(v2);

  v27 = v2->_cachedIndexes;

  return v27;
}

- (id)sortOrderByChangingTypeTo:(int)a3
{
  v3 = *&a3;
  v5 = objc_opt_class();
  rules = self->_rules;

  return objc_msgSend_sortOrderWithRules_type_(v5, v6, rules, v3, v7);
}

- (id)sortOrderByAddingRule:(id)a3
{
  v6 = objc_msgSend_arrayByAddingObject_(self->_rules, a2, a3, v3, v4);
  v7 = objc_opt_class();
  v10 = objc_msgSend_sortOrderWithRules_type_(v7, v8, v6, self->_type, v9);

  return v10;
}

- (id)sortOrderByRemovingRuleAtIndex:(unint64_t)a3
{
  v7 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], a2, self->_rules, v3, v4);
  objc_msgSend_removeObjectAtIndex_(v7, v8, a3, v9, v10);
  v11 = objc_opt_class();
  v14 = objc_msgSend_sortOrderWithRules_type_(v11, v12, v7, self->_type, v13);

  return v14;
}

- (id)sortOrderByReplacingRuleAtIndex:(unint64_t)a3 withRule:(id)a4
{
  v6 = a4;
  v10 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v7, self->_rules, v8, v9);
  if (objc_msgSend_count(v10, v11, v12, v13, v14) <= a3)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTTableSortOrder sortOrderByReplacingRuleAtIndex:withRule:]", v16, v17);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableSortOrder.mm", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 114, 0, "Group Sort Order: trying to replace an object at an index that doesn't exist");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  else
  {
    objc_msgSend_replaceObjectAtIndex_withObject_(v10, v15, a3, v6, v17);
  }

  v29 = objc_opt_class();
  v32 = objc_msgSend_sortOrderWithRules_type_(v29, v30, v10, self->_type, v31);

  return v32;
}

- (id)sortOrderByReplacingRulesWithRules:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v8 = objc_msgSend_sortOrderWithRules_type_(v5, v6, v4, self->_type, v7);

  return v8;
}

- (id)sortOrderByRemovingBaseColumnIndices:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CCAC30];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2213EB7F8;
  v20[3] = &unk_2784648B8;
  v6 = v4;
  v21 = v6;
  v10 = objc_msgSend_predicateWithBlock_(v5, v7, v20, v8, v9);
  v14 = objc_msgSend_filteredArrayUsingPredicate_(self->_rules, v11, v10, v12, v13);
  v15 = objc_opt_class();
  v18 = objc_msgSend_sortOrderWithRules_type_(v15, v16, v14, self->_type, v17);

  return v18;
}

- (BOOL)containsAnyRulesInBaseColumns:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_rules;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v19, v23, 16);
  if (v11)
  {
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = objc_msgSend_baseIndex(*(*(&v19 + 1) + 8 * i), v7, v8, v9, v10, v19);
        if (objc_msgSend_containsIndex_(v4, v15, v14, v16, v17))
        {
          LOBYTE(v11) = 1;
          goto LABEL_11;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v19, v23, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v11;
}

- (id)initFromArchive:(const void *)a3
{
  v7 = *(a3 + 12) != 0;
  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3, v3, v4);
  v11 = *(a3 + 8);
  if (v11 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = *(*(a3 + 5) + v12);
      v14 = [TSTTableSortRule alloc];
      v18 = objc_msgSend_initFromArchive_(v14, v15, v13, v16, v17);
      objc_msgSend_addObject_(v10, v19, v18, v20, v21);

      v12 += 8;
      --v11;
    }

    while (v11);
  }

  v22 = objc_msgSend_initWithRules_type_(self, v8, v10, v7, v9);

  return v22;
}

- (void)encodeToArchive:(void *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = self->_type != 0;
  *(a3 + 4) |= 1u;
  *(a3 + 12) = v4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_rules;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v23, v27, 16);
  if (v10)
  {
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v23 + 1) + 8 * v12);
        v14 = *(a3 + 5);
        if (!v14)
        {
          goto LABEL_11;
        }

        v15 = *(a3 + 8);
        v16 = *v14;
        if (v15 < *v14)
        {
          *(a3 + 8) = v15 + 1;
          objc_msgSend_encodeToArchive_(v13, v7, *&v14[2 * v15 + 2], v8, v9, v23);
          goto LABEL_13;
        }

        if (v16 == *(a3 + 9))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 24));
          v14 = *(a3 + 5);
          v16 = *v14;
        }

        *v14 = v16 + 1;
        v17 = google::protobuf::Arena::CreateMaybeMessage<TST::TableSortOrderArchive_SortRuleArchive>(*(a3 + 3));
        v18 = *(a3 + 8);
        v19 = *(a3 + 5) + 8 * v18;
        *(a3 + 8) = v18 + 1;
        *(v19 + 8) = v17;
        objc_msgSend_encodeToArchive_(v13, v20, v17, v21, v22, v23);
LABEL_13:
        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v23, v27, 16);
    }

    while (v10);
  }
}

@end