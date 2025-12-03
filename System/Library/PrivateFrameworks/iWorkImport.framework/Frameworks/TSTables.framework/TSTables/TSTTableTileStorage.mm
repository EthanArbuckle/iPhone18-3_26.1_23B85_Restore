@interface TSTTableTileStorage
+ (id)_sharedQueue;
- (BOOL)auditRowInfoCellCountsReturningResult:(id *)result;
- (BOOL)auditTilesForRowOverlapAndExtensionPastTableBounds:(TSUCellCoord)bounds withDataStore:(id)store result:(id *)result;
- (BOOL)needToUpgradeCellStorage;
- (NSIndexSet)populatedRows;
- (NSIndexSet)populatedTiles;
- (TSTTableTileStorage)initWithOwner:(id)owner;
- (TSTTableTileStorage)initWithStorageArchive:(const void *)archive treeArchive:(const void *)treeArchive nextTileID:(unint64_t)d unarchiver:(id)unarchiver owner:(id)owner;
- (id)_createTileWithID:(unint64_t)d;
- (id)_groupForTileID:(unint64_t)d;
- (id)_tileForID:(unint64_t)d createIfMissing:(BOOL)missing;
- (id)_tileFromGroupForTileID:(unint64_t)d;
- (id)_yankRowRange:(_NSRange)range;
- (id)columnCellCountsOfRowsInRange:(_NSRange)range;
- (id)removeColumnsAtIndex:(unsigned __int16)index count:(unsigned int)count;
- (id)rowInfoAtIndex:(unsigned int)index;
- (id)tileForWritingAtRowIndex:(unsigned int)index outTileRange:(_NSRange *)range;
- (id)tileStartingAtOrAfterRowIndex:(unsigned int)index outTileRange:(_NSRange *)range;
- (id)tileStartingAtOrBeforeRowIndex:(unsigned int)index outTileRange:(_NSRange *)range;
- (multimap<TSUCellCoord,)makeStorageMap;
- (unint64_t)archivingCompatibilityVersion;
- (unsigned)lastPopulatedRowIndex;
- (void)_clearContentAtIndex:(unsigned int)index count:(unsigned int)count;
- (void)_enumerateGroups:(id)groups;
- (void)_enumerateLoadedTiles:(id)tiles;
- (void)_enumerateTiles:(id)tiles;
- (void)_insertRowsAtIndex:(unsigned int)index count:(unsigned int)count;
- (void)_removeRowsAtIndex:(unsigned int)index count:(unsigned int)count;
- (void)_removeTileForID:(unint64_t)d;
- (void)_setTile:(id)tile forID:(unint64_t)d;
- (void)_shiftRowsDownAtIndex:(unsigned int)index count:(unsigned int)count;
- (void)_shiftRowsUpAtIndex:(unsigned int)index count:(unsigned int)count;
- (void)_spliceRows:(id)rows atIndex:(unsigned int)index;
- (void)_upgradeFromTileIDMap:(void *)map referenceMap:(void *)referenceMap;
- (void)enumerateRowByRowInRange:(_NSRange)range withBlock:(id)block;
- (void)enumerateRowsInRange:(_NSRange)range withBlock:(id)block;
- (void)enumerateRowsWithBlock:(id)block;
- (void)enumerateTilesConcurrentlyUsingBlock:(id)block;
- (void)insertColumnsAtIndex:(unsigned __int16)index count:(unsigned int)count;
- (void)insertRowsAtIndex:(unsigned int)index count:(unsigned int)count;
- (void)moveColumnIndexRange:(_NSRange)range toIndex:(unsigned __int16)index;
- (void)moveRowIndexRange:(_NSRange)range toIndex:(unsigned int)index;
- (void)prepareToApplyConcurrentCellMap:(id)map;
- (void)pruneTileForRowIndex:(unsigned int)index;
- (void)pruneTilesForRows:(id)rows;
- (void)removeRowsAtIndex:(unsigned int)index count:(unsigned int)count;
- (void)reset;
- (void)saveToStorageArchive:(void *)archive treeArchive:(void *)treeArchive archiver:(id)archiver;
- (void)setShouldUseWideRows:(BOOL)rows;
- (void)swapRowAtIndex:(unsigned int)index withRowAtIndex:(unsigned int)atIndex;
- (void)widenTilesForUpgrade;
@end

@implementation TSTTableTileStorage

- (TSTTableTileStorage)initWithOwner:(id)owner
{
  ownerCopy = owner;
  v17.receiver = self;
  v17.super_class = TSTTableTileStorage;
  v9 = [(TSTTableTileStorage *)&v17 initWithOwner:ownerCopy];
  if (v9)
  {
    v10 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v6, v7, v8);
    tileIDSet = v9->_tileIDSet;
    v9->_tileIDSet = v10;

    v15 = objc_msgSend__createTileWithID_(v9, v12, 0, v13, v14);
    v9->_archivingCompatibilityVersion = 0x300020000000ALL;
  }

  return v9;
}

- (TSTTableTileStorage)initWithStorageArchive:(const void *)archive treeArchive:(const void *)treeArchive nextTileID:(unint64_t)d unarchiver:(id)unarchiver owner:(id)owner
{
  unarchiverCopy = unarchiver;
  ownerCopy = owner;
  v104.receiver = self;
  v104.super_class = TSTTableTileStorage;
  v16 = [(TSTTableTileStorage *)&v104 initWithOwner:ownerCopy];
  if (v16)
  {
    v17 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v12, v13, v14, v15);
    v79 = ownerCopy;
    tileIDSet = v16->_tileIDSet;
    v16->_tileIDSet = v17;

    v19 = *(archive + 4);
    v20 = *(archive + 12);
    p_isa = &v16->super.super.isa;
    v16->_shouldUseWideRows = *(archive + 52) & (v19 << 30 >> 31);
    v16->_archivingCompatibilityVersion = objc_msgSend_messageVersion(unarchiverCopy, v21, v22, v23, v24);
    if ((v19 & 1) == 0 || v20 != 256)
    {
      v90 = 0;
      v91 = &v90;
      v92 = 0x4812000000;
      v93 = sub_2211A0DA8;
      v94 = sub_2211A0DCC;
      v95 = &unk_22188E88F;
      v97 = 0;
      v98 = 0;
      __p = 0;
      v43 = *(treeArchive + 4);
      if (v43)
      {
        v44 = v43 + 8;
      }

      else
      {
        v44 = 0;
      }

      v45 = *(treeArchive + 6);
      if (v45)
      {
        v46 = 8 * v45;
        do
        {
          v47 = *(*v44 + 24);
          v48 = v91;
          *&v49 = v47;
          *(&v49 + 1) = HIDWORD(v47);
          v50 = v49;
          v52 = v91[7];
          v51 = v91[8];
          if (v52 >= v51)
          {
            v54 = v91[6];
            v55 = (v52 - v54) >> 4;
            if ((v55 + 1) >> 60)
            {
              sub_22107C148();
            }

            v56 = v51 - v54;
            v57 = v56 >> 3;
            if (v56 >> 3 <= (v55 + 1))
            {
              v57 = v55 + 1;
            }

            if (v56 >= 0x7FFFFFFFFFFFFFF0)
            {
              v58 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v58 = v57;
            }

            if (v58)
            {
              sub_2211A6C88((v91 + 6), v58);
            }

            v59 = (16 * v55);
            *v59 = v50;
            v53 = 16 * v55 + 16;
            v60 = v48[6];
            v61 = v48[7] - v60;
            v62 = v59 - v61;
            memcpy(v59 - v61, v60, v61);
            v63 = v48[6];
            v48[6] = v62;
            v48[7] = v53;
            v48[8] = 0;
            if (v63)
            {
              operator delete(v63);
            }
          }

          else
          {
            *v52 = v50;
            v53 = (v52 + 1);
          }

          v48[7] = v53;
          v44 += 8;
          v46 -= 8;
        }

        while (v46);
      }

      v87[0] = 0;
      v87[1] = v87;
      v87[2] = 0x5812000000;
      v87[3] = sub_2211A0DE4;
      v87[4] = sub_2211A0DF0;
      v87[5] = &unk_22188E88F;
      memset(v88, 0, sizeof(v88));
      v89 = 1065353216;
      v64 = *(archive + 5);
      if (v64)
      {
        v65 = v64 + 8;
      }

      else
      {
        v65 = 0;
      }

      v66 = *(archive + 8);
      if (v66)
      {
        v67 = MEMORY[0x277D85DD0];
        v68 = 8 * v66;
        v69 = MEMORY[0x277D80A18];
        do
        {
          v70 = *(*v65 + 32);
          v71 = *(*v65 + 24);
          v86[0] = v67;
          v86[1] = 3221225472;
          v86[2] = sub_2211A0DF8;
          v86[3] = &unk_2784604A8;
          v86[4] = v87;
          v86[5] = v70;
          v72 = unarchiverCopy;
          v74 = objc_opt_class();
          if (v71)
          {
            objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v72, v73, v71, v74, 0, v86);
          }

          else
          {
            objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v72, v73, v69, v74, 0, v86);
          }

          v65 += 8;
          v68 -= 8;
        }

        while (v68);
      }

      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = sub_2211A0E74;
      v82[3] = &unk_2784604D0;
      v83 = p_isa;
      v84 = &v90;
      v85 = v87;
      objc_msgSend_addFinalizeHandler_(unarchiverCopy, v75, v82, v76, v77);

      _Block_object_dispose(v87, 8);
      sub_221087B80(v88);
      _Block_object_dispose(&v90, 8);
      ownerCopy = v79;
      if (__p)
      {
        v97 = __p;
        operator delete(__p);
      }

      goto LABEL_44;
    }

    v29 = *(archive + 5);
    if (v29)
    {
      v30 = (v29 + 8);
    }

    else
    {
      v30 = 0;
    }

    v31 = *(archive + 8);
    if (v31)
    {
      v32 = 8 * v31;
      v33 = MEMORY[0x277D80A18];
      do
      {
        v34 = *v30;
        v35 = *(*v30 + 32);
        objc_msgSend_addIndex_(p_isa[2], v25, v35, v27, v28);
        v36 = *(v34 + 24);
        v101[0] = MEMORY[0x277D85DD0];
        v101[1] = 3221225472;
        v101[2] = sub_2211A0C90;
        v101[3] = &unk_278460480;
        v102 = p_isa;
        v103 = v35;
        v37 = unarchiverCopy;
        v39 = objc_opt_class();
        if (v36)
        {
          objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v37, v38, v36, v39, 0, v101);
        }

        else
        {
          objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v37, v38, v33, v39, 0, v101);
        }

        ++v30;
        v32 -= 8;
      }

      while (v32);
    }

    ownerCopy = v79;
    v16 = p_isa;
    if (objc_msgSend_fileFormatVersion(unarchiverCopy, v25, v26, v27, v28) <= 0xB000000000000)
    {
      v99[0] = MEMORY[0x277D85DD0];
      v99[1] = 3221225472;
      v99[2] = sub_2211A0D20;
      v99[3] = &unk_27845E3F8;
      v100 = p_isa;
      objc_msgSend_addFinalizeHandler_(unarchiverCopy, v40, v99, v41, v42);

LABEL_44:
      v16 = p_isa;
    }
  }

  return v16;
}

