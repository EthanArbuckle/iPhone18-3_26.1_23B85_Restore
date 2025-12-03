@interface TSCERangePrecedentsTile
- (BOOL)containsRect:(const TSUCellRect *)rect fromCoord:(const TSUCellCoord *)coord;
- (TSCERangePrecedentsTile)initWithOwnerId:(unsigned __int16)id context:(id)context;
- (id).cxx_construct;
- (unint64_t)numRangeRecords;
- (void)addRect:(const TSUCellRect *)rect fromCoord:(const TSUCellCoord *)coord;
- (void)enumerateAllRanges:(id)ranges;
- (void)enumerateAllRangesForFromCoord:(const TSUCellCoord *)coord usingBlock:(id)block;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)removeRect:(const TSUCellRect *)rect fromCoord:(const TSUCellCoord *)coord;
- (void)removeRectsForFromCoord:(const TSUCellCoord *)coord;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSCERangePrecedentsTile

- (TSCERangePrecedentsTile)initWithOwnerId:(unsigned __int16)id context:(id)context
{
  v6.receiver = self;
  v6.super_class = TSCERangePrecedentsTile;
  result = [(TSCERangePrecedentsTile *)&v6 initWithContext:context];
  if (result)
  {
    result->_toInternalOwnerID = id;
  }

  return result;
}

- (unint64_t)numRangeRecords
{
  p_end_node = &self->_fromCoordToReferRect.__tree_.__end_node_;
  begin_node = self->_fromCoordToReferRect.__tree_.__begin_node_;
  if (begin_node == &self->_fromCoordToReferRect.__tree_.__end_node_)
  {
    return 0;
  }

  result = 0;
  do
  {
    delegate = begin_node->super._delegate;
    v6 = begin_node;
    if (delegate)
    {
      do
      {
        identifier = delegate;
        delegate = *delegate;
      }

      while (delegate);
    }

    else
    {
      do
      {
        identifier = v6->super._identifier;
        v8 = identifier->__left_ == v6;
        v6 = identifier;
      }

      while (!v8);
    }

    result += begin_node->super._component;
    begin_node = identifier;
  }

  while (identifier != p_end_node);
  return result;
}

