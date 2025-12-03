@interface TSTTableTileRowInfo
+ (id)rowInfoFromArchive:(const void *)archive fileFormatVersion:(unint64_t)version;
+ (id)rowInfoWithTileRowIndex:(unsigned int)index wideOffsets:(BOOL)offsets;
- (BOOL)_quickValidateBuffer:(TSTTableTileRowBuffer *)buffer;
- (BOOL)quickValidate;
- (BOOL)searchCellStorageRefAtColumnIndex:(unsigned __int16)index searchMask:(unint64_t)mask;
- (BOOL)validateWithResult:(id *)result;
- (TSTCellStorage)cellStorageRefAtIndex:(unsigned __int16)index;
- (TSTCellStorage)p_preBNCStorageRefAtIndex:(unsigned __int16)index;
- (TSTTableTileRowInfo)initWithTileRowIndex:(unsigned int)index wideOffsets:(BOOL)offsets;
- (id)description;
- (id)initFromArchive:(const void *)archive fileFormatVersion:(unint64_t)version;
- (id)p_emptyCell;
- (int64_t)setCell:(id)cell atIndex:(unsigned __int16)index;
- (unint64_t)archivingCompatibilityVersion;
- (unint64_t)removeColumnsAtIndex:(unsigned __int16)index count:(unsigned int)count;
- (unsigned)_archivedColumnCount;
- (unsigned)cellIndexAtOrAfterIndex:(unsigned __int16)index;
- (unsigned)cellIndexAtOrBeforeIndex:(unsigned __int16)index;
- (vector<TSTCell)accumulateCurrentCellsConcurrentlyAtColumns:(TSTTableTileRowInfo *)self usingCellCreationBlock:(SEL)block;
- (void)_insertCell:(id)cell atIndex:(unsigned __int16)index;
- (void)_removeCellAtIndex:(unsigned __int16)index;
- (void)_replaceCellAtIndex:(unsigned __int16)index withCell:(id)cell;
- (void)convertToWideOffsets;
- (void)dealloc;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)enumerateStoragesInColumnRange:(_NSRange)range getPreBNC:(BOOL)c withBlock:(id)block;
- (void)insertColumnsAtIndex:(unsigned __int16)index count:(unsigned int)count;
- (void)moveColumnsFromIndex:(unsigned __int16)index toIndex:(unsigned __int16)toIndex count:(unsigned int)count;
@end

@implementation TSTTableTileRowInfo

- (vector<TSTCell)accumulateCurrentCellsConcurrentlyAtColumns:(TSTTableTileRowInfo *)self usingCellCreationBlock:(SEL)block
{
  v17 = a5;
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->__begin_ = 0;
  sub_2211389A0(retstr, (*(a4 + 1) - *a4) >> 1);
  v11 = *a4;
  if (*(a4 + 1) != *a4)
  {
    v12 = 0;
    do
    {
      v13 = objc_msgSend_cellStorageRefAtIndex_(self, v8, *(v11 + 2 * v12), v9, v10, v17);
      v14 = v17[2](v17, v13, v12);
      v15 = retstr->__begin_[v12];
      retstr->__begin_[v12] = v14;

      ++v12;
      v11 = *a4;
    }

    while (v12 < (*(a4 + 1) - *a4) >> 1);
  }

  return result;
}

+ (id)rowInfoWithTileRowIndex:(unsigned int)index wideOffsets:(BOOL)offsets
{
  offsetsCopy = offsets;
  v5 = *&index;
  v6 = [self alloc];
  v9 = objc_msgSend_initWithTileRowIndex_wideOffsets_(v6, v7, v5, offsetsCopy, v8);

  return v9;
}

- (TSTTableTileRowInfo)initWithTileRowIndex:(unsigned int)index wideOffsets:(BOOL)offsets
{
  offsetsCopy = offsets;
  v7.receiver = self;
  v7.super_class = TSTTableTileRowInfo;
  result = [(TSTTableTileRowInfo *)&v7 init];
  if (result)
  {
    result->_tileRowIndex = index;
    *&result->_currentData._private.cellData = 0u;
    *&result->_currentData._private.allocatedCellBufferSize = 0u;
    *(&result->_currentData._private.offsets + 7) = 0;
    *&result->_preBNCData._private.cellData = 0u;
    *&result->_preBNCData._private.allocatedCellBufferSize = 0u;
    *(&result->_preBNCData._private.offsets + 7) = 0;
    if (offsetsCopy)
    {
      result->_currentData._private.wideOffsets = 1;
    }

    result->_cellCount = 0;
    *&result->_maxColumnIndexPrivate = 83984383;
    __dmb(0xBu);
  }

  return result;
}

- (void)dealloc
{
  sub_221138D14(&self->_currentData);
  sub_221138D14(&self->_preBNCData);
  v3.receiver = self;
  v3.super_class = TSTTableTileRowInfo;
  [(TSTTableTileRowInfo *)&v3 dealloc];
}

+ (id)rowInfoFromArchive:(const void *)archive fileFormatVersion:(unint64_t)version
{
  v6 = [self alloc];
  v9 = objc_msgSend_initFromArchive_fileFormatVersion_(v6, v7, archive, version, v8);

  return v9;
}

- (id)initFromArchive:(const void *)archive fileFormatVersion:(unint64_t)version
{
  v57.receiver = self;
  v57.super_class = TSTTableTileRowInfo;
  v6 = [(TSTTableTileRowInfo *)&v57 init];
  v8 = v6;
  if (!v6)
  {
    return v8;
  }

  v6->_tileRowIndex = *(archive + 14);
  v6->_cellCount = *(archive + 15);
  p_cellCount = &v6->_cellCount;
  v6->_unfairLock._os_unfair_lock_opaque = 0;
  __dmb(0xBu);
  v6->_storageVersion = 1;
  v10 = *(archive + 4);
  if ((v10 & 0x40) != 0)
  {
    v6->_storageVersion = *(archive + 16);
  }

  if ((v10 & 4) != 0)
  {
    sub_221139174(&v6->_currentData, *(archive + 68) & ((v10 & 0x80) >> 7), *(archive + 5) & 0xFFFFFFFFFFFFFFFELL, *(archive + 6) & 0xFFFFFFFFFFFFFFFELL, v7);
  }

  if (version > 0x3000200000009)
  {
    *(v8 + 79) = 0;
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    sub_221139174(v8 + 48, 0, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL, *(archive + 4) & 0xFFFFFFFFFFFFFFFELL, v7);
  }

  sub_2211392B0(v8);
  if (!*p_cellCount)
  {
    sub_221138D14(v8 + 48);
    sub_221138D14(v8 + 8);
    if ((v10 & 4) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_43;
  }

  v11 = sub_221138A3C(v8);
  v16 = v11;
  if (v11 == 0x7FFF)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableTileRowInfo initFromArchive:fileFormatVersion:]", v14, v15);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 922, 0, "Can't find the last valid column during unarchive!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    v28 = *(v8 + 56);
    v29 = (v8 + 80);
LABEL_19:
    v32 = 0x800000000000005FLL;
    goto LABEL_20;
  }

  v29 = (v8 + 80);
  v28 = *(v8 + 56);
  if (*(v8 + 80) <= v11)
  {
    goto LABEL_19;
  }

  v31 = *(*(v8 + 72) + 2 * v11);
  if (v31 == 0xFFFF)
  {
    goto LABEL_19;
  }

  if (*(v8 + 82))
  {
    v31 *= 4;
  }

  v32 = v31 + 96;
