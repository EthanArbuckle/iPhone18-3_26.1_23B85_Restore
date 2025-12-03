@interface TSTCellMap
+ (id)cellMapWithContext:(id)context;
+ (id)uuidBasedCellMapWithContext:(id)context;
- (TSCECellCoordSet)coordinatesForTableInfo:(SEL)info passingTest:(id)test;
- (TSTCellMap)initWithContext:(id)context cell:(id)cell cellIDList:(const void *)list;
- (TSTCellMap)initWithContext:(id)context cell:(id)cell cellUIDList:(id)list skipCellUIDListCopy:(BOOL)copy;
- (TSTCellMap)initWithContext:(id)context uidBased:(BOOL)based;
- (TSUCellCoord)cellIDAtIndex:(unint64_t)index;
- (const)columnUIDs;
- (const)rowUIDs;
- (id).cxx_construct;
- (id)cellAtIndex:(unint64_t)index;
- (id)cellIDBasedCellMapByTableInfo:(id)info;
- (id)cellMapMaskedByUIDs:(const void *)ds inRows:(BOOL)rows;
- (id)changeDescriptorsForTable:(id)table;
- (id)copyWithZone:(_NSZone *)zone copyingCells:(BOOL)cells;
- (id)findCellForCellID:(TSUCellCoord)d;
- (id)findCellForCellUID:(const TSKUIDStructCoord *)d;
- (id)initShallowMapWithContext:(id)context uidBased:(BOOL)based;
- (id)iterator;
- (id)p_addCell:(id)cell;
- (id)p_cellAtIndex:(unint64_t)index inCellListArray:(id)array;
- (id)shallowCopyToCoordFormUsingMap:(id)map;
- (id)uuidBasedCellMapByTableInfo:(id)info;
- (unint64_t)count;
- (unint64_t)estimatedMemoryCost;
- (unint64_t)p_cellCount;
- (void)addCell:(id)cell andCellID:(TSUCellCoord)d;
- (void)addCell:(id)cell andCellUID:(const TSKUIDStructCoord *)d;
- (void)addHeadMergeAction:(id)action;
- (void)addMergeAction:(id)action;
- (void)addMergeActions:(id)actions;
- (void)addPrecopiedCells:(void *)cells andCellUIDs:(void *)ds;
- (void)appendCellMap:(id)map precopied:(BOOL)precopied;
- (void)clearDataListIDs;
- (void)clearMerges;
- (void)enumerateCellsWithIDsUsingBlock:(id)block;
- (void)enumerateCellsWithUIDsUsingBlock:(id)block;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_addPrecopiedCells:(void *)cells;
- (void)p_copyCellsAndUUIDsFromCellMap:(id)map convertingToCellIDsWithTableInfo:(id)info;
- (void)p_resolveCellIDsToUUIDsByTableInfo:(id)info;
- (void)p_shallowAddCell:(id)cell atCellCoord:(TSUCellCoord)coord;
- (void)remapUIDsByColumnMap:(const void *)map rowMap:(const void *)rowMap ownerMap:(const void *)ownerMap;
- (void)replaceCellAtIndex0:(id)index0;
- (void)reserve:(unint64_t)reserve;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTCellMap

- (TSTCellMap)initWithContext:(id)context uidBased:(BOOL)based
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = TSTCellMap;
  v7 = [(TSTCellMap *)&v13 initWithContext:contextCopy];
  if (v7)
  {
    v8 = objc_opt_new();
    cellLists = v7->_cellLists;
    v7->_cellLists = v8;

    v10 = objc_opt_new();
    cellUIDs = v7->_cellUIDs;
    v7->_cellUIDs = v10;

    v7->_mayModifyFormulasInCells = 1;
    v7->_mayModifyValuesReferencedByFormulas = 1;
    v7->_shouldResetSpillFormulas = 1;
    v7->_uidBased = based;
  }

  return v7;
}

- (TSTCellMap)initWithContext:(id)context cell:(id)cell cellUIDList:(id)list skipCellUIDListCopy:(BOOL)copy
{
  contextCopy = context;
  cellCopy = cell;
  listCopy = list;
  v15 = objc_msgSend_initWithContext_uidBased_(self, v13, contextCopy, 1, v14);
  v20 = v15;
  v21 = v15;
  if (v15)
  {
    *(v15 + 180) = 1;
    v22 = listCopy;
    if (!copy)
    {
      v22 = objc_msgSend_copy(listCopy, v16, v17, v18, v19);
    }

    objc_storeStrong((v20 + 184), v22);
    if (!copy)
    {
    }

    v26 = objc_msgSend_p_addCell_(v21, v23, cellCopy, v24, v25);
  }

  return v21;
}

- (TSTCellMap)initWithContext:(id)context cell:(id)cell cellIDList:(const void *)list
{
  contextCopy = context;
  cellCopy = cell;
  v12 = objc_msgSend_initWithContext_uidBased_(self, v10, contextCopy, 0, v11);
  v16 = v12;
  if (v12)
  {
    *(v12 + 180) = 1;
    v17 = (v12 + 64);
    if (v17 != list)
    {
      sub_22128026C(v17, *list, *(list + 1), (*(list + 1) - *list) >> 3);
    }

    v18 = objc_msgSend_p_addCell_(v16, v13, cellCopy, v14, v15);
  }

  return v16;
}

- (id)initShallowMapWithContext:(id)context uidBased:(BOOL)based
{
  result = objc_msgSend_initWithContext_uidBased_(self, a2, context, based, v4);
  if (result)
  {
    *(result + 181) = 1;
  }

  return result;
}

+ (id)uuidBasedCellMapWithContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithContext_uidBased_(v4, v5, contextCopy, 1, v6);

  return v7;
}

