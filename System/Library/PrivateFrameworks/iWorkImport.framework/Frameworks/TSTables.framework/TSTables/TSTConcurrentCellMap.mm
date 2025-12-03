@interface TSTConcurrentCellMap
+ (id)concurrentCellMapWithContext:(id)context cellUIDRange:(TSKUIDStructTract *)range repeatCellVectorPattern:(const void *)pattern patternDirection:(int64_t)direction uidBased:(BOOL)based affectsCellBorders:(BOOL)borders;
- (BOOL)hasCells;
- (BOOL)hasMultipleCells;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)cachedColumnUIDs;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)cachedRowUIDs;
- (TSTConcurrentCellMap)initWithContext:(id)context uidBased:(BOOL)based affectsCellBorders:(BOOL)borders;
- (id).cxx_construct;
- (id)affectedBaseColumnAndRowIndexes;
- (id)cellRegionWithTableInfo:(id)info;
- (id)cellRegionWithTableInfo:(id)info passingTest:(id)test;
- (id)changeDescriptorsForTable:(id)table;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)cellCount;
- (vector<TSKUIDStructTract,)cellUIDRanges;
- (vector<TSUViewCellRect,)viewCellRects;
- (void)accumulateBordersConcurrentlyUsingBlock:(id)block accumulateCellsConcurrentlyUsingBlock:(id)usingBlock;
- (void)addHeadMergeAction:(id)action;
- (void)addMergeAction:(id)action;
- (void)addMergeActions:(id)actions;
- (void)appendCellList:(id)list;
- (void)appendCellLists:(id)lists;
- (void)clearDataListIDs;
- (void)clearMerges;
- (void)convertToInverseCellMap;
- (void)convertToUuidBasedCellMapUsingTableInfo:(id)info pruneCategorizedCells:(BOOL)cells;
- (void)enumerateCellsAddedAndRemovedOfType:(unint64_t)type withOptions:(unint64_t)options usingBlock:(id)block;
- (void)enumerateCellsAddedOfType:(unint64_t)type withOptions:(unint64_t)options usingBlock:(id)block;
- (void)enumerateColumnCellCountDiffUsingBlock:(id)block;
- (void)enumerateCustomFormatsBeingAddedUsingReplacementBlock:(id)block;
- (void)enumerateRowCellCountDiffUsingBlock:(id)block;
- (void)enumerateRowsOfCellsConcurrentlyUsingBlock:(id)block;
- (void)enumerateSeriallyUsingBlock:(id)block;
- (void)gatherRowState:(id)state;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_cacheRowColumnUIDs;
- (void)p_enumerateCellsAddedAndRemovedForFormatsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)p_enumerateNewAndOldCellsSeriallyUsingBlock:(id)block;
- (void)pushInverseMergeAction:(id)action;
- (void)saveToArchiver:(id)archiver;
- (void)setCachedColumnUIDs:(TSKUIDStructVectorTemplate<TSKUIDStruct> *)ds;
- (void)setCachedRowUIDs:(TSKUIDStructVectorTemplate<TSKUIDStruct> *)ds;
- (void)updateDataListsConcurrentlyUsingCommentStorageBlock:(id)block conditionalStyleSetBlock:(id)setBlock controlCellSpecBlock:(id)specBlock formulaBlock:(id)formulaBlock formulaErrorBlock:(id)errorBlock importWarningSetBlock:(id)warningSetBlock richTextBlock:(id)textBlock stringBlock:(id)self0 styleBlock:(id)self1 customFormatBlock:(id)self2 formatBlock:(id)self3;
- (void)willApplyToTable:(id)table;
- (void)willApplyToTableModel:(id)model;
@end

@implementation TSTConcurrentCellMap

- (TSTConcurrentCellMap)initWithContext:(id)context uidBased:(BOOL)based affectsCellBorders:(BOOL)borders
{
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = TSTConcurrentCellMap;
  v13 = [(TSTConcurrentCellMap *)&v17 initWithContext:contextCopy];
  if (v13)
  {
    v14 = objc_msgSend_array(MEMORY[0x277CBEB18], v9, v10, v11, v12);
    cellLists = v13->_cellLists;
    v13->_cellLists = v14;

    v13->_uidBased = based;
    v13->_mayModifyFormulasInCells = 1;
    v13->_mayModifyValuesReferencedByFormulas = 1;
    v13->_skipDirtyingRanges = 0;
    v13->_affectsCellBorders = borders;
    v13->_shouldResetSpillFormulas = 1;
  }

  return v13;
}

