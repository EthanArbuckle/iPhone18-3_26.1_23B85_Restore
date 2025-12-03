@interface TSTCellDiffMap
+ (id)cellDiffMapWithContext:(id)context;
- (BOOL)p_scanCellDiffArrayForCellBorderChanges:(id)changes;
- (BOOL)p_scanCellDiffArrayForSuppressCustomFormatHandlingProperty:(id)property;
- (BOOL)p_scanNSArrayOfDiffsForCellBorderChanges:(id)changes;
- (BOOL)p_scanNSArrayOfDiffsForSuppressCustomFormatHandlingProperty:(id)property;
- (TSTCellDiffMap)initWithContext:(id)context;
- (TSTCellDiffMap)initWithContext:(id)context cellDiff:(id)diff cellUIDList:(id)list;
- (TSTCellDiffMap)initWithContext:(id)context cellDiffArray:(id)array cellUIDList:(id)list uidBased:(BOOL)based;
- (id).cxx_construct;
- (id)addCellDiff:(id)diff andCellID:(TSUCellCoord)d avoidCopy:(BOOL)copy;
- (id)addCellDiff:(id)diff andCellUID:(TSKUIDStructCoord *)d avoidCopy:(BOOL)copy;
- (id)cellDiffMapByIntersectingUIDs:(const void *)ds inRows:(BOOL)rows;
- (id)cellDiffMapByRemovingColumns:(const void *)columns;
- (id)cellDiffMapByRemovingRows:(const void *)rows;
- (id)copyWithZone:(_NSZone *)zone;
- (id)pruneCellDiffMapAgainstTable:(id)table behavior:(unint64_t)behavior;
- (id)pruneCellDiffMapAgainstTable:(id)table behavior:(unint64_t)behavior usingBlock:(id)block;
- (id)uuidBasedCellDiffMapByTableInfo:(id)info;
- (unint64_t)estimatedMemoryCost;
- (void)addCellDiff:(id)diff andCellUID:(TSKUIDStructCoord *)d;
- (void)addCellDiffMap:(id)map;
- (void)addCellDiffs:(id)diffs atCellUIDs:(id)ds;
- (void)appendCellDiffMap:(id)map;
- (void)enumerateCellIDElementsUsingBlock:(id)block;
- (void)enumerateElementsUsingBlock:(id)block;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_resolveCellIDsToUUIDsByTableInfo:(id)info;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTCellDiffMap

- (TSTCellDiffMap)initWithContext:(id)context
{
  contextCopy = context;
  v9 = objc_msgSend_array(MEMORY[0x277CBEA60], v5, v6, v7, v8);
  v14 = objc_msgSend_cellUIDList(TSTCellUIDList, v10, v11, v12, v13);
  v16 = objc_msgSend_initWithContext_cellDiffArray_cellUIDList_uidBased_(self, v15, contextCopy, v9, v14, 1);

  return v16;
}

- (TSTCellDiffMap)initWithContext:(id)context cellDiff:(id)diff cellUIDList:(id)list
{
  contextCopy = context;
  listCopy = list;
  v13 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v10, diff, v11, v12);
  v15 = objc_msgSend_initWithContext_cellDiffArray_cellUIDList_uidBased_(self, v14, contextCopy, v13, listCopy, 1);

  return v15;
}