LABEL_20:
  if (v28 > v32)
  {
    v37 = objc_msgSend_p_preBNCStorageRefAtIndex_(v8, v12, v16, v14, v15);
    if (!v37)
    {
      v38 = MEMORY[0x277D81150];
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSTTableTileRowInfo initFromArchive:fileFormatVersion:]", v35, v36);
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v41, v42);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v44, v39, v43, 930, 0, "invalid nil value for '%{public}s'", "lastPreBNCCellRef");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
    }

    v49 = 0x7FFFFFFFFFFFFFFFLL;
    if (v16 != 0x7FFF && *v29 > v16)
    {
      v50 = *(*(v8 + 72) + 2 * v16);
      if (v50 != 0xFFFF)
      {
        if (*(v8 + 82))
        {
          v49 = 4 * v50;
        }

        else
        {
          v49 = *(*(v8 + 72) + 2 * v16);
        }
      }
    }

    v51 = sub_221395B64(v37, v33, v34, v35, v36);
    sub_221139394((v8 + 48), v49 + v51, v52, v53, v54);
  }

  v30 = 0x8000000000000087;
  if (v16 != 0x7FFF && *(v8 + 40) > v16)
  {
    v55 = *(*(v8 + 32) + 2 * v16);
    if (v55 == 0xFFFF)
    {
      v30 = 0x8000000000000087;
      if ((v10 & 4) != 0)
      {
LABEL_37:
        if (*(v8 + 16) > v30)
        {
          sub_221139394((v8 + 8), v30, v13, v14, v15);
        }

        goto LABEL_39;
      }

      goto LABEL_43;
    }

    if (*(v8 + 42))
    {
      v55 *= 4;
    }

    v30 = (v55 + 136);
  }

  if ((v10 & 4) != 0)
  {
    goto LABEL_37;
  }

LABEL_43:
  sub_2216F6BD8(v8, (v8 + 112));
LABEL_39:
  if ((objc_msgSend_quickValidate(v8, v30, v13, v14, v15) & 1) == 0)
  {

    return 0;
  }

  return v8;
}

- (id)p_emptyCell
{
  emptyCellForPreBNC = self->_emptyCellForPreBNC;
  if (!emptyCellForPreBNC)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    emptyCellForPreBNC = self->_emptyCellForPreBNC;
    if (!emptyCellForPreBNC)
    {
      v5 = [TSTCell alloc];
      v10 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v6, v7, v8, v9);
      v14 = objc_msgSend_initWithLocale_(v5, v11, v10, v12, v13);
      v15 = self->_emptyCellForPreBNC;
      self->_emptyCellForPreBNC = v14;

      emptyCellForPreBNC = self->_emptyCellForPreBNC;
    }

    objc_sync_exit(selfCopy);
  }

  return emptyCellForPreBNC;
}

- (unsigned)_archivedColumnCount
{
  cellCount = self->_cellCount;
  if (cellCount)
  {
    LOWORD(cellCount) = sub_221138A3C(self) + 1;
  }

  return cellCount;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  wideOffsets = self->_currentData._private.wideOffsets;
  v12 = *(archive + 4);
  *(archive + 14) = self->_tileRowIndex;
  cellCount = self->_cellCount;
  *(archive + 4) = v12 | 0x30;
  *(archive + 15) = cellCount;
  if (!cellCount)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableTileRowInfo encodeToArchive:archiver:]", v8, v9);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 1031, 0, "should not be archiving an empty row info");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend__archivedColumnCount(self, v6, v7, v8, v9);
  v28 = v25;
  if (v25 < 0x100)
  {
    if (wideOffsets)
    {
      v28 = v25;
    }

    else
    {
      v28 = 255;
    }
  }

  else
  {
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v26, 0xA000000000003, @"TSTExpandedTables", v27);
  }

  cellData = self->_currentData._private.cellData;
  cellBufferSize = self->_currentData._private.cellBufferSize;
  *(archive + 4) |= 4u;
  sub_22113C508(__p, cellData, cellBufferSize);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (SHIBYTE(v82) < 0)
  {
    operator delete(__p[0]);
  }

  offsets = self->_currentData._private.offsets;
  if (!offsets)
  {
    sub_221139CC8(&self->_currentData._private.cellData, (v28 - 1));
    offsets = self->_currentData._private.offsets;
  }

  v32 = 2 * v28;
  *(archive + 4) |= 8u;
  sub_22113C508(__p, offsets, v32);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (SHIBYTE(v82) < 0)
  {
    operator delete(__p[0]);
    if (wideOffsets)
    {
      goto LABEL_14;
    }
  }

  else if (wideOffsets)
  {
LABEL_14:
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v33, 0xA000000000003, @"TSTExpandedTables", v36);
    v37 = *(archive + 4);
    *(archive + 68) = 1;
    *(archive + 4) = v37 | 0x81;
    HIBYTE(v82) = 4;
    strcpy(__p, "🤠");
    google::protobuf::internal::ArenaStringPtr::Set();
    if (SHIBYTE(v82) < 0)
    {
      operator delete(__p[0]);
    }

    *(archive + 4) |= 2u;
    HIBYTE(v82) = 4;
    strcpy(__p, "🤠");
    google::protobuf::internal::ArenaStringPtr::Set();
    goto LABEL_39;
  }

  v41 = self->_preBNCData._private.cellData;
  if (!v41)
  {
    v42 = objc_msgSend_p_emptyCell(self, 0, v34, v35, v36);
    __p[0] = 0;
    __p[1] = __p;
    v82 = 0x5812000000;
    v83 = sub_221139EDC;
    v84 = nullsub_13;
    v85 = &unk_22188E88F;
    memset(v86, 0, sizeof(v86));
    v87 = 0;
    v43 = sub_221395DEC(v42, v86);
    sub_221139CC8(&self->_preBNCData._private.cellData, 0xFEu);
    v47 = v43;
    v48 = self->_cellCount * v43;
    allocatedCellBufferSize = self->_preBNCData._private.allocatedCellBufferSize;
    if (allocatedCellBufferSize < v48)
    {
      if (v48 >= 0x41)
      {
        if (v48 >= 0x81)
        {
          if (v48 >= 0x201)
          {
            if (v48 >= 0x401)
            {
              v50 = (v48 >> (flsll(2048) - 1) << 11) + 2048;
            }

            else
            {
              v50 = 1024;
            }
          }

          else
          {
            v50 = 512;
          }
        }

        else
        {
          v50 = 128;
        }
      }

      else
      {
        v50 = 64;
      }

      if (v50 >= 0x3FFFC)
      {
        v51 = 262140;
      }

      else
      {
        v51 = v50;
      }

      self->_preBNCData._private.allocatedCellBufferSize = v51;
      self->_preBNCData._private.cellData = malloc_type_realloc(self->_preBNCData._private.cellData, v51, 0x100004077774924uLL);
      allocatedCellBufferSize = self->_preBNCData._private.allocatedCellBufferSize;
    }

    if (self->_preBNCData._private.cellBufferSize > allocatedCellBufferSize)
    {
      v52 = MEMORY[0x277D81150];
      v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "void _preallocateCellBufferSize(TSTTableTileRowBuffer *, NSUInteger)", v45, v46);
      v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v55, v56);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v58, v53, v57, 254, 0, "Row data buffer is too small!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61, v62);
    }

    v79[0] = 0;
    v79[1] = v79;
    v79[2] = 0x2020000000;
    v80 = 0x7FFF;
    v78[0] = 0;
    v78[1] = v78;
    v78[2] = 0x2020000000;
    v78[3] = 0;
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = sub_221139EF4;
    v77[3] = &unk_27845FAC0;
    v77[4] = self;
    v77[5] = v79;
    v77[8] = v47;
    v77[9] = v42;
    v77[6] = v78;
    v77[7] = __p;
    objc_msgSend_enumerateStoragesInColumnRange_withBlock_(self, v44, 0, 255, v77);
    _Block_object_dispose(v78, 8);
    _Block_object_dispose(v79, 8);
    _Block_object_dispose(__p, 8);
    v41 = self->_preBNCData._private.cellData;
  }

  v63 = self->_preBNCData._private.cellBufferSize;
  *(archive + 4) |= 1u;
  sub_22113C508(__p, v41, v63);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (SHIBYTE(v82) < 0)
  {
    operator delete(__p[0]);
  }

  v64 = self->_preBNCData._private.offsets;
  *(archive + 4) |= 2u;
  sub_22113C508(__p, v64, v32);
  google::protobuf::internal::ArenaStringPtr::Set();