+ (id)concurrentCellMapWithContext:(id)context cellUIDRange:(TSKUIDStructTract *)range repeatCellVectorPattern:(const void *)pattern patternDirection:(int64_t)direction uidBased:(BOOL)based affectsCellBorders:(BOOL)borders
{
  bordersCopy = borders;
  basedCopy = based;
  contextCopy = context;
  v14 = [TSTCellUIDRegion alloc];
  v18 = objc_msgSend_initWithCellUIDRange_(v14, v15, range, v16, v17);
  v48 = v18;
  v23 = objc_msgSend_cellCount(v18, v19, v20, v21, v22);
  if (v18)
  {
    objc_msgSend_rowBasedSubRangesOfCellCount_(v18, v24, v23 >> 7, v25, v26);
  }

  else
  {
    v62 = 0;
    v63 = 0;
    v64 = 0;
  }

  v27 = [TSTConcurrentCellMap alloc];
  v29 = objc_msgSend_initWithContext_uidBased_affectsCellBorders_(v27, v28, contextCopy, basedCopy, bordersCopy);
  v30 = v62;
  v31 = v63;
  if (direction)
  {
    if (v62 != v63)
    {
      v32 = 0;
      do
      {
        v33 = *pattern + 8 * v32;
        v34 = v30[4] - v30[3];
        memset(v55, 0, sizeof(v55));
        sub_22116C7FC(v55, v33, v33 + (v34 >> 1), v34 >> 4);
        v35 = v30[3];
        v36 = v30[4];
        v50 = 0;
        v51 = 0;
        v49 = 0;
        sub_221086EBC(&v49, *v30, v30[1], (v30[1] - *v30) >> 4);
        __p = 0;
        v53 = 0;
        v54 = 0;
        sub_221086EBC(&__p, v30[3], v30[4], (v30[4] - v30[3]) >> 4);
        v41 = objc_msgSend_cellListWithContext_cellUIDRange_repeatCellVectorPattern_patternDirection_(TSTConcurrentCellList, v37, contextCopy, &v49, v55, 1);
        if (__p)
        {
          v53 = __p;
          operator delete(__p);
        }

        if (v49)
        {
          v50 = v49;
          operator delete(v49);
        }

        objc_msgSend_appendCellList_(v29, v38, v41, v39, v40);
        v32 += (v36 - v35) >> 4;

        v65 = v55;
        sub_22107C2C0(&v65);
        v30 += 6;
      }

      while (v30 != v31);
    }
  }

  else if (v62 != v63)
  {
    do
    {
      v57 = 0;
      v58 = 0;
      v56 = 0;
      sub_221086EBC(&v56, *v30, v30[1], (v30[1] - *v30) >> 4);
      v59 = 0;
      v60 = 0;
      v61 = 0;
      sub_221086EBC(&v59, v30[3], v30[4], (v30[4] - v30[3]) >> 4);
      v46 = objc_msgSend_cellListWithContext_cellUIDRange_repeatCellVectorPattern_patternDirection_(TSTConcurrentCellList, v42, contextCopy, &v56, pattern, 0);
      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      objc_msgSend_appendCellList_(v29, v43, v46, v44, v45);

      v30 += 6;
    }

    while (v30 != v31);
  }

  v55[0] = &v62;
  sub_2210BC30C(v55);

  return v29;
}

- (void)convertToUuidBasedCellMapUsingTableInfo:(id)info pruneCategorizedCells:(BOOL)cells
{
  infoCopy = info;
  if (!self->_uidBased)
  {
    v11 = objc_msgSend_count(self->_cellLists, v6, v7, v8, v9);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22115E36C;
    block[3] = &unk_27845FC00;
    block[4] = self;
    v13 = infoCopy;
    cellsCopy = cells;
    dispatch_apply(v11, 0, block);
  }

  self->_uidBased = 1;
}

- (BOOL)hasCells
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_cellLists;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v12, v16, 16);
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v2);
        }

        if (objc_msgSend_hasCells(*(*(&v12 + 1) + 8 * i), v4, v5, v6, v7, v12))
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v12, v16, 16);
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

- (BOOL)hasMultipleCells
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = self->_cellLists;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v13, v17, 16);
  if (v8)
  {
    v9 = 0;
    v10 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v2);
        }

        v9 += objc_msgSend_cellCount(*(*(&v13 + 1) + 8 * i), v4, v5, v6, v7, v13);
        if (v9 > 1)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v13, v17, 16);
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

- (unint64_t)cellCount
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = self->_cellLists;
  v4 = 0;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v13, v17, 16);
  if (v9)
  {
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v2);
        }

        v4 += objc_msgSend_cellCount(*(*(&v13 + 1) + 8 * v11++), v5, v6, v7, v8, v13);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v13, v17, 16);
    }

    while (v9);
  }

  return v4;
}

- (vector<TSUViewCellRect,)viewCellRects
{
  v48 = *MEMORY[0x277D85DE8];
  if (self->_uidBased)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSTConcurrentCellMap viewCellRects]", v4, v5);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 261, 0, "can't use cellid interface with celluid map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v19 = objc_msgSend_count(self->_cellLists, a3, v3, v4, v5);
  sub_221083368(retstr, v19);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v20 = self->_cellLists;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v43, v47, 16);
  if (v26)
  {
    v27 = *v44;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v44 != v27)
        {
          objc_enumerationMutation(v20);
        }

        v29 = objc_msgSend_viewCellRect(*(*(&v43 + 1) + 8 * i), v22, v23, v24, v25, v43);
        v30 = v22;
        var1 = retstr->var1;
        var2 = retstr->var2;
        if (var1 >= var2)
        {
          v34 = var1 - retstr->var0;
          v35 = v34 + 1;
          if ((v34 + 1) >> 60)
          {
            sub_22107C148();
          }

          v36 = var2 - retstr->var0;
          if (v36 >> 3 > v35)
          {
            v35 = v36 >> 3;
          }

          if (v36 >= 0x7FFFFFFFFFFFFFF0)
          {
            v37 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v37 = v35;
          }

          if (v37)
          {
            sub_221086F74(retstr, v37);
          }

          v38 = (16 * v34);
          *v38 = v29;
          v38[1] = v30;
          v33 = (16 * v34 + 16);
          v39 = retstr->var1 - retstr->var0;
          v40 = (16 * v34 - v39);
          memcpy(v40, retstr->var0, v39);
          var0 = retstr->var0;
          retstr->var0 = v40;
          retstr->var1 = v33;
          retstr->var2 = 0;
          if (var0)
          {
            operator delete(var0);
          }
        }

        else
        {
          var1->_rect.origin = v29;
          var1->_rect.size = v22;
          v33 = var1 + 1;
        }

        retstr->var1 = v33;
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v43, v47, 16);
    }

    while (v26);
  }

  return result;
}

