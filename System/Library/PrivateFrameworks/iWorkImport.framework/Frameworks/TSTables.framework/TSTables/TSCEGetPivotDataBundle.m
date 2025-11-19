@interface TSCEGetPivotDataBundle
- (id).cxx_construct;
- (unint64_t)firstMissingDataField;
- (void)addDataField:(id)a3 withValue:(id)a4;
- (void)enumerateDataKeyValuePairsUsingBlock:(id)a3;
- (void)setMissingDataFieldAtIndex:(unint64_t)a3;
@end

@implementation TSCEGetPivotDataBundle

- (void)addDataField:(id)a3 withValue:(id)a4
{
  v9 = a3;
  v6 = a4;
  v8 = v6;
  if (v9)
  {
    sub_2210C4258(&self->_dataFields.__begin_, &v9);
    sub_221179A54(&self->_dataValues.__begin_, &v8);
    v7 = 0;
    sub_2213F4AD0(&self->_missingGroupingColumn, &v7);
    v6 = v8;
  }
}

- (void)setMissingDataFieldAtIndex:(unint64_t)a3
{
  if (self->_missingGroupingColumn.__size_ > a3)
  {
    *(self->_missingGroupingColumn.__begin_ + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
  }
}

- (unint64_t)firstMissingDataField
{
  size = self->_missingGroupingColumn.__size_;
  v3 = size & 0x3F;
  if (size <= 0x3F && v3 == 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  result = 0;
  v7 = 0;
  begin = self->_missingGroupingColumn.__begin_;
  v9 = &begin[size >> 6];
  while (((*begin >> v7) & 1) == 0)
  {
    ++result;
    begin += v7 == 63;
    if (v7 == 63)
    {
      v7 = 0;
    }

    else
    {
      ++v7;
    }

    if (begin == v9 && v7 == v3)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (void)enumerateDataKeyValuePairsUsingBlock:(id)a3
{
  v7 = a3;
  begin = self->_dataFields.__begin_;
  var0 = self->_dataFields.var0;
  v10 = self->_dataValues.__begin_;
  if (var0 - begin != self->_dataValues.var0 - v10)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSCEGetPivotDataBundle enumerateDataKeyValuePairsUsingBlock:]", v5, v6);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEGetPivotDataBundle.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 62, 0, "Size mismatch in data/value pairs");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    v10 = self->_dataValues.__begin_;
    begin = self->_dataFields.__begin_;
    var0 = self->_dataFields.var0;
  }

  v23 = 0;
  if (begin != var0)
  {
    v22 = 0;
    do
    {
      v7[2](v7, v22, *begin++, *v10, &v23);
      if (begin == self->_dataFields.var0)
      {
        break;
      }

      ++v22;
      ++v10;
    }

    while ((v23 & 1) == 0);
  }
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end