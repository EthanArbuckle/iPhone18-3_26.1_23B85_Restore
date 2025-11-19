@interface TSTPivotRowColumnOrder
+ (void)initialGroupOrderForGroupBy:(id)a3 baseLevel:(unsigned __int8)a4 outAllUids:(void *)a5 outBaseUids:(void *)a6 outSummaryUids:(void *)a7;
- (BOOL)hasValidInfo;
- (BOOL)hasValidUidMap;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)groupUidsGivenUids:(SEL)a3 selectedLevels:(const void *)a4 forDimension:(const void *)a5;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedUidsForDimension:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedUidsFromUids:(SEL)a3 forDimension:(const void *)a4;
- (TSTPivotRowColumnOrder)initWithContext:(id)a3;
- (TSTPivotRowColumnOrder)initWithContext:(id)a3 tableInfo:(id)a4 rowUids:(const void *)a5 columnUids:(const void *)a6;
- (TSTPivotRowColumnOrder)initWithTableInfo:(id)a3;
- (TSTPivotRowColumnOrder)initWithTableInfo:(id)a3 rowUids:(const void *)a4 columnUids:(const void *)a5;
- (TSTTableInfo)tableInfo;
- (const)orderForDimension:(int64_t)a3;
- (const)setOrderUsingViewOrderForDimension:(int64_t)a3;
- (id)_groupBy:(BOOL)a3;
- (id)copyWithContext:(id)a3 tableInfo:(id)a4;
- (id)sortedArrayFromArray:(id)a3 forDimension:(int64_t)a4;
- (id)targetGroupFromIndex:(unsigned int)a3 minSourceLevel:(unsigned __int8)a4 templateUID:(TSKUIDStruct *)a5 forDimension:(int64_t)a6;
- (unint64_t)_numberOfLevels:(BOOL)a3;
- (unsigned)_maxLevel:(BOOL)a3;
- (unsigned)minimumCategoryLevelInRange:(_NSRange)a3 forDimension:(int64_t)a4;
- (void)insertUids:(const void *)a3 beforeUid:(const TSKUIDStruct *)a4 forDimension:(int64_t)a5;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)removeUids:(const void *)a3 forDimension:(int64_t)a4;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setOrder:(const void *)a3 forDimension:(int64_t)a4;
- (void)setTemporaryOrder:(const void *)a3 forDimension:(int64_t)a4;
@end

@implementation TSTPivotRowColumnOrder

- (TSTPivotRowColumnOrder)initWithContext:(id)a3 tableInfo:(id)a4 rowUids:(const void *)a5 columnUids:(const void *)a6
{
  v10 = a3;
  v11 = a4;
  v19.receiver = self;
  v19.super_class = TSTPivotRowColumnOrder;
  v12 = [(TSTPivotRowColumnOrder *)&v19 initWithContext:v10];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_tableInfo, v11);
    if (v11)
    {
      v14 = [TSTColumnRowUIDMap alloc];
      v16 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v14, v15, v10, a6, a5);
      uidMap = v13->_uidMap;
      v13->_uidMap = v16;
    }

    v13->_isRowOrderTemporary = 0;
    v13->_isColumnOrderTemporary = 0;
  }

  return v13;
}

- (TSTPivotRowColumnOrder)initWithTableInfo:(id)a3 rowUids:(const void *)a4 columnUids:(const void *)a5
{
  v8 = a3;
  v13 = objc_msgSend_context(v8, v9, v10, v11, v12);
  v15 = objc_msgSend_initWithContext_tableInfo_rowUids_columnUids_(self, v14, v13, v8, a4, a5);

  return v15;
}

- (TSTPivotRowColumnOrder)initWithTableInfo:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_context(v4, v5, v6, v7, v8);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  __p = 0;
  v14 = 0;
  v15 = 0;
  v11 = objc_msgSend_initWithContext_tableInfo_rowUids_columnUids_(self, v10, v9, v4, &v16, &__p);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  return v11;
}

- (TSTPivotRowColumnOrder)initWithContext:(id)a3
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  __p = 0;
  v6 = 0;
  v7 = 0;
  v3 = objc_msgSend_initWithContext_tableInfo_rowUids_columnUids_(self, a2, a3, 0, &v8, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  return v3;
}