- (void)_upgradeFromTileIDMap:(void *)map referenceMap:(void *)referenceMap
{
  v7 = *map;
  v8 = *(map + 1);
  v9 = 126 - 2 * __clz((v8 - *map) >> 4);
  v32 = v8 == *map;
  v136[0] = &unk_2834A2910;
  if (v32)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  sub_2211A6F2C(v7, v8, v136, v10, 1);

  v131 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v11, v12, v13, v14);
  v19 = *map;
  v20 = *(map + 1);
  if (*map != v20)
  {
    do
    {
      v21 = *v19;
      v136[0] = *(v19 + 8);
      v22 = sub_2210BE30C(referenceMap, v136);
      if (v22)
      {
        v26 = v22[3];
        v135 = 0;
        v27 = objc_msgSend_objectAndReturnError_(v26, v23, &v135, v24, v25);
        v28 = v135;
        if (v27)
        {
          v32 = v28 == 0;
        }

        else
        {
          v32 = 0;
        }

        if (!v32)
        {
          v130 = v28;
          if (!v28)
          {
            v116 = MEMORY[0x277D81150];
            v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSTTableTileStorage _upgradeFromTileIDMap:referenceMap:]", v30, v31);
            v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v119, v120);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v116, v122, v117, v121, 230, 0, "invalid nil value for '%{public}s'", "error");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v123, v124, v125, v126);
          }

          v60 = objc_opt_class();
          v61 = NSStringFromClass(v60);
          v66 = objc_msgSend_domain(v130, v62, v63, v64, v65);
          v71 = objc_msgSend_code(v130, v67, v68, v69, v70);
          isRecoverable = objc_msgSend_tsp_isRecoverable(v130, v72, v73, v74, v75);
          v81 = objc_msgSend_tsp_hintsDescription(v130, v77, v78, v79, v80);
          v82 = v81;
          if (isRecoverable)
          {
            v83 = @"recoverable=YES, ";
          }

          else
          {
            v83 = &stru_2834BADA0;
          }

          v128 = v81;
          v127 = v83;
          TSUSetCrashReporterInfo();

          v84 = MEMORY[0x277D81150];
          v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, "[TSTTableTileStorage _upgradeFromTileIDMap:referenceMap:]", v86, v87, "[TSTTableTileStorage _upgradeFromTileIDMap:referenceMap:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", 231, v61, v66, v71, v127, v128, v130);
          v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v90, v91);
          v93 = objc_opt_class();
          v94 = NSStringFromClass(v93);
          v99 = objc_msgSend_domain(v130, v95, v96, v97, v98);
          v104 = objc_msgSend_code(v130, v100, v101, v102, v103);
          v109 = objc_msgSend_tsp_isRecoverable(v130, v105, v106, v107, v108);
          v129 = objc_msgSend_tsp_hintsDescription(v130, v110, v111, v112, v113);
          if (v109)
          {
            v115 = @"recoverable=YES, ";
          }

          else
          {
            v115 = &stru_2834BADA0;
          }

          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v84, v114, v88, v92, 231, 1, "Failed to load a table tile during upgrade: errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", v94, v99, v104, v115, v129, v130);

          TSUCrashBreakpoint();
          abort();
        }

        objc_opt_class();
        v33 = TSUCheckedDynamicCast();
        if ((objc_msgSend_isEmpty(v33, v34, v35, v36, v37) & 1) == 0)
        {
          v41 = objc_msgSend_yankRowsAtTileRowIndex_(v33, v38, 0, v39, v40);
          v132[0] = MEMORY[0x277D85DD0];
          v132[1] = 3221225472;
          v132[2] = sub_2211A14AC;
          v132[3] = &unk_278460518;
          v134 = v21;
          v132[4] = self;
          v133 = v131;
          objc_msgSend_tsu_enumerateNonNullObjectUsingBlock_(v41, v42, v132, v43, v44);
        }
      }

      else
      {
        v45 = MEMORY[0x277D81150];
        v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTTableTileStorage _upgradeFromTileIDMap:referenceMap:]", v24, v25);
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v48, v49);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v51, v46, v50, 223, 0, "Tile upgrade can't find tile for ID %tu!", v136[0]);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
      }

      v19 += 16;
    }

    while (v19 != v20);
  }

  if (self->_upgradeRepairedTiles && *MEMORY[0x277D81408] != -1)
  {
    sub_2216F6CE4();
  }

  if (objc_msgSend_firstIndex(self->_tileIDSet, v15, v16, v17, v18))
  {
    v59 = objc_msgSend__createTileWithID_(self, v56, 0, v57, v58);
  }

  *(map + 1) = *map;
  sub_2211A89A4(referenceMap);
}

