@interface TSCECellDependencies
- (BOOL)cellHasDeepPrecedentInRange:(const TSUCellCoord *)a3 cellRange:(const TSCEInternalRangeReference *)a4;
- (BOOL)cellHasThisCellPrecedent:(const TSUCellCoord *)a3 precedentRef:(const TSCEInternalCellReference *)a4;
- (BOOL)cellRecordHasPrecedents:(TSCECellRecord *)a3;
- (BOOL)dirtyPrecedentCountsAreConsistent:(BOOL)a3;
- (BOOL)hasDependentsOfCell:(const TSCEInternalCellReference *)a3;
- (BOOL)hasPrecedentsAtCoord:(const TSUCellCoord *)a3;
- (BOOL)insertCellRecord:(TSCECellRecord *)a3 doWillModify:(BOOL)a4;
- (BOOL)isCellRefDirty:(const TSCEInternalCellReference *)a3;
- (BOOL)isCellRefInACycle:(const TSCEInternalCellReference *)a3;
- (BOOL)removeSomePrecedents:(unint64_t)a3 markDependentsDirty:(BOOL)a4;
- (BOOL)replaceCellRecord:(TSCECellRecord *)a3;
- (TSCECellCoordSet)allCoordsContainingFormulas;
- (TSCECellCoordSet)cellCoordinatesNeedingExcelImport;
- (TSCECellCoordSet)cellsInACycle;
- (TSCECellCoordSet)dirtyCells;
- (TSCECellDependencies)initWithDependTracker:(id)a3 ownerID:(unsigned __int16)a4 ownerUID:(const TSKUIDStruct *)a5 ownerIndex:(unsigned __int16)a6;
- (TSCECellRecord)findCellRecord:(const TSUCellCoord *)a3 willModifyOnTile:(BOOL)a4;
- (TSCECellRecord)findCellRecordForCellRef:(const TSCECellRef *)a3 willModifyOnTile:(BOOL)a4;
- (TSCECellRecord)findCellRecordForIntCellRef:(const TSCEInternalCellReference *)a3 willModifyOnTile:(BOOL)a4;
- (TSCEInternalCellRefSet)allCellRefs;
- (TSKUIDStruct)ownerUID;
- (TSUCellCoord)embiggenedCellCoord;
- (id).cxx_construct;
- (id)descriptionOfCellsInRange:(const TSCERangeCoordinate *)a3 dirtyOnly:(BOOL)a4;
- (id)explainDirtyPrecedentCount:(const TSUCellCoord *)a3;
- (id)precedentsAsString:(const TSUCellCoord *)a3 dirtyOnly:(BOOL)a4;
- (id)tileForCoord:(const TSUCellCoord *)a3 createIfMissing:(BOOL)a4;
- (unint64_t)computedNumberOfDirtyPrecedents:(const TSUCellCoord *)a3;
- (unint64_t)countRecordsInRange:(const TSCERangeCoordinate *)a3 cellRestrictions:(unint64_t)a4;
- (unint64_t)dirtyPrecedentsCountOfCellCoord:(const TSUCellCoord *)a3;
- (unint64_t)dirtyPrecedentsCountOfCellRef:(const TSCECellRef *)a3;
- (unint64_t)memoryUseEstimate;
- (vector<TSCEInternalCellReference,)dependentsOfCell:(TSCECellDependencies *)self;
- (vector<TSUCellCoord,)cellsWithRecordsInRange:(TSCECellDependencies *)self formulaCellsOnly:(SEL)a3;
- (void)addCellsDependentOnBoth:(const TSCEInternalCellReference *)a3 precedent2:(const TSCEInternalCellReference *)a4 toCellCoordSet:(void *)a5;
- (void)addDependentsAtCoord:(const TSUCellCoord *)a3 toCellReferenceSet:(void *)a4;
- (void)addPrecedentsAtCoord:(const TSUCellCoord *)a3 toReferenceSet:(void *)a4;
- (void)adjustDirtyCountAndPushDependents:(TSCECellRecord *)a3 outDependents:(id)a4 isInitialCell:(BOOL)a5 adjustBy:(unint64_t)a6;
- (void)adjustDirtyPrecedentCount:(TSCECellRecord *)a3 isInitialCell:(BOOL)a4 adjustBy:(unint64_t)a5;
- (void)appendEdgeToArchive:(void *)a3 edge:(const TSCEInternalCellReference *)a4;
- (void)appendExpandedEdgeToArchive:(void *)a3 edge:(const TSCEInternalCellReference *)a4;
- (void)applyBlockToRecords:(unint64_t)a3 doWillModify:(BOOL)a4 block:(id)a5;
- (void)applyBlockToRecordsAtIndexes:(id)a3 rowIndexes:(id)a4 cellRestrictions:(unint64_t)a5 doWillModify:(BOOL)a6 block:(id)a7;
- (void)applyBlockToRecordsInRange:(const TSCERangeCoordinate *)a3 cellRestrictions:(unint64_t)a4 doWillModify:(BOOL)a5 block:(id)a6;
- (void)applyBlockToSortedRecords:(unint64_t)a3 doWillModify:(BOOL)a4 block:(id)a5;
- (void)assertDirtyPrecedentsCountConsistency;
- (void)cellRefsForCycleCellsReferringToCell:(const TSUCellCoord *)a3 outCellRefs:(void *)a4;
- (void)cellsReferencingRange:(const TSCERangeCoordinate *)a3 fromOwnerID:(unsigned __int16)a4 outFormulaCoords:(void *)a5;
- (void)clearCycleAndPushDependents:(TSCECellRecord *)a3 outDependents:(id)a4;
- (void)collectDependencies:(id)a3;
- (void)decrDirtySelfPlusPrecedentsCount:(TSCECellRecord *)a3;
- (void)depthFirstSearch:(const TSCEInternalCellReference *)a3 state:(void *)a4;
- (void)detectAndRepairDirtyCellsAreOnLeafQueue:(void *)a3;
- (void)dirtyAllCells;
- (void)encodeToArchive:(void *)a3;
- (void)encodeToExpandedArchive:(void *)a3;
- (void)encodeToTiledArchive:(void *)a3 archiver:(id)a4;
- (void)findAndRecordCyclesInDirtyCells:(void *)a3 outCellsInCycles:(id)a4;
- (void)formulaCellsInRange:(const TSCERangeCoordinate *)a3 rewriteSpec:(id)a4 outFormulaCells:(void *)a5;
- (void)formulaCellsInThisOwner:(void *)a3;
- (void)formulaCellsReferencingCellsAffectedByInsertRows:(id)a3 outFormulaCells:(void *)a4;
- (void)formulaCellsReferencingCellsAffectedByMoveRows:(id)a3 outFormulaCells:(void *)a4;
- (void)formulaCellsReferencingCellsAffectedByRemoveRows:(id)a3 outFormulaCells:(void *)a4;
- (void)formulaCellsReferencingCellsInRange:(const TSCERangeCoordinate *)a3 outFormulaCells:(void *)a4;
- (void)formulaCellsReferencingIndexes:(id)a3 rowIndexes:(id)a4 outFormulaCells:(void *)a5;
- (void)formulaCellsReferencingThisOwner:(void *)a3;
- (void)incrDirtySelfPlusPrecedentsCount:(TSCECellRecord *)a3;
- (void)markCellCleanAndPushNextLeaves:(const TSUCellCoord *)a3;
- (void)markCellRecordForPruning:(const TSUCellCoord *)a3;
- (void)markEverythingClean;
- (void)pruneEmptyCellRecords:(id)a3 timeout:(double)a4;
- (void)pushDirectDependentsIfNotBothInCyle:(TSCECellRecord *)a3 outDependents:(id)a4;
- (void)readExpandedPrecedentsWithOwners:(const void *)a3 cellRecord:(TSCECellRecord *)a4;
- (void)readExpandedPrecedentsWithoutOwners:(const void *)a3 cellRecord:(TSCECellRecord *)a4;
- (void)readFromArchive:(const void *)a3;
- (void)readFromTiledArchive:(const void *)a3 unarchiver:(id)a4 ownerDepends:(id)a5;
- (void)readPrecedentsWithOwners:(const void *)a3 cellRecord:(TSCECellRecord *)a4;
- (void)readPrecedentsWithoutOwners:(const void *)a3 cellRecord:(TSCECellRecord *)a4;
- (void)removeCellRecordAt:(const TSUCellCoord *)a3;
- (void)removeDependentEdge:(const TSUCellCoord *)a3 edge:(const TSCEInternalCellReference *)a4;
- (void)setContainsAFormulaInGrid:(unsigned __int16)a3 row:(unsigned int)a4 containsFormula:(BOOL)a5;
- (void)setContainsFormula:(TSCECellRecord *)a3 containsFormula:(BOOL)a4;
- (void)setDirtyInGrid:(unsigned __int16)a3 row:(unsigned int)a4 isDirty:(BOOL)a5;
- (void)setDirtySelfPlusPrecedentsCount:(TSCECellRecord *)a3 dirtyCount:(unint64_t)a4;
- (void)setInACycle:(TSCECellRecord *)a3 inACycle:(BOOL)a4;
- (void)setInACycleInGrid:(unsigned __int16)a3 row:(unsigned int)a4 inACycle:(BOOL)a5;
- (void)sortCellRecords;
- (void)unpackAfterUnarchive;
@end

@implementation TSCECellDependencies

- (TSCECellDependencies)initWithDependTracker:(id)a3 ownerID:(unsigned __int16)a4 ownerUID:(const TSKUIDStruct *)a5 ownerIndex:(unsigned __int16)a6
{
  v10 = a3;
  v23.receiver = self;
  v23.super_class = TSCECellDependencies;
  v11 = [(TSCECellDependencies *)&v23 init];
  v12 = v11;
  if (v11)
  {
    v11->_dependencyTracker = v10;
    v11->_ownerUID = *a5;
    v11->_internalOwnerID = a4;
    v11->_numCellRecords = 0;
    v11->_ownerIndex = a6;
    v11->_hasExcelImportTranslationCells = 0;
    v11->_unarchivedCellRecords = 0;
    v11->_tilesLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    if (v10)
    {
      v13 = [TSCECellRecordTile alloc];
      internalOwnerID = v12->_internalOwnerID;
      v19 = objc_msgSend_objectContext(v10, v15, v16, v17, v18);
      v22 = objc_msgSend_initWithOwnerId_tileColumnBegin_tileRowBegin_context_(v13, v20, internalOwnerID, 0, 0, v19);

      sub_22111AB1C(&v12->_tiles.__begin_, &v22);
    }
  }

  return v12;
}

- (TSUCellCoord)embiggenedCellCoord
{
  LODWORD(v3) = sub_2215C2704(&self->_containsAFormulaGrid._tiles.__begin_);
  v4 = v3;
  if (v3 < 0xFFFF)
  {
    v5 = sub_2215C2724(&self->_containsAFormulaGrid);
    if (v5 >= 0xFF)
    {
      return (v4 | (v5 << 32));
    }

    else
    {
      return 0x7FFF7FFFFFFFLL;
    }
  }

  else
  {
    return v3;
  }
}

