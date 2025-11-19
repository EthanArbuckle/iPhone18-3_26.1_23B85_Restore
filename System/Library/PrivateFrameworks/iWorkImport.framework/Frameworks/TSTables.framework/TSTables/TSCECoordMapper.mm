@interface TSCECoordMapper
- (RefTypeHolder<TSCECellRef,)baseCellRefForChromeCellRef:()RefTypeHolder<TSCECellRef;
- (RefTypeHolder<TSCECellRef,)baseCellRefForViewCellRef:()RefTypeHolder<TSCECellRef;
- (RefTypeHolder<TSCECellRef,)chromeCellRefForBaseCellRef:()RefTypeHolder<TSCECellRef;
- (RefTypeHolder<TSCECellRef,)chromeCellRefForViewCellRef:()RefTypeHolder<TSCECellRef;
- (RefTypeHolder<TSCECellRef,)viewCellRefForBaseCellRef:()RefTypeHolder<TSCECellRef;
- (RefTypeHolder<TSCECellRef,)viewCellRefForChromeCellRef:()RefTypeHolder<TSCECellRef;
- (RefTypeHolder<TSCERangeRef,)chromeRangeRefForViewRangeRef:()RefTypeHolder<TSCERangeRef;
- (RefTypeHolder<TSCERangeRef,)viewRangeRefForChromeRangeRef:()RefTypeHolder<TSCERangeRef;
- (TSCECoordMapper)initWithTableUID:(const TSKUIDStruct *)a3;
- (TSCECoordMapper)initWithTableUID:(const TSKUIDStruct *)a3 summaryColumns:(id)a4 summaryRows:(id)a5 labelRows:(id)a6;
- (TSUChromeCellCoord)chromeCellCoordForBaseCellCoord:(TSUModelCellCoord)a3;
- (TSUChromeCellCoord)chromeCellCoordForViewCellCoord:(TSUViewCellCoord)a3;
- (TSUChromeColumnIndex)chromeColumnIndexForBaseColumnIndex:(TSUModelColumnIndex)a3;
- (TSUChromeColumnIndex)chromeColumnIndexForViewColumnIndex:(TSUViewColumnIndex)a3;
- (TSUChromeRowIndex)chromeRowIndexForBaseRowIndex:(TSUModelRowIndex)a3;
- (TSUChromeRowIndex)chromeRowIndexForViewRowIndex:(TSUViewRowIndex)a3;
- (TSUModelCellCoord)baseCellCoordForChromeCellCoord:(TSUChromeCellCoord)a3;
- (TSUModelCellCoord)baseCellCoordForViewCellCoord:(TSUViewCellCoord)a3;
- (TSUModelCellCoord)summaryCellCoordForViewCellCoord:(TSUViewCellCoord)a3;
- (TSUModelColumnIndex)baseColumnIndexForChromeColumnIndex:(TSUChromeColumnIndex)a3;
- (TSUModelColumnIndex)baseColumnIndexForViewColumnIndex:(TSUViewColumnIndex)a3;
- (TSUModelColumnIndex)summaryColumnIndexForViewColumnIndex:(TSUViewColumnIndex)a3;
- (TSUModelRowIndex)baseRowIndexForChromeRowIndex:(TSUChromeRowIndex)a3;
- (TSUModelRowIndex)baseRowIndexForViewRowIndex:(TSUViewRowIndex)a3;
- (TSUModelRowIndex)summaryRowIndexForViewRowIndex:(TSUViewRowIndex)a3;
- (TSUViewCellCoord)viewCellCoordForBaseCellCoord:(TSUModelCellCoord)a3;
- (TSUViewCellCoord)viewCellCoordForChromeCellCoord:(TSUChromeCellCoord)a3;
- (TSUViewCellCoord)viewCellCoordForSummaryCellCoord:(TSUModelCellCoord)a3;
- (TSUViewColumnIndex)viewColumnIndexForBaseColumnIndex:(TSUModelColumnIndex)a3;
- (TSUViewColumnIndex)viewColumnIndexForChromeColumnIndex:(TSUChromeColumnIndex)a3;
- (TSUViewColumnIndex)viewColumnIndexForSummaryColumnIndex:(TSUModelColumnIndex)a3;
- (TSUViewRowIndex)viewRowIndexForBaseRowIndex:(TSUModelRowIndex)a3;
- (TSUViewRowIndex)viewRowIndexForChromeRowIndex:(TSUChromeRowIndex)a3;
- (TSUViewRowIndex)viewRowIndexForSummaryRowIndex:(TSUModelRowIndex)a3;
- (id).cxx_construct;
- (id)baseColumnIndexesForChromeColumnIndexes:(id)a3;
- (id)baseColumnIndexesForViewColumnIndexes:(id)a3;
- (id)baseRowIndexesForChromeRowIndexes:(id)a3;
- (id)baseRowIndexesForViewRowIndexes:(id)a3;
- (id)baseShuffleMapForViewShuffleMap:(id)a3;
- (id)baseTractRefForChromeTractRef:(id)a3;
- (id)baseTractRefForViewTractRef:(id)a3;
- (id)chromeColumnIndexesForViewColumnIndexes:(id)a3;
- (id)chromeRowIndexesForViewRowIndexes:(id)a3;
- (id)chromeTractRefForBaseTractRef:(id)a3;
- (id)chromeTractRefForViewTractRef:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromArchive:(const void *)a3;
- (id)viewColumnIndexesForBaseColumnIndexes:(id)a3;
- (id)viewColumnIndexesForChromeColumnIndexes:(id)a3;
- (id)viewRowIndexesForBaseRowIndexes:(id)a3;
- (id)viewRowIndexesForChromeRowIndexes:(id)a3;
- (id)viewTractRefForBaseTractRef:(id)a3;
- (id)viewTractRefForChromeTractRef:(id)a3;
- (void)encodeToArchive:(void *)a3;
- (void)mapBaseColumn:(unsigned __int16)a3 toViewColumn:(unsigned __int16)a4;
- (void)mapBaseRow:(unsigned int)a3 toViewRow:(unsigned int)a4;
- (void)mapSummaryColumn:(unsigned __int16)a3 toViewColumn:(unsigned __int16)a4;
- (void)mapSummaryRow:(unsigned int)a3 toViewRow:(unsigned int)a4;
@end

@implementation TSCECoordMapper

- (TSCECoordMapper)initWithTableUID:(const TSKUIDStruct *)a3
{
  v5.receiver = self;
  v5.super_class = TSCECoordMapper;
  result = [(TSCECoordMapper *)&v5 init];
  if (result)
  {
    result->_tableUID = *a3;
    result->_isIdentityMapping = 1;
  }

  return result;
}

- (TSCECoordMapper)initWithTableUID:(const TSKUIDStruct *)a3 summaryColumns:(id)a4 summaryRows:(id)a5 labelRows:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v31.receiver = self;
  v31.super_class = TSCECoordMapper;
  v14 = [(TSCECoordMapper *)&v31 init];
  v15 = v14;
  if (v14)
  {
    v14->_tableUID = *a3;
    objc_storeStrong(&v14->_summaryColumnIndexes, a4);
    objc_storeStrong(&v15->_summaryRowIndexes, a5);
    objc_storeStrong(&v15->_labelRowIndexes, a6);
    if (objc_msgSend_count(v15->_labelRowIndexes, v16, v17, v18, v19))
    {
      v24 = objc_msgSend_mutableCopy(v12, v20, v21, v22, v23);
      objc_msgSend_addIndexes_(v24, v25, v13, v26, v27);
      summaryAndLabelRowIndexes = v15->_summaryAndLabelRowIndexes;
      v15->_summaryAndLabelRowIndexes = v24;
    }

    else
    {
      v29 = v12;
      summaryAndLabelRowIndexes = v15->_summaryAndLabelRowIndexes;
      v15->_summaryAndLabelRowIndexes = v29;
    }
  }

  return v15;
}

- (id)initFromArchive:(const void *)a3
{
  if (*(a3 + 15))
  {
    v5 = *(a3 + 15);
  }

  else
  {
    v5 = MEMORY[0x277D809E0];
  }

  v29[0] = TSKUIDStruct::loadFromMessage(v5, a2);
  v29[1] = v6;
  if ((*(a3 + 16) & 2) == 0)
  {
    return objc_msgSend_initWithTableUID_(self, v6, v29, v7, v8);
  }

  sub_22126A778(*(a3 + 16), &v28);
  TSUIndexSet::TSUIndexSet(&v27);
  v10 = *(a3 + 4);
  if ((v10 & 8) != 0)
  {
    sub_22126A778(*(a3 + 18), &v26);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v26);
    v10 = *(a3 + 4);
  }

  if ((v10 & 4) != 0)
  {
    sub_22126A778(*(a3 + 17), &v26);
    v11 = TSUIndexSet::asNSIndexSet(&v26);
    TSUIndexSet::~TSUIndexSet(&v26);
  }

  else
  {
    v11 = 0;
  }

  v12 = TSUIndexSet::asNSIndexSet(&v28);
  v13 = TSUIndexSet::asNSIndexSet(&v27);
  v9 = objc_msgSend_initWithTableUID_summaryColumns_summaryRows_labelRows_(self, v14, v29, v11, v12, v13);

  if (v9)
  {
    v17 = *(a3 + 8);
    if (v17 >= 1)
    {
      v18 = 8;
      do
      {
        objc_msgSend_mapBaseRow_toViewRow_(v9, v15, *(*(*(a3 + 5) + v18) + 24), *(*(*(a3 + 5) + v18) + 28), v16);
        v18 += 8;
        --v17;
      }

      while (v17);
    }

    v19 = *(a3 + 20);
    if (v19 >= 1)
    {
      v20 = 8;
      do
      {
        objc_msgSend_mapSummaryRow_toViewRow_(v9, v15, *(*(*(a3 + 11) + v20) + 24), *(*(*(a3 + 11) + v20) + 28), v16);
        v20 += 8;
        --v19;
      }

      while (v19);
    }

    if (v11)
    {
      v21 = *(a3 + 14);
      if (v21 >= 1)
      {
        v22 = 8;
        do
        {
          objc_msgSend_mapBaseColumn_toViewColumn_(v9, v15, *(*(*(a3 + 8) + v22) + 24), *(*(*(a3 + 8) + v22) + 28), v16);
          v22 += 8;
          --v21;
        }

        while (v21);
      }

      v23 = *(a3 + 26);
      if (v23 >= 1)
      {
        v24 = 8;
        do
        {
          objc_msgSend_mapSummaryColumn_toViewColumn_(v9, v15, *(*(*(a3 + 14) + v24) + 24), *(*(*(a3 + 14) + v24) + 28), v16);
          v24 += 8;
          --v23;
        }

        while (v23);
      }
    }
  }

  TSUIndexSet::~TSUIndexSet(&v27);
  TSUIndexSet::~TSUIndexSet(&v28);
  return v9;
}