- (TSTCellDiffMap)initWithContext:(id)context cellDiffArray:(id)array cellUIDList:(id)list uidBased:(BOOL)based
{
  contextCopy = context;
  arrayCopy = array;
  listCopy = list;
  v86.receiver = self;
  v86.super_class = TSTCellDiffMap;
  v16 = [(TSTCellDiffMap *)&v86 initWithContext:contextCopy];
  if (!arrayCopy)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCellDiffMap initWithContext:cellDiffArray:cellUIDList:uidBased:]", v14, v15);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 66, 0, "Nil cellDiffArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  if (!listCopy)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCellDiffMap initWithContext:cellDiffArray:cellUIDList:uidBased:]", v14, v15);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v31, v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v34, v29, v33, 67, 0, "Nil cellUIDList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
  }

  if (!v16)
  {
    v39 = arrayCopy;
    goto LABEL_16;
  }

  v39 = arrayCopy;
  if (arrayCopy)
  {
    if (!listCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v39 = objc_msgSend_array(MEMORY[0x277CBEA60], v12, v13, v14, v15);
    if (!listCopy)
    {
LABEL_11:
      listCopy = objc_msgSend_cellUIDList(TSTCellUIDList, v12, v13, v14, v15);
    }
  }

  v40 = [TSTCellDiffArray alloc];
  v43 = objc_msgSend_initWithArray_context_(v40, v41, v39, contextCopy, v42);
  v44 = *(v16 + 12);
  *(v16 + 12) = v43;

  v49 = objc_msgSend_copy(listCopy, v45, v46, v47, v48);
  v50 = *(v16 + 13);
  *(v16 + 13) = v49;

  *(v16 + 88) = based;
  *(v16 + 89) = objc_msgSend_p_scanCellDiffArrayForCellBorderChanges_(v16, v51, *(v16 + 12), v52, v53);
  *(v16 + 90) = objc_msgSend_p_scanCellDiffArrayForSuppressCustomFormatHandlingProperty_(v16, v54, *(v16 + 12), v55, v56);
  if (objc_msgSend_count(*(v16 + 12), v57, v58, v59, v60) != 1 || !objc_msgSend_count(*(v16 + 13), v61, v62, v63, v64))
  {
    v65 = objc_msgSend_count(*(v16 + 12), v61, v62, v63, v64);
    if (v65 != objc_msgSend_count(*(v16 + 13), v66, v67, v68, v69))
    {
      v73 = MEMORY[0x277D81150];
      v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "[TSTCellDiffMap initWithContext:cellDiffArray:cellUIDList:uidBased:]", v71, v72);
      v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v76, v77);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v73, v79, v74, v78, 78, 0, "unexpected diff/uidlist ratio");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v80, v81, v82, v83);
    }
  }

LABEL_16:

  return v16;
}

+ (id)cellDiffMapWithContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithContext_(v4, v5, contextCopy, v6, v7);

  return v8;
}

- (void)addCellDiff:(id)diff andCellUID:(TSKUIDStructCoord *)d
{
  row = d->_row;
  v6[0] = d->_column;
  v6[1] = row;
  v5 = objc_msgSend_addCellDiff_andCellUID_avoidCopy_(self, a2, diff, v6, 0);
}

- (id)addCellDiff:(id)diff andCellUID:(TSKUIDStructCoord *)d avoidCopy:(BOOL)copy
{
  copyCopy = copy;
  diffCopy = diff;
  if ((objc_msgSend_isUIDBased(self, v9, v10, v11, v12) & 1) == 0)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTCellDiffMap addCellDiff:andCellUID:avoidCopy:]", v15, v16);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 101, 0, "cannot add cellUIDs in cellID mode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_count(self->_cellDiffArray, v13, v14, v15, v16);
  v33 = objc_msgSend_cellUIDList(self, v29, v30, v31, v32);
  v38 = objc_msgSend_count(v33, v34, v35, v36, v37);

  if (v28 == v38)
  {
    if (copyCopy)
    {
      v43 = diffCopy;
    }

    else
    {
      v43 = objc_msgSend_copy(diffCopy, v39, v40, v41, v42);
    }

    v54 = v43;
    objc_msgSend_addObject_(self->_cellDiffArray, v44, v43, v45, v46);
    objc_msgSend_addCellUID_(self->_cellUIDList, v59, d, v60, v61);
    if (self->_containsCellBorderChanges)
    {
      doesSetProperty = 1;
    }

    else
    {
      doesSetProperty = objc_msgSend_doesSetProperty_(v54, v62, 912, v63, v64);
    }

    self->_containsCellBorderChanges = doesSetProperty;
    if (self->_containsSuppressCustomFormatHandlingProperty)
    {
      v66 = 1;
    }

    else
    {
      v66 = objc_msgSend_BOOLValueForSetProperty_(v54, v62, 914, v63, v64);
    }

    self->_containsSuppressCustomFormatHandlingProperty = v66;
  }

  else
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[TSTCellDiffMap addCellDiff:andCellUID:avoidCopy:]", v41, v42);
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v50, v51);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v53, v48, v52, 117, 0, "can't add cells to a one-to-many mapping");

    v54 = 0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58);
  }

  return v54;
}