- (void)readPrecedentsWithoutOwners:(const void *)a3 cellRecord:(TSCECellRecord *)a4
{
  v6 = *(a3 + 4);
  if (v6 >= 1)
  {
    v16 = v4;
    v17 = v5;
    v10 = 0;
    v11 = 4 * v6;
    do
    {
      v12 = *(*(a3 + 3) + v10);
      v13 = v12;
      v14 = BYTE2(v12);
      if ((v12 & 0x1000000) == 0)
      {
        break;
      }

      v10 += 4;
      internalOwnerID = self->_internalOwnerID;
      sub_2215C52D0(a4, &v13, 1);
    }

    while (v11 != v10);
  }
}

- (void)readPrecedentsWithOwners:(const void *)a3 cellRecord:(TSCECellRecord *)a4
{
  v5 = a4;
  v8 = *(a3 + 8);
  v9 = *(a3 + 14);
  v50 = v9;
  if (v9 < 1)
  {
    if (*(a3 + 18) == v8)
    {
      goto LABEL_7;
    }

    v17 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellDependencies readPrecedentsWithOwners:cellRecord:]", a4, v4);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellDependencies.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v11, v15, 164, 0, "corrupted file");
  }

  else
  {
    if (v9 == v8)
    {
LABEL_8:
      v26 = 0;
      v27 = 0x277D81000uLL;
      v48 = v5;
      v49 = v8;
      while (1)
      {
        v28 = *(*(a3 + 5) + 4 * v26);
        v52 = v28;
        v53 = BYTE2(v28);
        if ((v28 & 0x1000000) == 0)
        {
          return;
        }

        dependencyTracker = self->_dependencyTracker;
        if (v9 < 1)
        {
          break;
        }

        if (!dependencyTracker)
        {
          LODWORD(v33) = *(*(a3 + 10) + 4 * v26);
LABEL_19:
          if (v33 == 0xFFFF)
          {
            LODWORD(v33) = self->_internalOwnerID;
          }

          goto LABEL_21;
        }

        v51._lower = 0;
        v51._upper = 0;
        v51._lower = TSKUIDStruct::loadFromMessage();
        v51._upper = v30;
        LODWORD(v33) = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self->_dependencyTracker, v30, &v51, v31, v32);
        if (v33 == 0xFFFF && v51 != 0uLL)
        {
          v34 = v27;
          v35 = *(v27 + 336);
          v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellDependencies readPrecedentsWithOwners:cellRecord:]", a4, v4);
          v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellDependencies.mm", v38, v39);
          v41 = TSKUIDStruct::description(&v51);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v42, v36, v40, 181, 0, "Couldn't locate tableID found in cross-table reference: %{public}@", v41);

          v27 = v34;
          objc_msgSend_logFullBacktrace(*(v34 + 336), v43, v44, v45, v46);
          v5 = v48;
          v8 = v49;
          v9 = v50;
        }

LABEL_21:
        v54 = v33;
        if (v33 != 0xFFFF)
        {
          sub_2215C52D0(v5, &v52, 1);
        }

        if (v8 == ++v26)
        {
          return;
        }
      }

      v33 = *(*(a3 + 10) + 4 * v26);
      if (dependencyTracker)
      {
        v47 = objc_msgSend_idMap(dependencyTracker, a2, a3, a4, v4);
        if (*(v47 + 144))
        {
          LODWORD(v33) = sub_2212602C8(v47, v33);
        }
      }

      goto LABEL_19;
    }

    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellDependencies readPrecedentsWithOwners:cellRecord:]", a4, v4);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellDependencies.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 162, 0, "corrupted file");
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  v9 = v50;
LABEL_7:
  if (v8 >= 1)
  {
    goto LABEL_8;
  }
}

- (void)readExpandedPrecedentsWithoutOwners:(const void *)a3 cellRecord:(TSCECellRecord *)a4
{
  v6 = *(a3 + 4);
  if (v6 >= 1)
  {
    v15 = v4;
    v16 = v5;
    v10 = 0;
    v11 = 4 * v6;
    do
    {
      v12 = *(*(a3 + 3) + v10);
      v13 = *(*(a3 + 5) + v10);
      internalOwnerID = self->_internalOwnerID;
      sub_2215C52D0(a4, &v12, 1);
      v10 += 4;
    }

    while (v11 != v10);
  }
}

- (void)readExpandedPrecedentsWithOwners:(const void *)a3 cellRecord:(TSCECellRecord *)a4
{
  v8 = *(a3 + 12);
  if (*(a3 + 20) != v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellDependencies readExpandedPrecedentsWithOwners:cellRecord:]", a4, v4);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellDependencies.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 229, 0, "corrupted file");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  if (v8 >= 1)
  {
    v20 = 0;
    do
    {
      v24 = *(*(a3 + 7) + v20);
      v25 = *(*(a3 + 9) + v20);
      v21 = *(*(a3 + 11) + v20);
      dependencyTracker = self->_dependencyTracker;
      if (dependencyTracker)
      {
        v23 = objc_msgSend_idMap(dependencyTracker, a2, a3, a4, v4);
        if (*(v23 + 144))
        {
          LOWORD(v21) = sub_2212602C8(v23, v21);
        }
      }

      v20 += 4;
      v26 = v21;
      sub_2215C52D0(a4, &v24, 1);
    }

    while (4 * v8 != v20);
  }
}

- (void)readFromArchive:(const void *)a3
{
  v3 = *(a3 + 8);
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      TSCE::CellRecordArchive::CellRecordArchive(v6, *(*(a3 + 5) + 8 * i + 8));
      if (v7 == 1)
      {
        operator new();
      }

      TSCE::CellRecordArchive::~CellRecordArchive(v6);
    }
  }
}

- (void)unpackAfterUnarchive
{
  if (!self->_dependencyTracker)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellDependencies unpackAfterUnarchive]", v2, v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellDependencies.mm", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 359, 0, "invalid nil value for '%{public}s'", "_dependencyTracker");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  }

  begin = self->_tiles.__begin_;
  var0 = self->_tiles.var0;
  if (begin == var0)
  {
    goto LABEL_6;
  }

  do
  {
    v18 = *begin;
    objc_msgSend_unpackAfterUnarchiveForCellDependencies_(v18, v19, self, v20, v21);

    ++begin;
  }

  while (begin != var0);
  if (self->_tiles.__begin_ == self->_tiles.var0)
  {
LABEL_6:
    v25 = [TSCECellRecordTile alloc];
    internalOwnerID = self->_internalOwnerID;
    v31 = objc_msgSend_objectContext(self->_dependencyTracker, v27, v28, v29, v30);
    v44 = objc_msgSend_initWithOwnerId_tileColumnBegin_tileRowBegin_context_(v25, v32, internalOwnerID, 0, 0, v31);

    p_tilesLock = &self->_tilesLock;
    os_unfair_lock_lock(&self->_tilesLock);
    sub_22111AB1C(&self->_tiles.__begin_, &v44);
    os_unfair_lock_unlock(&self->_tilesLock);
    LOBYTE(v43) = 0;
    sub_2212E22F0(&p_tilesLock);
  }

  unarchivedCellRecords = self->_unarchivedCellRecords;
  if (unarchivedCellRecords)
  {
    v34 = *unarchivedCellRecords;
    v35 = unarchivedCellRecords[1];
    if (*unarchivedCellRecords == v35)
    {
      goto LABEL_13;
    }

    do
    {
      v36 = *v34;
      objc_msgSend_replaceCellRecord_(self, v22, *v34, v23, v24);
      if (*(v36 + 16) == 1)
      {
        v39 = self->_internalOwnerID;
        p_tilesLock = *(v36 + 32) | (*(v36 + 36) << 32);
        v43 = v39;
        objc_msgSend_dgl_pushReferenceForImmediateEvaluation_pushOnFront_(self->_dependencyTracker, v37, &p_tilesLock, 0, v38);
      }

      v40 = sub_2211226F4(v36);
      MEMORY[0x223DA1450](v40, 0x1020C4012755DA7);
      ++v34;
    }

    while (v34 != v35);
    unarchivedCellRecords = self->_unarchivedCellRecords;
    if (unarchivedCellRecords)
    {
LABEL_13:
      v41 = *unarchivedCellRecords;
      if (*unarchivedCellRecords)
      {
        unarchivedCellRecords[1] = v41;
        operator delete(v41);
      }

      MEMORY[0x223DA1450](unarchivedCellRecords, 0x80C40D6874129);
    }

    self->_unarchivedCellRecords = 0;
  }
}

- (void)encodeToExpandedArchive:(void *)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_22111BB5C;
  v3[3] = &unk_27845F240;
  v3[4] = self;
  v3[5] = a3;
  objc_msgSend_applyBlockToSortedRecords_doWillModify_block_(self, a2, 1, 0, v3);
}

- (void)readFromTiledArchive:(const void *)a3 unarchiver:(id)a4 ownerDepends:(id)a5
{
  v7 = a4;
  v8 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22111BE04;
  v13[3] = &unk_27845D8D8;
  v9 = v8;
  v14 = v9;
  v10 = v7;
  v11 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v10, v12, a3 + 16, v11, 0, v13);
}

- (void)encodeToTiledArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v11 = objc_msgSend_initWithCapacity_(v7, v8, self->_tiles.var0 - self->_tiles.__begin_, v9, v10);
  p_tilesLock = &self->_tilesLock;
  v25 = &self->_tilesLock;
  os_unfair_lock_lock(&self->_tilesLock);
  v26 = 1;
  begin = self->_tiles.__begin_;
  var0 = self->_tiles.var0;
  if (begin != var0)
  {
    do
    {
      v15 = *begin;
      if (objc_msgSend_numCellRecords(v15, v16, v17, v18, v19))
      {
        objc_msgSend_addObject_(v11, v20, v15, v21, v22);
      }

      ++begin;
    }

    while (begin != var0);
    p_tilesLock = v25;
  }

  os_unfair_lock_unlock(p_tilesLock);
  v26 = 0;
  objc_msgSend_setStrongReferenceArray_message_(v6, v23, v11, a3 + 16, v24);
  sub_2212E22F0(&v25);
}

- (unint64_t)memoryUseEstimate
{
  begin = self->_tiles.__begin_;
  var0 = self->_tiles.var0;
  v4 = 100;
  while (begin != var0)
  {
    v5 = *begin;
    v4 += objc_msgSend_memoryUseEstimate(v5, v6, v7, v8, v9);

    ++begin;
  }

  return v4;
}

