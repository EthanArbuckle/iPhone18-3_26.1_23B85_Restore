@interface TSTCategoryOrder
- (BOOL)hasValidInfo;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)groupUidsGivenRowUids:(SEL)a3 selectedLevels:(const void *)a4;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsFromUids:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsWithLabels;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowOrder;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)setRowOrderUsingViewOrder;
- (TSTCategoryOrder)initWithContext:(id)a3;
- (TSTCategoryOrder)initWithContext:(id)a3 tableInfo:(id)a4 rowUids:(const void *)a5;
- (TSTCategoryOrder)initWithTableInfo:(id)a3;
- (TSTCategoryOrder)initWithTableInfo:(id)a3 rowUids:(const void *)a4;
- (TSTTableInfo)tableInfo;
- (id)copyWithContext:(id)a3 tableInfo:(id)a4;
- (id)sortedArrayFromArray:(id)a3;
- (id)targetGroupFromRowIndex:(unsigned int)a3 minSourceLevel:(unsigned __int8)a4 templateRowUID:(TSKUIDStruct *)a5;
- (unsigned)minimumCategoryLevelInRowRange:(_NSRange)a3;
- (void)insertRowUids:(const void *)a3 beforeUid:(const TSKUIDStruct *)a4;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)removeRowUids:(const void *)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setRowOrder:(const void *)a3;
- (void)setTemporaryRowOrder:(const void *)a3;
@end

@implementation TSTCategoryOrder

- (TSTCategoryOrder)initWithContext:(id)a3 tableInfo:(id)a4 rowUids:(const void *)a5
{
  v8 = a3;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = TSTCategoryOrder;
  v10 = [(TSTCategoryOrder *)&v20 initWithContext:v8];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_tableInfo, v9);
    if (v9)
    {
      v12 = [TSTColumnRowUIDMap alloc];
      __p = 0;
      v18 = 0;
      v19 = 0;
      v14 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v12, v13, v8, &__p, a5);
      uidMap = v11->_uidMap;
      v11->_uidMap = v14;

      if (__p)
      {
        v18 = __p;
        operator delete(__p);
      }
    }

    v11->_isRowOrderTemporary = 0;
  }

  return v11;
}

- (TSTCategoryOrder)initWithTableInfo:(id)a3 rowUids:(const void *)a4
{
  v6 = a3;
  v11 = objc_msgSend_context(v6, v7, v8, v9, v10);
  v13 = objc_msgSend_initWithContext_tableInfo_rowUids_(self, v12, v11, v6, a4);

  return v13;
}

- (TSTCategoryOrder)initWithTableInfo:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_context(v4, v5, v6, v7, v8);
  __p = 0;
  v14 = 0;
  v15 = 0;
  v11 = objc_msgSend_initWithContext_tableInfo_rowUids_(self, v10, v9, v4, &__p);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  return v11;
}

- (TSTCategoryOrder)initWithContext:(id)a3
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  v3 = objc_msgSend_initWithContext_tableInfo_rowUids_(self, a2, a3, 0, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  return v3;
}