- (id)copyWithContext:(id)a3 tableInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [TSTPivotRowColumnOrder alloc];
  v12 = objc_msgSend_initWithContext_(v8, v9, v6, v10, v11);
  objc_storeWeak((v12 + 72), v7);
  v16 = objc_msgSend_copyWithContext_(self->_uidMap, v13, v6, v14, v15);
  v17 = *(v12 + 80);
  *(v12 + 80) = v16;

  return v12;
}

- (id)_groupBy:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v9 = WeakRetained;
  if (v3)
  {
    objc_msgSend_groupByForRows(WeakRetained, v5, v6, v7, v8);
  }

  else
  {
    objc_msgSend_groupByForColumns(WeakRetained, v5, v6, v7, v8);
  }
  v10 = ;

  return v10;
}

- (unint64_t)_numberOfLevels:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v9 = WeakRetained;
  if (v3)
  {
    v10 = objc_msgSend_numberOfRowLevels(WeakRetained, v5, v6, v7, v8);
  }

  else
  {
    v10 = objc_msgSend_numberOfColumnLevels(WeakRetained, v5, v6, v7, v8);
  }

  v11 = v10;

  return v11;
}

- (unsigned)_maxLevel:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v9 = WeakRetained;
  if (v3)
  {
    v10 = objc_msgSend_maxRowLevel(WeakRetained, v5, v6, v7, v8);
  }

  else
  {
    v10 = objc_msgSend_maxColumnLevel(WeakRetained, v5, v6, v7, v8);
  }

  v11 = v10;

  return v11;
}

