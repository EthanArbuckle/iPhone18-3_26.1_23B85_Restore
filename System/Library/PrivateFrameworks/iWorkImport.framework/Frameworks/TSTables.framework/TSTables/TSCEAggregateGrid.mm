@interface TSCEAggregateGrid
- (TSCEAggregateGrid)initWithGrids:(const void *)grids;
- (char)deepType:(id)type outError:(id *)error;
- (id).cxx_construct;
- (id)asValueGrid:(id)grid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deepResolveInPlace:(id)place;
- (id)valueAtGridCoord:(const TSCEGridCoord *)coord accessContext:(TSCEGridAccessContext *)context;
- (id)valueAtIndex:(unint64_t)index accessContext:(TSCEGridAccessContext *)context;
- (void)dealloc;
@end

@implementation TSCEAggregateGrid

- (TSCEAggregateGrid)initWithGrids:(const void *)grids
{
  v36.receiver = self;
  v36.super_class = TSCEAggregateGrid;
  v4 = [(TSCEAbstractGrid *)&v36 init];
  v5 = v4;
  if (v4)
  {
    p_grids = &v4->_grids;
    if (&v4->_grids != grids)
    {
      sub_22116CF34(&v4->_grids, *grids, *(grids + 1), (*(grids + 1) - *grids) >> 3);
    }

    v5->_count = 0;
    v5->_lastReturnedIndex = 0x7FFFFFFFFFFFFFFFLL;
    v5->_lastReturnedArgIndex = 0x7FFFFFFFFFFFFFFFLL;
    v5->_lastReturnedSubindex = 0x7FFFFFFFFFFFFFFFLL;
    begin = p_grids->__begin_;
    var0 = v5->_grids.var0;
    v9 = var0 - p_grids->__begin_;
    v10 = malloc_type_malloc(v9, 0x100004000313F17uLL);
    v5->_argumentCounts = v10;
    if (var0 != begin && v10 == 0)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCEAggregateGrid initWithGrids:]", v12, v13);
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAggregateGrid.mm", v27, v28);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 44, 0, "failed to allocate memory");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
      v23 = 0;
      goto LABEL_15;
    }

    if (var0 != begin)
    {
      v15 = 0;
      if ((v9 >> 3) <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v9 >> 3;
      }

      do
      {
        v17 = p_grids->__begin_[v15];
        v22 = objc_msgSend_count(v17, v18, v19, v20, v21);
        v5->_argumentCounts[v15] = v22;
        v5->_count += v22;

        ++v15;
      }

      while (v16 != v15);
    }
  }

  v23 = v5;
LABEL_15:

  return v23;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCEAggregateGrid alloc];
  result = objc_msgSend_initWithGrids_(v4, v5, &self->_grids, v6, v7);
  *(result + 6) = self->_lastReturnedIndex;
  *(result + 7) = self->_lastReturnedArgIndex;
  *(result + 8) = self->_lastReturnedSubindex;
  return result;
}

- (void)dealloc
{
  free(self->_argumentCounts);
  v3.receiver = self;
  v3.super_class = TSCEAggregateGrid;
  [(TSCEAggregateGrid *)&v3 dealloc];
}

- (id)asValueGrid:(id)grid
{
  gridCopy = grid;
  v5 = objc_opt_new();
  v6 = gridCopy;
  v20[0] = v6;
  v20[1] = 0;
  v21 = 0;
  v22[0] = 0xFFFFFFFFLL;
  *(v22 + 7) = 0;
  v23 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v24 = 0;
  v25 = 0;
  v13 = objc_msgSend_count(self, v7, v8, v9, v10);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = objc_msgSend_valueAtIndex_accessContext_(self, v11, i, v20, v12);
      v19[0] = 0;
      v19[1] = i;
      objc_msgSend_setValue_atCoord_(v5, v16, v15, v19, v17);
    }
  }

  return v5;
}

- (id)deepResolveInPlace:(id)place
{
  placeCopy = place;
  begin = self->_grids.__begin_;
  var0 = self->_grids.var0;
  while (begin != var0)
  {
    v7 = *begin;
    v11 = objc_msgSend_deepResolveInPlace_(v7, v8, placeCopy, v9, v10);

    ++begin;
  }

  return self;
}

