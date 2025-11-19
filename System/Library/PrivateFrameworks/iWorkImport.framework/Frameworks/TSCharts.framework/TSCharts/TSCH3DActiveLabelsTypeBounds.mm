@interface TSCH3DActiveLabelsTypeBounds
- (BOOL)hasAnyCachedBoundsAtIndices:(id)a3;
- (BOOL)hasCachedBoundsAtIndex:(unint64_t)a3;
- (BOOL)resetIndex:(int64_t)a3;
- (BOOL)setActiveType:(int64_t)a3;
- (TSCH3DActiveLabelsTypeBounds)init;
- (id)active;
- (id)arrayAtIndex:(int64_t)a3;
- (void)addBounds:(id)a3;
@end

@implementation TSCH3DActiveLabelsTypeBounds

- (TSCH3DActiveLabelsTypeBounds)init
{
  v15.receiver = self;
  v15.super_class = TSCH3DActiveLabelsTypeBounds;
  v2 = [(TSCH3DActiveLabelsTypeBounds *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCABB0]);
    v8 = objc_msgSend_initWithInteger_(v3, v4, v5, v6, v7, 0x7FFFFFFFFFFFFFFFLL);
    activeType = v2->_activeType;
    v2->_activeType = v8;

    v10 = objc_alloc_init(MEMORY[0x277CCAB58]);
    activeIndices = v2->_activeIndices;
    v2->_activeIndices = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    map = v2->_map;
    v2->_map = v12;
  }

  return v2;
}

- (BOOL)setActiveType:(int64_t)a3
{
  v8 = objc_msgSend_containsIndex_(self->_activeIndices, a2, v3, v4, v5);
  v9 = objc_alloc(MEMORY[0x277CCABB0]);
  v14 = objc_msgSend_initWithInteger_(v9, v10, v11, v12, v13, a3);
  activeType = self->_activeType;
  self->_activeType = v14;

  if ((v8 & 1) == 0)
  {
    objc_msgSend_addIndex_(self->_activeIndices, v16, v17, v18, v19, a3);
  }

  return v8 ^ 1;
}

- (void)addBounds:(id)a3
{
  v13 = a3;
  v8 = objc_msgSend_active(self, v4, v5, v6, v7);
  objc_msgSend_addLabelBounds_(v8, v9, v10, v11, v12, v13);
}

- (id)active
{
  activeType = self->_activeType;
  if (!activeType)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DActiveLabelsTypeBounds active]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 202, 0, "invalid nil value for '%{public}s'", "_activeType");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    activeType = self->_activeType;
  }

  v23 = objc_msgSend_integerValue(activeType, a2, v2, v3, v4);

  return objc_msgSend_arrayAtIndex_(self, v22, v24, v25, v26, v23);
}

- (id)arrayAtIndex:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DActiveLabelsTypeBounds arrayAtIndex:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 207, 0, "invalid index %ld", 0x7FFFFFFFFFFFFFFFLL);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, v3, v4, v5, a3);
  v28 = objc_msgSend_objectForKeyedSubscript_(self->_map, v24, v25, v26, v27, v23);

  if (!v28)
  {
    v33 = objc_alloc_init(TSCH3DCachedLabelBoundsArray);
    objc_msgSend_setObject_forKeyedSubscript_(self->_map, v34, v35, v36, v37, v33, v23);
  }

  v38 = objc_msgSend_objectForKeyedSubscript_(self->_map, v29, v30, v31, v32, v23);

  return v38;
}

- (BOOL)hasCachedBoundsAtIndex:(unint64_t)a3
{
  v7 = objc_msgSend_arrayAtIndex_(self, a2, v3, v4, v5, a3);
  if (!v7)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DActiveLabelsTypeBounds hasCachedBoundsAtIndex:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 217, 0, "invalid nil value for '%{public}s'", "boundsArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  isEmpty = objc_msgSend_isEmpty(v7, v6, v8, v9, v10);

  return isEmpty ^ 1;
}

- (BOOL)hasAnyCachedBoundsAtIndices:(id)a3
{
  v4 = a3;
    ;
  }

  return i != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)resetIndex:(int64_t)a3
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  v10 = objc_msgSend_initWithInteger_(v5, v6, v7, v8, v9, 0x7FFFFFFFFFFFFFFFLL);
  activeType = self->_activeType;
  self->_activeType = v10;

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    hasAnyCachedBoundsAtIndices = objc_msgSend_hasAnyCachedBoundsAtIndices_(self, v12, v13, v14, v15, self->_activeIndices);
    objc_msgSend_removeAllIndexes(self->_activeIndices, v17, v18, v19, v20);
    objc_msgSend_removeAllObjects(self->_map, v21, v22, v23, v24);
    return hasAnyCachedBoundsAtIndices;
  }

  else
  {
    hasCachedBoundsAtIndex = objc_msgSend_hasCachedBoundsAtIndex_(self, v12, v13, v14, v15, a3);
    objc_msgSend_removeIndex_(self->_activeIndices, v27, v28, v29, v30, a3);
    v35 = objc_msgSend_arrayAtIndex_(self, v31, v32, v33, v34, a3);
    objc_msgSend_clear(v35, v36, v37, v38, v39);

    return hasCachedBoundsAtIndex;
  }
}

@end