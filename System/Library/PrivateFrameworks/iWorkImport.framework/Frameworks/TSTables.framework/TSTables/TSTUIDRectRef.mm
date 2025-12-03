@interface TSTUIDRectRef
- (BOOL)baseToViewPreserveFlagsAreInverted;
- (BOOL)isBaseRectangle;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidReference;
- (BOOL)isViewRectangle;
- (BOOL)spansAllColumns;
- (BOOL)spansAllRows;
- (RefTypeHolder<TSCERangeRef,)baseRangeRef;
- (RefTypeHolder<TSCERangeRef,)chromeRangeRef;
- (RefTypeHolder<TSCERangeRef,)viewRangeRef;
- (TSCECalculationEngine)calcEngine;
- (TSKUIDStruct)singleReferencedColumnUid;
- (TSKUIDStruct)tableUID;
- (TSKUIDStructTract)uidRange;
- (TSTUIDRectRef)initWithCalcEngine:(id)engine baseRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags;
- (TSTUIDRectRef)initWithCalcEngine:(id)engine baseTractRef:(id)ref;
- (TSTUIDRectRef)initWithCalcEngine:(id)engine chromeRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags;
- (TSTUIDRectRef)initWithCalcEngine:(id)engine tableUID:(const TSKUIDStruct *)d uidRange:(const void *)range preserveFlags:(unsigned __int8)flags;
- (TSTUIDRectRef)initWithCalcEngine:(id)engine viewRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags;
- (TSTUIDRectRef)initWithCalcEngine:(id)engine viewTractRef:(id)ref;
- (TSUModelCellCoord)baseBottomRightCoord;
- (TSUModelCellCoord)baseTopLeftCoord;
- (TSUViewCellCoord)viewBottomRightCoord;
- (TSUViewCellCoord)viewTopLeftCoord;
- (id).cxx_construct;
- (id)baseTractRef;
- (id)chromeTractRef;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)grabViewUidMapper;
- (id)tableInfo;
- (id)tableModel;
- (id)uidTractListWithPurpose:(unsigned __int8)purpose;
- (id)viewCellRegionWithRangeContext:(unsigned __int8)context;
- (id)viewTractRef;
- (id)viewTractRefIfFullyValid;
- (unint64_t)area;
- (unint64_t)numberOfColumns;
- (unint64_t)numberOfRows;
- (unsigned)viewPreserveFlags;
- (vector<RefTypeHolder<TSCERangeRef,)baseRangeRefs;
- (vector<RefTypeHolder<TSCERangeRef,)viewRangeRefs;
- (void)convertUIDRefToViewTractRef;
- (void)convertViewTractRefToUID;
- (void)excludeSummaryAndLabelRows;
- (void)setBaseRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags;
- (void)setCalcEngine:(id)engine;
- (void)setChromeRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags;
- (void)setViewPreserveFlags:(unsigned __int8)flags;
- (void)setViewRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags;
@end

@implementation TSTUIDRectRef

- (TSTUIDRectRef)initWithCalcEngine:(id)engine viewTractRef:(id)ref
{
  engineCopy = engine;
  refCopy = ref;
  v30.receiver = self;
  v30.super_class = TSTUIDRectRef;
  v8 = [(TSTUIDRectRef *)&v30 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_calcEngine, engineCopy);
    v14 = objc_msgSend_copy(refCopy, v10, v11, v12, v13);
    lastKnownTractRef = v9->_lastKnownTractRef;
    v9->_lastKnownTractRef = v14;

    v9->_lastKnownTractRefIsBase = 0;
    v9->_basePreserveFlags = objc_msgSend_preserveFlags(v9->_lastKnownTractRef, v16, v17, v18, v19);
    v9->_tableUID._lower = objc_msgSend_tableUID(refCopy, v20, v21, v22, v23);
    v9->_tableUID._upper = v24;
    v28 = objc_msgSend_grabViewUidMapper(v9, v24, v25, v26, v27);
  }

  return v9;
}

- (TSTUIDRectRef)initWithCalcEngine:(id)engine baseTractRef:(id)ref
{
  engineCopy = engine;
  refCopy = ref;
  v30.receiver = self;
  v30.super_class = TSTUIDRectRef;
  v8 = [(TSTUIDRectRef *)&v30 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_calcEngine, engineCopy);
    v14 = objc_msgSend_copy(refCopy, v10, v11, v12, v13);
    lastKnownTractRef = v9->_lastKnownTractRef;
    v9->_lastKnownTractRef = v14;

    v9->_lastKnownTractRefIsBase = 1;
    v9->_basePreserveFlags = objc_msgSend_preserveFlags(v9->_lastKnownTractRef, v16, v17, v18, v19);
    v9->_tableUID._lower = objc_msgSend_tableUID(refCopy, v20, v21, v22, v23);
    v9->_tableUID._upper = v24;
    v28 = objc_msgSend_grabViewUidMapper(v9, v24, v25, v26, v27);
  }

  return v9;
}

- (TSTUIDRectRef)initWithCalcEngine:(id)engine viewRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  engineCopy = engine;
  v14.receiver = self;
  v14.super_class = TSTUIDRectRef;
  v9 = [(TSTUIDRectRef *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_calcEngine, engineCopy);
    objc_msgSend_setViewRangeRef_preserveFlags_(v10, v11, ref, flagsCopy, v12);
  }

  return v10;
}

- (TSTUIDRectRef)initWithCalcEngine:(id)engine chromeRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  engineCopy = engine;
  v14.receiver = self;
  v14.super_class = TSTUIDRectRef;
  v9 = [(TSTUIDRectRef *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_calcEngine, engineCopy);
    objc_msgSend_setChromeRangeRef_preserveFlags_(v10, v11, ref, flagsCopy, v12);
  }

  return v10;
}

- (TSTUIDRectRef)initWithCalcEngine:(id)engine baseRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  engineCopy = engine;
  v14.receiver = self;
  v14.super_class = TSTUIDRectRef;
  v9 = [(TSTUIDRectRef *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_calcEngine, engineCopy);
    objc_msgSend_setBaseRangeRef_preserveFlags_(v10, v11, ref, flagsCopy, v12);
  }

  return v10;
}

- (TSTUIDRectRef)initWithCalcEngine:(id)engine tableUID:(const TSKUIDStruct *)d uidRange:(const void *)range preserveFlags:(unsigned __int8)flags
{
  engineCopy = engine;
  v19.receiver = self;
  v19.super_class = TSTUIDRectRef;
  v11 = [(TSTUIDRectRef *)&v19 init];
  v12 = v11;
  v13 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_calcEngine, engineCopy);
    v13->_tableUID = *d;
    if (&v12->_uidRange != range)
    {
      sub_2210BD068(&v12->_uidRange._colIdList.__begin_, *range, *(range + 1), (*(range + 1) - *range) >> 4);
      sub_2210BD068(&v12->_uidRange._rowIdList.__begin_, *(range + 3), *(range + 4), (*(range + 4) - *(range + 3)) >> 4);
    }

    v13->_basePreserveFlags = flags;
    objc_msgSend_convertUIDRefToViewTractRef(v13, v14, v15, v16, v17);
  }

  return v13;
}

- (id)tableModel
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  v6 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v4, &self->_tableUID, WeakRetained, v5);

  return v6;
}

- (id)tableInfo
{
  v5 = objc_msgSend_tableModel(self, a2, v2, v3, v4);
  v10 = objc_msgSend_tableInfo(v5, v6, v7, v8, v9);

  return v10;
}

