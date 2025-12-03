@interface TSTGroupingColumnList
- (BOOL)hasPrefix:(id)prefix;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFunctionallyEquivalent:(id)equivalent;
- (BOOL)isGroupingColumnUidsEqual:(id)equal;
- (BOOL)p_isEqual:(id)equal;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)groupingColumnUidList;
- (TSTGroupingColumnList)init;
- (TSTGroupingColumnList)initWithArchive:(const void *)archive;
- (TSTGroupingColumnList)initWithGroupingColumns:(id)columns;
- (id)copyWithZone:(_NSZone *)zone;
- (id)groupingColumnForColumnUID:(TSKUIDStruct)d;
- (id)ruleAtGroupLevel:(unsigned __int8)level;
- (id)ruleAtIndex:(unint64_t)index;
- (void)addRule:(id)rule atGroupLevel:(unsigned __int8)level;
- (void)addRule:(id)rule atIndex:(unint64_t)index;
- (void)appendRules:(id)rules;
- (void)changeGroupingTypeForGroupLevel:(unsigned __int8)level toType:(int64_t)type;
- (void)changeGroupingTypeForRuleIndex:(unint64_t)index toType:(int64_t)type;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)moveRuleFromGroupLevel:(unsigned __int8)level toLevel:(unsigned __int8)toLevel;
- (void)moveRuleFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)removeRuleAtGroupLevel:(unsigned __int8)level;
- (void)removeRuleAtIndex:(unint64_t)index;
- (void)replaceRuleAtGroupLevel:(unsigned __int8)level withRule:(id)rule;
- (void)replaceRuleAtIndex:(unint64_t)index withRule:(id)rule;
@end

@implementation TSTGroupingColumnList

- (TSTGroupingColumnList)init
{
  v6.receiver = self;
  v6.super_class = TSTGroupingColumnList;
  v2 = [(TSTGroupingColumnList *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    groupingColumns = v2->_groupingColumns;
    v2->_groupingColumns = v3;
  }

  return v2;
}

- (TSTGroupingColumnList)initWithGroupingColumns:(id)columns
{
  v40 = *MEMORY[0x277D85DE8];
  columnsCopy = columns;
  v9 = objc_msgSend_init(self, v5, v6, v7, v8);
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277CBEB18]);
    v15 = objc_msgSend_count(columnsCopy, v11, v12, v13, v14);
    v19 = objc_msgSend_initWithCapacity_(v10, v16, v15, v17, v18);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v20 = columnsCopy;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v35, v39, 16);
    if (v26)
    {
      v27 = *v36;
      do
      {
        v28 = 0;
        do
        {
          if (*v36 != v27)
          {
            objc_enumerationMutation(v20);
          }

          v29 = objc_msgSend_copy(*(*(&v35 + 1) + 8 * v28), v22, v23, v24, v25, v35);
          objc_msgSend_addObject_(v19, v30, v29, v31, v32);

          ++v28;
        }

        while (v26 != v28);
        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v35, v39, 16);
      }

      while (v26);
    }

    groupingColumns = v9->_groupingColumns;
    v9->_groupingColumns = v19;
  }

  return v9;
}

- (id)ruleAtIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    if (objc_msgSend_count(self->_groupingColumns, a2, index, v3, v4) <= index)
    {
      v6 = 0;
    }

    else
    {
      v6 = objc_msgSend_objectAtIndexedSubscript_(self->_groupingColumns, v10, index, v11, v12);
    }
  }

  return v6;
}

- (id)ruleAtGroupLevel:(unsigned __int8)level
{
  if (level)
  {
    levelCopy = level;
    if (objc_msgSend_count(self->_groupingColumns, a2, level, v3, v4) >= level)
    {
      v11 = objc_msgSend_objectAtIndexedSubscript_(self->_groupingColumns, v8, (levelCopy - 1), v9, v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)groupingColumnForColumnUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_groupingColumns;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v19, v23, 16);
  if (v7)
  {
    v8 = *v20;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v19 + 1) + 8 * v9);
      if (objc_msgSend_columnUid(v10, v11, v12, v13, v14, v19) == lower && v15 == upper)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v17, &v19, v23, 16);
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v9 = objc_msgSend_mutableCopy(self->_groupingColumns, v5, v6, v7, v8);
  v10 = v4[1];
  v4[1] = v9;

  return v4;
}