+ (id)cellMapWithContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithContext_uidBased_(v4, v5, contextCopy, 0, v6);

  return v7;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[104], v6, v7);

  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = sub_22127A4EC;
  v66[3] = &unk_27845D8D8;
  v66[4] = self;
  v9 = unarchiverCopy;
  v10 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v9, v11, v8 + 24, v10, 0, v66);

  v63 = v8;
  self->_uidBased = *(v8 + 152);
  v12 = *(v8 + 136);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v8 + 128);
  if (v14)
  {
    v15 = 8 * v14;
    do
    {
      TSCE::CellCoordinateArchive::CellCoordinateArchive(v65, *v13);
      v16 = sub_2212697C0(v65);
      p_cellIDs = &self->_cellIDs;
      end = self->_cellIDs.__end_;
      cap = self->_cellIDs.__cap_;
      if (end >= cap)
      {
        v21 = end - p_cellIDs->__begin_;
        if ((v21 + 1) >> 61)
        {
          sub_22107C148();
        }

        v22 = cap - p_cellIDs->__begin_;
        v23 = v22 >> 2;
        if (v22 >> 2 <= (v21 + 1))
        {
          v23 = v21 + 1;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF8)
        {
          v24 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v23;
        }

        if (v24)
        {
          sub_2210874C4(p_cellIDs, v24);
        }

        v25 = (8 * v21);
        *v25 = v16;
        v20 = (8 * v21 + 8);
        v26 = self->_cellIDs.__end_ - self->_cellIDs.__begin_;
        v27 = (v25 - v26);
        memcpy(v25 - v26, p_cellIDs->__begin_, v26);
        begin = p_cellIDs->__begin_;
        p_cellIDs->__begin_ = v27;
        self->_cellIDs.__end_ = v20;
        self->_cellIDs.__cap_ = 0;
        if (begin)
        {
          operator delete(begin);
        }
      }

      else
      {
        *end = v16;
        v20 = end + 1;
      }

      self->_cellIDs.__end_ = v20;
      TSCE::CellCoordinateArchive::~CellCoordinateArchive(v65);
      ++v13;
      v15 -= 8;
    }

    while (v15);
  }

  v29 = [TSTCellUIDList alloc];
  if (*(v63 + 144))
  {
    v32 = objc_msgSend_initFromMessage_unarchiver_(v29, v30, *(v63 + 144), v9, v31, unarchiverCopy);
  }

  else
  {
    v32 = objc_msgSend_initFromMessage_unarchiver_(v29, v30, &TST::_CellUIDListArchive_default_instance_, v9, v31, unarchiverCopy);
  }

  cellUIDs = self->_cellUIDs;
  self->_cellUIDs = v32;

  v39 = self->_cellIDs.__begin_;
  v38 = self->_cellIDs.__end_;
  if (v38 == v39)
  {
    if (!objc_msgSend_count(self->_cellUIDs, v34, v35, v36, v37))
    {
      goto LABEL_28;
    }

    v39 = self->_cellIDs.__begin_;
    v38 = self->_cellIDs.__end_;
  }

  uidBased = self->_uidBased;
  if (uidBased != (v38 == v39) || uidBased != (objc_msgSend_count(self->_cellUIDs, v34, v35, v36, v37) != 0))
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSTCellMap loadFromUnarchiver:]", v36, v37);
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v44, v45);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v47, v42, v46, 185, 0, "serious error: flag out of sync with content.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
  }

LABEL_28:
  v52 = *(v63 + 112);
  if (v52)
  {
    v53 = (v52 + 8);
  }

  else
  {
    v53 = 0;
  }

  v54 = *(v63 + 104);
  if (v54)
  {
    v55 = 8 * v54;
    do
    {
      TST::MergeOperationArchive::MergeOperationArchive(v65, *v53);
      v56 = [TSTMergeAction alloc];
      v59 = objc_msgSend_initWithArchive_unarchiver_(v56, v57, v65, v9, v58);
      objc_msgSend_addMergeAction_(self, v60, v59, v61, v62);

      TST::MergeOperationArchive::~MergeOperationArchive(v65);
      ++v53;
      v55 -= 8;
    }

    while (v55);
  }

  self->_mayModifyFormulasInCells = *(v63 + 153);
  self->_mayModifyValuesReferencedByFormulas = *(v63 + 154);
  self->_shouldResetSpillFormulas = *(v63 + 155);
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = sub_22127A500;
  v64[3] = &unk_27845E3F8;
  v64[4] = self;
  objc_msgSend_addFinalizeHandler_(v9, v34, v64, v36, v37);
}

- (void)saveToArchiver:(id)archiver
{
  v84 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  if (self->_shallowCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTCellMap saveToArchiver:]", v5, v6);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 211, 0, "We should never archive shallow copies. That's not what they are for");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  v19 = archiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v22 = objc_msgSend_messageWithNewFunction_descriptor_(v19, v20, sub_221280398, off_2812E4498[104], v21);

  v27 = objc_msgSend_cellLists(self, v23, v24, v25, v26);
  objc_msgSend_setStrongReferenceArray_message_(v19, v28, v27, v22 + 24, v29);

  uidBased = self->_uidBased;
  *(v22 + 16) |= 2u;
  *(v22 + 152) = uidBased;
  p_cellIDs = &self->_cellIDs;
  begin = self->_cellIDs.__begin_;
  end = self->_cellIDs.__end_;
  if (end != begin)
  {
    goto LABEL_6;
  }

  if (objc_msgSend_count(self->_cellUIDs, v30, v31, v32, v33))
  {
    uidBased = self->_uidBased;
    begin = p_cellIDs->__begin_;
    end = self->_cellIDs.__end_;
LABEL_6:
    if (uidBased != (end == begin) || uidBased != (objc_msgSend_count(self->_cellUIDs, v30, v31, v32, v33) != 0))
    {
      v38 = MEMORY[0x277D81150];
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSTCellMap saveToArchiver:]", v32, v33);
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v41, v42);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v44, v39, v43, 224, 0, "serious error: flag out of sync with content.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
    }
  }

  v49 = p_cellIDs->__begin_;
  v50 = self->_cellIDs.__end_;
  while (v49 != v50)
  {
    v82 = *v49;
    v51 = *(v22 + 136);
    if (!v51)
    {
      goto LABEL_16;
    }

    v52 = *(v22 + 128);
    v53 = *v51;
    if (v52 < *v51)
    {
      *(v22 + 128) = v52 + 1;
      v54 = *&v51[2 * v52 + 2];
      goto LABEL_18;
    }

    if (v53 == *(v22 + 132))
    {
LABEL_16:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v22 + 120));
      v51 = *(v22 + 136);
      v53 = *v51;
    }

    *v51 = v53 + 1;
    v54 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(*(v22 + 120));
    v55 = *(v22 + 128);
    v56 = *(v22 + 136) + 8 * v55;
    *(v22 + 128) = v55 + 1;
    *(v56 + 8) = v54;
LABEL_18:
    sub_221269820(&v82, v54);
    ++v49;
  }

  cellUIDs = self->_cellUIDs;
  *(v22 + 16) |= 1u;
  v58 = *(v22 + 144);
  if (!v58)
  {
    v59 = *(v22 + 8);
    if (v59)
    {
      v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
    }

    v58 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDListArchive>(v59);
    *(v22 + 144) = v58;
  }

  objc_msgSend_saveToMessage_archiver_(cellUIDs, v30, v58, v19, v33);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v60 = self->_mergeActions;
  v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v61, &v78, v83, 16);
  if (v64)
  {
    v65 = *v79;
    do
    {
      v66 = 0;
      do
      {
        if (*v79 != v65)
        {
          objc_enumerationMutation(v60);
        }

        v67 = *(*(&v78 + 1) + 8 * v66);
        v68 = *(v22 + 112);
        if (!v68)
        {
          goto LABEL_33;
        }

        v69 = *(v22 + 104);
        v70 = *v68;
        if (v69 < *v68)
        {
          *(v22 + 104) = v69 + 1;
          objc_msgSend_saveToArchive_archiver_(v67, v62, *&v68[2 * v69 + 2], v19, v63, v78);
          goto LABEL_35;
        }

        if (v70 == *(v22 + 108))
        {
LABEL_33:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v22 + 96));
          v68 = *(v22 + 112);
          v70 = *v68;
        }

        *v68 = v70 + 1;
        v71 = google::protobuf::Arena::CreateMaybeMessage<TST::MergeOperationArchive>(*(v22 + 96));
        v72 = *(v22 + 104);
        v73 = *(v22 + 112) + 8 * v72;
        *(v22 + 104) = v72 + 1;
        *(v73 + 8) = v71;
        objc_msgSend_saveToArchive_archiver_(v67, v74, v71, v19, v75, v78);
LABEL_35:
        ++v66;
      }

      while (v64 != v66);
      v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v62, &v78, v83, 16);
    }

    while (v64);
  }

  v76 = *(v22 + 16);
  *(v22 + 153) = self->_mayModifyFormulasInCells;
  *(v22 + 154) = self->_mayModifyValuesReferencedByFormulas;
  shouldResetSpillFormulas = self->_shouldResetSpillFormulas;
  *(v22 + 16) = v76 | 0x1C;
  *(v22 + 155) = shouldResetSpillFormulas;
}