- (void)saveToStorageArchive:(void *)archive treeArchive:(void *)treeArchive archiver:(id)archiver
{
  archiverCopy = archiver;
  for (i = 0; i != 16; ++i)
  {
    v10 = self->_tileGroups[i];
    if (v10)
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = sub_2211A1988;
      v38[3] = &unk_278460540;
      archiveCopy = archive;
      v39 = archiverCopy;
      treeArchiveCopy = treeArchive;
      objc_msgSend_enumerateReferencesWithBlock_(v10, v11, v38, v12, v13);
    }
  }

  v18 = *(archive + 4);
  *(archive + 4) = v18 | 1;
  *(archive + 12) = 256;
  if (self->_shouldUseWideRows)
  {
    *(archive + 4) = v18 | 3;
    *(archive + 52) = 1;
  }

  v19 = objc_msgSend_archivingCompatibilityVersion(self, v14, v15, v16, v17);
  objc_msgSend_setMessageVersion_(archiverCopy, v20, v19, v21, v22);
  if (v19 == 0x300020000000ALL || v19 == 0x4000100000000)
  {
    goto LABEL_26;
  }

  if (v19 != 0xA000000000003)
  {
    if (*MEMORY[0x277D808F0] == v19)
    {
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v23, v19, @"TSTFutureProofCell", v25);
      goto LABEL_27;
    }

    if (v19 <= 0xD000000000000)
    {
      if (v19 == 0xB000200000006)
      {
        objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v23, 0xB000200000006, @"TSTPivotTables", v25);
        goto LABEL_27;
      }

      if (v19 == 0xC000000000007)
      {
        objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v23, 0xC000000000007, @"TSTPivotTables v2", v25);
        goto LABEL_27;
      }
    }

    else
    {
      switch(v19)
      {
        case 0xD000000000001:
          objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v23, 0xD000000000001, @"TSTDropPreBNCData", v25);
          goto LABEL_27;
        case 0xD000000000002:
          objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v23, 0xD000000000002, @"TSTPivotTables MoreAggregates", v25);
          goto LABEL_27;
        case 0xE000400000001:
          objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v23, 0xE000400000001, @"TSTArrayFormulas", v25);
          goto LABEL_27;
      }
    }

    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "NSString *TSTFeatureIdentifierForCompatibilityVersion(TSPVersion)", v24, v25);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCompatibility.h", v29, v30);
    v32 = NSStringFromTSPVersion();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v27, v31, 99, 0, "Unimplemented version for TSTCompatibility: %@", v32);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
LABEL_26:
    objc_msgSend_requiresDocumentVersion_(archiverCopy, v23, v19, v24, v25);
    goto LABEL_27;
  }

  objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v23, 0xA000000000003, @"TSTExpandedTables", v25);
LABEL_27:
}

- (unint64_t)archivingCompatibilityVersion
{
  archivingCompatibilityVersion = self->_archivingCompatibilityVersion;
  if (archivingCompatibilityVersion >= 0x300020000000ALL)
  {
    if (archivingCompatibilityVersion > 0xA000000000002)
    {
      return archivingCompatibilityVersion;
    }
  }

  else
  {
    self->_archivingCompatibilityVersion = 0x300020000000ALL;
    archivingCompatibilityVersion = 0x300020000000ALL;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = archivingCompatibilityVersion;
  if (objc_msgSend_isEmbiggened(self, a2, v2, v3, v4))
  {
    archivingCompatibilityVersion = 0xA000000000003;
    v10 = v14;
    v14[3] = 0xA000000000003;
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2211A1CEC;
    v12[3] = &unk_278460568;
    v12[4] = &v13;
    objc_msgSend__enumerateLoadedTiles_(self, v7, v12, v8, v9);
    v10 = v14;
    archivingCompatibilityVersion = v14[3];
  }

  if (archivingCompatibilityVersion > self->_archivingCompatibilityVersion)
  {
    self->_archivingCompatibilityVersion = archivingCompatibilityVersion;
    archivingCompatibilityVersion = v10[3];
  }

  _Block_object_dispose(&v13, 8);
  return archivingCompatibilityVersion;
}

- (void)setShouldUseWideRows:(BOOL)rows
{
  if (self->_shouldUseWideRows != rows)
  {
    if (self->_shouldUseWideRows)
    {
      TSUSetCrashReporterInfo();
      v10 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableTileStorage setShouldUseWideRows:]", v12, v13, "[TSTTableTileStorage setShouldUseWideRows:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", 392);
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v16, v17);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v19, v14, v18, 392, 1, "Table embiggening is a one-way process");

      TSUCrashBreakpoint();
      abort();
    }

    objc_msgSend_willModify(self, a2, rows, v3, v4);
    self->_shouldUseWideRows = rows;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2211A1ECC;
    v20[3] = &unk_278460588;
    rowsCopy = rows;
    objc_msgSend_enumerateTilesConcurrentlyUsingBlock_(self, v7, v20, v8, v9);
  }
}

+ (id)_sharedQueue
{
  if (qword_27CFB5290 != -1)
  {
    sub_2216F6D20();
  }

  v3 = qword_27CFB5298;

  return v3;
}

- (id)_groupForTileID:(unint64_t)d
{
  if (d >= 0x1000)
  {
    TSUSetCrashReporterInfo();
    v11 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableTileStorage _groupForTileID:]", v13, v14, "[TSTTableTileStorage _groupForTileID:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", 426);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v20, v15, v19, 426, 1, "Bad tile group index!");

    TSUCrashBreakpoint();
    abort();
  }

  v5 = d >> 8;
  tileGroups = self->_tileGroups;
  v7 = self->_tileGroups[d >> 8];
  if (!v7)
  {
    v8 = objc_msgSend_groupWithStartingTileID_(TSTTableTileGroup, a2, d & 0xF00, v3, v4);
    v9 = tileGroups[v5];
    tileGroups[v5] = v8;

    v7 = tileGroups[v5];
  }

  return v7;
}

- (id)_tileFromGroupForTileID:(unint64_t)d
{
  if (d >= 0x1000)
  {
    TSUSetCrashReporterInfo();
    v13 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTTableTileStorage _tileFromGroupForTileID:]", v15, v16, "[TSTTableTileStorage _tileFromGroupForTileID:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", 438);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v22, v17, v21, 438, 1, "Bad tile group index!");

    TSUCrashBreakpoint();
    abort();
  }

  v6 = d >> 8;
  tileGroups = self->_tileGroups;
  v8 = self->_tileGroups[d >> 8];
  if (!v8)
  {
    v9 = objc_msgSend_groupWithStartingTileID_(TSTTableTileGroup, a2, d & 0xF00, v3, v4);
    v10 = tileGroups[v6];
    tileGroups[v6] = v9;

    v8 = tileGroups[v6];
  }

  v11 = objc_msgSend_objectAtIndexedSubscript_(v8, a2, d, v3, v4);

  return v11;
}

- (id)_tileForID:(unint64_t)d createIfMissing:(BOOL)missing
{
  missingCopy = missing;
  if (objc_msgSend_containsIndex_(self->_tileIDSet, a2, d, missing, v4))
  {
    v11 = objc_msgSend__tileFromGroupForTileID_(self, v8, d, v9, v10);
    if (v11)
    {
      goto LABEL_7;
    }

    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableTileStorage _tileForID:createIfMissing:]", v13, v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 458, 0, "invalid nil value for '%{public}s'", "tile");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  if (missingCopy)
  {
    v11 = objc_msgSend__createTileWithID_(self, v8, d, v9, v10);
  }

  else
  {
    v11 = 0;
  }

LABEL_7:

  return v11;
}

- (void)_setTile:(id)tile forID:(unint64_t)d
{
  tileCopy = tile;
  objc_msgSend_willModify(self, v6, v7, v8, v9);
  objc_msgSend_addIndex_(self->_tileIDSet, v10, d, v11, v12);
  v16 = objc_msgSend__groupForTileID_(self, v13, d, v14, v15);
  objc_msgSend_setObject_atIndexedSubscript_(v16, v17, tileCopy, d, v18);
}

- (id)_createTileWithID:(unint64_t)d
{
  objc_msgSend_willModify(self, a2, d, v3, v4);
  v7 = [TSTTableTile alloc];
  shouldUseWideRows = self->_shouldUseWideRows;
  v13 = objc_msgSend_owner(self, v9, v10, v11, v12);
  v18 = objc_msgSend_context(v13, v14, v15, v16, v17);
  shouldUseWideRows_context = objc_msgSend_initWithRows_shouldUseWideRows_context_(v7, v19, 0, shouldUseWideRows, v18);

  objc_msgSend__setTile_forID_(self, v21, shouldUseWideRows_context, d, v22);

  return shouldUseWideRows_context;
}

- (void)_removeTileForID:(unint64_t)d
{
  objc_msgSend_willModify(self, a2, d, v3, v4);
  objc_msgSend_removeIndex_(self->_tileIDSet, v7, d, v8, v9);
  v15 = objc_msgSend__groupForTileID_(self, v10, d, v11, v12);
  objc_msgSend_setObject_atIndexedSubscript_(v15, v13, 0, d, v14);
}