- (id)copyWithContext:(id)a3 tableInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [TSTCategoryOrder alloc];
  v12 = objc_msgSend_initWithContext_(v8, v9, v6, v10, v11);
  objc_storeWeak((v12 + 72), v7);
  v16 = objc_msgSend_copyWithContext_(self->_uidMap, v13, v6, v14, v15);
  v17 = *(v12 + 80);
  *(v12 + 80) = v16;

  return v12;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsFromUids:(SEL)a3
{
  v7 = *(a4 + 1);
  v8 = *a4;
  v9 = (v7 - *a4) >> 4;
  if (v9 > 1)
  {
    result = objc_msgSend_orderedRowUidsWithLabels(self, v8, v7, v9, v4);
    v11 = *(a4 + 1);
    if (v11 != *a4)
    {
      sub_221280A48(v17, *a4, v11);
      begin = retstr->__begin_;
      end = retstr->__end_;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3321888768;
      v15[2] = sub_22149A160;
      v15[3] = &unk_2834A7D88;
      sub_2213FB8DC(v16, v17);
      v14 = sub_2213F9E8C(begin, end, v15);
      if (v14 != retstr->__end_)
      {
        retstr->__end_ = v14;
      }

      sub_2210BDEC0(v16);
      return sub_2210BDEC0(v17);
    }
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;

    return sub_221086EBC(retstr, v8, v7, v9);
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsWithLabels
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v10 = objc_msgSend_baseTableModel(WeakRetained, v6, v7, v8, v9);
  v15 = objc_msgSend_columnRowUIDMap(v10, v11, v12, v13, v14);

  v16 = objc_loadWeakRetained(&self->_tableInfo);
  v21 = objc_msgSend_groupBy(v16, v17, v18, v19, v20);

  sub_22149BD7C(v72, v21);
  v26 = objc_msgSend_labelRowUIDSet(v21, v22, v23, v24, v25);
  v27 = objc_opt_new();
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = sub_22149A510;
  v70[3] = &unk_27845D900;
  v28 = v27;
  v71 = v28;
  objc_msgSend_foreachUuid_(v26, v29, v70, v30, v31);
  sub_22149CC78(v72, v28);
  sub_22149A558(v72, self->_uidMap, v15, !self->_isRowOrderTemporary);
  v32 = objc_loadWeakRetained(&self->_tableInfo);
  v37 = objc_msgSend_baseTableModel(v32, v33, v34, v35, v36);
  __p[0] = objc_msgSend_headerRowRange(v37, v38, v39, v40, v41);
  __p[1] = v42;
  v43 = TSUCellRect::rows(__p);
  if (v15)
  {
    objc_msgSend_rowUIDsForRowRange_(v15, v44, v43, v44, v45);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  v50 = objc_msgSend_numberOfLevels(v75, v46, v47, v48, v49);
  sub_22149C6EC(v72, &retstr->__begin_, 0, 0, 0, 1, (v50 + 1), 1, 0);
  v51 = objc_loadWeakRetained(&self->_tableInfo);
  v56 = objc_msgSend_baseTableModel(v51, v52, v53, v54, v55);
  v67.origin = objc_msgSend_footerRowRange(v56, v57, v58, v59, v60);
  v67.size = v61;
  v62 = TSUCellRect::rows(&v67);
  if (v15)
  {
    objc_msgSend_rowUIDsForRowRange_(v15, v63, v62, v63, v64);
    v65 = *__p;
  }

  else
  {
    v69 = 0;
    v65 = 0uLL;
    *__p = 0u;
  }

  sub_2210F0C88(retstr, retstr->__end_, v65, *(&v65 + 1), (*(&v65 + 1) - v65) >> 4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v72[0] = &unk_2834A7E10;
  sub_2210BDEC0(&v74);
  __p[0] = &v73;
  sub_2213FB81C(__p);

  return result;
}

- (id)targetGroupFromRowIndex:(unsigned int)a3 minSourceLevel:(unsigned __int8)a4 templateRowUID:(TSKUIDStruct *)a5
{
  v127 = a4;
  v6 = *&a3;
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  __p.origin = objc_msgSend_bodyRange(WeakRetained, v9, v10, v11, v12);
  __p.size = v13;
  v14 = TSUCellRect::rows(&__p);
  v16 = v15;

  v17 = 0;
  v18 = 0;
  if (v6 >= v14 && v6 - v14 < v16)
  {
    v19 = objc_loadWeakRetained(&self->_tableInfo);
    v18 = objc_msgSend_rowUIDForRowIndex_(v19, v20, v6, v21, v22);
    v17 = v23;
  }

  a5->_lower = v18;
  a5->_upper = v17;
  if (v6 <= v14)
  {
LABEL_8:
    v34 = 0;
    v36 = 0;
    goto LABEL_9;
  }

  v24 = objc_loadWeakRetained(&self->_tableInfo);
  v25 = (v6 - 1);
  isLabelRow = objc_msgSend_isLabelRow_(v24, v26, v25, v27, v28);

  if (isLabelRow)
  {
    if (v14 < v25)
    {
      v30 = objc_loadWeakRetained(&self->_tableInfo);
      v34 = objc_msgSend_rowUIDForRowIndex_(v30, v31, (v6 - 2), v32, v33);
      v36 = v35;

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v104 = objc_loadWeakRetained(&self->_tableInfo);
  v34 = objc_msgSend_rowUIDForRowIndex_(v104, v105, (v6 - 1), v106, v107);
  v36 = v108;

  v109 = objc_loadWeakRetained(&self->_tableInfo);
  isSummaryRow = objc_msgSend_isSummaryRow_(v109, v110, v25, v111, v112);

  if ((isSummaryRow & 1) == 0)
  {
    a5->_lower = v34;
    a5->_upper = v36;
  }

LABEL_9:
  if (v18 | v17)
  {
    if (!(v34 | v36))
    {
      v37 = objc_loadWeakRetained(&self->_tableInfo);
      v42 = objc_msgSend_groupBy(v37, v38, v39, v40, v41);
      v47 = objc_msgSend_topLevelGroupNode(v42, v43, v44, v45, v46);

      a5->_lower = 0;
      a5->_upper = 0;
      goto LABEL_36;
    }
  }

  else if (!(v34 | v36))
  {
    TSUSetCrashReporterInfo();
    v115 = MEMORY[0x277D81150];
    v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v116, "[TSTCategoryOrder targetGroupFromRowIndex:minSourceLevel:templateRowUID:]", v117, v118, "[TSTCategoryOrder targetGroupFromRowIndex:minSourceLevel:templateRowUID:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryOrder.mm", 209);
    v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryOrder.mm", v121, v122);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v115, v124, v119, v123, 209, 1, "at the moment we don't handle this well");

    TSUCrashBreakpoint();
    abort();
  }

  v126 = a5;
  v48 = objc_loadWeakRetained(&self->_tableInfo);
  v53 = objc_msgSend_groupBy(v48, v49, v50, v51, v52);
  v54 = self;
  v55 = objc_loadWeakRetained(&self->_tableInfo);
  v60 = objc_msgSend_groupBy(v55, v56, v57, v58, v59);
  v65 = objc_msgSend_numberOfLevels(v60, v61, v62, v63, v64);
  v67 = objc_msgSend_groupNodeForRowUid_atLevel_(v53, v66, v34, v36, v65);
  v68 = v67;
  if (v67)
  {
    v69 = v67;
  }

  else
  {
    v125 = v48;
    v70 = objc_loadWeakRetained(&v54->_tableInfo);
    v75 = objc_msgSend_groupBy(v70, v71, v72, v73, v74);
    v69 = objc_msgSend_groupNodeForGroupUid_(v75, v76, v34, v36, v77);

    v48 = v125;
  }

  if (v127 == 253)
  {
    v82 = v126;
    v83 = v54;
  }

  else
  {
    if (v127 <= 1)
    {
      v92 = 1;
    }

    else
    {
      v92 = v127;
    }

    v93 = v92 - 1;
    v82 = v126;
    v83 = v54;
    for (i = objc_msgSend_groupLevel(v69, v78, v79, v80, v81); i > v93; i = objc_msgSend_groupLevel(v99, v100, v101, v102, v103))
    {
      v99 = objc_msgSend_parentNode(v69, v95, v96, v97, v98);

      v69 = v99;
    }
  }

  v84 = v69;
  v47 = v84;
  if (v84 && !v82->_lower && !v82->_upper)
  {
    objc_msgSend_rowUidsAsVector(v84, v85, v86, v87, v88);
    objc_msgSend_orderedRowUidsFromUids_(v83, v89, &__p, v90, v91);
    if (v129 == v128)
    {
      if (!v129)
      {
        goto LABEL_33;
      }
    }

    else
    {
      *v82 = *v128;
    }

    operator delete(v128);
LABEL_33:
    if (__p.origin)
    {
      __p.size = __p.origin;
      operator delete(*&__p.origin);
    }
  }

LABEL_36:

  return v47;
}

- (unsigned)minimumCategoryLevelInRowRange:(_NSRange)a3
{
  v5 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], a2, a3.location, a3.length, v3);
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v11 = objc_msgSend_indexesForSummaryRows(WeakRetained, v7, v8, v9, v10);
  v15 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v5, v12, v11, v13, v14);

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = -3;
  if (objc_msgSend_count(v15, v16, v17, v18, v19))
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_22149AC80;
    v25[3] = &unk_27845F0D8;
    v25[4] = self;
    v25[5] = &v26;
    objc_msgSend_enumerateIndexesUsingBlock_(v15, v20, v25, v21, v22);
  }

  v23 = *(v27 + 24);
  _Block_object_dispose(&v26, 8);

  return v23;
}