- (vector<TSKUIDStructTract,)cellUIDRanges
{
  v41 = *MEMORY[0x277D85DE8];
  if (!self->_uidBased)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSTConcurrentCellMap cellUIDRanges]", v4, v5);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 272, 0, "can't use celluid interface with cellid map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v19 = objc_msgSend_count(self->_cellLists, a3, v3, v4, v5);
  sub_22115ECD8(retstr, v19);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = self->_cellLists;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v36, v40, 16);
  if (v26)
  {
    v27 = *v37;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(v20);
        }

        v29 = *(*(&v36 + 1) + 8 * i);
        if (v29)
        {
          objc_msgSend_cellUIDRange(v29, v22, v23, v24, v25);
        }

        else
        {
          memset(__p, 0, sizeof(__p));
          *v34 = 0u;
        }

        end = retstr->__end_;
        if (end >= retstr->__cap_)
        {
          v31 = sub_22116C87C(retstr, v34);
          v32 = __p[1];
          retstr->__end_ = v31;
          if (v32)
          {
            __p[2] = v32;
            operator delete(v32);
          }
        }

        else
        {
          end->_colIdList.__cap_ = 0;
          end->_rowIdList.__begin_ = 0;
          end->_colIdList.__begin_ = 0;
          end->_colIdList.__end_ = 0;
          *&end->_colIdList.__begin_ = *v34;
          end->_colIdList.__cap_ = __p[0];
          v34[0] = 0;
          v34[1] = 0;
          __p[0] = 0;
          end->_rowIdList.__end_ = 0;
          end->_rowIdList.__cap_ = 0;
          *&end->_rowIdList.__begin_ = *&__p[1];
          end->_rowIdList.__cap_ = __p[3];
          memset(&__p[1], 0, 24);
          retstr->__end_ = end + 1;
        }

        if (v34[0])
        {
          v34[1] = v34[0];
          operator delete(v34[0]);
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v36, v40, 16);
    }

    while (v26);
  }

  return result;
}

- (void)p_cacheRowColumnUIDs
{
  selfCopy2 = self;
  v61 = *MEMORY[0x277D85DE8];
  if (!self->_uidBased)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTConcurrentCellMap p_cacheRowColumnUIDs]", v2, v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 283, 0, "can't use celluid interface with cellid map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
    selfCopy2 = self;
  }

  p_cachedRowUIDs = &selfCopy2->_cachedRowUIDs;
  if (selfCopy2->_cachedRowUIDs.__begin_ == selfCopy2->_cachedRowUIDs.__end_ || selfCopy2->_cachedColumnUIDs.__begin_ == selfCopy2->_cachedColumnUIDs.__end_)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v17 = selfCopy2->_cellLists;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v56, v60, 16);
    v51 = selfCopy2;
    if (v23)
    {
      v24 = 0;
      v25 = 0;
      v26 = *v57;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v57 != v26)
          {
            objc_enumerationMutation(v17);
          }

          v28 = *(*(&v56 + 1) + 8 * i);
          if (v24)
          {
            if (v28)
            {
              objc_msgSend_cellUIDRange(*(*(&v56 + 1) + 8 * i), v19, v20, v21, v22);
            }

            else
            {
              *__p = 0u;
              v55 = 0u;
              *v53 = 0u;
            }

            objc_msgSend_addUuidsFromVector_(v24, v19, &__p[1], v21, v22, v51);
            if (__p[1])
            {
              *&v55 = __p[1];
              operator delete(__p[1]);
            }

            if (v53[0])
            {
              v53[1] = v53[0];
              operator delete(v53[0]);
            }

            if (v28)
            {
              objc_msgSend_cellUIDRange(v28, v34, v35, v36, v37);
            }

            else
            {
              *__p = 0u;
              v55 = 0u;
              *v53 = 0u;
            }

            objc_msgSend_addUuidsFromVector_(v25, v34, v53, v36, v37);
            if (__p[1])
            {
              *&v55 = __p[1];
              operator delete(__p[1]);
            }

            if (v53[0])
            {
              v53[1] = v53[0];
              operator delete(v53[0]);
            }
          }

          else
          {
            v33 = [TSCEMutableUIDSet alloc];
            if (v28)
            {
              objc_msgSend_cellUIDRange(v28, v29, v30, v31, v32);
            }

            else
            {
              *__p = 0u;
              v55 = 0u;
              *v53 = 0u;
            }

            v24 = objc_msgSend_initWithUUIDVector_(v33, v29, &__p[1], v31, v32, v51);
            if (__p[1])
            {
              *&v55 = __p[1];
              operator delete(__p[1]);
            }

            if (v53[0])
            {
              v53[1] = v53[0];
              operator delete(v53[0]);
            }

            v42 = [TSCEMutableUIDSet alloc];
            if (v28)
            {
              objc_msgSend_cellUIDRange(v28, v38, v39, v40, v41);
            }

            else
            {
              *__p = 0u;
              v55 = 0u;
              *v53 = 0u;
            }

            v43 = objc_msgSend_initWithUUIDVector_(v42, v38, v53, v40, v41);

            if (__p[1])
            {
              *&v55 = __p[1];
              operator delete(__p[1]);
            }

            if (v53[0])
            {
              v53[1] = v53[0];
              operator delete(v53[0]);
            }

            v25 = v43;
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v56, v60, 16);
      }

      while (v23);

      if (v24)
      {
        objc_msgSend_uuidsAsVector(v24, v44, v45, v46, v47);
LABEL_46:
        begin = p_cachedRowUIDs->__begin_;
        if (p_cachedRowUIDs->__begin_)
        {
          p_cachedRowUIDs->__end_ = begin;
          operator delete(begin);
          p_cachedRowUIDs->__begin_ = 0;
          p_cachedRowUIDs->__end_ = 0;
          p_cachedRowUIDs->__cap_ = 0;
        }

        *&p_cachedRowUIDs->__begin_ = *v53;
        p_cachedRowUIDs->__cap_ = __p[0];
        if (v25)
        {
          objc_msgSend_uuidsAsVector(v25, v44, v45, v46, v47);
        }

        else
        {
          v53[0] = 0;
          v53[1] = 0;
          __p[0] = 0;
        }

        p_cachedColumnUIDs = &v51->_cachedColumnUIDs;
        v50 = v51->_cachedColumnUIDs.__begin_;
        if (v50)
        {
          v51->_cachedColumnUIDs.__end_ = v50;
          operator delete(v50);
          p_cachedColumnUIDs->__begin_ = 0;
          v51->_cachedColumnUIDs.__end_ = 0;
          v51->_cachedColumnUIDs.__cap_ = 0;
        }

        *&p_cachedColumnUIDs->__begin_ = *v53;
        v51->_cachedColumnUIDs.__cap_ = __p[0];

        return;
      }
    }

    else
    {

      v25 = 0;
    }

    v24 = 0;
    v53[0] = 0;
    v53[1] = 0;
    __p[0] = 0;
    goto LABEL_46;
  }
}