- (BOOL)p_isEqual:(id)equal
{
  equalCopy = equal;
  v9 = objc_msgSend_count(self, v5, v6, v7, v8);
  if (v9 == objc_msgSend_count(equalCopy, v10, v11, v12, v13))
  {
    v21 = objc_msgSend_count(self, v14, v15, v16, v17);
    if (v21)
    {
      v22 = 1;
      v23 = 1;
      do
      {
        v24 = objc_msgSend_ruleAtGroupLevel_(self, v18, v23, v19, v20);
        v28 = objc_msgSend_objectAtIndex_(equalCopy, v25, v22 - 1, v26, v27);
        isEqual = objc_msgSend_isEqual_(v24, v29, v28, v30, v31);

        v22 = ++v23;
        if (v23 <= v21)
        {
          v33 = isEqual;
        }

        else
        {
          v33 = 0;
        }
      }

      while ((v33 & 1) != 0);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    v10 = objc_msgSend_groupingColumns(v5, v6, v7, v8, v9);
    isEqual = objc_msgSend_p_isEqual_(self, v11, v10, v12, v13);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      isEqual = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    v5 = TSUDynamicCast();
    isEqual = objc_msgSend_p_isEqual_(self, v15, v5, v16, v17);
  }

LABEL_7:
  return isEqual;
}

- (BOOL)isGroupingColumnUidsEqual:(id)equal
{
  equalCopy = equal;
  v9 = objc_msgSend_count(self, v5, v6, v7, v8);
  if (v9 != objc_msgSend_count(equalCopy, v10, v11, v12, v13))
  {
LABEL_9:
    v39 = 0;
    goto LABEL_10;
  }

  v21 = objc_msgSend_count(self, v14, v15, v16, v17);
  if (v21)
  {
    v22 = 1;
    while (1)
    {
      v23 = objc_msgSend_ruleAtGroupLevel_(self, v18, v22, v19, v20);
      v27 = objc_msgSend_ruleAtGroupLevel_(equalCopy, v24, v22, v25, v26);
      v32 = objc_msgSend_groupingColumnUid(v23, v28, v29, v30, v31);
      v34 = v33;
      if (v32 != objc_msgSend_groupingColumnUid(v27, v33, v35, v36, v37) || v34 != v38)
      {
        break;
      }

      if (++v22 > v21)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_9;
  }

LABEL_7:
  v39 = 1;
LABEL_10:

  return v39;
}

- (BOOL)isFunctionallyEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  v9 = objc_msgSend_count(self, v5, v6, v7, v8);
  if (v9 != objc_msgSend_count(equivalentCopy, v10, v11, v12, v13))
  {
LABEL_10:
    v48 = 0;
    goto LABEL_11;
  }

  v21 = objc_msgSend_count(self, v14, v15, v16, v17);
  if (v21)
  {
    v22 = 1;
    while (1)
    {
      v23 = objc_msgSend_ruleAtGroupLevel_(self, v18, v22, v19, v20);
      v27 = objc_msgSend_ruleAtGroupLevel_(equivalentCopy, v24, v22, v25, v26);
      v32 = objc_msgSend_groupingType(v23, v28, v29, v30, v31);
      if (v32 != objc_msgSend_groupingType(v27, v33, v34, v35, v36))
      {
        break;
      }

      v41 = objc_msgSend_columnUid(v23, v37, v38, v39, v40);
      v43 = v42;
      if (v41 != objc_msgSend_columnUid(v27, v42, v44, v45, v46) || v43 != v47)
      {
        break;
      }

      if (++v22 > v21)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_10;
  }

LABEL_8:
  v48 = 1;
LABEL_11:

  return v48;
}

- (BOOL)hasPrefix:(id)prefix
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_groupingColumns(prefix, a2, prefix, v3, v4);
  v11 = objc_msgSend_count(self, v7, v8, v9, v10);
  if (v11 >= objc_msgSend_count(v6, v12, v13, v14, v15))
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = v6;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v32, v36, 16);
    if (v22)
    {
      v23 = *v33;
      v24 = 1;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(v17);
          }

          v26 = *(*(&v32 + 1) + 8 * i);
          v27 = objc_msgSend_ruleAtGroupLevel_(self, v19, v24, v20, v21, v32);
          LOBYTE(v26) = objc_msgSend_isEqual_(v27, v28, v26, v29, v30);

          if ((v26 & 1) == 0)
          {
            v16 = 0;
            goto LABEL_13;
          }

          ++v24;
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v32, v36, 16);
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v16 = 1;
LABEL_13:
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)addRule:(id)rule atIndex:(unint64_t)index
{
  ruleCopy = rule;
  if (objc_msgSend_count(self->_groupingColumns, v6, v7, v8, v9) < index)
  {
    index = objc_msgSend_count(self->_groupingColumns, v10, v11, v12, v13);
  }

  v14 = objc_msgSend_mutableCopy(self->_groupingColumns, v10, v11, v12, v13);
  objc_msgSend_insertObject_atIndex_(v14, v15, ruleCopy, index, v16);
  groupingColumns = self->_groupingColumns;
  self->_groupingColumns = v14;
}

