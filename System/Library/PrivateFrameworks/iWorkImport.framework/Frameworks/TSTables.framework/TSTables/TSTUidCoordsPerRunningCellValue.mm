@interface TSTUidCoordsPerRunningCellValue
- (TSKUIDStructCoord)getUidCoordforRunningAggregate:(SEL)aggregate tupleForCoord:(TSTRunningAggregate *)coord newUidCoord:(id)uidCoord addNewUidCoordEvenIfNotFound:(const TSKUIDStructCoord *)found inContext:(BOOL)context;
- (TSKUIDStructCoord)uuidCoordAtIndex:(SEL)index templateTuple:(unint64_t)tuple runningLevel:(id)level;
- (id).cxx_construct;
@end

@implementation TSTUidCoordsPerRunningCellValue

- (TSKUIDStructCoord)uuidCoordAtIndex:(SEL)index templateTuple:(unint64_t)tuple runningLevel:(id)level
{
  v6 = a6;
  levelCopy = level;
  retstr->_column = 0u;
  retstr->_row = 0u;
  TSKMakeInvalidUIDStructCoord();
  begin = self->_cellValues.__begin_;
  if (tuple < self->_cellValues.var0 - begin)
  {
    v12 = begin[tuple];
    v17 = objc_msgSend_groupValueTupleByReplacingValue_atLevel_(levelCopy, v13, v12, v6, v14);
    v18 = self->_uidCoords.__begin_[tuple];
    if (v18)
    {
      objc_msgSend_uuidCoordForGroupTuple_runningLevel_(v18, v15, v17, v6, v16);
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    retstr->_column = v20;
    retstr->_row = v21;
  }

  return result;
}

- (TSKUIDStructCoord)getUidCoordforRunningAggregate:(SEL)aggregate tupleForCoord:(TSTRunningAggregate *)coord newUidCoord:(id)uidCoord addNewUidCoordEvenIfNotFound:(const TSKUIDStructCoord *)found inContext:(BOOL)context
{
  uidCoordCopy = uidCoord;
  v14 = a8;
  v19 = objc_msgSend_numberOfLevels(uidCoordCopy, v15, v16, v17, v18);
  v75 = 0;
  retstr->_column = 0u;
  retstr->_row = 0u;
  TSKMakeInvalidUIDStructCoord();
  v24 = objc_msgSend_groupBySet(v14, v20, v21, v22, v23);
  v28 = objc_msgSend_groupByForUuidCoord_(v24, v25, found, v26, v27);

  if (v28)
  {
    objc_msgSend_groupingColumnLevelsForColumn_(v28, v29, coord, v30, v31);
    if (*(&v74[0] + 1) - *&v74[0] == 1)
    {
      v32 = **&v74[0];
    }

    else
    {
      if (!*&v74[0])
      {
LABEL_28:

        goto LABEL_29;
      }

      v32 = 255;
    }

    *(&v74[0] + 1) = *&v74[0];
    operator delete(*&v74[0]);

    if (v32 != 255 && v32 <= v19)
    {
      v39 = objc_msgSend_groupValueAtLevel_(uidCoordCopy, v33, v32, v34, v35);
      v75 = v39;
      if (v39)
      {
        contextCopy = context;
        foundCopy = found;
        begin = self->_cellValues.__begin_;
        var0 = self->_cellValues.var0;
        v42 = var0 - begin;
        if (var0 == begin)
        {
          v50 = self->_cellValues.var0;
          v51 = contextCopy;
        }

        else
        {
          v69 = v32;
          v70 = v14;
          v43 = 0;
          v44 = 0;
          while (1)
          {
            v45 = begin[v44];
            isEqualToCellValue = objc_msgSend_isEqualToCellValue_(v39, v46, v45, v47, v48);

            if (isEqualToCellValue)
            {
              break;
            }

            ++v44;
            if (&begin[++v43] == var0)
            {
              v42 = var0 - begin;
              goto LABEL_16;
            }
          }

          v42 = v44;
LABEL_16:
          var0 = self->_cellValues.__begin_;
          v50 = self->_cellValues.var0;
          v14 = v70;
          v51 = contextCopy;
          v32 = v69;
        }

        if (v42 == v50 - var0)
        {
          sub_2213000E8(&self->_cellValues.__begin_, &v75);
          *&v74[0] = objc_opt_new();
          sub_2213001DC(&self->_uidCoords.__begin_, v74);
        }

        v52 = self->_uidCoords.__begin_;
        if (v42 >= self->_uidCoords.var0 - v52)
        {
          v53 = MEMORY[0x277D81150];
          v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSTUidCoordsPerRunningCellValue getUidCoordforRunningAggregate:tupleForCoord:newUidCoord:addNewUidCoordEvenIfNotFound:inContext:]", v37, v38);
          v55 = v42;
          v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTRunningTotalContext.mm", v57, v58);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v60, v54, v59, 255, 0, "Got a too-large insertIndex: %lu", v55);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63, v64);
          v42 = v55;
          v52 = self->_uidCoords.__begin_;
        }

        v66 = v52[v42];
        if (v42)
        {
          objc_msgSend_uuidCoordAtIndex_templateTuple_runningLevel_(self, v65, v42 - 1, uidCoordCopy, v32);
          v67 = v74[1];
          retstr->_column = v74[0];
          retstr->_row = v67;
        }

        if (v51 || *&retstr->_column != 0 && *&retstr->_row != 0)
        {
          objc_msgSend_addUidCoord_tupleForCoord_atRunningLevel_(v66, v65, foundCopy, uidCoordCopy, v32);
        }

        v28 = v75;
        goto LABEL_28;
      }
    }
  }

LABEL_29:

  return result;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end