- (TSKUIDStructTract)uidRange
{
  begin = self->_uidRange._colIdList.__begin_;
  end = self->_uidRange._colIdList.__end_;
  v8 = end - begin;
  if (!((self->_uidRange._rowIdList.__end_ - self->_uidRange._rowIdList.__begin_) * v8))
  {
    objc_msgSend_convertViewTractRefToUID(self, begin, end, v8, v3);
    begin = self->_uidRange._colIdList.__begin_;
    end = self->_uidRange._colIdList.__end_;
    v8 = end - begin;
  }

  retstr->_colIdList.__begin_ = 0;
  retstr->_colIdList.__end_ = 0;
  retstr->_colIdList.__cap_ = 0;
  sub_221086EBC(retstr, begin, end, v8);
  retstr->_rowIdList.__begin_ = 0;
  retstr->_rowIdList.__end_ = 0;
  retstr->_rowIdList.__cap_ = 0;
  return sub_221086EBC(&retstr->_rowIdList, self->_uidRange._rowIdList.__begin_, self->_uidRange._rowIdList.__end_, self->_uidRange._rowIdList.__end_ - self->_uidRange._rowIdList.__begin_);
}

- (id)grabViewUidMapper
{
  if (self->_tableUID._lower || self->_tableUID._upper)
  {
    v6 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
    v11 = objc_msgSend_columnRowUIDMap(v6, v7, v8, v9, v10);

    v16 = objc_msgSend_copyOnWriteUIDMapper(v11, v12, v13, v14, v15);
    viewUidMapper = self->_viewUidMapper;
    self->_viewUidMapper = v16;

    self->_viewMapVersionCounter = objc_msgSend_versionCounter(v11, v18, v19, v20, v21);
  }

  v22 = self->_viewUidMapper;

  return v22;
}

- (void)setCalcEngine:(id)engine
{
  objc_storeWeak(&self->_calcEngine, engine);
  if (self->_needsUidRectUpgrade)
  {
    v12 = objc_msgSend_tableInfo(self, v4, v5, v6, v7);
    if (v12)
    {
      v13 = objc_msgSend_viewTractRef(self, v8, v9, v10, v11);
      v36 = objc_msgSend_topLeft(v13, v14, v15, v16, v17);
      v35 = objc_msgSend_bottomRight(v13, v18, v19, v20, v21);
      self->_needsUidRectUpgrade = 0;
      v22 = [TSCECellTractRef alloc];
      v34[0] = objc_msgSend_tableUID(v13, v23, v24, v25, v26);
      v34[1] = v27;
      v28 = objc_msgSend_initWithTopLeft_bottomRight_tableUID_(v22, v27, &v36, &v35, v34);
      lastKnownTractRef = self->_lastKnownTractRef;
      self->_lastKnownTractRef = v28;

      self->_lastKnownTractRefIsBase = 0;
      objc_msgSend_convertViewTractRefToUID(self, v30, v31, v32, v33);
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->_viewUidMapper && self->_lastKnownTractRef)
  {
    lastKnownTractRefIsBase = self->_lastKnownTractRefIsBase;
    v5 = [TSTUIDRectRef alloc];
    v12 = objc_msgSend_calcEngine(self, v6, v7, v8, v9);
    lastKnownTractRef = self->_lastKnownTractRef;
    if (lastKnownTractRefIsBase)
    {
      v14 = objc_msgSend_initWithCalcEngine_baseTractRef_(v5, v10, v12, lastKnownTractRef, v11);
    }

    else
    {
      v14 = objc_msgSend_initWithCalcEngine_viewTractRef_(v5, v10, v12, lastKnownTractRef, v11);
    }

    v27 = v14;

    *(v27 + 90) = self->_basePreserveFlags;
  }

  else
  {
    v15 = [TSTUIDRectRef alloc];
    v20 = objc_msgSend_calcEngine(self, v16, v17, v18, v19);
    v25 = objc_msgSend_basePreserveFlags(self, v21, v22, v23, v24);
    v27 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v15, v26, v20, &self->_tableUID, &self->_uidRange, v25);

    objc_storeStrong((v27 + 64), self->_lastKnownTractRef);
    *(v27 + 89) = self->_lastKnownTractRefIsBase;
  }

  objc_storeStrong((v27 + 80), self->_viewUidMapper);
  *(v27 + 72) = self->_viewMapVersionCounter;
  *(v27 + 88) = self->_needsUidRectUpgrade;
  return v27;
}

- (void)convertViewTractRefToUID
{
  if (self->_lastKnownTractRef)
  {
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

    if (WeakRetained)
    {
      v12 = objc_msgSend_tableInfo(self, v4, v5, v6, v7);
      if (!v12)
      {
LABEL_39:

        return;
      }

      v13 = objc_msgSend_columns(self->_lastKnownTractRef, v8, v9, v10, v11);
      v14 = TSUIndexSet::asNSIndexSet(v13);
      v19 = objc_msgSend_rows(self->_lastKnownTractRef, v15, v16, v17, v18);
      v24 = TSUIndexSet::asNSIndexSet(v19);
      v80 = 0uLL;
      v81 = 0;
      __p[0] = 0;
      __p[1] = 0;
      v79 = 0;
      viewUidMapper = self->_viewUidMapper;
      if (viewUidMapper)
      {
        if (self->_lastKnownTractRefIsBase && (v26 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTUIDRectRef convertViewTractRefToUID]", v22, v23), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTUIDRectRef.mm", v29, v30), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v32, v27, v31, 193, 0, "Not expecting base for _lastKnownTractRef here"), v31, v27, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36), (viewUidMapper = self->_viewUidMapper) == 0))
        {
          v75[0] = 0;
          v75[1] = 0;
          v76 = 0;
        }

        else
        {
          objc_msgSend_columnUIDsForColumnIndexes_(viewUidMapper, v20, v14, v22, v23);
        }

        v80 = *v75;
        v81 = v76;
        v38 = self->_viewUidMapper;
        if (v38)
        {
          objc_msgSend_rowUIDsForRowIndexes_(v38, v20, v24, v22, v23);
        }

        else
        {
          v75[0] = 0;
          v75[1] = 0;
          v76 = 0;
        }

        *__p = *v75;
        v79 = v76;
        v44 = objc_msgSend_translator(v12, v20, v37, v22, v23);
        v49 = objc_msgSend_viewMap(v44, v45, v46, v47, v48);
        self->_viewMapVersionCounter = objc_msgSend_versionCounter(v49, v50, v51, v52, v53);
      }

      else
      {
        if (!self->_lastKnownTractRefIsBase)
        {
          objc_msgSend_columnUIDsForColumnIndexes_(v12, v20, v14, v22, v23);
          v80 = *v75;
          v81 = v76;
          objc_msgSend_rowUIDsForRowIndexes_(v12, v54, v24, v55, v56);
          *__p = *v75;
          v79 = v76;
LABEL_23:
          sub_2210BBBE8(v75, &v80, __p);
          if (objc_msgSend_spansAllColumns(self->_lastKnownTractRef, v65, v66, v67, v68))
          {
            operator new();
          }

          if (objc_msgSend_spansAllRows(self->_lastKnownTractRef, v69, v70, v71, v72))
          {
            operator new();
          }

          v73 = (v75[1] - v75[0]) >> 4;
          if (((v77[1] - v77[0]) >> 4) * v73 && &self->_uidRange != v75)
          {
            sub_2210BD068(&self->_uidRange._colIdList.__begin_, v75[0], v75[1], v73);
            sub_2210BD068(&self->_uidRange._rowIdList.__begin_, v77[0], v77[1], (v77[1] - v77[0]) >> 4);
          }

          v74 = self->_viewUidMapper;
          self->_viewUidMapper = 0;

          if (v77[0])
          {
            v77[1] = v77[0];
            operator delete(v77[0]);
          }

          if (v75[0])
          {
            v75[1] = v75[0];
            operator delete(v75[0]);
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (v80)
          {
            *(&v80 + 1) = v80;
            operator delete(v80);
          }

          goto LABEL_39;
        }

        v39 = objc_msgSend_baseTableModel(v12, v20, v21, v22, v23);
        v43 = v39;
        if (v39)
        {
          objc_msgSend_columnUIDsForColumnIndexes_(v39, v40, v14, v41, v42);
        }

        else
        {
          v75[0] = 0;
          v75[1] = 0;
          v76 = 0;
        }

        v80 = *v75;
        v81 = v76;
        v75[1] = 0;
        v76 = 0;
        v75[0] = 0;

        v61 = objc_msgSend_baseTableModel(v12, v57, v58, v59, v60);
        v44 = v61;
        if (v61)
        {
          objc_msgSend_rowUIDsForRowIndexes_(v61, v62, v24, v63, v64);
        }

        else
        {
          v75[0] = 0;
          v75[1] = 0;
          v76 = 0;
        }

        *__p = *v75;
        v79 = v76;
        v75[1] = 0;
        v76 = 0;
        v75[0] = 0;
      }

      goto LABEL_23;
    }
  }
}