- (id)copyWithZone:(_NSZone *)zone copyingCells:(BOOL)cells
{
  cellsCopy = cells;
  v7 = objc_opt_class();
  v11 = objc_msgSend_allocWithZone_(v7, v8, zone, v9, v10);
  v16 = objc_msgSend_context(self, v12, v13, v14, v15);
  v20 = objc_msgSend_initWithContext_(v11, v17, v16, v18, v19);

  if (cellsCopy)
  {
    v25 = objc_msgSend_array(MEMORY[0x277CBEB18], v21, v22, v23, v24);
    objc_msgSend_setCellLists_(v20, v26, v25, v27, v28);

    v33 = objc_msgSend_cellLists(self, v29, v30, v31, v32);
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = sub_22127ADE8;
    v98[3] = &unk_278462170;
    v34 = v20;
    v99 = v34;
    objc_msgSend_enumerateObjectsUsingBlock_(v33, v35, v98, v36, v37);

    isUIDBased = objc_msgSend_isUIDBased(self, v38, v39, v40, v41);
    objc_msgSend_setUidBased_(v34, v43, isUIDBased, v44, v45);
    if (objc_msgSend_isUIDBased(self, v46, v47, v48, v49))
    {
      v54 = objc_msgSend_cellUIDs(self, v50, v51, v52, v53);
      v59 = objc_msgSend_copy(v54, v55, v56, v57, v58);
      objc_msgSend_setCellUIDs_(v34, v60, v59, v61, v62);
    }

    else
    {
      v63 = objc_msgSend_cellUIDList(TSTCellUIDList, v50, v51, v52, v53);
      objc_msgSend_setCellUIDs_(v34, v64, v63, v65, v66);

      if (v34 != self)
      {
        sub_22128026C(&v34->_cellIDs.__begin_, self->_cellIDs.__begin_, self->_cellIDs.__end_, self->_cellIDs.__end_ - self->_cellIDs.__begin_);
      }
    }
  }

  if (self->_mergeActions)
  {
    v67 = objc_alloc(MEMORY[0x277CBEB18]);
    v71 = objc_msgSend_initWithArray_(v67, v68, self->_mergeActions, v69, v70);
    v72 = *(v20 + 88);
    *(v20 + 88) = v71;
  }

  mayModifyFormulasInCells = objc_msgSend_mayModifyFormulasInCells(self, v21, v22, v23, v24);
  objc_msgSend_setMayModifyFormulasInCells_(v20, v74, mayModifyFormulasInCells, v75, v76);
  mayModifyValuesReferencedByFormulas = objc_msgSend_mayModifyValuesReferencedByFormulas(self, v77, v78, v79, v80);
  objc_msgSend_setMayModifyValuesReferencedByFormulas_(v20, v82, mayModifyValuesReferencedByFormulas, v83, v84);
  shouldResetSpillFormulas = objc_msgSend_shouldResetSpillFormulas(self, v85, v86, v87, v88);
  objc_msgSend_setShouldResetSpillFormulas_(v20, v90, shouldResetSpillFormulas, v91, v92);
  *(v20 + 180) = objc_msgSend_isOneToMany(self, v93, v94, v95, v96);
  return v20;
}

- (unint64_t)count
{
  if (!objc_msgSend_isUIDBased(self, a2, v2, v3, v4))
  {
    return self->_cellIDs.__end_ - self->_cellIDs.__begin_;
  }

  v10 = objc_msgSend_cellUIDs(self, v6, v7, v8, v9);
  v15 = objc_msgSend_count(v10, v11, v12, v13, v14);

  return v15;
}

- (unint64_t)estimatedMemoryCost
{
  v6 = objc_msgSend_count(self, a2, v2, v3, v4);
  oneToMany = self->_oneToMany;
  isUIDBased = objc_msgSend_isUIDBased(self, v8, v9, v10, v11);
  v13 = 3;
  if (isUIDBased)
  {
    v13 = 5;
  }

  v14 = v6 << v13;
  v15 = 1000;
  if (!oneToMany)
  {
    v15 = 1000 * v6;
  }

  return v14 + v15;
}

- (TSUCellCoord)cellIDAtIndex:(unint64_t)index
{
  if (objc_msgSend_isUIDBased(self, a2, index, v3, v4))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTCellMap cellIDAtIndex:]", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 311, 0, "cannot examine cellIDs in UID mode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  begin = self->_cellIDs.__begin_;
  if (index >= self->_cellIDs.__end_ - begin)
  {
    return 0x7FFF7FFFFFFFLL;
  }

  else
  {
    return begin[index];
  }
}

- (id)cellAtIndex:(unint64_t)index
{
  v7 = objc_msgSend_cellLists(self, a2, index, v3, v4);
  v10 = objc_msgSend_p_cellAtIndex_inCellListArray_(self, v8, index, v7, v9);

  return v10;
}

- (const)rowUIDs
{
  v5 = objc_msgSend_cellUIDs(self, a2, v2, v3, v4);
  v10 = objc_msgSend_rowUIDs(v5, v6, v7, v8, v9);

  return v10;
}

- (const)columnUIDs
{
  v5 = objc_msgSend_cellUIDs(self, a2, v2, v3, v4);
  v10 = objc_msgSend_columnUIDs(v5, v6, v7, v8, v9);

  return v10;
}

- (void)enumerateCellsWithIDsUsingBlock:(id)block
{
  blockCopy = block;
  if (objc_msgSend_isUIDBased(self, v5, v6, v7, v8))
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTCellMap enumerateCellsWithIDsUsingBlock:]", v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 332, 0, "can't enumerate IDs since have UIDs");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if ((objc_msgSend_isUIDBased(self, v9, v10, v11, v12) & 1) == 0)
  {
    if (objc_msgSend_isOneToMany(self, v24, v25, v26, v27))
    {
      v63 = 0;
      v32 = objc_msgSend_cellLists(self, v28, v29, v30, v31);
      v37 = objc_msgSend_firstObject(v32, v33, v34, v35, v36);
      v41 = objc_msgSend_cellAtIndex_(v37, v38, 0, v39, v40);

      begin = self->_cellIDs.__begin_;
      end = self->_cellIDs.__end_;
      if (begin != end)
      {
        v44 = 0;
        v45 = begin + 1;
        do
        {
          blockCopy[2](blockCopy, *&v45[-1], v41, v44, &v63);
          if (v63)
          {
            break;
          }

          ++v44;
          v46 = v45++ == end;
        }

        while (!v46);
      }
    }

    else
    {
      v62 = 0;
      v47 = self->_cellIDs.__begin_;
      v48 = self->_cellIDs.__end_;
      if (v47 != v48)
      {
        v49 = 0;
        v50 = v47 + 1;
        do
        {
          v51 = v50[-1];
          v52 = objc_msgSend_cellLists(self, v28, v29, v30, v31);
          v56 = objc_msgSend_objectAtIndex_(v52, v53, v49 / 0x9C4, v54, v55);

          objc_opt_class();
          v60 = objc_msgSend_cellAtIndex_(v56, v57, v49 % 0x9C4, v58, v59);
          v61 = TSUDynamicCast();
          (blockCopy[2])(blockCopy, v51, v61, v49, &v62);

          LOBYTE(v51.row) = v62;
          if (v51.row)
          {
            break;
          }

          ++v49;
          v46 = v50++ == v48;
        }

        while (!v46);
      }
    }
  }
}