- (void)accumulateBordersConcurrentlyUsingBlock:(id)block accumulateCellsConcurrentlyUsingBlock:(id)usingBlock
{
  cellLists = self->_cellLists;
  v8 = objc_msgSend_count(cellLists, a2, block, usingBlock, v4);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22115F32C;
  block[3] = &unk_27845FC28;
  block[5] = usingBlock;
  block[6] = cellLists;
  block[4] = block;
  dispatch_apply(v8, 0, block);
}

- (void)appendCellList:(id)list
{
  listCopy = list;
  isUIDBased = objc_msgSend_isUIDBased(listCopy, v4, v5, v6, v7);
  if (isUIDBased != objc_msgSend_isUIDBased(self, v9, v10, v11, v12))
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTConcurrentCellMap appendCellList:]", v14, v15);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 324, 0, "cell list uid state doesn't match cell map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  cellLists = self->_cellLists;
  if (cellLists)
  {
    objc_msgSend_addObject_(cellLists, v13, listCopy, v14, v15);
  }

  else
  {
    v28 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v13, listCopy, v14, v15);
    v29 = self->_cellLists;
    self->_cellLists = v28;
  }
}

- (void)appendCellLists:(id)lists
{
  listsCopy = lists;
  if (objc_msgSend_count(listsCopy, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_firstObject(listsCopy, v8, v9, v10, v11);
    isUIDBased = objc_msgSend_isUIDBased(v12, v13, v14, v15, v16);
    v22 = objc_msgSend_isUIDBased(self, v18, v19, v20, v21);

    if (isUIDBased != v22)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTConcurrentCellMap appendCellLists:]", v10, v11);
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v26, v27);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v28, 333, 0, "cell list uid state doesn't match cell map");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
    }
  }

  cellLists = self->_cellLists;
  if (cellLists)
  {
    objc_msgSend_addObjectsFromArray_(cellLists, v8, listsCopy, v10, v11);
  }

  else
  {
    v35 = objc_msgSend_mutableCopy(listsCopy, v8, v9, v10, v11);
    v36 = self->_cellLists;
    self->_cellLists = v35;
  }
}

- (id)changeDescriptorsForTable:(id)table
{
  v89 = *MEMORY[0x277D85DE8];
  tableCopy = table;
  v79 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7, v8);
  v77 = objc_msgSend_cellRegionWithTableInfo_(self, v9, tableCopy, v10, v11);
  v14 = objc_msgSend_changeDescriptorWithType_cellRegion_(TSTChangeDescriptor, v12, 37, v77, v13);
  objc_msgSend_addObject_(v79, v15, v14, v16, v17);

  v18 = v77;
  v23 = objc_msgSend_affectsCellBorders(self, v19, v20, v21, v22);
  v27 = v18;
  if (v23)
  {
    v28 = objc_msgSend_gatherer(TSTCellRegionGatherer, v24, v25, v18, v26);
    v29 = v18;
    v34 = objc_msgSend_cellRanges(v29, v30, v31, v32, v33);
    __p = 0;
    v86 = 0;
    v87 = 0;
    sub_22116C9DC(&__p, *v34, v34[1], (v34[1] - *v34) >> 4);
    v39 = __p;
    v40 = v86;
    if (__p != v86)
    {
      do
      {
        v84 = *v39;
        TSUCellRect::inset();
        objc_msgSend_addRange_(v28, v41, v84, *(&v84 + 1), v42);
        ++v39;
      }

      while (v39 != v40);
    }

    v43 = objc_msgSend_gatheredCellRegion(v28, v35, v36, v37, v38);

    if (__p)
    {
      v86 = __p;
      operator delete(__p);
    }

    v27 = v43;
  }

  v78 = v27;
  v44 = objc_msgSend_changeDescriptorWithType_strokeRegion_(TSTChangeDescriptor, v24, 32, v27, v26);
  objc_msgSend_addObject_(v79, v45, v44, v46, v47);

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v52 = objc_msgSend_mergeActions(self, v48, v49, v50, v51);
  v54 = 0;
  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, &v80, v88, 16);
  if (v58)
  {
    v59 = *v81;
    do
    {
      v60 = 0;
      v61 = v54;
      do
      {
        if (*v81 != v59)
        {
          objc_enumerationMutation(v52);
        }

        v62 = objc_msgSend_cellRegionForTable_(*(*(&v80 + 1) + 8 * v60), v55, tableCopy, v56, v57);
        v54 = objc_msgSend_region_addingRegion_(TSTCellRegion, v63, v61, v62, v64);

        ++v60;
        v61 = v54;
      }

      while (v58 != v60);
      v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v55, &v80, v88, 16);
    }

    while (v58);
  }

  if (objc_msgSend_cellCount(v54, v65, v66, v67, v68))
  {
    v71 = objc_msgSend_changeDescriptorWithType_cellRegion_strokeRegion_(TSTChangeDescriptor, v69, 17, v54, v54);
    objc_msgSend_addObject_(v79, v72, v71, v73, v74);
  }

  v75 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v69, v79, v18, v70);

  return v75;
}