- (void)convertUIDRefToViewTractRef
{
  if ((self->_uidRange._rowIdList.__end_ - self->_uidRange._rowIdList.__begin_) * (self->_uidRange._colIdList.__end_ - self->_uidRange._colIdList.__begin_))
  {
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

    if (WeakRetained)
    {
      if (self->_viewUidMapper)
      {
        v8 = MEMORY[0x277D81150];
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTUIDRectRef convertUIDRefToViewTractRef]", v6, v7);
        v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTUIDRectRef.mm", v10, v11);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v25, v12, 233, 0, "If we're already uid-form, why do we have a mapper?");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
      }

      v26 = objc_msgSend_tableInfo(self, v4, v5, v6, v7);
      if (v26)
      {
        v22 = objc_msgSend_viewTractRef(self, v18, v19, v20, v21);
        lastKnownTractRef = self->_lastKnownTractRef;
        self->_lastKnownTractRef = v22;

        self->_lastKnownTractRefIsBase = 0;
      }

      viewUidMapper = self->_viewUidMapper;
      self->_viewUidMapper = 0;
    }
  }
}

- (void)excludeSummaryAndLabelRows
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  if (!WeakRetained)
  {
    v7 = MEMORY[0x277D81150];
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTUIDRectRef excludeSummaryAndLabelRows]", v5, v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTUIDRectRef.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v53, v11, 246, 0, "invalid nil value for '%{public}s'", "_calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  v17 = objc_loadWeakRetained(&self->_calcEngine);

  if (v17)
  {
    v54 = objc_msgSend_viewTractRef(self, v18, v19, v20, v21);
    v26 = objc_msgSend_baseTractRef(self, v22, v23, v24, v25);
    v31 = objc_msgSend_tableInfo(self, v27, v28, v29, v30);
    v36 = objc_msgSend_translator(v31, v32, v33, v34, v35);
    v41 = objc_msgSend_coordinateMapper(v36, v37, v38, v39, v40);

    v45 = objc_msgSend_viewTractRefForBaseTractRef_(v41, v42, v26, v43, v44);
    if ((objc_msgSend_isEqual_(v45, v46, v54, v47, v48) & 1) == 0)
    {
      objc_storeStrong(&self->_lastKnownTractRef, v45);
      self->_lastKnownTractRefIsBase = 0;
      objc_msgSend_convertViewTractRefToUID(self, v49, v50, v51, v52);
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (self->_tableUID._lower != objc_msgSend_tableUID(v5, v6, v7, v8, v9))
    {
      goto LABEL_13;
    }

    if (self->_tableUID._upper != v10)
    {
      goto LABEL_13;
    }

    basePreserveFlags = self->_basePreserveFlags;
    if (basePreserveFlags != objc_msgSend_basePreserveFlags(v5, v10, v11, v12, v13))
    {
      goto LABEL_13;
    }

    if (self->_viewUidMapper != v5[10])
    {
      objc_msgSend_uidRange(self, v15, v16, v17, v18);
      objc_msgSend_uidRange(v5, v19, v20, v21, v22);
      v23 = __p;
      if (((v35 - v34) >> 4) * ((v33 - v32) >> 4) == ((v31 - __p) >> 4) * ((v29 - v28) >> 4))
      {
        sub_22112C58C(v37, v32, v33);
        for (i = v28; i != v29; i += 2)
        {
          sub_22112C87C(v37, i);
        }

        sub_22112C58C(v36, v34, v35);
        for (j = __p; j != v31; j += 2)
        {
          sub_22112C87C(v36, j);
        }

        v25 = (v37[2] | v36[2]) == 0;
        sub_2210BC9F8(v36, v36[1]);
        sub_2210BC9F8(v37, v37[1]);
        v23 = __p;
      }

      else
      {
        v25 = 0;
      }

      if (v23)
      {
        operator delete(v23);
      }

      if (v28)
      {
        operator delete(v28);
      }

      if (v34)
      {
        operator delete(v34);
      }

      if (v32)
      {
        operator delete(v32);
      }

      goto LABEL_14;
    }

    if (objc_msgSend_isEqual_(self->_lastKnownTractRef, v15, v5[8], v17, v18))
    {
      v25 = self->_lastKnownTractRefIsBase == *(v5 + 89);
    }

    else
    {
LABEL_13:
      v25 = 0;
    }

LABEL_14:

    goto LABEL_15;
  }

  v25 = 0;
LABEL_15:

  return v25;
}

- (BOOL)isEmpty
{
  if (self->_viewUidMapper && (lastKnownTractRef = self->_lastKnownTractRef) != 0)
  {
    return (objc_msgSend_spansAllColumns(lastKnownTractRef, a2, v2, v3, v4) & 1) == 0 && !objc_msgSend_numColumns(self->_lastKnownTractRef, v7, v8, v9, v10) || (objc_msgSend_spansAllRows(self->_lastKnownTractRef, v7, v8, v9, v10) & 1) == 0 && objc_msgSend_numRows(self->_lastKnownTractRef, v11, v12, v13, v14) == 0;
  }

  else
  {
    v16 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
    v21 = objc_msgSend_translator(v16, v17, v18, v19, v20);
    objc_msgSend_uidRange(self, v22, v23, v24, v25);
    v29 = objc_msgSend_viewColumnIndexesForUIDs_(v21, v26, v59, v27, v28);
    if (objc_msgSend_count(v29, v30, v31, v32, v33))
    {
      v15 = 0;
    }

    else
    {
      v38 = objc_msgSend_tableInfo(self, v34, v35, v36, v37);
      v43 = objc_msgSend_translator(v38, v39, v40, v41, v42);
      objc_msgSend_uidRange(self, v44, v45, v46, v47);
      v51 = objc_msgSend_viewRowIndexesForUIDs_(v43, v48, __p, v49, v50);
      v15 = objc_msgSend_count(v51, v52, v53, v54, v55) == 0;

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v57)
      {
        operator delete(v57);
      }
    }

    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }

    if (v59[0])
    {
      v59[1] = v59[0];
      operator delete(v59[0]);
    }
  }

  return v15;
}

- (BOOL)isViewRectangle
{
  objc_msgSend_viewRangeRefs(self, a2, v2, v3, v4);
  if (v6)
  {
    operator delete(v6);
  }

  return v7 - v6 == 32;
}

- (BOOL)isBaseRectangle
{
  objc_msgSend_baseRangeRefs(self, a2, v2, v3, v4);
  if (v6)
  {
    operator delete(v6);
  }

  return v7 - v6 == 32;
}