- (void)encodeToArchive:(void *)a3
{
  *(a3 + 4) |= 1u;
  v5 = *(a3 + 15);
  if (!v5)
  {
    v6 = *(a3 + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    v5 = MEMORY[0x223DA0360](v6);
    *(a3 + 15) = v5;
  }

  TSKUIDStruct::saveToMessage(&self->_tableUID, v5);
  if ((objc_msgSend_isIdentityMapping(self, v7, v8, v9, v10) & 1) == 0)
  {
    MEMORY[0x223D9F7A0](&v57, self->_summaryRowIndexes);
    *(a3 + 4) |= 2u;
    if (!*(a3 + 16))
    {
      v11 = *(a3 + 1);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(a3 + 16) = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v11);
    }

    sub_22126A644();
    if (objc_msgSend_count(self->_labelRowIndexes, v12, v13, v14, v15))
    {
      MEMORY[0x223D9F7A0](&v56, self->_labelRowIndexes);
      *(a3 + 4) |= 8u;
      if (!*(a3 + 18))
      {
        v16 = *(a3 + 1);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        *(a3 + 18) = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v16);
      }

      sub_22126A644();
      TSUIndexSet::~TSUIndexSet(&v56);
    }

    next = self->_baseRowToViewRow.__table_.__first_node_.__next_;
    if (next)
    {
      while (1)
      {
        v18 = *(a3 + 5);
        if (!v18)
        {
          goto LABEL_22;
        }

        v19 = *(a3 + 8);
        v20 = *v18;
        if (v19 >= *v18)
        {
          break;
        }

        *(a3 + 8) = v19 + 1;
        v21 = *&v18[2 * v19 + 2];
LABEL_24:
        v24 = next[4];
        v25 = v21[4];
        v21[4] = v25 | 1;
        v21[6] = v24;
        v26 = next[5];
        v21[4] = v25 | 3;
        v21[7] = v26;
        next = *next;
        if (!next)
        {
          goto LABEL_25;
        }
      }

      if (v20 == *(a3 + 9))
      {
LABEL_22:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 24));
        v18 = *(a3 + 5);
        v20 = *v18;
      }

      *v18 = v20 + 1;
      v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CoordMapperArchive_BaseToViewEntry>(*(a3 + 3));
      v22 = *(a3 + 8);
      v23 = *(a3 + 5) + 8 * v22;
      *(a3 + 8) = v22 + 1;
      *(v23 + 8) = v21;
      goto LABEL_24;
    }

LABEL_25:
    v27 = self->_summaryRowToViewRow.__table_.__first_node_.__next_;
    if (v27)
    {
      while (1)
      {
        v28 = *(a3 + 11);
        if (!v28)
        {
          goto LABEL_31;
        }

        v29 = *(a3 + 20);
        v30 = *v28;
        if (v29 >= *v28)
        {
          break;
        }

        *(a3 + 20) = v29 + 1;
        v31 = *&v28[2 * v29 + 2];
LABEL_33:
        v34 = v27[4];
        v35 = v31[4];
        v31[4] = v35 | 1;
        v31[6] = v34;
        v36 = v27[5];
        v31[4] = v35 | 3;
        v31[7] = v36;
        v27 = *v27;
        if (!v27)
        {
          goto LABEL_34;
        }
      }

      if (v30 == *(a3 + 21))
      {
LABEL_31:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 72));
        v28 = *(a3 + 11);
        v30 = *v28;
      }

      *v28 = v30 + 1;
      v31 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CoordMapperArchive_SummaryToViewEntry>(*(a3 + 9));
      v32 = *(a3 + 20);
      v33 = *(a3 + 11) + 8 * v32;
      *(a3 + 20) = v32 + 1;
      *(v33 + 8) = v31;
      goto LABEL_33;
    }

LABEL_34:
    if (self->_summaryColumnIndexes)
    {
      MEMORY[0x223D9F7A0](&v56);
      *(a3 + 4) |= 4u;
      if (!*(a3 + 17))
      {
        v37 = *(a3 + 1);
        if (v37)
        {
          v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
        }

        *(a3 + 17) = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v37);
      }

      sub_22126A644();
      v38 = self->_baseColumnToViewColumn.__table_.__first_node_.__next_;
      if (v38)
      {
        while (1)
        {
          v39 = *(a3 + 8);
          if (!v39)
          {
            goto LABEL_45;
          }

          v40 = *(a3 + 14);
          v41 = *v39;
          if (v40 >= *v39)
          {
            break;
          }

          *(a3 + 14) = v40 + 1;
          v42 = *&v39[2 * v40 + 2];
LABEL_47:
          v45 = v42[4];
          v42[6] = *(v38 + 8);
          v46 = *(v38 + 9);
          v42[4] = v45 | 3;
          v42[7] = v46;
          v38 = *v38;
          if (!v38)
          {
            goto LABEL_48;
          }
        }

        if (v41 == *(a3 + 15))
        {
LABEL_45:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 48));
          v39 = *(a3 + 8);
          v41 = *v39;
        }

        *v39 = v41 + 1;
        v42 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CoordMapperArchive_BaseToViewEntry>(*(a3 + 6));
        v43 = *(a3 + 14);
        v44 = *(a3 + 8) + 8 * v43;
        *(a3 + 14) = v43 + 1;
        *(v44 + 8) = v42;
        goto LABEL_47;
      }

LABEL_48:
      v47 = self->_summaryColumnToViewColumn.__table_.__first_node_.__next_;
      if (v47)
      {
        while (1)
        {
          v48 = *(a3 + 14);
          if (!v48)
          {
            goto LABEL_54;
          }

          v49 = *(a3 + 26);
          v50 = *v48;
          if (v49 >= *v48)
          {
            break;
          }

          *(a3 + 26) = v49 + 1;
          v51 = *&v48[2 * v49 + 2];
LABEL_56:
          v54 = v51[4];
          v51[6] = *(v47 + 8);
          v55 = *(v47 + 9);
          v51[4] = v54 | 3;
          v51[7] = v55;
          v47 = *v47;
          if (!v47)
          {
            goto LABEL_57;
          }
        }

        if (v50 == *(a3 + 27))
        {
LABEL_54:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 96));
          v48 = *(a3 + 14);
          v50 = *v48;
        }

        *v48 = v50 + 1;
        v51 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CoordMapperArchive_SummaryToViewEntry>(*(a3 + 12));
        v52 = *(a3 + 26);
        v53 = *(a3 + 14) + 8 * v52;
        *(a3 + 26) = v52 + 1;
        *(v53 + 8) = v51;
        goto LABEL_56;
      }

LABEL_57:
      TSUIndexSet::~TSUIndexSet(&v56);
    }

    TSUIndexSet::~TSUIndexSet(&v57);
  }
}

- (void)mapBaseRow:(unsigned int)a3 toViewRow:(unsigned int)a4
{
  v6 = a4;
  v7 = a3;
  if (a3 != 0x7FFFFFFF)
  {
    v8 = &v7;
    *(sub_2211DB9B8(&self->_baseRowToViewRow.__table_.__bucket_list_.__ptr_, &v7) + 5) = a4;
    v5 = v7;
    v8 = &v6;
    *(sub_2211DB9B8(&self->_viewRowToBaseRow.__table_.__bucket_list_.__ptr_, &v6) + 5) = v5;
  }
}

- (void)mapBaseColumn:(unsigned __int16)a3 toViewColumn:(unsigned __int16)a4
{
  v7 = a3;
  v6 = a4;
  if (a3 != 0x7FFF)
  {
    v8 = &v7;
    *(sub_2211DBBEC(&self->_baseColumnToViewColumn.__table_.__bucket_list_.__ptr_, &v7) + 9) = a4;
    v5 = v7;
    v8 = &v6;
    *(sub_2211DBBEC(&self->_viewColumnToBaseColumn.__table_.__bucket_list_.__ptr_, &v6) + 9) = v5;
  }
}

- (void)mapSummaryRow:(unsigned int)a3 toViewRow:(unsigned int)a4
{
  v6 = a4;
  v7 = a3;
  if (a3 != 0x7FFFFFFF)
  {
    v8 = &v7;
    *(sub_2211DB9B8(&self->_summaryRowToViewRow.__table_.__bucket_list_.__ptr_, &v7) + 5) = a4;
    v5 = v7;
    v8 = &v6;
    *(sub_2211DB9B8(&self->_viewRowToSummaryRow.__table_.__bucket_list_.__ptr_, &v6) + 5) = v5;
  }
}