- (void)_enumerateGroups:(id)groups
{
  groupsCopy = groups;
  v5 = 0;
  tileGroups = self->_tileGroups;
  while (1)
  {
    v7 = tileGroups[v5];
    if (v7)
    {
      v8 = 0;
      groupsCopy[2](groupsCopy, v7, &v8);
      if (v8)
      {
        break;
      }
    }

    if (++v5 == 16)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
}

- (void)_enumerateTiles:(id)tiles
{
  tilesCopy = tiles;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2211A268C;
  v9[3] = &unk_2784605D8;
  v10 = tilesCopy;
  v5 = tilesCopy;
  objc_msgSend__enumerateGroups_(self, v6, v9, v7, v8);
}

- (void)_enumerateLoadedTiles:(id)tiles
{
  tilesCopy = tiles;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2211A282C;
  v9[3] = &unk_2784605D8;
  v10 = tilesCopy;
  v5 = tilesCopy;
  objc_msgSend__enumerateGroups_(self, v6, v9, v7, v8);
}

- (void)_clearContentAtIndex:(unsigned int)index count:(unsigned int)count
{
  countCopy = count;
  v63 = index + count;
  v64 = index + count - 1;
  v8 = objc_msgSend_indexGreaterThanOrEqualToIndex_(self->_tileIDSet, a2, index >> 8, *&count, v4);
  if (v8 != 0x7FFFFFFFFFFFFFFFLL && v8 <= v64 >> 8)
  {
    v13 = v8;
    v62 = countCopy;
    while (1)
    {
      v14 = v13 << 8;
      v15 = (v13 << 8) | 0xFF;
      if (index >= v13 << 8)
      {
        break;
      }

      if (v15 <= v64)
      {
        objc_msgSend__removeTileForID_(self, v9, v13, v10, v11);
        goto LABEL_21;
      }

      v19 = objc_msgSend__tileForID_createIfMissing_(self, v9, v13, 0, v11);
      if (!v19)
      {
        v20 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTTableTileStorage _clearContentAtIndex:count:]", v17, v18);
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v23, v24);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 571, 0, "Corrupt tile map during clear!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
        countCopy = v62;
      }

      objc_msgSend_clearRowsAtTileRowIndex_numberOfRows_(v19, v16, 0, v63 - v14, v18);
      if (objc_msgSend_isEmpty(v19, v31, v32, v33, v34))
      {
        goto LABEL_18;
      }

LABEL_19:

LABEL_21:
      v60 = objc_msgSend_indexGreaterThanIndex_(self->_tileIDSet, v57, v13, v58, v59);
      v13 = v60;
      if (v60 == 0x7FFFFFFFFFFFFFFFLL || v60 > v64 >> 8)
      {
        return;
      }
    }

    v19 = objc_msgSend__tileForID_createIfMissing_(self, v9, v13, 0, v11);
    if (!v19)
    {
      v41 = MEMORY[0x277D81150];
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSTTableTileStorage _clearContentAtIndex:count:]", v39, v40);
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v44, v45);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v47, v42, v46, 558, 0, "Corrupt tile map during clear!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
      countCopy = v62;
    }

    v52 = index - v14;
    if (v15 - index + 1 < countCopy)
    {
      objc_msgSend_clearRowsAtTileRowIndex_numberOfRows_(v19, v38, v52, v15 - index + 1, v40);
    }

    else
    {
      objc_msgSend_clearRowsAtTileRowIndex_numberOfRows_(v19, v38, v52, countCopy, v40);
    }

    if (!objc_msgSend_isEmpty(v19, v53, v54, v55, v56))
    {
      goto LABEL_19;
    }

LABEL_18:
    objc_msgSend__removeTileForID_(self, v35, v13, v36, v37);
    goto LABEL_19;
  }
}

- (void)_shiftRowsUpAtIndex:(unsigned int)index count:(unsigned int)count
{
  v4 = *&count;
  v7 = objc_opt_class();
  v12 = objc_msgSend_tileSize(v7, v8, v9, v10, v11);
  v51 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v13, v14, v15, v16);
  Index = objc_msgSend_lastIndex(self->_tileIDSet, v17, v18, v19, v20);
  v24 = index >> 8;
  v25 = (v12 - v4);
  do
  {
    v30 = objc_msgSend__tileForID_createIfMissing_(self, v21, Index, 0, v22);
    if (!v30)
    {
      if (!objc_msgSend_count(v51, v26, v27, v28, v29))
      {
        v30 = 0;
LABEL_15:
        v47 = v51;
        goto LABEL_16;
      }

      v30 = objc_msgSend__createTileWithID_(self, v26, Index, v28, v29);
      if (!v30)
      {
        goto LABEL_15;
      }
    }

    if (Index <= v24)
    {
      objc_msgSend_shiftUpAtTileRowIndex_count_(v30, v26, index - (Index << 8), v4, v29);
      v35 = 0;
    }

    else
    {
      v35 = objc_msgSend_shiftUpAndYankBy_(v30, v26, v4, v28, v29);
    }

    if (objc_msgSend_count(v51, v31, v32, v33, v34))
    {
      objc_msgSend_spliceRows_atTileRowIndex_(v30, v36, v51, v25, v37);
    }

    v38 = v35;

    if (objc_msgSend_isEmpty(v30, v39, v40, v41, v42))
    {
      objc_msgSend__removeTileForID_(self, v43, Index, v44, v45);
    }

    v47 = v38;
LABEL_16:
    v51 = v47;
    if (objc_msgSend_count(v47, v26, v46, v28, v29))
    {
      --Index;
    }

    else
    {
      Index = objc_msgSend_indexLessThanIndex_(self->_tileIDSet, v48, Index, v49, v50);
    }
  }

  while (Index != 0x7FFFFFFFFFFFFFFFLL && Index >= v24);
}

- (void)_shiftRowsDownAtIndex:(unsigned int)index count:(unsigned int)count
{
  v5 = *&count;
  v10 = objc_msgSend_indexGreaterThanOrEqualToIndex_(self->_tileIDSet, a2, index >> 8, *&count, v4);
  v40 = 0;
  v11 = 0x277D81000uLL;
  do
  {
    v16 = objc_msgSend__tileForID_createIfMissing_(self, v8, v10, 0, v9);
    if (v40 && !v16)
    {
      if (!objc_msgSend_count(v40, v12, v13, v14, v15))
      {
        v16 = 0;
        v39 = v40;
        goto LABEL_22;
      }

      v16 = objc_msgSend__createTileWithID_(self, v12, v10, v14, v15);
    }

    if (v16)
    {
      if (index >= v10 << 8)
      {
        objc_msgSend_insertRowsAtTileRowIndex_numberOfRows_(v16, v12, index - (v10 << 8), v5, v15);
      }

      else
      {
        objc_msgSend_insertRowsAtTileRowIndex_numberOfRows_(v16, v12, 0, v5, v15);
      }

      if (v40 && objc_msgSend_count(v40, v17, v18, v19, v20))
      {
        if (v10 << 8 < index)
        {
          v21 = *(v11 + 336);
          v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTTableTileStorage _shiftRowsDownAtIndex:count:]", v19, v20);
          v23 = v5;
          v24 = v11;
          v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v26, v27);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v29, v22, v28, 665, 0, "Tile insertion got confused!");

          v11 = v24;
          objc_msgSend_logBacktraceThrottled(*(v24 + 336), v30, v31, v32, v33);
          v5 = v23;
        }

        objc_msgSend_spliceRows_atTileRowIndex_(v16, v17, v40, 0, v20);
      }

      v34 = objc_msgSend_yankRowsAtTileRowIndex_(v16, v17, 256, v19, v20);

      if (objc_msgSend_isEmpty(v16, v35, v36, v37, v38))
      {
        objc_msgSend__removeTileForID_(self, v12, v10, v14, v15);
      }

      if (!v34)
      {
LABEL_20:
        v40 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v34 = v40;
      if (!v40)
      {
        goto LABEL_20;
      }
    }

    v39 = v34;
LABEL_22:
    v40 = v39;
    if (objc_msgSend_count(v39, v12, v13, v14, v15))
    {
      ++v10;
      goto LABEL_25;
    }

LABEL_24:
    v10 = objc_msgSend_indexGreaterThanIndex_(self->_tileIDSet, v12, v10, v14, v15);
LABEL_25:
  }

  while (v10 != 0x7FFFFFFFFFFFFFFFLL);
}