LABEL_39:
  if (SHIBYTE(v82) < 0)
  {
    operator delete(__p[0]);
  }

  storageVersion = self->_storageVersion;
  if (storageVersion != 5)
  {
    v66 = MEMORY[0x277D81150];
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSTTableTileRowInfo encodeToArchive:archiver:]", v39, v40);
    v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v69, v70);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v72, v67, v71, 1100, 0, "Expected current storage version.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75, v76);
    storageVersion = self->_storageVersion;
  }

  *(archive + 4) |= 0x40u;
  *(archive + 16) = storageVersion;
}

- (unint64_t)archivingCompatibilityVersion
{
  if (objc_msgSend__archivedColumnCount(self, a2, v2, v3, v4) > 0xFF || self->_currentData._private.wideOffsets)
  {
    return 0xA000000000003;
  }

  else
  {
    return 0x300020000000ALL;
  }
}

- (void)convertToWideOffsets
{
  if (!self->_currentData._private.wideOffsets)
  {
    sub_22113A218(&self->_currentData);

    sub_221138D14(&self->_preBNCData);
  }
}

- (unsigned)cellIndexAtOrAfterIndex:(unsigned __int16)index
{
  if (!self->_cellCount)
  {
    return 0x7FFF;
  }

  indexCopy = index;
  v5 = sub_221138A3C(self);
  v6 = 0x7FFF;
  if (v5 >= indexCopy)
  {
    v6 = indexCopy;
    while (v6 == 0x7FFF || self->_currentData._private.offsetBufferCount <= v6 || self->_currentData._private.offsets[v6] == -1)
    {
      if (v5 < ++v6)
      {
        return 0x7FFF;
      }
    }
  }

  return v6;
}

- (unsigned)cellIndexAtOrBeforeIndex:(unsigned __int16)index
{
  v3 = 0x7FFF;
  if (self->_cellCount)
  {
    v4 = 0;
    while ((index - v4) == 0x7FFF || self->_currentData._private.offsetBufferCount <= (index - v4) || self->_currentData._private.offsets[(index - v4)] == -1)
    {
      if (index < ++v4)
      {
        return 0x7FFF;
      }
    }

    return index - v4;
  }

  return v3;
}

- (void)_replaceCellAtIndex:(unsigned __int16)index withCell:(id)cell
{
  indexCopy = index;
  cellCopy = cell;
  v6 = sub_221138A3C(self);
  v9 = sub_2211438C8(cellCopy);
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (indexCopy != 0x7FFF && self->_currentData._private.offsetBufferCount > indexCopy)
  {
    v11 = self->_currentData._private.offsets[indexCopy];
    if (v11 != 0xFFFF)
    {
      if (self->_currentData._private.wideOffsets)
      {
        v10 = 4 * v11;
      }

      else
      {
        v10 = self->_currentData._private.offsets[indexCopy];
      }
    }
  }

  v15 = sub_2216F6A80(&self->_currentData, indexCopy, v6, v7, v8);
  v16 = v9 - v15;
  if (v16)
  {
    if (v16 >= 1)
    {
      sub_221139394(&self->_currentData._private.cellData, self->_currentData._private.cellBufferSize + v16, v12, v13, v14);
    }

    v23 = v10;
    if (v6 > indexCopy)
    {
      sub_22113C758(&self->_currentData._private.cellData, (v15 + v10), v16, v13, v14);
      v17 = indexCopy + 1;
      do
      {
        if (v17 != 0x7FFF)
        {
          offsetBufferCount = self->_currentData._private.offsetBufferCount;
          if (offsetBufferCount > v17)
          {
            v19 = self->_currentData._private.offsets[v17];
            if (v19 != 0xFFFF)
            {
              wideOffsets = self->_currentData._private.wideOffsets;
              if (self->_currentData._private.wideOffsets)
              {
                v21 = 4 * v19;
              }

              else
              {
                v21 = self->_currentData._private.offsets[v17];
              }

              if (v17 >= 0xFFu && !wideOffsets)
              {
                sub_22113A218(&self->_currentData);
                offsetBufferCount = self->_currentData._private.offsetBufferCount;
                wideOffsets = 1;
              }

              if (offsetBufferCount <= v17)
              {
                sub_221139CC8(&self->_currentData._private.cellData, v17);
              }

              v22 = v21 + v16;
              if (v21 + v16 == 0x7FFFFFFFFFFFFFFFLL)
              {
                LOWORD(v22) = -1;
              }

              else if (wideOffsets)
              {
                v22 >>= 2;
              }

              self->_currentData._private.offsets[v17] = v22;
            }
          }
        }

        ++v17;
      }

      while (v6 >= v17);
    }

    v10 = v23;
    if (v16 < 0)
    {
      sub_221139394(&self->_currentData._private.cellData, self->_currentData._private.cellBufferSize + v16, v12, v13, v14);
    }
  }

  sub_221143B30(cellCopy, &self->_currentData._private.cellData[v10]);
  sub_221138D14(&self->_preBNCData);
}

- (void)_insertCell:(id)cell atIndex:(unsigned __int16)index
{
  indexCopy = index;
  cellCopy = cell;
  if (indexCopy != 0x7FFF && self->_currentData._private.offsetBufferCount > indexCopy && self->_currentData._private.offsets[indexCopy] != -1)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableTileRowInfo _insertCell:atIndex:]", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 1198, 0, "Can't insert over an existing cell!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  v20 = sub_221138A3C(self);
  cellCount = self->_cellCount;
  v22 = sub_2211438C8(cellCopy);
  v23 = sub_221139F78(&self->_currentData, indexCopy, v20, cellCount, v22);
  sub_221143B30(cellCopy, v23);
  sub_221138D14(&self->_preBNCData);
  ++self->_cellCount;
  if (!self->_maxColumnIndexIsValidPrivate || (maxColumnIndexPrivate = self->_maxColumnIndexPrivate, maxColumnIndexPrivate == 0x7FFF) || maxColumnIndexPrivate <= indexCopy)
  {
    self->_maxColumnIndexPrivate = indexCopy;
    self->_maxColumnIndexIsValidPrivate = 1;
  }
}

