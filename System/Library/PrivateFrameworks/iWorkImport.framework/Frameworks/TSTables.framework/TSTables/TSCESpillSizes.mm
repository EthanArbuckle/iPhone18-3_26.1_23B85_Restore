@interface TSCESpillSizes
- ($85CD2974BE96D4886BB301820D1C36C2)spillSizeForCell:(const TSUCellCoord *)cell;
- (BOOL)hasSpillingCellsIntersectingRange:(const TSUCellRect *)range;
- (BOOL)hasSpillsOverlappingRange:(const TSUCellRect *)range outSpillRects:(void *)rects;
- (TSCECellCoordSet)cellCoordsWithSpillSizes;
- (TSCECellCoordSet)cellCoordsWithSpillsInRange:(SEL)range;
- (TSCESpillSizes)initWithDependTracker:(id)tracker ownerID:(unsigned __int16)d;
- (TSKUIDStruct)ownerUID;
- (id).cxx_construct;
- (id)description;
- (void)clearSpillSizeForCell:(const TSUCellCoord *)cell;
- (void)encodeToArchive:(void *)archive;
- (void)readFromArchive:(const void *)archive;
- (void)replaceSpillSizeForCell:(const TSUCellCoord *)cell spillSize:(id)size;
@end

@implementation TSCESpillSizes

- (TSCESpillSizes)initWithDependTracker:(id)tracker ownerID:(unsigned __int16)d
{
  v7.receiver = self;
  v7.super_class = TSCESpillSizes;
  result = [(TSCESpillSizes *)&v7 init];
  if (result)
  {
    result->_dependencyTracker = tracker;
    result->_internalOwnerID = d;
  }

  return result;
}

- (void)replaceSpillSizeForCell:(const TSUCellCoord *)cell spillSize:(id)size
{
  if (size == 0x100000001)
  {

    objc_msgSend_clearSpillSizeForCell_(self, a2, cell, 0x100000001, v4);
  }

  else
  {
    v22.row = cell->row;
    v22.column = cell->column;
    v8 = objc_msgSend_spillSizeForCell_(self, a2, &v22, *&size, v4);
    if (v8 != 0x100000001)
    {
      v21.origin = *cell;
      v21.size = v8;
      v9 = TSUCellRect::columns(&v21);
      v11 = v10;
      v12 = TSUCellRect::rows(&v21);
      sub_2215C3428(&self->_spilledToCoords, v9, v11, v12, v13);
    }

    v21.origin = &v22;
    sub_221486FA4(&self->_spillSizeForCell.__table_.__bucket_list_.__ptr_, &v22)[3] = size;
    v21.origin = *cell;
    v21.size = size;
    v14 = TSUCellRect::columns(&v21);
    v16 = v15;
    v17 = TSUCellRect::rows(&v21);
    sub_2215C32FC(&self->_spilledToCoords, v14, v16, v17, v18);
    p_verticalSpills = &self->_verticalSpills;
    if (*&size >> 33)
    {
      TSCECellCoordSet::addCellCoord(p_verticalSpills, &v22);
    }

    else
    {
      TSCECellCoordSet::removeCellCoord(p_verticalSpills, &v22);
    }

    p_horizontalSpills = &self->_horizontalSpills;
    if ((size.var0 & 0xFFFFFFFE) != 0)
    {
      TSCECellCoordSet::addCellCoord(p_horizontalSpills, &v22);
    }

    else
    {
      TSCECellCoordSet::removeCellCoord(p_horizontalSpills, &v22);
    }
  }
}

- (void)clearSpillSizeForCell:(const TSUCellCoord *)cell
{
  v14.row = cell->row;
  v14.column = cell->column;
  v7 = objc_msgSend_spillSizeForCell_(self, a2, &v14, v3, v4);
  if (v7 != 0x100000001)
  {
    v13.origin = *cell;
    v13.size = v7;
    v8 = TSUCellRect::columns(&v13);
    v10 = v9;
    v11 = TSUCellRect::rows(&v13);
    sub_2215C3428(&self->_spilledToCoords, v8, v10, v11, v12);
  }

  sub_2214136D8(&self->_spillSizeForCell.__table_.__bucket_list_.__ptr_, &v14);
  TSCECellCoordSet::removeCellCoord(&self->_verticalSpills, &v14);
  TSCECellCoordSet::removeCellCoord(&self->_horizontalSpills, &v14);
}

- ($85CD2974BE96D4886BB301820D1C36C2)spillSizeForCell:(const TSUCellCoord *)cell
{
  v5 = cell->row | (cell->column << 32);
  v3 = sub_221087F14(&self->_spillSizeForCell.__table_.__bucket_list_.__ptr_, &v5);
  if (v3)
  {
    return v3[3];
  }

  else
  {
    return 0x100000001;
  }
}

