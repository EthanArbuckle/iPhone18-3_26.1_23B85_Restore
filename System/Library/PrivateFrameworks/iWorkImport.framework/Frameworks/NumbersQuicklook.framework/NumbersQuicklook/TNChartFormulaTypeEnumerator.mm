@interface TNChartFormulaTypeEnumerator
- (TNChartFormulaTypeEnumerator)initWithChartFormulaStorage:(id)storage;
- (unint64_t)nextFormulaType;
@end

@implementation TNChartFormulaTypeEnumerator

- (TNChartFormulaTypeEnumerator)initWithChartFormulaStorage:(id)storage
{
  storageCopy = storage;
  v17.receiver = self;
  v17.super_class = TNChartFormulaTypeEnumerator;
  v7 = [(TNChartFormulaTypeEnumerator *)&v17 init];
  if (v7)
  {
    v8 = objc_msgSend_count(storageCopy, v5, v6);
    v7->_count = v8;
    if (v8)
    {
      v11 = objc_msgSend_allKeys(storageCopy[1], v9, v10);
      v14 = objc_msgSend_copy(v11, v12, v13);
      keys = v7->_keys;
      v7->_keys = v14;
    }
  }

  return v7;
}

- (unint64_t)nextFormulaType
{
  index = self->_index;
  if (index >= self->_count)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  keys = self->_keys;
  self->_index = index + 1;
  v4 = objc_msgSend_objectAtIndexedSubscript_(keys, a2, index);
  v7 = objc_msgSend_integerValue(v4, v5, v6);

  return v7;
}

@end