- (int64_t)setCell:(id)cell atIndex:(unsigned __int16)index
{
  indexCopy = index;
  cellCopy = cell;
  v10 = cellCopy;
  if (self->_storageVersion != 5)
  {
    TSUSetCrashReporterInfo();
    v14 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTTableTileRowInfo setCell:atIndex:]", v16, v17, "[TSTTableTileRowInfo setCell:atIndex:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", 1241);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v23, v18, v22, 1241, 1, "Attempting to write cells to a preBNC row.");

    TSUCrashBreakpoint();
    abort();
  }

  if (indexCopy == 0x7FFF || self->_currentData._private.offsetBufferCount <= indexCopy)
  {
    if (!cellCopy)
    {
      goto LABEL_11;
    }

LABEL_10:
    objc_msgSend__insertCell_atIndex_(self, v7, cellCopy, indexCopy, v9);
    v12 = 1;
    goto LABEL_12;
  }

  v11 = self->_currentData._private.offsets[indexCopy];
  if (cellCopy)
  {
    if (v11 != 0xFFFF)
    {
      objc_msgSend__replaceCellAtIndex_withCell_(self, v7, indexCopy, cellCopy, v9);
LABEL_11:
      v12 = 0;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v11 == 0xFFFF)
  {
    goto LABEL_11;
  }

  objc_msgSend__removeCellAtIndex_(self, v7, indexCopy, v8, v9);
  v12 = -1;
LABEL_12:

  return v12;
}

- (void)insertColumnsAtIndex:(unsigned __int16)index count:(unsigned int)count
{
  if (self->_storageVersion != 5)
  {
    TSUSetCrashReporterInfo();
    v18 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTTableTileRowInfo insertColumnsAtIndex:count:]", v20, v21, "[TSTTableTileRowInfo insertColumnsAtIndex:count:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", 1273);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v27, v22, v26, 1273, 1, "Attempting to insert columns in a preBNC row.");

    TSUCrashBreakpoint();
    abort();
  }

  countCopy = count;
  indexCopy = index;
  v7 = sub_221138A3C(self);
  if (v7 != 0x7FFF && v7 >= indexCopy)
  {
    v8 = countCopy;
    v9 = (countCopy + indexCopy);
    v10 = v7 + 1;
    do
    {
      v11 = v10 - 1;
      offsetBufferCount = self->_currentData._private.offsetBufferCount;
      if (v10 == 0x8000 || offsetBufferCount <= v11)
      {
        wideOffsets = self->_currentData._private.wideOffsets;
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = self->_currentData._private.offsets[(v10 - 1)];
        v14 = 4 * v13;
        if (!self->_currentData._private.wideOffsets)
        {
          v14 = self->_currentData._private.offsets[v11];
        }

        wideOffsets = self->_currentData._private.wideOffsets;
        if (v13 == 0xFFFF)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }
      }

      if ((v11 + v8) >= 0xFFu && !wideOffsets)
      {
        sub_22113A218(&self->_currentData);
        offsetBufferCount = self->_currentData._private.offsetBufferCount;
        wideOffsets = 1;
      }

      if (offsetBufferCount <= (v11 + v8))
      {
        sub_221139CC8(&self->_currentData._private.cellData, (v11 + v8));
      }

      v17 = v16 >> 2;
      if (!wideOffsets)
      {
        LOWORD(v17) = v16;
      }

      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        LOWORD(v17) = -1;
      }

      self->_currentData._private.offsets[(v11 + v8)] = v17;
      if (v11 < v9)
      {
        if (v11 >= 0xFF && !self->_currentData._private.wideOffsets)
        {
          sub_22113A218(&self->_currentData);
        }

        if (self->_currentData._private.offsetBufferCount <= v11)
        {
          sub_221139CC8(&self->_currentData._private.cellData, v11);
        }

        self->_currentData._private.offsets[v11] = -1;
      }

      v10 = v11;
    }

    while (v11 > indexCopy);
    sub_221138D14(&self->_preBNCData);

    sub_2211392B0(self);
  }
}

- (unint64_t)removeColumnsAtIndex:(unsigned __int16)index count:(unsigned int)count
{
  if (self->_storageVersion != 5)
  {
    TSUSetCrashReporterInfo();
    v18 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTTableTileRowInfo removeColumnsAtIndex:count:]", v20, v21, "[TSTTableTileRowInfo removeColumnsAtIndex:count:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", 1309);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v27, v22, v26, 1309, 1, "Attempting to remove columns in a preBNC row.");

    TSUCrashBreakpoint();
    abort();
  }

  countCopy = count;
  indexCopy = index;
  v9 = sub_221138A3C(self);
  result = 0;
  if (v9 != 0x7FFF && v9 >= indexCopy)
  {
    cellCount = self->_cellCount;
    if (countCopy)
    {
      sub_2216F6C34(self, indexCopy, indexCopy + countCopy, v7, v8);
    }

    do
    {
      offsetBufferCount = self->_currentData._private.offsetBufferCount;
      if ((indexCopy + countCopy) == 0x7FFF || offsetBufferCount <= (indexCopy + countCopy))
      {
        wideOffsets = self->_currentData._private.wideOffsets;
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = self->_currentData._private.offsets[(indexCopy + countCopy)];
        v14 = 4 * v13;
        if (!self->_currentData._private.wideOffsets)
        {
          v14 = self->_currentData._private.offsets[(indexCopy + countCopy)];
        }

        wideOffsets = self->_currentData._private.wideOffsets;
        if (v13 == 0xFFFF)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }
      }

      if (indexCopy >= 0xFFu && !wideOffsets)
      {
        sub_22113A218(&self->_currentData);
        offsetBufferCount = self->_currentData._private.offsetBufferCount;
        wideOffsets = 1;
      }

      if (offsetBufferCount <= indexCopy)
      {
        sub_221139CC8(&self->_currentData._private.cellData, indexCopy);
      }

      v17 = v16 >> 2;
      if (!wideOffsets)
      {
        LOWORD(v17) = v16;
      }

      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        LOWORD(v17) = -1;
      }

      self->_currentData._private.offsets[indexCopy] = v17;
      LOWORD(indexCopy) = indexCopy + 1;
    }

    while (v9 >= indexCopy);
    sub_221138D14(&self->_preBNCData);
    sub_2211392B0(self);
    return cellCount - self->_cellCount;
  }

  return result;
}