- (BOOL)hasSpillsOverlappingRange:(const TSUCellRect *)range outSpillRects:(void *)rects
{
  if (!TSUCellRect::isValid(range))
  {
    return 0;
  }

  origin = range->origin;
  if (!sub_2215C3704(&self->_spilledToCoords, WORD2(*&range->origin), *&range->origin, range->size.numberOfColumns + WORD2(*&range->origin) - 1, *&range->origin + range->size.numberOfRows - 1, 0))
  {
    return 0;
  }

  next = self->_spillSizeForCell.__table_.__first_node_.__next_;
  if (!next)
  {
    return 0;
  }

  v9 = 0;
  do
  {
    v10 = *(next + 2);
    if (v10 != origin.row || ((v10 ^ *&origin) & 0x101FFFF00000000) != 0)
    {
      v12 = *(next + 3);
      v25.origin = *(next + 2);
      v25.size = v12;
      if (TSUCellRect::intersects(range, &v25))
      {
        v14 = *(rects + 1);
        v13 = *(rects + 2);
        if (v14 >= v13)
        {
          v16 = (v14 - *rects) >> 4;
          v17 = v16 + 1;
          if ((v16 + 1) >> 60)
          {
            sub_22107C148();
          }

          v18 = v13 - *rects;
          if (v18 >> 3 > v17)
          {
            v17 = v18 >> 3;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF0)
          {
            v19 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            sub_221086F74(rects, v19);
          }

          v20 = (16 * v16);
          *v20 = v25;
          v15 = 16 * v16 + 16;
          v21 = *(rects + 1) - *rects;
          v22 = 16 * v16 - v21;
          memcpy(v20 - v21, *rects, v21);
          v23 = *rects;
          *rects = v22;
          *(rects + 1) = v15;
          *(rects + 2) = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v14 = v25;
          v15 = &v14[1];
        }

        *(rects + 1) = v15;
        v9 = 1;
      }
    }

    next = *next;
  }

  while (next);
  return v9;
}