- (id)addCellDiff:(id)diff andCellID:(TSUCellCoord)d avoidCopy:(BOOL)copy
{
  copyCopy = copy;
  diffCopy = diff;
  if (objc_msgSend_isUIDBased(self, v9, v10, v11, v12))
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTCellDiffMap addCellDiff:andCellID:avoidCopy:]", v15, v16);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 123, 0, "cannot add cellIDs in UID mode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  p_cellIDs = &self->_cellIDs;
  if (objc_msgSend_count(self->_cellDiffArray, v13, v14, v15, v16) == self->_cellIDs.__end_ - self->_cellIDs.__begin_)
  {
    if (copyCopy)
    {
      v33 = diffCopy;
    }

    else
    {
      v33 = objc_msgSend_copy(diffCopy, v28, v29, v30, v31);
    }

    v44 = v33;
    objc_msgSend_addObject_(self->_cellDiffArray, v34, v33, v35, v36);
    end = self->_cellIDs.__end_;
    cap = self->_cellIDs.__cap_;
    if (end >= cap)
    {
      v55 = end - p_cellIDs->__begin_;
      if ((v55 + 1) >> 61)
      {
        sub_22107C148();
      }

      v56 = cap - p_cellIDs->__begin_;
      v57 = v56 >> 2;
      if (v56 >> 2 <= (v55 + 1))
      {
        v57 = v55 + 1;
      }

      if (v56 >= 0x7FFFFFFFFFFFFFF8)
      {
        v58 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v58 = v57;
      }

      if (v58)
      {
        sub_2210874C4(&self->_cellIDs, v58);
      }

      v59 = (8 * v55);
      *v59 = d;
      v54 = (8 * v55 + 8);
      v60 = (self->_cellIDs.__end_ - p_cellIDs->__begin_);
      v61 = (v59 - v60);
      memcpy((v59 - v60), p_cellIDs->__begin_, v60);
      begin = p_cellIDs->__begin_;
      p_cellIDs->__begin_ = v61;
      self->_cellIDs.__end_ = v54;
      self->_cellIDs.__cap_ = 0;
      if (begin)
      {
        operator delete(begin);
      }
    }

    else
    {
      *end = d;
      v54 = end + 1;
    }

    self->_cellIDs.__end_ = v54;
    if (self->_containsCellBorderChanges)
    {
      doesSetProperty = 1;
    }

    else
    {
      doesSetProperty = objc_msgSend_doesSetProperty_(diffCopy, v49, 912, v50, v51);
    }

    self->_containsCellBorderChanges = doesSetProperty;
    if (self->_containsSuppressCustomFormatHandlingProperty)
    {
      v64 = 1;
    }

    else
    {
      v64 = objc_msgSend_BOOLValueForSetProperty_(diffCopy, v49, 914, v50, v51);
    }

    self->_containsSuppressCustomFormatHandlingProperty = v64;
  }

  else
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSTCellDiffMap addCellDiff:andCellID:avoidCopy:]", v30, v31);
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v40, v41);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v43, v38, v42, 139, 0, "can't add cells to a one-to-many mapping");

    v44 = 0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
  }

  return v44;
}

- (void)addCellDiffMap:(id)map
{
  mapCopy = map;
  isUIDBased = objc_msgSend_isUIDBased(self, v5, v6, v7, v8);
  if (isUIDBased != objc_msgSend_isUIDBased(mapCopy, v10, v11, v12, v13))
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTCellDiffMap addCellDiffMap:]", v16, v17);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 145, 0, "both maps should match isUIDBased state");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  if (objc_msgSend_isUIDBased(self, v14, v15, v16, v17))
  {
    v33 = objc_msgSend_cellUIDList(mapCopy, v29, v30, v31, v32);
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = sub_221414820;
    v64[3] = &unk_278464390;
    v64[4] = self;
    objc_msgSend_enumerateCellUIDsUsingBlock_(v33, v34, v64, v35, v36);
  }

  else
  {
    end = self->_cellIDs.__end_;
    v42 = *objc_msgSend_cellIDs(mapCopy, v29, v30, v31, v32);
    v47 = objc_msgSend_cellIDs(mapCopy, v43, v44, v45, v46);
    sub_221416F0C(&self->_cellIDs.__begin_, end, v42, *(v47 + 8), (*(v47 + 8) - v42) >> 3);
  }

  cellDiffArray = self->_cellDiffArray;
  v49 = objc_msgSend_cellDiffArray(mapCopy, v37, v38, v39, v40);
  v54 = objc_msgSend_allObjects(v49, v50, v51, v52, v53);
  objc_msgSend_addObjectsFromArray_(cellDiffArray, v55, v54, v56, v57);

  if (self->_containsCellBorderChanges)
  {
    v62 = 1;
  }

  else
  {
    v62 = objc_msgSend_containsCellBorderChanges(mapCopy, v58, v59, v60, v61);
  }

  self->_containsCellBorderChanges = v62;
  if (self->_containsSuppressCustomFormatHandlingProperty)
  {
    v63 = 1;
  }

  else
  {
    v63 = objc_msgSend_containsSuppressCustomFormatHandlingProperty(mapCopy, v58, v59, v60, v61);
  }

  self->_containsSuppressCustomFormatHandlingProperty = v63;
}