- (void)enumerateCellsWithUIDsUsingBlock:(id)block
{
  blockCopy = block;
  if ((objc_msgSend_isUIDBased(self, v5, v6, v7, v8) & 1) == 0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTCellMap enumerateCellsWithUIDsUsingBlock:]", v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 373, 0, "can't enumerate by UIDs since have IDs");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if (objc_msgSend_isUIDBased(self, v9, v10, v11, v12))
  {
    v28 = objc_msgSend_cellLists(self, v24, v25, v26, v27);
    v33 = objc_msgSend_firstObject(v28, v29, v30, v31, v32);
    v38 = objc_msgSend_count(v33, v34, v35, v36, v37);

    if (v38 == 1)
    {
      v43 = objc_msgSend_cellLists(self, v39, v40, v41, v42);
      v48 = objc_msgSend_firstObject(v43, v44, v45, v46, v47);
      v52 = objc_msgSend_cellAtIndex_(v48, v49, 0, v50, v51);

      cellUIDs = self->_cellUIDs;
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = sub_22127B6D0;
      v64[3] = &unk_278462198;
      v65 = v52;
      v66 = blockCopy;
      v54 = v52;
      objc_msgSend_enumerateCellUIDsUsingBlock_(cellUIDs, v55, v64, v56, v57);
    }

    else
    {
      v58 = self->_cellUIDs;
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = sub_22127B6EC;
      v62[3] = &unk_2784612C0;
      v62[4] = self;
      v63 = blockCopy;
      objc_msgSend_enumerateCellUIDsUsingBlock_(v58, v59, v62, v60, v61);
    }
  }
}

- (id)iterator
{
  v3 = [TSTCellMapIterator alloc];
  v7 = objc_msgSend_initWithCellMap_(v3, v4, self, v5, v6);

  return v7;
}

- (id)findCellForCellID:(TSUCellCoord)d
{
  dCopy = d;
  if (objc_msgSend_isUIDBased(self, a2, *&d, v3, v4))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTCellMap findCellForCellID:]", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 413, 0, "cannot use find with a UID based cell map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if (self->_cellIDs.__end_ == self->_cellIDs.__begin_ || (objc_msgSend_isUIDBased(self, v6, v7, v8, v9) & 1) != 0)
  {
    v25 = 0;
  }

  else
  {
    size = self->_searchableIDMap.__table_.__size_;
    if (size != objc_msgSend_count(self, v21, v22, v23, v24))
    {
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = sub_22127BA3C;
      v31[3] = &unk_27845DE10;
      v31[4] = self;
      objc_msgSend_enumerateCellsWithIDsUsingBlock_(self, v27, v31, v28, v29);
    }

    v25 = sub_221087F14(&self->_searchableIDMap.__table_.__bucket_list_.__ptr_, &dCopy);
    if (v25)
    {
      v25 = v25[3];
    }
  }

  return v25;
}

- (id)findCellForCellUID:(const TSKUIDStructCoord *)d
{
  v7 = objc_msgSend_count(self->_cellUIDs, a2, d, v3, v4);
  if (v7)
  {
    if (objc_msgSend_isUIDBased(self, v8, v9, v10, v11))
    {
      size = self->_searchableUIDMap.__table_.__size_;
      if (size != objc_msgSend_count(self, v12, v13, v14, v15))
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = sub_22127BBB8;
        v21[3] = &unk_2784621C0;
        v21[4] = self;
        objc_msgSend_enumerateCellsWithUIDsUsingBlock_(self, v17, v21, v18, v19);
      }

      v7 = sub_221280960(&self->_searchableUIDMap.__table_.__bucket_list_.__ptr_, d);
      if (v7)
      {
        v7 = v7[6];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)addCell:(id)cell andCellUID:(const TSKUIDStructCoord *)d
{
  cellCopy = cell;
  if ((objc_msgSend_isUIDBased(self, v6, v7, v8, v9) & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCellMap addCell:andCellUID:]", v12, v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 457, 0, "cannot add UIDs in ID mode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_cellLists(self, v10, v11, v12, v13);
  v30 = objc_msgSend_firstObject(v25, v26, v27, v28, v29);
  v35 = objc_msgSend_count(v30, v31, v32, v33, v34);
  v40 = objc_msgSend_cellUIDs(self, v36, v37, v38, v39);
  if (v35 == objc_msgSend_count(v40, v41, v42, v43, v44))
  {

    goto LABEL_10;
  }

  v53 = objc_msgSend_cellLists(self, v45, v46, v47, v48);
  if (objc_msgSend_count(v53, v54, v55, v56, v57) < 2)
  {

    goto LABEL_9;
  }

  v62 = objc_msgSend_cellUIDs(self, v58, v59, v60, v61);
  v67 = objc_msgSend_count(v62, v63, v64, v65, v66);

  if (v67 < 0x9C5)
  {
LABEL_9:
    v68 = MEMORY[0x277D81150];
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "[TSTCellMap addCell:andCellUID:]", v51, v52);
    v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v71, v72);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v74, v69, v73, 459, 0, "cannot add cells in one-to-many mode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v76, v77, v78);
  }

LABEL_10:
  if (objc_msgSend_isUIDBased(self, v49, v50, v51, v52))
  {
    objc_msgSend_addCellUID_(self->_cellUIDs, v79, d, v80, v81);
    v85 = objc_msgSend_p_addCell_(self, v82, cellCopy, v83, v84);
  }
}

- (void)reserve:(unint64_t)reserve
{
  if (objc_msgSend_isUIDBased(self, a2, reserve, v3, v4))
  {
    cellUIDs = self->_cellUIDs;

    objc_msgSend_reserve_(cellUIDs, v7, reserve, v8, v9);
  }

  else
  {
    sub_2211687C4(&self->_cellIDs.__begin_, reserve);
    v11 = vcvtps_u32_f32(reserve / self->_searchableIDMap.__table_.__max_load_factor_);

    sub_221087270(&self->_searchableIDMap, v11);
  }
}

- (void)addPrecopiedCells:(void *)cells andCellUIDs:(void *)ds
{
  if ((objc_msgSend_isUIDBased(self, a2, cells, ds, v4) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTCellMap addPrecopiedCells:andCellUIDs:]", v10, v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 482, 0, "cannot add UIDs in ID mode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_msgSend_cellLists(self, v8, v9, v10, v11);
  v28 = objc_msgSend_firstObject(v23, v24, v25, v26, v27);
  v33 = objc_msgSend_count(v28, v29, v30, v31, v32);
  v38 = objc_msgSend_cellUIDs(self, v34, v35, v36, v37);
  if (v33 == objc_msgSend_count(v38, v39, v40, v41, v42))
  {

    goto LABEL_10;
  }

  v51 = objc_msgSend_cellLists(self, v43, v44, v45, v46);
  if (objc_msgSend_count(v51, v52, v53, v54, v55) < 2)
  {

    goto LABEL_9;
  }

  v60 = objc_msgSend_cellUIDs(self, v56, v57, v58, v59);
  v65 = objc_msgSend_count(v60, v61, v62, v63, v64);

  if (v65 < 0x9C5)
  {
LABEL_9:
    v66 = MEMORY[0x277D81150];
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "[TSTCellMap addPrecopiedCells:andCellUIDs:]", v49, v50);
    v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v69, v70);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v72, v67, v71, 484, 0, "cannot add cells in one-to-many mode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75, v76);
  }

LABEL_10:
  if (objc_msgSend_isUIDBased(self, v47, v48, v49, v50))
  {
    if ((*(cells + 1) - *cells) >> 3 != (*(ds + 1) - *ds) >> 5)
    {
      v80 = MEMORY[0x277D81150];
      v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "[TSTCellMap addPrecopiedCells:andCellUIDs:]", v78, v79);
      v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v83, v84);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v86, v81, v85, 491, 0, "Cell and CellUID sizes don't match up");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v87, v88, v89, v90);
    }

    objc_msgSend_addCellUIDs_(self->_cellUIDs, v77, ds, v78, v79);

    objc_msgSend_p_addPrecopiedCells_(self, v91, cells, v92, v93);
  }
}