- (void)mapSummaryColumn:(unsigned __int16)a3 toViewColumn:(unsigned __int16)a4
{
  v7 = a3;
  v6 = a4;
  if (a3 != 0x7FFF)
  {
    v8 = &v7;
    *(sub_2211DBBEC(&self->_summaryColumnToViewColumn.__table_.__bucket_list_.__ptr_, &v7) + 9) = a4;
    v5 = v7;
    v8 = &v6;
    *(sub_2211DBBEC(&self->_viewColumnToSummaryColumn.__table_.__bucket_list_.__ptr_, &v6) + 9) = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v4->_isIdentityMapping = self->_isIdentityMapping;
  v4->_chromeCoordsAreViewCoords = self->_chromeCoordsAreViewCoords;
  objc_storeStrong(&v4->_summaryRowIndexes, self->_summaryRowIndexes);
  objc_storeStrong(&v4->_labelRowIndexes, self->_labelRowIndexes);
  objc_storeStrong(&v4->_summaryAndLabelRowIndexes, self->_summaryAndLabelRowIndexes);
  objc_storeStrong(&v4->_summaryColumnIndexes, self->_summaryColumnIndexes);
  if (v4 != self)
  {
    v4->_baseRowToViewRow.__table_.__max_load_factor_ = self->_baseRowToViewRow.__table_.__max_load_factor_;
    sub_2211DBE28(&v4->_baseRowToViewRow.__table_.__bucket_list_.__ptr_, self->_baseRowToViewRow.__table_.__first_node_.__next_, 0);
    v4->_viewRowToBaseRow.__table_.__max_load_factor_ = self->_viewRowToBaseRow.__table_.__max_load_factor_;
    sub_2211DBE28(&v4->_viewRowToBaseRow.__table_.__bucket_list_.__ptr_, self->_viewRowToBaseRow.__table_.__first_node_.__next_, 0);
    v4->_baseColumnToViewColumn.__table_.__max_load_factor_ = self->_baseColumnToViewColumn.__table_.__max_load_factor_;
    sub_2211DBFC8(&v4->_baseColumnToViewColumn.__table_.__bucket_list_.__ptr_, self->_baseColumnToViewColumn.__table_.__first_node_.__next_, 0);
    v4->_viewColumnToBaseColumn.__table_.__max_load_factor_ = self->_viewColumnToBaseColumn.__table_.__max_load_factor_;
    sub_2211DBFC8(&v4->_viewColumnToBaseColumn.__table_.__bucket_list_.__ptr_, self->_viewColumnToBaseColumn.__table_.__first_node_.__next_, 0);
    v4->_summaryRowToViewRow.__table_.__max_load_factor_ = self->_summaryRowToViewRow.__table_.__max_load_factor_;
    sub_2211DBE28(&v4->_summaryRowToViewRow.__table_.__bucket_list_.__ptr_, self->_summaryRowToViewRow.__table_.__first_node_.__next_, 0);
    v4->_viewRowToSummaryRow.__table_.__max_load_factor_ = self->_viewRowToSummaryRow.__table_.__max_load_factor_;
    sub_2211DBE28(&v4->_viewRowToSummaryRow.__table_.__bucket_list_.__ptr_, self->_viewRowToSummaryRow.__table_.__first_node_.__next_, 0);
    v4->_summaryColumnToViewColumn.__table_.__max_load_factor_ = self->_summaryColumnToViewColumn.__table_.__max_load_factor_;
    sub_2211DBFC8(&v4->_summaryColumnToViewColumn.__table_.__bucket_list_.__ptr_, self->_summaryColumnToViewColumn.__table_.__first_node_.__next_, 0);
    v4->_viewColumnToSummaryColumn.__table_.__max_load_factor_ = self->_viewColumnToSummaryColumn.__table_.__max_load_factor_;
    sub_2211DBFC8(&v4->_viewColumnToSummaryColumn.__table_.__bucket_list_.__ptr_, self->_viewColumnToSummaryColumn.__table_.__first_node_.__next_, 0);
  }

  return v4;
}

- (TSUModelColumnIndex)baseColumnIndexForViewColumnIndex:(TSUViewColumnIndex)a3
{
  v5._column = 0x7FFF;
  if (a3.var0 != 0x7FFF)
  {
    v9 = v3;
    v10 = v4;
    var0 = a3.var0;
    if (!self->_isIdentityMapping)
    {
      if (self->_summaryColumnIndexes)
      {
        v6 = sub_2210C3024(&self->_viewColumnToBaseColumn.__table_.__bucket_list_.__ptr_, &var0);
        if (!v6)
        {
          return 0x7FFF;
        }

        return *(v6 + 18);
      }

      else if (a3.var0)
      {
        --a3.var0;
      }

      else
      {
        return 0x7FFF;
      }
    }

    return a3.var0;
  }

  return v5;
}

- (TSUModelRowIndex)baseRowIndexForViewRowIndex:(TSUViewRowIndex)a3
{
  v5._row = 0x7FFFFFFF;
  if (a3.var0 != 0x7FFFFFFF)
  {
    v9 = v3;
    v10 = v4;
    var0 = a3.var0;
    if (!self->_isIdentityMapping)
    {
      v6 = sub_2211DC534(&self->_viewRowToBaseRow.__table_.__bucket_list_.__ptr_, &var0);
      if (!v6)
      {
        return 0x7FFFFFFF;
      }

      return *(v6 + 20);
    }

    return a3.var0;
  }

  return v5;
}

- (TSUModelColumnIndex)baseColumnIndexForChromeColumnIndex:(TSUChromeColumnIndex)a3
{
  if (self->_summaryColumnIndexes)
  {
    v7 = objc_msgSend_viewColumnIndexForChromeColumnIndex_(self, a2, a3.var0, v3, v4);

    return objc_msgSend_baseColumnIndexForViewColumnIndex_(self, v6, v7, v8, v9);
  }

  else
  {
    return a3.var0;
  }
}

- (TSUModelRowIndex)baseRowIndexForChromeRowIndex:(TSUChromeRowIndex)a3
{
  v7 = objc_msgSend_viewRowIndexForChromeRowIndex_(self, a2, a3.var0, v3, v4);

  return objc_msgSend_baseRowIndexForViewRowIndex_(self, v6, v7, v8, v9);
}

- (TSUChromeColumnIndex)chromeColumnIndexForBaseColumnIndex:(TSUModelColumnIndex)a3
{
  if (self->_summaryColumnIndexes)
  {
    v7 = objc_msgSend_viewColumnIndexForBaseColumnIndex_(self, a2, a3._column, v3, v4);

    return objc_msgSend_chromeColumnIndexForViewColumnIndex_(self, v6, v7, v8, v9);
  }

  else
  {
    return a3._column;
  }
}

- (TSUChromeRowIndex)chromeRowIndexForBaseRowIndex:(TSUModelRowIndex)a3
{
  v7 = objc_msgSend_viewRowIndexForBaseRowIndex_(self, a2, a3._row, v3, v4);

  return objc_msgSend_chromeRowIndexForViewRowIndex_(self, v6, v7, v8, v9);
}

- (TSUViewColumnIndex)viewColumnIndexForBaseColumnIndex:(TSUModelColumnIndex)a3
{
  v5.var0 = 0x7FFF;
  if (a3._column != 0x7FFF)
  {
    v9 = v3;
    v10 = v4;
    column = a3._column;
    if (!self->_isIdentityMapping)
    {
      if (self->_summaryColumnIndexes)
      {
        v6 = sub_2210C3024(&self->_baseColumnToViewColumn.__table_.__bucket_list_.__ptr_, &column);
        if (v6)
        {
          return *(v6 + 18);
        }

        else
        {
          return column;
        }
      }

      else
      {
        ++a3._column;
      }
    }

    return a3._column;
  }

  return v5;
}

- (TSUViewRowIndex)viewRowIndexForBaseRowIndex:(TSUModelRowIndex)a3
{
  v5.var0 = 0x7FFFFFFF;
  if (a3._row != 0x7FFFFFFF)
  {
    v9 = v3;
    v10 = v4;
    row = a3._row;
    if (!self->_isIdentityMapping)
    {
      v6 = sub_2211DC534(&self->_baseRowToViewRow.__table_.__bucket_list_.__ptr_, &row);
      if (v6)
      {
        return *(v6 + 20);
      }

      else
      {
        return 0x7FFFFFFF;
      }
    }

    return a3._row;
  }

  return v5;
}

- (TSUChromeColumnIndex)chromeColumnIndexForViewColumnIndex:(TSUViewColumnIndex)a3
{
  v5 = *&a3.var0;
  summaryColumnIndexes = self->_summaryColumnIndexes;
  if (summaryColumnIndexes)
  {
    LOWORD(v8) = 0x7FFF;
    if (a3.var0 != 0x7FFF)
    {
      if (self->_chromeCoordsAreViewCoords)
      {
        LOWORD(v8) = a3;
      }

      else if (objc_msgSend_containsIndex_(summaryColumnIndexes, a2, a3.var0, v3, v4))
      {
        LOWORD(v8) = 0x7FFF;
      }

      else
      {
        return (v5 - objc_msgSend_countOfIndexesInRange_(self->_summaryColumnIndexes, v10, 0, v5, v11));
      }
    }

    return v8;
  }

  else
  {

    return objc_msgSend_baseColumnIndexForViewColumnIndex_(self, a2, a3.var0, v3, v4);
  }
}

- (TSUChromeRowIndex)chromeRowIndexForViewRowIndex:(TSUViewRowIndex)a3
{
  v7.var0 = 0x7FFFFFFF;
  if (a3.var0 != 0x7FFFFFFF)
  {
    if (self->_isIdentityMapping || self->_chromeCoordsAreViewCoords)
    {
      return a3.var0;
    }

    else if (objc_msgSend_containsIndex_(self->_summaryAndLabelRowIndexes, a2, a3.var0, v3, v4))
    {
      return 0x7FFFFFFF;
    }

    else
    {
      return (a3.var0 - objc_msgSend_countOfIndexesInRange_(self->_summaryAndLabelRowIndexes, v8, 0, a3.var0, v9));
    }
  }

  return v7;
}

- (TSUViewColumnIndex)viewColumnIndexForChromeColumnIndex:(TSUChromeColumnIndex)a3
{
  summaryColumnIndexes = self->_summaryColumnIndexes;
  if (summaryColumnIndexes)
  {
    v7.var0 = 0x7FFF;
    if (a3.var0 != 0x7FFF)
    {
      if (self->_chromeCoordsAreViewCoords)
      {
        return a3.var0;
      }

      else
      {
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        var0 = a3.var0;
        v10 = 0;
        v11 = &v10;
        v12 = 0x2020000000;
        v13 = 0;
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = sub_2211D8A48;
        v9[3] = &unk_278460FA8;
        v9[4] = &v10;
        v9[5] = &v14;
        objc_msgSend_enumerateRangesUsingBlock_(summaryColumnIndexes, a2, v9, v3, v4);
        v7.var0 = v11[12].var0 + *(v15 + 12);
        v11[12].var0 = v7.var0;
        _Block_object_dispose(&v10, 8);
        _Block_object_dispose(&v14, 8);
      }
    }

    return v7;
  }

  else
  {

    return objc_msgSend_viewColumnIndexForBaseColumnIndex_(self, a2, a3.var0, v3, v4);
  }
}

- (TSUViewRowIndex)viewRowIndexForChromeRowIndex:(TSUChromeRowIndex)a3
{
  v5 = 0x7FFFFFFF;
  if (a3.var0 != 0x7FFFFFFF)
  {
    if (self->_isIdentityMapping || self->_chromeCoordsAreViewCoords)
    {
      return a3.var0;
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      var0 = a3.var0;
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v12 = 0;
      summaryAndLabelRowIndexes = self->_summaryAndLabelRowIndexes;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = sub_2211D8BC8;
      v8[3] = &unk_278460FA8;
      v8[4] = &v9;
      v8[5] = &v13;
      objc_msgSend_enumerateRangesUsingBlock_(summaryAndLabelRowIndexes, a2, v8, v3, v4);
      v5 = *(v10 + 6) + *(v14 + 6);
      *(v10 + 6) = v5;
      _Block_object_dispose(&v9, 8);
      _Block_object_dispose(&v13, 8);
    }
  }

  return v5;
}

- (TSUModelColumnIndex)summaryColumnIndexForViewColumnIndex:(TSUViewColumnIndex)a3
{
  v6._column = 0x7FFF;
  if (a3.var0 != 0x7FFF && !self->_isIdentityMapping)
  {
    v9 = v3;
    v10 = v4;
    var0 = a3.var0;
    v7 = sub_2210C3024(&self->_viewColumnToSummaryColumn.__table_.__bucket_list_.__ptr_, &var0);
    if (v7)
    {
      return *(v7 + 9);
    }

    else
    {
      return 0x7FFF;
    }
  }

  return v6;
}

- (TSUModelRowIndex)summaryRowIndexForViewRowIndex:(TSUViewRowIndex)a3
{
  v6._row = 0x7FFFFFFF;
  if (a3.var0 != 0x7FFFFFFF && !self->_isIdentityMapping)
  {
    v9 = v3;
    v10 = v4;
    var0 = a3.var0;
    v7 = sub_2211DC534(&self->_viewRowToSummaryRow.__table_.__bucket_list_.__ptr_, &var0);
    if (v7)
    {
      return *(v7 + 5);
    }

    else
    {
      return 0x7FFFFFFF;
    }
  }

  return v6;
}

- (TSUViewColumnIndex)viewColumnIndexForSummaryColumnIndex:(TSUModelColumnIndex)a3
{
  v6.var0 = 0x7FFF;
  if (a3._column != 0x7FFF && !self->_isIdentityMapping)
  {
    v9 = v3;
    v10 = v4;
    column = a3._column;
    v7 = sub_2210C3024(&self->_summaryColumnToViewColumn.__table_.__bucket_list_.__ptr_, &column);
    if (v7)
    {
      return *(v7 + 9);
    }

    else
    {
      return 0x7FFF;
    }
  }

  return v6;
}

- (TSUViewRowIndex)viewRowIndexForSummaryRowIndex:(TSUModelRowIndex)a3
{
  v6.var0 = 0x7FFFFFFF;
  if (a3._row != 0x7FFFFFFF && !self->_isIdentityMapping)
  {
    v9 = v3;
    v10 = v4;
    row = a3._row;
    v7 = sub_2211DC534(&self->_summaryRowToViewRow.__table_.__bucket_list_.__ptr_, &row);
    if (v7)
    {
      return *(v7 + 5);
    }

    else
    {
      return 0x7FFFFFFF;
    }
  }

  return v6;
}

- (id)baseColumnIndexesForViewColumnIndexes:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_isIdentityMapping)
  {
    v10 = v4;
  }

  else if (self->_summaryColumnIndexes)
  {
    v11 = objc_opt_new();
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_2211D8ED0;
    v23[3] = &unk_27845DE60;
    v23[4] = self;
    v12 = v11;
    v24 = v12;
    objc_msgSend_enumerateIndexesUsingBlock_(v9, v13, v23, v14, v15);
    v16 = v24;
    v10 = v12;
  }

  else
  {
    v10 = objc_msgSend_mutableCopy(v4, v5, v6, v7, v8);
    objc_msgSend_removeIndex_(v10, v17, 0, v18, v19);
    objc_msgSend_shiftIndexesStartingAtIndex_by_(v10, v20, 1, -1, v21);
  }

  return v10;
}

