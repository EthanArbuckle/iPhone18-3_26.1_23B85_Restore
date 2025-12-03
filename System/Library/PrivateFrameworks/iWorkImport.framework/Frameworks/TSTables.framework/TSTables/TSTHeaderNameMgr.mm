@interface TSTHeaderNameMgr
- (BOOL)p_updateWithWordFragments:(const void *)fragments atCellCoord:(const TSKUIDStructCoord *)coord tableUID:(const TSKUIDStruct *)d toDirtyCellRefs:(void *)refs;
- (BOOL)referenceNameIsUnique:(id)unique forReference:(const void *)reference contextTable:(const TSKUIDStruct *)table;
- (BOOL)updateTrackedHeaders:(const TSKUIDStruct *)headers checkForEmptyHeaders:(BOOL)emptyHeaders;
- (BOOL)updateWithIndexingChunks:(id)chunks;
- (TSCECalculationEngine)calcEngine;
- (TSCECellRefSet)allHeaderCellRefsLimitedToTable:(SEL)table;
- (TSCECellRefSet)headerCellsMatching:(SEL)matching limitToTable:(id)table includePrefixes:(const TSKUIDStruct *)prefixes;
- (TSCECellRefSet)nameFragmentPrecedentsForReferenceString:(SEL)string;
- (TSCERangeRef)baseHeaderColumnsForCell:(SEL)cell;
- (TSCERangeRef)baseHeaderRowsForCell:(SEL)cell;
- (TSCERangeRef)spanningRangeForHeaderCell:(SEL)cell;
- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options;
- (TSKUIDStruct)NRM_formulaOwnerUID;
- (TSKUIDStruct)formulaOwnerUID;
- (TSKUIDStruct)ownerUID;
- (TSTHeaderNameMgr)initWithContext:(id)context;
- (TSTHeaderNameMgr)initWithContext:(id)context calcEngine:(id)engine;
- (TSTHeaderPerTable)perTableEntryForTable:(const TSKUIDStruct *)table createIfMissing:(BOOL)missing;
- (TSUCellCoord)getNextPrecedentCoord:(BOOL)coord;
- (TSUCellCoord)reservePrecedent:(const TSUCellCoord *)precedent forNameFragment:(id)fragment;
- (TSUCellCoord)reservedPrecedentForNameFragment:(id)fragment;
- (id).cxx_construct;
- (id)anyRefForRangeForHeaderCell:(const TSCECellRef *)cell usePreserveFlags:(BOOL)flags;
- (id)findTileForString:(id)string findClosest:(BOOL)closest;
- (id)findTileForString:(id)string findClosest:(BOOL)closest foundAtOffset:(unint64_t *)offset;
- (id)stringInHeaderCell:(const TSCECellRef *)cell;
- (id)subsetForReferenceName:(id)name limitToTable:(const TSKUIDStruct *)table includePrefixes:(BOOL)prefixes;
- (id)tileForEntry:(void *)entry;
- (int)registerWithCalcEngine:(id)engine;
- (vector<NSString)wordFragmentsFromString:(TSTHeaderNameMgr *)self savePreserveFlags:(SEL)flags;
- (void)addChangedTile:(id)tile;
- (void)beginTrackingNamesInTable:(const TSKUIDStruct *)table;
- (void)createFragmentEntryForString:(id)string toDirtyCellRefs:(void *)refs createIfMissingUsingPrecedentCoord:(const TSUCellCoord *)coord;
- (void)dealloc;
- (void)endTrackingNamesInTable:(const TSKUIDStruct *)table;
- (void)fragmentEntryForNameFragmentPrecedent:(const TSUCellCoord *)precedent;
- (void)fragmentEntryForString:(id)string;
- (void)handleFullTile:(id)tile toDirtyCellRefs:(void *)refs;
- (void)integrateReservedPrecedents;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_processWorkForTable:(const TSKUIDStruct *)table;
- (void)p_updateText:(id)text atCellCoord:(const TSKUIDStructCoord *)coord tableUID:(const TSKUIDStruct *)d toDirtyCellRefs:(void *)refs;
- (void)p_willApplyCell:(id)cell baseCellCoord:(TSUModelCellCoord)coord tableUID:(const TSKUIDStruct *)d toDirtyCellRefs:(void *)refs;
- (void)saveToArchiver:(id)archiver;
- (void)setCalcEngine:(id)engine;
- (void)setup;
- (void)unpackEntryAfterUnarchive:(void *)unarchive;
- (void)updateTableUIDFrom:(const TSKUIDStruct *)from toTableUID:(const TSKUIDStruct *)d;
- (void)updateText:(id)text atCellCoord:(const TSKUIDStructCoord *)coord tableUID:(const TSKUIDStruct *)d;
- (void)updateTrackedHeadersForDocumentLocaleChange:(const TSKUIDStruct *)change;
- (void)usedPrecedentCoord:(const TSUCellCoord *)coord;
- (void)waitForQueueToDrain;
- (void)willApplyBaseCellMap:(id)map tableUID:(const TSKUIDStruct *)d;
- (void)willApplyCell:(id)cell baseCellCoord:(TSUModelCellCoord)coord tableUID:(const TSKUIDStruct *)d;
- (void)willApplyConcurrentCellMap:(id)map tableUID:(const TSKUIDStruct *)d;
- (void)willClose;
- (void)willRemoveRows:(const void *)rows tableUID:(const TSKUIDStruct *)d;
- (void)writeResultsForCalcEngine:(id)engine;
@end

@implementation TSTHeaderNameMgr

- (TSTHeaderNameMgr)initWithContext:(id)context calcEngine:(id)engine
{
  contextCopy = context;
  engineCopy = engine;
  v11 = objc_msgSend_initWithContext_(self, v8, contextCopy, v9, v10);
  v15 = v11;
  if (v11)
  {
    objc_msgSend_setCalcEngine_(v11, v12, engineCopy, v13, v14);
  }

  return v15;
}

- (TSTHeaderNameMgr)initWithContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = TSTHeaderNameMgr;
  v5 = [(TSTHeaderNameMgr *)&v12 initWithContext:contextCopy];
  v10 = v5;
  if (v5)
  {
    objc_msgSend_setup(v5, v6, v7, v8, v9);
  }

  return v10;
}

- (void)setup
{
  self->_ownerUID = xmmword_2217E1BD0;
  self->_nextPrecedentCoordLock._os_unfair_lock_opaque = 0;
  self->_reservedFragmentPrecedentsLock._os_unfair_lock_opaque = 0;
  __dmb(0xBu);
  pthread_rwlock_init(&self->_headerNameMgrReadWriteLock, 0);
  self->_allHeaderPerTablesPrecedent = 0;
  self->_needsTileSplittingPrecedent = 1;
  objc_msgSend_usedPrecedentCoord_(self, v3, &self->_needsTileSplittingPrecedent, v4, v5);
  objc_msgSend_usedPrecedentCoord_(self, v6, &self->_allHeaderPerTablesPrecedent, v7, v8);
  v9 = [TSCENameTrie alloc];
  v14 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v10, v11, v12, v13);
  v18 = objc_msgSend_initWithLocale_(v9, v15, v14, v16, v17);
  namePrefixIndex = self->_namePrefixIndex;
  self->_namePrefixIndex = v18;

  v20 = objc_opt_new();
  tilesToConsiderSplitting = self->_tilesToConsiderSplitting;
  self->_tilesToConsiderSplitting = v20;

  v26 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v22, v23, v24, v25);
  whitespaceToBreakAt = self->_whitespaceToBreakAt;
  self->_whitespaceToBreakAt = v26;
}

- (void)dealloc
{
  objc_msgSend_waitForQueueToDrain(self, a2, v2, v3, v4);
  begin = self->_nameFragmentTiles.__begin_;
  for (i = self->_nameFragmentTiles.var0; i != begin; --i)
  {
    v8 = *(i - 1);
  }

  self->_nameFragmentTiles.var0 = begin;
  for (j = self->_perTableInfo.__table_.__first_node_.__next_; j; j = *j)
  {
    v10 = j[4];
    if (v10)
    {

      MEMORY[0x223DA1450](v10, 0x1080C405E821AB0);
    }
  }

  sub_2210BE918(&self->_perTableInfo.__table_.__bucket_list_.__ptr_);
  pthread_rwlock_destroy(&self->_headerNameMgrReadWriteLock);
  v11.receiver = self;
  v11.super_class = TSTHeaderNameMgr;
  [(TSTHeaderNameMgr *)&v11 dealloc];
}

- (void)waitForQueueToDrain
{
  pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);

  pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
}

- (void)addChangedTile:(id)tile
{
  tileCopy = tile;
  if (tileCopy)
  {
    isRecalculationRunning = objc_msgSend_isRecalculationRunning(self->_calcEngine, v4, v5, v6, v7);
    objc_msgSend_willModifyWithOptions_(tileCopy, v9, isRecalculationRunning, v10, v11);
  }
}

- (void)willClose
{
  if (self->_calcEngine)
  {
    self->_isClosing = 1;
    objc_msgSend_waitForQueueToDrain(self, a2, v2, v3, v4);
    objc_storeWeak(&self->_weakCalcEngine, self->_calcEngine);
    calcEngine = self->_calcEngine;
    self->_calcEngine = 0;
  }
}

- (TSCECalculationEngine)calcEngine
{
  WeakRetained = self->_calcEngine;
  if (!WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakCalcEngine);
  }

  return WeakRetained;
}

- (void)setCalcEngine:(id)engine
{
  engineCopy = engine;
  if (!self->_calcEngine)
  {
    objc_storeStrong(&self->_calcEngine, engine);
    namePrefixIndex = self->_namePrefixIndex;
    v11 = objc_msgSend_documentLocale(self->_calcEngine, v7, v8, v9, v10);
    objc_msgSend_setLocale_(namePrefixIndex, v12, v11, v13, v14);

    objc_msgSend_registerWithCalcEngine_(self, v15, self->_calcEngine, v16, v17);
    v22 = objc_msgSend_emptyReferenceSetWrapper(self->_calcEngine, v18, v19, v20, v21);
    *&v39.var0 = self->_allHeaderPerTablesPrecedent;
    v39.var6 = self->_ownerUID;
    objc_msgSend_insertCellRef_(v22, v23, &v39, v24, v25);
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v39, 0, 1);
    v39.var2 = 1;
    calcEngine = self->_calcEngine;
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v38, &v39);
    objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(calcEngine, v27, &self->_needsTileSplittingPrecedent, &self->_ownerUID, v22, &v38);

    if (objc_msgSend_count(self->_tilesToConsiderSplitting, v28, v29, v30, v31))
    {
      v35 = self->_calcEngine;
      needsTileSplittingPrecedent = self->_needsTileSplittingPrecedent;
      ownerUID = self->_ownerUID;
      objc_msgSend_markCellRefAsDirty_(v35, v32, &needsTileSplittingPrecedent, v33, v34);
    }
  }
}

- (TSKUIDStruct)ownerUID
{
  p_ownerUID = &self->_ownerUID;
  lower = self->_ownerUID._lower;
  upper = p_ownerUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)formulaOwnerUID
{
  p_ownerUID = &self->_ownerUID;
  lower = self->_ownerUID._lower;
  upper = p_ownerUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)NRM_formulaOwnerUID
{
  p_nrm_ownerUID = &self->_nrm_ownerUID;
  lower = self->_nrm_ownerUID._lower;
  upper = p_nrm_ownerUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSUCellCoord)getNextPrecedentCoord:(BOOL)coord
{
  if (coord)
  {
    objc_msgSend_willModify(self, a2, coord, v3, v4);
  }

  os_unfair_lock_lock(&self->_nextPrecedentCoordLock);
  nextPrecedentCoord = self->_nextPrecedentCoord;
  TSUCellCoord::addOffset(&self->_nextPrecedentCoord);
  if (self->_nextPrecedentCoord.column >= 0x3DEu)
  {
    self->_nextPrecedentCoord = (self->_nextPrecedentCoord.row + 1);
  }

  os_unfair_lock_unlock(&self->_nextPrecedentCoordLock);
  return nextPrecedentCoord;
}

