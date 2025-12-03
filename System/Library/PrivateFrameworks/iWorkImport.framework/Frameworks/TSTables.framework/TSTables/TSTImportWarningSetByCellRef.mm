@interface TSTImportWarningSetByCellRef
- (TSCECellRef)cellRefForIndex:(SEL)index;
- (id).cxx_construct;
- (id)initFromArchive:(const void *)archive;
- (id)warningSetAtCellRef:(const TSCECellRef *)ref;
- (void)addWarning:(id)warning atCellRef:(const TSCECellRef *)ref;
- (void)saveToArchive:(void *)archive;
@end

@implementation TSTImportWarningSetByCellRef

- (void)addWarning:(id)warning atCellRef:(const TSCECellRef *)ref
{
  warningCopy = warning;
  end = self->_coordinates.__end_;
  cap = self->_coordinates.__cap_;
  if (end >= cap)
  {
    begin = self->_coordinates.__begin_;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
    v14 = v13 + 1;
    if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_22107C148();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((cap - begin) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x555555555555555)
    {
      v16 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      sub_2210CDBC0(&self->_coordinates, v16);
    }

    v17 = 24 * v13;
    v18 = *&ref->coordinate.row;
    *(v17 + 16) = ref->_tableUID._upper;
    *v17 = v18;
    v11 = (24 * v13 + 24);
    v19 = self->_coordinates.__begin_;
    v20 = (self->_coordinates.__end_ - v19);
    v21 = (24 * v13 - v20);
    memcpy((v17 - v20), v19, v20);
    v22 = self->_coordinates.__begin_;
    self->_coordinates.__begin_ = v21;
    self->_coordinates.__end_ = v11;
    self->_coordinates.__cap_ = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    v10 = *&ref->coordinate.row;
    end->_tableUID._upper = ref->_tableUID._upper;
    *&end->coordinate.row = v10;
    v11 = end + 1;
  }

  self->_coordinates.__end_ = v11;
  if (warningCopy)
  {
    v23 = sub_2215930C4(&self->_warningSetForCoordinate.__table_.__bucket_list_.__ptr_, ref);
    objc_storeStrong(v23 + 5, warning);
  }
}

- (TSCECellRef)cellRefForIndex:(SEL)index
{
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  retstr->coordinate = 0x7FFF7FFFFFFFLL;
  coordinate = self[2].coordinate;
  if (0xAAAAAAAAAAAAAAABLL * ((self[2]._tableUID._lower - *&coordinate) >> 3) > a4)
  {
    *retstr = *(*&coordinate + 24 * a4);
  }

  return self;
}

- (id)warningSetAtCellRef:(const TSCECellRef *)ref
{
  v3 = sub_221244B44(&self->_warningSetForCoordinate.__table_.__bucket_list_.__ptr_, ref);
  if (v3)
  {
    v3 = v3[5];
  }

  return v3;
}

- (id)initFromArchive:(const void *)archive
{
  v23.receiver = self;
  v23.super_class = TSTImportWarningSetByCellRef;
  v4 = [(TSTImportWarningSetByCellRef *)&v23 init];
  if (v4)
  {
    v5 = *(archive + 6);
    if (v5 >= 1)
    {
      v6 = 8;
      do
      {
        TST::CellRefImportWarningSetPairArchive::CellRefImportWarningSetPairArchive(v20, *(*(archive + 4) + v6));
        if (v21)
        {
          v7 = v21;
        }

        else
        {
          v7 = TSCE::_CellReferenceArchive_default_instance_;
        }

        sub_221269DB8(v7, v19);
        if ((v20[16] & 2) != 0)
        {
          v10 = [TSTImportWarningSet alloc];
          if (v22)
          {
            v14 = objc_msgSend_initFromArchive_(v10, v11, v22, v12, v13);
          }

          else
          {
            v14 = objc_msgSend_initFromArchive_(v10, v11, &TST::_ImportWarningSetArchive_default_instance_, v12, v13);
          }

          v17 = v14;
          objc_msgSend_addWarning_atCellRef_(v4, v15, v14, v19, v16);
        }

        else
        {
          objc_msgSend_addWarning_atCellRef_(v4, v8, 0, v19, v9);
        }

        TST::CellRefImportWarningSetPairArchive::~CellRefImportWarningSetPairArchive(v20);
        v6 += 8;
        --v5;
      }

      while (v5);
    }
  }

  return v4;
}

- (void)saveToArchive:(void *)archive
{
  v7 = objc_msgSend_count(self, a2, archive, v3, v4);
  if (v7)
  {
    v11 = v7;
    v12 = 0;
    while (1)
    {
      objc_msgSend_cellRefForIndex_(self, v8, v12, v9, v10);
      v16 = objc_msgSend_warningSetAtCellRef_(self, v13, v30, v14, v15);
      v17 = *(archive + 4);
      if (!v17)
      {
        goto LABEL_8;
      }

      v18 = *(archive + 6);
      v19 = *v17;
      if (v18 >= *v17)
      {
        break;
      }

      *(archive + 6) = v18 + 1;
      v20 = *&v17[2 * v18 + 2];
LABEL_10:
      *(v20 + 16) |= 1u;
      v23 = *(v20 + 24);
      if (!v23)
      {
        v24 = *(v20 + 8);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellReferenceArchive>(v24);
        *(v20 + 24) = v23;
      }

      sub_221269A28(v30, v23);
      if (v16)
      {
        *(v20 + 16) |= 2u;
        v28 = *(v20 + 32);
        if (!v28)
        {
          v29 = *(v20 + 8);
          if (v29)
          {
            v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
          }

          v28 = google::protobuf::Arena::CreateMaybeMessage<TST::ImportWarningSetArchive>(v29);
          *(v20 + 32) = v28;
        }

        objc_msgSend_saveToArchive_(v16, v25, v28, v26, v27);
      }

      if (v11 == ++v12)
      {
        return;
      }
    }

    if (v19 == *(archive + 7))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 16));
      v17 = *(archive + 4);
      v19 = *v17;
    }

    *v17 = v19 + 1;
    v20 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRefImportWarningSetPairArchive>(*(archive + 2));
    v21 = *(archive + 6);
    v22 = *(archive + 4) + 8 * v21;
    *(archive + 6) = v21 + 1;
    *(v22 + 8) = v20;
    goto LABEL_10;
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 6) = 0;
  return self;
}

@end