- (void)_insertRowsAtIndex:(unsigned int)index count:(unsigned int)count
{
  v6 = *&index;
  PopulatedRowIndex = objc_msgSend_lastPopulatedRowIndex(self, a2, *&index, *&count, v4);
  if (count)
  {
    if (PopulatedRowIndex != 0x7FFFFFFF && PopulatedRowIndex >= v6)
    {
      v9 = objc_opt_class();
      v14 = objc_msgSend_tileSize(v9, v10, v11, v12, v13);
      v15 = count / v14;
      v16 = count % v14;
      objc_msgSend__shiftRowsDownAtIndex_count_(self, v17, v6, count % v14, v18);
      if (v15 * v14)
      {
        if ((count - v16) % v14)
        {
          v22 = MEMORY[0x277D81150];
          v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTTableTileStorage _insertRowsAtIndex:count:]", v20, v21);
          v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v24, v25);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v64, v26, 713, 0, "Should only have whole-tile moves left in insert!");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
        }

        v32 = v16 + v6;
        v33 = v32 >> 8;
        v63 = v16 + v6;
        if (v33 == v6 >> 8)
        {
          v65 = objc_msgSend__yankRowRange_(self, v19, v32, v14 * ((v6 >> 8) + 1) - v32, v21);
          ++v33;
        }

        else
        {
          v65 = 0;
        }

        Index = objc_msgSend_lastIndex(self->_tileIDSet, v19, v32, v20, v21);
        v39 = Index;
        if (Index >= v33 && Index != 0x7FFFFFFFFFFFFFFFLL)
        {
          do
          {
            v44 = objc_msgSend__tileForID_createIfMissing_(self, v35, v39, 0, v38);
            if (!v44)
            {
              v45 = MEMORY[0x277D81150];
              v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSTTableTileStorage _insertRowsAtIndex:count:]", v42, v43);
              v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v48, v49);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v51, v46, v50, 732, 0, "Corrupt tile map during insert!");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
            }

            objc_msgSend__removeTileForID_(self, v41, v39, v42, v43);
            objc_msgSend__setTile_forID_(self, v56, v44, v39 + v15, v57);
            v39 = objc_msgSend_indexLessThanIndex_(self->_tileIDSet, v58, v39, v59, v60);
          }

          while (v39 != 0x7FFFFFFFFFFFFFFFLL && v39 >= v33);
        }

        if (v65 && objc_msgSend_count(v65, v35, v36, v37, v38))
        {
          objc_msgSend__spliceRows_atIndex_(self, v61, v65, v63 + v15 * v14, v62);
        }
      }
    }
  }
}

- (void)_removeRowsAtIndex:(unsigned int)index count:(unsigned int)count
{
  v5 = *&count;
  v6 = *&index;
  PopulatedRowIndex = objc_msgSend_lastPopulatedRowIndex(self, a2, *&index, *&count, v4);
  if (!v5)
  {
    return;
  }

  if (PopulatedRowIndex == 0x7FFFFFFF)
  {
    return;
  }

  if (PopulatedRowIndex < v6)
  {
    return;
  }

  v9 = objc_opt_class();
  v14 = objc_msgSend_tileSize(v9, v10, v11, v12, v13);
  objc_msgSend__clearContentAtIndex_count_(self, v15, v6, v5, v16);
  v21 = objc_msgSend_lastPopulatedRowIndex(self, v17, v18, v19, v20);
  if (v21 == 0x7FFFFFFF || v21 < v6)
  {
    return;
  }

  v25 = (v5 + v6);
  v26 = v6 >> 8;
  v27 = v25 >> 8;
  LODWORD(v28) = v6 & 0xFFFFFF00;
  if ((v6 & 0xFFFFFF00) != v6 && v26 != v27)
  {
    v28 = (v28 + 256);
    v29 = objc_msgSend__yankRowRange_(self, v22, v25, (v28 - v6), v24);
    objc_msgSend__spliceRows_atIndex_(self, v30, v29, v6, v31);
    v26 = v28 >> 8;
    v27 = (v28 + v5) >> 8;

    v6 = v28;
  }

  if (v14 <= v5)
  {
    if (v6 == v28)
    {
      v120 = v6;
      v121 = v5;
      v122 = v14;
      v32 = v26;
      v33 = v27;
      if (v26 == v27)
      {
        TSUSetCrashReporterInfo();
        v104 = MEMORY[0x277D81150];
        v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, "[TSTTableTileStorage _removeRowsAtIndex:count:]", v106, v107, "[TSTTableTileStorage _removeRowsAtIndex:count:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", 813);
        v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v108, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v109, v110);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v104, v111, v98, v102, 813, 1, "Lost track of tiles during delete!");
      }

      else
      {
        v123 = v27 - v26;
        v34 = objc_msgSend_indexGreaterThanOrEqualToIndex_(self->_tileIDSet, v22, v26, v23, v24);
        if (v34 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v35 = v34;
          v36 = 0x277CCA000uLL;
          do
          {
            v41 = objc_msgSend__tileForID_createIfMissing_(self, v22, v35, 0, v24);
            if (!v41)
            {
              v42 = MEMORY[0x277D81150];
              v43 = objc_msgSend_stringWithUTF8String_(*(v36 + 3240), v37, "[TSTTableTileStorage _removeRowsAtIndex:count:]", v39, v40);
              v44 = v32;
              v45 = v36;
              v49 = objc_msgSend_stringWithUTF8String_(*(v36 + 3240), v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v47, v48);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v50, v43, v49, 822, 0, "Corrupt tile map during delete!");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
              v36 = v45;
              v32 = v44;
            }

            if (v35 >= v33)
            {
              if (v35 - v123 < v32)
              {
                TSUSetCrashReporterInfo();
                v84 = MEMORY[0x277D81150];
                v88 = objc_msgSend_stringWithUTF8String_(*(v36 + 3240), v85, "[TSTTableTileStorage _removeRowsAtIndex:count:]", v86, v87, "[TSTTableTileStorage _removeRowsAtIndex:count:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", 831);
                v92 = objc_msgSend_stringWithUTF8String_(*(v36 + 3240), v89, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v90, v91);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v84, v93, v88, v92, 831, 1, "Shifting tiles too far during delete!");

                TSUCrashBreakpoint();
LABEL_32:
                abort();
              }

              objc_msgSend__removeTileForID_(self, v37, v35, v39, v40);
              objc_msgSend__setTile_forID_(self, v61, v41, v35 - v123, v62);
            }

            else
            {
              if ((objc_msgSend_isEmpty(v41, v37, v38, v39, v40) & 1) == 0)
              {
                TSUSetCrashReporterInfo();
                v74 = MEMORY[0x277D81150];
                v78 = objc_msgSend_stringWithUTF8String_(*(v36 + 3240), v75, "[TSTTableTileStorage _removeRowsAtIndex:count:]", v76, v77, "[TSTTableTileStorage _removeRowsAtIndex:count:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", 826);
                v82 = objc_msgSend_stringWithUTF8String_(*(v36 + 3240), v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v80, v81);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v83, v78, v82, 826, 1, "Tile should be empty during delete!");

                TSUCrashBreakpoint();
                goto LABEL_32;
              }

              objc_msgSend__removeTileForID_(self, v55, v35, v56, v57);
            }

            v35 = objc_msgSend_indexGreaterThanIndex_(self->_tileIDSet, v58, v35, v59, v60);
          }

          while (v35 != 0x7FFFFFFFFFFFFFFFLL);
        }

        v14 = v122;
        v5 = v121 - v122 * v123;
        if (v121 >= v122 * v123)
        {
          v6 = v120;
          goto LABEL_24;
        }

        TSUSetCrashReporterInfo();
        v112 = MEMORY[0x277D81150];
        v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, "[TSTTableTileStorage _removeRowsAtIndex:count:]", v114, v115, "[TSTTableTileStorage _removeRowsAtIndex:count:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", 840);
        v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v116, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v117, v118);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v112, v119, v98, v102, 840, 1, "We removed too many rows during delete!");
      }
    }

    else
    {
      TSUSetCrashReporterInfo();
      v94 = MEMORY[0x277D81150];
      v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, "[TSTTableTileStorage _removeRowsAtIndex:count:]", v96, v97, "[TSTTableTileStorage _removeRowsAtIndex:count:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", 812);
      v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v100, v101);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v94, v103, v98, v102, 812, 1, "Lost track of deletion start point!");
    }

    TSUCrashBreakpoint();
    abort();
  }

LABEL_24:
  if (v5 >= v14)
  {
    v63 = MEMORY[0x277D81150];
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSTTableTileStorage _removeRowsAtIndex:count:]", v23, v24);
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v66, v67);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v69, v64, v68, 847, 0, "Shift too big during delete!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72, v73);
  }

  MEMORY[0x2821F9670](self, sel__shiftRowsUpAtIndex_count_, v6, v5, v24);
}