- (void)moveColumnsFromIndex:(unsigned __int16)index toIndex:(unsigned __int16)toIndex count:(unsigned int)count
{
  toIndexCopy = toIndex;
  indexCopy = index;
  toIndexCopy2 = toIndex;
  if (toIndex > index)
  {
    if (index + count > toIndex)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileRowInfo moveColumnsFromIndex:toIndex:count:]", toIndex, *&count);
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v12, v13);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 1356, 0, "Move column ranges cannot overlap!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
    }

    toIndexCopy2 = toIndexCopy - count;
  }

  if (!self->_cellCount)
  {
    return;
  }

  v20 = sub_221138A3C(self);
  if (v20 < toIndexCopy && v20 < indexCopy)
  {
    return;
  }

  countCopy = count;
  v101 = 0;
  *__dst = 0u;
  v100 = 0u;
  wideOffsets = self->_currentData._private.wideOffsets;
  if (wideOffsets)
  {
    BYTE2(v101) = 1;
  }

  if (v20 != 0x7FFF)
  {
    v26 = indexCopy + count;
    offsetBufferCount = self->_currentData._private.offsetBufferCount;
    if (indexCopy != 0x7FFF && offsetBufferCount > indexCopy)
    {
      offsets = self->_currentData._private.offsets;
      v29 = offsets[indexCopy];
      if (v29 != 0xFFFF)
      {
LABEL_23:
        if (wideOffsets)
        {
          v34 = 4 * v29;
        }

        else
        {
          v34 = v29;
        }

        if (v26 == 0x7FFF || offsetBufferCount <= v26 || (v35 = offsets[(indexCopy + count)], v35 == 0xFFFF))
        {
          if (v20 <= v26)
          {
LABEL_40:
            cellBufferSize = self->_currentData._private.cellBufferSize;
          }

          else
          {
            v37 = (indexCopy + count);
            v38 = v20 - v37;
            v39 = v37 + 1;
            while (1)
            {
              if (v39 != 0x7FFF && v39 < offsetBufferCount)
              {
                v41 = offsets[v39];
                if (v41 != 0xFFFF)
                {
                  break;
                }
              }

              ++v39;
              if (!--v38)
              {
                goto LABEL_40;
              }
            }

            if (wideOffsets)
            {
              cellBufferSize = 4 * v41;
            }

            else
            {
              cellBufferSize = offsets[v39];
            }
          }
        }

        else if (wideOffsets)
        {
          cellBufferSize = 4 * v35;
        }

        else
        {
          cellBufferSize = offsets[(indexCopy + count)];
        }

        v42 = cellBufferSize - v34;
        if (cellBufferSize != v34)
        {
          sub_221139394(__dst, cellBufferSize - v34, v22, v23, v24);
          memcpy(__dst[0], &self->_currentData._private.cellData[v34], v42);
          if (count)
          {
            v43 = 0;
            do
            {
              v44 = 0x7FFFFFFFFFFFFFFFLL;
              if ((v43 + indexCopy) != 0x7FFF && self->_currentData._private.offsetBufferCount > (v43 + indexCopy))
              {
                v45 = self->_currentData._private.offsets[(v43 + indexCopy)];
                if (v45 != 0xFFFF)
                {
                  if (self->_currentData._private.wideOffsets)
                  {
                    v45 *= 4;
                  }

                  v44 = v45 - v34;
                }
              }

              v46 = BYTE2(v101);
              if (v43 >= 0xFF && (v101 & 0x10000) == 0)
              {
                sub_22113A218(__dst);
                v46 = 1;
              }

              if (v43 >= v101)
              {
                sub_221139CC8(__dst, v43);
              }

              v47 = v44 >> 2;
              if ((v46 & 1) == 0)
              {
                LOWORD(v47) = v44;
              }

              if (v44 == 0x7FFFFFFFFFFFFFFFLL)
              {
                LOWORD(v47) = -1;
              }

              *(*(&v100 + 1) + 2 * v43++) = v47;
            }

            while (count != v43);
          }
        }

        goto LABEL_63;
      }
    }

    v30 = (v26 - 1);
    if (v30 > indexCopy)
    {
      v31 = v30 - indexCopy;
      v32 = indexCopy + 1;
      do
      {
        if (v32 != 0x7FFF && v32 < offsetBufferCount)
        {
          offsets = self->_currentData._private.offsets;
          v29 = offsets[v32];
          if (v29 != 0xFFFF)
          {
            goto LABEL_23;
          }
        }

        ++v32;
      }

      while (--v31);
    }
  }

LABEL_63:
  objc_msgSend_removeColumnsAtIndex_count_(self, v21, indexCopy, count, v24);
  objc_msgSend_insertColumnsAtIndex_count_(self, v48, toIndexCopy2, count, v49);
  v53 = __dst[1];
  if (__dst[1])
  {
    sub_221139394(&self->_currentData._private.cellData, __dst[1] + self->_currentData._private.cellBufferSize, v50, v51, v52);
    v54 = self->_currentData._private.offsetBufferCount;
    if (self->_currentData._private.offsetBufferCount)
    {
      v55 = (v54 - 1) + 1;
      while (1)
      {
        v56 = v55--;
        if (v56 != 0x8000 && v54 > v55 && self->_currentData._private.offsets[v55] != -1)
        {
          break;
        }

        if (v55 <= 0)
        {
          goto LABEL_70;
        }
      }
    }

    else
    {
LABEL_70:
      LOWORD(v55) = 0x7FFF;
    }

    v57 = sub_22113C5B8(&self->_currentData, toIndexCopy2, v55, v53);
    sub_22113C758(&self->_currentData._private.cellData, v57, v53, v58, v59);
    v95 = v53;
    memcpy(&self->_currentData._private.cellData[v57], __dst[0], v53);
    countCopy2 = count;
    if (count)
    {
      v64 = 0;
      v97 = 0;
      v65 = v101;
      v66 = *(&v100 + 1);
      v96 = BYTE2(v101);
      do
      {
        v67 = toIndexCopy2 + v64;
        if ((toIndexCopy2 + v64) != 0x7FFF && self->_currentData._private.offsetBufferCount > v67 && self->_currentData._private.offsets[(toIndexCopy2 + v64)] != -1)
        {
          v68 = MEMORY[0x277D81150];
          v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "NSUInteger _applyMovingCellBuffer(TSTTableTileRowBuffer *, TSTTableTileRowBuffer *, TSUColumnIndex, TSUColumnRowCount)", v61, v62);
          v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v71, v72);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v74, v69, v73, 715, 0, "Overwriting a column in move!");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v76, v77, v78);
        }

        if (v64 != 0x7FFF && v64 < v65)
        {
          v79 = *(v66 + 2 * v64);
          if (v79 != 0xFFFF)
          {
            if (v96)
            {
              v80 = 4 * v79;
            }

            else
            {
              v80 = *(v66 + 2 * v64);
            }

            v81 = self->_currentData._private.wideOffsets;
            if ((toIndexCopy2 + v64) >= 0xFFu && !self->_currentData._private.wideOffsets)
            {
              sub_22113A218(&self->_currentData);
              v81 = 1;
            }

            if (self->_currentData._private.offsetBufferCount <= v67)
            {
              sub_221139CC8(&self->_currentData._private.cellData, (toIndexCopy2 + v64));
            }

            v82 = (v80 + v57) >> 2;
            if (!v81)
            {
              LOWORD(v82) = v80 + v57;
            }

            if (v80 + v57 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v83 = -1;
            }

            else
            {
              v83 = v82;
            }

            self->_currentData._private.offsets[(toIndexCopy2 + v64)] = v83;
            ++v97;
          }
        }

        ++v64;
      }

      while (countCopy2 != v64);
    }

    else
    {
      v97 = 0;
    }

    v84 = self->_currentData._private.offsetBufferCount;
    if (self->_currentData._private.offsetBufferCount)
    {
      v85 = (v84 - 1) + 1;
      v86 = countCopy;
      while (1)
      {
        v87 = v85--;
        if (v87 != 0x8000 && v84 > v85 && self->_currentData._private.offsets[v85] != -1)
        {
          break;
        }

        if (v85 <= 0)
        {
          LOWORD(v85) = 0x7FFF;
          break;
        }
      }
    }

    else
    {
      LOWORD(v85) = 0x7FFF;
      v86 = countCopy;
    }

    for (i = toIndexCopy2 + v86; i <= v85; ++i)
    {
      if (i != 0x7FFF)
      {
        v89 = self->_currentData._private.offsetBufferCount;
        if (v89 > i)
        {
          v90 = self->_currentData._private.offsets[i];
          if (v90 != 0xFFFF)
          {
            v91 = self->_currentData._private.wideOffsets;
            if (self->_currentData._private.wideOffsets)
            {
              v92 = 4 * v90;
            }

            else
            {
              v92 = self->_currentData._private.offsets[i];
            }

            if (i >= 0xFFu && !v91)
            {
              sub_22113A218(&self->_currentData);
              v89 = self->_currentData._private.offsetBufferCount;
              v91 = 1;
            }

            if (v89 <= i)
            {
              sub_221139CC8(&self->_currentData._private.cellData, i);
            }

            v93 = &v95[v92];
            if (&v95[v92] == 0x7FFFFFFFFFFFFFFFLL)
            {
              LOWORD(v93) = -1;
            }

            else if (v91)
            {
              v93 >>= 2;
            }

            self->_currentData._private.offsets[i] = v93;
          }
        }
      }
    }

    sub_221138D14(__dst);
    self->_cellCount += v97;
  }

  sub_221138D14(__dst);
  sub_221138D14(&self->_preBNCData);
  sub_2211392B0(self);
}

