@interface TSCEPartialResultTree
- (TSCEPartialResult)root;
- (TSCEPartialResultTree)init;
- (id).cxx_construct;
- (id)lookupSymbol:(unsigned int)symbol;
- (unsigned)currentThunkOffset;
- (void)addPartialResult:(id)result;
- (void)addSymbol:(unsigned int)symbol mappedToIdentifier:(id)identifier;
- (void)popThunkOffset;
- (void)pushThunkOffset:(unsigned int)offset;
@end

@implementation TSCEPartialResultTree

- (TSCEPartialResultTree)init
{
  v3.receiver = self;
  v3.super_class = TSCEPartialResultTree;
  return [(TSCEPartialResultTree *)&v3 init];
}

- (void)addSymbol:(unsigned int)symbol mappedToIdentifier:(id)identifier
{
  symbolCopy = symbol;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v9 = &symbolCopy;
    v7 = sub_2212E351C(&self->_symbolLookup.__table_.__bucket_list_.__ptr_, &symbolCopy);
    objc_storeStrong(v7 + 3, identifier);
  }
}

- (id)lookupSymbol:(unsigned int)symbol
{
  symbolCopy = symbol;
  v3 = sub_2211DC534(&self->_symbolLookup.__table_.__bucket_list_.__ptr_, &symbolCopy);
  if (v3)
  {
    v3 = v3[3];
  }

  return v3;
}

- (TSCEPartialResult)root
{
  begin = self->_resultStack.__begin_;
  var0 = self->_resultStack.var0;
  if (begin == var0)
  {
    v18 = 0;
  }

  else
  {
    if (var0 - begin != 8)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEPartialResultTree root]", v2, v3);
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEPartialResultTree.mm", v10, v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 163, 0, "Should be down to a single node here if everything is working right");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
      var0 = self->_resultStack.var0;
    }

    v18 = *(var0 - 1);
  }

  return v18;
}

- (void)pushThunkOffset:(unsigned int)offset
{
  end = self->_thunkOffsets.__end_;
  cap = self->_thunkOffsets.__cap_;
  if (end >= cap)
  {
    begin = self->_thunkOffsets.__begin_;
    v9 = end - begin;
    v10 = end - begin;
    v11 = v10 + 1;
    if ((v10 + 1) >> 62)
    {
      sub_22107C148();
    }

    v12 = cap - begin;
    if (v12 >> 1 > v11)
    {
      v11 = v12 >> 1;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFFCLL;
    v14 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    if (v14)
    {
      sub_2210C836C(&self->_thunkOffsets, v14);
    }

    v15 = end - begin;
    v16 = (4 * v10);
    v17 = (4 * v10 - 4 * v15);
    *v16 = offset;
    v7 = v16 + 1;
    memcpy(v17, begin, v9);
    v18 = self->_thunkOffsets.__begin_;
    self->_thunkOffsets.__begin_ = v17;
    self->_thunkOffsets.__end_ = v7;
    self->_thunkOffsets.__cap_ = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *end = offset;
    v7 = end + 1;
  }

  self->_thunkOffsets.__end_ = v7;
}

- (void)popThunkOffset
{
  begin = self->_thunkOffsets.__begin_;
  end = self->_thunkOffsets.__end_;
  if (begin == end)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEPartialResultTree popThunkOffset]", v2, v3);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEPartialResultTree.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 172, 0, "Cannot pop thunk offset - stack is empty");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
    begin = self->_thunkOffsets.__begin_;
    end = self->_thunkOffsets.__end_;
  }

  if (begin != end)
  {
    self->_thunkOffsets.__end_ = end - 1;
  }
}

- (unsigned)currentThunkOffset
{
  end = self->_thunkOffsets.__end_;
  if (self->_thunkOffsets.__begin_ == end)
  {
    return 0;
  }

  else
  {
    return *(end - 1);
  }
}

- (void)addPartialResult:(id)result
{
  resultCopy = result;
  v73 = resultCopy;
  v9 = objc_msgSend_currentThunkOffset(self, v5, v6, v7, v8);
  if (resultCopy)
  {
    v14 = v9;
    v15 = objc_msgSend_offset(resultCopy, v10, v11, v12, v13);
    objc_msgSend_setOffset_(resultCopy, v16, (v15 + v14), v17, v18);
  }

  else
  {
    v23 = [TSCEPartialResult alloc];
    v28 = objc_msgSend_nilValue(TSCENilValue, v24, v25, v26, v27);
    v73 = objc_msgSend_initWithValue_(v23, v29, v28, v30, v31);

    resultCopy = v73;
  }

  v35 = objc_msgSend_numArgs(resultCopy, v19, v20, v21, v22);
  v36 = v35;
  if (v35 > (self->_resultStack.var0 - self->_resultStack.__begin_))
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSCEPartialResultTree addPartialResult:]", v33, v34);
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEPartialResultTree.mm", v40, v41);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v43, v38, v42, 201, 0, "Error, insufficient children to process node: %lu vs %lu needed", self->_resultStack.var0 - self->_resultStack.__begin_, v35);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
  }

  if (v35 && v35 <= (self->_resultStack.var0 - self->_resultStack.__begin_))
  {
    v48 = objc_opt_new();
    var0 = self->_resultStack.var0;
    v50 = &var0[-v36];
    if (var0 != v50)
    {
      v72 = var0 - &self->_resultStack.__begin_[v36];
      do
      {
        v54 = *v50;
        if (v54)
        {
          objc_msgSend_addObject_(v48, v51, v54, v52, v53);
          objc_msgSend_setParent_(v54, v55, resultCopy, v56, v57);
        }

        else
        {
          v58 = MEMORY[0x277D81150];
          v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "[TSCEPartialResultTree addPartialResult:]", v52, v53);
          v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEPartialResultTree.mm", v61, v62);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v64, v59, v63, 210, 0, "invalid nil value for '%{public}s'", "child");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67, v68);
        }

        ++v50;
        var0 = self->_resultStack.var0;
      }

      while (v50 != var0);
      v50 = (self->_resultStack.__begin_ + v72);
    }

    sub_221165C5C(&self->_resultStack, v50, var0);
    objc_msgSend_setChildren_(resultCopy, v69, v48, v70, v71);
  }

  sub_2212E2EB8(&self->_resultStack.__begin_, &v73);
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 16) = 1065353216;
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 9) = 0;
  return self;
}

@end