- (void)addCellDiffs:(id)diffs atCellUIDs:(id)ds
{
  diffsCopy = diffs;
  dsCopy = ds;
  if ((objc_msgSend_isUIDBased(self, v8, v9, v10, v11) & 1) == 0)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCellDiffMap addCellDiffs:atCellUIDs:]", v14, v15);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 163, 0, "map should be UIDBased");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_count(diffsCopy, v12, v13, v14, v15);
  if (v27 != objc_msgSend_count(dsCopy, v28, v29, v30, v31))
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSTCellDiffMap addCellDiffs:atCellUIDs:]", v33, v34);
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v38, v39);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v41, v36, v40, 164, 0, "cellDiffs and cellUIDList should match in length");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
  }

  objc_msgSend_addObjectsFromArray_(self->_cellDiffArray, v32, diffsCopy, v33, v34);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = sub_221414A88;
  v54[3] = &unk_278464390;
  v54[4] = self;
  objc_msgSend_enumerateCellUIDsUsingBlock_(dsCopy, v46, v54, v47, v48);
  if (self->_containsCellBorderChanges)
  {
    v52 = 1;
  }

  else
  {
    v52 = objc_msgSend_p_scanNSArrayOfDiffsForCellBorderChanges_(self, v49, diffsCopy, v50, v51);
  }

  self->_containsCellBorderChanges = v52;
  if (self->_containsSuppressCustomFormatHandlingProperty)
  {
    v53 = 1;
  }

  else
  {
    v53 = objc_msgSend_p_scanNSArrayOfDiffsForSuppressCustomFormatHandlingProperty_(self, v49, diffsCopy, v50, v51);
  }

  self->_containsSuppressCustomFormatHandlingProperty = v53;
}

- (void)appendCellDiffMap:(id)map
{
  mapCopy = map;
  if (!objc_msgSend_isUIDBased(self, v5, v6, v7, v8))
  {
    if (!objc_msgSend_isUIDBased(mapCopy, v9, v10, v11, v12))
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = sub_221414CEC;
      v35[3] = &unk_278464C90;
      v35[4] = self;
      objc_msgSend_enumerateCellIDElementsUsingBlock_(mapCopy, v16, v35, v17, v18);
      goto LABEL_9;
    }

    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTCellDiffMap appendCellDiffMap:]", v17, v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 190, 0, "Trying to append a uidBased cellDiffMap to a cellID diff map. Aborting.");
    goto LABEL_7;
  }

  if ((objc_msgSend_isUIDBased(mapCopy, v9, v10, v11, v12) & 1) == 0)
  {
    v26 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTCellDiffMap appendCellDiffMap:]", v14, v15);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v28, v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v20, v24, 181, 0, "Trying to append a cellID cellDiffMap to a uidBased diff map. Aborting.");
LABEL_7:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
    goto LABEL_9;
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_221414CB8;
  v36[3] = &unk_278464C68;
  v36[4] = self;
  objc_msgSend_enumerateElementsUsingBlock_(mapCopy, v13, v36, v14, v15);
LABEL_9:
}

- (id)pruneCellDiffMapAgainstTable:(id)table behavior:(unint64_t)behavior
{
  v4 = objc_msgSend_pruneCellDiffMapAgainstTable_behavior_usingBlock_(self, a2, table, behavior, 0);

  return v4;
}

