@interface TSTColumnRowUIDMap
- (BOOL)validatedLoadFromUnarchiver:(id)a3;
- (BOOL)writeCellIDsInCellUIDList:(id)a3 toVector:(void *)a4 prunedCellUIDs:(void *)a5;
- (TSCERangeCoordinate)tableRangeCoordinate;
- (TSKUIDStruct)columnUIDForColumnIndex:(unsigned __int16)a3;
- (TSKUIDStruct)firstUidFromUIDSet:(id)a3 isRows:(BOOL)a4;
- (TSKUIDStruct)rowUIDForRowIndex:(unsigned int)a3;
- (TSKUIDStructCoord)cellUIDForCellID:(SEL)a3;
- (TSKUIDStructTract)cellUIDRangeForCellRange:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnIndexes:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnRange:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedColumnUidsFromUids:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsFromUids:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedColumnUIDsFromColumnUIDs:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedRowUIDsFromRowUIDs:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowIndexes:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowRange:(SEL)a3;
- (TSTColumnRowUIDMap)initWithContext:(id)a3;
- (TSTColumnRowUIDMap)initWithContext:(id)a3 columnUIDs:(const void *)a4 rowUIDs:(const void *)a5;
- (TSTColumnRowUIDMap)initWithContext:(id)a3 tableUUID:(id)a4 numberOfRows:(unsigned int)a5 numberOfColumns:(unsigned int)a6;
- (TSUCellCoord)cellIDForCellUID:(TSKUIDStructCoord *)a3;
- (TSUCellRect)cellRangeForUIDRange:(const void *)a3;
- (TSUCellRect)range;
- (_NSRange)columnRangeForUIDs:(const void *)a3;
- (_NSRange)rowRangeForUIDs:(const void *)a3;
- (id).cxx_construct;
- (id)UIDSetForIndexes:(id)a3 isRows:(BOOL)a4;
- (id)cellRegionForUIDRange:(const void *)a3;
- (id)cellTractRefForUIDRectRef:(id)a3;
- (id)columnIndexesForUIDs:(const void *)a3;
- (id)copyOnWriteUIDMapper;
- (id)copyWithContext:(id)a3;
- (id)mutableColumnIndexesForUIDs:(const void *)a3;
- (id)mutableIndexesForUIDSet:(id)a3 isRows:(BOOL)a4;
- (id)mutableIndexesForUIDSet:(id)a3 isRows:(BOOL)a4 notFoundUIDs:(id)a5;
- (id)mutableRowIndexesForUIDs:(const void *)a3;
- (id)p_mutableColumnIndexesForUIDSet:(id)a3 notFoundUIDs:(id)a4;
- (id)p_mutableRowIndexesForUIDSet:(id)a3 notFoundUIDs:(id)a4;
- (id)rowIndexesForUIDs:(const void *)a3;
- (id)uidRectRefForCellTractRef:(id)a3;
- (unsigned)columnIndexForColumnUID:(TSKUIDStruct)a3;
- (unsigned)columnIndexForUUIDBytes:(unsigned __int8)a3[16];
- (unsigned)rowIndexForRowUID:(TSKUIDStruct)a3;
- (unsigned)rowIndexForUUIDBytes:(unsigned __int8)a3[16];
- (void)applyMap:(const void *)a3 toRows:(BOOL)a4;
- (void)convertCellUIDLookupList:(id)a3 toCellRangeVector:(void *)a4 prunedSummaryCellUIDs:(void *)a5;
- (void)getUUIDBytes:(unsigned __int8)a3[16] forColumnIndex:(unsigned __int16)a4;
- (void)getUUIDBytes:(unsigned __int8)a3[16] forRowIndex:(unsigned int)a4;
- (void)incrementVersionCounter;
- (void)insertColumnsWithUIDs:(const void *)a3 atIndex:(unsigned __int16)a4;
- (void)insertNewColumnsInIndexRange:(_NSRange)a3;
- (void)insertNewRowsInIndexRange:(_NSRange)a3;
- (void)insertRowsWithUIDs:(const void *)a3 atIndex:(unsigned int)a4;
- (void)moveColumnIndexRange:(_NSRange)a3 toIndex:(unsigned __int16)a4;
- (void)moveRowIndexRange:(_NSRange)a3 toIndex:(unsigned int)a4;
- (void)removeColumnsAtIndexes:(id)a3;
- (void)removeRowsAtIndexes:(id)a3;
- (void)replaceColumnsWithUids:(const void *)a3;
- (void)replaceRowsWithUids:(const void *)a3;
- (void)reset;
- (void)saveToArchiver:(id)a3;
- (void)swapRowAtIndex:(unsigned int)a3 withRowAtIndex:(unsigned int)a4;
@end

@implementation TSTColumnRowUIDMap

- (BOOL)validatedLoadFromUnarchiver:(id)a3
{
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  __p = 0;
  v95 = 0;
  v96 = 0;
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812E4498[90], v6, v7);

  sub_22123EA84(&v92, v8 + 16);
  v9 = v92;
  v10 = v93;
  sub_2212876FC(&v103, *(v8 + 64), (*(v8 + 64) + 4 * *(v8 + 56)), *(v8 + 56));
  sub_2212876FC(&v97, *(v8 + 48), (*(v8 + 48) + 4 * *(v8 + 40)), *(v8 + 40));
  v11 = (v10 - v9) >> 4;
  if (v11 != v104 - v103 || v11 != (v98 - v97) >> 1)
  {
    v12 = 0;
LABEL_25:
    v63 = 0;
    goto LABEL_26;
  }

  sub_22123EA84(&v92, v8 + 72);
  v12 = v92;
  v13 = v93;
  sub_221287820(&v100, *(v8 + 120), (*(v8 + 120) + 4 * *(v8 + 112)), *(v8 + 112));
  sub_221287820(&__p, *(v8 + 104), (*(v8 + 104) + 4 * *(v8 + 96)), *(v8 + 96));
  v18 = (v13 - v12) >> 4;
  if (v18 != (v101 - v100) >> 2 || v18 != (v95 - __p) >> 2)
  {
    goto LABEL_25;
  }

  v87 = (v13 - v12) >> 4;
  v88 = v4;
  v20 = v103;
  v19 = v104;
  v91 = self;
  v89 = v12;
  if (v104 == v103)
  {
    goto LABEL_14;
  }

  v21 = v11 - 1;
  if (HIDWORD(v21))
  {
    v65 = MEMORY[0x277D81150];
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTColumnRowUIDMap validatedLoadFromUnarchiver:]", v16, v17);
    v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTColumnRowUIDMap.mm", v68, v69);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v71, v66, v70, 107, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73, v74, v75);
    v21 = 0xFFFFFFFFLL;
    v20 = v103;
    v19 = v104;
  }

  if (v20 == v19)
  {
LABEL_14:
    v42 = v100;
    v41 = v101;
    if (v101 == v100 || ((v87 - 1) >> 32 ? (v76 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTColumnRowUIDMap validatedLoadFromUnarchiver:]", v16, v17), v77 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTColumnRowUIDMap.mm", v79, v80), v81 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v82, v77, v81, 122, 0, "Out-of-bounds type assignment was clamped to max"), v81, v77, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v83, v84, v85, v86), v43 = 0xFFFFFFFFLL, v42 = v100, v41 = v101, self = v91) : (v43 = v87 - 1), v42 == v41))
    {
LABEL_23:
      self->_versionCounter = 1;
      v4 = v88;
      v63 = objc_msgSend__checkStructure(self, v14, v15, v16, v17);
      goto LABEL_26;
    }

    v44 = 0;
    v45 = &OBJC_IVAR___TSCECalculationEngine__rewriteSpecStack;
    while (1)
    {
      v46 = *v42;
      if (*v42 > v43)
      {
        v47 = v43;
        v48 = self;
        v49 = v45;
        v50 = MEMORY[0x277D81150];
        v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTColumnRowUIDMap validatedLoadFromUnarchiver:]", v16, v17);
        v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTColumnRowUIDMap.mm", v53, v54);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v56, v51, v55, 125, 0, "Row index out of bounds: %u > %u", *v42, v47);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59, v60);
        v46 = *v42;
        v45 = v49;
        self = v48;
        v12 = v89;
        v43 = v47;
      }

      if (v46 > v43)
      {
        break;
      }

      v61 = &v12[16 * v46];
      v62 = v45;
      sub_221083454(self + v45[222], v61);
      v92 = v61;
      *(sub_221287990(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_, v61) + 8) = v44++;
      ++v42;
      v45 = v62;
      if (v42 == v41)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v22 = 0;
    v23 = &OBJC_IVAR___TSCECalculationEngine__rewriteSpecStack;
    v24 = &OBJC_IVAR___TSCECalculationEngine__rewriteSpecStack;
    v90 = v9;
    while (1)
    {
      v25 = *v20;
      if (v21 < v25)
      {
        v26 = v24;
        v27 = v23;
        v28 = MEMORY[0x277D81150];
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTColumnRowUIDMap validatedLoadFromUnarchiver:]", v16, v17);
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTColumnRowUIDMap.mm", v31, v32);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v34, v29, v33, 110, 0, "Column index out of bounds: %u > %u", *v20, v21);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
        v25 = *v20;
        v23 = v27;
        v24 = v26;
        v9 = v90;
        self = v91;
      }

      if (v21 < v25)
      {
        break;
      }

      v39 = &v9[16 * v25];
      sub_221083454(self + v23[220], v39);
      v40 = v24[221];
      v92 = v39;
      *(sub_221260850((&self->super.super.isa + v40), v39) + 16) = v22++;
      if (++v20 == v19)
      {
        goto LABEL_14;
      }
    }
  }

  v63 = 0;
  v4 = v88;
