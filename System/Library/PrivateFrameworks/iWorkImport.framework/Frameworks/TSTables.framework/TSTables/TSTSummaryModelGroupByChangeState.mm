@interface TSTSummaryModelGroupByChangeState
- (TSTSummaryModelGroupByChangeState)initWithMessage:(const void *)a3 unarchiver:(id)a4;
- (id).cxx_construct;
- (void)saveToMessage:(void *)a3 archiver:(id)a4;
@end

@implementation TSTSummaryModelGroupByChangeState

- (void)saveToMessage:(void *)a3 archiver:(id)a4
{
  v23 = a4;
  begin = self->_summaryRowHeightList.__begin_;
  end = self->_summaryRowHeightList.__end_;
  if (begin != end)
  {
    v10 = *(a3 + 6);
    do
    {
      v11 = *begin;
      if (v10 == *(a3 + 7))
      {
        sub_2212A3D38(a3 + 6, v10 + 1);
      }

      *(*(a3 + 4) + 8 * v10++) = v11;
      *(a3 + 6) = v10;
      ++begin;
    }

    while (begin != end);
  }

  v12 = self->_labelRowHeightList.__begin_;
  v13 = self->_labelRowHeightList.__end_;
  if (v12 != v13)
  {
    v14 = *(a3 + 10);
    do
    {
      v15 = *v12;
      if (v14 == *(a3 + 11))
      {
        sub_2212A3D38(a3 + 10, v14 + 1);
      }

      *(*(a3 + 6) + 8 * v14++) = v15;
      *(a3 + 10) = v14;
      ++v12;
    }

    while (v12 != v13);
  }

  v16 = self->_labelRowVisibilityList.__begin_;
  v17 = self->_labelRowVisibilityList.__end_;
  if (v16 != v17)
  {
    v18 = *(a3 + 14);
    do
    {
      v19 = *v16;
      if (v18 == *(a3 + 15))
      {
        sub_2210BBC64(a3 + 14, v18 + 1);
      }

      *(*(a3 + 8) + 4 * v18++) = v19;
      *(a3 + 14) = v18;
      ++v16;
    }

    while (v16 != v17);
  }

  cellMap = self->_cellMap;
  if (cellMap)
  {
    *(a3 + 4) |= 1u;
    v21 = *(a3 + 9);
    if (!v21)
    {
      v22 = *(a3 + 1);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = MEMORY[0x223DA0390](v22);
      *(a3 + 9) = v21;
    }

    objc_msgSend_setStrongReference_message_(v23, v6, cellMap, v21, v7);
  }
}

- (TSTSummaryModelGroupByChangeState)initWithMessage:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = TSTSummaryModelGroupByChangeState;
  v7 = [(TSTSummaryModelGroupByChangeState *)&v16 init];
  v8 = v7;
  if (v7)
  {
    sub_2211576E4(&v7->_summaryRowHeightList.__begin_, *(a3 + 6));
    sub_2212A3F50(&v8->_summaryRowHeightList.__begin_, *(a3 + 4), (*(a3 + 4) + 8 * *(a3 + 6)), *(a3 + 6));
    sub_2211576E4(&v8->_labelRowHeightList.__begin_, *(a3 + 10));
    sub_2212A3F50(&v8->_labelRowHeightList.__begin_, *(a3 + 6), (*(a3 + 6) + 8 * *(a3 + 10)), *(a3 + 10));
    sub_2212A3B14(&v8->_labelRowVisibilityList.__begin_, *(a3 + 14));
    sub_221287820(&v8->_labelRowVisibilityList.__begin_, *(a3 + 8), (*(a3 + 8) + 4 * *(a3 + 14)), *(a3 + 14));
    if (*(a3 + 16))
    {
      v9 = *(a3 + 9);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_2212A3B44;
      v14[3] = &unk_278462918;
      v15 = v8;
      v10 = v6;
      v11 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v10, v12, v9, v11, 0, v14);
    }
  }

  return v8;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 1) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 7) = 0;
  return self;
}

@end