- (void)usedPrecedentCoord:(const TSUCellCoord *)coord
{
  v5 = *coord;
  TSUCellCoord::addOffset(&v5);
  row = self->_nextPrecedentCoord.row;
  if (row < v5.row || row == v5.row && self->_nextPrecedentCoord.column < v5.column)
  {
    self->_nextPrecedentCoord = v5;
  }
}

- (TSUCellCoord)reservedPrecedentForNameFragment:(id)fragment
{
  fragmentCopy = fragment;
  os_unfair_lock_lock(&self->_reservedFragmentPrecedentsLock);
  v7 = sub_221412054(&self->_reservedFragmentPrecedents.__table_.__bucket_list_.__ptr_, &fragmentCopy, v4, v5, v6);
  if (v7)
  {
    v8 = v7[3];
  }

  else
  {
    v8 = 0x7FFF7FFFFFFFLL;
  }

  os_unfair_lock_unlock(&self->_reservedFragmentPrecedentsLock);

  return v8;
}

- (TSUCellCoord)reservePrecedent:(const TSUCellCoord *)precedent forNameFragment:(id)fragment
{
  fragmentCopy = fragment;
  v6 = *precedent;
  os_unfair_lock_lock(&self->_reservedFragmentPrecedentsLock);
  v10 = sub_221412054(&self->_reservedFragmentPrecedents.__table_.__bucket_list_.__ptr_, &fragmentCopy, v7, v8, v9);
  if (v10)
  {
    v6 = v10[3];
  }

  else
  {
    NextPrecedentCoord = *precedent;
    if (NextPrecedentCoord == 0x7FFFFFFF || (NextPrecedentCoord & 0xFFFF00000000) == 0x7FFF00000000)
    {
      NextPrecedentCoord = objc_msgSend_getNextPrecedentCoord_(self, v11, 0, v12, v13);
      v6 = NextPrecedentCoord;
    }

    v19 = &fragmentCopy;
    sub_221412164(&self->_reservedFragmentPrecedents.__table_.__bucket_list_.__ptr_, &fragmentCopy, &unk_2217E1BE8, &v19, &v18)[3] = NextPrecedentCoord;
  }

  os_unfair_lock_unlock(&self->_reservedFragmentPrecedentsLock);

  return v6;
}

- (void)integrateReservedPrecedents
{
  v18 = 0u;
  v19 = 0u;
  max_load_factor = 1.0;
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
  os_unfair_lock_lock(&self->_reservedFragmentPrecedentsLock);
  if (&v18 != &self->_reservedFragmentPrecedents)
  {
    max_load_factor = self->_reservedFragmentPrecedents.__table_.__max_load_factor_;
    sub_2214123FC(&v18, self->_reservedFragmentPrecedents.__table_.__first_node_.__next_, 0);
  }

  sub_221412A74(&self->_reservedFragmentPrecedents);
  os_unfair_lock_unlock(&self->_reservedFragmentPrecedentsLock);
  for (i = v19; i; i = *i)
  {
    v6 = i[2];
    v7 = objc_msgSend_findTileForString_findClosest_(self, v3, v6, 0, v4, i[3], v16);
    objc_msgSend_addChangedTile_(self, v8, v7, v9, v10);
    objc_msgSend_createFragmentEntryForString_toDirtyCellRefs_createIfMissingUsingPrecedentCoord_(self, v11, v6, &v16, &v15);
  }

  pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
  objc_msgSend_markCellRefSetAsDirty_(self->_calcEngine, v12, &v16, v13, v14);
  sub_22107C800(&v16, v17[0]);
  sub_2210C82EC(&v18);
}

- (vector<NSString)wordFragmentsFromString:(TSTHeaderNameMgr *)self savePreserveFlags:(SEL)flags
{
  v56 = a5;
  v66 = *MEMORY[0x277D85DE8];
  v6 = a4;
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->__begin_ = 0;
  if (objc_msgSend_length(v6, v7, v8, v9, v10))
  {
    v54 = objc_msgSend_foldName_(self->_namePrefixIndex, v11, v6, v12, v13);

    v55 = objc_opt_new();
    objc_msgSend_setForceSplitting_(v55, v14, 1, v15, v16);
    objc_msgSend_splitRefPath_(v55, v17, v54, v18, v19);
    v27 = objc_msgSend_numComponents(v55, v20, v21, v22, v23);
    if (v27)
    {
      v28 = 0;
      do
      {
        v59 = objc_msgSend_componentAtIndex_(v55, v24, v28, v25, v26, v54);
        v36 = objc_msgSend_numWords(v59, v29, v30, v31, v32);
        if (v36)
        {
          v37 = 0;
          v58 = v28;
          do
          {
            v38 = objc_msgSend_wordAtIndex_(v59, v33, v37, v34, v35);
            v42 = objc_msgSend_trimmedStringWithPreserveFlag_(v38, v39, v56, v40, v41);
            v46 = objc_msgSend_componentsSeparatedByCharactersInSet_(v42, v43, self->_whitespaceToBreakAt, v44, v45);
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v47 = v46;
            v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v60, v65, 16);
            if (v49)
            {
              v50 = *v61;
              do
              {
                v51 = 0;
                do
                {
                  if (*v61 != v50)
                  {
                    objc_enumerationMutation(v47);
                  }

                  v64 = *(*(&v60 + 1) + 8 * v51);
                  sub_2210C4258(retstr, &v64);
                  ++v51;
                }

                while (v49 != v51);
                v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v52, &v60, v65, 16);
              }

              while (v49);
            }

            v28 = v58;
            ++v37;
          }

          while (v37 != v36);
        }

        ++v28;
      }

      while (v28 != v27);
    }

    v6 = v54;
  }

  return result;
}

- (TSTHeaderPerTable)perTableEntryForTable:(const TSKUIDStruct *)table createIfMissing:(BOOL)missing
{
  if (*table == 0)
  {
    return 0;
  }

  missingCopy = missing;
  v6 = sub_2210875C4(&self->_perTableInfo.__table_.__bucket_list_.__ptr_, table);
  if (!v6)
  {
    if (missingCopy)
    {
      objc_msgSend_willModifyForUpgradeWithOptions_(self, v7, 2, v8, v9);
      NextPrecedentCoord = objc_msgSend_getNextPrecedentCoord_(self, v11, 1, v12, v13);
      operator new();
    }

    return 0;
  }

  return v6[4];
}

- (BOOL)updateTrackedHeaders:(const TSKUIDStruct *)headers checkForEmptyHeaders:(BOOL)emptyHeaders
{
  if (*headers == 0)
  {
    LOBYTE(v25) = 0;
  }

  else
  {
    if (emptyHeaders)
    {
      v148 = 0;
      v149 = &v148;
      v150 = 0x2020000000;
      v151 = 0;
      v7 = objc_msgSend_calcEngine(self, a2, headers, emptyHeaders, v4);
      v10 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v8, headers, v7, v9);

      if (v10)
      {
        v15 = objc_msgSend_numberOfHeaderRows(v10, v11, v12, v13, v14);
        if (v15 + objc_msgSend_numberOfHeaderColumns(v10, v16, v17, v18, v19))
        {
          v26 = objc_msgSend_tableInfo(v10, v20, v21, v22, v23);
          v31 = v26;
          if (v26 && (objc_msgSend_isCategorized(v26, v27, v28, v29, v30) & 1) == 0)
          {
            if (objc_msgSend_numberOfHeaderColumns(v10, v32, v33, v34, v35))
            {
              v40 = objc_msgSend_headerColumnRange(v31, v36, v37, v38, v39);
              v42 = objc_msgSend_region_addingRange_(TSTCellRegion, v41, 0, v40, v41);
            }

            else
            {
              v42 = 0;
            }

            if (objc_msgSend_numberOfHeaderRows(v10, v36, v37, v38, v39))
            {
              v47 = objc_msgSend_headerRowRange(v31, v43, v44, v45, v46);
              v49 = objc_msgSend_region_addingRange_(TSTCellRegion, v48, v42, v47, v48);

              v42 = v49;
            }

            if (v42 && (objc_msgSend_isEmpty(v42, v43, v44, v45, v46) & 1) == 0)
            {
              v147[0] = MEMORY[0x277D85DD0];
              v147[1] = 3221225472;
              v147[2] = sub_22140ABD4;
              v147[3] = &unk_27845DD70;
              v147[4] = &v148;
              objc_msgSend_iterateCellsInRegion_flags_searchFlags_usingBlock_(v31, v50, v42, 10, 0x400000, v147);
            }

            v24 = *(v149 + 24) ^ 1;
          }

          else
          {
            v24 = 0;
          }
        }

        else
        {
          v24 = 1;
        }
      }

      else
      {
        v24 = 0;
      }

      _Block_object_dispose(&v148, 8);
    }

    else
    {
      v24 = 0;
    }

    v146._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
    v146._coordsForOwnerUid.__tree_.__size_ = 0;
    v146._coordsForOwnerUid.__tree_.__begin_node_ = &v146._coordsForOwnerUid.__tree_.__end_node_;
    pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
    IfMissing = objc_msgSend_perTableEntryForTable_createIfMissing_(self, v51, headers, 0, v52);
    objc_msgSend_willModify(self, v54, v55, v56, v57);
    if (IfMissing && (*(IfMissing + 56) & 1) == 0)
    {
      if (v24)
      {
        v62 = objc_msgSend_copy(*(IfMissing + 32), v58, v59, v60, v61);
        v67 = objc_msgSend_count(v62, v63, v64, v65, v66);
        v72 = objc_msgSend_copy(*(IfMissing + 24), v68, v69, v70, v71);
        v77 = v67 + objc_msgSend_count(v72, v73, v74, v75, v76) == 0;
      }

      else
      {
        v77 = 0;
      }

      v78 = objc_msgSend_calcEngine(self, v58, v59, v60, v61);
      v81 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v79, headers, v78, v80);

      v148 = 0;
      v149 = &v148;
      v150 = 0x2020000000;
      v151 = 0;
      v86 = objc_msgSend_numberOfHeaderRows(v81, v82, v83, v84, v85);
      if (v81)
      {
        objc_msgSend_rowUIDsForRowRange_(v81, v87, 0, v86, v90);
      }

      else
      {
        v143 = 0;
        v144 = 0;
        v145 = 0;
      }

      v91 = objc_msgSend_numberOfHeaderColumns(v81, v87, v88, v89, v90);
      if (v81)
      {
        objc_msgSend_columnUIDsForColumnRange_(v81, v92, 0, v91, v95);
      }

      else
      {
        __p = 0;
        v141 = 0;
        v142 = 0;
      }

      v96 = v143;
      v97 = v144;
      if (v143 != v144)
      {
        do
        {
          if ((objc_msgSend_containsUuid_(*(IfMissing + 24), v92, *v96, v96[1], v95) & 1) == 0)
          {
            sub_221407314(IfMissing, v96, 1, v94, v95);
            if (!v77)
            {
              objc_msgSend_addUUID_(*(IfMissing + 40), v92, *v96, v96[1], v95);
              *(v149 + 24) = 1;
            }
          }

          v96 += 2;
        }

        while (v96 != v97);
      }

      v98 = __p;
      v99 = v141;
      if (__p != v141)
      {
        do
        {
          if ((objc_msgSend_containsUuid_(*(IfMissing + 32), v92, *v98, v98[1], v95) & 1) == 0)
          {
            objc_msgSend_addUUID_(*(IfMissing + 32), v92, *v98, v98[1], v95);
            if (!v77)
            {
              objc_msgSend_addUUID_(*(IfMissing + 48), v92, *v98, v98[1], v95);
              *(v149 + 24) = 1;
            }
          }

          v98 += 2;
        }

        while (v98 != v99);
      }

      v100 = objc_msgSend_copy(*(IfMissing + 24), v92, v93, v94, v95);
      if (objc_msgSend_count(v100, v101, v102, v103, v104) > ((v144 - v143) >> 4))
      {
        v109 = objc_msgSend_mutableCopy(v100, v105, v106, v107, v108);
        objc_msgSend_removeUuidsFromVector_(v109, v110, &v143, v111, v112);
        v139[0] = MEMORY[0x277D85DD0];
        v139[1] = 3221225472;
        v139[2] = sub_22140ABEC;
        v139[3] = &unk_278464A90;
        v139[4] = &v148;
        v139[5] = IfMissing;
        objc_msgSend_foreachUuid_(v109, v113, v139, v114, v115);
      }

      v116 = objc_msgSend_copy(*(IfMissing + 32), v105, v106, v107, v108);
      v121 = objc_msgSend_count(v116, v117, v118, v119, v120);
      if (v121 > (v141 - __p) >> 4)
      {
        v126 = objc_msgSend_mutableCopy(v116, v122, v123, v124, v125);
        objc_msgSend_removeUuidsFromVector_(v126, v127, &__p, v128, v129);
        v138[0] = MEMORY[0x277D85DD0];
        v138[1] = 3221225472;
        v138[2] = sub_22140AC54;
        v138[3] = &unk_278464A90;
        v138[4] = &v148;
        v138[5] = IfMissing;
        objc_msgSend_foreachUuid_(v126, v130, v138, v131, v132);
      }

      v25 = *(v149 + 24);
      if (v25 == 1)
      {
        v137.coordinate = *(IfMissing + 16);
        v137._tableUID = self->_ownerUID;
        TSCECellRefSet::addCellRef(&v146, &v137);
      }

      if (__p)
      {
        v141 = __p;
        operator delete(__p);
      }

      if (v143)
      {
        v144 = v143;
        operator delete(v143);
      }

      _Block_object_dispose(&v148, 8);
    }

    else
    {
      LOBYTE(v25) = 0;
    }

    pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
    objc_msgSend_markCellRefSetAsDirty_(self->_calcEngine, v133, &v146, v134, v135);
    sub_22107C800(&v146, v146._coordsForOwnerUid.__tree_.__end_node_.__left_);
  }

  return v25;
}