LABEL_26:
  if (__p)
  {
    v95 = __p;
    operator delete(__p);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }

  if (v12)
  {
    operator delete(v12);
  }

  if (v9)
  {
    operator delete(v9);
  }

  return v63;
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, sub_221287BCC, off_2812E4498[90], v6);

  v50 = 0;
  v51 = 0;
  v49 = 0;
  sub_221086EBC(&v49, self->_columnUidForIndex.__begin_, self->_columnUidForIndex.__end_, self->_columnUidForIndex.__end_ - self->_columnUidForIndex.__begin_);
  v9 = 126 - 2 * __clz((v50 - v49) >> 4);
  if (v50 == v49)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  sub_221287C38(v49, v50, &v47, v10, 1, v8);
  v41 = v4;
  sub_2212894D0(&v47, self->_columnUidForIndex.__end_ - self->_columnUidForIndex.__begin_);
  v11 = v49;
  v12 = v50;
  if (v49 != v50)
  {
    v13 = 0;
    while (1)
    {
      v44 = v11;
      v14 = *(sub_221260850(&self->_columnIndexForUid.__table_.__bucket_list_.__ptr_, v11) + 16);
      *(v47 + v14) = v13;
      v15 = *(v7 + 32);
      if (!v15)
      {
        goto LABEL_11;
      }

      v16 = *(v7 + 24);
      v17 = *v15;
      if (v16 >= *v15)
      {
        break;
      }

      *(v7 + 24) = v16 + 1;
      v18 = *&v15[2 * v16 + 2];
LABEL_13:
      TSKUIDStruct::saveToMessage(v11, v18);
      v21 = *(v7 + 40);
      if (v21 == *(v7 + 44))
      {
        v22 = v21 + 1;
        sub_2210BBC64((v7 + 40), v21 + 1);
        *(*(v7 + 48) + 4 * v21) = v14;
      }

      else
      {
        *(*(v7 + 48) + 4 * v21) = v14;
        v22 = v21 + 1;
      }

      *(v7 + 40) = v22;
      ++v11;
      ++v13;
      if (v11 == v12)
      {
        goto LABEL_17;
      }
    }

    if (v17 == *(v7 + 28))
    {
LABEL_11:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 16));
      v15 = *(v7 + 32);
      v17 = *v15;
    }

    *v15 = v17 + 1;
    v18 = MEMORY[0x223DA0360](*(v7 + 16));
    v19 = *(v7 + 24);
    v20 = *(v7 + 32) + 8 * v19;
    *(v7 + 24) = v19 + 1;
    *(v20 + 8) = v18;
    goto LABEL_13;
  }

LABEL_17:
  sub_221289548(&v44, v47, v48, (v7 + 56));
  v45 = 0;
  v46 = 0;
  v44 = 0;
  sub_221086EBC(&v44, self->_rowUidForIndex.__begin_, self->_rowUidForIndex.__end_, self->_rowUidForIndex.__end_ - self->_rowUidForIndex.__begin_);
  v24 = 126 - 2 * __clz((v45 - v44) >> 4);
  if (v45 == v44)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  sub_221287C38(v44, v45, &__p, v25, 1, v23);
  sub_221289624(&__p, self->_rowUidForIndex.__end_ - self->_rowUidForIndex.__begin_);
  v26 = v44;
  v27 = v45;
  if (v44 != v45)
  {
    v28 = 0;
    while (1)
    {
      v52 = v26;
      v29 = *(sub_221287990(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_, v26) + 8);
      *(__p + v29) = v28;
      v30 = *(v7 + 88);
      if (!v30)
      {
        goto LABEL_27;
      }

      v31 = *(v7 + 80);
      v32 = *v30;
      if (v31 >= *v30)
      {
        break;
      }

      *(v7 + 80) = v31 + 1;
      v33 = *&v30[2 * v31 + 2];
LABEL_29:
      TSKUIDStruct::saveToMessage(v26, v33);
      v36 = *(v7 + 96);
      if (v36 == *(v7 + 100))
      {
        v37 = v36 + 1;
        sub_2210BBC64((v7 + 96), v36 + 1);
        *(*(v7 + 104) + 4 * v36) = v29;
      }

      else
      {
        *(*(v7 + 104) + 4 * v36) = v29;
        v37 = v36 + 1;
      }

      *(v7 + 96) = v37;
      v26 += 4;
      ++v28;
      if (v26 == v27)
      {
        goto LABEL_33;
      }
    }

    if (v32 == *(v7 + 84))
    {
LABEL_27:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 72));
      v30 = *(v7 + 88);
      v32 = *v30;
    }

    *v30 = v32 + 1;
    v33 = MEMORY[0x223DA0360](*(v7 + 72));
    v34 = *(v7 + 80);
    v35 = *(v7 + 88) + 8 * v34;
    *(v7 + 80) = v34 + 1;
    *(v35 + 8) = v33;
    goto LABEL_29;
  }

LABEL_33:
  v39 = __p;
  v38 = v43;
  v52 = (v7 + 112);
  if (__p == v43)
  {
    v40 = v41;
    if (__p)
    {
LABEL_37:
      v43 = v39;
      operator delete(v39);
    }
  }

  else
  {
    v40 = v41;
    do
    {
      sub_2212895B0(&v52, v39);
      v39 += 4;
    }

    while (v39 != v38);
    v39 = __p;
    if (__p)
    {
      goto LABEL_37;
    }
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }
}

- (TSTColumnRowUIDMap)initWithContext:(id)a3 tableUUID:(id)a4 numberOfRows:(unsigned int)a5 numberOfColumns:(unsigned int)a6
{
  v6 = a6;
  v10 = a3;
  v14 = a4;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  __p = 0;
  v37 = 0;
  v38 = 0;
  if (!v14)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTColumnRowUIDMap initWithContext:tableUUID:numberOfRows:numberOfColumns:]", v12, v13);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTColumnRowUIDMap.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 185, 0, "invalid nil value for '%{public}s'", "tableUUID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  *&v35 = TSKMakeUIDStructFromNSUUID();
  *(&v35 + 1) = v26;
  v28 = sub_2211A92C8(v34, &v35);
  if (v6)
  {
    for (i = 0; i < v6; ++i)
    {
      *&v35 = sub_2211A92FC(v34);
      *(&v35 + 1) = v30;
      sub_221083454(&v39, &v35);
    }
  }

  for (; a5; --a5)
  {
    *&v35 = sub_2211A92FC(v34);
    *(&v35 + 1) = v31;
    sub_221083454(&__p, &v35);
  }

  v32 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(self, v27, v10, &v39, &__p, v28);
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  return v32;
}

