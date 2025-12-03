@interface TSTStrokeLayerStack
+ (id)defaultsOnlyStrokeLayerStack;
+ (id)strokeLayerStack;
- ($BCE0BE3B16443606C8215309ED45E274)stackReferences;
- (BOOL)hasSpillStrokeInRange:(TSTSimpleRange)range;
- (BOOL)isEligibleForDefaultsOnlyReplacement;
- (BOOL)replaceCustomStrokeLayerWith:(id)with;
- (BOOL)replaceDefaultStrokeLayerWith:(id)with;
- (id)replacementWithDefaults;
- (unint64_t)count;
- (vector<TSTStrokeLayer)p_strokeLayerVector;
- (void)insertClearedStrokeAtRange:(TSTSimpleRange)range;
- (void)insertDynamicStroke:(id)stroke strokeOrder:(int)order atRange:(TSTSimpleRange)range;
- (void)insertSpillStroke:(id)stroke atRange:(TSTSimpleRange)range;
- (void)invalidateClearedStrokesInRange:(TSTSimpleRange)range;
- (void)invalidateDynamicStrokesInRange:(TSTSimpleRange)range;
@end

@implementation TSTStrokeLayerStack

+ (id)strokeLayerStack
{
  v2 = objc_alloc_init(TSTStrokeLayerStack);

  return v2;
}

+ (id)defaultsOnlyStrokeLayerStack
{
  v2 = objc_alloc_init(TSTStrokeLayerStack);
  v2->_isDefaultsOnly = 1;

  return v2;
}

- (id)replacementWithDefaults
{
  v3 = objc_alloc_init(TSTStrokeLayerStack);
  objc_msgSend_lockForWrite(v3, v4, v5, v6, v7);
  v12 = objc_msgSend_defaultStrokeLayer(self, v8, v9, v10, v11);
  objc_msgSend_replaceDefaultStrokeLayerWith_(v3, v13, v12, v14, v15);

  objc_msgSend_unlock(v3, v16, v17, v18, v19);

  return v3;
}

- (BOOL)isEligibleForDefaultsOnlyReplacement
{
  customStrokeLayer = self->_customStrokeLayer;
  if (!customStrokeLayer || (isEmpty = objc_msgSend_isEmpty(customStrokeLayer, a2, v2, v3, v4)) != 0)
  {
    clearedStrokeLayer = self->_clearedStrokeLayer;
    if (!clearedStrokeLayer || (isEmpty = objc_msgSend_isEmpty(clearedStrokeLayer, a2, v2, v3, v4)) != 0)
    {
      dynamicStrokeLayer = self->_dynamicStrokeLayer;
      if (!dynamicStrokeLayer || (isEmpty = objc_msgSend_isEmpty(dynamicStrokeLayer, a2, v2, v3, v4)) != 0)
      {
        spillStrokeLayer = self->_spillStrokeLayer;
        if (spillStrokeLayer)
        {

          LOBYTE(isEmpty) = objc_msgSend_isEmpty(spillStrokeLayer, a2, v2, v3, v4);
        }

        else
        {
          LOBYTE(isEmpty) = 1;
        }
      }
    }
  }

  return isEmpty;
}

- (void)insertClearedStrokeAtRange:(TSTSimpleRange)range
{
  if (self->_isDefaultsOnly)
  {
    v4 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTStrokeLayerStack insertClearedStrokeAtRange:]", range.length, v3);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayerStack.mm", v6, v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v38, v8, 637, 0, "You can't add non-default strokes to a DefaultsOnly TSTStrokeLayerStack.");

    v14 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v14, v10, v11, v12, v13);
  }

  else
  {
    length = range.length;
    origin = range.origin;
    v18 = objc_msgSend_clearedStrokeLayer(self, a2, range.origin, range.length, v3);

    if (v18)
    {
      v39 = objc_msgSend_clearedStrokeLayer(self, v19, v20, v21, v22);
      objc_msgSend_invalidateRange_(v39, v23, origin, length, v24);
    }

    else
    {
      v39 = objc_msgSend_strokeLayer(TSTMutableStrokeLayer, v19, v20, v21, v22);
      objc_msgSend_setClearedStrokeLayer_(self, v25, v39, v26, v27);
    }

    v40 = objc_msgSend_clearedStrokeLayer(self, v28, v29, v30, v31);
    v36 = objc_msgSend_mergeRangeEmptyStroke(MEMORY[0x277D803C0], v32, v33, v34, v35);
    objc_msgSend_setStroke_inRange_order_(v40, v37, v36, origin, length, 0);
  }
}

- (void)insertDynamicStroke:(id)stroke strokeOrder:(int)order atRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  v7 = *&order;
  strokeCopy = stroke;
  v42 = strokeCopy;
  if (self->_isDefaultsOnly)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTStrokeLayerStack insertDynamicStroke:strokeOrder:atRange:]", v12, v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayerStack.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 654, 0, "You can't add non-default strokes to a DefaultsOnly TSTStrokeLayerStack.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  else
  {
    if (objc_msgSend_empty(strokeCopy, v10, v11, v12, v13))
    {
      objc_msgSend_width(v42, v25, v26, v27, v28);
      if (v29 > 0.0)
      {
        v30 = objc_msgSend_zeroWidthEmptyStroke(MEMORY[0x277D803C0], v25, v26, v27, v28);

        v42 = v30;
      }
    }

    v31 = objc_msgSend_dynamicStrokeLayer(self, v25, v26, v27, v28);

    if (!v31)
    {
      v36 = objc_msgSend_strokeLayer(TSTMutableStrokeLayer, v32, v33, v34, v35);
      objc_msgSend_setDynamicStrokeLayer_(self, v37, v36, v38, v39);
    }

    v40 = objc_msgSend_dynamicStrokeLayer(self, v32, v33, v34, v35);
    objc_msgSend_setStroke_inRange_order_(v40, v41, v42, origin, length, v7);
  }
}