- (void)updateTrackedHeadersForDocumentLocaleChange:(const TSKUIDStruct *)change
{
  if (*change != 0)
  {
    v46._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
    v46._coordsForOwnerUid.__tree_.__size_ = 0;
    v46._coordsForOwnerUid.__tree_.__begin_node_ = &v46._coordsForOwnerUid.__tree_.__end_node_;
    pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
    IfMissing = objc_msgSend_perTableEntryForTable_createIfMissing_(self, v5, change, 0, v6);
    v12 = IfMissing;
    if (IfMissing && (*(IfMissing + 56) & 1) == 0)
    {
      objc_msgSend_willModify(self, v8, v9, v10, v11);
      v17 = objc_msgSend_calcEngine(self, v13, v14, v15, v16);
      v20 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v18, change, v17, v19);

      v25 = objc_msgSend_numberOfHeaderRows(v20, v21, v22, v23, v24);
      if (v20)
      {
        objc_msgSend_rowUIDsForRowRange_(v20, v26, 0, v25, v29);
      }

      else
      {
        __p = 0;
        v44 = 0;
        v45 = 0;
      }

      v30 = objc_msgSend_numberOfHeaderColumns(v20, v26, v27, v28, v29);
      if (v20)
      {
        objc_msgSend_columnUIDsForColumnRange_(v20, v31, 0, v30, v32);
        v33 = v40;
        v34 = v41;
      }

      else
      {
        v33 = 0;
        v34 = 0;
        v40 = 0;
        v41 = 0;
        v42 = 0;
      }

      v35 = __p;
      if (((v44 - __p) >> 4) + ((v34 - v33) >> 4))
      {
        if (__p != v44)
        {
          do
          {
            objc_msgSend_addUUID_(*(v12 + 40), v31, *v35, v35[1], v32);
            v35 += 2;
          }

          while (v35 != v44);
          v33 = v40;
          v34 = v41;
        }

        while (v33 != v34)
        {
          objc_msgSend_addUUID_(*(v12 + 48), v31, *v33, v33[1], v32);
          v33 += 2;
        }

        v39.coordinate = *(v12 + 16);
        v39._tableUID = self->_ownerUID;
        TSCECellRefSet::addCellRef(&v46, &v39);
        v33 = v40;
      }

      if (v33)
      {
        v41 = v33;
        operator delete(v33);
      }

      if (__p)
      {
        v44 = __p;
        operator delete(__p);
      }
    }

    pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
    objc_msgSend_markCellRefSetAsDirty_(self->_calcEngine, v36, &v46, v37, v38);
    sub_22107C800(&v46, v46._coordsForOwnerUid.__tree_.__end_node_.__left_);
  }
}

- (void)beginTrackingNamesInTable:(const TSKUIDStruct *)table
{
  if (*table != 0 && (objc_msgSend_hasDisallowedHeaderIndexingForTableUID_(self->_calcEngine, a2, table, v3, v4) & 1) == 0)
  {
    objc_msgSend_willModify(self, v7, v8, v9, v10);
    pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
    IfMissing = objc_msgSend_perTableEntryForTable_createIfMissing_(self, v11, table, 1, v12);
    if (IfMissing && *(IfMissing + 56) == 1)
    {
      *(IfMissing + 56) = 0;
    }

    pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
    v35 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v14, table, self->_calcEngine, v15);
    v20 = objc_msgSend_cellWillChangeDistributor(v35, v16, v17, v18, v19);
    objc_msgSend_addReceiverIfMissing_(v20, v21, self, v22, v23);

    if (objc_msgSend_updateTrackedHeaders_checkForEmptyHeaders_(self, v24, table, 1, v25))
    {
      v30 = objc_msgSend_hauntedOwner(v35, v26, v27, v28, v29);
      objc_msgSend_dirtySheetTableNameVolatileCells(v30, v31, v32, v33, v34);
    }
  }
}

- (void)endTrackingNamesInTable:(const TSKUIDStruct *)table
{
  if ((objc_msgSend_hasDisallowedHeaderIndexingForTableUID_(self->_calcEngine, a2, table, v3, v4) & 1) == 0)
  {
    v9 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v7, table, self->_calcEngine, v8);
    v14 = objc_msgSend_cellWillChangeDistributor(v9, v10, v11, v12, v13);
    objc_msgSend_removeReceiver_(v14, v15, self, v16, v17);

    objc_msgSend_willModify(self, v18, v19, v20, v21);
    v32._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
    v32._coordsForOwnerUid.__tree_.__size_ = 0;
    v32._coordsForOwnerUid.__tree_.__begin_node_ = &v32._coordsForOwnerUid.__tree_.__end_node_;
    pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
    IfMissing = objc_msgSend_perTableEntryForTable_createIfMissing_(self, v22, table, 0, v23);
    if (IfMissing)
    {
      *(IfMissing + 56) = 1;
      v31.coordinate = *(IfMissing + 16);
      v31._tableUID = self->_ownerUID;
      TSCECellRefSet::addCellRef(&v32, &v31);
    }

    pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
    objc_msgSend_markCellRefSetAsDirty_(self->_calcEngine, v25, &v32, v26, v27);
    objc_msgSend_endTrackingNamesInTableForLegacyNRM_(self->_calcEngine, v28, table, v29, v30);
    sub_22107C800(&v32, v32._coordsForOwnerUid.__tree_.__end_node_.__left_);
  }
}

- (void)updateTableUIDFrom:(const TSKUIDStruct *)from toTableUID:(const TSKUIDStruct *)d
{
  if (*from != *d)
  {
    v18._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
    v18._rowsPerColumn.__tree_.__size_ = 0;
    v18._rectRepresentation.origin = 0;
    v18._rectRepresentation.size = 0;
    v18._rowsPerColumn.__tree_.__begin_node_ = &v18._rowsPerColumn.__tree_.__end_node_;
    v15 = 0u;
    v16 = 0u;
    v17 = 1065353216;
    pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
    next = self->_fragPrecedentsUsedByCellRef.__table_.__first_node_.__next_;
    if (next)
    {
      do
      {
        if (*(next + 6) == from->_lower && *(next + 7) == from->_upper)
        {
          TSCECellCoordSet::addCellCoords(&v18, (next + 64));
          v8 = *(next + 2);
          v14[0] = *(next + 1);
          v9 = *d;
          v14[1] = v8;
          v14[2] = v9;
          v19 = v14;
          v10 = sub_221412FE4(&v15, v14);
          TSCECellCoordSet::operator=((v10 + 8), (next + 64));
        }

        next = *next;
      }

      while (next);
      for (i = v16; i; i = *i)
      {
        *&v14[0] = i + 2;
        v12 = sub_221412FE4(&self->_fragPrecedentsUsedByCellRef.__table_.__bucket_list_.__ptr_, i + 2);
        TSCECellCoordSet::operator=((v12 + 8), (i + 8));
      }
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22140B3EC;
    v13[3] = &unk_278462DA0;
    v13[4] = self;
    v13[5] = from;
    v13[6] = d;
    TSCECellCoordSet::enumerateCoordsUsingBlock(&v18, v13);
    pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
    sub_221412F60(&v15);
    sub_22107C860(&v18._rowsPerColumn, v18._rowsPerColumn.__tree_.__end_node_.__left_);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_22141334C, off_2812E4498[314], v6);

  *(v7 + 16) |= 1u;
  v8 = *(v7 + 72);
  if (!v8)
  {
    v9 = *(v7 + 8);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = MEMORY[0x223DA0360](v9);
    *(v7 + 72) = v8;
  }

  TSKUIDStruct::saveToMessage(&self->_ownerUID, v8);
  *(v7 + 16) |= 2u;
  v10 = *(v7 + 80);
  if (!v10)
  {
    v11 = *(v7 + 8);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = MEMORY[0x223DA0360](v11);
    *(v7 + 80) = v10;
  }

  TSKUIDStruct::saveToMessage(&self->_nrm_ownerUID, v10);
  v30 = 0u;
  v31 = 0u;
  max_load_factor = 1.0;
  pthread_rwlock_rdlock(&self->_headerNameMgrReadWriteLock);
  if (&v30 != &self->_perTableInfo)
  {
    max_load_factor = self->_perTableInfo.__table_.__max_load_factor_;
    sub_2214133B8(&v30, self->_perTableInfo.__table_.__first_node_.__next_, 0);
  }

  pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
  v29._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  v29._rowsPerColumn.__tree_.__size_ = 0;
  v29._rectRepresentation.origin = 0;
  v29._rectRepresentation.size = 0;
  v29._rowsPerColumn.__tree_.__begin_node_ = &v29._rowsPerColumn.__tree_.__end_node_;
  for (i = v31; i; i = *i)
  {
    v13 = i[4];
    if (v13)
    {
      TSCECellCoordSet::addCellCoord(&v29, v13 + 2);
    }
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_22140B740;
  v28[3] = &unk_278460EB8;
  v28[4] = self;
  v28[5] = v7;
  TSCECellCoordSet::enumerateCoordsUsingBlock(&v29, v28);
  v14 = objc_alloc(MEMORY[0x277CBEB18]);
  p_nameFragmentTiles = &self->_nameFragmentTiles;
  v21 = objc_msgSend_initWithCapacity_(v14, v16, self->_nameFragmentTiles.var0 - self->_nameFragmentTiles.__begin_, v17, v18);
  begin = p_nameFragmentTiles->__begin_;
  var0 = p_nameFragmentTiles->var0;
  while (begin != var0)
  {
    v24 = *begin;
    objc_msgSend_addObject_(v21, v25, v24, v26, v27);

    ++begin;
  }

  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v19, v21, v7 + 48, v20);

  sub_22107C860(&v29._rowsPerColumn, v29._rowsPerColumn.__tree_.__end_node_.__left_);
  sub_2210BDEC0(&v30);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[314], v6, v7);

  objc_msgSend_setup(self, v9, v10, v11, v12);
  if (*(v8 + 72))
  {
    v14 = *(v8 + 72);
  }

  else
  {
    v14 = MEMORY[0x277D809E0];
  }

  self->_ownerUID._lower = TSKUIDStruct::loadFromMessage(v14, v13);
  self->_ownerUID._upper = v15;
  if ((*(v8 + 16) & 2) != 0)
  {
    self->_nrm_ownerUID._lower = TSKUIDStruct::loadFromMessage(*(v8 + 80), v15);
    self->_nrm_ownerUID._upper = v15;
  }

  if (*(v8 + 32) >= 1)
  {
    v16 = *(*(v8 + 40) + 8);
    v28 = 0uLL;
    if (*(v16 + 120))
    {
      v17 = *(v16 + 120);
    }

    else
    {
      v17 = MEMORY[0x277D809E0];
    }

    *&v28 = TSKUIDStruct::loadFromMessage(v17, v15);
    *(&v28 + 1) = v18;
    v27 = 0;
    if (*(v16 + 128))
    {
      v19 = *(v16 + 128);
    }

    else
    {
      v19 = &TSCE::_CellCoordinateArchive_default_instance_;
    }

    v27 = sub_2212697C0(v19);
    objc_msgSend_usedPrecedentCoord_(self, v20, &v27, v21, v22);
    operator new();
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_22140C0FC;
  v26[3] = &unk_27845D8D8;
  v26[4] = self;
  v23 = unarchiverCopy;
  v24 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v23, v25, v8 + 48, v24, 0, v26);
}