- (id)tileForCoord:(const TSUCellCoord *)a3 createIfMissing:(BOOL)a4
{
  column = a3->column;
  if (a3->row == 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFFLL;
  }

  else
  {
    v5 = a3->row & 0xFFFFFF80;
  }

  v6 = column == 0x7FFF;
  if (column == 0x7FFF)
  {
    v7 = 0x7FFF;
  }

  else
  {
    v7 = column & 0xFFE0;
  }

  v57 = v7;
  if (v6 && a3->row == 0x7FFFFFFF)
  {
    v43 = 0;
    goto LABEL_35;
  }

  v9 = self;
  v60 = 0;
  p_tiles = &self->_tiles;
  v11 = self->_tiles.var0 - self->_tiles.__begin_;
  if (!v11)
  {
    v19 = 0;
    v12 = 0;
    goto LABEL_27;
  }

  v55 = a4;
  v12 = 0;
  v13 = v11 >> 3;
  while (1)
  {
    v14 = v12 + ((v13 - v12) >> 1);
    v19 = p_tiles->__begin_[v14];
    if (!v19)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSCECellDependencies tileForCoord:createIfMissing:]", v17, v18);
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellDependencies.mm", v23, v24);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 491, 0, "invalid nil value for '%{public}s'", "t");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    }

    if (objc_msgSend_tileRowBegin(v19, v15, v16, v17, v18) >= v5)
    {
      if (objc_msgSend_tileRowBegin(v19, v31, v32, v33, v34) > v5)
      {
        goto LABEL_20;
      }

      if (objc_msgSend_tileColumnBegin(v19, v35, v36, v37, v38) >= v57)
      {
        break;
      }
    }

    v12 = v14 + 1;
LABEL_21:

    if (v12 >= v13)
    {
      v19 = 0;
      goto LABEL_23;
    }
  }

  if (objc_msgSend_tileColumnBegin(v19, v39, v40, v41, v42) > v57)
  {
LABEL_20:
    v13 = v12 + ((v13 - v12) >> 1);
    goto LABEL_21;
  }

  v60 = v19;
LABEL_23:
  v9 = self;
  *&a4 = v55;
  if (!v19)
  {
LABEL_27:
    if (a4)
    {
      v44 = [TSCECellRecordTile alloc];
      internalOwnerID = v9->_internalOwnerID;
      v50 = objc_msgSend_objectContext(v9->_dependencyTracker, v46, v47, v48, v49);
      v60 = objc_msgSend_initWithOwnerId_tileColumnBegin_tileRowBegin_context_(v44, v51, internalOwnerID, v57, v5, v50);

      lock = &v9->_tilesLock;
      os_unfair_lock_lock(&v9->_tilesLock);
      v59 = 1;
      begin = v9->_tiles.__begin_;
      v53 = v9->_tiles.var0 - begin;
      if (v12 == v53 >> 3)
      {
        sub_22111AB1C(p_tiles, &v60);
      }

      else
      {
        if (v12 + 1 < v53 >> 3)
        {
          begin = p_tiles->__begin_;
        }

        sub_22111C3E8(p_tiles, &begin[v12], &v60);
      }

      os_unfair_lock_unlock(lock);
      v59 = 0;
      sub_2212E22F0(&lock);
      v19 = v60;
    }
  }

  v43 = v19;

LABEL_35:

  return v43;
}

- (TSCECellRecord)findCellRecord:(const TSUCellCoord *)a3 willModifyOnTile:(BOOL)a4
{
  v5 = a4;
  result = objc_msgSend_tileForCoord_(self, a2, a3, a4, v4);
  if (result)
  {
    v13 = result;
    if (v5)
    {
      v14 = objc_msgSend_calcEngine(self->_dependencyTracker, v9, v10, v11, v12);
      isRecalculationRunning = objc_msgSend_isRecalculationRunning(v14, v15, v16, v17, v18);

      objc_msgSend_willModifyWithOptions_(v13, v20, isRecalculationRunning, v21, v22);
    }

    v23 = *a3;

    return objc_msgSend_findCellRecord_(v13, v9, v23, v11, v12);
  }

  return result;
}

- (TSCECellRecord)findCellRecordForCellRef:(const TSCECellRef *)a3 willModifyOnTile:(BOOL)a4
{
  CellRecord_willModifyOnTile = a4;
  upper = a3->_tableUID._upper;
  if (a3->_tableUID._lower == self->_ownerUID._lower && upper == self->_ownerUID._upper)
  {

    return objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, a3, a4, v4);
  }

  else
  {
    dependencyTracker = self->_dependencyTracker;
    v19[0] = a3->_tableUID._lower;
    v19[1] = upper;
    v11 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(dependencyTracker, a2, v19, a4, v4);
    v15 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self->_dependencyTracker, v12, v11, v13, v14);
    v18 = v15;
    if (v15)
    {
      CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v15, v16, a3, CellRecord_willModifyOnTile, v17);
    }

    if (v18)
    {
      return CellRecord_willModifyOnTile;
    }

    else
    {
      return 0;
    }
  }
}

- (TSCECellRecord)findCellRecordForIntCellRef:(const TSCEInternalCellReference *)a3 willModifyOnTile:(BOOL)a4
{
  CellRecord_willModifyOnTile = a4;
  tableID = a3->tableID;
  if (tableID == self->_internalOwnerID)
  {

    return objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, a3, a4, v4);
  }

  else
  {
    v9 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self->_dependencyTracker, a2, tableID, a4, v4);
    v12 = v9;
    if (v9)
    {
      CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v9, v10, a3, CellRecord_willModifyOnTile, v11);
    }

    if (v12)
    {
      return CellRecord_willModifyOnTile;
    }

    else
    {
      return 0;
    }
  }
}

- (void)applyBlockToRecordsInRange:(const TSCERangeCoordinate *)a3 cellRestrictions:(unint64_t)a4 doWillModify:(BOOL)a5 block:(id)a6
{
  v6 = a5;
  v25 = a6;
  if ((a4 & 2) == 0 || !sub_2215C25E8(&self->_isDirtyGrid))
  {
    column = a3->_topLeft.column;
    if (column == 0x7FFF)
    {
      v11 = 0x7FFF;
    }

    else
    {
      v11 = column & 0xFFE0;
    }

    if (a3->_topLeft.row == 0x7FFFFFFF)
    {
      v12 = 0x7FFFFFFF;
    }

    else
    {
      v12 = a3->_topLeft.row & 0xFFFFFF80;
    }

    begin = self->_tiles.__begin_;
    var0 = self->_tiles.var0;
    while (begin != var0)
    {
      v15 = *begin;
      if (objc_msgSend_tileRowBegin(v15, v16, v17, v18, v19) >= v12 && v11 <= objc_msgSend_tileColumnBegin(v15, v20, v21, v22, v23))
      {
        objc_msgSend_applyBlockToRecordsInRange_cellRestrictions_doWillModify_block_(v15, v24, *&a3->_topLeft, *&a3->_bottomRight, a4, v6, v25);
      }

      ++begin;
    }
  }
}

- (void)applyBlockToRecordsAtIndexes:(id)a3 rowIndexes:(id)a4 cellRestrictions:(unint64_t)a5 doWillModify:(BOOL)a6 block:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (objc_msgSend_count(v12, v15, v16, v17, v18) && objc_msgSend_count(v13, v19, v20, v21, v22))
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_22111C9A4;
    v26[3] = &unk_27845F290;
    v27 = v13;
    v28 = self;
    v30 = a5;
    v31 = a6;
    v29 = v14;
    objc_msgSend_enumerateRangesUsingBlock_(v12, v23, v26, v24, v25);
  }
}

- (void)applyBlockToRecords:(unint64_t)a3 doWillModify:(BOOL)a4 block:(id)a5
{
  v5 = a4;
  v13 = a5;
  if ((a3 & 2) == 0 || !sub_2215C25E8(&self->_isDirtyGrid))
  {
    begin = self->_tiles.__begin_;
    var0 = self->_tiles.var0;
    while (begin != var0)
    {
      v10 = *begin;
      v12 = v10;
      if (v10 && (objc_msgSend_applyBlockToRecords_doWillModify_block_(v10, v11, a3, v5, v13) & 1) == 0)
      {

        break;
      }

      ++begin;
    }
  }
}

- (void)applyBlockToSortedRecords:(unint64_t)a3 doWillModify:(BOOL)a4 block:(id)a5
{
  v5 = a4;
  v13 = a5;
  if ((a3 & 2) == 0 || !sub_2215C25E8(&self->_isDirtyGrid))
  {
    begin = self->_tiles.__begin_;
    var0 = self->_tiles.var0;
    while (begin != var0)
    {
      v10 = *begin;
      v12 = v10;
      if (v10 && (objc_msgSend_applyBlockToSortedRecords_doWillModify_block_(v10, v11, a3, v5, v13) & 1) == 0)
      {

        break;
      }

      ++begin;
    }
  }
}

- (unint64_t)countRecordsInRange:(const TSCERangeCoordinate *)a3 cellRestrictions:(unint64_t)a4
{
  if ((a4 & 2) != 0 && sub_2215C25E8(&self->_isDirtyGrid))
  {
    return 0;
  }

  topLeft = a3->_topLeft;
  bottomRight = a3->_bottomRight;
  v10 = *&a3->_topLeft & 0xFFFF00000000;
  v11 = bottomRight & 0xFFFF00000000;
  v12 = *&a3->_topLeft;
  if (v12 != 0x7FFFFFFF || v10 == 0x7FFF00000000 || v11 == 0x7FFF00000000)
  {
    if (v12 != 0x7FFFFFFF && v10 == 0x7FFF00000000 && v11 == 0x7FFF00000000)
    {
      v17 = 0x7FFFLL;
      if (bottomRight != 0x7FFFFFFF)
      {
        v19 = 0;
        if ((a4 & 2) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v17 = WORD2(*&a3->_topLeft);
    }

    v18 = a3->_bottomRight;
  }

  else
  {
    v17 = WORD2(*&a3->_topLeft);
    if (bottomRight == 0x7FFFFFFFLL)
    {
      topLeft.row = 0;
      v18 = 0x7FFFFFFFLL;
    }

    else
    {
      v18 = bottomRight;
    }
  }

  v19 = v17;
  v17 = WORD2(*&a3->_bottomRight);
  bottomRight = v18;
  if ((a4 & 2) == 0)
  {
LABEL_26:
    if ((a4 & 1) == 0)
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_22111CECC;
      v23[3] = &unk_27845F2B8;
      v23[4] = &v25;
      objc_msgSend_applyBlockToRecordsInRange_cellRestrictions_doWillModify_block_(self, v19, a3, a4, 0, v23);
LABEL_34:
      v7 = v26[3];
      _Block_object_dispose(&v25, 8);
      return v7;
    }

    v20 = (&self->_isInACycleGrid & ((a4 << 61) >> 63));
    p_containsAFormulaGrid = &self->_containsAFormulaGrid;
    goto LABEL_38;
  }

LABEL_30:
  if (a4)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_22111CEB4;
    v24[3] = &unk_27845F2B8;
    v24[4] = &v25;
    objc_msgSend_applyBlockToRecordsInRange_cellRestrictions_doWillModify_block_(self, v19, a3, a4, 0, v24);
    goto LABEL_34;
  }

  if ((a4 & 4) != 0)
  {
    p_containsAFormulaGrid = &self->_isDirtyAndNotInACycleGrid;
  }

  else
  {
    p_containsAFormulaGrid = &self->_isDirtyGrid;
  }

  v20 = 0;
LABEL_38:

  return sub_2215C3704(p_containsAFormulaGrid, v19, topLeft.row, v17, bottomRight, v20);
}