- (void)insertSpillStroke:(id)stroke atRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  strokeCopy = stroke;
  if (self->_isDefaultsOnly)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTStrokeLayerStack insertSpillStroke:atRange:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayerStack.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 672, 0, "You can't add non-default strokes to a Defaults Only TSTStrokeLayerStack.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  else
  {
    v22 = objc_msgSend_spillStrokeLayer(self, v7, v8, v9, v10);

    if (!v22)
    {
      v27 = objc_msgSend_strokeLayer(TSTMutableStrokeLayer, v23, v24, v25, v26);
      objc_msgSend_setSpillStrokeLayer_(self, v28, v27, v29, v30);
    }

    v31 = objc_msgSend_spillStrokeLayer(self, v23, v24, v25, v26);
    objc_msgSend_setStroke_inRange_order_(v31, v32, strokeCopy, origin, length, 0);
  }
}

- (BOOL)hasSpillStrokeInRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  v7 = objc_msgSend_spillStrokeLayer(self, a2, range.origin, range.length, v3);
  if (!v7)
  {
    return 0;
  }

  v12 = v7;
  v13 = objc_msgSend_spillStrokeLayer(self, v8, v9, v10, v11);
  isEmpty = objc_msgSend_isEmpty(v13, v14, v15, v16, v17);

  if (isEmpty)
  {
    return 0;
  }

  v24 = objc_msgSend_spillStrokeLayer(self, v19, v20, v21, v22);
  hasStrokeInRange = objc_msgSend_hasStrokeInRange_(v24, v25, origin, length, v26);

  return hasStrokeInRange;
}

- (BOOL)replaceDefaultStrokeLayerWith:(id)with
{
  withCopy = with;
  v9 = objc_msgSend_defaultStrokeLayer(self, v5, v6, v7, v8);

  if (v9 != withCopy)
  {
    objc_msgSend_setDefaultStrokeLayer_(self, v10, withCopy, v11, v12);
  }

  return v9 != withCopy;
}

- (BOOL)replaceCustomStrokeLayerWith:(id)with
{
  withCopy = with;
  if (objc_msgSend_isEmpty(withCopy, v5, v6, v7, v8))
  {

    withCopy = 0;
  }

  else if (withCopy && self->_isDefaultsOnly)
  {
    TSUSetCrashReporterInfo();
    v18 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTStrokeLayerStack replaceCustomStrokeLayerWith:]", v20, v21, "[TSTStrokeLayerStack replaceCustomStrokeLayerWith:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayerStack.mm", 711);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayerStack.mm", v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v27, v22, v26, 711, 1, "You can't add non-default strokes to a DefaultsOnly TSTStrokeLayerStack.");

    TSUCrashBreakpoint();
    abort();
  }

  v13 = objc_msgSend_customStrokeLayer(self, v9, v10, v11, v12);

  if (v13 != withCopy)
  {
    objc_msgSend_setCustomStrokeLayer_(self, v14, withCopy, v15, v16);
  }

  return v13 != withCopy;
}

- (void)invalidateClearedStrokesInRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  v8 = objc_msgSend_clearedStrokeLayer(self, a2, range.origin, range.length, v3);
  objc_msgSend_invalidateRange_(v8, v6, origin, length, v7);
}

- (void)invalidateDynamicStrokesInRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  v8 = objc_msgSend_dynamicStrokeLayer(self, a2, range.origin, range.length, v3);
  objc_msgSend_invalidateRange_(v8, v6, origin, length, v7);
}

- ($BCE0BE3B16443606C8215309ED45E274)stackReferences
{
  var3 = self[5].var3;
  var4 = self[5].var4;
  retstr->var0 = self[5].var2;
  retstr->var1 = var3;
  var0 = self[6].var0;
  retstr->var2 = var4;
  retstr->var3 = var0;
  retstr->var4 = self[6].var1;
  return self;
}

- (vector<TSTStrokeLayer)p_strokeLayerVector
{
  selfCopy = self;
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  if (self[9].var0)
  {
    sub_221281314(retstr, &self[9].var0);
  }

  if (selfCopy[9].var1)
  {
    sub_221281314(retstr, &selfCopy[9].var1);
  }

  if (selfCopy[9].var2)
  {
    var2 = selfCopy[9].var2;
    sub_221281314(retstr, &var2);
  }

  if (selfCopy[10].var0)
  {
    var2 = selfCopy[10].var0;
    sub_221281314(retstr, &var2);
  }

  if (selfCopy[10].var1)
  {
    var2 = selfCopy[10].var1;
    sub_221281314(retstr, &var2);
  }

  return self;
}

- (unint64_t)count
{
  v6 = objc_msgSend_defaultStrokeLayer(self, a2, v2, v3, v4);
  v11 = objc_msgSend_customStrokeLayer(self, v7, v8, v9, v10);
  v16 = objc_msgSend_clearedStrokeLayer(self, v12, v13, v14, v15);
  v21 = objc_msgSend_dynamicStrokeLayer(self, v17, v18, v19, v20);
  v26 = objc_msgSend_spillStrokeLayer(self, v22, v23, v24, v25);
  v27 = v11 != 0;
  if (v6)
  {
    ++v27;
  }

  if (v16)
  {
    ++v27;
  }

  if (v21)
  {
    ++v27;
  }

  if (v26)
  {
    v28 = v27 + 1;
  }

  else
  {
    v28 = v27;
  }

  return v28;
}

@end