- (void)clearDataListIDs
{
  cellLists = self->_cellLists;
  v6 = objc_msgSend_count(cellLists, a2, v2, v3, v4);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22115FACC;
  block[3] = &unk_27845FC48;
  block[4] = cellLists;
  dispatch_apply(v6, 0, block);
}

- (id)affectedBaseColumnAndRowIndexes
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, v2, v3, v4);
  v11 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v7, v8, v9, v10);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = self->_cellLists;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v38, v42, 16);
  if (v18)
  {
    v19 = *v39;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(v12);
        }

        v21 = *(*(&v38 + 1) + 8 * i);
        v22 = objc_msgSend_p_baseColumnIndexes(v21, v14, v15, v16, v17, v38);
        objc_msgSend_addIndexes_(v6, v23, v22, v24, v25);

        v30 = objc_msgSend_p_baseRowIndexes(v21, v26, v27, v28, v29);
        objc_msgSend_addIndexes_(v11, v31, v30, v32, v33);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v38, v42, 16);
    }

    while (v18);
  }

  v36 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v34, v6, v11, v35);

  return v36;
}

- (id)cellRegionWithTableInfo:(id)info
{
  infoCopy = info;
  if (objc_msgSend_isUIDBased(self, v5, v6, v7, v8))
  {
    v13 = [TSTCellUIDRegion alloc];
    objc_msgSend_cellUIDRanges(self, v14, v15, v16, v17);
    v21 = objc_msgSend_initWithCellUIDRangeVector_(v13, v18, __p, v19, v20);
    v31 = __p;
    sub_2210BC30C(&v31);
    v25 = objc_msgSend_cellRegionFromCellUIDRegion_(infoCopy, v22, v21, v23, v24);
  }

  else
  {
    objc_msgSend_viewCellRects(self, v9, v10, v11, v12);
    v25 = objc_msgSend_regionFromViewCellRectVector_(TSTCellRegion, v26, __p, v27, v28);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  return v25;
}

- (id)cellRegionWithTableInfo:(id)info passingTest:(id)test
{
  infoCopy = info;
  testCopy = test;
  if (testCopy)
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x4812000000;
    v46 = sub_2211600C4;
    v47 = sub_2211600E8;
    v48 = &unk_22188E88F;
    memset(v49, 0, sizeof(v49));
    v12 = objc_msgSend_count(self->_cellLists, v7, v8, v9, v10);
    sub_221160114(v49, v12);
    v17 = objc_msgSend_count(self->_cellLists, v13, v14, v15, v16);
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = sub_22116019C;
    v38 = &unk_27845FC98;
    selfCopy = self;
    v41 = testCopy;
    v40 = infoCopy;
    v42 = &v43;
    dispatch_apply(v17, 0, &v35);
    v26 = objc_msgSend_gatherer(TSTCellRegionGatherer, v18, v19, v20, v21, v35, v36, v37, v38, selfCopy);
    v27 = v44[6];
    v28 = v44[7];
    while (v27 != v28)
    {
      v29 = *v27;
      objc_msgSend_addRegion_(v26, v30, v29, v31, v32);

      ++v27;
    }

    v33 = objc_msgSend_gatheredCellRegion(v26, v22, v23, v24, v25);

    _Block_object_dispose(&v43, 8);
    v50 = v49;
    sub_22107C2C0(&v50);
  }

  else
  {
    v33 = objc_msgSend_cellRegionWithTableInfo_(self, v7, infoCopy, v9, v10);
  }

  return v33;
}

- (void)enumerateSeriallyUsingBlock:(id)block
{
  v47 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!self->_uidBased)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellMap enumerateSeriallyUsingBlock:]", v5, v6);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 485, 0, "need a celluid based map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  if (!self->_applyingToTable)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellMap enumerateSeriallyUsingBlock:]", v5, v6);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 488, 0, "check that willApplyToTable was called already");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v30 = self->_cellLists;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v42, v46, 16);
  if (v32)
  {
    v33 = *v43;
    do
    {
      v34 = 0;
      do
      {
        if (*v43 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v42 + 1) + 8 * v34);
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = sub_2211607F4;
        v40[3] = &unk_27845FCC0;
        v41 = blockCopy;
        objc_msgSend_p_invokeBlock_(v35, v36, v40, v37, v38);

        ++v34;
      }

      while (v32 != v34);
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v39, &v42, v46, 16);
    }

    while (v32);
  }
}

- (void)p_enumerateNewAndOldCellsSeriallyUsingBlock:(id)block
{
  v32 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!self->_applyingToTable)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellMap p_enumerateNewAndOldCellsSeriallyUsingBlock:]", v5, v6);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 499, 0, "check that willApplyToTable was called already");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = self->_cellLists;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v27, v31, 16);
  if (v24)
  {
    v25 = *v28;
    do
    {
      v26 = 0;
      do
      {
        if (*v28 != v25)
        {
          objc_enumerationMutation(v19);
        }

        objc_msgSend_p_enumerateNewAndOldCellsSeriallyUsingBlock_(*(*(&v27 + 1) + 8 * v26++), v21, blockCopy, v22, v23, v27);
      }

      while (v24 != v26);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v27, v31, 16);
    }

    while (v24);
  }
}

- (void)enumerateCellsAddedAndRemovedOfType:(unint64_t)type withOptions:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  v29 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (optionsCopy)
  {
    v20 = objc_msgSend_count(self->_cellLists, v8, v9, v10, v11);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_221160BA4;
    block[3] = &unk_27845FCE8;
    block[4] = self;
    typeCopy = type;
    v26 = blockCopy;
    dispatch_apply(v20, 0, block);
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = self->_cellLists;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v21, v28, 16);
    if (v17)
    {
      v18 = *v22;
      do
      {
        v19 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v13);
          }

          objc_msgSend_p_enumerateCellsAddedAndRemovedOfType_usingBlock_(*(*(&v21 + 1) + 8 * v19++), v15, type, blockCopy, v16, v21);
        }

        while (v17 != v19);
        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v21, v28, 16);
      }

      while (v17);
    }
  }
}

