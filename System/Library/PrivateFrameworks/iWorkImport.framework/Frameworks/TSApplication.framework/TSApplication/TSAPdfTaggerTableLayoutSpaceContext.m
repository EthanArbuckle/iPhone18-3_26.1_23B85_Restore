@interface TSAPdfTaggerTableLayoutSpaceContext
- (TSAPdfTaggerTableLayoutSpaceContext)initWithStateOfTagger:(id)a3 tableLayoutSpace:(id)a4;
- (TSUCellRect)bodyCellRange;
- (_NSRange)bodyRowRange;
- (void)addRow:(unsigned int)a3;
@end

@implementation TSAPdfTaggerTableLayoutSpaceContext

- (TSAPdfTaggerTableLayoutSpaceContext)initWithStateOfTagger:(id)a3 tableLayoutSpace:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = TSAPdfTaggerTableLayoutSpaceContext;
  v8 = [(TSAPdfTaggerContext *)&v24 initWithStateOfTagger:v6];
  if (v8)
  {
    v9 = objc_opt_class();
    v12 = objc_msgSend_topOfContextStackWithExpectedClass_(v6, v10, v9, v11);
    tableChunkContext = v8->_tableChunkContext;
    v8->_tableChunkContext = v12;

    objc_storeStrong(&v8->_tableLayoutSpace, a4);
    v17 = objc_msgSend_tableLayoutSpace(v8, v14, v15, v16);
    v21 = objc_msgSend_layout(v17, v18, v19, v20);

    v8->_bodyCellRange.origin = TSTLayoutGetPartitionBodyCellRange();
    v8->_bodyCellRange.size = v22;
    v8->_currentTableRegion = 0;
    v8->_currentRowIndex = 0x7FFFFFFF;
  }

  return v8;
}

- (_NSRange)bodyRowRange
{
  v7.origin = objc_msgSend_bodyCellRange(self, a2, v2, v3);
  v7.size = v4;
  v5 = TSUCellRect::rows(&v7);
  result.length = v6;
  result.location = v5;
  return result;
}

- (void)addRow:(unsigned int)a3
{
  v4 = *&a3;
  if (objc_msgSend_currentRowIndex(self, a2, *&a3, v3) == 0x7FFFFFFF)
  {
    v9 = v4;
  }

  else
  {
    v10 = objc_msgSend_currentRowIndex(self, v6, v7, v8) < v4;
    v14 = objc_msgSend_currentRowIndex(self, v11, v12, v13);
    v9 = v4;
    sub_2760CB2EC(v10, "Row indices are expect to increase, after %lu got %lu", v15, v16, v17, v18, v19, v20, v14);
  }

  v21 = objc_msgSend_bodyRowRange(self, v6, v7, v8);
  if (v9 >= v21 && v9 - v21 < v22)
  {
    goto LABEL_6;
  }

  if (objc_msgSend_bodyRowRange(self, v22, v23, v24) <= v9)
  {
    v29 = objc_msgSend_bodyRowRange(self, v26, v27, v28);
    if (&v22[v29] <= v9)
    {
LABEL_6:
      objc_msgSend_setCurrentTableRegion_(self, v22, 405, v24);
      goto LABEL_9;
    }

    objc_msgSend_setCurrentTableRegion_(self, v22, 0, v24);
    v33 = objc_msgSend_bodyRowRange(self, v30, v31, v32);
    v35 = v34;
    v36 = MEMORY[0x277CCACA8];
    v39 = sub_2760D2B28(v33, v34, v37, v38);
    v43 = sub_2760D2B28(&v35[v33], v40, v41, v42);
    v46 = objc_msgSend_stringWithFormat_(v36, v44, @"[%@<-%lu->%@"), v45, v39, v35, v43);

    sub_2760CB2EC(0, "Row index %lu cannot be positioned relative to body row range %@", v47, v48, v49, v50, v51, v52, v9);
  }

  else
  {
    objc_msgSend_setCurrentTableRegion_(self, v26, 404, v28);
  }

LABEL_9:

  MEMORY[0x2821F9670](self, sel_setCurrentRowIndex_, v4, v25);
}

- (TSUCellRect)bodyCellRange
{
  p_bodyCellRange = &self->_bodyCellRange;
  origin = self->_bodyCellRange.origin;
  size = p_bodyCellRange->size;
  result.size = size;
  result.origin = origin;
  return result;
}

@end