- (void)addCell:(id)cell andCellID:(TSUCellCoord)d
{
  v31[0] = d;
  cellCopy = cell;
  if (objc_msgSend_isUIDBased(self, v6, v7, v8, v9))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCellMap addCell:andCellID:]", v12, v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 499, 0, "Cannot add cellIDs while in UID mode.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  if ((objc_msgSend_isUIDBased(self, v10, v11, v12, v13) & 1) == 0 && !sub_221087F14(&self->_searchableIDMap.__table_.__bucket_list_.__ptr_, v31))
  {
    sub_22111D090(&self->_cellIDs, v31);
    v28 = objc_msgSend_p_addCell_(self, v25, cellCopy, v26, v27);
    v31[2] = v31;
    v29 = sub_221280404(&self->_searchableIDMap.__table_.__bucket_list_.__ptr_, v31);
    v30 = v29[3];
    v29[3] = v28;
  }
}

- (void)replaceCellAtIndex0:(id)index0
{
  index0Copy = index0;
  if (objc_msgSend_isEmpty(index0Copy, v4, v5, v6, v7))
  {

    index0Copy = 0;
  }

  v12 = objc_msgSend_cellLists(self, v8, v9, v10, v11);
  v17 = objc_msgSend_firstObject(v12, v13, v14, v15, v16);

  if (!v17)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTCellMap replaceCellAtIndex0:]", v19, v20);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 532, 0, "invalid nil value for '%{public}s'", "tile");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  objc_msgSend_replaceCell_atIndex_(v17, v18, index0Copy, 0, v20);
}

- (void)clearDataListIDs
{
  if (objc_msgSend_isUIDBased(self, a2, v2, v3, v4))
  {

    objc_msgSend_enumerateCellsWithUIDsUsingBlock_(self, v6, &unk_2834A3CE8, v7, v8);
  }

  else
  {

    objc_msgSend_enumerateCellsWithIDsUsingBlock_(self, v6, &unk_2834A3D08, v7, v8);
  }
}

- (void)addMergeAction:(id)action
{
  actionCopy = action;
  if (actionCopy)
  {
    if (!self->_mergeActions)
    {
      v8 = objc_opt_new();
      mergeActions = self->_mergeActions;
      self->_mergeActions = v8;
    }

    objc_msgSend_verify(actionCopy, v4, v5, v6, v7);
    objc_msgSend_addObject_(self->_mergeActions, v10, actionCopy, v11, v12);
  }
}

- (void)addHeadMergeAction:(id)action
{
  actionCopy = action;
  if (actionCopy)
  {
    if (!self->_mergeActions)
    {
      v8 = objc_opt_new();
      mergeActions = self->_mergeActions;
      self->_mergeActions = v8;
    }

    objc_msgSend_verify(actionCopy, v4, v5, v6, v7);
    objc_msgSend_insertObject_atIndex_(self->_mergeActions, v10, actionCopy, 0, v11);
  }
}

- (void)addMergeActions:(id)actions
{
  actionsCopy = actions;
  if (objc_msgSend_count(actionsCopy, v4, v5, v6, v7))
  {
    mergeActions = self->_mergeActions;
    if (mergeActions)
    {
      objc_msgSend_addObjectsFromArray_(mergeActions, v8, actionsCopy, v9, v10);
    }

    else
    {
      v12 = objc_alloc(MEMORY[0x277CBEB18]);
      v16 = objc_msgSend_initWithArray_(v12, v13, actionsCopy, v14, v15);
      v17 = self->_mergeActions;
      self->_mergeActions = v16;
    }
  }
}

- (void)remapUIDsByColumnMap:(const void *)map rowMap:(const void *)rowMap ownerMap:(const void *)ownerMap
{
  v70 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isUIDBased(self, a2, map, rowMap, ownerMap))
  {
    v13 = objc_msgSend_context(self, v9, v10, v11, v12);
    v17 = objc_msgSend_uuidBasedCellMapWithContext_(TSTCellMap, v14, v13, v15, v16);

    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = sub_22127CB40;
    v65[3] = &unk_278462228;
    mapCopy = map;
    rowMapCopy = rowMap;
    v18 = v17;
    v66 = v18;
    v60 = v18;
    objc_msgSend_enumerateCellsWithUIDsUsingBlock_(self, v19, v65, v20, v21);
    v26 = objc_msgSend_cellLists(v18, v22, v23, v24, v25);
    objc_msgSend_setCellLists_(self, v27, v26, v28, v29);

    v34 = objc_msgSend_cellUIDs(v18, v30, v31, v32, v33);
    objc_msgSend_setCellUIDs_(self, v35, v34, v36, v37);

    v59 = 88;
    if (self->_mergeActions)
    {
      v38 = objc_alloc(MEMORY[0x277CBEB18]);
      v43 = objc_msgSend_count(self->_mergeActions, v39, v40, v41, v42);
      v47 = objc_msgSend_initWithCapacity_(v38, v44, v43, v45, v46);
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v48 = self->_mergeActions;
      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v61, v69, 16);
      if (v51)
      {
        v52 = *v62;
        do
        {
          for (i = 0; i != v51; ++i)
          {
            if (*v62 != v52)
            {
              objc_enumerationMutation(v48);
            }

            v57 = objc_msgSend_remapUIDsByColumnMap_rowMap_ownerMap_(*(*(&v61 + 1) + 8 * i), v50, map, rowMap, ownerMap, v59);
            if (v57)
            {
              objc_msgSend_addObject_(v47, v54, v57, v55, v56);
            }
          }

          v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v50, &v61, v69, 16);
        }

        while (v51);
      }

      v58 = *(&self->super.super.isa + v59);
      *(&self->super.super.isa + v59) = v47;
    }
  }
}