- (void)removeRuleAtIndex:(unint64_t)index
{
  if (objc_msgSend_count(self->_groupingColumns, a2, index, v3, v4) > index)
  {
    v11 = objc_msgSend_mutableCopy(self->_groupingColumns, v7, v8, v9, v10);
    objc_msgSend_removeObjectAtIndex_(v11, v12, index, v13, v14);
    groupingColumns = self->_groupingColumns;
    self->_groupingColumns = v11;
  }
}

- (void)moveRuleFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  toIndexCopy = toIndex;
  indexCopy = 0x7FFFFFFFFFFFFFFFLL;
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    indexCopy = index;
    if (objc_msgSend_count(self->_groupingColumns, a2, index, toIndex, v4) < index)
    {
      indexCopy = objc_msgSend_count(self->_groupingColumns, a2, v8, toIndex, v4);
    }
  }

  v9 = objc_msgSend_ruleAtIndex_(self, a2, indexCopy, toIndex, v4);
  if (indexCopy != toIndexCopy && v9)
  {
    v27 = v9;
    v14 = objc_msgSend_mutableCopy(self->_groupingColumns, v10, v11, v12, v13);
    objc_msgSend_removeObjectAtIndex_(v14, v15, indexCopy, v16, v17);
    if (objc_msgSend_count(v14, v18, v19, v20, v21) < toIndexCopy)
    {
      toIndexCopy = objc_msgSend_count(v14, v22, v23, v24, v25);
    }

    objc_msgSend_insertObject_atIndex_(v14, v22, v27, toIndexCopy, v25);
    groupingColumns = self->_groupingColumns;
    self->_groupingColumns = v14;

    v9 = v27;
  }
}

- (void)appendRules:(id)rules
{
  rulesCopy = rules;
  v8 = objc_msgSend_mutableCopy(self->_groupingColumns, v4, v5, v6, v7);
  v13 = objc_msgSend_groupingColumns(rulesCopy, v9, v10, v11, v12);
  objc_msgSend_addObjectsFromArray_(v8, v14, v13, v15, v16);

  groupingColumns = self->_groupingColumns;
  self->_groupingColumns = v8;
}

- (void)changeGroupingTypeForRuleIndex:(unint64_t)index toType:(int64_t)type
{
  v8 = objc_msgSend_ruleAtIndex_(self, a2, index, type, v4);
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v8)
    {
      v30 = v8;
      v13 = objc_msgSend_groupingType(v8, v9, v10, v11, v12) == type;
      v8 = v30;
      if (!v13)
      {
        v14 = [TSTGroupingColumn alloc];
        v19 = objc_msgSend_groupingColumnUid(v30, v15, v16, v17, v18);
        v21 = v20;
        v25 = objc_msgSend_columnUid(v30, v20, v22, v23, v24);
        v27 = objc_msgSend_initWithGroupingColumnUid_columnUid_groupingType_(v14, v26, v19, v21, v25, v26, type);
        objc_msgSend_replaceRuleAtIndex_withRule_(self, v28, index, v27, v29);

        v8 = v30;
      }
    }
  }
}

- (void)replaceRuleAtIndex:(unint64_t)index withRule:(id)rule
{
  ruleCopy = rule;
  v10 = objc_msgSend_mutableCopy(self->_groupingColumns, v6, v7, v8, v9);
  objc_msgSend_replaceObjectAtIndex_withObject_(v10, v11, index, ruleCopy, v12);
  groupingColumns = self->_groupingColumns;
  self->_groupingColumns = v10;
}

- (void)addRule:(id)rule atGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  ruleCopy = rule;
  if (!levelCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTGroupingColumnList addRule:atGroupLevel:]", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupingColumnList.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 257, 0, "Can't call this on root level");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  objc_msgSend_addRule_atIndex_(self, v6, ruleCopy, levelCopy - 1, v8);
}

- (void)removeRuleAtGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  if (!level)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupingColumnList removeRuleAtGroupLevel:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupingColumnList.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 262, 0, "Can't call this on root level");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  MEMORY[0x2821F9670](self, sel_removeRuleAtIndex_, levelCopy - 1, v3, v4);
}