- (BOOL)baseToViewPreserveFlagsAreInverted
{
  v6 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  if (objc_msgSend_spansAllRows(self, v7, v8, v9, v10))
  {
    v15 = 0;
    v16 = objc_msgSend_count(0, v11, v12, v13, v14);
  }

  else
  {
    lastKnownTractRef = self->_lastKnownTractRef;
    if (lastKnownTractRef)
    {
      if (self->_lastKnownTractRefIsBase)
      {
        v22 = MEMORY[0x277D81150];
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTUIDRectRef baseToViewPreserveFlagsAreInverted]", v13, v14);
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTUIDRectRef.mm", v25, v26);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 323, 0, "Not expecting base _lastKnownTractRef here");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
        lastKnownTractRef = self->_lastKnownTractRef;
      }

      v33 = objc_msgSend_rows(lastKnownTractRef, v11, v12, v13, v14);
      v15 = TSUIndexSet::asNSIndexSet(v33);
      v16 = objc_msgSend_count(v15, v34, v35, v36, v37);
    }

    else
    {
      objc_msgSend_uidRange(self, v11, v12, v13, v14);
      v15 = objc_msgSend_rowIndexesForUIDs_(v6, v38, __p, v39, v40);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v75)
      {
        operator delete(v75);
      }

      v16 = objc_msgSend_count(v15, v41, v42, v43, v44);
    }
  }

  if (v16)
  {
    v45 = objc_msgSend_indexesForSummaryAndLabelRows(v6, v17, v18, v19, v20);
    v49 = objc_msgSend_tsu_indexSetByExcludingIndexes_(v15, v46, v45, v47, v48);

    Index = objc_msgSend_firstIndex(v49, v50, v51, v52, v53);
    v59 = objc_msgSend_lastIndex(v49, v55, v56, v57, v58);
    v64 = objc_msgSend_translator(v6, v60, v61, v62, v63);
    v68 = v64;
    if (v64)
    {
      v69 = objc_msgSend_baseRowIndexForViewRowIndex_(v64, v65, Index, v66, v67);
      v73 = v69 > objc_msgSend_baseRowIndexForViewRowIndex_(v68, v70, v59, v71, v72);
    }

    else
    {
      v73 = 0;
    }
  }

  else
  {
    v73 = 0;
    v49 = v15;
  }

  return v73;
}

- (unsigned)viewPreserveFlags
{
  basePreserveFlags = self->_basePreserveFlags;
  v7._flags = basePreserveFlags;
  if (objc_msgSend_baseToViewPreserveFlagsAreInverted(self, a2, v2, v3, v4))
  {
    return TSUPreserveFlags::swapRowFlags(&v7);
  }

  return basePreserveFlags;
}

- (void)setViewPreserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  v10._flags = flags;
  if (objc_msgSend_baseToViewPreserveFlagsAreInverted(self, a2, flags, v3, v4))
  {
    flagsCopy = TSUPreserveFlags::swapRowFlags(&v10);
    v10._flags = flagsCopy;
  }

  self->_basePreserveFlags = flagsCopy;
  objc_msgSend_setPreserveFlags_(self->_lastKnownTractRef, v7, flagsCopy, v8, v9);
}

- (void)setViewRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  self->_tableUID = *(ref + 1);
  viewUidMapper = self->_viewUidMapper;
  self->_viewUidMapper = 0;

  v13 = *ref;
  v12 = *(ref + 1);
  v14 = *ref & 0xFFFF00000000;
  v15 = v12 & 0xFFFF00000000;
  v16 = *ref;
  if (v16 != 0x7FFFFFFF && v14 == 0x7FFF00000000 && v15 == 0x7FFF00000000)
  {
    if (v12 != 0x7FFFFFFF)
    {
      operator new();
    }
  }

  else if (v16 == 0x7FFFFFFF && v14 != 0x7FFF00000000 && v15 != 0x7FFF00000000 && v12 == 0x7FFFFFFFLL)
  {
    v24 = objc_msgSend_tableInfo(self, v8, v9, v10, v11);
    if (WORD2(v12) == 0x7FFF || WORD2(v13) == 0x7FFF)
    {
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v22, WORD2(v13), 0, v23);
    }

    else
    {
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v22, WORD2(v13), WORD2(v12) - WORD2(v13) + 1, v23);
    }
    v29 = ;
    if (v24)
    {
      objc_msgSend_columnUIDsForColumnIndexes_(v24, v26, v29, v27, v28);
    }

    operator new();
  }

  v30 = objc_msgSend_grabViewUidMapper(self, v8, v9, v10, v11);
  v31 = [TSCECellTractRef alloc];
  v35 = objc_msgSend_initWithRangeRef_(v31, v32, ref, v33, v34);
  lastKnownTractRef = self->_lastKnownTractRef;
  self->_lastKnownTractRef = v35;

  objc_msgSend_setPreserveFlags_(self->_lastKnownTractRef, v37, flagsCopy, v38, v39);
  self->_lastKnownTractRefIsBase = 0;

  objc_msgSend_setViewPreserveFlags_(self, v40, flagsCopy, v41, v42);
}

- (RefTypeHolder<TSCERangeRef,)chromeRangeRef
{
  v7 = objc_msgSend_chromeTractRef(self, a3, v3, v4, v5);
  v12 = v7;
  if (v7)
  {
    objc_msgSend_boundingRangeRef(v7, v8, v9, v10, v11);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  retstr->var0.range = v14;
  retstr->var0._tableUID = v15;

  return result;
}

- (void)setChromeRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  viewUidMapper = self->_viewUidMapper;
  self->_viewUidMapper = 0;

  self->_tableUID = *(ref + 1);
  v13 = *ref;
  v12 = *(ref + 1);
  v14 = *ref & 0xFFFF00000000;
  v15 = v12 & 0xFFFF00000000;
  v16 = *ref;
  if (v16 != 0x7FFFFFFF && v14 == 0x7FFF00000000 && v15 == 0x7FFF00000000)
  {
    if (v12 != 0x7FFFFFFF)
    {
      v75 = objc_msgSend_tableInfo(self, v8, v9, v10, v11);
      v80 = objc_msgSend_translator(v75, v76, v77, v78, v79);
      v83 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v81, v16, (v12 - v13 + 1), v82);
      objc_msgSend_viewRowIndexesForChromeRowIndexes_(v80, v84, v83, v85, v86);
      objc_claimAutoreleasedReturnValue();

      operator new();
    }
  }

  else if (v16 == 0x7FFFFFFF && v14 != 0x7FFF00000000 && v15 != 0x7FFF00000000 && v12 == 0x7FFFFFFFLL)
  {
    v22 = objc_msgSend_tableInfo(self, v8, v9, v10, v11);
    v29 = objc_msgSend_translator(v22, v23, v24, v25, v26);
    if (WORD2(v12) == 0x7FFF || WORD2(v13) == 0x7FFF)
    {
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v27, WORD2(v13), 0, v28);
    }

    else
    {
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v27, WORD2(v13), WORD2(v12) - WORD2(v13) + 1, v28);
    }
    v31 = ;
    v35 = objc_msgSend_viewColumnIndexesForChromeColumnIndexes_(v29, v32, v31, v33, v34);

    v40 = objc_msgSend_tableInfo(self, v36, v37, v38, v39);
    if (v40)
    {
      objc_msgSend_columnUIDsForColumnIndexes_(v40, v41, v35, v42, v43);
    }

    operator new();
  }

  v44 = objc_msgSend_grabViewUidMapper(self, v8, v9, v10, v11);
  v49 = objc_msgSend_tableInfo(self, v45, v46, v47, v48);
  v54 = objc_msgSend_translator(v49, v50, v51, v52, v53);
  v87 = objc_msgSend_coordinateMapper(v54, v55, v56, v57, v58);

  v59 = [TSCECellTractRef alloc];
  v63 = objc_msgSend_initWithRangeRef_(v59, v60, ref, v61, v62);
  objc_msgSend_setPreserveFlags_(v63, v64, flagsCopy, v65, v66);
  v70 = objc_msgSend_viewTractRefForChromeTractRef_(v87, v67, v63, v68, v69);
  lastKnownTractRef = self->_lastKnownTractRef;
  self->_lastKnownTractRef = v70;

  self->_lastKnownTractRefIsBase = 0;
  objc_msgSend_setViewPreserveFlags_(self, v72, flagsCopy, v73, v74);
}

