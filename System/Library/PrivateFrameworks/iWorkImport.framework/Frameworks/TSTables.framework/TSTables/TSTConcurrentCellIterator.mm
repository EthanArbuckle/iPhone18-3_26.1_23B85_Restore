@interface TSTConcurrentCellIterator
- (TSTConcurrentCellIterator)initWithTableInfo:(id)info flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags;
- (TSTConcurrentCellIterator)initWithTableInfo:(id)info region:(id)region flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags;
- (TSTConcurrentCellIterator)initWithTableInfo:(id)info region:(id)region forcingRegion:(id)forcingRegion flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags;
- (TSTConcurrentCellIterator)initWithTableInfo:(id)info tableModel:(id)model region:(id)region forcingRegion:(id)forcingRegion clampingRect:(TSUCellRect)rect flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags;
- (TSTConcurrentCellIterator)initWithTableModel:(id)model baseRegion:(id)region flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags;
- (TSUCellRect)clampingRect;
- (void)enumerateConcurrentlyUsingChunkBeginBlock:(id)block perDispatchThreadBlock:(id)threadBlock concurrentBlock:(id)concurrentBlock furtherPassNeededBlock:(id)neededBlock furtherPassConcurrentBlock:(id)passConcurrentBlock finalBlock:(id)finalBlock;
- (void)enumerateModelConcurrentlyUsingChunkBeginBlock:(id)block concurrentBlock:(id)concurrentBlock furtherPassNeededBlock:(id)neededBlock furtherPassConcurrentBlock:(id)passConcurrentBlock finalBlock:(id)finalBlock;
- (void)p_enumerateConcurrentlyUsingChunkBeginBlock:(id)block perDispatchThreadBlock:(id)threadBlock concurrentBlock:(id)concurrentBlock furtherPassNeededBlock:(id)neededBlock furtherPassConcurrentBlock:(id)passConcurrentBlock finalBlock:(id)finalBlock;
@end

@implementation TSTConcurrentCellIterator

- (TSTConcurrentCellIterator)initWithTableInfo:(id)info flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags
{
  infoCopy = info;
  v13 = objc_msgSend_range(infoCopy, v9, v10, v11, v12);
  v16 = objc_msgSend_regionFromRange_(TSTCellRegion, v14, v13, v14, v15);
  v21 = objc_msgSend_range(infoCopy, v17, v18, v19, v20);
  v23 = objc_msgSend_initWithTableInfo_tableModel_region_forcingRegion_clampingRect_flags_searchFlags_(self, v22, infoCopy, 0, v16, 0, v21, v22, flags, searchFlags);

  return v23;
}

- (TSTConcurrentCellIterator)initWithTableInfo:(id)info region:(id)region flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags
{
  infoCopy = info;
  regionCopy = region;
  v16 = objc_msgSend_range(infoCopy, v12, v13, v14, v15);
  v18 = objc_msgSend_initWithTableInfo_tableModel_region_forcingRegion_clampingRect_flags_searchFlags_(self, v17, infoCopy, 0, regionCopy, 0, v16, v17, flags, searchFlags);

  return v18;
}

- (TSTConcurrentCellIterator)initWithTableInfo:(id)info region:(id)region forcingRegion:(id)forcingRegion flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags
{
  infoCopy = info;
  regionCopy = region;
  forcingRegionCopy = forcingRegion;
  v19 = objc_msgSend_range(infoCopy, v15, v16, v17, v18);
  v21 = objc_msgSend_initWithTableInfo_tableModel_region_forcingRegion_clampingRect_flags_searchFlags_(self, v20, infoCopy, 0, regionCopy, forcingRegionCopy, v19, v20, flags, searchFlags);

  return v21;
}

- (TSTConcurrentCellIterator)initWithTableModel:(id)model baseRegion:(id)region flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags
{
  modelCopy = model;
  regionCopy = region;
  v16 = objc_msgSend_range(modelCopy, v12, v13, v14, v15);
  v18 = objc_msgSend_initWithTableInfo_tableModel_region_forcingRegion_clampingRect_flags_searchFlags_(self, v17, 0, modelCopy, regionCopy, 0, v16, v17, flags, searchFlags);

  return v18;
}