- (vector<TSUCellCoord,)cellsWithRecordsInRange:(TSCECellDependencies *)self formulaCellsOnly:(SEL)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4812000000;
  v12 = sub_22111D014;
  v13 = sub_22111D038;
  v14 = &unk_22188E88F;
  v16 = 0;
  v17 = 0;
  __p = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22111D050;
  v8[3] = &unk_27845F2B8;
  v8[4] = &v9;
  objc_msgSend_applyBlockToRecordsInRange_cellRestrictions_doWillModify_block_(self, a3, a4, a5, 0, v8);
  v6 = v10;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_2211230D4(retstr, v6[6], v6[7], (v6[7] - v6[6]) >> 3);
  _Block_object_dispose(&v9, 8);
  result = __p;
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return result;
}

- (void)cellsReferencingRange:(const TSCERangeCoordinate *)a3 fromOwnerID:(unsigned __int16)a4 outFormulaCoords:(void *)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22111D1DC;
  v5[3] = &unk_27845F318;
  v6 = a4;
  v5[4] = a5;
  objc_msgSend_applyBlockToRecordsInRange_cellRestrictions_doWillModify_block_(self, a2, a3, 0, 0, v5);
}

- (void)formulaCellsReferencingCellsInRange:(const TSCERangeCoordinate *)a3 outFormulaCells:(void *)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x5812000000;
  v11 = sub_22111D510;
  v12 = sub_22111D51C;
  v13 = &unk_22188E88F;
  memset(v14, 0, sizeof(v14));
  v15 = 1065353216;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22111D524;
  v7[3] = &unk_27845F340;
  v7[4] = &v8;
  objc_msgSend_applyBlockToRecordsInRange_cellRestrictions_doWillModify_block_(self, a2, a3, 0, 0, v7);
  sub_2212E0430((v9 + 6), self->_dependencyTracker, &v6);
  TSCECellRefSet::addCellRefs(a4, &v6);
  sub_22107C800(&v6, v6._coordsForOwnerUid.__tree_.__end_node_.__left_);
  _Block_object_dispose(&v8, 8);
  sub_221122744(v14);
}

- (void)formulaCellsReferencingThisOwner:(void *)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x5812000000;
  v10 = sub_22111D510;
  v11 = sub_22111D51C;
  v12 = &unk_22188E88F;
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22111D698;
  v6[3] = &unk_27845F368;
  v6[4] = &v7;
  objc_msgSend_applyBlockToRecords_doWillModify_block_(self, a2, 0, 0, v6);
  sub_2212E0430((v8 + 6), self->_dependencyTracker, &v5);
  TSCECellRefSet::addCellRefs(a3, &v5);
  sub_22107C800(&v5, v5._coordsForOwnerUid.__tree_.__end_node_.__left_);
  _Block_object_dispose(&v7, 8);
  sub_221122744(v13);
}

- (void)formulaCellsInThisOwner:(void *)a3
{
  v7 = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self->_dependencyTracker, a2, self->_internalOwnerID, v3, v4);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22111D748;
  v9[3] = &unk_27845F388;
  v9[4] = v7;
  v9[5] = v8;
  v9[6] = a3;
  objc_msgSend_applyBlockToRecords_doWillModify_block_(self, v8, 1, 0, v9);
}

- (void)formulaCellsInRange:(const TSCERangeCoordinate *)a3 rewriteSpec:(id)a4 outFormulaCells:(void *)a5
{
  v8 = a4;
  v13 = objc_msgSend_rewriteType(v8, v9, v10, v11, v12);
  v17 = objc_msgSend_rewriteTypeUsesAmendRewriteSpec_(TSCEDependencyTracker, v14, v13, v15, v16);
  v21 = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self->_dependencyTracker, v18, self->_internalOwnerID, v19, v20);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22111D89C;
  v25[3] = &unk_27845F3D8;
  v27 = v21;
  v28 = v22;
  v29 = a5;
  v30 = v17;
  v23 = v8;
  v26 = v23;
  objc_msgSend_applyBlockToRecordsInRange_cellRestrictions_doWillModify_block_(self, v24, a3, 1, 0, v25);
}

- (void)formulaCellsReferencingIndexes:(id)a3 rowIndexes:(id)a4 outFormulaCells:(void *)a5
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x5812000000;
  v12 = sub_22111D510;
  v13 = sub_22111D51C;
  v14 = &unk_22188E88F;
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22111DC6C;
  v8[3] = &unk_27845F340;
  v8[4] = &v9;
  objc_msgSend_applyBlockToRecordsAtIndexes_rowIndexes_cellRestrictions_doWillModify_block_(self, a2, a3, a4, 0, 0, v8);
  sub_2212E0430((v10 + 6), self->_dependencyTracker, &v7);
  TSCECellRefSet::addCellRefs(a5, &v7);
  sub_22107C800(&v7, v7._coordsForOwnerUid.__tree_.__end_node_.__left_);
  _Block_object_dispose(&v9, 8);
  sub_221122744(v15);
}

- (void)formulaCellsReferencingCellsAffectedByRemoveRows:(id)a3 outFormulaCells:(void *)a4
{
  v6 = a3;
  v11 = objc_msgSend_rowColumnInfo(v6, v7, v8, v9, v10);
  v19[0] = objc_msgSend_affectedRangeForRemoveRows(v11, v12, v13, v14, v15);
  v19[1] = v16;

  objc_msgSend_formulaCellsReferencingCellsInRange_outFormulaCells_(self, v17, v19, a4, v18);
}

- (void)formulaCellsReferencingCellsAffectedByInsertRows:(id)a3 outFormulaCells:(void *)a4
{
  v6 = a3;
  v11 = objc_msgSend_rowColumnInfo(v6, v7, v8, v9, v10);
  v19[0] = objc_msgSend_affectedRangeForInsertRows(v11, v12, v13, v14, v15);
  v19[1] = v16;

  objc_msgSend_formulaCellsReferencingCellsInRange_outFormulaCells_(self, v17, v19, a4, v18);
}

- (void)formulaCellsReferencingCellsAffectedByMoveRows:(id)a3 outFormulaCells:(void *)a4
{
  v6 = a3;
  v11 = objc_msgSend_rowColumnInfo(v6, v7, v8, v9, v10);
  v19[0] = objc_msgSend_affectedRangeForMoveRows(v11, v12, v13, v14, v15);
  v19[1] = v16;

  objc_msgSend_formulaCellsReferencingCellsInRange_outFormulaCells_(self, v17, v19, a4, v18);
}

- (BOOL)insertCellRecord:(TSCECellRecord *)a3 doWillModify:(BOOL)a4
{
  if (!a3)
  {
    return 0;
  }

  v5 = a4;
  v16 = a3->var4 | (a3->var5 << 32);
  v8 = objc_msgSend_tileForCoord_createIfMissing_(self, a2, &v16, 1, v4);
  v13 = v8;
  if (v5)
  {
    objc_msgSend_willModify(v8, v9, v10, v11, v12);
  }

  if (v13)
  {
    inserted = objc_msgSend_insertCellRecord_cellDependencies_(v13, v9, a3, self, v12);
  }

  else
  {
    inserted = 0;
  }

  return inserted;
}

- (void)removeDependentEdge:(const TSUCellCoord *)a3 edge:(const TSCEInternalCellReference *)a4
{
  CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, a3, 1, v4);
  if (CellRecord_willModifyOnTile)
  {
    v9 = CellRecord_willModifyOnTile;
    sub_2215C5434(CellRecord_willModifyOnTile, a4, 0);
    if ((*(v9 + 38) & 4) == 0 && (sub_2215C5AB8(v9) & 1) == 0 && !sub_2215C5AF0(v9))
    {

      objc_msgSend_markCellRecordForPruning_(self, v10, a3, v11, v12);
    }
  }
}

- (void)markCellRecordForPruning:(const TSUCellCoord *)a3
{
  ownerIndex = self->_ownerIndex;
  v7 = ownerIndex > 4;
  v8 = (1 << ownerIndex) & 0x1A;
  if (v7 || v8 == 0)
  {

    (MEMORY[0x2821F9670])(self, sel_removeCellRecordAt_, a3);
  }

  else
  {
    v10 = objc_msgSend_tileForCoord_(self, a2, a3, v3, v4);
    if (v10)
    {
      objc_msgSend_incrementPruningNeededRecords(v10, v11, v12, v13, v14);
      dependencyTracker = self->_dependencyTracker;
      internalOwnerID = self->_internalOwnerID;

      MEMORY[0x2821F9670](dependencyTracker, sel_markOwnerIDHavingRecordsToPrune_, internalOwnerID, v15, v16);
    }
  }
}

- (void)removeCellRecordAt:(const TSUCellCoord *)a3
{
  v7 = objc_msgSend_tileForCoord_(self, a2, a3, v3, v4);
  if (v7)
  {
    v9 = *a3;

    (MEMORY[0x2821F9670])(v7, sel_removeCellRecord_cellDependencies_, v9, self, v8);
  }
}

- (void)pruneEmptyCellRecords:(id)a3 timeout:(double)a4
{
  v14 = a3;
  begin = self->_tiles.__begin_;
  var0 = self->_tiles.var0;
  while (begin != var0)
  {
    v12 = *begin;
    if (objc_msgSend_pruningNeededRecords(*begin, v6, v7, v8, v9))
    {
      objc_msgSend_pruneEmptyRecords_(v12, v6, self, v8, v9);
      if (v14)
      {
        objc_msgSend_timeIntervalSinceNow(v14, v6, v7, v8, v9);
        if (-v13 > a4)
        {
          goto LABEL_8;
        }
      }
    }

    ++begin;
  }

  objc_msgSend_clearOwnerIDHavingRecordsToPrune_(self->_dependencyTracker, v6, self->_internalOwnerID, v8, v9);
LABEL_8:
}

