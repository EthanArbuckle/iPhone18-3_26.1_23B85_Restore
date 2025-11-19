@interface TSCECellCoordinateVector
- (TSCECellCoordinateVector)init;
- (TSCECellCoordinateVector)initWithArchive:(const void *)a3;
- (id).cxx_construct;
- (unordered_set<TSUCellCoord,)cellCoordinatesSet;
- (void)addCellCoordinate:(TSUCellCoord)a3;
- (void)saveToArchive:(void *)a3;
@end

@implementation TSCECellCoordinateVector

- (TSCECellCoordinateVector)init
{
  v6.receiver = self;
  v6.super_class = TSCECellCoordinateVector;
  v2 = [(TSCECellCoordinateVector *)&v6 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(1);
    sem = v2->_sem;
    v2->_sem = v3;
  }

  return v2;
}

- (unordered_set<TSUCellCoord,)cellCoordinatesSet
{
  retstr->var0.var0 = 0u;
  *&retstr->var0.var1.var0 = 0u;
  retstr->var0.var3 = 1.0;
  var0 = self->var0.var0.var1.var0;
  v5 = self->var0.var1.var0;
  while (var0 != v5)
  {
    self = sub_2210CE644(retstr, var0);
    var0 += 2;
  }

  return self;
}

- (void)addCellCoordinate:(TSUCellCoord)a3
{
  dispatch_semaphore_wait(self->_sem, 0xFFFFFFFFFFFFFFFFLL);
  end = self->_cellCoordinates.__end_;
  cap = self->_cellCoordinates.__cap_;
  if (end >= cap)
  {
    begin = self->_cellCoordinates.__begin_;
    v9 = end - begin;
    if ((v9 + 1) >> 61)
    {
      sub_22107C148();
    }

    v10 = cap - begin;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      sub_2210874C4(&self->_cellCoordinates, v12);
    }

    v13 = (8 * v9);
    *v13 = a3;
    v7 = (8 * v9 + 8);
    v14 = self->_cellCoordinates.__begin_;
    v15 = (self->_cellCoordinates.__end_ - v14);
    v16 = (v13 - v15);
    memcpy((v13 - v15), v14, v15);
    v17 = self->_cellCoordinates.__begin_;
    self->_cellCoordinates.__begin_ = v16;
    self->_cellCoordinates.__end_ = v7;
    self->_cellCoordinates.__cap_ = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *end = a3;
    v7 = end + 1;
  }

  self->_cellCoordinates.__end_ = v7;
  sem = self->_sem;

  dispatch_semaphore_signal(sem);
}

- (TSCECellCoordinateVector)initWithArchive:(const void *)a3
{
  v6 = objc_msgSend_init(self, a2, a3, v3, v4);
  if (v6)
  {
    v7 = *(a3 + 6);
    if (v7 >= 1)
    {
      v8 = 8;
      do
      {
        v9 = sub_2212697C0(*(*(a3 + 4) + v8));
        objc_msgSend_addCellCoordinate_(v6, v10, v9, v11, v12);
        v8 += 8;
        --v7;
      }

      while (v7);
    }
  }

  return v6;
}

- (void)saveToArchive:(void *)a3
{
  begin = self->_cellCoordinates.__begin_;
  end = self->_cellCoordinates.__end_;
  if (begin != end)
  {
    while (1)
    {
      v6 = *(a3 + 4);
      if (!v6)
      {
        goto LABEL_7;
      }

      v7 = *(a3 + 6);
      v8 = *v6;
      if (v7 >= *v6)
      {
        break;
      }

      *(a3 + 6) = v7 + 1;
      v9 = *&v6[2 * v7 + 2];
LABEL_9:
      sub_221269820(begin++, v9);
      if (begin == end)
      {
        return;
      }
    }

    if (v8 == *(a3 + 7))
    {
LABEL_7:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 16));
      v6 = *(a3 + 4);
      v8 = *v6;
    }

    *v6 = v8 + 1;
    v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(*(a3 + 2));
    v10 = *(a3 + 6);
    v11 = *(a3 + 4) + 8 * v10;
    *(a3 + 6) = v10 + 1;
    *(v11 + 8) = v9;
    goto LABEL_9;
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end