- (void)setBaseRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  self->_basePreserveFlags = flags;
  self->_tableUID = *(ref + 1);
  viewUidMapper = self->_viewUidMapper;
  self->_viewUidMapper = 0;

  v12 = objc_msgSend_tableInfo(self, v8, v9, v10, v11);
  v17 = objc_msgSend_baseTableModel(v12, v13, v14, v15, v16);

  if (v17)
  {
    v22 = *(ref + 1);
    v23 = *ref & 0xFFFF00000000;
    v24 = v22 & 0xFFFF00000000;
    v25 = *ref;
    if (v25 != 0x7FFFFFFF && v23 == 0x7FFF00000000 && v24 == 0x7FFF00000000)
    {
      if (v22 != 0x7FFFFFFF)
      {
        operator new();
      }
    }

    else if (v25 == 0x7FFFFFFF && v23 != 0x7FFF00000000 && v24 != 0x7FFF00000000 && v22 == 0x7FFFFFFFLL)
    {
      operator new();
    }

    v37 = objc_msgSend_grabViewUidMapper(self, v18, v19, v20, v21);
    v42 = objc_msgSend_tableInfo(self, v38, v39, v40, v41);
    v47 = objc_msgSend_translator(v42, v43, v44, v45, v46);
    v52 = objc_msgSend_coordinateMapper(v47, v48, v49, v50, v51);

    v53 = [TSCECellTractRef alloc];
    v57 = objc_msgSend_initWithRangeRef_(v53, v54, ref, v55, v56);
    objc_msgSend_setPreserveFlags_(v57, v58, flagsCopy, v59, v60);
    v64 = objc_msgSend_viewTractRefForBaseTractRef_(v52, v61, v57, v62, v63);
    lastKnownTractRef = self->_lastKnownTractRef;
    self->_lastKnownTractRef = v64;
  }

  else
  {
    v28 = [TSCECellTractRef alloc];
    v32 = objc_msgSend_initWithRangeRef_(v28, v29, ref, v30, v31);
    objc_msgSend_setPreserveFlags_(v32, v33, flagsCopy, v34, v35);
    v36 = self->_lastKnownTractRef;
    self->_lastKnownTractRef = v32;

    self->_lastKnownTractRefIsBase = 1;
  }
}

- (RefTypeHolder<TSCERangeRef,)baseRangeRef
{
  retstr->var0.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  retstr->var0._tableUID._lower = 0;
  retstr->var0._tableUID._upper = 0;
  objc_msgSend_baseRangeRefs(self, a3, v3, v4, v5);
  result = v24;
  v11 = v25;
  if ((v25 - v24) >= 0x21)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTUIDRectRef baseRangeRef]", v8, v9);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTUIDRectRef.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 488, 0, "This API can't support multiple base ranges, had %lu", v25 - v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    result = v24;
    v11 = v25;
  }

  if (v11 - result == 32)
  {
    tableUID = result->var0._tableUID;
    retstr->var0.range = result->var0.range;
    retstr->var0._tableUID = tableUID;
  }

  else if (!result)
  {
    return result;
  }

  v25 = result;
  operator delete(result);
  return result;
}

- (RefTypeHolder<TSCERangeRef,)viewRangeRef
{
  retstr->var0.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  retstr->var0._tableUID._lower = 0;
  retstr->var0._tableUID._upper = 0;
  objc_msgSend_viewRangeRefs(self, a3, v3, v4, v5);
  result = v24;
  v11 = v25;
  if ((v25 - v24) >= 0x21)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTUIDRectRef viewRangeRef]", v8, v9);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTUIDRectRef.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 502, 0, "This API can't support multiple view ranges, had %lu", v25 - v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    result = v24;
    v11 = v25;
  }

  if (v11 - result == 32)
  {
    tableUID = result->var0._tableUID;
    retstr->var0.range = result->var0.range;
    retstr->var0._tableUID = tableUID;
  }

  else if (!result)
  {
    return result;
  }

  v25 = result;
  operator delete(result);
  return result;
}

- (vector<RefTypeHolder<TSCERangeRef,)baseRangeRefs
{
  v69 = 0;
  v70 = &v69;
  v71 = 0x4812000000;
  v72 = sub_22112A8C4;
  v73 = sub_22112A8E8;
  v74 = &unk_22188E88F;
  v76 = 0;
  v77 = 0;
  v75 = 0;
  v8 = objc_msgSend_tableInfo(self, a3, v3, v4, v5);
  v13 = objc_msgSend_baseTableModel(v8, v9, v10, v11, v12);

  if (objc_msgSend_spansAllRows(self, v14, v15, v16, v17))
  {
    v22 = objc_msgSend_columnRowUIDMap(v13, v18, v19, v20, v21);
    objc_msgSend_uidRange(self, v23, v24, v25, v26);
    v30 = objc_msgSend_columnIndexesForUIDs_(v22, v27, &v65, v28, v29);
    if (__p)
    {
      v68 = __p;
      operator delete(__p);
    }

    if (v65)
    {
      v66 = v65;
      operator delete(v65);
    }

    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = sub_22112A900;
    v64[3] = &unk_27845F7B0;
    v64[4] = self;
    v64[5] = &v69;
    objc_msgSend_enumerateRangesUsingBlock_(v30, v31, v64, v32, v33);
  }

  else if (objc_msgSend_spansAllColumns(self, v18, v19, v20, v21))
  {
    v38 = objc_msgSend_columnRowUIDMap(v13, v34, v35, v36, v37);
    objc_msgSend_uidRange(self, v39, v40, v41, v42);
    v30 = objc_msgSend_rowIndexesForUIDs_(v38, v43, &__p, v44, v45);
    if (__p)
    {
      v68 = __p;
      operator delete(__p);
    }

    if (v65)
    {
      v66 = v65;
      operator delete(v65);
    }

    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = sub_22112AA5C;
    v63[3] = &unk_27845F7B0;
    v63[4] = self;
    v63[5] = &v69;
    objc_msgSend_enumerateRangesUsingBlock_(v30, v46, v63, v47, v48);
  }

  else
  {
    v49 = objc_msgSend_columnRowUIDMap(v13, v34, v35, v36, v37);
    objc_msgSend_uidRange(self, v50, v51, v52, v53);
    v30 = objc_msgSend_cellRegionForUIDRange_(v49, v54, &v65, v55, v56);
    if (__p)
    {
      v68 = __p;
      operator delete(__p);
    }

    if (v65)
    {
      v66 = v65;
      operator delete(v65);
    }

    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = sub_22112AAD8;
    v62[3] = &unk_27845F7D8;
    v62[4] = self;
    v62[5] = &v69;
    objc_msgSend_enumerateCellRangesUsingBlock_(v30, v57, v62, v58, v59);
  }

  v60 = v70;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  sub_22112CD44(retstr, v60[6], v60[7], (v60[7] - v60[6]) >> 5);

  _Block_object_dispose(&v69, 8);
  result = v75;
  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  return result;
}