- (id)baseRowIndexesForViewRowIndexes:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_isIdentityMapping)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_opt_new();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2211D9044;
    v14[3] = &unk_27845DE60;
    v14[4] = self;
    v8 = v7;
    v15 = v8;
    objc_msgSend_enumerateIndexesUsingBlock_(v5, v9, v14, v10, v11);
    v12 = v15;
    v6 = v8;
  }

  return v6;
}

- (id)baseColumnIndexesForChromeColumnIndexes:(id)a3
{
  v6 = objc_msgSend_viewColumnIndexesForChromeColumnIndexes_(self, a2, a3, v3, v4);
  v10 = objc_msgSend_baseColumnIndexesForViewColumnIndexes_(self, v7, v6, v8, v9);

  return v10;
}

- (id)baseRowIndexesForChromeRowIndexes:(id)a3
{
  v6 = objc_msgSend_viewRowIndexesForChromeRowIndexes_(self, a2, a3, v3, v4);
  v10 = objc_msgSend_baseRowIndexesForViewRowIndexes_(self, v7, v6, v8, v9);

  return v10;
}

- (id)viewColumnIndexesForBaseColumnIndexes:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_isIdentityMapping)
  {
    v10 = v4;
  }

  else if (self->_summaryColumnIndexes)
  {
    v11 = objc_opt_new();
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2211D92B4;
    v20[3] = &unk_27845DE60;
    v20[4] = self;
    v12 = v11;
    v21 = v12;
    objc_msgSend_enumerateIndexesUsingBlock_(v9, v13, v20, v14, v15);
    v16 = v21;
    v10 = v12;
  }

  else
  {
    v10 = objc_msgSend_mutableCopy(v4, v5, v6, v7, v8);
    objc_msgSend_shiftIndexesStartingAtIndex_by_(v10, v17, 0, 1, v18);
  }

  return v10;
}

- (id)viewRowIndexesForBaseRowIndexes:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_isIdentityMapping)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_opt_new();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2211D9414;
    v14[3] = &unk_27845DE60;
    v14[4] = self;
    v8 = v7;
    v15 = v8;
    objc_msgSend_enumerateIndexesUsingBlock_(v5, v9, v14, v10, v11);
    v12 = v15;
    v6 = v8;
  }

  return v6;
}

- (id)chromeColumnIndexesForViewColumnIndexes:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_isIdentityMapping || self->_chromeCoordsAreViewCoords)
  {
    v9 = v4;
  }

  else if (self->_summaryColumnIndexes)
  {
    v11 = objc_opt_new();
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_2211D9610;
    v32[3] = &unk_27845DE60;
    v32[4] = self;
    v12 = v11;
    v33 = v12;
    objc_msgSend_enumerateIndexesUsingBlock_(v8, v13, v32, v14, v15);
    v16 = v33;
    v9 = v12;
  }

  else if (v4)
  {
    if (objc_msgSend_containsIndex_(v4, v5, 0, v6, v7))
    {
      v21 = 1;
    }

    else
    {
      v21 = objc_msgSend_containsIndex_(v8, v17, 0x7FFFLL, v19, v20);
    }

    v22 = objc_msgSend_mutableCopy(v8, v17, v18, v19, v20);
    v9 = v22;
    if (v21)
    {
      objc_msgSend_removeIndex_(v22, v23, 0, v24, v25);
      objc_msgSend_removeIndex_(v9, v26, 0x7FFFLL, v27, v28);
    }

    objc_msgSend_shiftIndexesStartingAtIndex_by_(v9, v23, 0, -1, v25);
    if (v21)
    {
      objc_msgSend_addIndex_(v9, v29, 0x7FFFLL, v30, v31);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)chromeRowIndexesForViewRowIndexes:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_isIdentityMapping || self->_chromeCoordsAreViewCoords)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_opt_new();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2211D976C;
    v14[3] = &unk_27845DE60;
    v14[4] = self;
    v8 = v7;
    v15 = v8;
    objc_msgSend_enumerateIndexesUsingBlock_(v5, v9, v14, v10, v11);
    v12 = v15;
    v6 = v8;
  }

  return v6;
}

- (id)viewColumnIndexesForChromeColumnIndexes:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_isIdentityMapping || self->_chromeCoordsAreViewCoords)
  {
    v9 = v4;
LABEL_4:
    v10 = v9;
    goto LABEL_5;
  }

  if (!self->_summaryColumnIndexes)
  {
    v9 = objc_msgSend_viewColumnIndexesForBaseColumnIndexes_(self, v5, v4, v6, v7);
    goto LABEL_4;
  }

  v12 = objc_opt_new();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2211D98EC;
  v18[3] = &unk_27845DE60;
  v18[4] = self;
  v13 = v12;
  v19 = v13;
  objc_msgSend_enumerateIndexesUsingBlock_(v8, v14, v18, v15, v16);
  v17 = v19;
  v10 = v13;