- (BOOL)replaceCellRecord:(TSCECellRecord *)a3
{
  v15 = a3->var4 | (a3->var5 << 32);
  v6 = objc_msgSend_tileForCoord_createIfMissing_(self, a2, &v15, 1, v3);
  objc_msgSend_willModify(v6, v7, v8, v9, v10);
  if (v6)
  {
    v13 = objc_msgSend_replaceCellRecord_cellDependencies_(v6, v11, a3, self, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)collectDependencies:(id)a3
{
  v4 = a3;
  v5 = TSKUIDStruct::description(&self->_ownerUID);
  v10 = objc_msgSend_userFriendlyOwnerName(self, v6, v7, v8, v9);
  IsUnregistering = objc_msgSend_ownerIdIsUnregistering_(self->_dependencyTracker, v11, self->_internalOwnerID, v12, v13);
  v15 = &stru_2834BADA0;
  if (IsUnregistering)
  {
    v15 = @"[UNREGISTERING]";
  }

  v16 = v15;
  if (objc_msgSend_isEqual_(v10, v17, v5, v18, v19))
  {
    v62._lower = sub_2212C4A5C(&self->_ownerUID, self->_ownerIndex);
    v62._upper = v23;
    if (v62._lower == self->_ownerUID._lower && v23 == self->_ownerUID._upper)
    {
      v26 = MEMORY[0x277CCACA8];
      v27 = objc_msgSend_stringForOwnerKind_(TSCECellDependenciesPrinter, v23, self->_ownerIndex, v24, v25);
      v31 = objc_msgSend_stringWithFormat_(v26, v28, @"%@ %@ (%@) %@", v29, v30, v10, v27, v5, v16, v62._lower, v62._upper);
      objc_msgSend_setOwnerName_(v4, v32, v31, v33, v34);
    }

    else
    {
      v38 = MEMORY[0x277CCACA8];
      v39 = TSKUIDStruct::description(&v62);
      v43 = objc_msgSend_stringForOwnerKind_(TSCECellDependenciesPrinter, v40, self->_ownerIndex, v41, v42);
      v27 = objc_msgSend_stringWithFormat_(v38, v44, @"%@-%@", v45, v46, v39, v43);

      v31 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v47, @"%@ (%@) %@", v48, v49, v27, v5, v16);
      objc_msgSend_setOwnerName_(v4, v50, v31, v51, v52);
    }
  }

  else
  {
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"%@ (%@) %@", v21, v22, v10, v5, v16);
    objc_msgSend_setOwnerName_(v4, v35, v27, v36, v37);
  }

  v53 = sub_2215C2678(&self->_isDirtyGrid);
  objc_msgSend_setNumDirtyCells_(v4, v54, v53, v55, v56);
  begin = self->_tiles.__begin_;
  var0 = self->_tiles.var0;
  while (begin != var0)
  {
    v59 = *begin;
    objc_msgSend_collectDependencies_cellDependencies_(v59, v60, v4, self, v61);

    ++begin;
  }
}

- (void)sortCellRecords
{
  begin = self->_tiles.__begin_;
  var0 = self->_tiles.var0;
  while (begin != var0)
  {
    v7 = *begin++;
    objc_msgSend_sortCellRecords(v7, a2, v2, v3, v4);
  }
}

- (unint64_t)computedNumberOfDirtyPrecedents:(const TSUCellCoord *)a3
{
  CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, a3, 0, v3);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (CellRecord_willModifyOnTile)
  {
    v6 = (*(CellRecord_willModifyOnTile + 38) >> 1) & 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_22111E59C;
    v9[3] = &unk_27845F428;
    v10 = v6;
    v9[4] = self;
    v9[5] = &v11;
    sub_2215C5898(CellRecord_willModifyOnTile, v9);
    v7 = v12[3];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v11, 8);
  return v7;
}

- (id)explainDirtyPrecedentCount:(const TSUCellCoord *)a3
{
  v3 = MEMORY[0x277CCAB68];
  v4 = NSStringFromTSUCellCoord();
  v8 = objc_msgSend_stringWithFormat_(v3, v5, @"CellDependencies for %@\n", v6, v7, v4);

  return 0;
}

- (id)precedentsAsString:(const TSUCellCoord *)a3 dirtyOnly:(BOOL)a4
{
  v4 = MEMORY[0x277CCAB68];
  v5 = NSStringFromTSUCellCoord();
  v9 = objc_msgSend_stringWithFormat_(v4, v6, @"Cell Precedents of %@:\n", v7, v8, v5);

  return v9;
}

- (id)descriptionOfCellsInRange:(const TSCERangeCoordinate *)a3 dirtyOnly:(BOOL)a4
{
  v5 = a4;
  v8 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3, a4, v4);
  if (v5)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22111E8C8;
  v13[3] = &unk_27845F450;
  v10 = v8;
  v14 = v10;
  objc_msgSend_applyBlockToRecordsInRange_cellRestrictions_doWillModify_block_(self, v11, a3, v9, 0, v13);

  return v10;
}

- (void)cellRefsForCycleCellsReferringToCell:(const TSUCellCoord *)a3 outCellRefs:(void *)a4
{
  CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, a3, 1, v4);
  if (CellRecord_willModifyOnTile)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_22111E9DC;
    v8[3] = &unk_27845F4A0;
    v8[4] = self;
    v8[5] = a4;
    sub_2215C5978(CellRecord_willModifyOnTile, v8);
  }
}

- (void)adjustDirtyPrecedentCount:(TSCECellRecord *)a3 isInitialCell:(BOOL)a4 adjustBy:(unint64_t)a5
{
  if (a3)
  {
    var2 = a3->var2;
    LODWORD(v6) = !a4;
    if (var2)
    {
      v6 = 0;
    }

    else
    {
      v6 = v6;
    }

    objc_msgSend_setDirtySelfPlusPrecedentsCount_dirtyCount_(self, a2, a3, var2 + a5 + v6, a5);
  }
}

- (void)adjustDirtyCountAndPushDependents:(TSCECellRecord *)a3 outDependents:(id)a4 isInitialCell:(BOOL)a5 adjustBy:(unint64_t)a6
{
  v7 = a5;
  v14 = a4;
  var2 = a3->var2;
  objc_msgSend_adjustDirtyPrecedentCount_isInitialCell_adjustBy_(self, v11, a3, v7, a6);
  if (!var2)
  {
    objc_msgSend_pushDirectDependentsIfNotBothInCyle_outDependents_(self, v12, a3, v14, v13);
  }
}

- (void)pushDirectDependentsIfNotBothInCyle:(TSCECellRecord *)a3 outDependents:(id)a4
{
  v6 = a4;
  v7 = v6;
  if ((a3->var6 & 2) != 0)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22111ED14;
    v16[3] = &unk_27845F4F0;
    v16[4] = self;
    v18 = a3;
    v17 = v6;
    sub_2215C5978(a3, v16);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    v15 = 1065353216;
    v8 = sub_2215C5B9C(a3, v14);
    internalOwnerID = self->_internalOwnerID;
    v12 = a3->var4 | (a3->var5 << 32);
    v13 = internalOwnerID;
    objc_msgSend_addCellRefs_fromCellRef_(v7, v10, v8, &v12, v11);
    sub_221122744(v14);
  }
}

- (void)clearCycleAndPushDependents:(TSCECellRecord *)a3 outDependents:(id)a4
{
  v9 = a4;
  var6 = a3->var6;
  if ((var6 & 2) != 0)
  {
    objc_msgSend_setInACycle_inACycle_(self, v6, a3, 0, v8);
  }

  if (!a3->var2)
  {
    internalOwnerID = self->_internalOwnerID;
    v12 = a3->var4 | (a3->var5 << 32);
    v13 = internalOwnerID;
    objc_msgSend_dgl_markDependentsDirty_(self->_dependencyTracker, v6, &v12, v7, v8);
  }

  if ((var6 & 2) != 0)
  {
    objc_msgSend_pushDirectDependentsIfNotBothInCyle_outDependents_(self, v6, a3, v9, v8);
  }
}

- (BOOL)hasDependentsOfCell:(const TSCEInternalCellReference *)a3
{
  CellRecordForIntCellRef_willModifyOnTile = objc_msgSend_findCellRecordForIntCellRef_willModifyOnTile_(self, a2, a3, 0, v3);
  if (CellRecordForIntCellRef_willModifyOnTile && sub_2215C5AF0(CellRecordForIntCellRef_willModifyOnTile))
  {
    return 1;
  }

  v11 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self->_dependencyTracker, v7, a3->tableID, v8, v9);
  if (!v11)
  {
    return 0;
  }

  v16 = v11;
  v17 = objc_msgSend_rangeDependencies(v11, v12, v13, v14, v15);
  if (objc_msgSend_hasDependentsAtCoord_(v17, v18, a3, v19, v20))
  {
    hasDependentsAtCoord = 1;
  }

  else
  {
    v25 = objc_msgSend_spanningRowDependencies(v16, v21, v22, v23, v24);
    if (objc_msgSend_hasDependentsAtCoord_(v25, v26, a3, v27, v28))
    {
      hasDependentsAtCoord = 1;
    }

    else
    {
      v33 = objc_msgSend_spanningColumnDependencies(v16, v29, v30, v31, v32);
      hasDependentsAtCoord = objc_msgSend_hasDependentsAtCoord_(v33, v34, a3, v35, v36);
    }
  }

  return hasDependentsAtCoord;
}

- (vector<TSCEInternalCellReference,)dependentsOfCell:(TSCECellDependencies *)self
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x4812000000;
  v38 = sub_22111F378;
  v39 = sub_22111F39C;
  v40 = &unk_22188E88F;
  v42 = 0;
  v43 = 0;
  __p = 0;
  CellRecordForIntCellRef_willModifyOnTile = objc_msgSend_findCellRecordForIntCellRef_willModifyOnTile_(self, a3, a4, 0, v4);
  if (CellRecordForIntCellRef_willModifyOnTile)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_22111F3B4;
    v34[3] = &unk_27845F518;
    v34[4] = &v35;
    sub_2215C57F8(CellRecordForIntCellRef_willModifyOnTile, v34);
  }

  v12 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self->_dependencyTracker, v9, a4->tableID, v10, v11);
  v17 = v12;
  if (v12)
  {
    v18 = objc_msgSend_rangeDependencies(v12, v13, v14, v15, v16);
    objc_msgSend_processDependentsForDFS_coord_outCells_(v18, v19, self, a4, (v36 + 6));

    v24 = objc_msgSend_spanningRowDependencies(v17, v20, v21, v22, v23);
    objc_msgSend_processDependentsForDFS_coord_outCells_(v24, v25, self, a4, (v36 + 6));

    v30 = objc_msgSend_spanningColumnDependencies(v17, v26, v27, v28, v29);
    objc_msgSend_processDependentsForDFS_coord_outCells_(v30, v31, self, a4, (v36 + 6));
  }

  v32 = v36;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_221122D00(retstr, v32[6], v32[7], 0xAAAAAAAAAAAAAAABLL * ((v32[7] - v32[6]) >> 2));
  _Block_object_dispose(&v35, 8);
  result = __p;
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  return result;
}