- (vector<RefTypeHolder<TSCERangeRef,)viewRangeRefs
{
  v80 = 0;
  v81 = &v80;
  v82 = 0x4812000000;
  v83 = sub_22112AFB0;
  v84 = sub_22112AFD4;
  v85 = &unk_22188E88F;
  v87 = 0;
  v88 = 0;
  v86 = 0;
  if (objc_msgSend_spansAllRows(self, a3, v3, v4, v5))
  {
    v12 = objc_msgSend_tableInfo(self, v8, v9, v10, v11);
    objc_msgSend_uidRange(self, v13, v14, v15, v16);
    v20 = objc_msgSend_columnIndexesForUIDs_(v12, v17, &v76, v18, v19);
    if (__p)
    {
      v79 = __p;
      operator delete(__p);
    }

    if (v76)
    {
      v77 = v76;
      operator delete(v76);
    }

    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = sub_22112AFEC;
    v75[3] = &unk_27845F7B0;
    v75[4] = self;
    v75[5] = &v80;
    objc_msgSend_enumerateRangesUsingBlock_(v20, v21, v75, v22, v23);
  }

  else if (objc_msgSend_spansAllColumns(self, v8, v9, v10, v11))
  {
    v28 = objc_msgSend_tableInfo(self, v24, v25, v26, v27);
    objc_msgSend_uidRange(self, v29, v30, v31, v32);
    v20 = objc_msgSend_rowIndexesForUIDs_(v28, v33, &__p, v34, v35);
    if (__p)
    {
      v79 = __p;
      operator delete(__p);
    }

    if (v76)
    {
      v77 = v76;
      operator delete(v76);
    }

    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = sub_22112B070;
    v74[3] = &unk_27845F7B0;
    v74[4] = self;
    v74[5] = &v80;
    objc_msgSend_enumerateRangesUsingBlock_(v20, v36, v74, v37, v38);
  }

  else
  {
    if (self->_viewUidMapper && (lastKnownTractRef = self->_lastKnownTractRef) != 0)
    {
      if (self->_lastKnownTractRefIsBase)
      {
        v40 = MEMORY[0x277D81150];
        v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTUIDRectRef viewRangeRefs]", v26, v27);
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTUIDRectRef.mm", v43, v44);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v46, v41, v45, 584, 0, "Not expecting base _lastKnownTractRef here");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
        lastKnownTractRef = self->_lastKnownTractRef;
      }

      v51 = objc_msgSend_columns(lastKnownTractRef, v24, v25, v26, v27);
      v52 = TSUIndexSet::asNSIndexSet(v51);
      v57 = objc_msgSend_rows(self->_lastKnownTractRef, v53, v54, v55, v56);
      v58 = TSUIndexSet::asNSIndexSet(v57);
      v20 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v59, v52, v58, v60);
    }

    else
    {
      v52 = objc_msgSend_tableInfo(self, v24, v25, v26, v27);
      objc_msgSend_uidRange(self, v61, v62, v63, v64);
      v20 = objc_msgSend_cellRegionForUIDRange_(v52, v65, &v76, v66, v67);
      if (__p)
      {
        v79 = __p;
        operator delete(__p);
      }

      if (v76)
      {
        v77 = v76;
        operator delete(v76);
      }
    }

    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = sub_22112B0EC;
    v73[3] = &unk_27845F7D8;
    v73[4] = self;
    v73[5] = &v80;
    objc_msgSend_enumerateCellRangesUsingBlock_(v20, v68, v73, v69, v70);
  }

  v71 = v81;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  sub_22112CDC0(retstr, v71[6], v71[7], (v71[7] - v71[6]) >> 5);
  _Block_object_dispose(&v80, 8);
  result = v86;
  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  return result;
}

- (id)baseTractRef
{
  v6 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  v11 = objc_msgSend_baseTableModel(v6, v7, v8, v9, v10);

  if (v11)
  {
    v16 = objc_msgSend_viewTractRef(self, v12, v13, v14, v15);
    v21 = objc_msgSend_tableInfo(self, v17, v18, v19, v20);
    v26 = objc_msgSend_translator(v21, v22, v23, v24, v25);
    v31 = objc_msgSend_coordinateMapper(v26, v27, v28, v29, v30);

    v35 = objc_msgSend_baseTractRefForViewTractRef_(v31, v32, v16, v33, v34);
  }

  else
  {
    v35 = self->_lastKnownTractRef;
  }

  return v35;
}

- (id)viewTractRef
{
  v10 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  lastKnownTractRef = self->_lastKnownTractRef;
  if (!v10)
  {
    v28 = lastKnownTractRef;
    goto LABEL_13;
  }

  if (objc_msgSend_isValid(lastKnownTractRef, v6, v7, v8, v9))
  {
    v16 = objc_msgSend_translator(v10, v12, v13, v14, v15);
    v21 = objc_msgSend_viewMap(v16, v17, v18, v19, v20);
    v26 = objc_msgSend_versionCounter(v21, v22, v23, v24, v25);
    viewMapVersionCounter = self->_viewMapVersionCounter;

    if (v26 == viewMapVersionCounter)
    {
      v28 = self->_lastKnownTractRef;
LABEL_13:
      v43 = v28;
      goto LABEL_45;
    }
  }

  if (objc_msgSend_spansAllRows(self, v12, v13, v14, v15))
  {
    objc_msgSend_uidRange(self, v29, v30, v31, v32);
    v40 = objc_msgSend_columnIndexesForUIDs_(v10, v33, &v112, v34, v35);
    if (v112._multipleRanges)
    {
      multipleRanges = v112._multipleRanges;
      operator delete(v112._multipleRanges);
    }

    if (*&v112)
    {
      v112._singleRange._begin = v112;
      operator delete(*&v112);
    }

    if (objc_msgSend_count(v40, v36, v37, v38, v39))
    {
      v41 = 0;
      v42 = 0;
      goto LABEL_35;
    }

    v42 = v40;
  }

  else if (objc_msgSend_spansAllColumns(self, v29, v30, v31, v32))
  {
    objc_msgSend_uidRange(self, v44, v45, v46, v47);
    v42 = objc_msgSend_rowIndexesForUIDs_(v10, v48, &v112._multipleRanges, v49, v50);
    if (v112._multipleRanges)
    {
      multipleRanges = v112._multipleRanges;
      operator delete(v112._multipleRanges);
    }

    if (*&v112)
    {
      v112._singleRange._begin = v112;
      operator delete(*&v112);
    }

    if (objc_msgSend_count(v42, v51, v52, v53, v54))
    {
      v41 = 0;
      v40 = 0;
      goto LABEL_35;
    }
  }

  else
  {
    objc_msgSend_uidRange(self, v44, v45, v46, v47);
    v40 = objc_msgSend_columnIndexesForUIDs_(v10, v55, &v112, v56, v57);
    if (v112._multipleRanges)
    {
      multipleRanges = v112._multipleRanges;
      operator delete(v112._multipleRanges);
    }

    if (*&v112)
    {
      v112._singleRange._begin = v112;
      operator delete(*&v112);
    }

    objc_msgSend_uidRange(self, v58, v59, v60, v61);
    v42 = objc_msgSend_rowIndexesForUIDs_(v10, v62, &v112._multipleRanges, v63, v64);
    if (v112._multipleRanges)
    {
      multipleRanges = v112._multipleRanges;
      operator delete(v112._multipleRanges);
    }

    if (*&v112)
    {
      v112._singleRange._begin = v112;
      operator delete(*&v112);
    }

    if (objc_msgSend_count(v40, v65, v66, v67, v68) && objc_msgSend_count(v42, v69, v70, v71, v72))
    {
      v41 = 0;
      goto LABEL_35;
    }
  }

  v42 = 0;
  v40 = 0;
  v41 = 1;
LABEL_35:
  v73 = [TSCECellTractRef alloc];
  MEMORY[0x223D9F7A0](&v112, v40);
  MEMORY[0x223D9F7A0](&v111, v42);
  v110[0] = objc_msgSend_tableUID(self, v74, v75, v76, v77);
  v110[1] = v78;
  v43 = objc_msgSend_initWithColumns_rows_tableUID_(v73, v78, &v112, &v111, v110);
  TSUIndexSet::~TSUIndexSet(&v111);
  TSUIndexSet::~TSUIndexSet(&v112);
  Index = objc_msgSend_firstIndex(v42, v79, v80, v81, v82);
  v88 = objc_msgSend_lastIndex(v42, v84, v85, v86, v87);
  v93 = objc_msgSend_translator(v10, v89, v90, v91, v92);
  v97 = v93;
  if (v93 && (v98 = objc_msgSend_baseRowIndexForViewRowIndex_(v93, v94, Index, v95, v96), v98 > objc_msgSend_baseRowIndexForViewRowIndex_(v97, v99, v88, v100, v101)))
  {
    *&v112 = self->_basePreserveFlags;
    v102 = TSUPreserveFlags::swapRowFlags(&v112);
    objc_msgSend_setPreserveFlags_(v43, v103, v102, v104, v105);
  }

  else
  {
    objc_msgSend_setPreserveFlags_(v43, v94, self->_basePreserveFlags, v95, v96);
  }

  if ((v41 & 1) == 0)
  {
    if (v40)
    {
      if (!v42)
      {
        objc_msgSend_setSpansAllRows_(v43, v106, 1, v107, v108);
      }
    }

    else
    {
      objc_msgSend_setSpansAllColumns_(v43, v106, 1, v107, v108);
    }
  }

LABEL_45:

  return v43;
}