+ (void)initialGroupOrderForGroupBy:(id)a3 baseLevel:(unsigned __int8)a4 outAllUids:(void *)a5 outBaseUids:(void *)a6 outSummaryUids:(void *)a7
{
  v11 = a3;
  v16 = objc_msgSend_tableModel(v11, v12, v13, v14, v15);
  v21 = objc_msgSend_columnRowUIDMap(v16, v17, v18, v19, v20);
  v22 = [TSTColumnRowUIDMap alloc];
  v27 = objc_msgSend_context(v16, v23, v24, v25, v26);
  v31 = objc_msgSend_initWithContext_(v22, v28, v27, v29, v30);

  sub_2213FB64C(v32, v11, 1, a4);
  sub_22149C92C(v32, v35, v36, 0, v37, v31, v21, 1u);
  sub_22149C6EC(v32, a5, a6, a7, 0, 0, v37, 0, 1u);

  v32[0] = &unk_2834A7E10;
  sub_2210BDEC0(&v34);
  v38 = &v33;
  sub_2213FB81C(&v38);
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedUidsFromUids:(SEL)a3 forDimension:(const void *)a4
{
  v9 = *(a4 + 1);
  v10 = *a4;
  v11 = (v9 - *a4) >> 4;
  if (v11 > 1)
  {
    result = objc_msgSend_orderedUidsForDimension_(self, v10, a5, v11, v5);
    v15 = a4;
    v13 = *a4;
    v14 = v15[1];
    if (v14 != v13)
    {
      memset(v21, 0, sizeof(v21));
      v22 = 1065353216;
      do
      {
        sub_2210C2B00(v21, v13);
        v13 += 16;
      }

      while (v13 != v14);
      begin = retstr->__begin_;
      end = retstr->__end_;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3321888768;
      v19[2] = sub_2213F9F54;
      v19[3] = &unk_2834A7D88;
      sub_2213FB8DC(v20, v21);
      v18 = sub_2213F9E8C(begin, end, v19);
      if (v18 != retstr->__end_)
      {
        retstr->__end_ = v18;
      }

      sub_2210BDEC0(v20);
      return sub_2210BDEC0(v21);
    }
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;

    return sub_221086EBC(retstr, v10, v9, v11);
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedUidsForDimension:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v12 = objc_msgSend_baseTableModel(WeakRetained, v8, v9, v10, v11);
  v17 = objc_msgSend_columnRowUIDMap(v12, v13, v14, v15, v16);

  v18 = objc_loadWeakRetained(&self->_tableInfo);
  v23 = objc_msgSend_pivotDataModel(v18, v19, v20, v21, v22);
  v28 = objc_msgSend_columnRowUIDMap(v23, v24, v25, v26, v27);

  v32 = objc_msgSend__groupBy_(self, v29, a4 == 0, v30, v31);
  v36 = objc_msgSend__numberOfLevels_(self, v33, a4 == 0, v34, v35);
  sub_2213FB64C(v78, v32, a4 == 0, v36);
  v37 = &OBJC_IVAR___TSTPivotRowColumnOrder__isColumnOrderTemporary;
  if (!a4)
  {
    v37 = &OBJC_IVAR___TSTPivotRowColumnOrder__isRowOrderTemporary;
  }

  sub_22149C92C(v78, v81, v82, 0, v83, self->_uidMap, v28, (*(&self->super.super.isa + *v37) & 1) == 0);
  v38 = objc_loadWeakRetained(&self->_tableInfo);
  v43 = v38;
  if (a4)
  {
    v44 = objc_msgSend_baseTableModel(v38, v39, v40, v41, v42);
    v77.origin = objc_msgSend_headerColumnRange(v44, v45, v46, v47, v48);
    v77.size = v49;
    v50 = TSUCellRect::columns(&v77);
    if (v17)
    {
      objc_msgSend_columnUIDsForColumnRange_(v17, v51, v50, v51, v52);
      goto LABEL_9;
    }
  }

  else
  {
    v44 = objc_msgSend_baseTableModel(v38, v39, v40, v41, v42);
    __p[0] = objc_msgSend_headerRowRange(v44, v53, v54, v55, v56);
    __p[1] = v57;
    v58 = TSUCellRect::rows(__p);
    if (v17)
    {
      objc_msgSend_rowUIDsForRowRange_(v17, v59, v58, v59, v60);
      goto LABEL_9;
    }
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
LABEL_9:

  sub_22149C6EC(v78, &retstr->__begin_, 0, 0, 0, 0, v83, 0, 1u);
  if (a4)
  {
    v76 = 0;
    v61 = 0uLL;
    *__p = 0u;
  }

  else
  {
    v43 = objc_loadWeakRetained(&self->_tableInfo);
    v44 = objc_msgSend_baseTableModel(v43, v62, v63, v64, v65);
    v77.origin = objc_msgSend_footerRowRange(v44, v66, v67, v68, v69);
    v77.size = v70;
    v71 = TSUCellRect::rows(&v77);
    if (v17)
    {
      objc_msgSend_rowUIDsForRowRange_(v17, v72, v71, v72, v73);
      v61 = *__p;
    }

    else
    {
      v76 = 0;
      v61 = 0uLL;
      *__p = 0u;
    }
  }

  sub_2210F0C88(retstr, retstr->__end_, v61, *(&v61 + 1), (*(&v61 + 1) - v61) >> 4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (!a4)
  {
  }

  v78[0] = &unk_2834A7E10;
  sub_2210BDEC0(&v80);
  __p[0] = &v79;
  sub_2213FB81C(__p);

  return result;
}

- (id)targetGroupFromIndex:(unsigned int)a3 minSourceLevel:(unsigned __int8)a4 templateUID:(TSKUIDStruct *)a5 forDimension:(int64_t)a6
{
  TSUSetCrashReporterInfo();
  v6 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTPivotRowColumnOrder targetGroupFromIndex:minSourceLevel:templateUID:forDimension:]", v8, v9, "[TSTPivotRowColumnOrder targetGroupFromIndex:minSourceLevel:templateUID:forDimension:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotRowColumnOrder.mm", 224);
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotRowColumnOrder.mm", v12, v13);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v15, v10, v14, 224, 1, "Not implemented.");

  TSUCrashBreakpoint();
  abort();
}

- (unsigned)minimumCategoryLevelInRange:(_NSRange)a3 forDimension:(int64_t)a4
{
  v4 = a4 == 0;
  if (a4)
  {
    TSUSetCrashReporterInfo();
    v26 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSTPivotRowColumnOrder minimumCategoryLevelInRange:forDimension:]", v28, v29, "[TSTPivotRowColumnOrder minimumCategoryLevelInRange:forDimension:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotRowColumnOrder.mm", 290);
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotRowColumnOrder.mm", v32, v33);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v35, v30, v34, 290, 1, "Not implemented for columns.");

    TSUCrashBreakpoint();
    abort();
  }

  v6 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], a2, a3.location, a3.length, 0);
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v12 = objc_msgSend_indexesForSummaryRows(WeakRetained, v8, v9, v10, v11);
  v16 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v6, v13, v12, v14, v15);

  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = -3;
  if (objc_msgSend_count(v16, v17, v18, v19, v20))
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_2213FA620;
    v36[3] = &unk_2784649A8;
    v37 = v4;
    v36[4] = self;
    v36[5] = &v38;
    objc_msgSend_enumerateIndexesUsingBlock_(v16, v21, v36, v22, v23);
  }

  v24 = *(v39 + 24);
  _Block_object_dispose(&v38, 8);

  return v24;
}