- (TSTConcurrentCellIterator)initWithTableInfo:(id)info tableModel:(id)model region:(id)region forcingRegion:(id)forcingRegion clampingRect:(TSUCellRect)rect flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags
{
  size = rect.size;
  origin = rect.origin;
  infoCopy = info;
  modelCopy = model;
  regionCopy = region;
  forcingRegionCopy = forcingRegion;
  v69.receiver = self;
  v69.super_class = TSTConcurrentCellIterator;
  v21 = [(TSTConcurrentCellIterator *)&v69 init];
  if (v21)
  {
    if ((infoCopy == 0) != (modelCopy != 0))
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTConcurrentCellIterator initWithTableInfo:tableModel:region:forcingRegion:clampingRect:flags:searchFlags:]", v19, v20);
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellIterator.mm", v25, v26);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 126, 0, "XOR expectation on getting a tableInfo or tableModel.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
    }

    objc_storeStrong(v21 + 2, info);
    v37 = *(v21 + 2);
    if (v37)
    {
      v38 = objc_msgSend_baseTableModel(v37, v33, v34, v35, v36);
    }

    else
    {
      v38 = modelCopy;
    }

    v39 = *(v21 + 3);
    *(v21 + 3) = v38;

    *(v21 + 9) = origin;
    *(v21 + 10) = size;
    v42 = objc_msgSend_regionByIntersectingRange_(regionCopy, v40, origin, size, v41);
    v43 = *(v21 + 4);
    *(v21 + 4) = v42;

    v46 = objc_msgSend_regionByIntersectingRange_(forcingRegionCopy, v44, *(v21 + 9), *(v21 + 10), v45);
    v47 = *(v21 + 5);
    *(v21 + 5) = v46;

    if (!objc_msgSend_cellCount(*(v21 + 5), v48, v49, v50, v51))
    {
      v55 = *(v21 + 5);
      *(v21 + 5) = 0;
    }

    v56 = *(v21 + 5);
    if (v56)
    {
      v57 = objc_msgSend_regionBySubtractingRegion_(*(v21 + 4), v52, v56, v53, v54);
      v58 = *(v21 + 4);
      *(v21 + 4) = v57;
    }

    flagsCopy = flags;
    if ((flags & 0x40) != 0)
    {
      v60 = objc_msgSend_mergeOwner(*(v21 + 3), v52, v56, v53, v54);
      hasMergeRanges = objc_msgSend_hasMergeRanges(v60, v61, v62, v63, v64);

      if (!hasMergeRanges)
      {
        flagsCopy = flags & 0xFFFFFFFFFFFFFFBFLL;
      }
    }

    *(v21 + 7) = flagsCopy;
    *(v21 + 8) = searchFlags;
    *(v21 + 1) = 0;
  }

  return v21;
}

- (void)enumerateModelConcurrentlyUsingChunkBeginBlock:(id)block concurrentBlock:(id)concurrentBlock furtherPassNeededBlock:(id)neededBlock furtherPassConcurrentBlock:(id)passConcurrentBlock finalBlock:(id)finalBlock
{
  blockCopy = block;
  concurrentBlockCopy = concurrentBlock;
  neededBlockCopy = neededBlock;
  passConcurrentBlockCopy = passConcurrentBlock;
  finalBlockCopy = finalBlock;
  if (self->_tableInfo)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTConcurrentCellIterator enumerateModelConcurrentlyUsingChunkBeginBlock:concurrentBlock:furtherPassNeededBlock:furtherPassConcurrentBlock:finalBlock:]", v17, v18);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellIterator.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 198, 0, "You must initialize the iterator with a TSTTableModel to use this enumeration method.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_2213C10A0;
  v33[3] = &unk_278464250;
  v31 = blockCopy;
  v34 = v31;
  objc_msgSend_p_enumerateConcurrentlyUsingChunkBeginBlock_perDispatchThreadBlock_concurrentBlock_furtherPassNeededBlock_furtherPassConcurrentBlock_finalBlock_(self, v32, v33, 0, concurrentBlockCopy, neededBlockCopy, passConcurrentBlockCopy, finalBlockCopy);
}

- (void)enumerateConcurrentlyUsingChunkBeginBlock:(id)block perDispatchThreadBlock:(id)threadBlock concurrentBlock:(id)concurrentBlock furtherPassNeededBlock:(id)neededBlock furtherPassConcurrentBlock:(id)passConcurrentBlock finalBlock:(id)finalBlock
{
  blockCopy = block;
  threadBlockCopy = threadBlock;
  concurrentBlockCopy = concurrentBlock;
  neededBlockCopy = neededBlock;
  passConcurrentBlockCopy = passConcurrentBlock;
  finalBlockCopy = finalBlock;
  if (!self->_tableInfo)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTConcurrentCellIterator enumerateConcurrentlyUsingChunkBeginBlock:perDispatchThreadBlock:concurrentBlock:furtherPassNeededBlock:furtherPassConcurrentBlock:finalBlock:]", v20, v21);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellIterator.mm", v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v28, 220, 0, "You may not initialize this iterator with a TSTTableModel to use this enumeration method.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_2213C12BC;
  v36[3] = &unk_278464250;
  v34 = blockCopy;
  v37 = v34;
  objc_msgSend_p_enumerateConcurrentlyUsingChunkBeginBlock_perDispatchThreadBlock_concurrentBlock_furtherPassNeededBlock_furtherPassConcurrentBlock_finalBlock_(self, v35, v36, threadBlockCopy, concurrentBlockCopy, neededBlockCopy, passConcurrentBlockCopy, finalBlockCopy);
}