- (BOOL)hasSpillingCellsIntersectingRange:(const TSUCellRect *)range
{
  LODWORD(v5) = TSUCellRect::isValid(range);
  if (v5)
  {
    v5 = sub_2215C3704(&self->_spilledToCoords, range->origin.column, range->origin.row, range->origin.column + range->size.numberOfColumns - 1, range->origin.row + range->size.numberOfRows - 1, 0);
    if (v5)
    {
      next = self->_spillSizeForCell.__table_.__first_node_.__next_;
      if (next)
      {
        v7 = MEMORY[0x277D813C8];
        while (1)
        {
          v29 = next[1];
          if (!TSUCellRect::intersects(&v29, range))
          {
            goto LABEL_52;
          }

          v8 = 0;
          v9 = 0x7FFFLL;
          v10 = 0x7FFFFFFF;
          if (v29.origin.row == 0x7FFFFFFF)
          {
            break;
          }

          v11 = 0;
          if ((*&v29.origin & 0xFFFF00000000) != 0x7FFF00000000)
          {
            v8 = 0;
            v9 = 0x7FFFLL;
            if (!HIDWORD(*&v29.size))
            {
              break;
            }

            v11 = 0;
            if (v29.size.numberOfColumns)
            {
              v8 = 0;
              origin = range->origin;
              v9 = 0x7FFFLL;
              if (*&range->origin == 0x7FFFFFFF)
              {
                break;
              }

              v11 = 0;
              if ((*&origin & 0xFFFF00000000) != 0x7FFF00000000)
              {
                v8 = 0;
                size = range->size;
                v9 = 0x7FFFLL;
                if (!HIDWORD(*&size))
                {
                  break;
                }

                v11 = 0;
                if (size.numberOfColumns)
                {
                  v10 = *v7;
                  v9 = *(v7 + 4);
                  v8 = *(v7 + 8);
                  v14 = HIDWORD(*&origin);
                  if (v29.origin.column <= origin.column)
                  {
                    column = origin.column;
                  }

                  else
                  {
                    column = v29.origin.column;
                  }

                  v16 = v29.origin.row + v29.size.numberOfRows - 1;
                  if (origin.row == 0x7FFFFFFF)
                  {
                    v17 = 0;
                  }

                  else
                  {
                    v17 = range->origin;
                  }

                  if (origin.row != 0x7FFFFFFF)
                  {
                    origin.row = origin.row + size.numberOfRows - 1;
                  }

                  if (v29.origin.row <= v17)
                  {
                    row = v17;
                  }

                  else
                  {
                    row = v29.origin.row;
                  }

                  if (v29.origin.column == 0x7FFF || v29.size.numberOfColumns == 0)
                  {
                    LOWORD(v20) = 0x7FFF;
                  }

                  else
                  {
                    LOWORD(v20) = LOWORD(v29.size.numberOfColumns) + v29.origin.column - 1;
                  }

                  v20 = v20;
                  if (origin.column == 0x7FFF || size.numberOfColumns == 0)
                  {
                    v22 = 0x7FFF;
                  }

                  else
                  {
                    v22 = LOWORD(size.numberOfColumns) + v14 - 1;
                  }

                  if (v20 >= v22)
                  {
                    v20 = v22;
                  }

                  if (v16 >= origin.row)
                  {
                    v16 = origin.row;
                  }

                  v23 = v16 >= row;
                  v24 = v16 - row;
                  if (v23 && column <= v20)
                  {
                    v11 = 0;
                    v8 = (v20 - column + 1) | ((v24 + 1) << 32);
                    v10 = row;
                    v9 = column;
                  }

                  else
                  {
                    v11 = *(v7 + 6) << 48;
                  }
                }
              }
            }
          }

LABEL_46:
          v25 = *(next + 2);
          if (v10 != v25 || ((v26 = ((v11 | (v9 << 32)) ^ v25) & 0x101FFFF00000000, v8 == 0x100000001) ? (v27 = v26 == 0) : (v27 = 0), !v27))
          {
            LOBYTE(v5) = 1;
            return v5;
          }

LABEL_52:
          next = *next;
          if (!next)
          {
            goto LABEL_55;
          }
        }

        v11 = 0;
        goto LABEL_46;
      }

LABEL_55:
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (TSCECellCoordSet)cellCoordsWithSpillSizes
{
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  for (i = self + 1; ; self = TSCECellCoordSet::addCellCoord(retstr, &i->_rowsPerColumn))
  {
    i = i->_rectRepresentation.origin;
    if (!i)
    {
      break;
    }
  }

  return self;
}

- (TSCECellCoordSet)cellCoordsWithSpillsInRange:(SEL)range
{
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  for (i = self[1]._rectRepresentation.origin; i; i = **&i)
  {
    v7 = *(*&i + 16);
    self = TSUCellRect::contains(a4, v7);
    if (self)
    {
      self = TSCECellCoordSet::addCellCoord(retstr, (*&i + 16));
    }
  }

  return self;
}

- (id)description
{
  v6 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, v2, v3, v4);
  for (i = self->_spillSizeForCell.__table_.__first_node_.__next_; i; i = *i)
  {
    v8 = NSStringFromTSUCellCoord();
    v9 = TSUColumnRowSizeDescriptionNxM();
    objc_msgSend_appendFormat_(v6, v10, @"  %@ -> %@\n", v11, v12, v8, v9);
  }

  return v6;
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
  v3 = *(archive + 6);
  if (v3 >= 1)
  {
    v6 = 8;
    do
    {
      v7 = *(*(archive + 4) + v6);
      v13 = 0;
      if (*(v7 + 24))
      {
        v8 = *(v7 + 24);
      }

      else
      {
        v8 = &TSCE::_CellCoordinateArchive_default_instance_;
      }

      v13 = sub_2212697C0(v8);
      if (*(v7 + 32))
      {
        v9 = *(v7 + 32);
      }

      else
      {
        v9 = &TSCE::_ColumnRowSize_default_instance_;
      }

      v10 = sub_2212698F4(v9);
      objc_msgSend_replaceSpillSizeForCell_spillSize_(self, v11, &v13, v10, v12);
      v6 += 8;
      --v3;
    }

    while (v3);
  }
}

- (void)encodeToArchive:(void *)archive
{
  next = self->_spillSizeForCell.__table_.__first_node_.__next_;
  if (next)
  {
    while (1)
    {
      v15 = *(next + 3);
      v5 = *(archive + 4);
      if (!v5)
      {
        goto LABEL_7;
      }

      v6 = *(archive + 6);
      v7 = *v5;
      if (v6 >= *v5)
      {
        break;
      }

      *(archive + 6) = v6 + 1;
      v8 = *&v5[2 * v6 + 2];
LABEL_9:
      *(v8 + 16) |= 1u;
      v11 = *(v8 + 24);
      if (!v11)
      {
        v12 = *(v8 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v12);
        *(v8 + 24) = v11;
      }

      sub_221269820(next + 4, v11);
      *(v8 + 16) |= 2u;
      v13 = *(v8 + 32);
      if (!v13)
      {
        v14 = *(v8 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ColumnRowSize>(v14);
        *(v8 + 32) = v13;
      }

      sub_2212698B8(&v15, v13);
      next = *next;
      if (!next)
      {
        return;
      }
    }

    if (v7 == *(archive + 7))
    {
LABEL_7:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 16));
      v5 = *(archive + 4);
      v7 = *v5;
    }

    *v5 = v7 + 1;
    v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellSpillSizesArchive_SpillForCell>(*(archive + 2));
    v9 = *(archive + 6);
    v10 = *(archive + 4) + 8 * v9;
    *(archive + 6) = v9 + 1;
    *(v10 + 8) = v8;
    goto LABEL_9;
  }
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 14) = 1065353216;
  *(self + 11) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 10) = self + 88;
  *(self + 17) = 0;
  *(self + 16) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 15) = self + 128;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 22) = 0;
  return self;
}

@end