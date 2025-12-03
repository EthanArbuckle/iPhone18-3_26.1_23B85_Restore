@interface TSTDeferredInsertStack
- (const)top;
- (id).cxx_construct;
- (void)pop;
- (void)push:(const TSTExprNodeInsertWork *)push;
@end

@implementation TSTDeferredInsertStack

- (void)push:(const TSTExprNodeInsertWork *)push
{
  end = self->_deferredWorkStack.__end_;
  if (end >= self->_deferredWorkStack.__cap_)
  {
    v8 = sub_22124BEDC(&self->_deferredWorkStack, push);
  }

  else
  {
    v6 = push->var0;
    var1 = push->var1;
    end->var0 = v6;
    end->var1 = var1;
    v8 = end + 1;
  }

  self->_deferredWorkStack.__end_ = v8;
}

- (const)top
{
  end = self->_deferredWorkStack.__end_;
  if (self->_deferredWorkStack.__begin_ == end)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTDeferredInsertStack top]", v2, v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionNode.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 54, 0, "Empty stack can't use top");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
    end = self->_deferredWorkStack.__end_;
  }

  return end - 1;
}

- (void)pop
{
  begin = self->_deferredWorkStack.__begin_;
  end = self->_deferredWorkStack.__end_;
  if (begin == end)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTDeferredInsertStack pop]", v2, v3);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionNode.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 59, 0, "Empty stack can't use pop");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
    begin = self->_deferredWorkStack.__begin_;
    end = self->_deferredWorkStack.__end_;
  }

  if (begin != end)
  {

    self->_deferredWorkStack.__end_ = end - 1;
  }
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end