- (void)clearMerges
{
  mergeActions = self->_mergeActions;
  self->_mergeActions = 0;
}

- (void)appendCellMap:(id)map precopied:(BOOL)precopied
{
  mapCopy = map;
  v67 = 0;
  v68 = &v67;
  v69 = 0x4812000000;
  v70 = sub_22127CFA8;
  v71 = sub_22127CFCC;
  v72 = &unk_22188E88F;
  memset(v73, 0, sizeof(v73));
  v11 = objc_msgSend_count(mapCopy, v7, v8, v9, v10);
  sub_22116A0A0(v68 + 6, v11);
  if (objc_msgSend_isUIDBased(self, v12, v13, v14, v15))
  {
    if (objc_msgSend_isUIDBased(mapCopy, v16, v17, v18, v19))
    {
      v58 = 0;
      v59 = &v58;
      v60 = 0x4812000000;
      v61 = sub_22127CFF8;
      v62 = sub_22127D01C;
      v63 = &unk_22188E88F;
      v65 = 0;
      v66 = 0;
      __p = 0;
      sub_22127D034(&__p, v11);
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = sub_22127D0D4;
      v56[3] = &unk_278462250;
      precopiedCopy = precopied;
      v56[4] = &v67;
      v56[5] = &v58;
      objc_msgSend_enumerateCellsWithUIDsUsingBlock_(mapCopy, v23, v56, v24, v25);
      objc_msgSend_addCellUIDs_(self->_cellUIDs, v26, (v59 + 6), v27, v28);
      _Block_object_dispose(&v58, 8);
      if (__p)
      {
        v65 = __p;
        operator delete(__p);
      }

      goto LABEL_10;
    }

    v42 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTCellMap appendCellMap:precopied:]", v21, v22);
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v44, v45);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v36, v40, 645, 0, "Trying to append a cellID cellMap to a uidBased map. Aborting.");
  }

  else
  {
    if (!objc_msgSend_isUIDBased(mapCopy, v16, v17, v18, v19))
    {
      sub_2211687C4(&self->_cellIDs.__begin_, v11 + self->_cellIDs.__end_ - self->_cellIDs.__begin_);
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = sub_22127D210;
      v54[3] = &unk_278462278;
      precopiedCopy2 = precopied;
      v54[4] = self;
      v54[5] = &v67;
      objc_msgSend_enumerateCellsWithIDsUsingBlock_(mapCopy, v51, v54, v52, v53);
LABEL_10:
      objc_msgSend_p_addPrecopiedCells_(self, v29, (v68 + 6), v30, v31);
      goto LABEL_11;
    }

    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSTCellMap appendCellMap:precopied:]", v33, v34);
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v38, v39);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v41, v36, v40, 663, 0, "Trying to append a uidBased cellMap to a cellID map. Aborting.");
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
LABEL_11:
  _Block_object_dispose(&v67, 8);
  v58 = v73;
  sub_22107C2C0(&v58);
}