- (TSTColumnRowUIDMap)initWithContext:(id)a3 columnUIDs:(const void *)a4 rowUIDs:(const void *)a5
{
  v8 = a3;
  v17.receiver = self;
  v17.super_class = TSTColumnRowUIDMap;
  v9 = [(TSTColumnRowUIDMap *)&v17 initWithContext:v8];
  if (v9)
  {
    v10 = *a4;
    v11 = *(a4 + 1);
    if (*a4 != v11)
    {
      v12 = 0;
      do
      {
        sub_221083454(&v9->_columnUidForIndex, v10);
        v18 = v10;
        *(sub_221260850(&v9->_columnIndexForUid.__table_.__bucket_list_.__ptr_, v10++) + 16) = v12++;
      }

      while (v10 != v11);
    }

    v13 = *a5;
    v14 = *(a5 + 1);
    if (*a5 != v14)
    {
      v15 = 0;
      do
      {
        sub_221083454(&v9->_rowUidForIndex, v13);
        v18 = v13;
        *(sub_221287990(&v9->_rowIndexForUid.__table_.__bucket_list_.__ptr_, v13++) + 8) = v15++;
      }

      while (v13 != v14);
    }

    v9->_versionCounter = 1;
  }

  return v9;
}

- (TSTColumnRowUIDMap)initWithContext:(id)a3
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  __p = 0;
  v6 = 0;
  v7 = 0;
  v3 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(self, a2, a3, &v8, &__p);
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

- (id)copyWithContext:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_columnUIDs(self, v6, v7, v8, v9);
  v15 = objc_msgSend_rowUIDs(self, v11, v12, v13, v14);
  v17 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v5, v16, v4, v10, v15);
  v17[24] = objc_msgSend_versionCounter(self, v18, v19, v20, v21);

  return v17;
}

- (void)incrementVersionCounter
{
  WeakRetained = objc_loadWeakRetained(&self->_copyOnWriteUIDMapper);
  if (WeakRetained)
  {
    objc_msgSend_disconnect(WeakRetained, v3, v4, v5, v6);
  }

  objc_storeWeak(&self->_copyOnWriteUIDMapper, 0);
  versionCounter = self->_versionCounter;
  if (versionCounter + 1 > 1)
  {
    v8 = versionCounter + 1;
  }

  else
  {
    v8 = 1;
  }

  self->_versionCounter = v8;
}

- (id)copyOnWriteUIDMapper
{
  WeakRetained = objc_loadWeakRetained(&self->_copyOnWriteUIDMapper);
  if (!WeakRetained)
  {
    v4 = [TSTColumnRowUIDMapper alloc];
    WeakRetained = objc_msgSend_initWithColumnRowUIDMap_(v4, v5, self, v6, v7);
    objc_storeWeak(&self->_copyOnWriteUIDMapper, WeakRetained);
  }

  return WeakRetained;
}

- (TSKUIDStruct)columnUIDForColumnIndex:(unsigned __int16)a3
{
  begin = self->_columnUidForIndex.__begin_;
  if (a3 >= (self->_columnUidForIndex.__end_ - begin))
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    p_lower = &begin[a3]._lower;
    v5 = *p_lower;
    v6 = p_lower[1];
  }

  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStruct)rowUIDForRowIndex:(unsigned int)a3
{
  begin = self->_rowUidForIndex.__begin_;
  if (a3 >= (self->_rowUidForIndex.__end_ - begin))
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    p_lower = &begin[a3]._lower;
    v5 = *p_lower;
    v6 = p_lower[1];
  }

  result._upper = v6;
  result._lower = v5;
  return result;
}

- (unsigned)columnIndexForColumnUID:(TSKUIDStruct)a3
{
  v5 = a3;
  v3 = sub_2210875C4(&self->_columnIndexForUid.__table_.__bucket_list_.__ptr_, &v5);
  if (v3)
  {
    return *(v3 + 16);
  }

  else
  {
    return 0x7FFF;
  }
}