- (void)enumerateStoragesInColumnRange:(_NSRange)range getPreBNC:(BOOL)c withBlock:(id)block
{
  cCopy = c;
  length = range.length;
  location = range.location;
  blockCopy = block;
  v10 = sub_221138A3C(self);
  if (v10 >= (location + length - 1))
  {
    v11 = (location + length - 1);
  }

  else
  {
    v11 = v10;
  }

  v12 = 8;
  if (cCopy)
  {
    v12 = 48;
  }

  if (v11 >= location)
  {
    v13 = self + v12;
    v14 = *v13;
    do
    {
      while (1)
      {
        if (location != 0x7FFF && *(v13 + 16) > location)
        {
          v15 = *(*(v13 + 3) + 2 * location);
          if (v15 != 0xFFFF)
          {
            break;
          }
        }

        if (v11 < ++location)
        {
          goto LABEL_17;
        }
      }

      if (v13[34])
      {
        v15 *= 4;
      }

      v16 = 0;
      blockCopy[2](blockCopy, v14 + v15, location, &v16);
      if (v11 <= location)
      {
        break;
      }

      ++location;
    }

    while ((v16 & 1) == 0);
  }

LABEL_17:
}

- (BOOL)searchCellStorageRefAtColumnIndex:(unsigned __int16)index searchMask:(unint64_t)mask
{
  v6 = objc_msgSend_cellStorageRefAtIndex_(self, a2, index, mask, v4);
  if (v6)
  {
    LOBYTE(v6) = !mask || (mask & 0x3EFF800) != 0 && ((v11 = v6, (mask & 0x400000) != 0) && ((sub_22113C374(v6, v7, v8, v9, v10), sub_22113C374(v11, v12, v13, v14, v15), v11[1]) || (sub_22114503C(v11, 0x400, v16, v17, v18) & 1) != 0 || (sub_22114503C(v11, 0x200, v19, v20, v21) & 1) != 0) || (mask & 0x800) != 0 && (sub_22114503C(v11, 0x20, v8, v9, v10) & 1) != 0 || (mask & 0x1000) != 0 && (v11[10] & 8) != 0 || (mask & 0x2000) != 0 && (sub_22114503C(v11, 0x80, v8, v9, v10) & 1) != 0 || (mask & 0x4000) != 0 && (v11[4] & 2) != 0 || (mask & 0x8000) != 0 && (sub_22113C374(v11, v7, v8, v9, v10), (*(v11 + 9) & 0x7E0) != 0) || (mask & 0x10000) != 0 && (sub_22114503C(v11, 0x800, v8, v9, v10) & 1) != 0 || (mask & 0x20000) != 0 && (sub_22114503C(v11, 0x200, v8, v9, v10) & 1) != 0 || (mask & 0x800000) != 0 && (sub_22114503C(v11, 0x400, v8, v9, v10) & 1) != 0 || (mask & 0x40000) != 0 && (sub_22114503C(v11, 0x100000, v8, v9, v10) & 1) != 0 || (mask & 0x1000000) != 0 && (v11[5] & 2) != 0 || (mask & 0x80000) != 0 && (sub_22114503C(v11, 0x10, v8, v9, v10) & 1) != 0 || (mask & 0x200000) != 0 && (sub_22114503C(v11, 0x40, v8, v9, v10) & 1) != 0 || (mask & 0x2000000) != 0 && (sub_22113C374(v11, v7, v8, v9, v10), (v11[1] & 0xF7) != 0));
  }

  return v6;
}