- (id)sortedArrayFromArray:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB18];
  v10 = objc_msgSend_count(v4, v6, v7, v8, v9);
  v14 = objc_msgSend_arrayWithCapacity_(v5, v11, v10, v12, v13);
  if (objc_msgSend_count(v4, v15, v16, v17, v18))
  {
    if (objc_msgSend_count(v4, v19, v20, v21, v22) == 1)
    {
      objc_msgSend_addObjectsFromArray_(v14, v23, v4, v24, v25);
    }

    else
    {
      v52 = self;
      __p = 0;
      v61 = 0;
      v62 = 0;
      memset(v58, 0, sizeof(v58));
      v59 = 1065353216;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v26 = v4;
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v54, v64, 16);
      if (v32)
      {
        v33 = 0;
        v34 = *v55;
        do
        {
          v35 = 0;
          v36 = v33;
          do
          {
            if (*v55 != v34)
            {
              objc_enumerationMutation(v26);
            }

            *&v53 = objc_msgSend_groupUid(*(*(&v54 + 1) + 8 * v35), v28, v29, v30, v31, v52, 0, 0);
            *(&v53 + 1) = v37;
            sub_221083454(&__p, &v53);
            v63 = &v53;
            v33 = v36 + 1;
            *(sub_221287990(v58, &v53) + 8) = v36;
            ++v35;
            ++v36;
          }

          while (v32 != v35);
          v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v54, v64, 16);
        }

        while (v32);
      }

      objc_msgSend_orderedRowUidsFromUids_(v52, v38, &__p, v39, v40);
      v42 = *(&v53 + 1);
      v41 = v53;
      if (v53 != *(&v53 + 1))
      {
        do
        {
          v63 = v41;
          v43 = sub_221287990(v58, v41);
          v47 = objc_msgSend_objectAtIndex_(v26, v44, *(v43 + 8), v45, v46);
          objc_msgSend_addObject_(v14, v48, v47, v49, v50);

          ++v41;
        }

        while (v41 != v42);
        v41 = v53;
      }

      if (v41)
      {
        *(&v53 + 1) = v41;
        operator delete(v41);
      }

      sub_2210BDEC0(v58);
      if (__p)
      {
        v61 = __p;
        operator delete(__p);
      }
    }
  }

  return v14;
}