- (id)pruneCellDiffMapAgainstTable:(id)table behavior:(unint64_t)behavior usingBlock:(id)block
{
  tableCopy = table;
  blockCopy = block;
  if (objc_msgSend_count(self->_cellUIDList, v10, v11, v12, v13) < 2)
  {
    if (!blockCopy)
    {
LABEL_9:
      v42 = objc_opt_new();
      cellUIDList = self->_cellUIDList;
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = sub_221415104;
      v54[3] = &unk_278464CE0;
      v36 = v42;
      v55 = v36;
      selfCopy = self;
      v40 = objc_msgSend_pruneCellUIDListAgainstTable_behavior_usingBlock_(cellUIDList, v44, tableCopy, behavior, v54);
      v41 = v55;
      goto LABEL_10;
    }

    v21 = 0;
  }

  else
  {
    v18 = objc_msgSend_count(self->_cellDiffArray, v14, v15, v16, v17);
    v21 = v18 == 1;
    if (!blockCopy)
    {
      if (v18 == 1)
      {
        v22 = objc_msgSend_pruneCellUIDListAgainstTable_behavior_(self->_cellUIDList, v19, tableCopy, behavior, v20);
        if (objc_msgSend_count(v22, v23, v24, v25, v26))
        {
          v31 = objc_msgSend_allObjects(self->_cellDiffArray, v27, v28, v29, v30);
          v36 = objc_msgSend_mutableCopy(v31, v32, v33, v34, v35);
        }

        else
        {
          v36 = objc_opt_new();
        }

        v40 = v22;
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  v37 = objc_opt_new();
  v38 = self->_cellUIDList;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = sub_221415044;
  v57[3] = &unk_278464CB8;
  v57[4] = self;
  v60 = v21;
  v59 = blockCopy;
  v36 = v37;
  v58 = v36;
  v40 = objc_msgSend_pruneCellUIDListAgainstTable_behavior_usingBlock_(v38, v39, tableCopy, behavior, v57);

  v41 = v59;
LABEL_10:

LABEL_11:
  v45 = objc_alloc(objc_opt_class());
  v50 = objc_msgSend_context(self, v46, v47, v48, v49);
  v52 = objc_msgSend_initWithContext_cellDiffArray_cellUIDList_uidBased_(v45, v51, v50, v36, v40, 1);

  return v52;
}

- (id)uuidBasedCellDiffMapByTableInfo:(id)info
{
  infoCopy = info;
  v9 = objc_msgSend_copy(self, v5, v6, v7, v8);
  objc_msgSend_p_resolveCellIDsToUUIDsByTableInfo_(v9, v10, infoCopy, v11, v12);

  return v9;
}

- (void)p_resolveCellIDsToUUIDsByTableInfo:(id)info
{
  infoCopy = info;
  if ((objc_msgSend_isUIDBased(self, v5, v6, v7, v8) & 1) == 0)
  {
    begin = self->_cellIDs.__begin_;
    end = self->_cellIDs.__end_;
    if (begin != end)
    {
      do
      {
        v14 = *begin;
        v19 = 0u;
        v20 = 0u;
        if (infoCopy)
        {
          objc_msgSend_cellUIDForCellID_(infoCopy, v9, v14, v10, v11, v19, v20);
        }

        v15 = objc_msgSend_cellUIDList(self, v9, v14, v10, v11, v19, v20);
        objc_msgSend_addCellUID_(v15, v16, &v19, v17, v18);

        ++begin;
      }

      while (begin != end);
      begin = self->_cellIDs.__begin_;
    }

    self->_cellIDs.__end_ = begin;
    objc_msgSend_setUidBased_(self, v9, 1, v10, v11);
  }
}

- (id)cellDiffMapByIntersectingUIDs:(const void *)ds inRows:(BOOL)rows
{
  rowsCopy = rows;
  selfCopy = self;
  if (rowsCopy)
  {
    sub_221280A48(v81, *ds, *(ds + 1));
    v11 = *objc_msgSend_rowUIDs(selfCopy->_cellUIDList, v7, v8, v9, v10);
    v16 = *(objc_msgSend_rowUIDs(selfCopy->_cellUIDList, v12, v13, v14, v15) + 8);
    v17 = v77;
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3321888768;
    v78 = sub_2214156C0;
    v79 = &unk_2834A7E20;
    sub_2213FB8DC(&v80, v81);
    v18 = v77;
    while (v11 != v16)
    {
      if ((v78)(v18, *v11, v11[1]))
      {

        v29 = objc_alloc(objc_opt_class());
        v34 = objc_msgSend_context(selfCopy, v30, v31, v32, v33);
        v38 = objc_msgSend_initWithContext_(v29, v35, v34, v36, v37);

        cellUIDList = selfCopy->_cellUIDList;
        v40 = v73;
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3321888768;
        v73[2] = sub_2214156F4;
        v73[3] = &unk_2834A7E58;
        sub_2213FB8DC(&v76, v81);
        v41 = v38;
        v74 = v41;
        v75 = selfCopy;
        objc_msgSend_enumerateCellUIDsUsingBlock_(cellUIDList, v42, v73, v43, v44);
        v45 = v74;
        goto LABEL_13;
      }

      v11 += 2;
    }
  }

  else
  {
    sub_221280A48(v81, *ds, *(ds + 1));
    v23 = *objc_msgSend_columnUIDs(selfCopy->_cellUIDList, v19, v20, v21, v22);
    v28 = *(objc_msgSend_columnUIDs(selfCopy->_cellUIDList, v24, v25, v26, v27) + 8);
    v17 = v69;
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3321888768;
    v70 = sub_22141579C;
    v71 = &unk_2834A7E20;
    sub_2213FB8DC(&v72, v81);
    v18 = v69;
    while (v23 != v28)
    {
      if ((v70)(v18, *v23, v23[1]))
      {

        v46 = objc_alloc(objc_opt_class());
        v51 = objc_msgSend_context(selfCopy, v47, v48, v49, v50);
        v55 = objc_msgSend_initWithContext_(v46, v52, v51, v53, v54);

        v56 = selfCopy->_cellUIDList;
        v40 = v65;
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3321888768;
        v65[2] = sub_2214157D0;
        v65[3] = &unk_2834A7E58;
        sub_2213FB8DC(&v68, v81);
        v41 = v55;
        v66 = v41;
        v67 = selfCopy;
        objc_msgSend_enumerateCellUIDsUsingBlock_(v56, v57, v65, v58, v59);
        v45 = v66;
LABEL_13:

        sub_2210BDEC0((v40 + 6));
        selfCopy = v41;
        goto LABEL_14;
      }

      v23 += 2;
    }
  }

LABEL_14:
  sub_2210BDEC0((v17 + 4));
  sub_2210BDEC0(v81);
  if (!objc_msgSend_count(selfCopy, v60, v61, v62, v63))
  {

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)cellDiffMapByRemovingRows:(const void *)rows
{
  if (*(rows + 1) == *rows)
  {
    selfCopy = self;
  }

  else
  {
    v7 = objc_msgSend_context(self, a2, rows, v3, v4);
    v11 = objc_msgSend_cellDiffMapWithContext_(TSTCellDiffMap, v8, v7, v9, v10);

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_22141597C;
    v17[3] = &unk_278464D08;
    rowsCopy = rows;
    selfCopy = v11;
    v18 = selfCopy;
    objc_msgSend_enumerateElementsUsingBlock_(self, v13, v17, v14, v15);
  }

  return selfCopy;
}

- (id)cellDiffMapByRemovingColumns:(const void *)columns
{
  if (*(columns + 1) == *columns)
  {
    selfCopy = self;
  }

  else
  {
    v7 = objc_msgSend_context(self, a2, columns, v3, v4);
    v11 = objc_msgSend_cellDiffMapWithContext_(TSTCellDiffMap, v8, v7, v9, v10);

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_221415B44;
    v17[3] = &unk_278464D08;
    columnsCopy = columns;
    selfCopy = v11;
    v18 = selfCopy;
    objc_msgSend_enumerateElementsUsingBlock_(self, v13, v17, v14, v15);
  }

  return selfCopy;
}

- (void)enumerateElementsUsingBlock:(id)block
{
  blockCopy = block;
  if ((objc_msgSend_isUIDBased(self, v5, v6, v7, v8) & 1) == 0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTCellDiffMap enumerateElementsUsingBlock:]", v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 374, 0, "cannot enumerate cellUIDs in cellID mode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if (objc_msgSend_count(self->_cellDiffArray, v9, v10, v11, v12) == 1)
  {
    v28 = objc_msgSend_objectAtIndexedSubscript_(self->_cellDiffArray, v24, 0, v26, v27);
    v33 = objc_msgSend_cellUIDList(self, v29, v30, v31, v32);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_221415E38;
    v44[3] = &unk_278462198;
    v46 = blockCopy;
    v34 = v28;
    v45 = v34;
    objc_msgSend_enumerateCellUIDsUsingBlock_(v33, v35, v44, v36, v37);
  }

  else
  {
    v38 = objc_msgSend_cellUIDList(self, v24, v25, v26, v27);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_221415E80;
    v42[3] = &unk_278462198;
    v42[4] = self;
    v43 = blockCopy;
    objc_msgSend_enumerateCellUIDsUsingBlock_(v38, v39, v42, v40, v41);

    v34 = v43;
  }
}

- (void)enumerateCellIDElementsUsingBlock:(id)block
{
  blockCopy = block;
  if (objc_msgSend_isUIDBased(self, v5, v6, v7, v8))
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTCellDiffMap enumerateCellIDElementsUsingBlock:]", v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 395, 0, "cannot enumerate cellIDs in UID mode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v33 = 0;
  if (objc_msgSend_count(self->_cellDiffArray, v9, v10, v11, v12) == 1)
  {
    v27 = objc_msgSend_objectAtIndexedSubscript_(self->_cellDiffArray, v24, 0, v25, v26);
    p_cellIDs = &self->_cellIDs;
    begin = self->_cellIDs.__begin_;
    if (self->_cellIDs.__end_ != begin)
    {
      v30 = 0;
      do
      {
        blockCopy[2](blockCopy, v27, *&begin[v30], v30, &v33);
        ++v30;
        begin = p_cellIDs->__begin_;
      }

      while (v30 < p_cellIDs->__end_ - p_cellIDs->__begin_ && (v33 & 1) == 0);
    }
  }

  else if (self->_cellIDs.__end_ != self->_cellIDs.__begin_)
  {
    v31 = 0;
    do
    {
      v32 = objc_msgSend_objectAtIndexedSubscript_(self->_cellDiffArray, v24, v31, v25, v26);
      blockCopy[2](blockCopy, v32, *&self->_cellIDs.__begin_[v31], v31, &v33);

      ++v31;
    }

    while (v31 < self->_cellIDs.__end_ - self->_cellIDs.__begin_ && (v33 & 1) == 0);
  }
}

- (BOOL)p_scanNSArrayOfDiffsForCellBorderChanges:(id)changes
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  changesCopy = changes;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(changesCopy, v4, &v12, v16, 16);
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(changesCopy);
        }

        if (objc_msgSend_doesSetProperty_(*(*(&v12 + 1) + 8 * i), v5, 912, v6, v7, v12))
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(changesCopy, v5, &v12, v16, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (BOOL)p_scanCellDiffArrayForCellBorderChanges:(id)changes
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  changesCopy = changes;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(changesCopy, v4, &v12, v16, 16);
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(changesCopy);
        }

        if (objc_msgSend_doesSetProperty_(*(*(&v12 + 1) + 8 * i), v5, 912, v6, v7, v12))
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(changesCopy, v5, &v12, v16, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (BOOL)p_scanNSArrayOfDiffsForSuppressCustomFormatHandlingProperty:(id)property
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  propertyCopy = property;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(propertyCopy, v4, &v12, v16, 16);
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(propertyCopy);
        }

        if (objc_msgSend_BOOLValueForSetProperty_(*(*(&v12 + 1) + 8 * i), v5, 914, v6, v7, v12))
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(propertyCopy, v5, &v12, v16, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (BOOL)p_scanCellDiffArrayForSuppressCustomFormatHandlingProperty:(id)property
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  propertyCopy = property;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(propertyCopy, v4, &v12, v16, 16);
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(propertyCopy);
        }

        if (objc_msgSend_BOOLValueForSetProperty_(*(*(&v12 + 1) + 8 * i), v5, 914, v6, v7, v12))
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(propertyCopy, v5, &v12, v16, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[128], v5, v6);

  self->_uidBased = *(v7 + 64);
  v8 = *(v7 + 40);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v7 + 32);
  if (v10)
  {
    v11 = 8 * v10;
    do
    {
      TSCE::CellCoordinateArchive::CellCoordinateArchive(v40, *v9);
      v12 = sub_2212697C0(v40);
      p_cellIDs = &self->_cellIDs;
      end = self->_cellIDs.__end_;
      cap = self->_cellIDs.__cap_;
      if (end >= cap)
      {
        v17 = end - p_cellIDs->__begin_;
        if ((v17 + 1) >> 61)
        {
          sub_22107C148();
        }

        v18 = cap - p_cellIDs->__begin_;
        v19 = v18 >> 2;
        if (v18 >> 2 <= (v17 + 1))
        {
          v19 = v17 + 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        if (v20)
        {
          sub_2210874C4(p_cellIDs, v20);
        }

        v21 = (8 * v17);
        *v21 = v12;
        v16 = (8 * v17 + 8);
        v22 = self->_cellIDs.__end_ - self->_cellIDs.__begin_;
        v23 = (v21 - v22);
        memcpy(v21 - v22, p_cellIDs->__begin_, v22);
        begin = p_cellIDs->__begin_;
        p_cellIDs->__begin_ = v23;
        self->_cellIDs.__end_ = v16;
        self->_cellIDs.__cap_ = 0;
        if (begin)
        {
          operator delete(begin);
        }
      }

      else
      {
        *end = v12;
        v16 = end + 1;
      }

      self->_cellIDs.__end_ = v16;
      TSCE::CellCoordinateArchive::~CellCoordinateArchive(v40);
      ++v9;
      v11 -= 8;
    }

    while (v11);
  }

  v25 = [TSTCellUIDList alloc];
  if (*(v7 + 48))
  {
    v28 = objc_msgSend_initFromMessage_unarchiver_(v25, v26, *(v7 + 48), unarchiverCopy, v27);
  }

  else
  {
    v28 = objc_msgSend_initFromMessage_unarchiver_(v25, v26, &TST::_CellUIDListArchive_default_instance_, unarchiverCopy, v27);
  }

  cellUIDList = self->_cellUIDList;
  self->_cellUIDList = v28;

  v30 = *(v7 + 56);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_2214168D4;
  v39[3] = &unk_278464D30;
  v39[4] = self;
  v31 = unarchiverCopy;
  v33 = objc_opt_class();
  if (v30)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v31, v32, v30, v33, 0, v39);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v31, v32, MEMORY[0x277D80A18], v33, 0, v39);
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_2214168E8;
  v38[3] = &unk_27845E3F8;
  v38[4] = self;
  objc_msgSend_addFinalizeHandler_(v31, v34, v38, v35, v36);
  self->_uidBased = 1;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_22141710C, off_2812E4498[128], v6);

  cellDiffArray = self->_cellDiffArray;
  *(v7 + 16) |= 2u;
  v11 = *(v7 + 56);
  if (!v11)
  {
    v12 = *(v7 + 8);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = MEMORY[0x223DA0390](v12);
    *(v7 + 56) = v11;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v8, cellDiffArray, v11, v9);
  uidBased = self->_uidBased;
  *(v7 + 16) |= 4u;
  *(v7 + 64) = uidBased;
  begin = self->_cellIDs.__begin_;
  end = self->_cellIDs.__end_;
  while (begin != end)
  {
    v31 = *begin;
    v20 = *(v7 + 40);
    if (!v20)
    {
      goto LABEL_12;
    }

    v21 = *(v7 + 32);
    v22 = *v20;
    if (v21 < *v20)
    {
      *(v7 + 32) = v21 + 1;
      v23 = *&v20[2 * v21 + 2];
      goto LABEL_14;
    }

    if (v22 == *(v7 + 36))
    {
LABEL_12:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 24));
      v20 = *(v7 + 40);
      v22 = *v20;
    }

    *v20 = v22 + 1;
    v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(*(v7 + 24));
    v24 = *(v7 + 32);
    v25 = *(v7 + 40) + 8 * v24;
    *(v7 + 32) = v24 + 1;
    *(v25 + 8) = v23;