- (void)depthFirstSearch:(const TSCEInternalCellReference *)a3 state:(void *)a4
{
  v7 = self;
  objc_msgSend_dependentsOfCell_(self, a2, a3, a4, v4);
  v79 = *a3;
  v81 = 0;
  v82 = 0;
  v80 = 0;
  sub_221122D00(&v80, v87, v88, 0xAAAAAAAAAAAAAAABLL * ((v88 - v87) >> 2));
  v83 = 0;
  v84 = 0;
  v86 = 0;
  v85 = 0;
  sub_22112318C(&v76, 1uLL);
  sub_22111EF5C(a4 + 48, a3);
  sub_221122A94(a4 + 9, a3);
  v8 = *a4;
  v71 = a3;
  v9 = sub_2211227C8(a4 + 1, a3);
  v9[4] = v8;
  v9[5] = v8;
  ++*a4;
  v10 = v77;
  if (v76 == v77)
  {
    goto LABEL_70;
  }

  v61 = v63;
  do
  {
    v11 = (v10 - 72);
    if (*(v10 - 56) != *(v10 - 48))
    {
      v75 = 0;
      v74 = 0;
      v12 = *(v10 - 48);
      v13 = *(v12 - 12);
      v12 -= 12;
      v14 = *(v12 + 8);
      *(v10 - 48) = v12;
      v74 = v13;
      v75 = v14;
      if (sub_221123474(a4 + 1, &v74))
      {
        if (sub_221123474(a4 + 9, &v74))
        {
          v71 = &v74;
          v15 = sub_2211227C8(a4 + 1, &v74)[4];
          v71 = (v10 - 72);
          if (v15 >= sub_2211227C8(a4 + 1, (v10 - 72))[5])
          {
            if (*v11 == v74 && ((v74 ^ *v11) & 0x101FFFF00000000) == 0 && *(v10 - 64) == v75)
            {
              *(v10 - 8) = 1;
            }
          }

          else
          {
            v71 = &v74;
            v16 = sub_2211227C8(a4 + 1, &v74)[4];
            v71 = (v10 - 72);
            sub_2211227C8(a4 + 1, (v10 - 72))[5] = v16;
          }
        }
      }

      else
      {
        sub_22111EF5C(v10 - 32, &v74);
        objc_msgSend_dependentsOfCell_(v7, v39, &v74, v40, v41);
        *&v64 = v74;
        DWORD2(v64) = v75;
        v65[1] = 0;
        v66 = 0;
        v65[0] = 0;
        sub_221122D00(v65, v71, v72, 0xAAAAAAAAAAAAAAABLL * ((v72 - v71) >> 2));
        __p = 0;
        v68 = 0;
        v70 = 0;
        v69 = 0;
        v42 = v77;
        if (v77 >= v78)
        {
          v43 = sub_22112355C(&v76, &v64);
        }

        else
        {
          sub_2211232E8(&v76, v77, &v64);
          v43 = v42 + 72;
        }

        v77 = v43;
        v44 = *a4;
        v89 = &v74;
        v45 = sub_2211227C8(a4 + 1, &v74);
        v45[4] = v44;
        v45[5] = v44;
        ++*a4;
        sub_22111EF5C(a4 + 48, &v74);
        sub_221122A94(a4 + 9, &v74);
        if (__p)
        {
          v68 = __p;
          operator delete(__p);
        }

        if (v65[0])
        {
          v65[1] = v65[0];
          operator delete(v65[0]);
        }

        if (v71)
        {
          v72 = v71;
          operator delete(v71);
        }
      }

      v10 = v77;
      continue;
    }

    v71 = (v10 - 72);
    v17 = sub_2211227C8(a4 + 1, (v10 - 72))[5];
    for (i = *(v10 - 32); i != *(v10 - 24); i += 3)
    {
      v19 = *i;
      DWORD2(v64) = i[2];
      *&v64 = v19;
      v71 = &v64;
      if (sub_2211227C8(a4 + 1, &v64)[5] < v17)
      {
        v71 = i;
        v17 = sub_2211227C8(a4 + 1, i)[5];
      }
    }

    v71 = (v10 - 72);
    sub_2211227C8(a4 + 1, (v10 - 72))[5] = v17;
    v71 = (v10 - 72);
    if (v17 != sub_2211227C8(a4 + 1, (v10 - 72))[4])
    {
      goto LABEL_68;
    }

    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0x7FFF7FFFFFFFLL;
    v75 = 0xFFFF;
    do
    {
      v20 = *(a4 + 7);
      v21 = *(v20 - 12);
      v20 -= 12;
      v22 = *(v20 + 8);
      v74 = v21;
      v75 = v22;
      *(a4 + 7) = v20;
      sub_2211238A8(a4 + 9, &v74);
      sub_22111EF5C(&v71, &v74);
      v27 = *v11 == v74 && ((v74 ^ *v11) & 0x101FFFF00000000) == 0;
    }

    while (!v27 || *(v10 - 64) != v75);
    v29 = v71;
    v28 = v72;
    v30 = (0xAAAAAAAAAAAAAAABLL * ((v72 - v71) >> 2) > 1) | *(v10 - 8);
    if (v72 != v71)
    {
      v31 = 0;
      v32 = 0;
      while (1)
      {
        if (v31)
        {
          v33 = objc_msgSend_formulaOwnerId(v31, v23, CellRecord_willModifyOnTile, v25, v26, v61);
          CellRecord_willModifyOnTile = v29[4];
          if (v33 == CellRecord_willModifyOnTile)
          {
            if (v32)
            {
              goto LABEL_29;
            }

            goto LABEL_32;
          }
        }

        else
        {
          CellRecord_willModifyOnTile = v29[4];
        }

        v31 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(v7->_dependencyTracker, v23, CellRecord_willModifyOnTile, v25, v26, v61);

        v38 = objc_msgSend_cellDependencies(v31, v34, v35, v36, v37);

        v32 = v38;
        if (v38)
        {
LABEL_29:
          if ((v30 & 1) != objc_msgSend_isCellInACycle_(v32, v23, v29, v25, v26))
          {
            CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v32, v23, v29, 1, v26);
            if (CellRecord_willModifyOnTile)
            {
              objc_msgSend_setInACycle_inACycle_(v32, v23, CellRecord_willModifyOnTile, v30 & 1, v26);
            }
          }
        }

LABEL_32:
        v29 += 6;
        if (v29 == v28)
        {
          v29 = v71;
          v28 = v72;
          goto LABEL_49;
        }
      }
    }

    v32 = 0;
    v31 = 0;
LABEL_49:
    v64 = 0u;
    *v65 = 0u;
    LODWORD(v66) = 1065353216;
    while (v29 != v28)
    {
      if (v31)
      {
        v46 = objc_msgSend_formulaOwnerId(v31, v23, CellRecord_willModifyOnTile, v25, v26);
        CellRecord_willModifyOnTile = v29[4];
        if (v46 == CellRecord_willModifyOnTile)
        {
          if (!v32)
          {
            goto LABEL_65;
          }

          goto LABEL_57;
        }
      }

      else
      {
        CellRecord_willModifyOnTile = v29[4];
      }

      v31 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(v7->_dependencyTracker, v23, CellRecord_willModifyOnTile, v25, v26, v61);

      v51 = objc_msgSend_cellDependencies(v31, v47, v48, v49, v50);

      v32 = v51;
      if (!v51)
      {
        goto LABEL_65;
      }

LABEL_57:
      v52 = objc_msgSend_findCellRecord_willModifyOnTile_(v32, v23, v29, 1, v26, v61);
      v53 = v52;
      if (v52)
      {
        if (v30)
        {
          if (!*(v52 + 16))
          {
            objc_msgSend_dgl_markDependentsDirty_(v7->_dependencyTracker, v23, v29, v25, v26);
          }

          v54 = v30;
          v55 = v7;
          v56 = objc_msgSend_dgl_computedNumberOfDirtyPrecedents_(v7->_dependencyTracker, v23, v29, v25, v26);
          objc_msgSend_setDirtySelfPlusPrecedentsCount_dirtyCount_(v32, v57, v53, v56 + 1, v58);
          if (!v56)
          {
            objc_msgSend_pushReferenceForImmediateEvaluation_cellRecord_pushOnFront_(v55->_dependencyTracker, v59, v29, v53, 0);
          }

          v7 = v55;
          objc_msgSend_dgl_cellRefsForCycleCellsReferringToCell_outCellRefs_(v55->_dependencyTracker, v59, v29, &v64, v60);
          v30 = v54;
        }

        else
        {
          sub_2212DFCE8(&v64, v29);
        }
      }

LABEL_65:
      v29 += 6;
    }

    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v63[0] = sub_22111FC78;
    v63[1] = &unk_27845F540;
    v63[2] = v7;
    sub_2212DFEC0(&v64, v62);
    sub_221122744(&v64);

    if (v71)
    {
      v72 = v71;
      operator delete(v71);
    }

LABEL_68:
    v10 = v77 - 72;
    sub_22112341C(&v76, (v77 - 72));
    v77 = v10;
  }

  while (v76 != v10);
LABEL_70:
  *&v64 = &v76;
  sub_221123394(&v64);
  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }
}

- (void)findAndRecordCyclesInDirtyCells:(void *)a3 outCellsInCycles:(id)a4
{
  v6 = a4;
  if (objc_msgSend_hasDirtyCells(self, v7, v8, v9, v10))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_22111FD64;
    v12[3] = &unk_27845F568;
    v12[4] = self;
    v14 = a3;
    v13 = v6;
    objc_msgSend_applyBlockToRecords_doWillModify_block_(self, v11, 2, 0, v12);
  }
}

- (void)setContainsAFormulaInGrid:(unsigned __int16)a3 row:(unsigned int)a4 containsFormula:(BOOL)a5
{
  p_containsAFormulaGrid = &self->_containsAFormulaGrid;
  if (a5)
  {
    sub_2215C2F88(p_containsAFormulaGrid, a3, a4);
  }

  else
  {
    sub_2215C3280(p_containsAFormulaGrid, a3, *&a4);
  }
}

- (void)setDirtyInGrid:(unsigned __int16)a3 row:(unsigned int)a4 isDirty:(BOOL)a5
{
  v5 = *&a4;
  v6 = a3;
  p_isDirtyGrid = &self->_isDirtyGrid;
  if (a5)
  {
    sub_2215C2F88(p_isDirtyGrid, a3, a4);
    if (!sub_2215C3528(&self->_isInACycleGrid._tiles.__begin_, v6, v5))
    {

      sub_2215C2F88(&self->_isDirtyAndNotInACycleGrid, v6, v5);
    }
  }

  else
  {
    sub_2215C3280(p_isDirtyGrid, a3, *&a4);

    sub_2215C3280(&self->_isDirtyAndNotInACycleGrid, v6, v5);
  }
}

- (void)setInACycleInGrid:(unsigned __int16)a3 row:(unsigned int)a4 inACycle:(BOOL)a5
{
  v5 = *&a4;
  v6 = a3;
  p_isInACycleGrid = &self->_isInACycleGrid;
  if (a5)
  {
    sub_2215C2F88(p_isInACycleGrid, a3, a4);

    sub_2215C3280(&self->_isDirtyAndNotInACycleGrid, v6, v5);
  }

  else
  {
    sub_2215C3280(p_isInACycleGrid, a3, *&a4);
    if (sub_2215C3528(&self->_isDirtyGrid._tiles.__begin_, v6, v5))
    {

      sub_2215C2F88(&self->_isDirtyAndNotInACycleGrid, v6, v5);
    }
  }
}