- (void)moveRuleFromGroupLevel:(unsigned __int8)level toLevel:(unsigned __int8)toLevel
{
  toLevelCopy = toLevel;
  levelCopy = level;
  if (level)
  {
    if (toLevel)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupingColumnList moveRuleFromGroupLevel:toLevel:]", toLevel, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupingColumnList.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 267, 0, "Can't call this on root level");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
    if (toLevelCopy)
    {
      goto LABEL_6;
    }
  }

  v19 = MEMORY[0x277D81150];
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupingColumnList moveRuleFromGroupLevel:toLevel:]", toLevel, v4);
  v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupingColumnList.mm", v22, v23);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 268, 0, "Can't call this on root level");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
LABEL_6:

  MEMORY[0x2821F9670](self, sel_moveRuleFromIndex_toIndex_, levelCopy - 1, toLevelCopy - 1, v4);
}

- (void)changeGroupingTypeForGroupLevel:(unsigned __int8)level toType:(int64_t)type
{
  levelCopy = level;
  if (!level)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupingColumnList changeGroupingTypeForGroupLevel:toType:]", type, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupingColumnList.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 273, 0, "Can't call this on root level");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  MEMORY[0x2821F9670](self, sel_changeGroupingTypeForRuleIndex_toType_, levelCopy - 1, type, v4);
}

- (void)replaceRuleAtGroupLevel:(unsigned __int8)level withRule:(id)rule
{
  levelCopy = level;
  ruleCopy = rule;
  if (!levelCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTGroupingColumnList replaceRuleAtGroupLevel:withRule:]", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupingColumnList.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 278, 0, "Can't call this on root level");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  objc_msgSend_replaceRuleAtIndex_withRule_(self, v6, levelCopy - 1, ruleCopy, v8);
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)groupingColumnUidList
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x4812000000;
  v13 = sub_221148044;
  v14 = sub_221148068;
  *__p = 0u;
  v16 = 0u;
  groupingColumns = self->_groupingColumns;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_221148080;
  v9[3] = &unk_27845FAE8;
  v9[4] = &v10;
  objc_msgSend_enumerateObjectsUsingBlock_(groupingColumns, a3, v9, v3, v4);
  v7 = v11;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_221086EBC(retstr, v7[6], v7[7], (v7[7] - v7[6]) >> 4);
  _Block_object_dispose(&v10, 8);
  result = __p[1];
  if (__p[1])
  {
    *&v16 = __p[1];
    operator delete(__p[1]);
  }

  return result;
}

- (TSTGroupingColumnList)initWithArchive:(const void *)archive
{
  v18.receiver = self;
  v18.super_class = TSTGroupingColumnList;
  v4 = [(TSTGroupingColumnList *)&v18 init];
  if (v4)
  {
    v5 = objc_opt_new();
    v6 = *(archive + 6);
    if (v6 >= 1)
    {
      v7 = 8;
      do
      {
        v8 = [TSTGroupingColumn alloc];
        v15 = objc_msgSend_initWithArchive_(v8, v9, *(*(archive + 4) + v7), v10, v11);
        if (v15)
        {
          objc_msgSend_addObject_(v5, v12, v15, v13, v14);
        }

        v7 += 8;
        --v6;
      }

      while (v6);
    }

    groupingColumns = v4->_groupingColumns;
    v4->_groupingColumns = v5;
  }

  return v4;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  v28 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_groupingColumns;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v23, v27, 16);
  if (v11)
  {
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        v15 = *(archive + 4);
        if (!v15)
        {
          goto LABEL_11;
        }

        v16 = *(archive + 6);
        v17 = *v15;
        if (v16 < *v15)
        {
          *(archive + 6) = v16 + 1;
          objc_msgSend_encodeToArchive_archiver_(v14, v9, *&v15[2 * v16 + 2], archiverCopy, v10, v23);
          goto LABEL_13;
        }

        if (v17 == *(archive + 7))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 16));
          v15 = *(archive + 4);
          v17 = *v15;
        }

        *v15 = v17 + 1;
        v18 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupColumnArchive>(*(archive + 2));
        v19 = *(archive + 6);
        v20 = *(archive + 4) + 8 * v19;
        *(archive + 6) = v19 + 1;
        *(v20 + 8) = v18;
        objc_msgSend_encodeToArchive_archiver_(v14, v21, v18, archiverCopy, v22, v23);
LABEL_13:
        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v23, v27, 16);
    }

    while (v11);
  }
}

@end