- (id)_yankRowRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v61 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], a2, range.location, range.length, v3);
  objc_msgSend_willModify(self, v7, v8, v9, v10);
  v11 = length + location - 1;
  v12 = location >> 8;
  v60 = v11;
  v13 = v11 >> 8;
  if (v12 <= v13)
  {
    v59 = v13 + 1;
    v14 = location & 0xFFFFFF00;
    v15 = 1 - (location + (location & 0xFFFFFF00));
    v16 = (location & 0xFFFFFF00) - 1;
    do
    {
      if (v14 >= location)
      {
        v17 = location;
      }

      else
      {
        v17 = v14;
      }

      v18 = objc_opt_class();
      v23 = objc_msgSend_tileSize(v18, v19, v20, v21, v22);
      if (location >= v14)
      {
        v26 = location - v14;
      }

      else
      {
        v26 = 0;
      }

      if (v60 >= v23 + v16)
      {
        v27 = v23 + v16;
      }

      else
      {
        v27 = v60;
      }

      v28 = objc_msgSend__tileForID_createIfMissing_(self, v24, v12, 0, v25);
      v33 = v28;
      v34 = v27 + v17 + v15;
      if (v28)
      {
        if (objc_msgSend_isEmpty(v28, v29, v30, v31, v32))
        {
          v39 = objc_msgSend_count(v61, v35, v36, v37, v38);
          objc_msgSend_setCount_(v61, v40, v39 + v34, v41, v42);
        }

        else
        {
          v51 = objc_msgSend_yankRowsAtTileRowIndex_count_(v33, v35, v26, v34, v38);
          objc_msgSend_tsu_addPointersFromPointerArray_(v61, v52, v51, v53, v54);
        }

        if (objc_msgSend_isEmpty(v33, v43, v44, v45, v46))
        {
          objc_msgSend__removeTileForID_(self, v55, v12, v56, v57);
        }
      }

      else
      {
        v47 = objc_msgSend_count(v61, v29, v30, v31, v32);
        objc_msgSend_setCount_(v61, v48, v47 + v34, v49, v50);
      }

      ++v12;
      v14 += 256;
      v15 -= 256;
      v16 += 256;
    }

    while (v59 != v12);
  }

  return v61;
}

- (void)_spliceRows:(id)rows atIndex:(unsigned int)index
{
  rowsCopy = rows;
  v5 = objc_opt_class();
  v10 = objc_msgSend_tileSize(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_count(rowsCopy, v11, v12, v13, v14);
  v20 = v15;
  v21 = v10 - index;
  if (v15 >= v21)
  {
    v22 = v10 - index;
  }

  else
  {
    v22 = v15;
  }

  v23 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v16, v17, v18, v19);
  objc_msgSend_setCount_(v23, v24, v22, v25, v26);
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = 0;
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = sub_2211A3EB0;
  v71[3] = &unk_278460600;
  v74 = 0;
  v75 = v22;
  v73 = &v76;
  v27 = v23;
  v72 = v27;
  objc_msgSend_tsu_enumerateNonNullPointersUsingBlock_(rowsCopy, v28, v71, v29, v30);
  if (*(v77 + 24) == 1)
  {
    v35 = objc_msgSend__tileForID_createIfMissing_(self, v31, index >> 8, 1, v34);
    objc_msgSend_spliceRows_atTileRowIndex_(v35, v36, v27, index, v37);
    if (objc_msgSend_isEmpty(v35, v38, v39, v40, v41))
    {
      objc_msgSend__removeTileForID_(self, v31, index >> 8, v33, v34);
    }
  }

  else
  {
    v35 = 0;
  }

  if (v20 <= v21)
  {
    v54 = v35;
  }

  else
  {
    v42 = v10;
    v43 = (index >> 8) + 1;
    do
    {
      if (v20 - v22 >= v42)
      {
        v44 = v42;
      }

      else
      {
        v44 = v20 - v22;
      }

      v45 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v31, v32, v33, v34);

      objc_msgSend_setCount_(v45, v46, v44, v47, v48);
      *(v77 + 24) = 0;
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = sub_2211A3EF8;
      v66[3] = &unk_278460600;
      v69 = v22;
      v70 = v44;
      v68 = &v76;
      v27 = v45;
      v67 = v27;
      objc_msgSend_tsu_enumerateNonNullPointersUsingBlock_(rowsCopy, v49, v66, v50, v51);
      if (*(v77 + 24) == 1)
      {
        v54 = objc_msgSend__tileForID_createIfMissing_(self, v52, v43, 1, v53);

        objc_msgSend_spliceRows_atTileRowIndex_(v54, v55, v27, 0, v56);
        if (objc_msgSend_isEmpty(v54, v57, v58, v59, v60))
        {
          objc_msgSend__removeTileForID_(self, v61, v43, v62, v63);
        }
      }

      else
      {
        v54 = v35;
      }

      v22 += v44;

      ++v43;
      v35 = v54;
    }

    while (v22 < v20);
  }

  _Block_object_dispose(&v76, 8);
}

- (void)enumerateTilesConcurrentlyUsingBlock:(id)block
{
  blockCopy = block;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_2211A40A8;
  v27 = sub_2211A40B8;
  v5 = objc_opt_class();
  v28 = objc_msgSend__sharedQueue(v5, v6, v7, v8, v9);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = sub_2211A40C0;
  v20 = &unk_278460670;
  v22 = &v23;
  v10 = blockCopy;
  v21 = v10;
  objc_msgSend__enumerateTiles_(self, v11, &v17, v12, v13);
  objc_msgSend_performSync_(v24[5], v14, &unk_2834A29B0, v15, v16, v17, v18, v19, v20);

  _Block_object_dispose(&v23, 8);
}

- (void)enumerateRowsWithBlock:(id)block
{
  blockCopy = block;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2211A426C;
  v9[3] = &unk_2784606C0;
  v10 = blockCopy;
  v5 = blockCopy;
  objc_msgSend__enumerateTiles_(self, v6, v9, v7, v8);
}

- (void)enumerateRowsInRange:(_NSRange)range withBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  if (length)
  {
    v9 = length + location - 1;
    v10 = location >> 8;
    v11 = v9 >> 8;
    if (v10 <= v11)
    {
      v12 = v11 + 1;
      v13 = location & 0xFFFFFF00;
      while (1)
      {
        v14 = objc_msgSend__tileForID_createIfMissing_(self, v7, v10, 0, v8);
        if (v14)
        {
          v26 = 0;
          v27 = &v26;
          v28 = 0x2020000000;
          v29 = 0;
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = sub_2211A4500;
          v20[3] = &unk_2784606E8;
          v23 = v13;
          v24 = location;
          v25 = v9;
          v21 = blockCopy;
          v22 = &v26;
          objc_msgSend_enumerateRowsAndIndexesWithBlock_(v14, v15, v20, v16, v17);
          v18 = *(v27 + 24);

          _Block_object_dispose(&v26, 8);
          if (v18)
          {
            break;
          }
        }

        ++v10;
        v13 += 256;
        if (v12 == v10)
        {
          goto LABEL_9;
        }
      }
    }
  }

LABEL_9:
}

- (void)enumerateRowByRowInRange:(_NSRange)range withBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  if (length)
  {
    v10 = length - 1 + location;
    if (!__CFADD__(length - 1, location))
    {
      do
      {
        while (1)
        {
          v11 = objc_msgSend__tileForID_createIfMissing_(self, v7, location >> 8, 0, v8);
          if (v11)
          {
            v13 = objc_msgSend_rowInfoForTileRowIndex_(v11, v7, location, v12, v8);

            if (v13)
            {
              break;
            }
          }

          location = (location + 1);
          if (location > v10)
          {
            goto LABEL_9;
          }
        }

        v14 = 0;
        blockCopy[2](blockCopy, v13, location, &v14);
        location = (location + 1);
      }

      while (location <= v10 && (v14 & 1) == 0);
    }
  }

LABEL_9:
}

- (id)rowInfoAtIndex:(unsigned int)index
{
  v7 = index >> 8;
  if (objc_msgSend_containsIndex_(self->_tileIDSet, a2, v7, v3, v4))
  {
    if (index >= 0x100000)
    {
      TSUSetCrashReporterInfo();
      v33 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSTTableTileStorage rowInfoAtIndex:]", v35, v36, "[TSTTableTileStorage rowInfoAtIndex:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", 1106);
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v39, v40);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v42, v37, v41, 1106, 1, "Bad tile group index!");

      TSUCrashBreakpoint();
      abort();
    }

    v11 = v7 >> 8;
    tileGroups = self->_tileGroups;
    v13 = tileGroups[v7 >> 8];
    if (!v13)
    {
      v14 = objc_msgSend_groupWithStartingTileID_(TSTTableTileGroup, v8, v7 & 0xF00, v9, v10);
      v15 = tileGroups[v11];
      tileGroups[v11] = v14;

      v13 = tileGroups[v11];
    }

    v16 = objc_msgSend_objectAtIndexedSubscript_(v13, v8, v7, v9, v10);
    if (v16)
    {
      v20 = objc_msgSend_rowInfoForTileRowIndex_(v16, v17, index, v18, v19);
      goto LABEL_9;
    }

    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTTableTileStorage rowInfoAtIndex:]", v18, v19);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 1121, 0, "invalid nil value for '%{public}s'", "tile");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  v20 = 0;