- (id)chromeTractRef
{
  v10 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  if (v10)
  {
    v11 = objc_msgSend_viewTractRef(self, v6, v7, v8, v9);
    v16 = objc_msgSend_tableInfo(self, v12, v13, v14, v15);
    v21 = objc_msgSend_translator(v16, v17, v18, v19, v20);
    v26 = objc_msgSend_coordinateMapper(v21, v22, v23, v24, v25);

    v30 = objc_msgSend_chromeTractRefForViewTractRef_(v26, v27, v11, v28, v29);
  }

  else
  {
    v30 = self->_lastKnownTractRef;
  }

  return v30;
}

- (id)viewTractRefIfFullyValid
{
  v6 = objc_msgSend_viewTractRef(self, a2, v2, v3, v4);
  if (!objc_msgSend_isValid(v6, v7, v8, v9, v10))
  {
    goto LABEL_22;
  }

  if (!self->_viewUidMapper)
  {
    v20 = objc_msgSend_spansAllColumns(v6, v11, v12, v13, v14);
    if ((v20 & 1) != 0 || (v21 = objc_msgSend_numColumns(v6, v16, v17, v18, v19), objc_msgSend_uidRange(self, v22, v23, v24, v25), v21 == (v42 - v41) >> 4))
    {
      if (objc_msgSend_spansAllRows(v6, v16, v17, v18, v19))
      {
        if (v20)
        {
          goto LABEL_3;
        }

        v30 = 1;
      }

      else
      {
        v31 = objc_msgSend_numRows(v6, v26, v27, v28, v29);
        objc_msgSend_uidRange(self, v32, v33, v34, v35);
        v30 = (v40 - v39) >> 4 == v31;
        if (v39)
        {
          operator delete(v39);
        }

        if (__p)
        {
          operator delete(__p);
        }

        if (v20)
        {
          if ((v40 - v39) >> 4 == v31)
          {
            goto LABEL_3;
          }

LABEL_22:
          v15 = 0;
          goto LABEL_23;
        }
      }
    }

    else
    {
      v30 = 0;
    }

    if (v43)
    {
      operator delete(v43);
    }

    if (v41)
    {
      operator delete(v41);
    }

    if (v30)
    {
      goto LABEL_3;
    }

    goto LABEL_22;
  }

LABEL_3:
  v15 = v6;
LABEL_23:
  v36 = v15;

  return v15;
}

- (TSUViewCellCoord)viewTopLeftCoord
{
  objc_msgSend_viewRangeRefs(self, a2, v2, v3, v4);
  v5 = 0x7FFFFFFFLL;
  if (v15 == v16)
  {
    v12 = 0;
    v13 = 0x7FFF00000000;
    if (!v15)
    {
      return (v12 | v13 | v5);
    }

    goto LABEL_14;
  }

  v6 = 0;
  v7 = 0x7FFFLL;
  LODWORD(v8) = 0x7FFFFFFF;
  v9 = v15;
  do
  {
    v10 = *v9;
    if (v8 == 0x7FFFFFFF || v7 == 0x7FFF || v8 > v10 || (v8 == v10 ? (v11 = v7 > WORD2(*v9)) : (v11 = 0), v11))
    {
      v6 = HIWORD(v10);
      v8 = *v9;
      v7 = WORD2(*v9);
    }

    v9 += 4;
  }

  while (v9 != v16);
  v12 = v6 << 48;
  v13 = v7 << 32;
  v5 = v8;
  if (v15)
  {
LABEL_14:
    operator delete(v15);
  }

  return (v12 | v13 | v5);
}

- (TSUViewCellCoord)viewBottomRightCoord
{
  objc_msgSend_viewRangeRefs(self, a2, v2, v3, v4);
  v5 = 0x7FFFFFFFLL;
  if (v17 == v18)
  {
    v14 = 0;
    v15 = 0x7FFF00000000;
    if (!v17)
    {
      return (v14 | v15 | v5);
    }

    goto LABEL_18;
  }

  v6 = 0;
  v7 = 0x7FFFLL;
  v8 = v17;
  LODWORD(v9) = 0x7FFFFFFF;
  do
  {
    v10 = v8[1];
    v12 = v9 != 0x7FFFFFFF && v7 != 0x7FFF && v9 >= v10;
    if (!v12 || (v9 == v10 ? (v13 = v7 >= WORD2(v10)) : (v13 = 1), !v13))
    {
      v6 = HIWORD(v10);
      v9 = v8[1];
      v7 = WORD2(v10);
    }

    v8 += 4;
  }

  while (v8 != v18);
  v14 = v6 << 48;
  v15 = v7 << 32;
  v5 = v9;
  if (v17)
  {
LABEL_18:
    operator delete(v17);
  }

  return (v14 | v15 | v5);
}

- (TSUModelCellCoord)baseTopLeftCoord
{
  objc_msgSend_baseRangeRefs(self, a2, v2, v3, v4);
  v5 = 0x7FFFFFFFLL;
  if (v15 == v16)
  {
    v12 = 0;
    v13 = 0x7FFF00000000;
    if (!v15)
    {
      return (v12 | v13 | v5);
    }

    goto LABEL_14;
  }

  v6 = 0;
  v7 = 0x7FFFLL;
  LODWORD(v8) = 0x7FFFFFFF;
  v9 = v15;
  do
  {
    v10 = *v9;
    if (v8 == 0x7FFFFFFF || v7 == 0x7FFF || v8 > v10 || (v8 == v10 ? (v11 = v7 > WORD2(*v9)) : (v11 = 0), v11))
    {
      v6 = HIWORD(v10);
      v8 = *v9;
      v7 = WORD2(*v9);
    }

    v9 += 4;
  }

  while (v9 != v16);
  v12 = v6 << 48;
  v13 = v7 << 32;
  v5 = v8;
  if (v15)
  {
LABEL_14:
    operator delete(v15);
  }

  return (v12 | v13 | v5);
}

- (TSUModelCellCoord)baseBottomRightCoord
{
  objc_msgSend_baseRangeRefs(self, a2, v2, v3, v4);
  v5 = 0x7FFFFFFFLL;
  if (v17 == v18)
  {
    v14 = 0;
    v15 = 0x7FFF00000000;
    if (!v17)
    {
      return (v14 | v15 | v5);
    }

    goto LABEL_18;
  }

  v6 = 0;
  v7 = 0x7FFFLL;
  v8 = v17;
  LODWORD(v9) = 0x7FFFFFFF;
  do
  {
    v10 = v8[1];
    v12 = v9 != 0x7FFFFFFF && v7 != 0x7FFF && v9 >= v10;
    if (!v12 || (v9 == v10 ? (v13 = v7 >= WORD2(v10)) : (v13 = 1), !v13))
    {
      v6 = HIWORD(v10);
      v9 = v8[1];
      v7 = WORD2(v10);
    }

    v8 += 4;
  }

  while (v8 != v18);
  v14 = v6 << 48;
  v15 = v7 << 32;
  v5 = v9;
  if (v17)
  {
LABEL_18:
    operator delete(v17);
  }

  return (v14 | v15 | v5);
}

