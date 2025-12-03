@interface TSCEErrorsAndWarnings
- (TSCECellCoordSet)cellCoordsWithAnyErrors;
- (TSCECellCoordSet)cellCoordsWithError:(SEL)error;
- (TSCECellCoordSet)cellCoordsWithSpillingErrors;
- (TSCEErrorsAndWarnings)initWithDependTracker:(id)tracker ownerID:(unsigned __int16)d;
- (TSKUIDStruct)ownerUID;
- (const)errorCellForCell:(const TSUCellCoord *)cell;
- (id).cxx_construct;
- (unint64_t)countOfErrors;
- (void)encodeToArchive:(void *)archive;
- (void)readFromArchive:(const void *)archive;
- (void)replaceErrorForCell:(const TSUCellCoord *)cell error:(id)error errDueToCellRef:(const TSCEInternalCellReference *)ref;
- (void)setWarnings:(id)warnings forCell:(const TSUCellCoord *)cell;
@end

@implementation TSCEErrorsAndWarnings

- (TSCEErrorsAndWarnings)initWithDependTracker:(id)tracker ownerID:(unsigned __int16)d
{
  v7.receiver = self;
  v7.super_class = TSCEErrorsAndWarnings;
  result = [(TSCEErrorsAndWarnings *)&v7 init];
  if (result)
  {
    result->_dependencyTracker = tracker;
    result->_internalOwnerID = d;
  }

  return result;
}