- (void)unpackEntryAfterUnarchive:(void *)unarchive
{
  *v13 = *(unarchive + 4);
  sub_221411E04(&self->_fragPrecedentToEntry.__table_.__bucket_list_.__ptr_, v13)[3] = unarchive;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22140C514;
  v8[3] = &unk_278464AB8;
  v8[5] = &v9;
  v8[6] = *v13;
  v8[4] = self;
  sub_22140C4B0(unarchive, v8);
  if (v10[3])
  {
    objc_msgSend_insertName_(self->_namePrefixIndex, v5, *(unarchive + 5), v6, v7);
  }

  _Block_object_dispose(&v9, 8);
}

- (void)fragmentEntryForNameFragmentPrecedent:(const TSUCellCoord *)precedent
{
  result = sub_221087F14(&self->_fragPrecedentToEntry.__table_.__bucket_list_.__ptr_, precedent);
  if (result)
  {
    return *(result + 3);
  }

  return result;
}

- (id)tileForEntry:(void *)entry
{
  if (entry)
  {
    v5 = objc_msgSend_findTileForString_findClosest_(self, a2, *(entry + 5), 0, v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)findTileForString:(id)string findClosest:(BOOL)closest
{
  v6 = 0;
  v4 = objc_msgSend_findTileForString_findClosest_foundAtOffset_(self, a2, string, closest, &v6);

  return v4;
}

- (id)findTileForString:(id)string findClosest:(BOOL)closest foundAtOffset:(unint64_t *)offset
{
  closestCopy = closest;
  stringCopy = string;
  location = 0;
  p_nameFragmentTiles = &self->_nameFragmentTiles;
  v10 = self->_nameFragmentTiles.var0 - self->_nameFragmentTiles.__begin_;
  if (!v10)
  {
    v13 = 0;
    v20 = 1;
    goto LABEL_15;
  }

  v75 = closestCopy;
  offsetCopy = offset;
  v11 = 0;
  v12 = v10 >> 3;
  while (1)
  {
    v13 = v11 + ((v12 - v11) >> 1);
    v14 = p_nameFragmentTiles->__begin_[v13];
    v19 = v14;
    v20 = v14 == 0;
    if (!v14)
    {
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTHeaderNameMgr findTileForString:findClosest:foundAtOffset:]", v17, v18);
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHeaderNameMgr.mm", v39, v40);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v42, v37, v41, 1614, 0, "invalid nil value for '%{public}s'", "midTile");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
      goto LABEL_13;
    }

    v21 = objc_msgSend_firstFragment(v14, v15, v16, v17, v18);
    v25 = objc_msgSend_compare_(stringCopy, v22, v21, v23, v24);

    v30 = v11 + ((v12 - v11) >> 1);
    if (v25 != -1)
    {
      break;
    }

LABEL_8:

    v12 = v30;
    if (v11 >= v30)
    {
      v20 = 1;
      goto LABEL_14;
    }
  }

  if (v25 == 1)
  {
    v31 = objc_msgSend_lastFragment(v19, v26, v27, v28, v29);
    v35 = objc_msgSend_compare_(stringCopy, v32, v31, v33, v34);

    if (v35 == 1)
    {
      v11 = v13 + 1;
      v30 = v12;
      goto LABEL_8;
    }
  }

  location = v19;
LABEL_13:

LABEL_14:
  offset = offsetCopy;
  closestCopy = v75;
LABEL_15:
  *offset = v13;
  if (v20 && closestCopy)
  {
    begin = p_nameFragmentTiles->__begin_;
    var0 = self->_nameFragmentTiles.var0;
    if (var0 == p_nameFragmentTiles->__begin_)
    {
      v49 = [TSTHeaderNameMgrTile alloc];
      v54 = objc_msgSend_context(self, v50, v51, v52, v53);
      location = objc_msgSend_initWithHeaderNameMgr_context_(v49, v55, self, v54, v56);

      sub_22140C294(&self->_nameFragmentTiles.__begin_, &location);
      v13 = 0;
      *offset = 0;
      begin = p_nameFragmentTiles->__begin_;
      var0 = self->_nameFragmentTiles.var0;
    }

    v57 = var0 - begin;
    if (v13 + 1 >= v57 >> 3)
    {
      if (v13 >= v57 >> 3)
      {
        *offset = v13 - 1;
        v71 = begin[v13 - 2];
      }

      else
      {
        v71 = begin[v13];
      }

      v72 = v71;
      v59 = location;
      location = v72;
    }

    else
    {
      v58 = begin[v13];
      v59 = v58;
      v60 = p_nameFragmentTiles->__begin_[*offset + 1];
      v61 = v60;
      v66 = objc_msgSend_count(v59, v62, v63, v64, v65);
      if (v66 <= objc_msgSend_count(v61, v67, v68, v69, v70))
      {
        objc_storeStrong(&location, v58);
      }

      else
      {
        objc_storeStrong(&location, v60);
        ++*offset;
      }
    }
  }

  v73 = location;

  return v73;
}

- (void)handleFullTile:(id)tile toDirtyCellRefs:(void *)refs
{
  tileCopy = tile;
  if (objc_msgSend_count(tileCopy, v7, v8, v9, v10) >= 0xC351)
  {
    v68 = 0;
    if (objc_msgSend_count(tileCopy, v11, v12, v13, v14) >= 0x30D41)
    {
      objc_msgSend_willModify(tileCopy, v15, v16, v17, v18);
      v67.coordinate = 0;
      v23 = objc_msgSend_firstFragment(tileCopy, v19, v20, v21, v22);
      v25 = objc_msgSend_findTileForString_findClosest_foundAtOffset_(self, v24, v23, 0, &v67);

      v68 = objc_msgSend_splitTile(tileCopy, v26, v27, v28, v29);
      if (v68)
      {
        sub_22140CC6C(&self->_nameFragmentTiles, &self->_nameFragmentTiles.__begin_[*&v67.coordinate + 1], &v68);
      }

      else
      {
        v33 = MEMORY[0x277D81150];
        v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSTHeaderNameMgr handleFullTile:toDirtyCellRefs:]", v31, v32);
        v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHeaderNameMgr.mm", v36, v37);
        v43 = objc_msgSend_count(tileCopy, v39, v40, v41, v42);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v44, v34, v38, 1699, 0, "Could NOT split tile of %lu size for some reason", v43);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
      }
    }

    if (objc_msgSend_count(tileCopy, v15, v16, v17, v18) >= 0xC351)
    {
      tilesToConsiderSplitting = self->_tilesToConsiderSplitting;
      v54 = objc_msgSend_firstFragment(tileCopy, v49, v50, v51, v52);
      objc_msgSend_addObject_(tilesToConsiderSplitting, v55, v54, v56, v57);

      v67.coordinate = self->_needsTileSplittingPrecedent;
      v67._tableUID = self->_ownerUID;
      TSCECellRefSet::addCellRef(refs, &v67);
    }

    if (objc_msgSend_count(v68, v49, v50, v51, v52) >= 0xC351)
    {
      v62 = self->_tilesToConsiderSplitting;
      v63 = objc_msgSend_firstFragment(v68, v58, v59, v60, v61);
      objc_msgSend_addObject_(v62, v64, v63, v65, v66);

      v67.coordinate = self->_needsTileSplittingPrecedent;
      v67._tableUID = self->_ownerUID;
      TSCECellRefSet::addCellRef(refs, &v67);
    }
  }
}

- (void)fragmentEntryForString:(id)string
{
  stringCopy = string;
  if (objc_msgSend_length(stringCopy, v5, v6, v7, v8))
  {
    v11 = objc_msgSend_findTileForString_findClosest_(self, v9, stringCopy, 0, v10);
    v15 = v11;
    if (v11)
    {
      v16 = objc_msgSend_fragmentEntryForString_(v11, v12, stringCopy, v13, v14);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)createFragmentEntryForString:(id)string toDirtyCellRefs:(void *)refs createIfMissingUsingPrecedentCoord:(const TSUCellCoord *)coord
{
  stringCopy = string;
  if (objc_msgSend_length(stringCopy, v9, v10, v11, v12))
  {
    v35 = 0;
    if (self->_nameFragmentTiles.var0 == self->_nameFragmentTiles.__begin_)
    {
      v25 = [TSTHeaderNameMgrTile alloc];
      v30 = objc_msgSend_context(self, v26, v27, v28, v29);
      v35 = objc_msgSend_initWithHeaderNameMgr_context_(v25, v31, self, v30, v32);

      objc_msgSend_createFragmentEntryForString_createIfMissingUsingPrecedentCoord_(v35, v33, stringCopy, coord, v34);
      sub_22140C294(&self->_nameFragmentTiles.__begin_, &v35);
      v18 = v35;
    }

    else
    {
      v15 = objc_msgSend_findTileForString_findClosest_(self, v13, stringCopy, 1, v14);
      v18 = v15;
      v35 = v15;
      if (v15)
      {
        objc_msgSend_createFragmentEntryForString_createIfMissingUsingPrecedentCoord_(v15, v16, stringCopy, coord, v17);
        if (objc_msgSend_count(v18, v19, v20, v21, v22) >= 0xC351)
        {
          objc_msgSend_handleFullTile_toDirtyCellRefs_(self, v23, v18, refs, v24);
        }
      }
    }
  }
}

- (BOOL)updateWithIndexingChunks:(id)chunks
{
  v36 = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  v9 = chunksCopy;
  if (self->_isClosing || !objc_msgSend_count(chunksCopy, v5, v6, v7, v8))
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v34[0] = 0;
    v34[1] = 0;
    v33 = v34;
    v10 = 80;
    pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
    if (self->_isClosing)
    {
      LOBYTE(v11) = 0;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v13 = v9;
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v29, v35, 16);
      v26 = v12;
      v27 = 80;
      v11 = 0;
      if (v16)
      {
        v17 = *v30;
        do
        {
          v18 = 0;
          do
          {
            if (*v30 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v29 + 1) + 8 * v18);
            if (v19)
            {
              v20 = *(v19 + 48);
              if (*(v19 + 56) != v20)
              {
                v21 = *(v19 + 24);
                v28 = 0uLL;
                v28 = *(v19 + 8);
                do
                {
                  v11 |= objc_msgSend_p_updateWithWordFragments_atCellCoord_tableUID_toDirtyCellRefs_(self, v15, v21, v20, &v28, &v33, v26, v27);
                  v20 += 32;
                  v21 += 24;
                }

                while (v20 != *(v19 + 56));
              }
            }

            ++v18;
          }

          while (v18 != v16);
          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v29, v35, 16);
        }

        while (v16);
      }

      v10 = v27;
      objc_autoreleasePoolPop(v26);
    }

    pthread_rwlock_unlock((self + v10));
    objc_msgSend_markCellRefSetAsDirty_(self->_calcEngine, v22, &v33, v23, v24);
    sub_22107C800(&v33, v34[0]);
  }

  return v11 & 1;
}

- (void)updateText:(id)text atCellCoord:(const TSKUIDStructCoord *)coord tableUID:(const TSKUIDStruct *)d
{
  textCopy = text;
  row = coord->_row;
  v21[0] = coord->_column;
  v21[1] = row;
  v20 = *d;
  objc_msgSend_willModify(self, v10, v11, v12, v13);
  v19[0] = 0;
  v19[1] = 0;
  v18 = v19;
  pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
  objc_msgSend_p_updateText_atCellCoord_tableUID_toDirtyCellRefs_(self, v14, textCopy, v21, &v20, &v18);
  pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
  objc_msgSend_markCellRefSetAsDirty_(self->_calcEngine, v15, &v18, v16, v17);
  sub_22107C800(&v18, v19[0]);
}