- (unint64_t)dirtyPrecedentsCountOfCellRef:(const TSCECellRef *)a3
{
  dependencyTracker = self->_dependencyTracker;
  tableUID = a3->_tableUID;
  v7 = objc_msgSend_dgl_cellDependenciesForOwnerUID_(dependencyTracker, a2, &tableUID, v3, v4);
  v11 = v7;
  if (v7)
  {
    v12 = objc_msgSend_dirtyPrecedentsCountOfCellCoord_(v7, v8, a3, v9, v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)dirtyPrecedentsCountOfCellCoord:(const TSUCellCoord *)a3
{
  result = objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, a3, 0, v3);
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (BOOL)isCellRefInACycle:(const TSCEInternalCellReference *)a3
{
  v5 = a3;
  tableID = a3->tableID;
  if (tableID == self->_internalOwnerID)
  {

    return objc_msgSend_isCellInACycle_(self, a2, v5, v3, v4);
  }

  else
  {
    v8 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self->_dependencyTracker, a2, tableID, v3, v4);
    v12 = v8;
    if (v8)
    {
      LOBYTE(v5) = objc_msgSend_isCellInACycle_(v8, v9, v5, v10, v11);
    }

    return (v12 != 0) & v5;
  }
}

- (TSCECellCoordSet)cellsInACycle
{
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  result = sub_2215C25E8(&self->_isInACycleGrid);
  if ((result & 1) == 0)
  {
    sub_2215C2BFC(v8, &self->_isInACycleGrid);
    v7 = 0;
    while (1)
    {
      result = sub_2215C2C08(v8, &v7 + 1, &v7);
      if (!result)
      {
        break;
      }

      v6.row = v7;
      v6.column = WORD2(v7);
      TSCECellCoordSet::addCellCoord(retstr, &v6);
    }
  }

  return result;
}

- (TSCECellCoordSet)dirtyCells
{
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  result = sub_2215C25E8(&self->_isDirtyGrid);
  if ((result & 1) == 0)
  {
    sub_2215C2BFC(v8, &self->_isDirtyGrid);
    v7 = 0;
    while (1)
    {
      result = sub_2215C2C08(v8, &v7 + 1, &v7);
      if (!result)
      {
        break;
      }

      v6.row = v7;
      v6.column = WORD2(v7);
      TSCECellCoordSet::addCellCoord(retstr, &v6);
    }
  }

  return result;
}

- (BOOL)isCellRefDirty:(const TSCEInternalCellReference *)a3
{
  v5 = a3;
  tableID = a3->tableID;
  if (tableID == self->_internalOwnerID)
  {

    return objc_msgSend_isCellDirty_(self, a2, v5, v3, v4);
  }

  else
  {
    v8 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self->_dependencyTracker, a2, tableID, v3, v4);
    v12 = v8;
    if (v8)
    {
      LOBYTE(v5) = objc_msgSend_isCellDirty_(v8, v9, v5, v10, v11);
    }

    return (v12 != 0) & v5;
  }
}

- (void)setDirtySelfPlusPrecedentsCount:(TSCECellRecord *)a3 dirtyCount:(unint64_t)a4
{
  if (a3)
  {
    var2 = a3->var2;
    a3->var2 = a4;
    if (!a4 || !var2)
    {
      objc_msgSend_setDirtyInGrid_row_isDirty_(self, a2, a3->var5, a3->var4, a4 != 0);
      a4 = a3->var2;
    }

    if (a4 == 1)
    {
      internalOwnerID = self->_internalOwnerID;
      v8 = a3->var4 | (a3->var5 << 32);
      v9 = internalOwnerID;
      objc_msgSend_pushReferenceForImmediateEvaluation_cellRecord_pushOnFront_(self->_dependencyTracker, a2, &v8, a3, 0);
    }
  }
}

- (void)incrDirtySelfPlusPrecedentsCount:(TSCECellRecord *)a3
{
  if ((a3->var6 & 0x100) == 0)
  {
    objc_msgSend_setDirtySelfPlusPrecedentsCount_dirtyCount_(self, a2, a3, a3->var2 + 1, v3);
  }
}

- (void)decrDirtySelfPlusPrecedentsCount:(TSCECellRecord *)a3
{
  if ((a3->var6 & 0x100) == 0)
  {
    var2 = a3->var2;
    if (var2)
    {

      objc_msgSend_setDirtySelfPlusPrecedentsCount_dirtyCount_(self, a2, a3, var2 - 1, v3);
    }

    else
    {
      dependencyTracker = self->_dependencyTracker;
      internalOwnerID = self->_internalOwnerID;
      v7 = MEMORY[0x277CCACA8];
      v14 = NSStringFromTSUCellCoord();
      v11 = objc_msgSend_stringWithFormat_(v7, v8, @"Avoided underflow in dirtySelfPlusPrecedentsCount for cell: %@", v9, v10, v14);
      objc_msgSend_assertForInconsistentDependGraph_assertMessage_(dependencyTracker, v12, internalOwnerID, v11, v13);
    }
  }
}

- (void)setInACycle:(TSCECellRecord *)a3 inACycle:(BOOL)a4
{
  if (a3)
  {
    var6 = a3->var6;
    if (a4 != (var6 & 2) >> 1)
    {
      v5 = var6 & 0xFFFD;
      if (a4)
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }

      a3->var6 = v5 | v6;
      objc_msgSend_setInACycleInGrid_row_inACycle_(self, a2, a3->var5, a3->var4, a4);
    }
  }
}

- (void)setContainsFormula:(TSCECellRecord *)a3 containsFormula:(BOOL)a4
{
  if (a3)
  {
    if (a4)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    a3->var6 = a3->var6 & 0xFFFB | v4;
    objc_msgSend_setContainsAFormulaInGrid_row_containsFormula_(self, a2, a3->var5, a3->var4, a4);
  }
}

- (BOOL)hasPrecedentsAtCoord:(const TSUCellCoord *)a3
{
  CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, a3, 0, v3);

  return MEMORY[0x2821F9670](self, sel_cellRecordHasPrecedents_, CellRecord_willModifyOnTile, v6, v7);
}

- (void)addPrecedentsAtCoord:(const TSUCellCoord *)a3 toReferenceSet:(void *)a4
{
  CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, a3, 0, v4);
  if (CellRecord_willModifyOnTile)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_221120854;
    v7[3] = &unk_27845F588;
    v7[4] = a4;
    sub_2215C574C(CellRecord_willModifyOnTile, v7);
  }
}

- (void)addDependentsAtCoord:(const TSUCellCoord *)a3 toCellReferenceSet:(void *)a4
{
  CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, a3, 0, v4);
  if (CellRecord_willModifyOnTile)
  {

    sub_2215C5C0C(CellRecord_willModifyOnTile, a4);
  }
}

- (BOOL)cellHasThisCellPrecedent:(const TSUCellCoord *)a3 precedentRef:(const TSCEInternalCellReference *)a4
{
  CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, a3, 0, v4);
  if (CellRecord_willModifyOnTile)
  {

    LOBYTE(CellRecord_willModifyOnTile) = sub_2215C56F4(CellRecord_willModifyOnTile, a4);
  }

  return CellRecord_willModifyOnTile;
}

- (BOOL)cellHasDeepPrecedentInRange:(const TSUCellCoord *)a3 cellRange:(const TSCEInternalRangeReference *)a4
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  TSCERangeCoordinate::asCellRect(&a4->var0);
  v39.origin = v9;
  v39.size = v7;
  if (a4->var1 == self->_internalOwnerID && (v10 = *a3, (TSUCellRect::contains(&v39, v10) & 1) != 0))
  {
    v11 = 1;
  }

  else
  {
    CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(self, v7, a3, 0, v8);
    if (CellRecord_willModifyOnTile)
    {
      v31 = 0;
      v32 = &v31;
      v33 = 0x5812000000;
      v34 = sub_221120BE0;
      v35 = sub_221120BEC;
      v36 = &unk_22188E88F;
      memset(v37, 0, sizeof(v37));
      v38 = 1065353216;
      v21 = 0;
      v22 = &v21;
      v23 = 0x5812000000;
      v24 = sub_221120BF4;
      v25 = sub_221120C00;
      v26 = &unk_22188E88F;
      v30[0] = 0;
      v30[1] = 0;
      v27 = 0;
      v28 = 0;
      v29 = v30;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_221120C0C;
      v19[3] = &unk_27845F5B0;
      v20 = v39;
      v19[8] = a4;
      v19[9] = a3;
      v19[4] = self;
      v19[5] = &v40;
      v19[6] = &v21;
      v19[7] = &v31;
      sub_2215C574C(CellRecord_willModifyOnTile, v19);
      if ((v41[3] & 1) == 0)
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = sub_221120D00;
        v18[3] = &unk_27845F5D8;
        v18[4] = self;
        v18[5] = &v40;
        v18[6] = a4;
        TSCECellCoordSet::enumerateCoordsUsingBlock(v22 + 6, v18);
        if (!*(v41 + 24))
        {
          v15 = v32 + 8;
          do
          {
            v15 = *v15;
            if (!v15)
            {
              break;
            }

            HasDeepPrecedentInRange_cellRange = objc_msgSend_dgl_cellHasDeepPrecedentInRange_cellRange_(self->_dependencyTracker, v13, (v15 + 2), a4, v14);
            *(v41 + 24) = HasDeepPrecedentInRange_cellRange;
          }

          while ((HasDeepPrecedentInRange_cellRange & 1) == 0);
        }
      }

      _Block_object_dispose(&v21, 8);
      sub_22107C860(&v29, v30[0]);
      _Block_object_dispose(&v31, 8);
      sub_2210BDEC0(v37);
    }

    v11 = *(v41 + 24);
  }

  _Block_object_dispose(&v40, 8);
  return v11 & 1;
}

- (void)addCellsDependentOnBoth:(const TSCEInternalCellReference *)a3 precedent2:(const TSCEInternalCellReference *)a4 toCellCoordSet:(void *)a5
{
  internalOwnerID = self->_internalOwnerID;
  if (a3->tableID == internalOwnerID)
  {
    CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, a3, 0, a5);
    if (CellRecord_willModifyOnTile)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_221120EB0;
      v11[3] = &unk_27845F600;
      v11[4] = self;
      v11[5] = a4;
      v11[6] = a5;
      sub_2215C57F8(CellRecord_willModifyOnTile, v11);
    }
  }

  else if (a4->tableID == internalOwnerID)
  {

    objc_msgSend_addCellsDependentOnBoth_precedent2_toCellCoordSet_(self, a2, a4, a3, a5);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_221120F24;
    v10[3] = &unk_27845F388;
    v10[4] = a3;
    v10[5] = a4;
    v10[6] = a5;
    objc_msgSend_applyBlockToSortedRecords_doWillModify_block_(self, a2, 1, 0, v10);
  }
}