- (id)viewCellRegionWithRangeContext:(unsigned __int8)context
{
  contextCopy = context;
  v7 = objc_msgSend_tableInfo(self, a2, context, v3, v4);
  v12 = objc_msgSend_baseTableModel(v7, v8, v9, v10, v11);
  if ((objc_msgSend_spansAllRows(self, v13, v14, v15, v16) & 1) != 0 || objc_msgSend_spansAllColumns(self, v17, v18, v19, v20))
  {
    v21 = objc_msgSend_range(v12, v17, v18, v19, v20);
    v23 = v22;
    v27 = objc_msgSend_bodyRange(v12, v22, v24, v25, v26);
    v29 = v28;
    v33 = objc_msgSend_invalidRegion(TSTCellRegion, v28, v30, v31, v32);
    objc_msgSend_baseRangeRefs(self, v34, v35, v36, v37);
    v43 = __p;
    if (__p == v63)
    {
      v47 = v33;
    }

    else
    {
      do
      {
        v44 = sub_221387DDC(*v43, v43[1], contextCopy, v21, v23, v27, v29, v42);
        v47 = objc_msgSend_regionByAddingRange_(v33, v45, v44, v45, v46);

        v43 += 4;
        v33 = v47;
      }

      while (v43 != v63);
      v43 = __p;
    }

    if (v43)
    {
      v63 = v43;
      operator delete(v43);
    }
  }

  else
  {
    v48 = objc_msgSend_columnRowUIDMap(v12, v17, v18, v19, v20);
    objc_msgSend_uidRange(self, v49, v50, v51, v52);
    v47 = objc_msgSend_cellRegionForUIDRange_(v48, v53, &__p, v54, v55);
    if (v64)
    {
      v65 = v64;
      operator delete(v64);
    }

    if (__p)
    {
      v63 = __p;
      operator delete(__p);
    }
  }

  v56 = objc_msgSend_translator(v7, v38, v39, v40, v41);
  v60 = objc_msgSend_viewCellRegionForBaseCellRegion_(v56, v57, v47, v58, v59);

  return v60;
}

- (BOOL)isValidReference
{
  objc_msgSend_baseRangeRefs(self, a2, v2, v3, v4);
  v10 = __p;
  if (__p == v19)
  {
    IsValidIncludingSheet = 1;
    if (!__p)
    {
      return IsValidIncludingSheet;
    }

    goto LABEL_7;
  }

  do
  {
    v11 = objc_msgSend_calcEngine(self, v6, v7, v8, v9);
    IsValidIncludingSheet = objc_msgSend_referenceIsValidIncludingSheet_(v11, v12, v10, v13, v14);

    v10 += 32;
    if (v10 == v19)
    {
      v16 = 0;
    }

    else
    {
      v16 = IsValidIncludingSheet;
    }
  }

  while ((v16 & 1) != 0);
  v10 = __p;
  if (__p)
  {
LABEL_7:
    operator delete(v10);
  }

  return IsValidIncludingSheet;
}

- (BOOL)spansAllColumns
{
  if (self->_lastKnownTractRef)
  {
    lastKnownTractRef = self->_lastKnownTractRef;

    return objc_msgSend_spansAllColumns(lastKnownTractRef, a2, v2, v3, v4);
  }

  else
  {
    objc_msgSend_uidRange(self, a2, v2, v3, v4);
    v8 = v10;
    v9 = v11 - v10 == 16 && !*v10 && v10[1] == 0;
    if (__p)
    {
      operator delete(__p);
      v8 = v10;
    }

    if (v8)
    {
      operator delete(v8);
    }

    return v9;
  }
}

- (BOOL)spansAllRows
{
  if (self->_lastKnownTractRef)
  {
    lastKnownTractRef = self->_lastKnownTractRef;

    return objc_msgSend_spansAllRows(lastKnownTractRef, a2, v2, v3, v4);
  }

  objc_msgSend_uidRange(self, a2, v2, v3, v4);
  if (v11 - v10 == 16)
  {
    if (*v10)
    {
      v8 = 0;
    }

    else
    {
      v8 = v10[1] == 0;
    }
  }

  else
  {
    v8 = 0;
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  operator delete(v10);
LABEL_12:
  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

- (id)uidTractListWithPurpose:(unsigned __int8)purpose
{
  purposeCopy = purpose;
  if (objc_msgSend_isValid(self, a2, purpose, v3, v4))
  {
    objc_msgSend_uidRange(self, v7, v8, v9, v10);
    if (__p)
    {
      v38 = __p;
      operator delete(__p);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    v11 = objc_opt_new();
    v12 = [TSCEUndoTract alloc];
    objc_msgSend_uidRange(self, v13, v14, v15, v16);
    objc_msgSend_uidRange(self, v17, v18, v19, v20);
    v25 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v12, v21, v32, v31, purposeCopy);
    if (v31[0])
    {
      v31[1] = v31[0];
      operator delete(v31[0]);
    }

    if (v30)
    {
      operator delete(v30);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    if (v32[0])
    {
      v32[1] = v32[0];
      operator delete(v32[0]);
    }

    objc_msgSend_appendUidTract_(v11, v22, v25, v23, v24);
    objc_msgSend_setPreserveFlags_(v11, v26, self->_basePreserveFlags, v27, v28);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)area
{
  if (self->_viewUidMapper && self->_lastKnownTractRef)
  {
    v6 = objc_msgSend_numberOfColumns(self, a2, v2, v3, v4);
    return objc_msgSend_numberOfRows(self, v7, v8, v9, v10) * v6;
  }

  else
  {
    objc_msgSend_uidRange(self, a2, v2, v3, v4);
    v12 = __p;
    v13 = (v17 - __p) >> 4;
    v14 = (v19 - v18) >> 4;
    if (v18)
    {
      v19 = v18;
      operator delete(v18);
      v12 = __p;
    }

    v11 = v14 * v13;
    if (v12)
    {
      v17 = v12;
      operator delete(v12);
    }
  }

  return v11;
}

- (unint64_t)numberOfColumns
{
  if (self->_viewUidMapper && self->_lastKnownTractRef)
  {
    v5 = objc_msgSend_columns(self->_lastKnownTractRef, a2, v2, v3, v4);

    return TSUIndexSet::count(v5);
  }

  else
  {
    objc_msgSend_uidRange(self, a2, v2, v3, v4);
    v7 = v9;
    v8 = (v10 - v9) >> 4;
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
      v7 = v9;
    }

    if (v7)
    {
      v10 = v7;
      operator delete(v7);
    }

    return v8;
  }
}

- (unint64_t)numberOfRows
{
  if (self->_viewUidMapper && self->_lastKnownTractRef)
  {
    v5 = objc_msgSend_rows(self->_lastKnownTractRef, a2, v2, v3, v4);

    return TSUIndexSet::count(v5);
  }

  else
  {
    objc_msgSend_uidRange(self, a2, v2, v3, v4);
    if (v8)
    {
      operator delete(v8);
    }

    if (__p)
    {
      operator delete(__p);
    }

    return (v9 - v8) >> 4;
  }
}

- (TSKUIDStruct)singleReferencedColumnUid
{
  if (objc_msgSend_numberOfColumns(self, a2, v2, v3, v4) == 1)
  {
    objc_msgSend_uidRange(self, v6, v7, v8, v9);
    v10 = v15;
    v12 = *v15;
    v11 = *(v15 + 1);
    if (!__p || (v18 = __p, operator delete(__p), (v10 = v15) != 0))
    {
      v16 = v10;
      operator delete(v10);
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v13 = v12;
  v14 = v11;
  result._upper = v14;
  result._lower = v13;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@<%p> base:", v6, v7, v4, self);
}

- (TSCECalculationEngine)calcEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  return WeakRetained;
}

- (TSKUIDStruct)tableUID
{
  upper = self->_tableUID._upper;
  lower = self->_tableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 1) = 0u;
  return self;
}

@end