- (id)sortedArrayFromArray:(id)a3 forDimension:(int64_t)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CBEB18];
  v12 = objc_msgSend_count(v6, v8, v9, v10, v11);
  v16 = objc_msgSend_arrayWithCapacity_(v7, v13, v12, v14, v15);
  if (objc_msgSend_count(v6, v17, v18, v19, v20))
  {
    if (objc_msgSend_count(v6, v21, v22, v23, v24) == 1)
    {
      objc_msgSend_addObjectsFromArray_(v16, v25, v6, v26, v27);
    }

    else
    {
      v54 = self;
      v55 = a4;
      __p = 0;
      v64 = 0;
      v65 = 0;
      memset(v61, 0, sizeof(v61));
      v62 = 1065353216;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v28 = v6;
      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v57, v67, 16);
      if (v34)
      {
        v35 = 0;
        v36 = *v58;
        do
        {
          v37 = 0;
          v38 = v35;
          do
          {
            if (*v58 != v36)
            {
              objc_enumerationMutation(v28);
            }

            v39 = *(*(&v57 + 1) + 8 * v37);
            v56 = 0uLL;
            *&v56 = objc_msgSend_uidReturn(v39, v30, v31, v32, v33);
            *(&v56 + 1) = v40;
            sub_221083454(&__p, &v56);
            v66 = &v56;
            v35 = v38 + 1;
            *(sub_221287990(v61, &v56) + 8) = v38;
            ++v37;
            ++v38;
          }

          while (v34 != v37);
          v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v57, v67, 16);
        }

        while (v34);
      }

      objc_msgSend_orderedUidsFromUids_forDimension_(v54, v41, &__p, v55, v42);
      v44 = *(&v56 + 1);
      v43 = v56;
      if (v56 != *(&v56 + 1))
      {
        do
        {
          v66 = v43;
          v45 = sub_221287990(v61, v43);
          v49 = objc_msgSend_objectAtIndex_(v28, v46, *(v45 + 8), v47, v48);
          objc_msgSend_addObject_(v16, v50, v49, v51, v52);

          ++v43;
        }

        while (v43 != v44);
        v43 = v56;
      }

      if (v43)
      {
        *(&v56 + 1) = v43;
        operator delete(v43);
      }

      sub_2210BDEC0(v61);
      if (__p)
      {
        v64 = __p;
        operator delete(__p);
      }
    }
  }

  return v16;
}

- (BOOL)hasValidInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v3 = WeakRetained != 0;

  return v3;
}

- (BOOL)hasValidUidMap
{
  v6 = objc_msgSend_numberOfRows(self->_uidMap, a2, v2, v3, v4);
  if (v6)
  {
    LOBYTE(v6) = objc_msgSend_numberOfColumns(self->_uidMap, v7, v8, v9, v10) != 0;
  }

  return v6;
}

- (const)orderForDimension:(int64_t)a3
{
  uidMap = self->_uidMap;
  if (a3)
  {
    return objc_msgSend_columnUIDs(uidMap, a2, a3, v3, v4);
  }

  else
  {
    return objc_msgSend_rowUIDs(uidMap, a2, 0, v3, v4);
  }
}

- (void)setOrder:(const void *)a3 forDimension:(int64_t)a4
{
  uidMap = self->_uidMap;
  if (a4)
  {
    objc_msgSend_replaceColumnsWithUids_(uidMap, a2, a3, a4, v4);
    v7 = &OBJC_IVAR___TSTPivotRowColumnOrder__isColumnOrderTemporary;
  }

  else
  {
    objc_msgSend_replaceRowsWithUids_(uidMap, a2, a3, 0, v4);
    v7 = &OBJC_IVAR___TSTPivotRowColumnOrder__isRowOrderTemporary;
  }

  *(&self->super.super.isa + *v7) = 0;
}