- (unsigned)rowIndexForRowUID:(TSKUIDStruct)a3
{
  v5 = a3;
  v3 = sub_2210875C4(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_, &v5);
  if (v3)
  {
    return *(v3 + 8);
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

- (void)getUUIDBytes:(unsigned __int8)a3[16] forRowIndex:(unsigned int)a4
{
  if (a3)
  {
    v7[0] = objc_msgSend_rowUIDForRowIndex_(self, a2, *&a4, *&a4, v4);
    v7[1] = v6;
    uuid_copy(a3, v7);
  }
}

- (void)getUUIDBytes:(unsigned __int8)a3[16] forColumnIndex:(unsigned __int16)a4
{
  if (a3)
  {
    v7[0] = objc_msgSend_columnUIDForColumnIndex_(self, a2, a4, a4, v4);
    v7[1] = v6;
    uuid_copy(a3, v7);
  }
}

- (unsigned)rowIndexForUUIDBytes:(unsigned __int8)a3[16]
{
  if (!a3)
  {
    return 0x7FFFFFFF;
  }

  v5 = TSKMakeUIDStructFromUuidT();

  return objc_msgSend_rowIndexForRowUID_(self, v4, v5, v4, v6);
}

- (unsigned)columnIndexForUUIDBytes:(unsigned __int8)a3[16]
{
  if (!a3)
  {
    return 0x7FFF;
  }

  v5 = TSKMakeUIDStructFromUuidT();

  return objc_msgSend_columnIndexForColumnUID_(self, v4, v5, v4, v6);
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnIndexes:(SEL)a3
{
  v6 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x4812000000;
  v27 = sub_2212834C8;
  v28 = sub_2212834EC;
  *__p = 0u;
  v30 = 0u;
  p_columnUidForIndex = &self->_columnUidForIndex;
  v16 = self->_columnUidForIndex.__end_ - self->_columnUidForIndex.__begin_;
  if (!objc_msgSend_firstIndex(v6, v8, v9, v10, v11) && objc_msgSend_count(v6, v12, v13, v14, v15) == v16 && objc_msgSend_lastIndex(v6, v12, v13, v14, v15) == v16 - 1)
  {
    if (v25 + 6 != p_columnUidForIndex)
    {
      sub_2210BD068(v25 + 6, *p_columnUidForIndex, self->_columnUidForIndex.__end_, (self->_columnUidForIndex.__end_ - *p_columnUidForIndex) >> 4);
    }
  }

  else
  {
    v17 = objc_msgSend_count(v6, v12, v13, v14, v15);
    if (v17 >= 0x7D0)
    {
      v18 = 2000;
    }

    else
    {
      v18 = v17;
    }

    sub_221083368(v25 + 6, v18);
    if (v16 >= 0x7D0)
    {
      v20 = 2000;
    }

    else
    {
      v20 = v16;
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_221283504;
    v23[3] = &unk_2784623E0;
    v23[4] = self;
    v23[5] = &v24;
    objc_msgSend_enumerateRangesInRange_options_usingBlock_(v6, v19, 0, v20, 0, v23);
  }

  v21 = v25;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_221086EBC(retstr, v21[6], v21[7], (v21[7] - v21[6]) >> 4);
  _Block_object_dispose(&v24, 8);
  if (__p[1])
  {
    *&v30 = __p[1];
    operator delete(__p[1]);
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowIndexes:(SEL)a3
{
  v6 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x4812000000;
  v27 = sub_2212834C8;
  v28 = sub_2212834EC;
  *__p = 0u;
  v30 = 0u;
  p_rowUidForIndex = &self->_rowUidForIndex;
  v16 = self->_rowUidForIndex.__end_ - self->_rowUidForIndex.__begin_;
  if (!objc_msgSend_firstIndex(v6, v8, v9, v10, v11) && objc_msgSend_count(v6, v12, v13, v14, v15) == v16 && objc_msgSend_lastIndex(v6, v12, v13, v14, v15) == v16 - 1)
  {
    if (v25 + 6 != p_rowUidForIndex)
    {
      sub_2210BD068(v25 + 6, *p_rowUidForIndex, self->_rowUidForIndex.__end_, (self->_rowUidForIndex.__end_ - *p_rowUidForIndex) >> 4);
    }
  }

  else
  {
    v17 = objc_msgSend_count(v6, v12, v13, v14, v15);
    if (v17 >= 0x7A1200)
    {
      v18 = 8000000;
    }

    else
    {
      v18 = v17;
    }

    sub_221083368(v25 + 6, v18);
    if (v16 >= 0x7A1200)
    {
      v20 = 8000000;
    }

    else
    {
      v20 = v16;
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_221283774;
    v23[3] = &unk_2784623E0;
    v23[4] = self;
    v23[5] = &v24;
    objc_msgSend_enumerateRangesInRange_options_usingBlock_(v6, v19, 0, v20, 0, v23);
  }

  v21 = v25;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_221086EBC(retstr, v21[6], v21[7], (v21[7] - v21[6]) >> 4);
  _Block_object_dispose(&v24, 8);
  if (__p[1])
  {
    *&v30 = __p[1];
    operator delete(__p[1]);
  }

  return result;
}

- (TSUCellRect)range
{
  v2 = ((self->_rowUidForIndex.__end_ - self->_rowUidForIndex.__begin_) << 28) & 0xFFFFFFFF00000000 | ((self->_columnUidForIndex.__end_ - self->_columnUidForIndex.__begin_) >> 4);
  v3 = 0;
  result.size = v2;
  result.origin = v3;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnRange:(SEL)a3
{
  v10 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], a3, a4.location, a4.length, v4);
  objc_msgSend_columnUIDsForColumnIndexes_(self, v6, v10, v7, v8);

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowRange:(SEL)a3
{
  v10 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], a3, a4.location, a4.length, v4);
  objc_msgSend_rowUIDsForRowIndexes_(self, v6, v10, v7, v8);

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedColumnUidsFromUids:(SEL)a3
{
  v11 = objc_msgSend_mutableColumnIndexesForUIDs_(self, a3, a4, v4, v5);
  objc_msgSend_columnUIDsForColumnIndexes_(self, v7, v11, v8, v9);

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsFromUids:(SEL)a3
{
  v11 = objc_msgSend_mutableRowIndexesForUIDs_(self, a3, a4, v4, v5);
  objc_msgSend_rowUIDsForRowIndexes_(self, v7, v11, v8, v9);

  return result;
}

- (id)UIDSetForIndexes:(id)a3 isRows:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = v7;
  if (v4)
  {
    v9 = self->_rowUidForIndex.__end_ - self->_rowUidForIndex.__begin_;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_221283BF0;
    v17[3] = &unk_27845DE60;
    v10 = v18;
    v18[0] = v7;
    v18[1] = self;
    objc_msgSend_enumerateIndexesInRange_options_usingBlock_(v6, v11, 0, v9, 0, v17);
  }

  else
  {
    v12 = self->_columnUidForIndex.__end_ - self->_columnUidForIndex.__begin_;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_221283C10;
    v15[3] = &unk_27845DE60;
    v10 = v16;
    v16[0] = v7;
    v16[1] = self;
    objc_msgSend_enumerateIndexesInRange_options_usingBlock_(v6, v13, 0, v12, 0, v15);
  }

  return v8;
}

- (id)mutableIndexesForUIDSet:(id)a3 isRows:(BOOL)a4 notFoundUIDs:(id)a5
{
  v6 = a4;
  v8 = a3;
  v11 = a5;
  if (v6)
  {
    objc_msgSend_p_mutableRowIndexesForUIDSet_notFoundUIDs_(self, v9, v8, v11, v10);
  }

  else
  {
    objc_msgSend_p_mutableColumnIndexesForUIDSet_notFoundUIDs_(self, v9, v8, v11, v10);
  }
  v12 = ;

  return v12;
}

- (id)p_mutableColumnIndexesForUIDSet:(id)a3 notFoundUIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x5012000000;
  v20 = sub_221283E58;
  v21 = sub_221283E7C;
  v22 = &unk_22188E88F;
  TSUIndexSet::TSUIndexSet(&v23);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_221283E84;
  v14[3] = &unk_278462408;
  v14[4] = self;
  v16 = &v17;
  v8 = v7;
  v15 = v8;
  objc_msgSend_foreachUuid_(v6, v9, v14, v10, v11);
  v12 = TSUIndexSet::asNSIndexSet((v18 + 6));

  _Block_object_dispose(&v17, 8);
  TSUIndexSet::~TSUIndexSet(&v23);

  return v12;
}

- (id)p_mutableRowIndexesForUIDSet:(id)a3 notFoundUIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x5012000000;
  v20 = sub_221283E58;
  v21 = sub_221283E7C;
  v22 = &unk_22188E88F;
  TSUIndexSet::TSUIndexSet(&v23);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_221284078;
  v14[3] = &unk_278462408;
  v14[4] = self;
  v16 = &v17;
  v8 = v7;
  v15 = v8;
  objc_msgSend_foreachUuid_(v6, v9, v14, v10, v11);
  v12 = TSUIndexSet::asNSIndexSet((v18 + 6));

  _Block_object_dispose(&v17, 8);
  TSUIndexSet::~TSUIndexSet(&v23);

  return v12;
}

- (id)mutableIndexesForUIDSet:(id)a3 isRows:(BOOL)a4
{
  v4 = objc_msgSend_mutableIndexesForUIDSet_isRows_notFoundUIDs_(self, a2, a3, a4, 0);

  return v4;
}

- (TSKUIDStruct)firstUidFromUIDSet:(id)a3 isRows:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10 = v6;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  if (v4)
  {
    v28 = 0x7FFFFFFF;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2212842A0;
    v24[3] = &unk_2784613D0;
    v24[4] = self;
    v24[5] = &v25;
    objc_msgSend_foreachUuid_(v6, v7, v24, v8, v9);
    v14 = objc_msgSend_rowUIDForRowIndex_(self, v11, *(v26 + 6), v12, v13);
  }

  else
  {
    LOWORD(v28) = 0x7FFF;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_221284304;
    v23[3] = &unk_2784613D0;
    v23[4] = self;
    v23[5] = &v25;
    objc_msgSend_foreachUuid_(v6, v7, v23, v8, v9);
    v14 = objc_msgSend_columnUIDForColumnIndex_(self, v16, *(v26 + 12), v17, v18);
  }

  v19 = v14;
  v20 = v15;
  _Block_object_dispose(&v25, 8);

  v21 = v19;
  v22 = v20;
  result._upper = v22;
  result._lower = v21;
  return result;
}

- (id)mutableColumnIndexesForUIDs:(const void *)a3
{
  v7 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, a3, v3, v4);
  v8 = *(a3 + 1) - *a3;
  if (v8)
  {
    v9 = 0;
    v10 = v8 >> 4;
    do
    {
      v11 = sub_2210875C4(&self->_columnIndexForUid.__table_.__bucket_list_.__ptr_, (*a3 + 16 * v9));
      if (v11)
      {
        if (v10 <= v9 + 1)
        {
          v14 = v9 + 1;
        }

        else
        {
          v14 = v10;
        }

        v15 = v14 - 1;
        v16 = (*a3 + 16 * v9 + 24);
        v17 = *(v11 + 16);
        while (1)
        {
          ++v17;
          if (v9 + 1 >= v10)
          {
            break;
          }

          v18 = v9;
          v19 = v17;
          begin = self->_columnUidForIndex.__begin_;
          if (v17 < (self->_columnUidForIndex.__end_ - begin))
          {
            v21 = &begin[v17];
            if (v21->_lower == *(v16 - 1))
            {
              v22 = *v16;
              v16 += 2;
              ++v9;
              if (v21->_upper == v22)
              {
                continue;
              }
            }
          }

          goto LABEL_14;
        }

        v19 = v17;
        v18 = v15;
LABEL_14:
        objc_msgSend_addIndexesInRange_(v7, v12, *(v11 + 16), v19 - *(v11 + 16), v13);
        v9 = v18;
      }

      ++v9;
    }

    while (v9 < v10);
  }

  return v7;
}

- (id)columnIndexesForUIDs:(const void *)a3
{
  v5 = objc_msgSend_mutableColumnIndexesForUIDs_(self, a2, a3, v3, v4);
  if (objc_msgSend_count(v5, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_copy(v5, v10, v11, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)mutableRowIndexesForUIDs:(const void *)a3
{
  v7 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, a3, v3, v4);
  v8 = *(a3 + 1) - *a3;
  if (v8)
  {
    v9 = 0;
    v10 = v8 >> 4;
    do
    {
      v11 = sub_2210875C4(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_, (*a3 + 16 * v9));
      if (v11)
      {
        v14 = *(v11 + 8);
        if (v10 <= v9 + 1)
        {
          v15 = v9 + 1;
        }

        else
        {
          v15 = v10;
        }

        v16 = v15 - 1;
        v17 = (*a3 + 16 * v9 + 24);
        v18 = 1;
        while (1)
        {
          v19 = v18;
          if (v9 + 1 >= v10)
          {
            break;
          }

          v20 = v9;
          v21 = (v14 + v18);
          begin = self->_rowUidForIndex.__begin_;
          if (v21 < self->_rowUidForIndex.__end_ - begin)
          {
            v23 = &begin[v21];
            if (v23->_lower == *(v17 - 1))
            {
              upper = v23->_upper;
              v25 = *v17;
              v17 += 2;
              v18 = v19 + 1;
              ++v9;
              if (upper == v25)
              {
                continue;
              }
            }
          }

          goto LABEL_14;
        }

        v20 = v16;
LABEL_14:
        objc_msgSend_addIndexesInRange_(v7, v12, v14, v19, v13);
        v9 = v20;
      }

      ++v9;
    }

    while (v9 < v10);
  }

  return v7;
}

- (id)rowIndexesForUIDs:(const void *)a3
{
  v5 = objc_msgSend_mutableRowIndexesForUIDs_(self, a2, a3, v3, v4);
  if (objc_msgSend_count(v5, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_copy(v5, v10, v11, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (_NSRange)columnRangeForUIDs:(const void *)a3
{
  v6 = MEMORY[0x277D81490];
  v7 = *(MEMORY[0x277D81490] + 8);
  v8 = objc_msgSend_columnIndexForColumnUID_(self, a2, **a3, *(*a3 + 8), v3);
  if (v8 != 0x7FFF)
  {
    v11 = v8;
    v13 = *a3;
    v12 = *(a3 + 1);
    if (v13 == v12)
    {
      goto LABEL_8;
    }

    v14 = -v7;
    v15 = v7 + v8;
    while (v15 == objc_msgSend_columnIndexForColumnUID_(self, v9, *v13, v13[1], v10))
    {
      v13 += 2;
      --v14;
      ++v15;
      if (v13 == v12)
      {
        v7 = -v14;
        goto LABEL_8;
      }
    }
  }

  v11 = *v6;
  v7 = v6[1];
LABEL_8:
  v16 = v11;
  v17 = v7;
  result.length = v17;
  result.location = v16;
  return result;
}

- (_NSRange)rowRangeForUIDs:(const void *)a3
{
  v6 = MEMORY[0x277D81490];
  v7 = *(MEMORY[0x277D81490] + 8);
  v8 = objc_msgSend_rowIndexForRowUID_(self, a2, **a3, *(*a3 + 8), v3);
  if (v8 != 0x7FFFFFFF)
  {
    v11 = v8;
    v13 = *a3;
    v12 = *(a3 + 1);
    if (v13 == v12)
    {
      goto LABEL_8;
    }

    v14 = -v7;
    v15 = v7 + v8;
    while (v15 == objc_msgSend_rowIndexForRowUID_(self, v9, *v13, v13[1], v10))
    {
      v13 += 2;
      --v14;
      ++v15;
      if (v13 == v12)
      {
        v7 = -v14;
        goto LABEL_8;
      }
    }
  }

  v11 = *v6;
  v7 = v6[1];
LABEL_8:
  v16 = v11;
  v17 = v7;
  result.length = v17;
  result.location = v16;
  return result;
}

- (TSKUIDStructCoord)cellUIDForCellID:(SEL)a3
{
  objc_msgSend_columnUIDForColumnIndex_(self, a3, a4.column, v4, v5);
  objc_msgSend_rowUIDForRowIndex_(self, v9, *&a4, v10, v11);

  return TSTMakeCellUID(retstr);
}

- (TSUCellCoord)cellIDForCellUID:(TSKUIDStructCoord *)a3
{
  lower = a3->_column._lower;
  upper = a3->_column._upper;
  if (!(lower | upper))
  {
    if (!a3->_row._lower && !a3->_row._upper)
    {
      return 0x7FFF7FFFFFFFLL;
    }

    upper = 0;
  }

  v8 = objc_msgSend_columnIndexForColumnUID_(self, a2, lower, upper, v3);
  v11 = objc_msgSend_rowIndexForRowUID_(self, v9, a3->_row._lower, a3->_row._upper, v10);
  if (v8 == 0x7FFF && (a3->_column._lower || a3->_column._upper))
  {
LABEL_11:
    v8 = 0x7FFFLL;
LABEL_12:
    v11 = 0x7FFFFFFF;
    return (v11 | (v8 << 32));
  }

  if (v11 == 0x7FFFFFFF)
  {
    if (!a3->_row._lower && !a3->_row._upper)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return (v11 | (v8 << 32));
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedColumnUIDsFromColumnUIDs:(SEL)a3
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v5 = *a4;
  v6 = *(a4 + 1);
  if (*a4 != v6)
  {
    v7 = self;
    do
    {
      self = objc_msgSend_columnIndexForColumnUID_(v7, a3, *v5, v5[1], v4);
      if (self != 0x7FFF)
      {
        sub_221083454(retstr, v5);
      }

      v5 += 2;
    }

    while (v5 != v6);
  }

  return self;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedRowUIDsFromRowUIDs:(SEL)a3
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v5 = *a4;
  v6 = *(a4 + 1);
  if (*a4 != v6)
  {
    v7 = self;
    do
    {
      self = objc_msgSend_rowIndexForRowUID_(v7, a3, *v5, v5[1], v4);
      if (self != 0x7FFFFFFF)
      {
        sub_221083454(retstr, v5);
      }

      v5 += 2;
    }

    while (v5 != v6);
  }

  return self;
}

- (TSUCellRect)cellRangeForUIDRange:(const void *)a3
{
  v7 = 0x7FFF7FFFFFFFLL;
  v8 = objc_msgSend_columnRangeForUIDs_(self, a2, a3, v3, v4);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL || (v12 = v8, v13 = v9, v14 = objc_msgSend_rowRangeForUIDs_(self, v9, a3 + 24, v10, v11), v14 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v17 = 0;
  }

  else
  {
    v7 = sub_221284BC0(v12, v13, v14, v15, v16);
  }

  v18 = v7;
  result.size = v17;
  result.origin = v18;
  return result;
}

- (TSKUIDStructTract)cellUIDRangeForCellRange:(SEL)a3
{
  size = a4.size;
  row = a4.origin.row;
  v9 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], a3, a4.origin.column, a4.size.numberOfColumns, v4);
  objc_msgSend_columnUIDsForColumnIndexes_(self, v10, v9, v11, v12);
  v15 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v13, row, HIDWORD(*&size), v14);
  objc_msgSend_rowUIDsForRowIndexes_(self, v16, v15, v17, v18);
  sub_2210BBBE8(retstr, v21, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v21[0])
  {
    v21[1] = v21[0];
    operator delete(v21[0]);
  }

  return result;
}

- (id)cellRegionForUIDRange:(const void *)a3
{
  v7 = objc_msgSend_columnIndexesForUIDs_(self, a2, a3, v3, v4);
  v11 = objc_msgSend_rowIndexesForUIDs_(self, v8, a3 + 24, v9, v10);
  v14 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v12, v7, v11, v13);

  return v14;
}

- (id)cellTractRefForUIDRectRef:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    objc_msgSend_uidRange(v4, v5, v6, v7, v8);
  }

  else
  {
    *__p = 0u;
    v36 = 0u;
    *v34 = 0u;
  }

  v10 = objc_msgSend_columnIndexesForUIDs_(self, v5, v34, v7, v8);
  v14 = objc_msgSend_rowIndexesForUIDs_(self, v11, &__p[1], v12, v13);
  v15 = [TSCECellTractRef alloc];
  MEMORY[0x223D9F7A0](&v33, v10);
  MEMORY[0x223D9F7A0](&v32, v14);
  v31[0] = objc_msgSend_tableUID(v9, v16, v17, v18, v19);
  v31[1] = v20;
  v21 = objc_msgSend_initWithColumns_rows_tableUID_(v15, v20, &v33, &v32, v31);
  TSUIndexSet::~TSUIndexSet(&v32);
  TSUIndexSet::~TSUIndexSet(&v33);
  v26 = objc_msgSend_basePreserveFlags(v9, v22, v23, v24, v25);
  objc_msgSend_setPreserveFlags_(v21, v27, v26, v28, v29);

  if (__p[1])
  {
    *&v36 = __p[1];
    operator delete(__p[1]);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  return v21;
}

- (id)uidRectRefForCellTractRef:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_columns(v4, v5, v6, v7, v8);
  v10 = TSUIndexSet::asNSIndexSet(v9);
  v15 = objc_msgSend_rows(v4, v11, v12, v13, v14);
  v16 = TSUIndexSet::asNSIndexSet(v15);
  objc_msgSend_columnUIDsForColumnIndexes_(self, v17, v10, v18, v19);
  objc_msgSend_rowUIDsForRowIndexes_(self, v20, v16, v21, v22);
  sub_2210BBBE8(v38, v42, v41);
  v23 = [TSTUIDRectRef alloc];
  v28 = objc_msgSend_tableUID(v4, v24, v25, v26, v27);
  v33 = objc_msgSend_preserveFlags(v4, v29, v30, v31, v32, v28, v29);
  v35 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v23, v34, 0, &v37, v38, v33);
  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  if (v38[0])
  {
    v38[1] = v38[0];
    operator delete(v38[0]);
  }

  if (v41[0])
  {
    v41[1] = v41[0];
    operator delete(v41[0]);
  }

  if (v42[0])
  {
    v42[1] = v42[0];
    operator delete(v42[0]);
  }

  return v35;
}

- (void)moveRowIndexRange:(_NSRange)a3 toIndex:(unsigned int)a4
{
  if (a3.location != a4)
  {
    length = a3.length;
    location = a3.location;
    v7 = a4;
    objc_msgSend_willModify(self, a2, a3.location, a3.length, *&a4);
    objc_msgSend_incrementVersionCounter(self, v8, v9, v10, v11);
    if (location <= v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = location + length;
    }

    if (location <= v7)
    {
      v13 = length;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13 + location;
    if (location >= v7)
    {
      v15 = v7;
    }

    else
    {
      v15 = location;
    }

    begin = self->_rowUidForIndex.__begin_;
    v17 = self->_rowUidForIndex.__end_ - begin;
    if (v15 < v17)
    {
      end = &begin[v15];
    }

    else
    {
      end = self->_rowUidForIndex.__end_;
    }

    v19 = v14 >= v17;
    v20 = &begin[v14];
    if (v19)
    {
      v21 = self->_rowUidForIndex.__end_;
    }

    else
    {
      v21 = v20;
    }

    if (v12 < v17)
    {
      v22 = &begin[v12];
    }

    else
    {
      v22 = self->_rowUidForIndex.__end_;
    }

    sub_22128969C(end, v21, v22);
    if (v15 < v12)
    {
      v27 = v15;
      do
      {
        *(sub_221287990(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_, &self->_rowUidForIndex.__begin_[v27++]._lower) + 8) = v15++;
      }

      while (v12 != v15);
    }

    objc_msgSend__checkStructure(self, v23, v24, v25, v26);
  }
}

- (void)moveColumnIndexRange:(_NSRange)a3 toIndex:(unsigned __int16)a4
{
  if (a3.location != a4)
  {
    length = a3.length;
    location = a3.location;
    v7 = a4;
    objc_msgSend_willModify(self, a2, a3.location, a3.length, a4);
    objc_msgSend_incrementVersionCounter(self, v8, v9, v10, v11);
    if (location <= v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = location + length;
    }

    if (location <= v7)
    {
      v13 = length;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13 + location;
    if (location >= v7)
    {
      v15 = v7;
    }

    else
    {
      v15 = location;
    }

    begin = self->_columnUidForIndex.__begin_;
    v17 = self->_columnUidForIndex.__end_ - begin;
    if (v15 < v17)
    {
      end = &begin[v15];
    }

    else
    {
      end = self->_columnUidForIndex.__end_;
    }

    v19 = v14 >= v17;
    v20 = &begin[v14];
    if (v19)
    {
      v21 = self->_columnUidForIndex.__end_;
    }

    else
    {
      v21 = v20;
    }

    if (v12 < v17)
    {
      v22 = &begin[v12];
    }

    else
    {
      v22 = self->_columnUidForIndex.__end_;
    }

    sub_22128969C(end, v21, v22);
    if (v15 < v12)
    {
      v27 = v15;
      do
      {
        *(sub_221260850(&self->_columnIndexForUid.__table_.__bucket_list_.__ptr_, &self->_columnUidForIndex.__begin_[v27++]._lower) + 16) = v15++;
      }

      while (v12 != v15);
    }

    objc_msgSend__checkStructure(self, v23, v24, v25, v26);
  }
}

- (void)removeRowsAtIndexes:(id)a3
{
  v4 = a3;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  objc_msgSend_incrementVersionCounter(self, v9, v10, v11, v12);
  v13 = self->_rowUidForIndex.__end_ - self->_rowUidForIndex.__begin_;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_221285664;
  v30[3] = &unk_27845E958;
  v30[4] = self;
  objc_msgSend_enumerateIndexesInRange_options_usingBlock_(v4, v14, 0, v13, 0, v30);
  v15 = self->_rowUidForIndex.__end_ - self->_rowUidForIndex.__begin_;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_221285688;
  v29[3] = &unk_27845E1D0;
  v29[4] = self;
  objc_msgSend_enumerateRangesInRange_options_usingBlock_(v4, v16, 0, v15, 2, v29);
  Index = objc_msgSend_firstIndex(v4, v17, v18, v19, v20);
  v26 = Index;
  begin = self->_rowUidForIndex.__begin_;
  if (Index < self->_rowUidForIndex.__end_ - begin)
  {
    v28 = Index;
    do
    {
      v30[6] = &begin[v28];
      *(sub_221287990(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_, &begin[v28]._lower) + 8) = v26++;
      begin = self->_rowUidForIndex.__begin_;
      ++v28;
    }

    while (v26 < self->_rowUidForIndex.__end_ - begin);
  }

  objc_msgSend__checkStructure(self, v22, v23, v24, v25);
}

- (void)removeColumnsAtIndexes:(id)a3
{
  v4 = a3;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  objc_msgSend_incrementVersionCounter(self, v9, v10, v11, v12);
  v13 = self->_columnUidForIndex.__end_ - self->_columnUidForIndex.__begin_;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_2212858B8;
  v30[3] = &unk_27845E958;
  v30[4] = self;
  objc_msgSend_enumerateIndexesInRange_options_usingBlock_(v4, v14, 0, v13, 0, v30);
  v15 = self->_columnUidForIndex.__end_ - self->_columnUidForIndex.__begin_;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2212858DC;
  v29[3] = &unk_27845E1D0;
  v29[4] = self;
  objc_msgSend_enumerateRangesInRange_options_usingBlock_(v4, v16, 0, v15, 2, v29);
  Index = objc_msgSend_firstIndex(v4, v17, v18, v19, v20);
  v26 = Index;
  begin = self->_columnUidForIndex.__begin_;
  if (Index < self->_columnUidForIndex.__end_ - begin)
  {
    v28 = Index;
    do
    {
      v30[6] = &begin[v28];
      *(sub_221260850(&self->_columnIndexForUid.__table_.__bucket_list_.__ptr_, &begin[v28]._lower) + 16) = v26++;
      begin = self->_columnUidForIndex.__begin_;
      ++v28;
    }

    while (v26 < self->_columnUidForIndex.__end_ - begin);
  }

  objc_msgSend__checkStructure(self, v22, v23, v24, v25);
}

- (void)replaceRowsWithUids:(const void *)a3
{
  objc_msgSend_willModify(self, a2, a3, v3, v4);
  objc_msgSend_incrementVersionCounter(self, v7, v8, v9, v10);
  self->_rowUidForIndex.__end_ = self->_rowUidForIndex.__begin_;
  sub_2210BE918(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_);
  objc_msgSend_insertRowsWithUIDs_atIndex_(self, v11, a3, 0, v12);

  objc_msgSend__checkStructure(self, v13, v14, v15, v16);
}

- (void)replaceColumnsWithUids:(const void *)a3
{
  objc_msgSend_willModify(self, a2, a3, v3, v4);
  objc_msgSend_incrementVersionCounter(self, v7, v8, v9, v10);
  self->_columnUidForIndex.__end_ = self->_columnUidForIndex.__begin_;
  sub_2210BE918(&self->_columnIndexForUid.__table_.__bucket_list_.__ptr_);
  objc_msgSend_insertColumnsWithUIDs_atIndex_(self, v11, a3, 0, v12);

  objc_msgSend__checkStructure(self, v13, v14, v15, v16);
}

- (void)insertNewRowsInIndexRange:(_NSRange)a3
{
  location = a3.location;
  sub_2211A9184(a3.length, __p);
  objc_msgSend_insertRowsWithUIDs_atIndex_(self, v5, __p, location, v6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)insertNewColumnsInIndexRange:(_NSRange)a3
{
  location = a3.location;
  sub_2211A9184(a3.length, __p);
  objc_msgSend_insertColumnsWithUIDs_atIndex_(self, v5, __p, location, v6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)insertColumnsWithUIDs:(const void *)a3 atIndex:(unsigned __int16)a4
{
  if (a4 == 0x7FFF)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTColumnRowUIDMap insertColumnsWithUIDs:atIndex:]", a4, v4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTColumnRowUIDMap.mm", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 936, 0, "cannot insert columns at invalid columnIndex");

    v16 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v16, v12, v13, v14, v15);
  }

  else
  {
    v17 = a4;
    objc_msgSend_willModify(self, a2, a3, a4, v4);
    objc_msgSend_incrementVersionCounter(self, v20, v21, v22, v23);
    sub_221083368(&self->_columnUidForIndex.__begin_, ((*(a3 + 1) - *a3) >> 4) + self->_columnUidForIndex.__end_ - self->_columnUidForIndex.__begin_);
    sub_2210F0C88(&self->_columnUidForIndex.__begin_, &self->_columnUidForIndex.__begin_[v17], *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 4);
    begin = self->_columnUidForIndex.__begin_;
    if (v17 < ((LODWORD(self->_columnUidForIndex.__end_) - begin) >> 4))
    {
      v29 = v17;
      v30 = v17;
      do
      {
        *(sub_221260850(&self->_columnIndexForUid.__table_.__bucket_list_.__ptr_, &begin[v30]._lower) + 16) = v29++;
        begin = self->_columnUidForIndex.__begin_;
        ++v30;
      }

      while (v29 < ((LODWORD(self->_columnUidForIndex.__end_) - begin) >> 4));
    }

    objc_msgSend__checkStructure(self, v24, v25, v26, v27);
  }
}

- (void)insertRowsWithUIDs:(const void *)a3 atIndex:(unsigned int)a4
{
  if (a4 == 0x7FFFFFFF)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTColumnRowUIDMap insertRowsWithUIDs:atIndex:]", *&a4, v4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTColumnRowUIDMap.mm", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 956, 0, "cannot insert rows at invalid rowIndex");

    v16 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v16, v12, v13, v14, v15);
  }

  else
  {
    v17 = a4;
    objc_msgSend_willModify(self, a2, a3, *&a4, v4);
    objc_msgSend_incrementVersionCounter(self, v20, v21, v22, v23);
    sub_221083368(&self->_rowUidForIndex.__begin_, self->_rowIndexForUid.__table_.__size_ + ((*(a3 + 1) - *a3) >> 4));
    v24 = v17;
    sub_2210F0C88(&self->_rowUidForIndex.__begin_, &self->_rowUidForIndex.__begin_[v17], *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 4);
    for (i = self->_rowUidForIndex.__begin_; v17 < (self->_rowUidForIndex.__end_ - i); v24 = v17)
    {
      *(sub_221287990(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_, &i[v24]._lower) + 8) = v17;
      i = self->_rowUidForIndex.__begin_;
      ++v17;
    }

    objc_msgSend__checkStructure(self, v25, v26, v27, v28);
  }
}