- (BOOL)hasValidInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v3 = WeakRetained != 0;

  return v3;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowOrder
{
  v7 = objc_msgSend_rowUIDs(self->_uidMap, a3, v3, v4, v5);
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  v8 = *v7;
  v9 = v7[1];
  v10 = (v9 - *v7) >> 4;

  return sub_221086EBC(retstr, v8, v9, v10);
}

- (void)setRowOrder:(const void *)a3
{
  objc_msgSend_reset(self->_uidMap, a2, a3, v3, v4);
  objc_msgSend_replaceRowsWithUids_(self->_uidMap, v7, a3, v8, v9);
  self->_isRowOrderTemporary = 0;
}

- (void)setTemporaryRowOrder:(const void *)a3
{
  objc_msgSend_reset(self->_uidMap, a2, a3, v3, v4);
  objc_msgSend_replaceRowsWithUids_(self->_uidMap, v7, a3, v8, v9);
  self->_isRowOrderTemporary = 1;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)setRowOrderUsingViewOrder
{
  v59 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v9 = objc_msgSend_groupBy(WeakRetained, v5, v6, v7, v8);

  v10 = objc_loadWeakRetained(&self->_tableInfo);
  v15 = objc_msgSend_indexesForLabelRows(v10, v11, v12, v13, v14);

  v16 = objc_loadWeakRetained(&self->_tableInfo);
  v21 = objc_msgSend_indexesForSummaryRows(v16, v17, v18, v19, v20);

  v22 = -1;
  v58[0] = 0;
  v57[0] = -1;
  for (i = 1; i != 6; ++i)
  {
    v24 = 1 << (i - 1);
    v58[i] = v24;
    v22 &= ~v24;
    v57[i] = v22;
  }

  v25 = objc_loadWeakRetained(&self->_tableInfo);
  v30 = objc_msgSend_rowUIDs(v25, v26, v27, v28, v29);
  v54 = 0;
  v55 = 0;
  v56 = 0;
  sub_221086EBC(&v54, *v30, v30[1], (v30[1] - *v30) >> 4);

  v34 = v54;
  v35 = v55;
  v36 = v55 - v54;
  if (v55 != v54)
  {
    v37 = v36 - 16;
    v38 = (v36 >> 4) - 1;
    v39 = -1;
    do
    {
      if (objc_msgSend_containsIndex_(v15, v31, v38, v32, v33))
      {
        v40 = v54 + v37;
        *v40 = 0;
        v40[1] = 0;
      }

      else if (objc_msgSend_containsIndex_(v21, v31, v38, v32, v33))
      {
        LOBYTE(__p) = 0;
        v53 = 0;
        isError = objc_msgSend_groupLevelForGroupUid_isBlank_isError_(v9, v31, v54 + v37, &__p, &v53);
        if (__p == 1)
        {
          if ((v58[isError] & v39) != 0)
          {
            v42 = v54 + v37;
            *v42 = 0;
            v42[1] = 0;
          }
        }

        else
        {
          v43 = v58[isError];
          if (v53 == 1 && (v43 & v39) != 0)
          {
            v44 = v54 + v37;
            *v44 = 0;
            v44[1] = 0;
          }

          v39 &= ~v43;
        }

        v39 |= v57[isError];
      }

      v37 -= 16;
      --v38;
    }

    while (v38 != -1);
    v34 = v54;
    v35 = v55;
  }

  __p = 0;
  v51 = 0;
  v52 = 0;
  while (v34 != v35)
  {
    if (*v34 != 0)
    {
      sub_221083454(&__p, v34);
    }

    ++v34;
  }

  objc_msgSend_setRowOrder_(self, v31, &__p, v32, v33);
  objc_msgSend_rowOrder(self, v45, v46, v47, v48);
  if (__p)
  {
    v51 = __p;
    operator delete(__p);
  }

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  return result;
}

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812E4498[304], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, v10, v9);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  if (objc_msgSend_fileFormatVersion(v6, v7, v8, v9, v10) == 0x300020000000ALL)
  {
    objc_msgSend_willModifyForUpgrade(self, v11, v12, v13, v14);
  }

  v15 = *(a3 + 3);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22149B74C;
  v25[3] = &unk_278462738;
  v25[4] = self;
  v16 = v6;
  v18 = objc_opt_class();
  v19 = MEMORY[0x277D80A18];
  if (v15)
  {
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v16, v17, v15, v18, 0, v25);
  }

  else
  {
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v16, v17, MEMORY[0x277D80A18], v18, 0, v25);
  }

  v20 = *(a3 + 4);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22149B760;
  v24[3] = &unk_27845E0B8;
  v24[4] = self;
  v21 = v16;
  v23 = objc_opt_class();
  if (v20)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v21, v22, v20, v23, 0, v24);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v21, v22, v19, v23, 0, v24);
  }
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  objc_msgSend_setMessageVersion_(v4, v5, 0x300020000000ALL, v6, v7);
  v13 = v4;
  google::protobuf::internal::AssignDescriptors();
  v10 = objc_msgSend_messageWithNewFunction_descriptor_(v13, v8, sub_22149BE60, off_2812E4498[304], v9);

  objc_msgSend_saveToArchive_archiver_(self, v11, v10, v13, v12);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v17 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v9 = v17;
  *(a3 + 4) |= 1u;
  v10 = *(a3 + 3);
  if (!v10)
  {
    v11 = *(a3 + 1);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = MEMORY[0x223DA0390](v11);
    *(a3 + 3) = v10;
    v9 = v17;
  }

  objc_msgSend_setWeakReference_message_(v9, v6, WeakRetained, v10, v7);

  uidMap = self->_uidMap;
  *(a3 + 4) |= 2u;
  v15 = *(a3 + 4);
  if (!v15)
  {
    v16 = *(a3 + 1);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = MEMORY[0x223DA0390](v16);
    *(a3 + 4) = v15;
  }

  objc_msgSend_setStrongReference_message_(v17, v12, uidMap, v15, v13);
}

