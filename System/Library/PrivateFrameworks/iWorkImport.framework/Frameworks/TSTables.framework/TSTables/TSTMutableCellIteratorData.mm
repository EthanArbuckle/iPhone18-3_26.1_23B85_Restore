@interface TSTMutableCellIteratorData
- (TSTMutableCellIteratorData)init;
- (TSUCellRect)mergeRange;
- (void)reset;
@end

@implementation TSTMutableCellIteratorData

- (TSTMutableCellIteratorData)init
{
  v9.receiver = self;
  v9.super_class = TSTMutableCellIteratorData;
  v2 = [(TSTMutableCellIteratorData *)&v9 init];
  v7 = v2;
  if (v2)
  {
    v2->_cellID = 0x7FFF7FFFFFFFLL;
    v2->_mergeRange = xmmword_2217E0204;
    objc_msgSend_reset(v2, v3, v4, v5, v6);
  }

  return v7;
}

- (void)reset
{
  objc_msgSend_setCell_(self, a2, 0, v2, v3);
  objc_msgSend_setFormulaSpec_(self, v5, 0, v6, v7);
  objc_msgSend_setMergeRange_(self, v8, 0x7FFF7FFFFFFFLL, 0, v9);

  objc_msgSend_setCellID_(self, v10, 0x7FFF7FFFFFFFLL, v11, v12);
}

- (TSUCellRect)mergeRange
{
  size = self->_mergeRange.size;
  origin = self->_mergeRange.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

@end