- (void)swapRowAtIndex:(unsigned int)a3 withRowAtIndex:(unsigned int)a4
{
  objc_msgSend_willModify(self, a2, *&a3, *&a4, v4);
  objc_msgSend_incrementVersionCounter(self, v8, v9, v10, v11);
  begin = self->_rowUidForIndex.__begin_;
  v13 = begin[a3];
  begin[a3] = begin[a4];
  begin[a4] = v13;
  *(sub_221287990(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_, &self->_rowUidForIndex.__begin_[a3]._lower) + 8) = a3;
  *(sub_221287990(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_, &self->_rowUidForIndex.__begin_[a4]._lower) + 8) = a4;
  objc_msgSend__checkStructure(self, v14, v15, v16, v17);
}

- (void)reset
{
  objc_msgSend_willModify(self, a2, v2, v3, v4);
  objc_msgSend_incrementVersionCounter(self, v6, v7, v8, v9);
  sub_2210BE918(&self->_columnIndexForUid.__table_.__bucket_list_.__ptr_);
  sub_2210BE918(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_);
  self->_columnUidForIndex.__end_ = self->_columnUidForIndex.__begin_;
  self->_rowUidForIndex.__end_ = self->_rowUidForIndex.__begin_;

  objc_msgSend__checkStructure(self, v10, v11, v12, v13);
}