- (void)insertRowUids:(const void *)a3 beforeUid:(const TSKUIDStruct *)a4
{
  lower = a4->_lower;
  upper = a4->_upper;
  if (!(lower | upper) || (upper = objc_msgSend_rowIndexForRowUID_(self->_uidMap, a2, lower, upper, v4), upper == 0x7FFFFFFF))
  {
    upper = objc_msgSend_numberOfRows(self->_uidMap, a2, lower, upper, v4);
  }

  uidMap = self->_uidMap;

  objc_msgSend_insertRowsWithUIDs_atIndex_(uidMap, a2, a3, upper, v4);
}

- (void)removeRowUids:(const void *)a3
{
  v14 = objc_msgSend_rowIndexesForUIDs_(self->_uidMap, a2, a3, v3, v4);
  if (objc_msgSend_count(v14, v7, v8, v9, v10) == (*(a3 + 1) - *a3) >> 4)
  {
    objc_msgSend_removeRowsAtIndexes_(self->_uidMap, v11, v14, v12, v13);
  }
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)groupUidsGivenRowUids:(SEL)a3 selectedLevels:(const void *)a4
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v14 = objc_msgSend_groupBy(WeakRetained, v10, v11, v12, v13);
  sub_22149BD7C(v37, v14);

  v15 = [TSCEUIDSet alloc];
  v19 = objc_msgSend_initWithUUIDVector_(v15, v16, a4, v17, v18);
  sub_22149CC78(v37, v19);
  sub_22149CD08(v37);
  v20 = objc_loadWeakRetained(&self->_tableInfo);
  v25 = objc_msgSend_groupBy(v20, v21, v22, v23, v24);
  LODWORD(v14) = objc_msgSend_numberOfLevels(v25, v26, v27, v28, v29);

  for (i = v14; i; --i)
  {
    v30 = sub_22122DECC(a5, &i);
    v31 = v30;
    if (!v30 || *(v30 + 5) < 1)
    {
      break;
    }

    sub_22149CD0C(v37, i, &__p);
    v32 = (v35 - __p) >> 4;
    if (v32 != *(v31 + 5))
    {
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      break;
    }

    sub_22133594C(retstr, retstr->__end_, __p, v35, v32);
    if (__p)
    {
      v35 = __p;
      operator delete(__p);
    }
  }

  v37[0] = &unk_2834A7E10;
  sub_2210BDEC0(v39);
  __p = &v38;
  sub_2213FB81C(&__p);
  return result;
}

- (TSTTableInfo)tableInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);

  return WeakRetained;
}

@end