- (id)valueAtGridCoord:(const TSCEGridCoord *)coord accessContext:(TSCEGridAccessContext *)context
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAggregateGrid valueAtGridCoord:accessContext:]", context, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAggregateGrid.mm", v8, v9);
  v11 = objc_opt_class();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v12, v6, v10, 106, 0, "2D array access not implemented for class %@", v11);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);

  return objc_msgSend_nilValue(TSCENilValue, v17, v18, v19, v20);
}

- (id)valueAtIndex:(unint64_t)index accessContext:(TSCEGridAccessContext *)context
{
  begin = self->_grids.__begin_;
  lastReturnedIndex = self->_lastReturnedIndex;
  if (lastReturnedIndex != 0x7FFFFFFFFFFFFFFFLL && lastReturnedIndex + 1 == index)
  {
    lastReturnedSubindex = self->_lastReturnedSubindex;
    argumentCounts = self->_argumentCounts;
    if (lastReturnedSubindex != argumentCounts[self->_lastReturnedArgIndex] - 1)
    {
      indexCopy2 = lastReturnedSubindex + 1;
LABEL_23:
      self->_lastReturnedSubindex = indexCopy2;
      goto LABEL_24;
    }

    v16 = self->_grids.var0 - begin;
    self->_lastReturnedSubindex = 0;
    v17 = self->_lastReturnedArgIndex + 1;
    do
    {
      v18 = v17;
      self->_lastReturnedArgIndex = v17;
      if (v17 >= v16)
      {
        break;
      }
    }

    while (!argumentCounts[v17++]);
    if (v16 != v18)
    {
      goto LABEL_24;
    }

    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAggregateGrid valueAtIndex:accessContext:]", context, v4);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAggregateGrid.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 125, 0, "ArgumentAccessor consistency violation");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    v35 = objc_msgSend_functionName(context->var1, v31, v32, v33, v34);
    v39 = objc_msgSend_argumentErrorForFunctionName_(TSCEError, v36, v35, v37, v38);
    v43 = objc_msgSend_errorValue_(TSCEErrorValue, v40, v39, v41, v42);
  }

  else
  {
    if (lastReturnedIndex == 0x7FFFFFFFFFFFFFFFLL || lastReturnedIndex - 1 != index)
    {
      v10 = self->_argumentCounts;
      v11 = *v10;
      if (*v10 <= index)
      {
        v45 = 0;
        v46 = v10 + 1;
        indexCopy2 = index;
        do
        {
          indexCopy2 -= v11;
          v12 = v45 + 1;
          v11 = v46[v45++];
        }

        while (indexCopy2 >= v11);
      }

      else
      {
        v12 = 0;
        indexCopy2 = index;
      }

      self->_lastReturnedArgIndex = v12;
      goto LABEL_23;
    }

    v44 = self->_lastReturnedSubindex;
    if (v44)
    {
      self->_lastReturnedSubindex = v44 - 1;
LABEL_24:
      self->_lastReturnedIndex = index;
      v47 = objc_msgSend_valueAtIndex_accessContext_(begin[self->_lastReturnedArgIndex], a2, self->_lastReturnedSubindex, context, v4);
      goto LABEL_25;
    }

    v49 = self->_lastReturnedArgIndex - 1;
    while (1)
    {
      self->_lastReturnedArgIndex = v49;
      if (v49 + 1 < 1)
      {
        break;
      }

      v50 = self->_argumentCounts[v49--];
      if (v50)
      {
        indexCopy2 = v50 - 1;
        goto LABEL_23;
      }
    }

    v51 = MEMORY[0x277D81150];
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAggregateGrid valueAtIndex:accessContext:]", context, v4);
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAggregateGrid.mm", v54, v55);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v57, v52, v56, 140, 0, "ArgumentAccessor consistency violation");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61);
    v35 = objc_msgSend_functionName(context->var1, v62, v63, v64, v65);
    v39 = objc_msgSend_argumentErrorForFunctionName_(TSCEError, v66, v35, v67, v68);
    v43 = objc_msgSend_errorValue_(TSCEErrorValue, v69, v39, v70, v71);
  }

  v47 = v43;

LABEL_25:

  return v47;
}

- (char)deepType:(id)type outError:(id *)error
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAggregateGrid deepType:outError:]", error, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAggregateGrid.mm", v8, v9);
  v11 = objc_opt_class();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v12, v6, v10, 176, 0, "Shouldn't call deepType on an %@ class", v11);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  return 9;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 1) = 0;
  return self;
}

@end