- (BOOL)quickValidate
{
  if ((!self->_preBNCData._private.cellData || (v5 = objc_msgSend__quickValidateBuffer_(self, a2, &self->_preBNCData, v2, v3)) != 0) && (!self->_currentData._private.cellData || (v5 = objc_msgSend__quickValidateBuffer_(self, a2, &self->_currentData, v2, v3)) != 0))
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)validateWithResult:(id *)result
{
  cellData = self->_currentData._private.cellData;
  p_currentData = &self->_currentData;
  if (result)
  {
    v6 = MEMORY[0x277CCAB68];
    v7 = objc_msgSend_description(self, a2, result, v3, v4);
    v11 = objc_msgSend_stringWithString_(v6, v8, v7, v9, v10);

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  offsetBufferCount = self->_currentData._private.offsetBufferCount;
  if (self->_currentData._private.offsetBufferCount)
  {
    v14 = (offsetBufferCount - 1) + 1;
    while (1)
    {
      v15 = v14--;
      if (v15 != 0x8000 && offsetBufferCount > v14 && self->_currentData._private.offsets[v14] != -1)
      {
        break;
      }

      if (v14 <= 0)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    LOWORD(v14) = 0x7FFF;
  }

  v218 = self->_preBNCData._private.cellData;
  v220 = v12;
  if (self->_maxColumnIndexIsValidPrivate && self->_maxColumnIndexPrivate != v14)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileRowInfo validateWithResult:]", v3, v4);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 1621, 0, "%{public}@", @"Incorrect maximum column!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    objc_msgSend_appendString_(v12, v28, @"Incorrect maximum column!", v29, v30);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v216 = 0;
  v217 = 0;
  v31 = 0;
  v32 = 0;
  v219 = 0;
  v33 = 0;
  do
  {
    v34 = 1;
    if (v33 != 0x7FFF && self->_currentData._private.offsetBufferCount > v33)
    {
      v35 = self->_currentData._private.offsets[v33];
      if (v35 == 0xFFFF)
      {
        v34 = 1;
      }

      else
      {
        if (self->_currentData._private.wideOffsets)
        {
          v36 = 4 * v35;
        }

        else
        {
          v36 = self->_currentData._private.offsets[v33];
        }

        if (v36 != v32)
        {
          v37 = MEMORY[0x277D81150];
          v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileRowInfo validateWithResult:]", v3, v4);
          v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v40, v41);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v43, v38, v42, 1632, 0, "%{public}@", @" Misaligned cell storage offsets!");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
          objc_msgSend_appendString_(v220, v48, @" Misaligned cell storage offsets!", v49, v50);
          v16 = 0;
        }

        if (v36 >= self->_currentData._private.cellBufferSize)
        {
          v51 = MEMORY[0x277D81150];
          v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileRowInfo validateWithResult:]", v3, v4);
          v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v54, v55);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v57, v52, v56, 1638, 0, "%{public}@", @" Cell storage overflow!");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61);
          objc_msgSend_appendString_(v220, v62, @" Cell storage overflow!", v63, v64);
          v16 = 0;
        }

        if (++v31 > self->_cellCount)
        {
          v65 = MEMORY[0x277D81150];
          v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileRowInfo validateWithResult:]", v3, v4);
          v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v68, v69);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v71, v66, v70, 1646, 0, "%{public}@", @" Found an extra cell in this row!");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73, v74, v75);
          objc_msgSend_appendString_(v220, v76, @" Found an extra cell in this row!", v77, v78);
          v16 = 0;
        }

        v32 += sub_2216F6A80(p_currentData, v33, v14, v3, v4);
        if (sub_22113C374(&cellData[v36], v79, v80, v81, v82))
        {
          v34 = 0;
        }

        else
        {
          v83 = MEMORY[0x277D81150];
          v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileRowInfo validateWithResult:]", v3, v4);
          v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v86, v87);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v83, v89, v84, v88, 1692, 0, "%{public}@", @" Bad cell version!");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v90, v91, v92, v93);
          objc_msgSend_appendString_(v220, v94, @" Bad cell version!", v95, v96);
          v34 = 0;
          v16 = 0;
        }
      }
    }

    if (v218)
    {
      if (v33 == 0x7FFF || self->_preBNCData._private.offsetBufferCount <= v33 || (v97 = self->_preBNCData._private.offsets[v33], v97 == 0xFFFF))
      {
        if (v34)
        {
          goto LABEL_55;
        }

        v98 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        if (self->_preBNCData._private.wideOffsets)
        {
          v98 = 4 * v97;
        }

        else
        {
          v98 = self->_preBNCData._private.offsets[v33];
        }

        if (!v34)
        {
LABEL_44:
          if (v98 != v219)
          {
            v113 = MEMORY[0x277D81150];
            v114 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileRowInfo validateWithResult:]", v3, v4);
            v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v115, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v116, v117);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v113, v119, v114, v118, 1710, 0, "%{public}@", @" Misaligned cell storage offsets in PreBNC!");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v120, v121, v122, v123);
            objc_msgSend_appendString_(v220, v124, @" Misaligned cell storage offsets in PreBNC!", v125, v126);
            v16 = 0;
          }

          if (v98 >= self->_preBNCData._private.cellBufferSize)
          {
            v127 = MEMORY[0x277D81150];
            v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileRowInfo validateWithResult:]", v3, v4);
            v132 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v129, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v130, v131);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v127, v133, v128, v132, 1716, 0, "%{public}@", @" Cell storage overflow in PreBNC!");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v134, v135, v136, v137);
            objc_msgSend_appendString_(v220, v138, @" Cell storage overflow in PreBNC!", v139, v140);
            v16 = 0;
          }

          if (++v217 > self->_cellCount)
          {
            v141 = MEMORY[0x277D81150];
            v142 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileRowInfo validateWithResult:]", v3, v4);
            v146 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v143, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v144, v145);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v141, v147, v142, v146, 1724, 0, "%{public}@", @" Found an extra preBNC cell in this row!");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v148, v149, v150, v151);
            objc_msgSend_appendString_(v220, v152, @" Found an extra preBNC cell in this row!", v153, v154);
            v16 = 0;
          }

          v155 = v216;
          if (!v216)
          {
            v155 = self->_preBNCData._private.cellData;
          }

          v216 = v155;
          v156 = sub_221395B64(&v155[v98], a2, result, v3, v4);
          if (v98 + v156 > self->_preBNCData._private.cellBufferSize)
          {
            v157 = MEMORY[0x277D81150];
            v158 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileRowInfo validateWithResult:]", v3, v4);
            v162 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v159, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v160, v161);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v157, v163, v158, v162, 1738, 0, "%{public}@", @" Cell storage overflow in Pre BNC!");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v164, v165, v166, v167);
            objc_msgSend_appendString_(v220, v168, @" Cell storage overflow in Pre BNC!", v169, v170);
            v16 = 0;
          }

          v219 += v156;
          goto LABEL_55;
        }
      }

      v99 = MEMORY[0x277D81150];
      v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileRowInfo validateWithResult:]", v3, v4);
      v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v102, v103);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v99, v105, v100, v104, 1703, 0, "%{public}@", @" Mismatched presence of cells.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v106, v107, v108, v109);
      objc_msgSend_appendString_(v220, v110, @" Mismatched presence of cells.", v111, v112);
      if (v98 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_55;
      }

      goto LABEL_44;
    }

LABEL_55:
    ++v33;
  }

  while (v33 <= v14);
  if (v31 != self->_cellCount)
  {
    v171 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @" Incorrect cell count! Expected:%tu Found:%tu.", v3, v4, self->_cellCount, v31);
    v172 = MEMORY[0x277D81150];
    v176 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v173, "[TSTTableTileRowInfo validateWithResult:]", v174, v175);
    v180 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v177, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v178, v179);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v172, v181, v176, v180, 1750, 0, "%{public}@", v171);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v182, v183, v184, v185);
    objc_msgSend_appendString_(v220, v186, v171, v187, v188);

    v16 = 0;
  }

  if (v218 && v217 != self->_cellCount)
  {
    v189 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @" Incorrect PreBNC cell count! Expected:%tu Found:%tu.", v3, v4, self->_cellCount, v217);
    v190 = MEMORY[0x277D81150];
    v194 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v191, "[TSTTableTileRowInfo validateWithResult:]", v192, v193);
    v198 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v195, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v196, v197);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v190, v199, v194, v198, 1757, 0, "%{public}@", v189);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v200, v201, v202, v203);
    objc_msgSend_appendString_(v220, v204, v189, v205, v206);

    v16 = 0;
  }

  objc_msgSend_appendString_(v220, a2, @"\n", v3, v4);
  if (result)
  {
    if (v16)
    {
      v211 = &stru_2834BADA0;
    }

    else
    {
      v211 = objc_msgSend_copy(v220, v207, v208, v209, v210);
    }

    *result = v211;
  }

  return v16 & 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@:%p tileRowIndex %lu cellCount %lu>", v7, v8, v5, self, self->_tileRowIndex, self->_cellCount);

  return v9;
}