- (void)addRect:(const TSUCellRect *)rect fromCoord:(const TSUCellCoord *)coord
{
  if (coord->row != 0x7FFFFFFF && (*coord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    objc_msgSend_willModify(self, a2, rect, coord, v4);
    v9 = sub_2212E4404(&self->_fromCoordToReferRect, coord);
    sub_2212E4518(v9 + 40, rect);
  }
}

- (void)removeRect:(const TSUCellRect *)rect fromCoord:(const TSUCellCoord *)coord
{
  if (coord->row != 0x7FFFFFFF && (*coord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    p_fromCoordToReferRect = &self->_fromCoordToReferRect;
    v9 = sub_2212E46E0(&self->_fromCoordToReferRect, coord);
    if (p_fromCoordToReferRect + 1 != v9)
    {
      v14 = v9;
      objc_msgSend_willModify(self, v10, v11, v12, v13);
      sub_2212E4768(v14 + 5, rect);
      if (!v14[7])
      {

        sub_2212E484C(p_fromCoordToReferRect, coord);
      }
    }
  }
}

- (BOOL)containsRect:(const TSUCellRect *)rect fromCoord:(const TSUCellCoord *)coord
{
  if (coord->row == 0x7FFFFFFF || (*coord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 0;
  }

  p_fromCoordToReferRect = &self->_fromCoordToReferRect;
  v8 = sub_2212E46E0(&self->_fromCoordToReferRect, coord);
  return &p_fromCoordToReferRect->__tree_.__end_node_ != v8 && v8 + 6 != sub_2212E47BC((v8 + 5), rect);
}

- (void)removeRectsForFromCoord:(const TSUCellCoord *)coord
{
  if (coord->row != 0x7FFFFFFF && (*coord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    p_fromCoordToReferRect = &self->_fromCoordToReferRect;
    if (&self->_fromCoordToReferRect.__tree_.__end_node_ != sub_2212E46E0(&self->_fromCoordToReferRect, coord))
    {
      objc_msgSend_willModify(self, v7, v8, v9, v10);

      sub_2212E484C(p_fromCoordToReferRect, coord);
    }
  }
}

- (void)enumerateAllRangesForFromCoord:(const TSUCellCoord *)coord usingBlock:(id)block
{
  blockCopy = block;
  v7 = coord->row == 0x7FFFFFFF || (*coord & 0xFFFF00000000) == 0x7FFF00000000;
  if (!v7)
  {
    v14 = 0;
    p_fromCoordToReferRect = &self->_fromCoordToReferRect;
    v9 = sub_2212E46E0(p_fromCoordToReferRect, coord);
    if (&p_fromCoordToReferRect->__tree_.__end_node_ != v9)
    {
      v10 = v9[5];
      v11 = v9 + 6;
      if (v10 != v9 + 6)
      {
        do
        {
          blockCopy[2](blockCopy, coord, v10 + 28, &v14);
          if (v14)
          {
            break;
          }

          v12 = v10[1];
          if (v12)
          {
            do
            {
              v13 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              v13 = v10[2];
              v7 = *v13 == v10;
              v10 = v13;
            }

            while (!v7);
          }

          v10 = v13;
        }

        while (v13 != v11);
      }
    }
  }
}

- (void)enumerateAllRanges:(id)ranges
{
  rangesCopy = ranges;
  v14 = 0;
  self = (self + 72);
  isa = self->super.super.isa;
  p_delegate = &self->super._delegate;
  v6 = isa;
  if (isa != p_delegate)
  {
    while (1)
    {
      v8 = *(v6 + 5);
      if (v8 != (v6 + 48))
      {
        break;
      }

LABEL_11:
      v12 = *(v6 + 1);
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = *(v6 + 2);
          v11 = *v13 == v6;
          v6 = v13;
        }

        while (!v11);
      }

      v6 = v13;
      if (v13 == p_delegate)
      {
        goto LABEL_17;
      }
    }

    while (1)
    {
      rangesCopy[2](rangesCopy, v6 + 32, v8 + 28, &v14);
      if (v14)
      {
        break;
      }

      v9 = v8[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
      if (v10 == (v6 + 48))
      {
        if (v14)
        {
          break;
        }

        goto LABEL_11;
      }
    }
  }

LABEL_17:
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2212E48D4, off_2812E2AC8[84], v5);

  toInternalOwnerID = self->_toInternalOwnerID;
  *(v6 + 16) |= 1u;
  *(v6 + 48) = toInternalOwnerID;
  p_end_node = &self->_fromCoordToReferRect.__tree_.__end_node_;
  begin_node = self->_fromCoordToReferRect.__tree_.__begin_node_;
  if (begin_node != &self->_fromCoordToReferRect.__tree_.__end_node_)
  {
    while (1)
    {
      left = begin_node[5].__left_;
      if (left != &begin_node[6])
      {
        break;
      }

LABEL_24:
      v24 = begin_node[1].__left_;
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = v24->__left_;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = begin_node[2].__left_;
          v23 = v25->__left_ == begin_node;
          begin_node = v25;
        }

        while (!v23);
      }

      begin_node = v25;
      if (v25 == p_end_node)
      {
        goto LABEL_30;
      }
    }

    while (1)
    {
      v11 = *(v6 + 40);
      if (!v11)
      {
        goto LABEL_8;
      }

      v12 = *(v6 + 32);
      v13 = *v11;
      if (v12 >= *v11)
      {
        break;
      }

      *(v6 + 32) = v12 + 1;
      v14 = *&v11[2 * v12 + 2];
LABEL_10:
      *(v14 + 16) |= 1u;
      v17 = *(v14 + 24);
      if (!v17)
      {
        v18 = *(v14 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v18);
        *(v14 + 24) = v17;
      }

      sub_221269820(&begin_node[4], v17);
      *(v14 + 16) |= 2u;
      v19 = *(v14 + 32);
      if (!v19)
      {
        v20 = *(v14 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellRectArchive>(v20);
        *(v14 + 32) = v19;
      }

      sub_2212698FC(left + 7, v19);
      v21 = *(left + 1);
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = v21->__left_;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = *(left + 2);
          v23 = v22->__left_ == left;
          left = v22;
        }

        while (!v23);
      }

      left = v22;
      if (v22 == &begin_node[6])
      {
        goto LABEL_24;
      }
    }

    if (v13 == *(v6 + 36))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 24));
      v11 = *(v6 + 40);
      v13 = *v11;
    }

    *v11 = v13 + 1;
    v14 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangePrecedentsTileArchive_FromToRangeArchive>(*(v6 + 24));
    v15 = *(v6 + 32);
    v16 = *(v6 + 40) + 8 * v15;
    *(v6 + 32) = v15 + 1;
    *(v16 + 8) = v14;
    goto LABEL_10;
  }

LABEL_30:
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E2AC8[84], v6, v7);

  self->_toInternalOwnerID = *(v8 + 48);
  v9 = *(v8 + 32);
  if (v9 >= 1)
  {
    v10 = 8;
    do
    {
      v11 = *(*(v8 + 40) + v10);
      v19 = 0;
      if (*(v11 + 24))
      {
        v12 = *(v11 + 24);
      }

      else
      {
        v12 = &TSCE::_CellCoordinateArchive_default_instance_;
      }

      v13 = sub_2212697C0(v12);
      v18 = 0;
      v19 = v13;
      v17 = 0;
      if (*(v11 + 32))
      {
        v14 = *(v11 + 32);
      }

      else
      {
        v14 = &TSCE::_CellRectArchive_default_instance_;
      }

      v17 = sub_2212699D8(v14);
      v18 = v15;
      objc_msgSend_addRect_fromCoord_(self, v15, &v17, &v19, v16);
      v10 += 8;
      --v9;
    }

    while (v9);
  }
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 10) = 0;
  *(self + 9) = self + 80;
  return self;
}

@end