- (id)cellIDBasedCellMapByTableInfo:(id)info
{
  infoCopy = info;
  if (objc_msgSend_isUIDBased(self, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_copyWithZone_copyingCells_(self, v9, 0, 0, v12);
    objc_msgSend_p_copyCellsAndUUIDsFromCellMap_convertingToCellIDsWithTableInfo_(v13, v14, self, infoCopy, v15);
  }

  else
  {
    v13 = objc_msgSend_copy(self, v9, v10, v11, v12);
  }

  return v13;
}

- (id)uuidBasedCellMapByTableInfo:(id)info
{
  infoCopy = info;
  v9 = objc_msgSend_copy(self, v5, v6, v7, v8);
  objc_msgSend_p_resolveCellIDsToUUIDsByTableInfo_(v9, v10, infoCopy, v11, v12);

  return v9;
}

- (TSCECellCoordSet)coordinatesForTableInfo:(SEL)info passingTest:(id)test
{
  testCopy = test;
  v9 = a5;
  v71 = 0;
  v72 = &v71;
  v73 = 0x5812000000;
  v74 = sub_22127D80C;
  v75 = sub_22127D818;
  v76 = &unk_22188E88F;
  v80[0] = 0;
  v80[1] = 0;
  v77 = 0;
  v78 = 0;
  v79 = v80;
  if (objc_msgSend_isUIDBased(self, v10, v11, v12, v13))
  {
    v18 = objc_msgSend_cellLists(self, v14, v15, v16, v17);
    if (objc_msgSend_count(v18, v19, v20, v21, v22) == 1 && (objc_msgSend_firstObject(v18, v23, v24, v25, v26), v27 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend_count(v27, v28, v29, v30, v31), v27, v32 == 1))
    {
      if (!v9 || (objc_msgSend_firstObject(v18, v23, v24, v25, v26), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend_cellAtIndex_(v33, v34, 0, v35, v36), v37 = objc_claimAutoreleasedReturnValue(), v33, LOBYTE(v64.row) = 0, LOBYTE(v33) = v9[2](v9, v37, &v64), v37, (v33 & 1) != 0))
      {
        v38 = objc_msgSend_cellUIDs(self, v23, v24, v25, v26);
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = sub_22127D824;
        v68[3] = &unk_2784622A0;
        v69 = testCopy;
        v70 = &v71;
        objc_msgSend_enumerateCellUIDsUsingBlock_(v38, v39, v68, v40, v41);
      }
    }

    else
    {
      v64 = 0;
      v65 = &v64;
      v66 = 0x2020000000;
      v67 = 0;
      v51 = objc_msgSend_cellUIDs(self, v23, v24, v25, v26);
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = sub_22127D890;
      v57[3] = &unk_2784622C8;
      v58 = testCopy;
      v61 = v9;
      selfCopy = self;
      v60 = v18;
      v62 = &v64;
      v63 = &v71;
      objc_msgSend_enumerateCellUIDsUsingBlock_(v51, v52, v57, v53, v54);

      _Block_object_dispose(&v64, 8);
    }
  }

  else
  {
    v42 = objc_msgSend_count(self, v14, v15, v16, v17);
    v56 = 0;
    if (v42)
    {
      v46 = 0;
      v47 = v42 - 1;
      do
      {
        if (v9)
        {
          v48 = objc_msgSend_cellAtIndex_(self, v43, v46, v44, v45);
          v49 = v9[2](v9, v48, &v56);

          if ((v49 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v64 = 0;
        v64 = objc_msgSend_cellIDAtIndex_(self, v43, v46, v44, v45);
        TSCECellCoordSet::addCellCoord((v72 + 6), &v64);
LABEL_12:
        if (v56)
        {
          break;
        }
      }

      while (v47 != v46++);
    }
  }

  TSCECellCoordSet::TSCECellCoordSet(retstr, (v72 + 6));
  _Block_object_dispose(&v71, 8);
  sub_22107C860(&v79, v80[0]);

  return result;
}

- (id)shallowCopyToCoordFormUsingMap:(id)map
{
  mapCopy = map;
  v9 = objc_msgSend_context(self, v5, v6, v7, v8);
  v13 = objc_msgSend_cellMapWithContext_(TSTCellMap, v10, v9, v11, v12);

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_22127DAA4;
  v22[3] = &unk_2784622F0;
  v14 = mapCopy;
  v23 = v14;
  v15 = v13;
  v24 = v15;
  objc_msgSend_enumerateCellsWithUIDsUsingBlock_(self, v16, v22, v17, v18);
  v19 = v24;
  v20 = v15;

  return v15;
}

- (id)cellMapMaskedByUIDs:(const void *)ds inRows:(BOOL)rows
{
  rowsCopy = rows;
  selfCopy = self;
  v11 = selfCopy;
  if (rowsCopy)
  {
    v12 = objc_msgSend_cellUIDs(selfCopy, v7, v8, v9, v10);
    v17 = objc_msgSend_rowUIDs(v12, v13, v14, v15, v16);
    v19 = *v17;
    v18 = *(v17 + 8);
    v20 = *ds;
    if ((v18 - *v17) == (*(ds + 1) - *ds))
    {
      while (v19 != v18)
      {
        if (*v19 != *v20 || v19[1] != v20[1])
        {
          goto LABEL_19;
        }

        v19 += 2;
        v20 += 2;
      }

LABEL_18:

      goto LABEL_26;
    }

LABEL_19:

    v31 = [TSTCellMap alloc];
    v36 = objc_msgSend_context(v11, v32, v33, v34, v35);
    v39 = objc_msgSend_initWithContext_uidBased_(v31, v37, v36, 1, v38);

    v76 = 0;
    v77 = &v76;
    v78 = 0x5812000000;
    v79 = sub_22127DF1C;
    v80 = sub_22127DF28;
    v81 = &unk_22188E88F;
    sub_221280A48(v82, *ds, *(ds + 1));
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = sub_22127DF30;
    v73[3] = &unk_278462318;
    v75 = &v76;
    v40 = v39;
    v74 = v40;
    objc_msgSend_enumerateCellsWithUIDsUsingBlock_(v11, v41, v73, v42, v43);
    if (v11[11])
    {
      v44 = objc_alloc(MEMORY[0x277CBEB18]);
      v48 = objc_msgSend_initWithArray_(v44, v45, v11[11], v46, v47);
      v49 = v40[11];
      v40[11] = v48;
    }

    v50 = v74;
  }

  else
  {
    v12 = objc_msgSend_cellUIDs(selfCopy, v7, v8, v9, v10);
    v26 = objc_msgSend_columnUIDs(v12, v22, v23, v24, v25);
    v28 = *v26;
    v27 = *(v26 + 8);
    v29 = *ds;
    if ((v27 - *v26) == (*(ds + 1) - *ds))
    {
      while (v28 != v27)
      {
        if (*v28 != *v29 || v28[1] != v29[1])
        {
          goto LABEL_22;
        }

        v28 += 2;
        v29 += 2;
      }

      goto LABEL_18;
    }

LABEL_22:

    v51 = [TSTCellMap alloc];
    v56 = objc_msgSend_context(v11, v52, v53, v54, v55);
    v59 = objc_msgSend_initWithContext_uidBased_(v51, v57, v56, 1, v58);

    v76 = 0;
    v77 = &v76;
    v78 = 0x5812000000;
    v79 = sub_22127DF1C;
    v80 = sub_22127DF28;
    v81 = &unk_22188E88F;
    sub_221280A48(v82, *ds, *(ds + 1));
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = sub_22127DFBC;
    v70[3] = &unk_278462318;
    v72 = &v76;
    v40 = v59;
    v71 = v40;
    objc_msgSend_enumerateCellsWithUIDsUsingBlock_(v11, v60, v70, v61, v62);
    if (v11[11])
    {
      v63 = objc_alloc(MEMORY[0x277CBEB18]);
      v67 = objc_msgSend_initWithArray_(v63, v64, v11[11], v65, v66);
      v68 = v40[11];
      v40[11] = v67;
    }

    v50 = v71;
  }

  _Block_object_dispose(&v76, 8);
  sub_2210BDEC0(v82);
  v11 = v40;
LABEL_26:

  return v11;
}

- (id)p_cellAtIndex:(unint64_t)index inCellListArray:(id)array
{
  arrayCopy = array;
  v11 = arrayCopy;
  if (self->_oneToMany)
  {
    v12 = objc_msgSend_firstObject(arrayCopy, v7, v8, v9, v10);
    objc_msgSend_cellAtIndex_(v12, v13, 0, v14, v15);
  }

  else
  {
    v12 = objc_msgSend_objectAtIndex_(arrayCopy, v7, index / 0x9C4, v9, v10);
    objc_msgSend_cellAtIndex_(v12, v16, index % 0x9C4, v17, v18);
  }
  v19 = ;

  return v19;
}

- (void)p_shallowAddCell:(id)cell atCellCoord:(TSUCellCoord)coord
{
  coordCopy = coord;
  cellCopy = cell;
  if (objc_msgSend_isEmpty(cellCopy, v6, v7, v8, v9))
  {

    cellCopy = 0;
  }

  v14 = objc_msgSend_cellLists(self, v10, v11, v12, v13);
  v19 = objc_msgSend_lastObject(v14, v15, v16, v17, v18);

  if (!v19 || objc_msgSend_count(v19, v20, v21, v22, v23) >= 0x9C4)
  {
    v24 = [TSTCellList alloc];
    v29 = objc_msgSend_context(self, v25, v26, v27, v28);
    v33 = objc_msgSend_initWithContext_(v24, v30, v29, v31, v32);

    v38 = objc_msgSend_cellLists(self, v34, v35, v36, v37);
    objc_msgSend_addObject_(v38, v39, v33, v40, v41);

    v19 = v33;
  }

  sub_22111D090(&self->_cellIDs, &coordCopy);
  v45 = objc_msgSend_shallowAddCell_(v19, v42, cellCopy, v43, v44);
}

- (id)p_addCell:(id)cell
{
  cellCopy = cell;
  if (objc_msgSend_isEmpty(cellCopy, v5, v6, v7, v8))
  {

    cellCopy = 0;
  }

  v13 = objc_msgSend_cellLists(self, v9, v10, v11, v12);
  v18 = objc_msgSend_lastObject(v13, v14, v15, v16, v17);

  if (!v18 || objc_msgSend_count(v18, v19, v20, v21, v22) >= 0x9C4)
  {
    v26 = [TSTCellList alloc];
    v31 = objc_msgSend_context(self, v27, v28, v29, v30);
    v18 = objc_msgSend_initWithContext_(v26, v32, v31, v33, v34);

    v39 = objc_msgSend_cellLists(self, v35, v36, v37, v38);
    objc_msgSend_addObject_(v39, v40, v18, v41, v42);
  }

  if (cellCopy && self->_shallowCopy)
  {
    v43 = [TSTCell alloc];
    v48 = objc_msgSend_locale(cellCopy, v44, v45, v46, v47);
    v52 = objc_msgSend_initWithLocale_(v43, v49, v48, v50, v51);

    objc_msgSend_shallowCopyToCell_(cellCopy, v53, v52, v54, v55);
    v59 = objc_msgSend_shallowAddCell_(v18, v56, v52, v57, v58);
  }

  else
  {
    v59 = objc_msgSend_addCell_(v18, v23, cellCopy, v24, v25);
  }

  return v59;
}

- (void)p_addPrecopiedCells:(void *)cells
{
  v7 = objc_msgSend_cellLists(self, a2, cells, v3, v4);
  v12 = objc_msgSend_lastObject(v7, v8, v9, v10, v11);

  if (self->_shallowCopy)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTCellMap p_addPrecopiedCells:]", v15, v16);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 909, 0, "Shallow copy not supported in this path");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  objc_msgSend_willModify(v12, v13, v14, v15, v16);
  v28 = *cells;
  v29 = *(cells + 1);
  if (*cells != v29)
  {
    do
    {
      v30 = *v28;
      if (objc_msgSend_isEmpty(v30, v31, v32, v33, v34))
      {

        v30 = 0;
      }

      if (!v12 || objc_msgSend_count(v12, v35, v36, v37, v38) >= 0x9C4)
      {
        v42 = [TSTCellList alloc];
        v47 = objc_msgSend_context(self, v43, v44, v45, v46);
        v12 = objc_msgSend_initWithContext_(v42, v48, v47, v49, v50);

        v55 = objc_msgSend_cellLists(self, v51, v52, v53, v54);
        objc_msgSend_addObject_(v55, v56, v12, v57, v58);
      }

      objc_msgSend_addPrecopiedCell_(v12, v39, v30, v40, v41);

      ++v28;
    }

    while (v28 != v29);
  }
}

- (void)p_copyCellsAndUUIDsFromCellMap:(id)map convertingToCellIDsWithTableInfo:(id)info
{
  mapCopy = map;
  infoCopy = info;
  if ((objc_msgSend_isUIDBased(mapCopy, v8, v9, v10, v11) & 1) == 0)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCellMap p_copyCellsAndUUIDsFromCellMap:convertingToCellIDsWithTableInfo:]", v14, v15);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 936, 0, "This should only be called with a UID based cell map.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_cellLists(mapCopy, v12, v13, v14, v15);
  v32 = objc_msgSend_array(MEMORY[0x277CBEB18], v28, v29, v30, v31);
  objc_msgSend_setCellLists_(self, v33, v32, v34, v35);

  v90 = 0;
  v91 = &v90;
  v92 = 0x4812000000;
  v93 = sub_22127EA24;
  v94 = sub_22127EA48;
  v95 = &unk_22188E88F;
  v97 = 0;
  v98 = 0;
  __p = 0;
  if (objc_msgSend_count(v27, v36, v37, v38, v39) == 1 && (objc_msgSend_firstObject(v27, v40, v41, v42, v43), v44 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend_count(v44, v45, v46, v47, v48), v44, v49 == 1))
  {
    v50 = objc_msgSend_firstObject(v27, v40, v41, v42, v43);
    v54 = objc_msgSend_cellAtIndex_(v50, v51, 0, v52, v53);

    v58 = objc_msgSend_p_addCell_(self, v55, v54, v56, v57);
    v63 = objc_msgSend_cellUIDs(mapCopy, v59, v60, v61, v62);
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = sub_22127EA60;
    v87[3] = &unk_278462340;
    v88 = infoCopy;
    v89 = &v90;
    objc_msgSend_enumerateCellUIDsUsingBlock_(v63, v64, v87, v65, v66);
  }

  else
  {
    v67 = objc_msgSend_cellUIDs(mapCopy, v40, v41, v42, v43);
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = sub_22127EACC;
    v82[3] = &unk_278462368;
    v83 = infoCopy;
    selfCopy = self;
    v85 = v27;
    v86 = &v90;
    objc_msgSend_enumerateCellUIDsUsingBlock_(v67, v68, v82, v69, v70);

    v54 = v83;
  }

  if (&self->_cellIDs != (v91 + 6))
  {
    sub_22128026C(&self->_cellIDs.__begin_, v91[6], v91[7], (v91[7] - v91[6]) >> 3);
  }

  v75 = objc_msgSend_cellUIDList(TSTCellUIDList, v71, v72, v73, v74);
  objc_msgSend_setCellUIDs_(self, v76, v75, v77, v78);

  objc_msgSend_setUidBased_(self, v79, 0, v80, v81);
  _Block_object_dispose(&v90, 8);
  if (__p)
  {
    v97 = __p;
    operator delete(__p);
  }
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
        v22 = 0u;
        v23 = 0u;
        if (infoCopy)
        {
          objc_msgSend_cellUIDForCellID_(infoCopy, v9, v14, v10, v11, v22, v23);
        }

        v15 = objc_msgSend_cellUIDs(self, v9, v14, v10, v11, v22, v23);
        objc_msgSend_addCellUID_(v15, v16, &v22, v17, v18);

        ++begin;
      }

      while (begin != end);
      begin = self->_cellIDs.__begin_;
    }

    self->_cellIDs.__end_ = begin;
    sub_2211A89A4(&self->_searchableIDMap);
    objc_msgSend_setUidBased_(self, v19, 1, v20, v21);
  }
}