LABEL_9:

  return v20;
}

- (id)tileForWritingAtRowIndex:(unsigned int)index outTileRange:(_NSRange *)range
{
  v7 = objc_msgSend__tileForID_createIfMissing_(self, a2, index >> 8, 1, v4);
  if (range)
  {
    v8 = objc_opt_class();
    v13 = objc_msgSend_tileSize(v8, v9, v10, v11, v12);
    range->location = index & 0xFFFFFF00;
    range->length = v13;
  }

  return v7;
}

- (id)tileStartingAtOrBeforeRowIndex:(unsigned int)index outTileRange:(_NSRange *)range
{
  v7 = objc_msgSend_indexLessThanOrEqualToIndex_(self->_tileIDSet, a2, index >> 8, range, v4);
  v10 = objc_msgSend__tileForID_createIfMissing_(self, v8, v7, 0, v9);
  if (range)
  {
    v11 = objc_opt_class();
    v16 = objc_msgSend_tileSize(v11, v12, v13, v14, v15);
    range->location = (v7 & 0xFFFFFF) << 8;
    range->length = v16;
  }

  return v10;
}

- (id)tileStartingAtOrAfterRowIndex:(unsigned int)index outTileRange:(_NSRange *)range
{
  v7 = objc_msgSend_indexGreaterThanOrEqualToIndex_(self->_tileIDSet, a2, index >> 8, range, v4);
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v7;
    v10 = objc_msgSend__tileForID_createIfMissing_(self, v8, v7, 0, v9);

    v11 = (*&v12 & 0xFFFFFFLL) << 8;
    if (!range)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = 0;
  v11 = 0x7FFFFFFFLL;
  if (range)
  {
LABEL_5:
    v13 = objc_opt_class();
    v18 = objc_msgSend_tileSize(v13, v14, v15, v16, v17);
    range->location = v11;
    range->length = v18;
  }

LABEL_6:

  return v10;
}

- (void)insertRowsAtIndex:(unsigned int)index count:(unsigned int)count
{
  v5 = *&count;
  v6 = *&index;
  objc_msgSend_willModify(self, a2, *&index, *&count, v4);
  if (TSTTilesCat_init_token != -1)
  {
    sub_2216F6D34();
  }

  objc_msgSend__insertRowsAtIndex_count_(self, v8, v6, v5, v9);
  if (objc_msgSend_firstIndex(self->_tileIDSet, v10, v11, v12, v13))
  {
    v17 = objc_msgSend__createTileWithID_(self, v14, 0, v15, v16);
  }
}

- (void)removeRowsAtIndex:(unsigned int)index count:(unsigned int)count
{
  v5 = *&count;
  v6 = *&index;
  objc_msgSend_willModify(self, a2, *&index, *&count, v4);
  if (TSTTilesCat_init_token != -1)
  {
    sub_2216F6D48();
  }

  objc_msgSend__removeRowsAtIndex_count_(self, v8, v6, v5, v9);
  if (objc_msgSend_firstIndex(self->_tileIDSet, v10, v11, v12, v13))
  {
    v17 = objc_msgSend__createTileWithID_(self, v14, 0, v15, v16);
  }
}

- (void)swapRowAtIndex:(unsigned int)index withRowAtIndex:(unsigned int)atIndex
{
  objc_msgSend_willModify(self, a2, *&index, *&atIndex, v4);
  if (TSTTilesCat_init_token != -1)
  {
    sub_2216F6D5C();
  }

  v10 = objc_msgSend__tileForID_createIfMissing_(self, v8, index >> 8, 0, v9);
  v13 = v10;
  if (index >> 8 != atIndex >> 8)
  {
    v37 = atIndex >> 8;
    v14 = objc_msgSend__tileForID_createIfMissing_(self, v11, v37, 0, v12);
    v18 = v14;
    if (v13)
    {
      v19 = objc_msgSend_yankRowInfoAtTileRowIndex_(v13, v15, index, v16, v17);
      v21 = v19;
      if (!v18)
      {
        v22 = 0;
        if (!v19)
        {
          v23 = 0;
          goto LABEL_19;
        }

        v18 = objc_msgSend__createTileWithID_(self, v15, v37, v16, v17);
        goto LABEL_12;
      }
    }

    else
    {
      v21 = 0;
      v23 = 0;
      v22 = 0;
      v24 = 0;
      if (!v14)
      {
LABEL_25:

        v13 = v24;
        goto LABEL_26;
      }
    }

    v25 = objc_msgSend_yankRowInfoAtTileRowIndex_(v18, v15, atIndex, v16, v17);
    v22 = v25;
    if (!v21)
    {
      v23 = v18;
      if (!v25)
      {
        goto LABEL_18;
      }

LABEL_15:
      if (!v13)
      {
        v13 = objc_msgSend__createTileWithID_(self, v15, index >> 8, v16, v17);
      }

      objc_msgSend_spliceRowInfo_atTileRowIndex_overwrite_(v13, v15, v22, index, 0);
LABEL_18:
      if (!v13)
      {
LABEL_21:
        if (v23 && objc_msgSend_isEmpty(v23, v15, v20, v16, v17))
        {
          objc_msgSend__removeTileForID_(self, v26, v37, v27, v28);
          v24 = v13;
        }

        else
        {
          v24 = v13;
        }

        goto LABEL_25;
      }

LABEL_19:
      if (objc_msgSend_isEmpty(v13, v15, v20, v16, v17))
      {
        objc_msgSend__removeTileForID_(self, v15, index >> 8, v16, v17);
      }

      goto LABEL_21;
    }

LABEL_12:
    v23 = v18;
    objc_msgSend_spliceRowInfo_atTileRowIndex_overwrite_(v18, v15, v21, atIndex, 0);
    if (!v22)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v10)
  {
    objc_msgSend_swapRowAtTileRowIndex_withRowAtTileRowIndex_(v10, v11, index, atIndex, v12);
  }

LABEL_26:

  if (objc_msgSend_firstIndex(self->_tileIDSet, v29, v30, v31, v32))
  {
    v36 = objc_msgSend__createTileWithID_(self, v33, 0, v34, v35);
  }
}

- (void)moveRowIndexRange:(_NSRange)range toIndex:(unsigned int)index
{
  LODWORD(v4) = index;
  length = range.length;
  location = range.location;
  PopulatedRowIndex = objc_msgSend_lastPopulatedRowIndex(self, a2, range.location, range.length, *&index);
  if (TSTTilesCat_init_token != -1)
  {
    sub_2216F6D70();
  }

  if (location < v4)
  {
    if (location + length > v4)
    {
      v13 = MEMORY[0x277D81150];
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableTileStorage moveRowIndexRange:toIndex:]", v10, v11);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v15, v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v47, v17, 1288, 0, "Move row ranges cannot overlap!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    }

    LODWORD(v4) = v4 - length;
  }

  v23 = (v4 - location);
  if (v4 != location && length && PopulatedRowIndex != 0x7FFFFFFF && (PopulatedRowIndex >= location || v4 <= PopulatedRowIndex))
  {
    objc_msgSend_willModify(self, v8, v9, v10, v11);
    v26 = v4;
    v27 = (location - v4);
    v28 = v4 > location;
    if (v4 > location)
    {
      v29 = location;
    }

    else
    {
      v29 = v4;
    }

    if (v4 > location)
    {
      v4 = v4;
    }

    else
    {
      v4 = (v4 + length);
    }

    if (v28)
    {
      v30 = location;
    }

    else
    {
      v30 = v26;
    }

    if (v28)
    {
      v31 = length;
    }

    else
    {
      v31 = v27;
    }

    if (v28)
    {
      location = (location + length);
    }

    if (v28)
    {
      length = v23;
    }

    v48 = objc_msgSend__yankRowRange_(self, v24, v30, v31, v25);
    v34 = objc_msgSend__yankRowRange_(self, v32, location, length, v33);
    objc_msgSend__spliceRows_atIndex_(self, v35, v34, v29, v36);
    objc_msgSend__spliceRows_atIndex_(self, v37, v48, v4, v38);
    if (objc_msgSend_firstIndex(self->_tileIDSet, v39, v40, v41, v42))
    {
      v46 = objc_msgSend__createTileWithID_(self, v43, 0, v44, v45);
    }
  }
}