- (void)p_updateText:(id)text atCellCoord:(const TSKUIDStructCoord *)coord tableUID:(const TSKUIDStruct *)d toDirtyCellRefs:(void *)refs
{
  textCopy = text;
  v11 = objc_autoreleasePoolPush();
  memset(&v22, 0, sizeof(v22));
  if (objc_msgSend_length(textCopy, v12, v13, v14, v15))
  {
    objc_msgSend_wordFragmentsFromString_savePreserveFlags_(self, v16, textCopy, 1, v17);
    sub_2210BC2A8(&v22);
    v22 = v21;
    v23 = &v21;
    memset(&v21, 0, sizeof(v21));
    sub_22107C2C0(&v23);
  }

  objc_msgSend_p_updateWithWordFragments_atCellCoord_tableUID_toDirtyCellRefs_(self, v16, &v22, coord, d, refs);
  objc_msgSend_anyHeaderNameChangedPrecedentForTableUID_(TSCEHauntedOwner, v18, d, v19, v20);
  TSCECellRefSet::addCellRef(refs, &v21);
  v21.coordinate = &v22;
  sub_22107C2C0(&v21);
  objc_autoreleasePoolPop(v11);
}

- (BOOL)p_updateWithWordFragments:(const void *)fragments atCellCoord:(const TSKUIDStructCoord *)coord tableUID:(const TSKUIDStruct *)d toDirtyCellRefs:(void *)refs
{
  selfCopy = self;
  v58._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  v58._rowsPerColumn.__tree_.__size_ = 0;
  v58._rectRepresentation.origin = 0;
  v58._rectRepresentation.size = 0;
  v58._rowsPerColumn.__tree_.__begin_node_ = &v58._rowsPerColumn.__tree_.__end_node_;
  row = coord->_row;
  v57[0] = coord->_column;
  v57[1] = row;
  v57[2] = *d;
  v11 = sub_22141356C(&self->_fragPrecedentsUsedByCellRef.__table_.__bucket_list_.__ptr_, v57);
  if (v11)
  {
    TSCECellCoordSet::operator=(&v58, (v11 + 8));
  }

  TSCECellCoordSet::TSCECellCoordSet(&v56, &v58);
  v46 = 0;
  v47 = &v46;
  v48 = 0x5812000000;
  v49 = sub_22140D808;
  v50 = sub_22140D814;
  v51 = &unk_22188E88F;
  v55[0] = 0;
  v55[1] = 0;
  v52 = 0;
  v53 = 0;
  v54 = v55;
  v45._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  v45._rowsPerColumn.__tree_.__size_ = 0;
  v45._rectRepresentation.origin = 0;
  v45._rectRepresentation.size = 0;
  v45._rowsPerColumn.__tree_.__begin_node_ = &v45._rowsPerColumn.__tree_.__end_node_;
  v12 = *fragments;
  v13 = *(fragments + 1);
  if (*fragments != v13)
  {
    do
    {
      v14 = *v12;
      if (objc_msgSend_length(v14, v15, v16, v17, v18))
      {
        v21 = objc_msgSend_findTileForString_findClosest_(selfCopy, v19, v14, 1, v20);
        IfMissingUsingPrecedentCoord = objc_msgSend_createFragmentEntryForString_createIfMissingUsingPrecedentCoord_(v21, v22, v14, &unk_2217E1BE0, v23);
        if (IfMissingUsingPrecedentCoord)
        {
          objc_msgSend_addChangedTile_(selfCopy, v24, v21, v25, v26);
          os_unfair_lock_lock(IfMissingUsingPrecedentCoord);
          sub_221278A44(IfMissingUsingPrecedentCoord + 16, &coord->_column._lower, &d->_lower);
          os_unfair_lock_unlock(IfMissingUsingPrecedentCoord);
          v59 = *(IfMissingUsingPrecedentCoord + 4);
          TSCECellCoordSet::addCellCoord(&v45, &v59);
          v59 = *(IfMissingUsingPrecedentCoord + 4);
          if (TSCECellCoordSet::containsCellCoord(&v58, &v59))
          {
            v59 = *(IfMissingUsingPrecedentCoord + 4);
            TSCECellCoordSet::removeCellCoord(&v56, &v59);
          }

          else
          {
            v28 = selfCopy;
            namePrefixIndex = selfCopy->_namePrefixIndex;
            v29 = *(IfMissingUsingPrecedentCoord + 40);
            objc_msgSend_insertFoldedName_(namePrefixIndex, v30, v29, v31, v32);

            v59 = *(IfMissingUsingPrecedentCoord + 4);
            TSCECellCoordSet::addCellCoord((v47 + 6), &v59);
            selfCopy = v28;
            if (objc_msgSend_count(v21, v33, v34, v35, v36) >= 0xC351)
            {
              objc_msgSend_handleFullTile_toDirtyCellRefs_(v28, v37, v21, refs, v38);
            }
          }
        }
      }

      ++v12;
    }

    while (v12 != v13);
  }

  v59 = v57;
  v39 = sub_221412FE4(&selfCopy->_fragPrecedentsUsedByCellRef.__table_.__bucket_list_.__ptr_, v57);
  TSCECellCoordSet::operator=((v39 + 8), &v45);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = sub_22140D820;
  v44[3] = &unk_278464AE0;
  v44[6] = coord;
  v44[7] = d;
  v44[4] = selfCopy;
  v44[5] = &v46;
  TSCECellCoordSet::enumerateCoordsUsingBlock(&v56, v44);
  TSCECellRefSet::addCellRefs(refs, &selfCopy->_ownerUID, (v47 + 6));
  isEmpty = TSCECellCoordSet::isEmpty((v47 + 6));
  sub_22107C860(&v45._rowsPerColumn, v45._rowsPerColumn.__tree_.__end_node_.__left_);
  _Block_object_dispose(&v46, 8);
  sub_22107C860(&v54, v55[0]);
  sub_22107C860(&v56._rowsPerColumn, v56._rowsPerColumn.__tree_.__end_node_.__left_);
  sub_22107C860(&v58._rowsPerColumn, v58._rowsPerColumn.__tree_.__end_node_.__left_);
  return !isEmpty;
}

- (TSCECellRefSet)nameFragmentPrecedentsForReferenceString:(SEL)string
{
  v6 = a4;
  retstr->_coordsForOwnerUid.__tree_.__size_ = 0;
  retstr->_coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
  retstr->_coordsForOwnerUid.__tree_.__begin_node_ = &retstr->_coordsForOwnerUid.__tree_.__end_node_;
  if (objc_msgSend_length(v6, v7, v8, v9, v10))
  {
    objc_msgSend_wordFragmentsFromString_savePreserveFlags_(self, v11, v6, 0, v12);
    if (v27 != v28)
    {
      pthread_rwlock_rdlock(&self->_headerNameMgrReadWriteLock);
      v16 = v27;
      v17 = v28;
      do
      {
        v18 = *v16;
        v19 = objc_msgSend_fragmentEntryForString_(self, v13, *v16, v14, v15);
        if (v19)
        {
          v26.coordinate = *(v19 + 4);
          v26._tableUID = self->_ownerUID;
          TSCECellRefSet::addCellRef(retstr, &v26);
        }

        else if (objc_msgSend_length(v18, v20, v21, v22, v23))
        {
          v24 = objc_msgSend_reservePrecedent_forNameFragment_(self, v13, &unk_2217E1BE0, v18, v15);
          if (v24 != 0x7FFFFFFF && (v24 & 0xFFFF00000000) != 0x7FFF00000000)
          {
            v26.coordinate = v24;
            v26._tableUID = self->_ownerUID;
            TSCECellRefSet::addCellRef(retstr, &v26);
          }
        }

        ++v16;
      }

      while (v16 != v17);
      pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
    }

    v26.coordinate = &v27;
    sub_22107C2C0(&v26);
  }

  return result;
}

- (TSCERangeRef)spanningRangeForHeaderCell:(SEL)cell
{
  calcEngine = self->_calcEngine;
  tableUID = a4->_tableUID;
  v9 = objc_msgSend_tableResolverForTableUID_(calcEngine, cell, &tableUID, v4, v5);
  v14 = v9;
  if (v9)
  {
    v15 = objc_msgSend_bodyRangeCoordinate(v9, v10, v11, v12, v13);
    tableUID._lower = a4->coordinate;
    tableUID._upper = tableUID._lower;
    coordinate = objc_msgSend_expandCellRangeToCoverMergedCells_(v14, v16, &tableUID, v17, v18);
    v21 = WORD2(v15);
  }

  else
  {
    coordinate = a4->coordinate;
    v21 = 0x7FFF;
    LODWORD(v15) = 0x7FFFFFFF;
    v20 = a4->coordinate;
  }

  if (v15 <= coordinate)
  {
    if (v21 <= WORD2(coordinate))
    {
      retstr->range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      retstr->_tableUID._lower = 0;
      retstr->_tableUID._upper = 0;
      goto LABEL_10;
    }

    v23 = 0x7FFF00000000;
    v22 = 0xFFFFFFFFLL;
  }

  else
  {
    v22 = 0xFFFF00000000;
    v23 = 0x7FFFFFFFLL;
  }

  retstr->range._topLeft = (coordinate & v22 | v23);
  retstr->range._bottomRight = (*&v20 & v22 | v23);
  retstr->_tableUID = a4->_tableUID;
LABEL_10:

  return result;
}