- (TSTCellStorage)cellStorageRefAtIndex:(unsigned __int16)index
{
  if (index == 0x7FFF || self->_currentData._private.offsetBufferCount <= index)
  {
    return 0;
  }

  v4 = self->_currentData._private.offsets[index];
  if (v4 == 0xFFFF)
  {
    return 0;
  }

  if (self->_currentData._private.wideOffsets)
  {
    v4 *= 4;
  }

  return &self->_currentData._private.cellData[v4];
}

- (TSTCellStorage)p_preBNCStorageRefAtIndex:(unsigned __int16)index
{
  if (!self->_cellCount)
  {
    return 0;
  }

  if (index == 0x7FFF || self->_preBNCData._private.offsetBufferCount <= index)
  {
    return 0;
  }

  v4 = self->_preBNCData._private.offsets[index];
  if (v4 == 0xFFFF)
  {
    return 0;
  }

  if (self->_preBNCData._private.wideOffsets)
  {
    v4 *= 4;
  }

  return &self->_preBNCData._private.cellData[v4];
}

- (void)_removeCellAtIndex:(unsigned __int16)index
{
  indexCopy = index;
  v5 = sub_221138A3C(self);
  if (indexCopy != 0x7FFF && self->_currentData._private.offsetBufferCount > indexCopy)
  {
    v9 = self->_currentData._private.offsets[indexCopy];
    if (v9 != 0xFFFF)
    {
      v12 = v5;
      if (self->_currentData._private.wideOffsets)
      {
        v13 = 4 * v9;
      }

      else
      {
        v13 = self->_currentData._private.offsets[indexCopy];
      }

      v17 = sub_2216F6A80(&self->_currentData, indexCopy, v5, v6, v7);
      if (indexCopy >= 0xFF && !self->_currentData._private.wideOffsets)
      {
        sub_22113A218(&self->_currentData);
      }

      if (self->_currentData._private.offsetBufferCount <= indexCopy)
      {
        sub_221139CC8(&self->_currentData._private.cellData, indexCopy);
      }

      self->_currentData._private.offsets[indexCopy] = -1;
      if (v12 > indexCopy)
      {
        sub_22113C758(&self->_currentData._private.cellData, (v13 + v17), -v17, v15, v16);
        v18 = indexCopy + 1;
        do
        {
          if (v18 != 0x7FFF)
          {
            offsetBufferCount = self->_currentData._private.offsetBufferCount;
            if (offsetBufferCount > v18)
            {
              v20 = self->_currentData._private.offsets[v18];
              if (v20 != 0xFFFF)
              {
                wideOffsets = self->_currentData._private.wideOffsets;
                if (self->_currentData._private.wideOffsets)
                {
                  v22 = 4 * v20;
                }

                else
                {
                  v22 = self->_currentData._private.offsets[v18];
                }

                if (v18 >= 0xFFu && !wideOffsets)
                {
                  sub_22113A218(&self->_currentData);
                  offsetBufferCount = self->_currentData._private.offsetBufferCount;
                  wideOffsets = 1;
                }

                if (offsetBufferCount <= v18)
                {
                  sub_221139CC8(&self->_currentData._private.cellData, v18);
                }

                v23 = v22 - v17;
                if (v22 - v17 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  LOWORD(v23) = -1;
                }

                else if (wideOffsets)
                {
                  v23 >>= 2;
                }

                self->_currentData._private.offsets[v18] = v23;
              }
            }
          }

          ++v18;
        }

        while (v12 >= v18);
      }

      sub_221139394(&self->_currentData._private.cellData, self->_currentData._private.cellBufferSize - v17, v14, v15, v16);
    }
  }

  sub_221138D14(&self->_preBNCData);
  --self->_cellCount;
  if (self->_maxColumnIndexIsValidPrivate)
  {
    maxColumnIndexPrivate = self->_maxColumnIndexPrivate;
    if (maxColumnIndexPrivate == 0x7FFF || maxColumnIndexPrivate <= indexCopy)
    {
      self->_maxColumnIndexPrivate = 0x7FFF;
      self->_maxColumnIndexIsValidPrivate = 0;
    }
  }
}

- (BOOL)_quickValidateBuffer:(TSTTableTileRowBuffer *)buffer
{
  offsetBufferCount = buffer->_private.offsetBufferCount;
  if (buffer->_private.offsetBufferCount)
  {
    v6 = (offsetBufferCount - 1) + 1;
    while (1)
    {
      v7 = v6--;
      if (v7 != 0x8000 && offsetBufferCount > v6 && buffer->_private.offsets[v6] != -1)
      {
        break;
      }

      if (v6 <= 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    LOWORD(v6) = 0x7FFF;
  }

  v8 = 0;
  cellBufferSize = buffer->_private.cellBufferSize;
  while (1)
  {
    if (v8 == 0x7FFF)
    {
      goto LABEL_22;
    }

    if (offsetBufferCount <= v8)
    {
      goto LABEL_22;
    }

    v10 = buffer->_private.offsets[v8];
    if (v10 == 0xFFFF)
    {
      goto LABEL_22;
    }

    if (buffer->_private.wideOffsets)
    {
      v10 *= 4;
    }

    if (v10 + 8 > cellBufferSize)
    {
      v14 = sub_22113CA14();
      objc_msgSend_stringWithUTF8String_(v14, v15, "[TSTTableTileRowInfo _quickValidateBuffer:]", v16, v17);
      objc_claimAutoreleasedReturnValue();
      v18 = sub_22113CA24();
      objc_msgSend_stringWithUTF8String_(v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v20, v21);
      objc_claimAutoreleasedReturnValue();
      sub_22113CA30();
      v22 = sub_22113CA04();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v23, v24, v25, 1545, 0);
      goto LABEL_27;
    }

    if (!buffer->_private.cellData)
    {
      v12 = 12;
      goto LABEL_21;
    }

    v11 = buffer->_private.cellData[v10];
    if ((v11 - 6) <= 0xFAu)
    {
      break;
    }

    if (buffer->_private.cellData[v10] == 1)
    {
      v12 = 8;
    }

    else
    {
      v12 = 12;
    }

LABEL_21:
    if (v12 + v10 > cellBufferSize)
    {
      v26 = sub_22113CA14();
      objc_msgSend_stringWithUTF8String_(v26, v27, "[TSTTableTileRowInfo _quickValidateBuffer:]", v28, v29);
      objc_claimAutoreleasedReturnValue();
      v30 = sub_22113CA24();
      objc_msgSend_stringWithUTF8String_(v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v32, v33);
      objc_claimAutoreleasedReturnValue();
      sub_22113CA30();
      v34 = sub_22113CA04();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v35, v36, v37, 1579, 0);
      goto LABEL_27;
    }

LABEL_22:
    if (++v8 > v6)
    {
      return 1;
    }
  }

  v38 = sub_22113CA14();
  objc_msgSend_stringWithUTF8String_(v38, v39, "[TSTTableTileRowInfo _quickValidateBuffer:]", v40, v41);
  objc_claimAutoreleasedReturnValue();
  v42 = sub_22113CA24();
  v4 = objc_msgSend_stringWithUTF8String_(v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v44, v45);
  v46 = sub_22113CA04();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v47, v48, v49, 1555, 0, v8, v11);
LABEL_27:

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
  return 0;
}

@end