LABEL_5:

  return v10;
}

- (id)viewRowIndexesForChromeRowIndexes:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_isIdentityMapping || self->_chromeCoordsAreViewCoords)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_opt_new();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2211D9A48;
    v14[3] = &unk_27845DE60;
    v14[4] = self;
    v8 = v7;
    v15 = v8;
    objc_msgSend_enumerateIndexesUsingBlock_(v5, v9, v14, v10, v11);
    v12 = v15;
    v6 = v8;
  }

  return v6;
}

- (TSUModelCellCoord)baseCellCoordForViewCellCoord:(TSUViewCellCoord)a3
{
  v5 = a3;
  if (self->_isIdentityMapping)
  {
    v6 = *&a3 & 0xFF00000000000000;
    v7 = *&a3 & 0xFF000000000000;
  }

  else if ((*&a3 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && (v9 = objc_msgSend_baseColumnIndexForViewColumnIndex_(self, a2, a3._coord.column, v3, v4), v13 = objc_msgSend_baseRowIndexForViewRowIndex_(self, v10, v5, v11, v12), (v13 | (v9 << 32)) != 0x7FFF7FFFFFFFLL) && (v5 != 0x7FFFFFFFLL ? (v14 = WORD2(v5) == 0x7FFFLL) : (v14 = 0), !v14 ? (v15 = 0) : (v15 = 1), v9 == 0x7FFF ? (v16 = v13 == 0x7FFFFFFF) : (v16 = 1), v16 ? (v17 = 0) : (v17 = 1), v15 == v17 && (v9 != 0x7FFF ? (v18 = v13 == 0x7FFFFFFF) : (v18 = 0), v18 ? (v19 = 0) : (v19 = 1), v5 == 0x7FFFFFFFLL ? (v20 = WORD2(v5) == 0x7FFFLL) : (v20 = 1), !v20 ? (v21 = 0) : (v21 = 1), v21 == v19)))
  {
    v6 = v5 & 0x100000000000000;
    v7 = v5 & 0x1000000000000;
    v5 = v13 | (v9 << 32);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0x7FFF7FFFFFFFLL;
  }

  return (v6 | v7 | v5 & 0xFFFFFFFFFFFFLL);
}

- (TSUModelCellCoord)baseCellCoordForChromeCellCoord:(TSUChromeCellCoord)a3
{
  v5 = a3;
  if (self->_isIdentityMapping)
  {
    v6 = *&a3 & 0xFF00000000000000;
    v7 = *&a3 & 0xFF000000000000;
  }

  else if ((*&a3 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && (v9 = objc_msgSend_baseColumnIndexForChromeColumnIndex_(self, a2, a3._coord.column, v3, v4), v13 = objc_msgSend_baseRowIndexForChromeRowIndex_(self, v10, v5, v11, v12), (v13 | (v9 << 32)) != 0x7FFF7FFFFFFFLL) && (v5 != 0x7FFFFFFFLL ? (v14 = WORD2(v5) == 0x7FFFLL) : (v14 = 0), !v14 ? (v15 = 0) : (v15 = 1), v9 == 0x7FFF ? (v16 = v13 == 0x7FFFFFFF) : (v16 = 1), v16 ? (v17 = 0) : (v17 = 1), v15 == v17 && (v9 != 0x7FFF ? (v18 = v13 == 0x7FFFFFFF) : (v18 = 0), v18 ? (v19 = 0) : (v19 = 1), v5 == 0x7FFFFFFFLL ? (v20 = WORD2(v5) == 0x7FFFLL) : (v20 = 1), !v20 ? (v21 = 0) : (v21 = 1), v21 == v19)))
  {
    v6 = v5 & 0x100000000000000;
    v7 = v5 & 0x1000000000000;
    v5 = v13 | (v9 << 32);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0x7FFF7FFFFFFFLL;
  }

  return (v6 | v7 | v5 & 0xFFFFFFFFFFFFLL);
}

- (TSUChromeCellCoord)chromeCellCoordForBaseCellCoord:(TSUModelCellCoord)a3
{
  v5 = a3;
  if (self->_isIdentityMapping)
  {
    v6 = *&a3 & 0xFF00000000000000;
    v7 = *&a3 & 0xFF000000000000;
  }

  else if ((*&a3 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && (v9 = objc_msgSend_chromeColumnIndexForBaseColumnIndex_(self, a2, a3._coord.column, v3, v4), v13 = objc_msgSend_chromeRowIndexForBaseRowIndex_(self, v10, v5, v11, v12), (v13 | (v9 << 32)) != 0x7FFF7FFFFFFFLL) && (v5 != 0x7FFFFFFFLL ? (v14 = WORD2(v5) == 0x7FFFLL) : (v14 = 0), !v14 ? (v15 = 0) : (v15 = 1), v9 == 0x7FFF ? (v16 = v13 == 0x7FFFFFFF) : (v16 = 1), v16 ? (v17 = 0) : (v17 = 1), v15 == v17 && (v9 != 0x7FFF ? (v18 = v13 == 0x7FFFFFFF) : (v18 = 0), v18 ? (v19 = 0) : (v19 = 1), v5 == 0x7FFFFFFFLL ? (v20 = WORD2(v5) == 0x7FFFLL) : (v20 = 1), !v20 ? (v21 = 0) : (v21 = 1), v21 == v19)))
  {
    v6 = v5 & 0x100000000000000;
    v7 = v5 & 0x1000000000000;
    v5 = v13 | (v9 << 32);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0x7FFF7FFFFFFFLL;
  }

  return (v6 | v7 | v5 & 0xFFFFFFFFFFFFLL);
}

- (TSUChromeCellCoord)chromeCellCoordForViewCellCoord:(TSUViewCellCoord)a3
{
  v5 = a3;
  if (self->_isIdentityMapping || self->_chromeCoordsAreViewCoords)
  {
    v7 = *&a3 & 0xFF00000000000000;
    v8 = *&a3 & 0xFF000000000000;
  }

  else if ((*&a3 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && (v9 = objc_msgSend_chromeColumnIndexForViewColumnIndex_(self, a2, a3._coord.column, v3, v4), v13 = objc_msgSend_chromeRowIndexForViewRowIndex_(self, v10, v5, v11, v12), (v13 | (v9 << 32)) != 0x7FFF7FFFFFFFLL) && (v5 != 0x7FFFFFFFLL ? (v14 = WORD2(v5) == 0x7FFFLL) : (v14 = 0), !v14 ? (v15 = 0) : (v15 = 1), v9 == 0x7FFF ? (v16 = v13 == 0x7FFFFFFF) : (v16 = 1), v16 ? (v17 = 0) : (v17 = 1), v15 == v17 && (v9 != 0x7FFF ? (v18 = v13 == 0x7FFFFFFF) : (v18 = 0), v18 ? (v19 = 0) : (v19 = 1), v5 == 0x7FFFFFFFLL ? (v20 = WORD2(v5) == 0x7FFFLL) : (v20 = 1), !v20 ? (v21 = 0) : (v21 = 1), v21 == v19)))
  {
    v7 = v5 & 0x100000000000000;
    v8 = v5 & 0x1000000000000;
    v5 = v13 | (v9 << 32);
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v5 = 0x7FFF7FFFFFFFLL;
  }

  return (v7 | v8 | v5 & 0xFFFFFFFFFFFFLL);
}

- (TSUViewCellCoord)viewCellCoordForBaseCellCoord:(TSUModelCellCoord)a3
{
  v5 = a3;
  if (self->_isIdentityMapping)
  {
    v6 = *&a3 & 0xFF00000000000000;
    v7 = *&a3 & 0xFF000000000000;
  }

  else if ((*&a3 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && (v9 = objc_msgSend_viewColumnIndexForBaseColumnIndex_(self, a2, a3._coord.column, v3, v4), v13 = objc_msgSend_viewRowIndexForBaseRowIndex_(self, v10, v5, v11, v12), (v13 | (v9 << 32)) != 0x7FFF7FFFFFFFLL) && (v5 != 0x7FFFFFFFLL ? (v14 = WORD2(v5) == 0x7FFFLL) : (v14 = 0), !v14 ? (v15 = 0) : (v15 = 1), v9 == 0x7FFF ? (v16 = v13 == 0x7FFFFFFF) : (v16 = 1), v16 ? (v17 = 0) : (v17 = 1), v15 == v17 && (v9 != 0x7FFF ? (v18 = v13 == 0x7FFFFFFF) : (v18 = 0), v18 ? (v19 = 0) : (v19 = 1), v5 == 0x7FFFFFFFLL ? (v20 = WORD2(v5) == 0x7FFFLL) : (v20 = 1), !v20 ? (v21 = 0) : (v21 = 1), v21 == v19)))
  {
    v6 = v5 & 0x100000000000000;
    v7 = v5 & 0x1000000000000;
    v5 = v13 | (v9 << 32);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0x7FFF7FFFFFFFLL;
  }

  return (v6 | v7 | v5 & 0xFFFFFFFFFFFFLL);
}

- (TSUViewCellCoord)viewCellCoordForChromeCellCoord:(TSUChromeCellCoord)a3
{
  v5 = a3;
  if (self->_isIdentityMapping || self->_chromeCoordsAreViewCoords)
  {
    v7 = *&a3 & 0xFF00000000000000;
    v8 = *&a3 & 0xFF000000000000;
  }

  else if ((*&a3 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && (v9 = objc_msgSend_viewColumnIndexForChromeColumnIndex_(self, a2, a3._coord.column, v3, v4), v13 = objc_msgSend_viewRowIndexForChromeRowIndex_(self, v10, v5, v11, v12), (v13 | (v9 << 32)) != 0x7FFF7FFFFFFFLL) && (v5 != 0x7FFFFFFFLL ? (v14 = WORD2(v5) == 0x7FFFLL) : (v14 = 0), !v14 ? (v15 = 0) : (v15 = 1), v9 == 0x7FFF ? (v16 = v13 == 0x7FFFFFFF) : (v16 = 1), v16 ? (v17 = 0) : (v17 = 1), v15 == v17 && (v9 != 0x7FFF ? (v18 = v13 == 0x7FFFFFFF) : (v18 = 0), v18 ? (v19 = 0) : (v19 = 1), v5 == 0x7FFFFFFFLL ? (v20 = WORD2(v5) == 0x7FFFLL) : (v20 = 1), !v20 ? (v21 = 0) : (v21 = 1), v21 == v19)))
  {
    v7 = v5 & 0x100000000000000;
    v8 = v5 & 0x1000000000000;
    v5 = v13 | (v9 << 32);
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v5 = 0x7FFF7FFFFFFFLL;
  }

  return (v7 | v8 | v5 & 0xFFFFFFFFFFFFLL);
}

- (TSUModelCellCoord)summaryCellCoordForViewCellCoord:(TSUViewCellCoord)a3
{
  v5 = 0x7FFF7FFFFFFFLL;
  if (self->_isIdentityMapping || (*&a3 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || (v8 = objc_msgSend_summaryColumnIndexForViewColumnIndex_(self, a2, a3._coord.column, v3, v4), v12 = objc_msgSend_summaryRowIndexForViewRowIndex_(self, v9, a3._coord.row, v10, v11), (v12 | (v8 << 32)) == 0x7FFF7FFFFFFFLL) || (a3._coord.row != 0x7FFFFFFFLL ? (v13 = a3._coord.column == 0x7FFFLL) : (v13 = 0), !v13 ? (v14 = 0) : (v14 = 1), v8 == 0x7FFF ? (v15 = v12 == 0x7FFFFFFF) : (v15 = 1), v15 ? (v16 = 0) : (v16 = 1), v14 != v16 || (v8 != 0x7FFF ? (v17 = v12 == 0x7FFFFFFF) : (v17 = 0), v17 ? (v18 = 0) : (v18 = 1), a3._coord.row == 0x7FFFFFFFLL ? (v19 = a3._coord.column == 0x7FFFLL) : (v19 = 1), !v19 ? (v20 = 0) : (v20 = 1), v20 != v18)))
  {
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v22 = *&a3 & 0x100000000000000;
    v21 = *&a3 & 0x1000000000000;
    v5 = v12 | (v8 << 32);
  }

  return (v22 | v21 | v5);
}

- (TSUViewCellCoord)viewCellCoordForSummaryCellCoord:(TSUModelCellCoord)a3
{
  v5 = 0x7FFF7FFFFFFFLL;
  if (self->_isIdentityMapping || (*&a3 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || (v8 = objc_msgSend_viewColumnIndexForSummaryColumnIndex_(self, a2, a3._coord.column, v3, v4), v12 = objc_msgSend_viewRowIndexForSummaryRowIndex_(self, v9, a3._coord.row, v10, v11), (v12 | (v8 << 32)) == 0x7FFF7FFFFFFFLL) || (a3._coord.row != 0x7FFFFFFFLL ? (v13 = a3._coord.column == 0x7FFFLL) : (v13 = 0), !v13 ? (v14 = 0) : (v14 = 1), v8 == 0x7FFF ? (v15 = v12 == 0x7FFFFFFF) : (v15 = 1), v15 ? (v16 = 0) : (v16 = 1), v14 != v16 || (v8 != 0x7FFF ? (v17 = v12 == 0x7FFFFFFF) : (v17 = 0), v17 ? (v18 = 0) : (v18 = 1), a3._coord.row == 0x7FFFFFFFLL ? (v19 = a3._coord.column == 0x7FFFLL) : (v19 = 1), !v19 ? (v20 = 0) : (v20 = 1), v20 != v18)))
  {
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v22 = *&a3 & 0x100000000000000;
    v21 = *&a3 & 0x1000000000000;
    v5 = v12 | (v8 << 32);
  }

  return (v22 | v21 | v5);
}

- (RefTypeHolder<TSCECellRef,)baseCellRefForChromeCellRef:()RefTypeHolder<TSCECellRef
{
  if (LOBYTE(self->_ref._tableUID._lower) == 1)
  {
    *retstr = *a4;
  }

  else
  {
    self = objc_msgSend_baseCellCoordForChromeCellCoord_(self, a3, *a4, v4, v5);
    retstr->_ref.coordinate = self;
    retstr->_ref._tableUID = *(a4 + 8);
  }

  return self;
}

- (RefTypeHolder<TSCECellRef,)baseCellRefForViewCellRef:()RefTypeHolder<TSCECellRef
{
  if (LOBYTE(self->_ref._tableUID._lower) == 1)
  {
    *retstr = *a4;
  }

  else
  {
    self = objc_msgSend_baseCellCoordForViewCellCoord_(self, a3, *a4, v4, v5);
    retstr->_ref.coordinate = self;
    retstr->_ref._tableUID = *(a4 + 8);
  }

  return self;
}

- (RefTypeHolder<TSCECellRef,)chromeCellRefForBaseCellRef:()RefTypeHolder<TSCECellRef
{
  if (LOBYTE(self->var0._tableUID._lower) == 1)
  {
    *retstr = *a4;
  }

  else
  {
    self = objc_msgSend_chromeCellCoordForBaseCellCoord_(self, a3, *a4, v4, v5);
    retstr->var0.coordinate = self;
    retstr->var0._tableUID = *(a4 + 8);
  }

  return self;
}

- (RefTypeHolder<TSCECellRef,)chromeCellRefForViewCellRef:()RefTypeHolder<TSCECellRef
{
  if ((self->var0._tableUID._lower & 1) != 0 || BYTE1(self->var0._tableUID._lower) == 1)
  {
    *retstr = *a4;
  }

  else
  {
    self = objc_msgSend_chromeCellCoordForViewCellCoord_(self, a3, *a4, v4, v5);
    retstr->var0.coordinate = self;
    retstr->var0._tableUID = *(a4 + 8);
  }

  return self;
}

- (RefTypeHolder<TSCECellRef,)viewCellRefForBaseCellRef:()RefTypeHolder<TSCECellRef
{
  if (LOBYTE(self->var0._tableUID._lower) == 1)
  {
    *retstr = *a4;
  }

  else
  {
    self = objc_msgSend_viewCellCoordForBaseCellCoord_(self, a3, *a4, v4, v5);
    retstr->var0.coordinate = self;
    retstr->var0._tableUID = *(a4 + 8);
  }

  return self;
}

- (RefTypeHolder<TSCECellRef,)viewCellRefForChromeCellRef:()RefTypeHolder<TSCECellRef
{
  if ((self->var0._tableUID._lower & 1) != 0 || BYTE1(self->var0._tableUID._lower) == 1)
  {
    *retstr = *a4;
  }

  else
  {
    self = objc_msgSend_viewCellCoordForChromeCellCoord_(self, a3, *a4, v4, v5);
    retstr->var0.coordinate = self;
    retstr->var0._tableUID = *(a4 + 8);
  }

  return self;
}

- (RefTypeHolder<TSCERangeRef,)chromeRangeRefForViewRangeRef:()RefTypeHolder<TSCERangeRef
{
  if ((self->var0.range._bottomRight.row & 1) != 0 || (v8 = self, BYTE1(self->var0.range._bottomRight.row) == 1))
  {
    range = *a4;
    tableUID = *(a4 + 1);
LABEL_4:
    retstr->var0.range = range;
    retstr->var0._tableUID = tableUID;
    return self;
  }

  v27 = objc_msgSend_chromeCellCoordForViewCellCoord_(self, a3, *a4, v4, v5);
  v26 = objc_msgSend_chromeCellCoordForViewCellCoord_(v8, v11, *(a4 + 1), v12, v13);
  self = TSUCellCoord::adjustCoordsToBeTopLeftBottomRight(&v27, &v26, v14);
  if ((*&v27 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && (*&v26 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    v16 = (*&v27 & 0xFFFF00000000) != 0x7FFF00000000 || v27.row == 0x7FFFFFFFLL;
    v17 = !v16;
    v18 = (*&v26 & 0xFFFF00000000) != 0x7FFF00000000 || v26.row == 0x7FFFFFFFLL;
    v19 = !v18;
    if (v19 == v17)
    {
      v20 = v27.row != 0x7FFFFFFFLL || (*&v27 & 0xFFFF00000000) == 0x7FFF00000000;
      v21 = !v20;
      v22 = v26.row != 0x7FFFFFFFLL || (*&v26 & 0xFFFF00000000) == 0x7FFF00000000;
      v23 = v22;
      if (v23 != v21)
      {
        v25.range._topLeft = v27;
        v25.range._bottomRight = v26;
        v25._tableUID = *(a4 + 1);
        v24._flags = TSCERangeRef::preserveFlags(a4);
        self = TSCERangeRef::setPreserveFlags(&v25, &v24);
        range = v25.range;
        tableUID = v25._tableUID;
        goto LABEL_4;
      }
    }
  }

  retstr->var0._tableUID._lower = 0;
  retstr->var0._tableUID._upper = 0;
  retstr->var0.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  return self;
}

- (RefTypeHolder<TSCERangeRef,)viewRangeRefForChromeRangeRef:()RefTypeHolder<TSCERangeRef
{
  if ((self->var0.range._bottomRight.row & 1) != 0 || (v8 = self, BYTE1(self->var0.range._bottomRight.row) == 1))
  {
    range = *a4;
    tableUID = *(a4 + 1);
LABEL_4:
    retstr->var0.range = range;
    retstr->var0._tableUID = tableUID;
    return self;
  }

  v27 = objc_msgSend_viewCellCoordForChromeCellCoord_(self, a3, *a4, v4, v5);
  v26 = objc_msgSend_viewCellCoordForChromeCellCoord_(v8, v11, *(a4 + 1), v12, v13);
  self = TSUCellCoord::adjustCoordsToBeTopLeftBottomRight(&v27, &v26, v14);
  if ((*&v27 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && (*&v26 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    v16 = (*&v27 & 0xFFFF00000000) != 0x7FFF00000000 || v27.row == 0x7FFFFFFFLL;
    v17 = !v16;
    v18 = (*&v26 & 0xFFFF00000000) != 0x7FFF00000000 || v26.row == 0x7FFFFFFFLL;
    v19 = !v18;
    if (v19 == v17)
    {
      v20 = v27.row != 0x7FFFFFFFLL || (*&v27 & 0xFFFF00000000) == 0x7FFF00000000;
      v21 = !v20;
      v22 = v26.row != 0x7FFFFFFFLL || (*&v26 & 0xFFFF00000000) == 0x7FFF00000000;
      v23 = v22;
      if (v23 != v21)
      {
        v25.range._topLeft = v27;
        v25.range._bottomRight = v26;
        v25._tableUID = *(a4 + 1);
        v24._flags = TSCERangeRef::preserveFlags(a4);
        self = TSCERangeRef::setPreserveFlags(&v25, &v24);
        range = v25.range;
        tableUID = v25._tableUID;
        goto LABEL_4;
      }
    }
  }

  retstr->var0._tableUID._lower = 0;
  retstr->var0._tableUID._upper = 0;
  retstr->var0.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  return self;
}

- (id)baseTractRefForChromeTractRef:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_isIdentityMapping)
  {
    v10 = objc_msgSend_copy(v4, v5, v6, v7, v8);
    goto LABEL_19;
  }

  if (objc_msgSend_isValid(v4, v5, v6, v7, v8))
  {
    v15 = objc_msgSend_columns(v9, v11, v12, v13, v14);
    v16 = TSUIndexSet::asNSIndexSet(v15);
    v20 = objc_msgSend_baseColumnIndexesForChromeColumnIndexes_(self, v17, v16, v18, v19);

    v25 = objc_msgSend_rows(v9, v21, v22, v23, v24);
    v26 = TSUIndexSet::asNSIndexSet(v25);
    v30 = objc_msgSend_baseRowIndexesForChromeRowIndexes_(self, v27, v26, v28, v29);

    v31 = [TSCECellTractRef alloc];
    MEMORY[0x223D9F7A0](&v91, v20);
    MEMORY[0x223D9F7A0](&v90, v30);
    v89[0] = objc_msgSend_tableUID(v9, v32, v33, v34, v35);
    v89[1] = v36;
    v10 = objc_msgSend_initWithColumns_rows_tableUID_(v31, v36, &v91, &v90, v89);
    TSUIndexSet::~TSUIndexSet(&v90);
    TSUIndexSet::~TSUIndexSet(&v91);
    if (objc_msgSend_spansAllRows(v9, v37, v38, v39, v40))
    {
      objc_msgSend_setSpansAllRows_(v10, v41, 1, v43, v44);
      v49 = objc_msgSend_count(v20, v45, v46, v47, v48);
    }

    else if (objc_msgSend_spansAllColumns(v9, v41, v42, v43, v44))
    {
      objc_msgSend_setSpansAllColumns_(v10, v54, 1, v56, v57);
      v49 = objc_msgSend_count(v30, v58, v59, v60, v61);
    }

    else
    {
      if (!objc_msgSend_count(v20, v54, v55, v56, v57))
      {
LABEL_12:

        v10 = 0;
LABEL_13:
        v66 = objc_msgSend_preserveFlags(v9, v50, v51, v52, v53);
        v71 = v66;
        *&v91 = v66;
        if (v66)
        {
          if (v66 != 15)
          {
            v72 = objc_msgSend_topLeft(v10, v67, v68, v69, v70);
            v77 = objc_msgSend_bottomRight(v10, v73, v74, v75, v76);
            LODWORD(v72) = objc_msgSend_viewCellCoordForBaseCellCoord_(self, v78, v72, v79, v80);
            if (v72 > objc_msgSend_viewCellCoordForBaseCellCoord_(self, v81, v77, v82, v83))
            {
              v71 = TSUPreserveFlags::swapRowFlags(&v91);
              *&v91 = v71;
            }
          }
        }

        objc_msgSend_setPreserveFlags_(v10, v67, v71, v69, v70);

        goto LABEL_18;
      }

      v49 = objc_msgSend_count(v30, v62, v63, v64, v65);
    }

    if (v49)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = 0;
LABEL_18:
  v84 = objc_msgSend_preserveRectangular(v9, v11, v12, v13, v14);
  objc_msgSend_setPreserveRectangular_(v10, v85, v84, v86, v87);
LABEL_19:

  return v10;
}

- (id)baseTractRefForViewTractRef:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_isIdentityMapping)
  {
    v10 = objc_msgSend_copy(v4, v5, v6, v7, v8);
    goto LABEL_19;
  }

  if (objc_msgSend_isValid(v4, v5, v6, v7, v8))
  {
    v15 = objc_msgSend_columns(v9, v11, v12, v13, v14);
    v16 = TSUIndexSet::asNSIndexSet(v15);
    v20 = objc_msgSend_baseColumnIndexesForViewColumnIndexes_(self, v17, v16, v18, v19);

    v25 = objc_msgSend_rows(v9, v21, v22, v23, v24);
    v26 = TSUIndexSet::asNSIndexSet(v25);
    v30 = objc_msgSend_baseRowIndexesForViewRowIndexes_(self, v27, v26, v28, v29);

    v31 = [TSCECellTractRef alloc];
    MEMORY[0x223D9F7A0](&v91, v20);
    MEMORY[0x223D9F7A0](&v90, v30);
    v89[0] = objc_msgSend_tableUID(v9, v32, v33, v34, v35);
    v89[1] = v36;
    v10 = objc_msgSend_initWithColumns_rows_tableUID_(v31, v36, &v91, &v90, v89);
    TSUIndexSet::~TSUIndexSet(&v90);
    TSUIndexSet::~TSUIndexSet(&v91);
    if (objc_msgSend_spansAllRows(v9, v37, v38, v39, v40))
    {
      objc_msgSend_setSpansAllRows_(v10, v41, 1, v43, v44);
      v49 = objc_msgSend_count(v20, v45, v46, v47, v48);
    }

    else if (objc_msgSend_spansAllColumns(v9, v41, v42, v43, v44))
    {
      objc_msgSend_setSpansAllColumns_(v10, v54, 1, v56, v57);
      v49 = objc_msgSend_count(v30, v58, v59, v60, v61);
    }

    else
    {
      if (!objc_msgSend_count(v20, v54, v55, v56, v57))
      {
LABEL_12:

        v10 = 0;
LABEL_13:
        v66 = objc_msgSend_preserveFlags(v9, v50, v51, v52, v53);
        v71 = v66;
        *&v91 = v66;
        if (v66)
        {
          if (v66 != 15)
          {
            v72 = objc_msgSend_topLeft(v10, v67, v68, v69, v70);
            v77 = objc_msgSend_bottomRight(v10, v73, v74, v75, v76);
            LODWORD(v72) = objc_msgSend_viewCellCoordForBaseCellCoord_(self, v78, v72, v79, v80);
            if (v72 > objc_msgSend_viewCellCoordForBaseCellCoord_(self, v81, v77, v82, v83))
            {
              v71 = TSUPreserveFlags::swapRowFlags(&v91);
              *&v91 = v71;
            }
          }
        }

        objc_msgSend_setPreserveFlags_(v10, v67, v71, v69, v70);

        goto LABEL_18;
      }

      v49 = objc_msgSend_count(v30, v62, v63, v64, v65);
    }

    if (v49)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = 0;
LABEL_18:
  v84 = objc_msgSend_preserveRectangular(v9, v11, v12, v13, v14);
  objc_msgSend_setPreserveRectangular_(v10, v85, v84, v86, v87);
LABEL_19:

  return v10;
}

- (id)chromeTractRefForBaseTractRef:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_isIdentityMapping)
  {
    v10 = objc_msgSend_copy(v4, v5, v6, v7, v8);
  }

  else
  {
    v11 = objc_msgSend_viewTractRefForBaseTractRef_(self, v5, v4, v7, v8);
    v10 = objc_msgSend_chromeTractRefForViewTractRef_(self, v12, v11, v13, v14);
  }

  return v10;
}

- (id)chromeTractRefForViewTractRef:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_isIdentityMapping || self->_chromeCoordsAreViewCoords)
  {
    v10 = objc_msgSend_copy(v4, v5, v6, v7, v8);
    goto LABEL_4;
  }

  if (!objc_msgSend_isValid(v4, v5, v6, v7, v8))
  {
    v10 = 0;
    goto LABEL_4;
  }

  v16 = objc_msgSend_columns(v9, v12, v13, v14, v15);
  v17 = TSUIndexSet::asNSIndexSet(v16);
  v21 = objc_msgSend_chromeColumnIndexesForViewColumnIndexes_(self, v18, v17, v19, v20);

  v26 = objc_msgSend_rows(v9, v22, v23, v24, v25);
  v27 = TSUIndexSet::asNSIndexSet(v26);
  v31 = objc_msgSend_chromeRowIndexesForViewRowIndexes_(self, v28, v27, v29, v30);

  v32 = [TSCECellTractRef alloc];
  MEMORY[0x223D9F7A0](&v106, v21);
  MEMORY[0x223D9F7A0](&v105, v31);
  v104[0] = objc_msgSend_tableUID(v9, v33, v34, v35, v36);
  v104[1] = v37;
  v10 = objc_msgSend_initWithColumns_rows_tableUID_(v32, v37, &v106, &v105, v104);
  TSUIndexSet::~TSUIndexSet(&v105);
  TSUIndexSet::~TSUIndexSet(&v106);
  if (objc_msgSend_spansAllRows(v9, v38, v39, v40, v41))
  {
    objc_msgSend_setSpansAllRows_(v10, v42, 1, v44, v45);
    if (!objc_msgSend_count(v21, v46, v47, v48, v49))
    {
      v54 = MEMORY[0x277D81150];
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "[TSCECoordMapper chromeTractRefForViewTractRef:]", v52, v53);
      v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECoordMapper.mm", v57, v58);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v60, v55, v59, 1123, 0, "Not able to find valid indexes");
LABEL_15:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76, v77);
    }
  }

  else
  {
    if (!objc_msgSend_spansAllColumns(v9, v42, v43, v44, v45))
    {
      if (!objc_msgSend_count(v21, v61, v62, v63, v64) || !objc_msgSend_count(v31, v50, v51, v52, v53))
      {
        if (objc_msgSend_isValid(v9, v50, v51, v52, v53))
        {
          v81 = MEMORY[0x277D81150];
          v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "[TSCECoordMapper chromeTractRefForViewTractRef:]", v79, v80);
          v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECoordMapper.mm", v84, v85);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v87, v82, v86, 1129, 0, "Wasn't expecting this to be possible with valid input");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89, v90, v91);
        }

        v10 = 0;
      }

      goto LABEL_21;
    }

    objc_msgSend_setSpansAllColumns_(v10, v61, 1, v63, v64);
    if (!objc_msgSend_count(v31, v65, v66, v67, v68))
    {
      v69 = MEMORY[0x277D81150];
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "[TSCECoordMapper chromeTractRefForViewTractRef:]", v52, v53);
      v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECoordMapper.mm", v71, v72);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v73, v55, v59, 1126, 0, "Not able to find valid indexes");
      goto LABEL_15;
    }
  }

LABEL_21:
  v92 = objc_msgSend_preserveFlags(v9, v50, v51, v52, v53);
  objc_msgSend_setPreserveFlags_(v10, v93, v92, v94, v95);
  v100 = objc_msgSend_preserveRectangular(v9, v96, v97, v98, v99);
  objc_msgSend_setPreserveRectangular_(v10, v101, v100, v102, v103);

LABEL_4:

  return v10;
}

- (id)viewTractRefForBaseTractRef:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_isIdentityMapping)
  {
    v10 = objc_msgSend_copy(v4, v5, v6, v7, v8);
    goto LABEL_19;
  }

  if (objc_msgSend_isValid(v4, v5, v6, v7, v8))
  {
    v15 = objc_msgSend_columns(v9, v11, v12, v13, v14);
    v16 = TSUIndexSet::asNSIndexSet(v15);
    v20 = objc_msgSend_viewColumnIndexesForBaseColumnIndexes_(self, v17, v16, v18, v19);

    v25 = objc_msgSend_rows(v9, v21, v22, v23, v24);
    v26 = TSUIndexSet::asNSIndexSet(v25);
    v30 = objc_msgSend_viewRowIndexesForBaseRowIndexes_(self, v27, v26, v28, v29);

    v31 = [TSCECellTractRef alloc];
    MEMORY[0x223D9F7A0](&v91, v20);
    MEMORY[0x223D9F7A0](&v90, v30);
    v89[0] = objc_msgSend_tableUID(v9, v32, v33, v34, v35);
    v89[1] = v36;
    v10 = objc_msgSend_initWithColumns_rows_tableUID_(v31, v36, &v91, &v90, v89);
    TSUIndexSet::~TSUIndexSet(&v90);
    TSUIndexSet::~TSUIndexSet(&v91);
    if (objc_msgSend_spansAllRows(v9, v37, v38, v39, v40))
    {
      objc_msgSend_setSpansAllRows_(v10, v41, 1, v43, v44);
      v49 = objc_msgSend_count(v20, v45, v46, v47, v48);
    }

    else if (objc_msgSend_spansAllColumns(v9, v41, v42, v43, v44))
    {
      objc_msgSend_setSpansAllColumns_(v10, v54, 1, v56, v57);
      v49 = objc_msgSend_count(v30, v58, v59, v60, v61);
    }

    else
    {
      if (!objc_msgSend_count(v20, v54, v55, v56, v57))
      {
LABEL_12:

        v10 = 0;
LABEL_13:
        v66 = objc_msgSend_preserveFlags(v9, v50, v51, v52, v53);
        v71 = v66;
        *&v91 = v66;
        if (v66)
        {
          if (v66 != 15)
          {
            v72 = objc_msgSend_topLeft(v10, v67, v68, v69, v70);
            v77 = objc_msgSend_bottomRight(v10, v73, v74, v75, v76);
            LODWORD(v72) = objc_msgSend_baseCellCoordForViewCellCoord_(self, v78, v72, v79, v80);
            if (v72 > objc_msgSend_baseCellCoordForViewCellCoord_(self, v81, v77, v82, v83))
            {
              v71 = TSUPreserveFlags::swapRowFlags(&v91);
              *&v91 = v71;
            }
          }
        }

        objc_msgSend_setPreserveFlags_(v10, v67, v71, v69, v70);

        goto LABEL_18;
      }

      v49 = objc_msgSend_count(v30, v62, v63, v64, v65);
    }

    if (v49)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = 0;
LABEL_18:
  v84 = objc_msgSend_preserveRectangular(v9, v11, v12, v13, v14);
  objc_msgSend_setPreserveRectangular_(v10, v85, v84, v86, v87);
LABEL_19:

  return v10;
}

- (id)viewTractRefForChromeTractRef:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_isIdentityMapping || self->_chromeCoordsAreViewCoords)
  {
    v10 = objc_msgSend_copy(v4, v5, v6, v7, v8);
    goto LABEL_4;
  }

  if (!objc_msgSend_isValid(v4, v5, v6, v7, v8))
  {
    v10 = 0;
    goto LABEL_4;
  }

  v16 = objc_msgSend_columns(v9, v12, v13, v14, v15);
  v17 = TSUIndexSet::asNSIndexSet(v16);
  v21 = objc_msgSend_viewColumnIndexesForChromeColumnIndexes_(self, v18, v17, v19, v20);

  v26 = objc_msgSend_rows(v9, v22, v23, v24, v25);
  v27 = TSUIndexSet::asNSIndexSet(v26);
  v31 = objc_msgSend_viewRowIndexesForChromeRowIndexes_(self, v28, v27, v29, v30);

  v32 = [TSCECellTractRef alloc];
  MEMORY[0x223D9F7A0](&v81, v21);
  MEMORY[0x223D9F7A0](&v80, v31);
  v79[0] = objc_msgSend_tableUID(v9, v33, v34, v35, v36);
  v79[1] = v37;
  v10 = objc_msgSend_initWithColumns_rows_tableUID_(v32, v37, &v81, &v80, v79);
  TSUIndexSet::~TSUIndexSet(&v80);
  TSUIndexSet::~TSUIndexSet(&v81);
  if (objc_msgSend_spansAllRows(v9, v38, v39, v40, v41))
  {
    objc_msgSend_setSpansAllRows_(v10, v42, 1, v44, v45);
    v50 = objc_msgSend_count(v21, v46, v47, v48, v49);
  }

  else if (objc_msgSend_spansAllColumns(v9, v42, v43, v44, v45))
  {
    objc_msgSend_setSpansAllColumns_(v10, v55, 1, v57, v58);
    v50 = objc_msgSend_count(v31, v59, v60, v61, v62);
  }

  else
  {
    if (!objc_msgSend_count(v21, v55, v56, v57, v58))
    {
LABEL_16:

      v10 = 0;
      goto LABEL_17;
    }

    v50 = objc_msgSend_count(v31, v63, v64, v65, v66);
  }

  if (!v50)
  {
    goto LABEL_16;
  }