LABEL_14:
    sub_221269820(&v31, v23);
    ++begin;
  }

  v28 = objc_msgSend_cellUIDList(self, v13, v14, v15, v16);
  *(v7 + 16) |= 1u;
  v29 = *(v7 + 48);
  if (!v29)
  {
    v30 = *(v7 + 8);
    if (v30)
    {
      v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
    }

    v29 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDListArchive>(v30);
    *(v7 + 48) = v29;
  }

  objc_msgSend_saveToMessage_archiver_(v28, v26, v29, archiverCopy, v27);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8);
  v14 = objc_msgSend_context(self, v10, v11, v12, v13);
  v18 = objc_msgSend_initWithContext_(v9, v15, v14, v16, v17);

  v19 = objc_alloc(MEMORY[0x277CBEA60]);
  v24 = objc_msgSend_cellDiffArray(self, v20, v21, v22, v23);
  v29 = objc_msgSend_allObjects(v24, v25, v26, v27, v28);
  v32 = objc_msgSend_initWithArray_copyItems_(v19, v30, v29, 1, v31);

  v33 = [TSTCellDiffArray alloc];
  v38 = objc_msgSend_context(self, v34, v35, v36, v37);
  v41 = objc_msgSend_initWithArray_context_(v33, v39, v32, v38, v40);
  objc_msgSend_setCellDiffArray_(v18, v42, v41, v43, v44);

  if (objc_msgSend_isUIDBased(self, v45, v46, v47, v48))
  {
    v53 = objc_msgSend_cellUIDList(self, v49, v50, v51, v52);
    v57 = objc_msgSend_copyWithZone_(v53, v54, zone, v55, v56);
    objc_msgSend_setCellUIDList_(v18, v58, v57, v59, v60);
  }

  else if (v18 != self)
  {
    sub_22128026C(&v18->_cellIDs.__begin_, self->_cellIDs.__begin_, self->_cellIDs.__end_, self->_cellIDs.__end_ - self->_cellIDs.__begin_);
  }

  isUIDBased = objc_msgSend_isUIDBased(self, v49, v50, v51, v52);
  objc_msgSend_setUidBased_(v18, v62, isUIDBased, v63, v64);
  v69 = objc_msgSend_containsCellBorderChanges(self, v65, v66, v67, v68);
  objc_msgSend_setContainsCellBorderChanges_(v18, v70, v69, v71, v72);

  return v18;
}

- (unint64_t)estimatedMemoryCost
{
  v6 = objc_msgSend_count(self->_cellDiffArray, a2, v2, v3, v4);
  if (objc_msgSend_isUIDBased(self, v7, v8, v9, v10))
  {
    v15 = 32 * objc_msgSend_count(self->_cellUIDList, v11, v12, v13, v14);
  }

  else
  {
    v15 = self->_cellIDs.__end_ - self->_cellIDs.__begin_;
  }

  return v15 + 1000 * v6;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  return self;
}

@end