- (id)stringInHeaderCell:(const TSCECellRef *)cell
{
  calcEngine = self->_calcEngine;
  tableUID = cell->_tableUID;
  v8 = objc_msgSend_tableResolverForTableUID_(calcEngine, a2, &tableUID, v3, v4);
  v10 = v8;
  if (v8)
  {
    coordinate = cell->coordinate;
    tableUID._lower = coordinate;
    v25 = 0;
    v11 = objc_msgSend_makeReferenceWithTopLeft_bottomRight_preserveFlags_(v8, v9, &tableUID, &coordinate, &v25);
    tableUID._lower = cell->coordinate;
    v14 = objc_msgSend_scalarValueFromCoord_readOptions_(v11, v12, &tableUID, 1, v13);
    v19 = objc_msgSend_documentLocale(self->_calcEngine, v15, v16, v17, v18);
    v23 = objc_msgSend_asStringWithLocale_(v14, v20, v19, v21, v22);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)referenceNameIsUnique:(id)unique forReference:(const void *)reference contextTable:(const TSKUIDStruct *)table
{
  uniqueCopy = unique;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v12 = objc_msgSend_tableResolverForTableUID_(self->_calcEngine, v9, table, v10, v11);
  v17 = v12;
  if (!v12 || !objc_msgSend_isPivotDataModel(v12, v13, v14, v15, v16))
  {
    v35 = [TSCEReferenceParsingContext alloc];
    v33 = objc_msgSend_initWithContextTableResolver_(v35, v36, v17, v37, v38);
    objc_msgSend_setReferenceIsComplete_(v33, v39, 1, v40, v41);
    v46 = objc_msgSend_refParser(self->_calcEngine, v42, v43, v44, v45);
    v49 = v46;
    if (v46)
    {
      objc_msgSend_parseStringAsChromeReference_withParsingContext_(v46, v47, uniqueCopy, v33, v48);
    }

    else
    {
      memset(&v52, 0, sizeof(v52));
    }

    if (TSCERangeRef::isValid(&v52) && TSCERangeRef::operator==(&v52, reference))
    {
      *(v63 + 24) = 1;
    }

    goto LABEL_13;
  }

  if (TSCERangeCoordinate::spansAllRows(reference) && *(reference + 2) == table->_lower && *(reference + 3) == table->_upper)
  {
    *(v63 + 24) = 1;
    v22 = objc_msgSend_tableModel(v17, v18, v19, v20, v21);
    v52.range._topLeft = objc_msgSend_headerRowRange(v22, v23, v24, v25, v26);
    v52.range._bottomRight = v27;
    v28 = *(reference + 2);
    v32 = objc_msgSend_newCell(v22, v27, v29, v30, v31, *&v52.range._topLeft, v27);
    v53 = MEMORY[0x277D85DD0];
    v54 = 3221225472;
    v55 = sub_22140DF94;
    v56 = &unk_278464B08;
    v61 = v28;
    v33 = v22;
    v57 = v33;
    v58 = v32;
    v59 = uniqueCopy;
    v60 = &v62;
    v34 = v32;
    TSUCellRect::enumerateCoordinatesUsingBlock();

LABEL_13:
  }

  v50 = *(v63 + 24);

  _Block_object_dispose(&v62, 8);
  return v50;
}

- (id)anyRefForRangeForHeaderCell:(const TSCECellRef *)cell usePreserveFlags:(BOOL)flags
{
  flagsCopy = flags;
  objc_msgSend_spanningRangeForHeaderCell_(self, a2, cell, flags, v4);
  v11 = objc_msgSend_stringInHeaderCell_(self, v8, cell, v9, v10);
  v12 = [TSCEAnyReference alloc];
  v16 = objc_msgSend_initWithRangeRef_(v12, v13, v34, v14, v15);
  objc_msgSend_setWasConstructedViaNames_(v16, v17, 1, v18, v19);
  if (flagsCopy)
  {
    v33 = v34[0];
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"$%@", v21, v22, v11);
    v24.i64[0] = 0xFFFFFFFFLL;
    v24.i64[1] = 0xFFFFFFFFLL;
    v25 = vandq_s8(v33, v24);
    v26.i64[0] = 0xFFFF00000000;
    v26.i64[1] = 0xFFFF00000000;
    v26.i32[0] = vuzp1_s16(vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(v33, v26), vdupq_n_s64(0x7FFF00000000uLL)))), *v25.i8).u32[0];
    *v25.i8 = vmovn_s64(vceqq_s64(v25, vdupq_n_s64(0x7FFFFFFFuLL)));
    v26.i32[1] = vuzp1_s16(*&v25, *&v25).i32[1];
    v27 = vaddv_s16(vand_s8(vcltz_s16(vshl_n_s16(*v26.i8, 0xFuLL)), 0x8000400020001));

    if (v27 == 15)
    {
      v28 = 5;
    }

    else
    {
      v28 = 10;
    }

    v11 = v23;
  }

  else
  {
    v28 = 0;
  }

  objc_msgSend_setPreserveFlags_(v16, v20, v28, v21, v22);
  objc_msgSend_setOverrideText_(v16, v29, v11, v30, v31);

  return v16;
}

- (void)p_willApplyCell:(id)cell baseCellCoord:(TSUModelCellCoord)coord tableUID:(const TSKUIDStruct *)d toDirtyCellRefs:(void *)refs
{
  column = coord._coord.column;
  cellCopy = cell;
  if (coord._coord.row < 5 || column <= 4u)
  {
    IfMissing = objc_msgSend_perTableEntryForTable_createIfMissing_(self, v11, d, 0, v12);
    v19 = IfMissing;
    if (IfMissing)
    {
      if ((*(IfMissing + 56) & 1) == 0)
      {
        v20 = objc_msgSend_calcEngine(self, v15, v16, v17, v18);
        v23 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v21, d, v20, v22);

        if (v23 && (objc_msgSend_numberOfHeaderColumns(v23, v24, v25, v26, v27) > column || objc_msgSend_numberOfHeaderRows(v23, v28, v29, v30, v31) > coord._coord.row))
        {
          v32 = objc_msgSend_columnRowUIDMap(v23, v28, v29, v30, v31);
          v57 = objc_msgSend_columnUIDForColumnIndex_(v32, v33, column, v34, v35);
          v37 = v36;

          v42 = objc_msgSend_columnRowUIDMap(v23, v38, v39, v40, v41);
          v46 = objc_msgSend_rowUIDForRowIndex_(v42, v43, *&coord, v44, v45);
          v48 = v47;

          if ((objc_msgSend_containsUuid_(*(v19 + 32), v49, v57, v37, v50) & 1) != 0 || objc_msgSend_containsUuid_(*(v19 + 24), v51, v46, v48, v54))
          {
            v55 = objc_msgSend_formattedValue(cellCopy, v51, v52, v53, v54);
            TSKMakeUIDStructCoord();
            objc_msgSend_p_updateText_atCellCoord_tableUID_toDirtyCellRefs_(self, v56, v55, v58, d, refs);
          }
        }
      }
    }
  }
}

- (void)willApplyCell:(id)cell baseCellCoord:(TSUModelCellCoord)coord tableUID:(const TSKUIDStruct *)d
{
  cellCopy = cell;
  if (coord._coord.row < 5 || coord._coord.column <= 4u)
  {
    v15 = *d;
    v14[0] = 0;
    v14[1] = 0;
    v13 = v14;
    pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
    objc_msgSend_p_willApplyCell_baseCellCoord_tableUID_toDirtyCellRefs_(self, v9, cellCopy, *&coord, &v15, &v13);
    pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
    objc_msgSend_markCellRefSetAsDirty_(self->_calcEngine, v10, &v13, v11, v12);
    sub_22107C800(&v13, v14[0]);
  }
}

- (void)willApplyBaseCellMap:(id)map tableUID:(const TSKUIDStruct *)d
{
  mapCopy = map;
  v26 = *d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x4812000000;
  v21 = sub_221408BA8;
  v22 = sub_221408BB4;
  v23 = &unk_22188E88F;
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
  IfMissing = objc_msgSend_perTableEntryForTable_createIfMissing_(self, v7, &v26, 0, v8);
  if (IfMissing && (*(IfMissing + 56) & 1) == 0)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22140E654;
    v16[3] = &unk_278464B30;
    v17 = v26;
    v16[4] = self;
    v16[5] = &v18;
    objc_msgSend_enumerateCellsWithIDsUsingBlock_(mapCopy, v10, v16, v11, v12);
  }

  pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
  objc_msgSend_markCellRefSetAsDirty_(self->_calcEngine, v13, (v19 + 6), v14, v15);
  _Block_object_dispose(&v18, 8);
  sub_22107C800(&v24, v25[0]);
}

- (void)willApplyConcurrentCellMap:(id)map tableUID:(const TSKUIDStruct *)d
{
  mapCopy = map;
  v26 = *d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x4812000000;
  v21 = sub_221408BA8;
  v22 = sub_221408BB4;
  v23 = &unk_22188E88F;
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
  IfMissing = objc_msgSend_perTableEntryForTable_createIfMissing_(self, v7, &v26, 0, v8);
  if (IfMissing && (*(IfMissing + 56) & 1) == 0)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22140E808;
    v16[3] = &unk_278464B58;
    v17 = v26;
    v16[4] = self;
    v16[5] = &v18;
    objc_msgSend_enumerateSeriallyUsingBlock_(mapCopy, v10, v16, v11, v12);
  }

  pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
  objc_msgSend_markCellRefSetAsDirty_(self->_calcEngine, v13, (v19 + 6), v14, v15);
  _Block_object_dispose(&v18, 8);
  sub_22107C800(&v24, v25[0]);
}

- (void)willRemoveRows:(const void *)rows tableUID:(const TSKUIDStruct *)d
{
  pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
  IfMissing = objc_msgSend_perTableEntryForTable_createIfMissing_(self, v7, d, 0, v8);
  if (IfMissing)
  {
    v12 = IfMissing;
    if ((*(IfMissing + 56) & 1) == 0)
    {
      v13 = *rows;
      v14 = *(rows + 1);
      while (v13 != v14)
      {
        if (objc_msgSend_containsUuid_(*(v12 + 24), v10, *v13, v13[1], v11))
        {
          sub_221407314(v12, v13, 1, v15, v11);
          objc_msgSend_removeUUID_(*(v12 + 24), v16, *v13, v13[1], v17);
        }

        v13 += 2;
      }
    }
  }

  pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
}