- (void)enumerateCellsAddedOfType:(unint64_t)type withOptions:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  v29 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (optionsCopy)
  {
    v20 = objc_msgSend_count(self->_cellLists, v8, v9, v10, v11);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_221160DEC;
    block[3] = &unk_27845FCE8;
    block[4] = self;
    typeCopy = type;
    v26 = blockCopy;
    dispatch_apply(v20, 0, block);
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = self->_cellLists;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v21, v28, 16);
    if (v17)
    {
      v18 = *v22;
      do
      {
        v19 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v13);
          }

          objc_msgSend_p_enumerateCellsAddedOfType_usingBlock_(*(*(&v21 + 1) + 8 * v19++), v15, type, blockCopy, v16, v21);
        }

        while (v17 != v19);
        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v21, v28, 16);
      }

      while (v17);
    }
  }
}

- (void)p_enumerateCellsAddedAndRemovedForFormatsWithOptions:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  v27 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (optionsCopy)
  {
    v19 = objc_msgSend_count(self->_cellLists, v6, v7, v8, v9);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_221161020;
    block[3] = &unk_27845FD10;
    block[4] = self;
    v25 = blockCopy;
    dispatch_apply(v19, 0, block);
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = self->_cellLists;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v20, v26, 16);
    if (v16)
    {
      v17 = *v21;
      do
      {
        v18 = 0;
        do
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v11);
          }

          objc_msgSend_p_enumerateCellsAddedAndRemovedForFormatsUsingBlock_(*(*(&v20 + 1) + 8 * v18++), v13, blockCopy, v14, v15, v20);
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v20, v26, 16);
      }

      while (v16);
    }
  }
}

- (void)gatherRowState:(id)state
{
  v18 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_cellLists;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v13, v17, 16);
  if (v10)
  {
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_p_gatherRowState_(*(*(&v13 + 1) + 8 * v12++), v7, stateCopy, v8, v9, v13);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v13, v17, 16);
    }

    while (v10);
  }
}

- (void)enumerateRowsOfCellsConcurrentlyUsingBlock:(id)block
{
  blockCopy = block;
  if (!self->_applyingToTable)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellMap enumerateRowsOfCellsConcurrentlyUsingBlock:]", v6, v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 559, 0, "willApplyToTable should be called first");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  cellLists = self->_cellLists;
  v21 = objc_msgSend_count(cellLists, v4, v5, v6, v7);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_221161330;
  v23[3] = &unk_27845FD38;
  v24 = blockCopy;
  v25 = cellLists;
  v22 = blockCopy;
  dispatch_apply(v21, 0, v23);
}

- (void)updateDataListsConcurrentlyUsingCommentStorageBlock:(id)block conditionalStyleSetBlock:(id)setBlock controlCellSpecBlock:(id)specBlock formulaBlock:(id)formulaBlock formulaErrorBlock:(id)errorBlock importWarningSetBlock:(id)warningSetBlock richTextBlock:(id)textBlock stringBlock:(id)self0 styleBlock:(id)self1 customFormatBlock:(id)self2 formatBlock:(id)self3
{
  blockCopy = block;
  setBlockCopy = setBlock;
  specBlockCopy = specBlock;
  formulaBlockCopy = formulaBlock;
  errorBlockCopy = errorBlock;
  warningSetBlockCopy = warningSetBlock;
  textBlockCopy = textBlock;
  stringBlockCopy = stringBlock;
  styleBlockCopy = styleBlock;
  formatBlockCopy = formatBlock;
  v25 = a13;
  if (!self->_applyingToTable)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSTConcurrentCellMap updateDataListsConcurrentlyUsingCommentStorageBlock:conditionalStyleSetBlock:controlCellSpecBlock:formulaBlock:formulaErrorBlock:importWarningSetBlock:richTextBlock:stringBlock:styleBlock:customFormatBlock:formatBlock:]", v23, v24);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v29, v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v32, v27, v31, 580, 0, "willApplyToTable should be called first");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2211616C0;
  block[3] = &unk_27845FD88;
  block[4] = self;
  v59 = stringBlockCopy;
  v60 = v25;
  v61 = formulaBlockCopy;
  v62 = styleBlockCopy;
  v63 = errorBlockCopy;
  v37 = styleBlockCopy;
  v38 = textBlockCopy;
  v64 = textBlockCopy;
  v65 = setBlockCopy;
  v66 = blockCopy;
  v67 = warningSetBlockCopy;
  v68 = specBlockCopy;
  v69 = formatBlockCopy;
  v49 = formatBlockCopy;
  v53 = specBlockCopy;
  v51 = warningSetBlockCopy;
  v39 = stringBlockCopy;
  v40 = blockCopy;
  v41 = setBlockCopy;
  v42 = v38;
  v43 = errorBlockCopy;
  v44 = v37;
  v45 = formulaBlockCopy;
  v46 = v25;
  v47 = v39;
  dispatch_apply(0xCuLL, 0, block);
}

- (void)enumerateColumnCellCountDiffUsingBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_cellLists;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v13, v17, 16);
  if (v10)
  {
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_p_enumerateColumnCellCountDiffUsingBlock_(*(*(&v13 + 1) + 8 * v12++), v7, blockCopy, v8, v9, v13);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v13, v17, 16);
    }

    while (v10);
  }
}

- (void)enumerateRowCellCountDiffUsingBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_cellLists;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v13, v17, 16);
  if (v10)
  {
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_p_enumerateRowCellCountDiffUsingBlock_(*(*(&v13 + 1) + 8 * v12++), v7, blockCopy, v8, v9, v13);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v13, v17, 16);
    }

    while (v10);
  }
}