- (void)p_enumerateConcurrentlyUsingChunkBeginBlock:(id)block perDispatchThreadBlock:(id)threadBlock concurrentBlock:(id)concurrentBlock furtherPassNeededBlock:(id)neededBlock furtherPassConcurrentBlock:(id)passConcurrentBlock finalBlock:(id)finalBlock
{
  blockCopy = block;
  threadBlockCopy = threadBlock;
  concurrentBlockCopy = concurrentBlock;
  neededBlockCopy = neededBlock;
  passConcurrentBlockCopy = passConcurrentBlock;
  finalBlockCopy = finalBlock;
  v76 = 0;
  v77 = 0uLL;
  searchFlags = self->_searchFlags;
  forcingRegion = self->_forcingRegion;
  if (forcingRegion)
  {
    objc_msgSend_rowBasedSubRangesOfCellCount_(forcingRegion, v15, self->_cellsPerSubRegion, v17, v18);
    searchFlags = searchFlags & 0xFFFFFFFFDC1007FFLL | 0x20000000;
    v21 = v74;
    v60 = v75;
  }

  else
  {
    v21 = 0;
    v60 = 0;
  }

  region = self->_region;
  v61 = v21;
  if (region)
  {
    objc_msgSend_rowBasedSubRangesOfCellCount_(region, v15, self->_cellsPerSubRegion, v17, v18);
  }

  else
  {
    v74 = 0;
    v75 = 0uLL;
  }

  v53 = searchFlags;
  v23 = v74;
  tableInfo = self->_tableInfo;
  v76 = v74;
  v77 = v75;
  if (tableInfo)
  {
    objc_msgSend_loadAllLazyReferences(tableInfo, v15, v16, v17, v18);
  }

  else
  {
    objc_msgSend_loadAllLazyReferences(self->_tableModel, v15, v16, v17, v18);
  }

  v29 = (v75 - v74) >> 4;
  v54 = v60 - v21;
  v30 = v29 + ((v60 - v21) >> 4);
  if (blockCopy)
  {
    v31 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v25, v26, v27, v28);
    arrayOfChunkRocks = self->_arrayOfChunkRocks;
    self->_arrayOfChunkRocks = v31;

    objc_msgSend_setCount_(self->_arrayOfChunkRocks, v33, v30, v34, v35);
    if (v30)
    {
      v36 = 0;
      v37 = &v61[-16 * v29];
      do
      {
        if (v36 >= v29)
        {
          v38 = v37;
        }

        else
        {
          v38 = v23;
        }

        v41 = (*(blockCopy + 2))(blockCopy, *v38, *(v38 + 1));
        if (v41)
        {
          objc_msgSend_replacePointerAtIndex_withPointer_(self->_arrayOfChunkRocks, v39, v36, v41, v40);
        }

        ++v36;
        v37 += 16;
        v23 += 16;
      }

      while (v30 != v36);
    }
  }

  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = sub_2213C17D4;
  v72[3] = &unk_2784642A0;
  v72[4] = self;
  v42 = concurrentBlockCopy;
  v73 = v42;
  v43 = MEMORY[0x223DA1C10](v72);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = sub_2213C1C0C;
  block[3] = &unk_2834A7138;
  block[4] = self;
  v67 = &v76;
  v44 = threadBlockCopy;
  v65 = v44;
  v45 = v43;
  v66 = v45;
  __p = 0;
  v69 = 0;
  v70 = 0;
  sub_22116C9DC(&__p, v61, v60, v54 >> 4);
  v71 = v53;
  dispatch_apply(v30, 0, block);
  if (neededBlockCopy)
  {
    if (passConcurrentBlockCopy)
    {
      v50 = objc_msgSend_allObjects(self->_arrayOfChunkRocks, v46, v47, v48, v49);
      v51 = neededBlockCopy[2](neededBlockCopy, v50);

      if (v51)
      {
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = sub_2213C1F24;
        v62[3] = &unk_27845FD10;
        v62[4] = self;
        v63 = passConcurrentBlockCopy;
        dispatch_apply(v30, 0, v62);
      }
    }
  }

  if (finalBlockCopy)
  {
    v52 = objc_msgSend_allObjects(self->_arrayOfChunkRocks, v46, v47, v48, v49);
    finalBlockCopy[2](finalBlockCopy, v52);
  }

  if (__p)
  {
    v69 = __p;
    operator delete(__p);
  }

  if (v76)
  {
    *&v77 = v76;
    operator delete(v76);
  }

  if (v61)
  {
    operator delete(v61);
  }
}

- (TSUCellRect)clampingRect
{
  size = self->_clampingRect.size;
  origin = self->_clampingRect.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

@end