- (void)setTemporaryOrder:(const void *)a3 forDimension:(int64_t)a4
{
  uidMap = self->_uidMap;
  if (a4)
  {
    objc_msgSend_replaceColumnsWithUids_(uidMap, a2, a3, a4, v4);
    v7 = &OBJC_IVAR___TSTPivotRowColumnOrder__isColumnOrderTemporary;
  }

  else
  {
    objc_msgSend_replaceRowsWithUids_(uidMap, a2, a3, 0, v4);
    v7 = &OBJC_IVAR___TSTPivotRowColumnOrder__isRowOrderTemporary;
  }

  *(&self->super.super.isa + *v7) = 1;
}

- (const)setOrderUsingViewOrderForDimension:(int64_t)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend__groupBy_(self, a2, a3 == 0, v3, v4);
  v8 = -1;
  v45[0] = 0;
  v44[0] = -1;
  for (i = 1; i != 6; ++i)
  {
    v10 = 1 << (i - 1);
    v45[i] = v10;
    v8 &= ~v10;
    v44[i] = v8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v16 = WeakRetained;
  if (a3)
  {
    v17 = objc_msgSend_columnUIDs(WeakRetained, v12, v13, v14, v15);
  }

  else
  {
    v17 = objc_msgSend_rowUIDs(WeakRetained, v12, v13, v14, v15);
  }

  v41 = 0;
  v42 = 0;
  v43 = 0;
  sub_221086EBC(&v41, *v17, v17[1], (v17[1] - *v17) >> 4);

  v20 = v41;
  v21 = v42;
  v22 = v42 - v41;
  if (v42 == v41)
  {
    goto LABEL_22;
  }

  v23 = v22 >> 4;
  v24 = v22 - 16;
  v25 = -1;
  do
  {
    LOBYTE(__p) = 0;
    v40 = 0;
    isError = objc_msgSend_groupLevelForGroupUid_isBlank_isError_(v7, v18, v41 + v24, &__p, &v40);
    if (__p == 1)
    {
      v27 = isError;
      if ((v45[isError] & v25) != 0)
      {
        v28 = v41 + v24;
        *v28 = 0;
        v28[1] = 0;
      }

      goto LABEL_18;
    }

    if (v40 == 1)
    {
      v29 = v45[isError];
      if ((v29 & v25) != 0)
      {
        v30 = v41 + v24;
        *v30 = 0;
        v30[1] = 0;
      }

      v27 = isError;
      goto LABEL_17;
    }

    if (isError != 255)
    {
      v27 = isError;
      v29 = v45[isError];
LABEL_17:
      v25 &= ~v29;
LABEL_18:
      v25 |= v44[v27];
      goto LABEL_19;
    }

    v31 = v41 + v24;
    *v31 = 0;
    v31[1] = 0;
LABEL_19:
    v24 -= 16;
    --v23;
  }

  while (v23);
  v20 = v41;
  v21 = v42;
LABEL_22:
  __p = 0;
  v38 = 0;
  v39 = 0;
  while (v20 != v21)
  {
    if (*v20 != 0)
    {
      sub_221083454(&__p, v20);
    }

    ++v20;
  }

  objc_msgSend_setOrder_forDimension_(self, v18, &__p, a3, v19);
  v35 = objc_msgSend_orderForDimension_(self, v32, a3, v33, v34);
  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  return v35;
}

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812E4498[306], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, v10, v9);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (*(a3 + 16))
  {
    v8 = *(a3 + 3);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2213FAFB4;
    v12[3] = &unk_27845E0B8;
    v12[4] = self;
    v9 = v6;
    v10 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v9, v11, v8, v10, 0, v12);
  }
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  objc_msgSend_setMessageVersion_(v4, v5, 0xB000200000006, v6, v7);
  v13 = v4;
  google::protobuf::internal::AssignDescriptors();
  v10 = objc_msgSend_messageWithNewFunction_descriptor_(v13, v8, sub_2213FB954, off_2812E4498[306], v9);

  objc_msgSend_saveToArchive_archiver_(self, v11, v10, v13, v12);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  uidMap = self->_uidMap;
  *(a3 + 4) |= 1u;
  v10 = *(a3 + 3);
  v12 = v6;
  if (!v10)
  {
    v11 = *(a3 + 1);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = MEMORY[0x223DA0390](v11);
    *(a3 + 3) = v10;
    v6 = v12;
  }

  objc_msgSend_setStrongReference_message_(v6, v7, uidMap, v10, v8);
}