- (void)enumerateCustomFormatsBeingAddedUsingReplacementBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_cellLists;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v13, v17, 16);
  if (v10)
  {
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_p_enumerateCustomFormatsBeingAddedUsingReplacementBlock_(*(*(&v13 + 1) + 8 * v12++), v7, blockCopy, v8, v9, v13);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v13, v17, 16);
    }

    while (v10);
  }
}

- (void)willApplyToTable:(id)table
{
  tableCopy = table;
  if (self->_applyingToTable)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellMap willApplyToTable:]", v6, v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 667, 0, "applyingToTable already called");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  self->_applyingToTable = 1;
  if (!self->_uidBased)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellMap willApplyToTable:]", v6, v7);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 670, 0, "need a uidBased cell map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  cellLists = self->_cellLists;
  v32 = objc_msgSend_translator(tableCopy, v4, v5, v6, v7);
  if (objc_msgSend_isCategorized(tableCopy, v33, v34, v35, v36))
  {
    isAPivotTable = 1;
  }

  else
  {
    isAPivotTable = objc_msgSend_isAPivotTable(tableCopy, v37, v38, v39, v40);
  }

  v46 = objc_msgSend_baseMap(v32, v37, v38, v39, v40);
  if (isAPivotTable)
  {
    v47 = objc_msgSend_viewMap(v32, v42, v43, v44, v45);
  }

  else
  {
    v47 = 0;
  }

  v48 = objc_msgSend_count(cellLists, v42, v43, v44, v45);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_221162C98;
  block[3] = &unk_27845FDB0;
  block[4] = cellLists;
  block[5] = v46;
  block[6] = v47;
  dispatch_apply(v48, 0, block);
}

- (void)willApplyToTableModel:(id)model
{
  modelCopy = model;
  if (self->_applyingToTable)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellMap willApplyToTableModel:]", v6, v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 687, 0, "applyingToTable already called");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  self->_applyingToTable = 1;
  if (!self->_uidBased)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellMap willApplyToTableModel:]", v6, v7);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 690, 0, "need a uidBased cell map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  cellLists = self->_cellLists;
  v32 = objc_msgSend_columnRowUIDMap(modelCopy, v4, v5, v6, v7);
  v37 = objc_msgSend_count(self->_cellLists, v33, v34, v35, v36);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_221162EE0;
  v38[3] = &unk_27845FB10;
  v38[4] = cellLists;
  v38[5] = v32;
  dispatch_apply(v37, 0, v38);
}

- (void)convertToInverseCellMap
{
  if (!self->_applyingToTable)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTConcurrentCellMap convertToInverseCellMap]", v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 702, 0, "willApplyToTable was not called or didApplyToTable called twice");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  cellLists = self->_cellLists;
  v18 = objc_msgSend_count(cellLists, a2, v2, v3, v4);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_221163090;
  block[3] = &unk_27845FC48;
  block[4] = cellLists;
  dispatch_apply(v18, 0, block);
  objc_storeStrong(&self->_mergeActions, self->_inverseMergeActions);
  inverseMergeActions = self->_inverseMergeActions;
  self->_inverseMergeActions = 0;

  self->_applyingToTable = 0;
}

- (void)addMergeAction:(id)action
{
  actionCopy = action;
  if (actionCopy)
  {
    if (!self->_mergeActions)
    {
      v8 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5, v6, v7);
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
      v8 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5, v6, v7);
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
      objc_msgSend_addObjectsFromArray_(mergeActions, v8, actionsCopy, v10, v11);
    }

    else
    {
      v13 = objc_msgSend_mutableCopy(actionsCopy, v8, v9, v10, v11);
      v14 = self->_mergeActions;
      self->_mergeActions = v13;
    }
  }
}

- (void)pushInverseMergeAction:(id)action
{
  actionCopy = action;
  if (!self->_applyingToTable)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellMap pushInverseMergeAction:]", v6, v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 759, 0, "willApplyToTable should have been called");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  if (actionCopy)
  {
    if (!self->_inverseMergeActions)
    {
      v19 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5, v6, v7);
      inverseMergeActions = self->_inverseMergeActions;
      self->_inverseMergeActions = v19;
    }

    objc_msgSend_verify(actionCopy, v4, v5, v6, v7);
    objc_msgSend_insertObject_atIndex_(self->_inverseMergeActions, v21, actionCopy, 0, v22);
  }
}

- (void)clearMerges
{
  mergeActions = self->_mergeActions;
  self->_mergeActions = 0;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[110], v6, v7);

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_2211636A8;
  v28[3] = &unk_27845D8D8;
  v28[4] = self;
  v9 = unarchiverCopy;
  v10 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v9, v11, v8 + 24, v10, 0, v28);

  self->_uidBased = *(v8 + 72);
  v15 = *(v8 + 64);
  if (v15)
  {
    v16 = (v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v8 + 56);
  if (v17)
  {
    v18 = 8 * v17;
    do
    {
      TST::MergeOperationArchive::MergeOperationArchive(v27, *v16);
      v19 = [TSTMergeAction alloc];
      v22 = objc_msgSend_initWithArchive_unarchiver_(v19, v20, v27, v9, v21);
      objc_msgSend_addMergeAction_(self, v23, v22, v24, v25);

      TST::MergeOperationArchive::~MergeOperationArchive(v27);
      ++v16;
      v18 -= 8;
    }

    while (v18);
  }

  self->_mayModifyFormulasInCells = *(v8 + 74);
  self->_mayModifyValuesReferencedByFormulas = *(v8 + 75);
  self->_affectsCellBorders = *(v8 + 76);
  self->_skipDirtyingRanges = *(v8 + 73);
  self->_shouldResetSpillFormulas = *(v8 + 77);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_2211636BC;
  v26[3] = &unk_27845E3F8;
  v26[4] = self;
  objc_msgSend_addFinalizeHandler_(v9, v12, v26, v13, v14);
}