- (void)applyMap:(const void *)a3 toRows:(BOOL)a4
{
  v5 = a4;
  objc_msgSend_willModify(self, a2, a3, a4, v4);
  objc_msgSend_incrementVersionCounter(self, v8, v9, v10, v11);
  v16 = *(a3 + 2);
  if (v5)
  {
    for (; v16; v16 = *v16)
    {
      v17 = objc_msgSend_rowIndexForRowUID_(self, v12, v16[2], v16[3], v15);
      v20 = objc_msgSend_rowIndexForRowUID_(self, v18, v16[4], v16[5], v19);
      if (v17 != 0x7FFFFFFF && v20 == 0x7FFFFFFF)
      {
        self->_rowUidForIndex.__begin_[v17] = *(v16 + 2);
        *(sub_221287990(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_, v16 + 4) + 8) = v17;
      }
    }
  }

  else
  {
    for (; v16; v16 = *v16)
    {
      v22 = objc_msgSend_columnIndexForColumnUID_(self, v12, v16[2], v16[3], v15);
      v25 = objc_msgSend_columnIndexForColumnUID_(self, v23, v16[4], v16[5], v24);
      if (v22 != 0x7FFF && v25 == 0x7FFF)
      {
        self->_columnUidForIndex.__begin_[v22] = *(v16 + 2);
        *(sub_221260850(&self->_columnIndexForUid.__table_.__bucket_list_.__ptr_, v16 + 4) + 16) = v22;
      }
    }
  }

  objc_msgSend__checkStructure(self, v12, v13, v14, v15);
}