LABEL_17:
  v67 = objc_msgSend_preserveFlags(v9, v51, v52, v53, v54);
  objc_msgSend_setPreserveFlags_(v10, v68, v67, v69, v70);
  v75 = objc_msgSend_preserveRectangular(v9, v71, v72, v73, v74);
  objc_msgSend_setPreserveRectangular_(v10, v76, v75, v77, v78);

LABEL_4:

  return v10;
}

- (id)baseShuffleMapForViewShuffleMap:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    if (self->_isIdentityMapping)
    {
      v10 = objc_msgSend_copy(v4, v5, v6, v7, v8);
    }

    else
    {
      v11 = objc_msgSend_sourceIndexes(v4, v5, v6, v7, v8);
      v15 = objc_msgSend_baseRowIndexesForViewRowIndexes_(self, v12, v11, v13, v14);
      v16 = objc_alloc(MEMORY[0x277D806D0]);
      Index = objc_msgSend_firstIndex(v15, v17, v18, v19, v20);
      v26 = objc_msgSend_lastIndex(v15, v22, v23, v24, v25);
      started = objc_msgSend_initWithStartIndex_endIndex_(v16, v27, Index, v26, v28);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = sub_2211DB844;
      v34[3] = &unk_278460FD0;
      v34[4] = self;
      v10 = started;
      v35 = v10;
      objc_msgSend_enumerateMappingFollowingSwapsUsingBlock_(v9, v30, v34, v31, v32);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 16) = 1065353216;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 26) = 1065353216;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 44) = 1065353216;
  *(self + 184) = 0u;
  *(self + 200) = 0u;
  *(self + 54) = 1065353216;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 64) = 1065353216;
  *(self + 264) = 0u;
  *(self + 280) = 0u;
  *(self + 74) = 1065353216;
  *(self + 19) = 0u;
  *(self + 20) = 0u;
  *(self + 84) = 1065353216;
  *(self + 344) = 0u;
  *(self + 360) = 0u;
  *(self + 94) = 1065353216;
  return self;
}

@end