- (void)p_processWorkForTable:(const TSKUIDStruct *)table
{
  v260 = *table;
  objc_msgSend_willModify(self, a2, table, v3, v4);
  pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
  if (!self->_isClosing)
  {
    v6 = sub_2210875C4(&self->_perTableInfo.__table_.__bucket_list_.__ptr_, &v260);
    if (v6)
    {
      v7 = v6;
      v8 = v6[4];
      v259._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
      v259._coordsForOwnerUid.__tree_.__size_ = 0;
      v259._coordsForOwnerUid.__tree_.__begin_node_ = &v259._coordsForOwnerUid.__tree_.__end_node_;
      if (v8 && *(v8 + 56) == 1)
      {
        v209 = v8;
        v11 = *(v8 + 16);
        v10 = (v8 + 16);
        v9 = v11;
        ownerUID = self->_ownerUID;
        p_removeFormulasDuringWritePhase = &self->_removeFormulasDuringWritePhase;
        end = self->_removeFormulasDuringWritePhase.__end_;
        cap = self->_removeFormulasDuringWritePhase.__cap_;
        if (end >= cap)
        {
          v16 = 0xAAAAAAAAAAAAAAABLL * ((end - p_removeFormulasDuringWritePhase->__begin_) >> 3);
          v17 = v16 + 1;
          if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_22107C148();
          }

          v18 = 0xAAAAAAAAAAAAAAABLL * ((cap - p_removeFormulasDuringWritePhase->__begin_) >> 3);
          if (2 * v18 > v17)
          {
            v17 = 2 * v18;
          }

          if (v18 >= 0x555555555555555)
          {
            v19 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            sub_2210CDBC0(&self->_removeFormulasDuringWritePhase, v19);
          }

          v20 = 24 * v16;
          *v20 = v9;
          *(v20 + 8) = ownerUID;
          v15 = (24 * v16 + 24);
          v21 = (self->_removeFormulasDuringWritePhase.__end_ - p_removeFormulasDuringWritePhase->__begin_);
          v22 = (v20 - v21);
          memcpy((v20 - v21), p_removeFormulasDuringWritePhase->__begin_, v21);
          begin = p_removeFormulasDuringWritePhase->__begin_;
          p_removeFormulasDuringWritePhase->__begin_ = v22;
          self->_removeFormulasDuringWritePhase.__end_ = v15;
          self->_removeFormulasDuringWritePhase.__cap_ = 0;
          if (begin)
          {
            operator delete(begin);
          }
        }

        else
        {
          end->coordinate = v9;
          end->_tableUID = ownerUID;
          v15 = end + 1;
        }

        self->_removeFormulasDuringWritePhase.__end_ = v15;
        sub_2210CDD3C(&self->_perTableInfo.__table_.__bucket_list_.__ptr_, v7);
        v236 = 0;
        *(&__p + 1) = 0;
        *&__p = &__p + 8;
        for (i = self->_fragPrecedentsUsedByCellRef.__table_.__first_node_.__next_; i; i = *i)
        {
          v244 = i[3];
          if (v244 == v260)
          {
            TSKMakeUIDStructCoord();
            sub_221278A44(&__p, &ownerUID._lower, &v244);
            v257[0] = MEMORY[0x277D85DD0];
            v257[1] = 3221225472;
            v257[2] = sub_22140F93C;
            v257[3] = &unk_278462DA0;
            v257[4] = self;
            v258 = v260;
            TSCECellCoordSet::enumerateCoordsUsingBlock(i + 8, v257);
          }
        }

        ownerUID._lower = 0;
        ownerUID._upper = &ownerUID;
        v248 = 0x5812000000;
        v249 = sub_22140D808;
        v250 = sub_22140D814;
        v251 = &unk_22188E88F;
        v256 = 0;
        v253 = 0;
        v252 = 0;
        v255 = 0;
        v254 = &v255;
        v246[0] = MEMORY[0x277D85DD0];
        v246[1] = 3221225472;
        v246[2] = sub_22140F9E8;
        v246[3] = &unk_278464B80;
        v246[4] = self;
        v246[5] = &ownerUID;
        sub_221278D98(&__p, v246);
        TSCECellRefSet::addCellRefs(&v259, &self->_ownerUID, (ownerUID._upper + 48));
        sub_2214136D8(&self->_headerPerTablePrecedentToTableUID.__table_.__bucket_list_.__ptr_, v10);

        MEMORY[0x223DA1450](v209, 0x1080C405E821AB0);
        _Block_object_dispose(&ownerUID, 8);
        sub_22107C860(&v254, v255);
        sub_2212796F0(&__p, *(&__p + 1));
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
      v259._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
      v259._coordsForOwnerUid.__tree_.__size_ = 0;
      v259._coordsForOwnerUid.__tree_.__begin_node_ = &v259._coordsForOwnerUid.__tree_.__end_node_;
    }

    pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
    objc_msgSend_markCellRefSetAsDirty_(self->_calcEngine, v25, &v259, v26, v27);
    if (v8 && !self->_isClosing)
    {
      v212 = objc_msgSend_copy(*(v8 + 40), v28, v29, v30, v31);
      v211 = objc_msgSend_copy(*(v8 + 48), v32, v33, v34, v35);
      if (objc_msgSend_count(v212, v36, v37, v38, v39) || objc_msgSend_count(v211, v40, v41, v42, v43))
      {
        pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
        v245 = 0;
        *(&v244 + 1) = 0;
        *&v244 = &v244 + 8;
        v208 = objc_msgSend_copy(*(v8 + 24), v44, v45, v46, v47);
        v210 = v8;
        v207 = objc_msgSend_copy(*(v8 + 32), v48, v49, v50, v51);
        for (j = self->_fragPrecedentsUsedByCellRef.__table_.__first_node_.__next_; j; j = *j)
        {
          __p = *(j + 3);
          if (__p != v260)
          {
            continue;
          }

          v55 = *(j + 2);
          v56 = *(j + 3);
          v57 = *(j + 4);
          v58 = *(j + 5);
          v59 = objc_msgSend_containsUuid_(v211, v52, v55, v56, v53);
          v62 = objc_msgSend_containsUuid_(v212, v60, v57, v58, v61);
          v63 = v62;
          if (((v59 | v62) & 1) == 0)
          {
            continue;
          }

          if (v59)
          {
            v64 = objc_msgSend_containsUuid_(v208, v52, v57, v58, v53);
            if ((v63 & 1) == 0)
            {
              goto LABEL_39;
            }

            if (v64)
            {
              continue;
            }
          }

          else if ((v62 & 1) == 0)
          {
            goto LABEL_40;
          }

          v64 = objc_msgSend_containsUuid_(v207, v52, v55, v56, v53);
LABEL_39:
          if ((v64 & 1) == 0)
          {
LABEL_40:
            TSKMakeUIDStructCoord();
            sub_221278A44(&v244, &ownerUID._lower, &__p);
            v240[0] = MEMORY[0x277D85DD0];
            v240[1] = 3221225472;
            v240[2] = sub_22140FA6C;
            v240[3] = &unk_278464BA8;
            v240[4] = self;
            v243 = v260;
            v241 = v211;
            v242 = v212;
            TSCECellCoordSet::enumerateCoordsUsingBlock(j + 8, v240);
          }
        }

        ownerUID._lower = 0;
        ownerUID._upper = &ownerUID;
        v248 = 0x5812000000;
        v249 = sub_22140D808;
        v250 = sub_22140D814;
        v251 = &unk_22188E88F;
        v256 = 0;
        v253 = 0;
        v252 = 0;
        v255 = 0;
        v254 = &v255;
        v239[0] = MEMORY[0x277D85DD0];
        v239[1] = 3221225472;
        v239[2] = sub_22140FB0C;
        v239[3] = &unk_278464B80;
        v239[4] = self;
        v239[5] = &ownerUID;
        sub_221278D98(&v244, v239);
        pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
        objc_msgSend_markCoordsDirty_inOwner_(self->_calcEngine, v65, ownerUID._upper + 48, &self->_ownerUID, v66);
        v67 = v260;
        v72 = objc_msgSend_calcEngine(self, v68, v69, v70, v71);
        v74 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v73, v67._lower, v67._upper, v72);

        if (v74)
        {
          v205 = objc_msgSend_mutableCopy(v212, v75, v76, v77, v78);
          v83 = objc_msgSend_mutableCopy(v211, v79, v80, v81, v82);
          v88 = objc_msgSend_copy(*(v210 + 24), v84, v85, v86, v87);
          objc_msgSend_intersectsSet_(v205, v89, v88, v90, v91);

          v96 = objc_msgSend_copy(*(v210 + 32), v92, v93, v94, v95);
          objc_msgSend_intersectsSet_(v83, v97, v96, v98, v99);

          v206 = objc_msgSend_translator(v74, v100, v101, v102, v103);
          v238.size = 0;
          v238.origin = 0;
          v238.origin = objc_msgSend_headerRowRange(v74, v104, v105, v106, v107);
          v238.size = v108;
          if (v205)
          {
            objc_msgSend_uuidsAsVector(v205, v108, v109, v110, v111);
          }

          else
          {
            __p = 0uLL;
            v236 = 0;
          }

          v203 = objc_msgSend_viewRowIndexesForUIDs_(v206, v108, &__p, v110, v111);
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }

          *&__p = 0;
          *(&__p + 1) = &__p;
          v236 = 0x2020000000;
          v237 = 0;
          if (objc_msgSend_count(v203, v112, v113, v114, v115, v203) && TSUCellRect::isValid(&v238))
          {
            v120 = TSUCellRect::rows(&v238);
            Index = objc_msgSend_firstIndex(v204, v121, v122, v123, v124);
            if (v120 <= Index)
            {
              v120 = Index;
            }

            v126 = TSUCellRect::rows(&v238);
            TSUCellRect::rows(&v238);
            v128 = v127;
            v132 = objc_msgSend_lastIndex(v204, v127, v129, v130, v131);
            v133 = TSUCellRect::columns(&v238);
            if (v132 + 1 < &v128[v126])
            {
              v136 = v132 + 1;
            }

            else
            {
              v136 = &v128[v126];
            }

            v238.origin = sub_22140FB90(v133, v134, v120, v136 - v120, v135);
            v238.size = v137;
            if (TSUCellRect::isValid(&v238) && (TSUCellRect::isEmpty(&v238) & 1) == 0)
            {
              v138 = objc_msgSend_regionFromRange_(TSTCellRegion, v116, *&v238.origin, *&v238.size, v119);
              v139 = [TSTConcurrentCellIterator alloc];
              v141 = objc_msgSend_initWithTableInfo_region_flags_searchFlags_(v139, v140, v74, v138, 10, 0x400000);
              v233[0] = MEMORY[0x277D85DD0];
              v233[1] = 3221225472;
              v233[2] = sub_2216F7AC8;
              v233[3] = &unk_278464BC8;
              v234 = v260;
              v229[0] = MEMORY[0x277D85DD0];
              v229[1] = 3221225472;
              v229[2] = sub_22140FD48;
              v229[3] = &unk_278464BF0;
              v230 = v204;
              v231 = v206;
              selfCopy = self;
              v228[0] = MEMORY[0x277D85DD0];
              v228[1] = 3221225472;
              v228[2] = sub_22140FF1C;
              v228[3] = &unk_278464040;
              v228[4] = self;
              v228[5] = &__p;
              objc_msgSend_enumerateConcurrentlyUsingChunkBeginBlock_concurrentBlock_finalBlock_(v141, v142, v233, v229, v228);
            }
          }

          v227.origin = objc_msgSend_headerColumnRange(v74, v116, v117, v118, v119);
          v227.size = v143;
          if (v83)
          {
            objc_msgSend_uuidsAsVector(v83, v143, v144, v145, v146);
          }

          else
          {
            v224 = 0;
            v225 = 0;
            v226 = 0;
          }

          v151 = objc_msgSend_viewColumnIndexesForUIDs_(v206, v143, &v224, v145, v146);
          if (v224)
          {
            v225 = v224;
            operator delete(v224);
          }

          if (objc_msgSend_count(v151, v147, v148, v149, v150) && TSUCellRect::isValid(&v227))
          {
            v156 = TSUCellRect::columns(&v227);
            v161 = objc_msgSend_firstIndex(v151, v157, v158, v159, v160);
            if (v156 <= v161)
            {
              v156 = v161;
            }

            v162 = TSUCellRect::columns(&v227);
            TSUCellRect::columns(&v227);
            v164 = v163;
            v168 = objc_msgSend_lastIndex(v151, v163, v165, v166, v167);
            v170 = TSUCellRect::rows(&v227);
            if (v168 + 1 < &v164[v162])
            {
              v172 = v168 + 1;
            }

            else
            {
              v172 = &v164[v162];
            }

            v227.origin = sub_22140FB90(v156, (v172 - v156), v170, v169, v171);
            v227.size = v173;
            if (TSUCellRect::isValid(&v227) && (TSUCellRect::isEmpty(&v227) & 1) == 0)
            {
              v174 = objc_autoreleasePoolPush();
              v177 = objc_msgSend_regionFromRange_(TSTCellRegion, v175, *&v227.origin, *&v227.size, v176);
              v178 = [TSTConcurrentCellIterator alloc];
              v180 = objc_msgSend_initWithTableInfo_region_flags_searchFlags_(v178, v179, v74, v177, 10, 0x400000);
              v222[0] = MEMORY[0x277D85DD0];
              v222[1] = 3221225472;
              v222[2] = sub_2216F7B38;
              v222[3] = &unk_278464BC8;
              v223 = v260;
              v218[0] = MEMORY[0x277D85DD0];
              v218[1] = 3221225472;
              v218[2] = sub_22140FF68;
              v218[3] = &unk_278464BF0;
              v219 = v151;
              v220 = v206;
              selfCopy2 = self;
              v217[0] = MEMORY[0x277D85DD0];
              v217[1] = 3221225472;
              v217[2] = sub_22141013C;
              v217[3] = &unk_278464040;
              v217[4] = self;
              v217[5] = &__p;
              objc_msgSend_enumerateConcurrentlyUsingChunkBeginBlock_concurrentBlock_finalBlock_(v180, v181, v222, v218, v217);

              objc_autoreleasePoolPop(v174);
            }
          }

          if (*(*(&__p + 1) + 24) == 1)
          {
            calcEngine = self->_calcEngine;
            v215 = objc_msgSend_tableUID(v74, v152, v153, v154, v155);
            v216 = v183;
            objc_msgSend_sheetTableNamePrecedentForTableUID_(TSCEHauntedOwner, v183, &v215, v184, v185);
            objc_msgSend_markCellRefAsDirty_(calcEngine, v186, &v224, v187, v188);
            v189 = self->_calcEngine;
            v215 = objc_msgSend_tableUID(v74, v190, v191, v192, v193);
            v216 = v194;
            objc_msgSend_anyHeaderNameChangedPrecedentForTableUID_(TSCEHauntedOwner, v194, &v215, v195, v196);
            objc_msgSend_markCellRefAsDirty_(v189, v197, &v224, v198, v199);
          }

          _Block_object_dispose(&__p, 8);
        }

        v214[0] = MEMORY[0x277D85DD0];
        v214[1] = 3221225472;
        v214[2] = sub_221410188;
        v214[3] = &unk_27845D920;
        v214[4] = v210;
        objc_msgSend_foreachUuid_(v212, v75, v214, v77, v78);
        v213[0] = MEMORY[0x277D85DD0];
        v213[1] = 3221225472;
        v213[2] = sub_22141019C;
        v213[3] = &unk_27845D920;
        v213[4] = v210;
        objc_msgSend_foreachUuid_(v211, v200, v213, v201, v202);

        _Block_object_dispose(&ownerUID, 8);
        sub_22107C860(&v254, v255);

        sub_2212796F0(&v244, *(&v244 + 1));
      }
    }

    sub_22107C800(&v259, v259._coordsForOwnerUid.__tree_.__end_node_.__left_);
    return;
  }

  pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
}