- (void)insertUids:(const void *)a3 beforeUid:(const TSKUIDStruct *)a4 forDimension:(int64_t)a5
{
  objc_msgSend_willModify(self, a2, a3, a4, a5);
  lower = a4->_lower;
  upper = a4->_upper;
  if (a5)
  {
    if (*a4 == 0 || (upper = objc_msgSend_columnIndexForColumnUID_(self->_uidMap, v9, lower, upper, v10), upper == 0x7FFF))
    {
      upper = objc_msgSend_numberOfColumns(self->_uidMap, v9, lower, upper, v10);
    }

    uidMap = self->_uidMap;

    objc_msgSend_insertColumnsWithUIDs_atIndex_(uidMap, v9, a3, upper, v10);
  }

  else
  {
    if (*a4 == 0 || (upper = objc_msgSend_rowIndexForRowUID_(self->_uidMap, v9, lower, upper, v10), upper == 0x7FFFFFFF))
    {
      upper = objc_msgSend_numberOfRows(self->_uidMap, v9, lower, upper, v10);
    }

    v14 = self->_uidMap;

    objc_msgSend_insertRowsWithUIDs_atIndex_(v14, v9, a3, upper, v10);
  }
}

- (void)removeUids:(const void *)a3 forDimension:(int64_t)a4
{
  objc_msgSend_willModify(self, a2, a3, a4, v4);
  uidMap = self->_uidMap;
  if (a4)
  {
    v26 = objc_msgSend_columnIndexesForUIDs_(uidMap, v8, a3, v9, v10);
    if (objc_msgSend_count(v26, v12, v13, v14, v15) == (*(a3 + 1) - *a3) >> 4)
    {
      objc_msgSend_removeColumnsAtIndexes_(self->_uidMap, v16, v26, v17, v18);
    }
  }

  else
  {
    v26 = objc_msgSend_rowIndexesForUIDs_(uidMap, v8, a3, v9, v10);
    if (objc_msgSend_count(v26, v19, v20, v21, v22) == (*(a3 + 1) - *a3) >> 4)
    {
      objc_msgSend_removeRowsAtIndexes_(self->_uidMap, v23, v26, v24, v25);
    }
  }
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)groupUidsGivenUids:(SEL)a3 selectedLevels:(const void *)a4 forDimension:(const void *)a5
{
  v9 = self;
  v11 = a6 == 0;
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v12 = objc_msgSend__groupBy_(self, a3, v11, a5, a6);
  LOBYTE(v11) = objc_msgSend__numberOfLevels_(v9, v13, v11, v14, v15);
  LODWORD(v9) = objc_msgSend__maxLevel_(v9, v16, a6 == 0, v17, v18);
  sub_2213FB64C(v31, v12, a6 == 0, v11);
  v19 = [TSCEUIDSet alloc];
  v23 = objc_msgSend_initWithUUIDVector_(v19, v20, a4, v21, v22);
  sub_22149CC78(v31, v23);
  sub_22149CD08(v31);
  for (i = v9; i; --i)
  {
    v24 = sub_22122DECC(a5, &i);
    v25 = v24;
    if (!v24 || *(v24 + 5) < 1)
    {
      break;
    }

    sub_22149CD0C(v31, i, &__p);
    v26 = (v29 - __p) >> 4;
    if (v26 != *(v25 + 5))
    {
      if (__p)
      {
        v29 = __p;
        operator delete(__p);
      }

      break;
    }

    sub_22133594C(retstr, retstr->__end_, __p, v29, v26);
    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }
  }

  v31[0] = &unk_2834A7E10;
  sub_2210BDEC0(v33);
  __p = &v32;
  sub_2213FB81C(&__p);

  return result;
}

- (TSTTableInfo)tableInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);

  return WeakRetained;
}

@end