- (id)columnCellCountsOfRowsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_2211A40A8;
  v15 = sub_2211A40B8;
  v16 = objc_msgSend_dictionary(MEMORY[0x277D81208], a2, range.location, range.length, v3);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2211A520C;
  v10[3] = &unk_27845E8E0;
  v10[4] = &v11;
  objc_msgSend_enumerateRowsInRange_withBlock_(self, v7, location, length, v10);
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)insertColumnsAtIndex:(unsigned __int16)index count:(unsigned int)count
{
  objc_msgSend_willModify(self, a2, index, *&count, v4);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2211A5350;
  v11[3] = &unk_278460708;
  indexCopy = index;
  countCopy = count;
  objc_msgSend_enumerateTilesConcurrentlyUsingBlock_(self, v8, v11, v9, v10);
}

- (id)removeColumnsAtIndex:(unsigned __int16)index count:(unsigned int)count
{
  objc_msgSend_willModify(self, a2, index, *&count, v4);
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3812000000;
  v19[3] = sub_2211A54AC;
  v19[4] = nullsub_17;
  v19[5] = &unk_22188E88F;
  v20 = 0;
  v8 = objc_opt_new();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2211A54BC;
  v14[3] = &unk_278460758;
  indexCopy = index;
  countCopy = count;
  v16 = v19;
  v9 = v8;
  v15 = v9;
  objc_msgSend_enumerateTilesConcurrentlyUsingBlock_(self, v10, v14, v11, v12);

  _Block_object_dispose(v19, 8);

  return v9;
}

- (void)moveColumnIndexRange:(_NSRange)range toIndex:(unsigned __int16)index
{
  length = range.length;
  location = range.location;
  objc_msgSend_willModify(self, a2, range.location, range.length, index);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2211A5668;
  v11[3] = &unk_278460778;
  v13 = location;
  v12 = length;
  indexCopy = index;
  objc_msgSend_enumerateTilesConcurrentlyUsingBlock_(self, v8, v11, v9, v10);
}

- (NSIndexSet)populatedTiles
{
  v3 = objc_alloc(MEMORY[0x277CCAA78]);
  v7 = objc_msgSend_initWithIndexSet_(v3, v4, self->_tileIDSet, v5, v6);

  return v7;
}

- (NSIndexSet)populatedRows
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2211A40A8;
  v16 = sub_2211A40B8;
  v17 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, v2, v3, v4);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2211A57EC;
  v11[3] = &unk_27845E8E0;
  v11[4] = &v12;
  objc_msgSend_enumerateRowsWithBlock_(self, v6, v11, v7, v8);
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (unsigned)lastPopulatedRowIndex
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0x7FFFFFFF;
  Index = objc_msgSend_lastIndex(self->_tileIDSet, a2, v2, v3, v4);
  v9 = objc_msgSend__tileForID_createIfMissing_(self, v7, Index, 0, v8);
  if (objc_msgSend_isEmpty(v9, v10, v11, v12, v13))
  {
    tileIDSet = self->_tileIDSet;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2211A5A3C;
    v21[3] = &unk_27845F0D8;
    v21[4] = self;
    v21[5] = &v22;
    objc_msgSend_enumerateIndexesWithOptions_usingBlock_(tileIDSet, v14, 2, v21, v17);
    v19 = *(v23 + 6);
  }

  else
  {
    v19 = objc_msgSend_maxRow(v9, v14, v15, v16, v17) + (Index << 8);
    *(v23 + 6) = v19;
  }

  _Block_object_dispose(&v22, 8);
  return v19;
}

- (void)pruneTileForRowIndex:(unsigned int)index
{
  if (index >= 0x100)
  {
    v5 = index >> 8;
    v13 = objc_msgSend__tileForID_createIfMissing_(self, a2, v5, 0, v3);
    if (v13 && objc_msgSend_isEmpty(v13, v6, v7, v8, v9))
    {
      objc_msgSend__removeTileForID_(self, v10, v5, v11, v12);
    }
  }
}

- (void)pruneTilesForRows:(id)rows
{
  rowsCopy = rows;
  if (objc_msgSend_count(rowsCopy, v4, v5, v6, v7))
  {
    v16 = objc_msgSend_firstIndex(rowsCopy, v8, v9, v10, v11) >> 8;
    v19 = objc_msgSend_lastIndex(rowsCopy, v12, v13, v14, v15) >> 8;
    if (v16 <= v19)
    {
      do
      {
        if (v16)
        {
          v20 = objc_msgSend__tileForID_createIfMissing_(self, v17, v16, 0, v18);
          v25 = v20;
          if (v20 && objc_msgSend_isEmpty(v20, v21, v22, v23, v24))
          {
            objc_msgSend__removeTileForID_(self, v26, v16, v27, v28);
          }
        }
      }

      while (v16++ < v19);
    }
  }
}

- (BOOL)needToUpgradeCellStorage
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (self->_upgradeRepairedTiles)
  {
    v4 = 1;
    v10 = 1;
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_2211A5E70;
    v6[3] = &unk_278460568;
    v6[4] = &v7;
    objc_msgSend__enumerateTiles_(self, a2, v6, v2, v3);
    v4 = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  return v4 & 1;
}

- (BOOL)auditRowInfoCellCountsReturningResult:(id *)result
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_2211A40A8;
  v17 = sub_2211A40B8;
  v18 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], a2, @"RowInfo Cell Count Audit\n", v3, v4);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2211A6024;
  v12[3] = &unk_2784607E8;
  v12[4] = &v19;
  v12[5] = &v13;
  objc_msgSend__enumerateTiles_(self, v7, v12, v8, v9);
  if (result)
  {
    *result = v14[5];
  }

  v10 = *(v20 + 24);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return v10;
}

- (BOOL)auditTilesForRowOverlapAndExtensionPastTableBounds:(TSUCellCoord)bounds withDataStore:(id)store result:(id *)result
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_2211A40A8;
  v25[4] = sub_2211A40B8;
  v26 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, *&bounds, store, result);
  v11 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v8, @"Tile Overlap Audit\n", v9, v10);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2211A645C;
  v19[3] = &unk_278460810;
  v21 = v25;
  v12 = v11;
  v20 = v12;
  v22 = &v31;
  v23 = &v27;
  boundsCopy = bounds;
  objc_msgSend__enumerateTiles_(self, v13, v19, v14, v15);
  if (result)
  {
    v16 = v12;
    *result = v12;
  }

  if (*(v32 + 24) == 1)
  {
    v17 = *(v28 + 24);
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  return v17 & 1;
}

- (void)reset
{
  objc_msgSend_removeAllIndexes(self->_tileIDSet, a2, v2, v3, v4);
  v6 = 0;
  tileGroups = self->_tileGroups;
  do
  {
    v8 = tileGroups[v6];
    tileGroups[v6] = 0;

    ++v6;
  }

  while (v6 != 16);
  self->_upgradeRepairedTiles = 0;
}

- (void)widenTilesForUpgrade
{
  objc_msgSend_willModifyForUpgrade(self, a2, v2, v3, v4);
  self->_shouldUseWideRows = 1;

  objc_msgSend_enumerateTilesConcurrentlyUsingBlock_(self, v6, &unk_2834A2A90, v7, v8);
}

- (multimap<TSUCellCoord,)makeStorageMap
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x4812000000;
  v11 = sub_2211A6800;
  v12 = sub_2211A683C;
  v13 = &unk_22188E88F;
  v15[0] = 0;
  v15[1] = 0;
  v14 = v15;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2211A6848;
  v7[3] = &unk_278460568;
  v7[4] = &v8;
  objc_msgSend__enumerateTiles_(self, a3, v7, v3, v4);
  sub_2211A8B04(retstr, v9 + 6);
  _Block_object_dispose(&v8, 8);
  sub_2210BC9F8(&v14, v15[0]);
  return result;
}

- (void)prepareToApplyConcurrentCellMap:(id)map
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2211A6A08;
  v5[3] = &unk_2784608A8;
  v5[4] = self;
  objc_msgSend_gatherRowState_(map, a2, v5, v3, v4);
}

@end