- (id)subsetForReferenceName:(id)name limitToTable:(const TSKUIDStruct *)table includePrefixes:(BOOL)prefixes
{
  prefixesCopy = prefixes;
  nameCopy = name;
  v9 = [TSTHeaderNameSubset alloc];
  v12 = objc_msgSend_initWithHeaderNameMgr_limitToTableUID_(v9, v10, self, table, v11);
  objc_msgSend_setIncludesPrefixes_(v12, v13, prefixesCopy, v14, v15);
  if (objc_msgSend_length(nameCopy, v16, v17, v18, v19))
  {
    memset(v48, 0, sizeof(v48));
    v49 = 1065353216;
    v40 = 0;
    v41 = &v40;
    v42 = 0x5812000000;
    v43 = sub_2214104C8;
    v44 = sub_2214104D4;
    v45 = &unk_22188E88F;
    memset(v46, 0, sizeof(v46));
    v47 = 1065353216;
    objc_msgSend_wordFragmentsFromString_savePreserveFlags_(self, v20, nameCopy, 0, v21);
    if (v38 != v39)
    {
      v35 = 80;
      pthread_rwlock_rdlock(&self->_headerNameMgrReadWriteLock);
      v27 = v38;
      v28 = v39;
      do
      {
        v29 = objc_msgSend_fragmentEntryForString_(self, v24, *v27, v25, v26, v35);
        v30 = v29;
        if (v29)
        {
          v37 = *(v29 + 40);
          v51 = &v37;
          v31 = sub_22141379C(v48, &v37, &unk_2217E1BE8, &v51, &v50);
          os_unfair_lock_lock(v30);
          sub_221278B40((v31 + 3), (v30 + 16), &table->_lower);
          os_unfair_lock_unlock(v30);
        }

        ++v27;
      }

      while (v27 != v28);
      if (prefixesCopy)
      {
        v32 = *(v39 - 1);
        if (v32)
        {
          namePrefixIndex = self->_namePrefixIndex;
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = sub_2214104DC;
          v36[3] = &unk_278464C18;
          v36[4] = self;
          v36[5] = &v40;
          v36[6] = table;
          objc_msgSend_enumerateNamesMatchingPrefix_block_(namePrefixIndex, v24, v32, v36, v26);
        }
      }

      pthread_rwlock_unlock((self + v35));
    }

    objc_msgSend_loadSubsetWithExactMatches_prefixMatches_(v12, v22, v48, (v41 + 6), v23, v35);
    v52 = &v38;
    sub_22107C2C0(&v52);
    _Block_object_dispose(&v40, 8);
    sub_221413710(v46);
    sub_221413710(v48);
  }

  return v12;
}

- (TSCECellRefSet)headerCellsMatching:(SEL)matching limitToTable:(id)table includePrefixes:(const TSKUIDStruct *)prefixes
{
  v6 = a6;
  tableCopy = table;
  v11 = objc_msgSend_subsetForReferenceName_limitToTable_includePrefixes_(self, v10, tableCopy, prefixes, v6);
  v14 = v11;
  if (v6)
  {
    if (v11)
    {
      objc_msgSend_headerCellsMatchingPrefix_(v11, tableCopy, tableCopy, v12, v13);
      goto LABEL_7;
    }
  }

  else if (v11)
  {
    objc_msgSend_headerCellsExactlyMatching_(v11, tableCopy, tableCopy, v12, v13);
    goto LABEL_7;
  }

  retstr->_coordsForOwnerUid.__tree_.__begin_node_ = 0;
  retstr->_coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
  retstr->_coordsForOwnerUid.__tree_.__size_ = 0;
LABEL_7:

  return result;
}

- (TSCECellRefSet)allHeaderCellRefsLimitedToTable:(SEL)table
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x4812000000;
  v14 = sub_2214071F4;
  v15 = sub_221407200;
  v16 = &unk_22188E88F;
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  v10._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  v10._rowsPerColumn.__tree_.__size_ = 0;
  v10._rectRepresentation.origin = 0;
  v10._rectRepresentation.size = 0;
  v10._rowsPerColumn.__tree_.__begin_node_ = &v10._rowsPerColumn.__tree_.__end_node_;
  pthread_rwlock_rdlock(&self->_headerNameMgrReadWriteLock);
  for (i = self->_fragPrecedentsUsedByCellRef.__table_.__first_node_.__next_; i; i = *i)
  {
    if (a4->_lower == *(i + 6) && a4->_upper == *(i + 7) || *a4 == 0)
    {
      TSCECellCoordSet::addCellCoords(&v10, (i + 64));
    }
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_221410874;
  v9[3] = &unk_278464C40;
  v9[4] = self;
  v9[5] = &v11;
  v9[6] = a4;
  TSCECellCoordSet::enumerateCoordsUsingBlock(&v10, v9);
  pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
  sub_221279358(v12 + 6, self->_calcEngine, retstr);
  sub_22107C860(&v10._rowsPerColumn, v10._rowsPerColumn.__tree_.__end_node_.__left_);
  _Block_object_dispose(&v11, 8);
  sub_2212796F0(&v17, v18[0]);
  return result;
}

- (int)registerWithCalcEngine:(id)engine
{
  selfCopy = self;
  objc_storeStrong(&self->_calcEngine, engine);
  engineCopy = engine;
  v8 = 200;
  LODWORD(selfCopy) = objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(selfCopy->_calcEngine, v6, selfCopy->_ownerUID._lower, selfCopy->_ownerUID._upper, selfCopy, 0, 0, 0, v8);

  return selfCopy;
}

- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options
{
  atCopy = at;
  engineCopy = engine;
  if (objc_msgSend_isClosing(self, v9, v10, v11, v12))
  {
    v17 = options.var0 & 0x5F | 0x20;
LABEL_15:
    v31 = 0x80;
    goto LABEL_16;
  }

  needsTileSplittingPrecedent = self->_needsTileSplittingPrecedent;
  v20 = at.row == needsTileSplittingPrecedent.row;
  v19 = (*&needsTileSplittingPrecedent ^ *&at) & 0x101FFFF00000000;
  v20 = v20 && v19 == 0;
  if (!v20)
  {
    pthread_rwlock_rdlock(&self->_headerNameMgrReadWriteLock);
    v21 = sub_221087F14(&self->_headerPerTablePrecedentToTableUID.__table_.__bucket_list_.__ptr_, &atCopy);
    if (v21)
    {
      v81 = *(v21 + 3);
      pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
      objc_msgSend_p_processWorkForTable_(self, v22, &v81, v23, v24);
    }

    else
    {
      pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
    }

    goto LABEL_10;
  }

  if (!objc_msgSend_count(self->_tilesToConsiderSplitting, v13, v14, v15, v16))
  {
LABEL_10:
    v29 = 0;
    goto LABEL_11;
  }

  objc_msgSend_willModify(self, v25, v26, v27, v28);
  pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
  *&v81 = 0;
  if (objc_msgSend_count(self->_tilesToConsiderSplitting, v34, v35, v36, v37))
  {
    v42 = objc_msgSend_anyObject(self->_tilesToConsiderSplitting, v38, v39, v40, v41);
    objc_msgSend_removeObject_(self->_tilesToConsiderSplitting, v43, v42, v44, v45);
    v47 = objc_msgSend_findTileForString_findClosest_foundAtOffset_(self, v46, v42, 0, &v81);
    v52 = v47;
    if (v47)
    {
      v53 = objc_msgSend_splitTile(v47, v48, v49, v50, v51);
      v82 = v53;
      if (v53)
      {
        sub_22140CC6C(&self->_nameFragmentTiles, &self->_nameFragmentTiles.__begin_[v81 + 1], &v82);
        if (objc_msgSend_count(v52, v54, v55, v56, v57) >= 0xC351)
        {
          tilesToConsiderSplitting = self->_tilesToConsiderSplitting;
          v63 = objc_msgSend_firstFragment(v52, v58, v59, v60, v61);
          objc_msgSend_addObject_(tilesToConsiderSplitting, v64, v63, v65, v66);
        }

        v71 = objc_msgSend_count(v82, v58, v59, v60, v61);
        v53 = v82;
        if (v71 >= 0xC351)
        {
          v72 = self->_tilesToConsiderSplitting;
          v73 = objc_msgSend_firstFragment(v82, v67, v68, v69, v70);
          objc_msgSend_addObject_(v72, v74, v73, v75, v76);

          v53 = v82;
        }
      }
    }
  }

  else
  {
    v52 = 0;
    v42 = 0;
  }

  pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
  v29 = objc_msgSend_count(self->_tilesToConsiderSplitting, v77, v78, v79, v80) != 0;

LABEL_11:
  isClosing = objc_msgSend_isClosing(self, v25, v26, v27, v28, v81);
  v31 = 0;
  if ((v29 | isClosing))
  {
    v32 = 32;
  }

  else
  {
    v32 = 0;
  }

  v17 = v32 | options.var0 & 0x5F;
  if (isClosing)
  {
    goto LABEL_15;
  }

LABEL_16:

  return (v31 | v17);
}

- (void)writeResultsForCalcEngine:(id)engine
{
  engineCopy = engine;
  objc_msgSend_waitForQueueToDrain(self, v5, v6, v7, v8);
  objc_msgSend_willModify(self, v9, v10, v11, v12);
  begin = self->_removeFormulasDuringWritePhase.__begin_;
  end = self->_removeFormulasDuringWritePhase.__end_;
  if (begin != end)
  {
    do
    {
      calcEngine = self->_calcEngine;
      coordinate = begin->coordinate;
      tableUID = begin->_tableUID;
      objc_msgSend_removeFormulaAt_inOwner_(calcEngine, v13, &coordinate, &tableUID, v14);
      ++begin;
    }

    while (begin != end);
    begin = self->_removeFormulasDuringWritePhase.__begin_;
  }

  self->_removeFormulasDuringWritePhase.__end_ = begin;
}

- (TSCERangeRef)baseHeaderColumnsForCell:(SEL)cell
{
  *&v21.coordinate.row = a4->_tableUID;
  v8 = objc_msgSend_calcEngine(self, cell, a4, v4, v5);
  v11 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v9, &v21, v8, v10);

  v16 = objc_msgSend_numberOfHeaderColumns(v11, v12, v13, v14, v15);
  if (v16)
  {
    lower = a4->_tableUID._lower;
    upper = a4->_tableUID._upper;
    v21.coordinate = a4->coordinate.row;
    v21._tableUID._lower = lower;
    v21._tableUID._upper = upper;
    v20.coordinate = (*&v21.coordinate | ((v16 - 1) << 32));
    v20._tableUID._lower = lower;
    v20._tableUID._upper = upper;
    TSCERangeRef::TSCERangeRef(retstr, &v21, &v20);
  }

  else
  {
    retstr->range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    retstr->_tableUID._lower = 0;
    retstr->_tableUID._upper = 0;
  }

  return result;
}

- (TSCERangeRef)baseHeaderRowsForCell:(SEL)cell
{
  *&v22.coordinate.row = a4->_tableUID;
  v8 = objc_msgSend_calcEngine(self, cell, a4, v4, v5);
  v11 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v9, &v22, v8, v10);

  v16 = objc_msgSend_numberOfHeaderRows(v11, v12, v13, v14, v15);
  if (v16)
  {
    column = a4->coordinate.column;
    lower = a4->_tableUID._lower;
    upper = a4->_tableUID._upper;
    v22.coordinate = (column << 32);
    v22._tableUID._lower = lower;
    v22._tableUID._upper = upper;
    v21.coordinate.row = v16 - 1;
    v21.coordinate.column = column;
    v21._tableUID._lower = lower;
    v21._tableUID._upper = upper;
    TSCERangeRef::TSCERangeRef(retstr, &v22, &v21);
  }

  else
  {
    retstr->range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    retstr->_tableUID._lower = 0;
    retstr->_tableUID._upper = 0;
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 42) = 0;
  *(self + 43) = 0;
  *(self + 41) = 0;
  *(self + 22) = 0u;
  *(self + 23) = 0u;
  *(self + 96) = 1065353216;
  *(self + 392) = 0u;
  *(self + 408) = 0u;
  *(self + 106) = 1065353216;
  *(self + 27) = 0u;
  *(self + 28) = 0u;
  *(self + 116) = 1065353216;
  *(self + 472) = 0u;
  *(self + 488) = 0u;
  *(self + 126) = 1065353216;
  *(self + 33) = 0u;
  *(self + 34) = 0u;
  *(self + 140) = 1065353216;
  *(self + 77) = 0;
  *(self + 78) = 0;
  *(self + 76) = 0;
  return self;
}

@end