- (unint64_t)p_cellCount
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = objc_msgSend_cellLists(self, a2, v2, v3, v4);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22127ED40;
  v11[3] = &unk_278462390;
  v11[4] = &v12;
  objc_msgSend_enumerateObjectsUsingBlock_(v5, v6, v11, v7, v8);

  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (id)changeDescriptorsForTable:(id)table
{
  v59 = *MEMORY[0x277D85DE8];
  tableCopy = table;
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7, v8);
  v53 = objc_msgSend_regionFromCellMap_withTableInfo_(TSTCellRegion, v10, self, tableCopy, v11);
  v14 = objc_msgSend_changeDescriptorWithType_cellRegion_(TSTChangeDescriptor, v12, 37, v53, v13);
  objc_msgSend_addObject_(v9, v15, v14, v16, v17);

  v20 = objc_msgSend_changeDescriptorWithType_strokeRegion_(TSTChangeDescriptor, v18, 32, v53, v19);
  objc_msgSend_addObject_(v9, v21, v20, v22, v23);

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v28 = objc_msgSend_mergeActions(self, v24, v25, v26, v27);
  v30 = 0;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v54, v58, 16);
  if (v34)
  {
    v35 = *v55;
    do
    {
      v36 = 0;
      v37 = v30;
      do
      {
        if (*v55 != v35)
        {
          objc_enumerationMutation(v28);
        }

        v38 = objc_msgSend_cellRegionForTable_(*(*(&v54 + 1) + 8 * v36), v31, tableCopy, v32, v33);
        v30 = objc_msgSend_region_addingRegion_(TSTCellRegion, v39, v37, v38, v40);

        ++v36;
        v37 = v30;
      }

      while (v34 != v36);
      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v54, v58, 16);
    }

    while (v34);
  }

  if (objc_msgSend_cellCount(v30, v41, v42, v43, v44))
  {
    v47 = objc_msgSend_changeDescriptorWithType_cellRegion_strokeRegion_(TSTChangeDescriptor, v45, 17, v30, v30);
    objc_msgSend_addObject_(v9, v48, v47, v49, v50);
  }

  v51 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v45, v9, v53, v46);

  return v51;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 32) = 1065353216;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 42) = 1065353216;
  return self;
}

@end