- (void)replaceErrorForCell:(const TSUCellCoord *)cell error:(id)error errDueToCellRef:(const TSCEInternalCellReference *)ref
{
  errorCopy = error;
  v13 = errorCopy;
  if (errorCopy && objc_msgSend_errorType(errorCopy, v9, v10, v11, v12))
  {
    v24[0] = cell->row | (cell->column << 32);
    if (ref->tableID == -1 || (*&ref->coordinate & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
    {
      v14 = v13;
      v15 = sub_2214D082C(&self->_errorForCell.__table_.__bucket_list_.__ptr_, v24);
      v16 = v15[3];
      v15[3] = v14;

      v17 = v15[4];
      v15[4] = 0;

      v15[5] = 0x7FFF7FFFFFFFLL;
      v18 = 0xFFFF;
    }

    else
    {
      v19 = v13;
      coordinate = ref->coordinate;
      v23 = *&ref->tableID;
      v24[2] = v24;
      v15 = sub_2214D082C(&self->_errorForCell.__table_.__bucket_list_.__ptr_, v24);
      v20 = v15[3];
      v15[3] = v19;

      v21 = v15[4];
      v15[4] = 0;

      v15[5] = coordinate;
      v18 = v23;
    }

    *(v15 + 12) = v18;
  }

  else
  {
    objc_msgSend_clearErrorAndWarningsForCell_(self, v9, cell, v11, v12);
  }
}

- (void)setWarnings:(id)warnings forCell:(const TSUCellCoord *)cell
{
  warningsCopy = warnings;
  v24[0] = cell->row | (cell->column << 32);
  v11 = objc_msgSend_count(warningsCopy, v7, v8, v9, v10);
  v12 = sub_221087F14(&self->_errorForCell.__table_.__bucket_list_.__ptr_, v24);
  if (v12)
  {
    v13 = warningsCopy;
    if (!v11)
    {
      if (!v12[3])
      {
        sub_2214D0B10(&self->_errorForCell.__table_.__bucket_list_.__ptr_, v24);
        goto LABEL_9;
      }

      v13 = 0;
    }

    sub_2214CF598((v12 + 3), v13);
  }

  else if (v11)
  {
    sub_2214D07E4(&v20, warningsCopy);
    v24[2] = cell;
    v14 = sub_2214D082C(&self->_errorForCell.__table_.__bucket_list_.__ptr_, cell);
    v15 = v20;
    v20 = 0;
    v16 = v14[3];
    v14[3] = v15;

    v17 = v21;
    v21 = 0;
    v18 = v14[4];
    v14[4] = v17;

    v19 = v21;
    v14[5] = v22;
    *(v14 + 12) = v23;
  }

LABEL_9:
}

- (const)errorCellForCell:(const TSUCellCoord *)cell
{
  v5 = cell->row | (cell->column << 32);
  v3 = sub_221087F14(&self->_errorForCell.__table_.__bucket_list_.__ptr_, &v5);
  if (v3)
  {
    return (v3 + 3);
  }

  else
  {
    return 0;
  }
}

- (unint64_t)countOfErrors
{
  next = self->_errorForCell.__table_.__first_node_.__next_;
  if (!next)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (next[3])
    {
      ++result;
    }

    next = *next;
  }

  while (next);
  return result;
}

- (TSCECellCoordSet)cellCoordsWithAnyErrors
{
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  for (i = self[1]._rectRepresentation.origin; i; i = **&i)
  {
    if (*(*&i + 24))
    {
      self = TSCECellCoordSet::addCellCoord(retstr, (*&i + 16));
    }
  }

  return self;
}

- (TSCECellCoordSet)cellCoordsWithSpillingErrors
{
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  for (i = self[1]._rectRepresentation.origin; i; i = **&i)
  {
    self = *(*&i + 24);
    if (self)
    {
      self = objc_msgSend_errorType(self, a3, v3, v4, v5);
      if (&self[-4]._rowsPerColumn.__tree_.__begin_node_ + 6 < 3)
      {
        self = TSCECellCoordSet::addCellCoord(retstr, (*&i + 16));
      }
    }
  }

  return self;
}

- (TSCECellCoordSet)cellCoordsWithError:(SEL)error
{
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  for (i = self[1]._rectRepresentation.origin; i; i = **&i)
  {
    self = *(*&i + 24);
    if (self)
    {
      self = objc_msgSend_errorType(self, error, a4, v4, v5);
    }

    if (self == a4)
    {
      self = TSCECellCoordSet::addCellCoord(retstr, (*&i + 16));
    }
  }

  return self;
}

- (TSKUIDStruct)ownerUID
{
  v4 = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self->_dependencyTracker, a2, self->_internalOwnerID, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (void)readFromArchive:(const void *)archive
{
  v44 = *(archive + 12);
  if (v44 >= 1)
  {
    v5 = 8;
    v6 = *(archive + 12);
    do
    {
      v7 = *(*(archive + 7) + v5);
      v46 = 0;
      v47 = 0;
      v48 = 0x7FFF7FFFFFFFLL;
      v49 = 0xFFFF;
      v45 = 0;
      if (*(v7 + 48))
      {
        v8 = *(v7 + 48);
      }

      else
      {
        v8 = &TSCE::_CellCoordinateArchive_default_instance_;
      }

      v45 = sub_2212697C0(v8);
      sub_2214CFB50(&v46, v7, self->_dependencyTracker);
      v50 = &v45;
      v9 = sub_2214D082C(&self->_errorForCell.__table_.__bucket_list_.__ptr_, &v45);
      v10 = v46;
      v11 = v9[3];
      v9[3] = v46;
      v12 = v10;

      v13 = v47;
      v14 = v9[4];
      v9[4] = v47;
      v15 = v13;

      v9[5] = v48;
      *(v9 + 12) = v49;

      v5 += 8;
      --v6;
    }

    while (v6);
  }

  v16 = *(archive + 6);
  if (v44)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16 < 1;
  }

  if (!v17)
  {
    v18 = 0;
    do
    {
      v19 = *(*(archive + 4) + 8 * v18 + 8);
      v50 = 0;
      if (*(v19 + 24))
      {
        v20 = *(v19 + 24);
      }

      else
      {
        v20 = &TSCE::_CellCoordinateArchive_default_instance_;
      }

      v50 = sub_2212697C0(v20);
      v24 = objc_msgSend_possibleErrorTypeForErrorFlavor_(TSCEError, v21, *(v19 + 40), v22, v23);
      v28 = objc_msgSend_errorForErrorType_(TSCEError, v25, v24, v26, v27);
      v29 = v28;
      if ((*(v19 + 16) & 2) != 0)
      {
        v33 = sub_2215C3954(*(v19 + 32));
        v32 = v34;
        dependencyTracker = self->_dependencyTracker;
        if (dependencyTracker)
        {
          v39 = objc_msgSend_idMap(dependencyTracker, v34, v35, v36, v37);
          v40 = v32;
          if (*(v39 + 144))
          {
            v40 = sub_2212602C8(v39, v32);
          }

          v32 = v32 & 0xFFFF0000 | v40;
        }

        v41 = v29;
        v46 = &v50;
        v31 = sub_2214D082C(&self->_errorForCell.__table_.__bucket_list_.__ptr_, &v50);
      }

      else
      {
        v30 = v28;
        v46 = &v50;
        v31 = sub_2214D082C(&self->_errorForCell.__table_.__bucket_list_.__ptr_, &v50);
        v32 = 0xFFFF;
        v33 = 0x7FFF7FFFFFFFLL;
      }

      v42 = v31[3];
      v31[3] = v29;

      v43 = v31[4];
      v31[4] = 0;

      v31[5] = v33;
      *(v31 + 12) = v32;

      ++v18;
    }

    while (v18 < v16);
  }
}

- (void)encodeToArchive:(void *)archive
{
  next = self->_errorForCell.__table_.__first_node_.__next_;
  if (!next)
  {
    return;
  }

  do
  {
    v6 = *(archive + 7);
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = *(archive + 12);
    v8 = *v6;
    if (v7 < *v6)
    {
      *(archive + 12) = v7 + 1;
      v9 = *&v6[2 * v7 + 2];
      goto LABEL_9;
    }

    if (v8 == *(archive + 13))
    {
LABEL_7:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 40));
      v6 = *(archive + 7);
      v8 = *v6;
    }

    *v6 = v8 + 1;
    v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellErrorsArchive_EnhancedErrorForCell>(*(archive + 5));
    v10 = *(archive + 12);
    v11 = *(archive + 7) + 8 * v10;
    *(archive + 12) = v10 + 1;
    *(v11 + 8) = v9;
LABEL_9:
    *(v9 + 16) |= 1u;
    v12 = *(v9 + 48);
    if (!v12)
    {
      v13 = *(v9 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v13);
      *(v9 + 48) = v12;
    }

    sub_221269820(next + 4, v12);
    sub_2214CF8CC((next + 6), v9);
    next = *next;
  }

  while (next);
  v14 = self->_errorForCell.__table_.__first_node_.__next_;
  if (v14)
  {
    while (!*(v14 + 3))
    {
LABEL_37:
      v14 = *v14;
      if (!v14)
      {
        return;
      }
    }

    v15 = *(archive + 4);
    if (!v15)
    {
      goto LABEL_21;
    }

    v16 = *(archive + 6);
    v17 = *v15;
    if (v16 < *v15)
    {
      *(archive + 6) = v16 + 1;
      v18 = *&v15[2 * v16 + 2];
LABEL_23:
      *(v18 + 16) |= 1u;
      v21 = *(v18 + 24);
      if (!v21)
      {
        v22 = *(v18 + 8);
        if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v22);
        *(v18 + 24) = v21;
      }

      sub_221269820(v14 + 4, v21);
      v27 = *(v14 + 3);
      if (v27)
      {
        v28 = objc_msgSend_errorType(v27, v23, v24, v25, v26);
        v32 = objc_msgSend_errorFlavorForErrorType_(TSCEError, v29, v28, v30, v31);
      }

      else
      {
        v32 = objc_msgSend_errorFlavorForErrorType_(TSCEError, v23, 0, v25, v26);
      }

      v33 = *(v18 + 16);
      *(v18 + 16) = v33 | 4;
      *(v18 + 40) = v32;
      if (v14[24] != -1 && (*(v14 + 5) & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
      {
        *(v18 + 16) = v33 | 6;
        v34 = *(v18 + 32);
        if (!v34)
        {
          v35 = *(v18 + 8);
          if (v35)
          {
            v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
          }

          v34 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellReferenceArchive>(v35);
          *(v18 + 32) = v34;
        }

        sub_2215C38E0((v14 + 20), v34);
      }

      goto LABEL_37;
    }

    if (v17 == *(archive + 7))
    {
LABEL_21:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 16));
      v15 = *(archive + 4);
      v17 = *v15;
    }

    *v15 = v17 + 1;
    v18 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellErrorsArchive_ErrorForCell>(*(archive + 2));
    v19 = *(archive + 6);
    v20 = *(archive + 4) + 8 * v19;
    *(archive + 6) = v19 + 1;
    *(v20 + 8) = v18;
    goto LABEL_23;
  }
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 14) = 1065353216;
  return self;
}

@end