- (BOOL)writeCellIDsInCellUIDList:(id)a3 toVector:(void *)a4 prunedCellUIDs:(void *)a5
{
  v8 = a3;
  *(a4 + 1) = *a4;
  *(a5 + 1) = *a5;
  v52 = v8;
  v13 = objc_msgSend_count(v8, v9, v10, v11, v12);
  sub_2211687C4(a4, v13);
  v53 = objc_msgSend_iterator(v52, v14, v15, v16, v17);
  v65 = 0;
  v66 = 0;
  v67 = 0;
  sub_221286598(&v65, 0x3E8uLL);
  __p = 0;
  v63 = 0;
  v64 = 0;
  sub_22127D034(&__p, 0x1388uLL);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v57 = 0;
  v58 = 0;
  v55 = a5;
  v56 = 0x7FFF7FFFFFFFLL;
  v23 = 0x7FFFFFFF;
  v54 = self;
LABEL_2:
  if (objc_msgSend_nextCellUIDsBatch_batchSize_(v53, v18, &__p, 5000, v19))
  {
    v25 = __p;
    v24 = v63;
    for (i = v63; ; v24 = i)
    {
      if (v25 == v24)
      {
        goto LABEL_2;
      }

      v26 = v25[2];
      v27 = v25[3];
      if (v21 != v26 || v20 != v27)
      {
        v23 = objc_msgSend_rowIndexForRowUID_(self, v18, v26, v27, v19);
        v22 = 0;
        v21 = v25[2];
        v20 = v25[3];
      }

      if (v22 >= 0xAAAAAAAAAAAAAAABLL * ((v66 - v65) >> 3))
      {
        v31 = objc_msgSend_columnIndexForColumnUID_(self, v18, *v25, v25[1], v19);
        v60 = v31;
        v61 = *v25;
        sub_221286658(&v65, &v60);
        goto LABEL_22;
      }

      v29 = &v65[24 * v22];
      if (*(v29 + 1) == *v25)
      {
        v30 = v25[1];
        if (*(v29 + 2) == v30)
        {
          v31 = *v29;
          goto LABEL_22;
        }
      }

      else
      {
        v30 = v25[1];
      }

      v32 = objc_msgSend_columnIndexForColumnUID_(self, v18, *v25, v30, v19);
      v31 = v32;
      v33 = v66;
      v34 = &v65[24 * v22];
      if (v34 != v66)
      {
        v35 = &v65[24 * v22];
        for (j = &v35[v66 - v34]; j != v33; j += 24)
        {
          *v35 = *j;
          *(v35 + 8) = *(j + 8);
          v35 += 24;
        }

        v66 = v35;
      }

      v60 = v32;
      v61 = *v25;
      sub_221286658(&v65, &v60);
LABEL_22:
      if (v23 == 0x7FFFFFFF || v31 == 0x7FFF)
      {
        sub_22112A984(a5, v25);
      }

      else
      {
        v37 = v23 | (v31 << 32);
        v39 = *(a4 + 1);
        v38 = *(a4 + 2);
        if (v39 >= v38)
        {
          v41 = (v39 - *a4) >> 3;
          if ((v41 + 1) >> 61)
          {
            sub_22107C148();
          }

          v42 = v38 - *a4;
          v43 = v42 >> 2;
          if (v42 >> 2 <= (v41 + 1))
          {
            v43 = v41 + 1;
          }

          if (v42 >= 0x7FFFFFFFFFFFFFF8)
          {
            v44 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v44 = v43;
          }

          if (v44)
          {
            sub_2210874C4(a4, v44);
          }

          *(8 * v41) = v37;
          v40 = 8 * v41 + 8;
          v45 = *(a4 + 1) - *a4;
          v46 = (8 * v41 - v45);
          memcpy(v46, *a4, v45);
          v47 = *a4;
          *a4 = v46;
          *(a4 + 1) = v40;
          *(a4 + 2) = 0;
          if (v47)
          {
            operator delete(v47);
          }

          self = v54;
          a5 = v55;
        }

        else
        {
          *v39 = v37;
          v40 = (v39 + 1);
        }

        *(a4 + 1) = v40;
        ++v58;
        v56 = sub_221286760(v56, v57, v37);
        v57 = v18;
      }

      ++v22;
      v25 += 4;
    }
  }

  v50 = v58 && v58 == HIDWORD(v57) * v57 && (v48 = sub_221286760(**a4, 0x100000001uLL, *(*(a4 + 1) - 8)), v48 == v56) && ((v48 ^ v56) & 0x101FFFF00000000) == 0 && v49 == v57;
  if (__p)
  {
    v63 = __p;
    operator delete(__p);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  return v50;
}

- (void)convertCellUIDLookupList:(id)a3 toCellRangeVector:(void *)a4 prunedSummaryCellUIDs:(void *)a5
{
  v8 = a3;
  v13 = v8;
  if (v8)
  {
    v14 = objc_msgSend_UIDLookupList(v8, v9, v10, v11, v12);
    v19 = objc_msgSend_UIDLookupList(v13, v15, v16, v17, v18);
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x5812000000;
    v42[3] = sub_221286C4C;
    v42[4] = sub_221286C58;
    v42[5] = &unk_22188E88F;
    memset(v43, 0, sizeof(v43));
    v44 = 1065353216;
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x5812000000;
    v39[3] = sub_221286C60;
    v39[4] = sub_221286C6C;
    v39[5] = &unk_22188E88F;
    memset(v40, 0, sizeof(v40));
    v41 = 1065353216;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_221286C74;
    v38[3] = &unk_278462430;
    v38[4] = self;
    v38[5] = v42;
    sub_2210BCE04(v14, v38);
    v19 += 13;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_221286D00;
    v37[3] = &unk_278462430;
    v37[4] = self;
    v37[5] = v39;
    sub_2210BCE04(v19, v37);
    v27 = 0;
    v28 = &v27;
    v29 = 0x5812000000;
    v30 = sub_221286D8C;
    v31 = sub_221286D98;
    v32 = &unk_22188E88F;
    v36[0] = 0;
    v36[1] = 0;
    v33 = 0;
    v34 = 0;
    v35 = v36;
    v24 = objc_msgSend_UIDLookupList(v13, v20, v21, v22, v23);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_221286DA4;
    v26[3] = &unk_278462458;
    v26[4] = v42;
    v26[5] = v39;
    v26[8] = v19;
    v26[9] = a5;
    v26[6] = &v27;
    v26[7] = v14;
    sub_22137AA18(v24, v26);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_221286EE8;
    v25[3] = &unk_278462498;
    v25[4] = a4;
    TSCECellCoordSet::enumerateColumnsUsingBlock((v28 + 6), v25);
    _Block_object_dispose(&v27, 8);
    sub_22107C860(&v35, v36[0]);
    _Block_object_dispose(v39, 8);
    sub_2210BDEC0(v40);
    _Block_object_dispose(v42, 8);
    sub_2210BDEC0(v43);
  }
}

- (TSCERangeCoordinate)tableRangeCoordinate
{
  v6 = objc_msgSend_numberOfColumns(self, a2, v2, v3, v4);
  v11 = v6 | (objc_msgSend_numberOfRows(self, v7, v8, v9, v10) << 32);

  v12 = TSUCellRectToTSCERangeCoordinate(0, v11);
  result._bottomRight = v13;
  result._topLeft = v12;
  return result;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 11) = 0;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 36) = 1065353216;
  *(self + 152) = 0u;
  *(self + 168) = 0u;
  *(self + 46) = 1065353216;
  return self;
}

@end