- (void)saveToArchiver:(id)archiver
{
  v39 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_22116CB58, off_2812E4498[110], v6);

  v12 = objc_msgSend_cellLists(self, v8, v9, v10, v11);
  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v13, v12, v7 + 24, v14);

  uidBased = self->_uidBased;
  *(v7 + 16) |= 1u;
  *(v7 + 72) = uidBased;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v16 = self->_mergeActions;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v34, v38, 16);
  if (v20)
  {
    v21 = *v35;
    do
    {
      v22 = 0;
      do
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v23 = *(*(&v34 + 1) + 8 * v22);
        v24 = *(v7 + 64);
        if (!v24)
        {
          goto LABEL_11;
        }

        v25 = *(v7 + 56);
        v26 = *v24;
        if (v25 < *v24)
        {
          *(v7 + 56) = v25 + 1;
          objc_msgSend_saveToArchive_archiver_(v23, v18, *&v24[2 * v25 + 2], archiverCopy, v19, v34);
          goto LABEL_13;
        }

        if (v26 == *(v7 + 60))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 48));
          v24 = *(v7 + 64);
          v26 = *v24;
        }

        *v24 = v26 + 1;
        v27 = google::protobuf::Arena::CreateMaybeMessage<TST::MergeOperationArchive>(*(v7 + 48));
        v28 = *(v7 + 56);
        v29 = *(v7 + 64) + 8 * v28;
        *(v7 + 56) = v28 + 1;
        *(v29 + 8) = v27;
        objc_msgSend_saveToArchive_archiver_(v23, v30, v27, archiverCopy, v31, v34);
LABEL_13:
        ++v22;
      }

      while (v20 != v22);
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v34, v38, 16);
    }

    while (v20);
  }

  v32 = *(v7 + 16);
  *(v7 + 74) = self->_mayModifyFormulasInCells;
  *(v7 + 75) = self->_mayModifyValuesReferencedByFormulas;
  *(v7 + 76) = self->_affectsCellBorders;
  *(v7 + 73) = self->_skipDirtyingRanges;
  shouldResetSpillFormulas = self->_shouldResetSpillFormulas;
  *(v7 + 16) = v32 | 0x3E;
  *(v7 + 77) = shouldResetSpillFormulas;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8);
  v14 = objc_msgSend_context(self, v10, v11, v12, v13);
  v19 = objc_msgSend_affectsCellBorders(self, v15, v16, v17, v18);
  v22 = objc_msgSend_initWithContext_affectsCellBorders_(v9, v20, v14, v19, v21);

  if (objc_msgSend_count(self->_cellLists, v23, v24, v25, v26))
  {
    v70 = 0;
    v71 = &v70;
    v72 = 0x4812000000;
    v73 = sub_221163D44;
    v74 = sub_221163D68;
    v75 = &unk_22188E88F;
    memset(v76, 0, sizeof(v76));
    v31 = objc_msgSend_count(self->_cellLists, v27, v28, v29, v30);
    sub_221163D94(v76, v31);
    cellLists = self->_cellLists;
    v37 = objc_msgSend_count(cellLists, v33, v34, v35, v36);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_221163E1C;
    block[3] = &unk_27845FDD8;
    block[4] = &v70;
    block[5] = cellLists;
    block[6] = zone;
    dispatch_apply(v37, 0, block);
    v38 = MEMORY[0x277CBEB18];
    v39 = v71[6];
    v44 = objc_msgSend_cellLists(self, v40, v41, v42, v43);
    v49 = objc_msgSend_count(v44, v45, v46, v47, v48);
    v52 = objc_msgSend_arrayWithObjects_count_(v38, v50, v39, v49, v51);
    objc_msgSend_setCellLists_(v22, v53, v52, v54, v55);

    _Block_object_dispose(&v70, 8);
    v77 = v76;
    sub_22107C2C0(&v77);
  }

  isUIDBased = objc_msgSend_isUIDBased(self, v27, v28, v29, v30);
  objc_msgSend_setUidBased_(v22, v57, isUIDBased, v58, v59);
  if (self->_mergeActions)
  {
    v60 = objc_alloc(MEMORY[0x277CBEB18]);
    v64 = objc_msgSend_initWithArray_(v60, v61, self->_mergeActions, v62, v63);
    objc_msgSend_setMergeActions_(v22, v65, v64, v66, v67);
  }

  return v22;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)cachedRowUIDs
{
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  return sub_221086EBC(retstr, self->_cachedRowUIDs.__begin_, self->_cachedRowUIDs.__end_, self->_cachedRowUIDs.__end_ - self->_cachedRowUIDs.__begin_);
}

- (void)setCachedRowUIDs:(TSKUIDStructVectorTemplate<TSKUIDStruct> *)ds
{
  p_cachedRowUIDs = &self->_cachedRowUIDs;
  if (p_cachedRowUIDs != ds)
  {
    sub_2210BD068(p_cachedRowUIDs, ds->__begin_, ds->__end_, ds->__end_ - ds->__begin_);
  }
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)cachedColumnUIDs
{
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  return sub_221086EBC(retstr, self->_cachedColumnUIDs.__begin_, self->_cachedColumnUIDs.__end_, self->_cachedColumnUIDs.__end_ - self->_cachedColumnUIDs.__begin_);
}

- (void)setCachedColumnUIDs:(TSKUIDStructVectorTemplate<TSKUIDStruct> *)ds
{
  p_cachedColumnUIDs = &self->_cachedColumnUIDs;
  if (p_cachedColumnUIDs != ds)
  {
    sub_2210BD068(p_cachedColumnUIDs, ds->__begin_, ds->__end_, ds->__end_ - ds->__begin_);
  }
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 12) = 0;
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 15) = 0;
  return self;
}

@end