- (void)detectAndRepairDirtyCellsAreOnLeafQueue:(void *)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_221121010;
  v3[3] = &unk_27845F240;
  v3[4] = self;
  v3[5] = a3;
  objc_msgSend_applyBlockToRecords_doWillModify_block_(self, a2, 2, 1, v3);
}

- (void)markEverythingClean
{
  objc_msgSend_applyBlockToRecords_doWillModify_block_(self, a2, 0, 1, &unk_2834A1DA0);
  sub_2215C25A0(&self->_isDirtyGrid);

  sub_2215C25A0(&self->_isInACycleGrid);
}

- (void)dirtyAllCells
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x4012000000;
  v3[3] = sub_2211211E4;
  v3[4] = nullsub_12;
  v3[5] = &unk_22188E88F;
  internalOwnerID = self->_internalOwnerID;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_2211211FC;
  v2[3] = &unk_27845F648;
  v2[4] = self;
  v2[5] = v3;
  objc_msgSend_applyBlockToRecords_doWillModify_block_(self, a2, 0, 1, v2);
  _Block_object_dispose(v3, 8);
}

- (TSCEInternalCellRefSet)allCellRefs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x5812000000;
  v11 = sub_22111D510;
  v12 = sub_22111D51C;
  v13 = &unk_22188E88F;
  memset(v14, 0, sizeof(v14));
  v15 = 1065353216;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x4012000000;
  v6[3] = sub_2211211E4;
  v6[4] = nullsub_12;
  v6[5] = &unk_22188E88F;
  internalOwnerID = self->_internalOwnerID;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2211213AC;
  v5[3] = &unk_27845F670;
  v5[4] = v6;
  v5[5] = &v8;
  objc_msgSend_applyBlockToRecords_doWillModify_block_(self, a3, 0, 0, v5);
  sub_2212DFCE4(retstr, v9 + 6);
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v8, 8);
  return sub_221122744(v14);
}

- (TSCECellCoordSet)allCoordsContainingFormulas
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x5812000000;
  v9 = sub_221120BF4;
  v10 = sub_221120C00;
  v11 = &unk_22188E88F;
  v15[0] = 0;
  v15[1] = 0;
  v12 = 0;
  v13 = 0;
  v14 = v15;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2211214FC;
  v5[3] = &unk_27845F368;
  v5[4] = &v6;
  objc_msgSend_applyBlockToRecords_doWillModify_block_(self, a3, 1, 0, v5);
  TSCECellCoordSet::TSCECellCoordSet(retstr, (v7 + 6));
  _Block_object_dispose(&v6, 8);
  sub_22107C860(&v14, v15[0]);
  return result;
}

- (void)assertDirtyPrecedentsCountConsistency
{
  if ((objc_msgSend_dirtyPrecedentCountsAreConsistent_(self, a2, 1, v2, v3) & 1) == 0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSCECellDependencies assertDirtyPrecedentsCountConsistency]", v5, v6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellDependencies.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 1927, 0, "assertDirtyPrecedentsCountConsistency: inconsistency detected.");

    v18 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v18, v14, v15, v16, v17);
  }
}

- (BOOL)dirtyPrecedentCountsAreConsistent:(BOOL)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_221121708;
  v5[3] = &unk_27845F698;
  v5[4] = self;
  v5[5] = v7;
  v5[6] = &v8;
  v6 = a3;
  objc_msgSend_applyBlockToRecords_doWillModify_block_(self, a2, 0, 0, v5);
  v3 = *(v9 + 24);
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(&v8, 8);
  return v3;
}

- (void)markCellCleanAndPushNextLeaves:(const TSUCellCoord *)a3
{
  CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, a3, 1, v3);
  if (CellRecord_willModifyOnTile)
  {
    v8 = CellRecord_willModifyOnTile;
    if (*(CellRecord_willModifyOnTile + 16))
    {
      objc_msgSend_setDirtySelfPlusPrecedentsCount_dirtyCount_(self, v6, CellRecord_willModifyOnTile, 0, v7);
      internalOwnerID = self->_internalOwnerID;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_221121B54;
      v10[3] = &unk_27845F6C0;
      v11 = internalOwnerID;
      v10[4] = self;
      v10[5] = v8;
      sub_2215C57F8(v8, v10);
    }
  }
}

- (TSCECellCoordSet)cellCoordinatesNeedingExcelImport
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x5812000000;
  v10 = sub_221120BF4;
  v11 = sub_221120C00;
  v12 = &unk_22188E88F;
  v16[0] = 0;
  v16[1] = 0;
  v13 = 0;
  v14 = 0;
  v15 = v16;
  v4 = &v7;
  if (self->_hasExcelImportTranslationCells)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_221121EA8;
    v6[3] = &unk_27845F368;
    v6[4] = &v7;
    objc_msgSend_applyBlockToRecords_doWillModify_block_(self, a3, 0, 0, v6);
    v4 = v8;
  }

  TSCECellCoordSet::TSCECellCoordSet(retstr, (v4 + 6));
  _Block_object_dispose(&v7, 8);
  sub_22107C860(&v15, v16[0]);
  return result;
}

- (void)appendEdgeToArchive:(void *)a3 edge:(const TSCEInternalCellReference *)a4
{
  v5 = LOWORD(a4->coordinate.row) | (a4->coordinate.column << 16) | 0x1000000;
  tableID = a4->tableID;
  if (tableID == self->_internalOwnerID)
  {
    v8 = *(a3 + 4);
    v7 = a3 + 16;
    if (v8 == *(a3 + 5))
    {
      v9 = v8 + 1;
      sub_2210BBC64(a3 + 4, v8 + 1);
      *(*(a3 + 3) + 4 * v8) = v5;
    }

    else
    {
      *(*(a3 + 3) + 4 * v8) = v5;
      v9 = v8 + 1;
    }
  }

  else
  {
    v10 = *(a3 + 8);
    if (v10 == *(a3 + 9))
    {
      v12 = v10 + 1;
      sub_2210BBC64(a3 + 8, v10 + 1);
      *(*(a3 + 5) + 4 * v10) = v5;
      tableID = a4->tableID;
    }

    else
    {
      *(*(a3 + 5) + 4 * v10) = v5;
      v12 = v10 + 1;
    }

    v7 = a3 + 72;
    v13 = *(a3 + 18);
    *(a3 + 8) = v12;
    if (v13 == *(a3 + 19))
    {
      v9 = v13 + 1;
      sub_2210BBC64(a3 + 18, v13 + 1);
      *(*(a3 + 10) + 4 * v13) = tableID;
    }

    else
    {
      *(*(a3 + 10) + 4 * v13) = tableID;
      v9 = v13 + 1;
    }
  }

  *v7 = v9;
}

- (void)appendExpandedEdgeToArchive:(void *)a3 edge:(const TSCEInternalCellReference *)a4
{
  row = a4->coordinate.row;
  column = a4->coordinate.column;
  if (a4->tableID == self->_internalOwnerID)
  {
    v7 = *(a3 + 4);
    if (v7 == *(a3 + 5))
    {
      v8 = v7 + 1;
      sub_2210BBC64(a3 + 4, v7 + 1);
      *(*(a3 + 3) + 4 * v7) = row;
    }

    else
    {
      *(*(a3 + 3) + 4 * v7) = row;
      v8 = v7 + 1;
    }

    v12 = *(a3 + 8);
    *(a3 + 4) = v8;
    if (v12 == *(a3 + 9))
    {
      v13 = v12 + 1;
      sub_2210BBC64(a3 + 8, v12 + 1);
      *(*(a3 + 5) + 4 * v12) = column;
    }

    else
    {
      *(*(a3 + 5) + 4 * v12) = column;
      v13 = v12 + 1;
    }

    *(a3 + 8) = v13;
  }

  else
  {
    v10 = *(a3 + 12);
    if (v10 == *(a3 + 13))
    {
      v11 = v10 + 1;
      sub_2210BBC64(a3 + 12, v10 + 1);
      *(*(a3 + 7) + 4 * v10) = row;
    }

    else
    {
      *(*(a3 + 7) + 4 * v10) = row;
      v11 = v10 + 1;
    }

    v14 = *(a3 + 16);
    *(a3 + 12) = v11;
    if (v14 == *(a3 + 17))
    {
      v15 = v14 + 1;
      sub_2210BBC64(a3 + 16, v14 + 1);
      *(*(a3 + 9) + 4 * v14) = column;
    }

    else
    {
      *(*(a3 + 9) + 4 * v14) = column;
      v15 = v14 + 1;
    }

    v16 = *(a3 + 20);
    *(a3 + 16) = v15;
    tableID = a4->tableID;
    if (v16 == *(a3 + 21))
    {
      v18 = v16 + 1;
      sub_2210BBC64(a3 + 20, v16 + 1);
      *(*(a3 + 11) + 4 * v16) = tableID;
    }

    else
    {
      *(*(a3 + 11) + 4 * v16) = tableID;
      v18 = v16 + 1;
    }

    *(a3 + 20) = v18;
  }
}

- (void)encodeToArchive:(void *)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2211221F8;
  v3[3] = &unk_27845F240;
  v3[4] = self;
  v3[5] = a3;
  objc_msgSend_applyBlockToSortedRecords_doWillModify_block_(self, a2, 1, 0, v3);
}

- (BOOL)cellRecordHasPrecedents:(TSCECellRecord *)a3
{
  if (a3)
  {
    return sub_2215C5AB8(a3);
  }

  else
  {
    return 0;
  }
}

- (BOOL)removeSomePrecedents:(unint64_t)a3 markDependentsDirty:(BOOL)a4
{
  v4 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x4812000000;
  v25 = sub_22111D014;
  v26 = sub_22111D038;
  v27 = &unk_22188E88F;
  v29 = 0;
  v30 = 0;
  __p = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_221122594;
  v17[3] = &unk_27845F6E8;
  v17[4] = &v22;
  v17[5] = &v18;
  v17[6] = a3;
  objc_msgSend_applyBlockToRecords_doWillModify_block_(self, a2, 1, 0, v17);
  v9 = v23[6];
  v10 = v23[7];
  while (v9 != v10)
  {
    if (v4)
    {
      dependencyTracker = self->_dependencyTracker;
      internalOwnerID = self->_internalOwnerID;
      v15 = *v9 & 0xFFFFFFFFFFFFLL;
      v16 = internalOwnerID;
      objc_msgSend_dgl_markCellDirty_(dependencyTracker, v6, &v15, v7, v8);
    }

    objc_msgSend_dgl_removeFormulaForOwnerID_cellCoord_(self->_dependencyTracker, v6, self->_internalOwnerID, *v9++, v8);
  }

  v13 = v19[3];
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  return v13 != 0;
}

- (TSKUIDStruct)ownerUID
{
  upper = self->_ownerUID._upper;
  lower = self->_ownerUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 168) = 0u;
  *(self + 184) = 0u;
  *(self + 200) = 0u;
  return self;
}

@end