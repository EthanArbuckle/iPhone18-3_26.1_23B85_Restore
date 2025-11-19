@interface TSTWidthHeightCache
- (BOOL)deleteColsStartingWith:(unsigned __int8)a3 andEndingWith:(unsigned __int8)a4;
- (BOOL)deleteRowsStartingWith:(unsigned __int16)a3 andEndingWith:(unsigned __int16)a4;
- (BOOL)insertCols:(unsigned __int16)a3 atColumn:(unsigned __int8)a4;
- (BOOL)insertRows:(unsigned __int16)a3 atRow:(unsigned __int16)a4;
- (BOOL)moveColsFrom:(id)a3 toCol:(unsigned __int8)a4;
- (BOOL)moveRowsFrom:(id)a3 toRow:(unsigned __int16)a4;
- (BOOL)resetModelCache;
- (BOOL)resetModelCacheRange:(id)a3;
- (BOOL)setFitDims:(CGSize)a3 forCellID:(id)a4;
- (BOOL)setFitHeight:(double)a3 forCellID:(id)a4;
- (BOOL)setFitWidth:(double)a3 forCellID:(id)a4;
- (BOOL)setModelHeight:(double)a3 forRow:(unsigned __int16)a4;
- (BOOL)setModelWidth:(double)a3 forColumn:(unsigned __int8)a4;
- (TSTWidthHeightCache)init;
- (TSTWidthHeightCache)initWithNumRows:(unsigned __int16)a3 andNumCols:(unsigned __int16)a4;
- (double)getFitHeightForRow:(unsigned __int16)a3;
- (double)getFitWidthForCol:(unsigned __int8)a3;
- (double)getModelHeightForRow:(unsigned __int16)a3;
- (double)getModelWidthForColumn:(unsigned __int8)a3;
- (id).cxx_construct;
- (id)description;
- (id)getListOfInvalidColsInRow:(unsigned __int16)a3;
- (id)validateChangeDescriptors:(id)a3 tableModel:(id)a4;
- (unint64_t)numModelColumnWidths;
- (unint64_t)numModelRowHeights;
- (unint64_t)resetAllInvalidColsInRow:(unsigned __int16)a3;
- (void)_increaseColCapacity:(unsigned int)a3;
- (void)_increaseRowCapacity:(unsigned int)a3;
- (void)dealloc;
- (void)logInternalState;
- (void)resetAllCol;
- (void)resetAllRow;
- (void)resetColWidthsStartingWith:(unsigned __int8)a3 andEndingWith:(unsigned __int8)a4;
- (void)resetFitHeightForCellID:(id)a3;
- (void)resetRowHeightForCell:(id)a3;
- (void)resetRowHeightsStartingWith:(unsigned __int16)a3 andEndingWith:(unsigned __int16)a4;
- (void)resetWidthsHeightsForRange:(id)a3;
- (void)setNumsRows:(unsigned __int16)a3 andNumCols:(unsigned __int8)a4;
@end

@implementation TSTWidthHeightCache

- (TSTWidthHeightCache)init
{
  v5.receiver = self;
  v5.super_class = TSTWidthHeightCache;
  v2 = [(TSTWidthHeightCache *)&v5 init];
  v3 = v2;
  if (v2)
  {
    std::vector<TSTWidthHeightCache_Private::WHCCol>::reserve(&v2->mFittingColumnWidth.__begin_, 0x20uLL);
    v3->mMaxRow = 0;
    v3->mMaxCol = 0;
    pthread_rwlock_init(&v3->mLock, 0);
  }

  return v3;
}

- (TSTWidthHeightCache)initWithNumRows:(unsigned __int16)a3 andNumCols:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  v10.receiver = self;
  v10.super_class = TSTWidthHeightCache;
  v6 = [(TSTWidthHeightCache *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->mMaxRow = v5 - 1;
    v6->mMaxCol = v4 - 1;
    v9 = 0;
    std::vector<double>::resize(&v6->mModelRowHeight.__begin_, v5, &v9);
    v9 = 0;
    std::vector<double>::resize(&v7->mModelColumnWidth.__begin_, v4, &v9);
    [(TSTWidthHeightCache *)v7 _increaseRowCapacity:v5];
    [(TSTWidthHeightCache *)v7 _increaseColCapacity:v4];
    pthread_rwlock_init(&v7->mLock, 0);
  }

  return v7;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->mLock);
  v3.receiver = self;
  v3.super_class = TSTWidthHeightCache;
  [(TSTWidthHeightCache *)&v3 dealloc];
}

- (BOOL)setFitDims:(CGSize)a3 forCellID:(id)a4
{
  LOBYTE(v5) = 0;
  if (a4.var0 != 0xFFFF)
  {
    v6 = *&a4.var0 >> 16;
    if (a4.var1 << 16 != 16711680)
    {
      height = a3.height;
      width = a3.width;
      var1 = a4.var1;
      pthread_rwlock_wrlock(&self->mLock);
      begin = self->mFittingColumnWidth.__begin_;
      if (a4.var1 >= ((self->mFittingColumnWidth.__end_ - begin) >> 5))
      {
        std::vector<TSTWidthHeightCache_Private::WHCCol>::resize(&self->mFittingColumnWidth, (var1 + 1));
        begin = self->mFittingColumnWidth.__begin_;
      }

      v12 = TSTWidthHeightCache_Private::WHCCol::setWidth((begin + 32 * a4.var1), a4.var0, width);
      v13 = self->mFittingRowHeight.__begin_;
      if (a4.var0 >= 0xCF3CF3CF3CF3CF3DLL * ((self->mFittingRowHeight.__end_ - v13) >> 3))
      {
        std::vector<TSTWidthHeightCache_Private::WHCRow>::resize(&self->mFittingRowHeight.__begin_, a4.var0 + 1);
        v13 = self->mFittingRowHeight.__begin_;
      }

      v5 = v12 | TSTWidthHeightCache_Private::WHCRow::setHeight((v13 + 168 * a4.var0), v6, height);
      pthread_rwlock_unlock(&self->mLock);
    }
  }

  return v5;
}

- (BOOL)setFitWidth:(double)a3 forCellID:(id)a4
{
  if (a4.var0 == 0xFFFF)
  {
    return 0;
  }

  var1 = a4.var1;
  if (a4.var1 << 16 == 16711680)
  {
    return 0;
  }

  pthread_rwlock_wrlock(&self->mLock);
  begin = self->mFittingColumnWidth.__begin_;
  if (a4.var1 >= ((self->mFittingColumnWidth.__end_ - begin) >> 5))
  {
    std::vector<TSTWidthHeightCache_Private::WHCCol>::resize(&self->mFittingColumnWidth, (var1 + 1));
    begin = self->mFittingColumnWidth.__begin_;
  }

  v9 = TSTWidthHeightCache_Private::WHCCol::setWidth((begin + 32 * a4.var1), a4.var0, a3);
  pthread_rwlock_unlock(&self->mLock);
  return v9;
}

- (BOOL)setFitHeight:(double)a3 forCellID:(id)a4
{
  var0 = a4.var0;
  if (a4.var0 == 0xFFFFLL || (*&a4.var0 & 0xFF0000) == 0xFF0000)
  {
    return 0;
  }

  v7 = *&a4.var0 >> 16;
  pthread_rwlock_wrlock(&self->mLock);
  begin = self->mFittingRowHeight.__begin_;
  if (var0 >= 0xCF3CF3CF3CF3CF3DLL * ((self->mFittingRowHeight.__end_ - begin) >> 3))
  {
    std::vector<TSTWidthHeightCache_Private::WHCRow>::resize(&self->mFittingRowHeight.__begin_, var0 + 1);
    begin = self->mFittingRowHeight.__begin_;
  }

  v9 = TSTWidthHeightCache_Private::WHCRow::setHeight((begin + 168 * var0), v7, a3);
  pthread_rwlock_unlock(&self->mLock);
  return v9;
}

- (BOOL)setModelWidth:(double)a3 forColumn:(unsigned __int8)a4
{
  v4 = a4;
  pthread_rwlock_wrlock(&self->mLock);
  begin = self->mModelColumnWidth.__begin_;
  v8 = self->mModelColumnWidth.__end_ - begin;
  if (v8 > v4)
  {
    begin[v4] = a3;
  }

  v9 = v8 > v4;
  pthread_rwlock_unlock(&self->mLock);
  return v9;
}

- (BOOL)setModelHeight:(double)a3 forRow:(unsigned __int16)a4
{
  v4 = a4;
  pthread_rwlock_wrlock(&self->mLock);
  begin = self->mModelRowHeight.__begin_;
  v8 = self->mModelRowHeight.__end_ - begin;
  if (v8 > v4)
  {
    begin[v4] = a3;
  }

  v9 = v8 > v4;
  pthread_rwlock_unlock(&self->mLock);
  return v9;
}

- (BOOL)resetModelCache
{
  pthread_rwlock_wrlock(&self->mLock);
  begin = self->mModelRowHeight.__begin_;
  v4 = self->mModelRowHeight.__end_ - begin;
  if (v4 >= 1)
  {
    bzero(begin, v4);
  }

  v5 = self->mModelColumnWidth.__begin_;
  v6 = self->mModelColumnWidth.__end_ - v5;
  if (v6 >= 1)
  {
    bzero(v5, v6);
  }

  pthread_rwlock_unlock(&self->mLock);
  return 1;
}

- (unint64_t)numModelColumnWidths
{
  pthread_rwlock_rdlock(&self->mLock);
  v3 = self->mModelColumnWidth.__end_ - self->mModelColumnWidth.__begin_;
  pthread_rwlock_rdlock(&self->mLock);
  return v3;
}

- (unint64_t)numModelRowHeights
{
  pthread_rwlock_rdlock(&self->mLock);
  v3 = self->mModelRowHeight.__end_ - self->mModelRowHeight.__begin_;
  pthread_rwlock_rdlock(&self->mLock);
  return v3;
}

- (BOOL)resetModelCacheRange:(id)a3
{
  pthread_rwlock_wrlock(&self->mLock);
  begin = self->mModelRowHeight.__begin_;
  v6 = (a3.var0.var0 + a3.var1.var1 - 1);
  if (v6 >= (self->mModelRowHeight.__end_ - begin))
  {
    v7 = self->mModelRowHeight.__end_ - begin;
  }

  else
  {
    LODWORD(v7) = v6 + 1;
  }

  var0 = a3.var0.var0;
  v9 = 8 * v7 - var0 * 8;
  if (v9 >= 1)
  {
    bzero(&begin[var0], v9);
  }

  v10 = self->mModelColumnWidth.__begin_;
  v11 = (LOBYTE(a3.var1.var0) + a3.var0.var1 - 1);
  if (v11 >= (self->mModelColumnWidth.__end_ - v10))
  {
    v12 = self->mModelColumnWidth.__end_ - v10;
  }

  else
  {
    LODWORD(v12) = v11 + 1;
  }

  v13 = (*&a3 >> 13) & 0x7F8;
  v14 = 8 * v12 - v13;
  if (v14 >= 1)
  {
    bzero(v10 + v13, v14);
  }

  pthread_rwlock_unlock(&self->mLock);
  return 1;
}

- (BOOL)deleteColsStartingWith:(unsigned __int8)a3 andEndingWith:(unsigned __int8)a4
{
  v4 = a4;
  v5 = a3;
  pthread_rwlock_wrlock(&self->mLock);
  begin = self->mFittingColumnWidth.__begin_;
  if (v4 <= ((self->mFittingColumnWidth.__end_ - begin) >> 5))
  {
    v8 = v4;
  }

  else
  {
    v8 = (self->mFittingColumnWidth.__end_ - begin) >> 5;
  }

  if (v5 >= v8)
  {
    v9 = v5;
  }

  else
  {
    v9 = v5;
    std::vector<TSTWidthHeightCache_Private::WHCCol>::erase(&self->mFittingColumnWidth, begin + 32 * v5, begin + 32 * v8);
    for (i = self->mFittingRowHeight.__begin_; i < self->mFittingRowHeight.__end_; i = (i + 168))
    {
      TSTWidthHeightCache_Private::WHCRow::resetColDataInRange(i, v5, v8);
    }
  }

  if (8 * v9 != 8 * v4)
  {
    v11 = v4;
    v12 = self->mModelColumnWidth.__begin_;
    end = self->mModelColumnWidth.__end_;
    v14 = &v12[v9];
    v15 = end - &v12[v11];
    if (end != &v12[v11])
    {
      memmove(&v12[v9], &v12[v11], end - &v12[v11]);
    }

    self->mModelColumnWidth.__end_ = (v14 + v15);
  }

  pthread_rwlock_unlock(&self->mLock);
  return 1;
}

- (BOOL)deleteRowsStartingWith:(unsigned __int16)a3 andEndingWith:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  pthread_rwlock_wrlock(&self->mLock);
  begin = self->mFittingRowHeight.__begin_;
  v8 = -12483 * ((self->mFittingRowHeight.__end_ - begin) >> 3);
  if (v4 <= v8)
  {
    v8 = v4;
  }

  v9 = v8;
  if (v8 <= v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v5;
    std::vector<TSTWidthHeightCache_Private::WHCRow>::erase(&self->mFittingRowHeight, begin + 168 * v5, begin + 168 * v8);
    for (i = self->mFittingColumnWidth.__begin_; i < self->mFittingColumnWidth.__end_; i += 4)
    {
      TSTWidthHeightCache_Private::WHCCol::removeRowDataInRange(i, v5, v9);
    }
  }

  if (8 * v10 != 8 * v4)
  {
    v12 = v4;
    v13 = self->mModelRowHeight.__begin_;
    end = self->mModelRowHeight.__end_;
    v15 = &v13[v10];
    v16 = end - &v13[v12];
    if (end != &v13[v12])
    {
      memmove(&v13[v10], &v13[v12], end - &v13[v12]);
    }

    self->mModelRowHeight.__end_ = (v15 + v16);
  }

  pthread_rwlock_unlock(&self->mLock);
  return 1;
}

- (BOOL)insertCols:(unsigned __int16)a3 atColumn:(unsigned __int8)a4
{
  v4 = a4;
  v5 = a3;
  pthread_rwlock_wrlock(&self->mLock);
  begin = self->mFittingColumnWidth.__begin_;
  if (v4 > ((self->mFittingColumnWidth.__end_ - begin) >> 5))
  {
    std::vector<TSTWidthHeightCache_Private::WHCCol>::resize(&self->mFittingColumnWidth, v4);
    begin = self->mFittingColumnWidth.__begin_;
  }

  __p = 0;
  v12 = 0;
  v14 = 0;
  v13 = 0;
  std::vector<TSTWidthHeightCache_Private::WHCCol>::insert(&self->mFittingColumnWidth, begin + 32 * v4, v5, &__p);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  for (i = self->mFittingRowHeight.__begin_; i < self->mFittingRowHeight.__end_; i = (i + 168))
  {
    TSTWidthHeightCache_NibArray::NibArray<8u>::insert(i, v5, v4, 15);
  }

  v9 = &self->mModelColumnWidth.__begin_[v4];
  __p = 0;
  std::vector<double>::insert(&self->mModelColumnWidth.__begin_, v9, v5, &__p);
  pthread_rwlock_unlock(&self->mLock);
  return 1;
}

- (BOOL)insertRows:(unsigned __int16)a3 atRow:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  v19 = *MEMORY[0x277D85DE8];
  pthread_rwlock_wrlock(&self->mLock);
  begin = self->mFittingRowHeight.__begin_;
  if (0xCF3CF3CF3CF3CF3DLL * ((self->mFittingRowHeight.__end_ - begin) >> 3) < v4)
  {
    std::vector<TSTWidthHeightCache_Private::WHCRow>::resize(&self->mFittingRowHeight.__begin_, v4);
    begin = self->mFittingRowHeight.__begin_;
  }

  v18 = 0;
  v8 = (begin + 168 * v4);
  *__p = 0u;
  v17 = 0u;
  *&v9 = -1;
  *(&v9 + 1) = -1;
  v15[0] = v9;
  v15[1] = v9;
  v15[2] = v9;
  v15[3] = v9;
  v15[4] = v9;
  v15[5] = v9;
  v15[6] = v9;
  v15[7] = v9;
  v13 = &v17 + 8;
  v14 = 0;
  std::__fill_n_BOOL[abi:nn200100]<false,std::__bitset<1ul,14ul>>(&v13, 0xEuLL);
  std::vector<TSTWidthHeightCache_Private::WHCRow>::insert(&self->mFittingRowHeight.__begin_, v8, v5, v15);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  for (i = self->mFittingColumnWidth.__begin_; i < self->mFittingColumnWidth.__end_; i += 4)
  {
    TSTWidthHeightCache_Private::WHCCol::insertRows(i, v5, v4);
  }

  v11 = &self->mModelRowHeight.__begin_[v4];
  *&v15[0] = 0;
  std::vector<double>::insert(&self->mModelRowHeight.__begin_, v11, v5, v15);
  pthread_rwlock_unlock(&self->mLock);
  return 1;
}

- (BOOL)moveRowsFrom:(id)a3 toRow:(unsigned __int16)a4
{
  v4 = a4;
  var0 = a3.var0;
  var1 = a3.var1.var1;
  pthread_rwlock_wrlock(&self->mLock);
  v8 = var1 + var0.var0;
  if (v8 <= v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = v8;
  }

  begin = self->mFittingRowHeight.__begin_;
  p_mFittingRowHeight = &self->mFittingRowHeight;
  if (0xCF3CF3CF3CF3CF3DLL * ((self->mFittingRowHeight.__end_ - begin) >> 3) < v9)
  {
    std::vector<TSTWidthHeightCache_Private::WHCRow>::resize(&self->mFittingRowHeight.__begin_, v9);
    begin = p_mFittingRowHeight->__begin_;
  }

  v12 = begin + 168 * var0.var0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  std::vector<TSTWidthHeightCache_Private::WHCRow>::__assign_with_size[abi:nn200100]<std::__wrap_iter<TSTWidthHeightCache_Private::WHCRow*>,std::__wrap_iter<TSTWidthHeightCache_Private::WHCRow*>>(&v19, v12, v12 + 168 * var1, var1);
  v13 = begin + 168 * v4;
  if (v12 + 168 * var1 >= v13)
  {
    std::__copy_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<TSTWidthHeightCache_Private::WHCRow *,TSTWidthHeightCache_Private::WHCRow *,TSTWidthHeightCache_Private::WHCRow *>(&v22, v13, v12, v12 + 168 * var1);
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<TSTWidthHeightCache_Private::WHCRow *,TSTWidthHeightCache_Private::WHCRow *,TSTWidthHeightCache_Private::WHCRow *>(&v22, v12 + 168 * var1, v13, v12);
    v13 = p_mFittingRowHeight->__begin_ + (168 * (v4 - var1));
  }

  std::__copy_impl::operator()[abi:nn200100]<TSTWidthHeightCache_Private::WHCRow *,TSTWidthHeightCache_Private::WHCRow *,TSTWidthHeightCache_Private::WHCRow *>(&v22, v19, v20, v13);
  for (i = self->mFittingColumnWidth.__begin_; i < self->mFittingColumnWidth.__end_; i += 4)
  {
    TSTWidthHeightCache_Private::WHCCol::moveRowIds(i, var0.var0, var1, v4);
  }

  if (v9 > self->mModelRowHeight.__end_ - self->mModelRowHeight.__begin_)
  {
    v23 = 0;
    std::vector<double>::resize(&self->mModelRowHeight.__begin_, v9, &v23);
  }

  if (var0.var0 < v4)
  {
    v15 = 8 * var0.var0;
    v16 = 8 * v4;
    v17 = v16 - v15;
    if (v16 <= v15)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v17 = ((8 * (*&var0 + var1) + 524280) & 0x7FFF8) - 8 * v4 + 8;
  if (v17 >= 1)
  {
    v15 = 8 * v4;
LABEL_19:
    bzero(&self->mModelRowHeight.__begin_[v15 / 8], v17);
  }

LABEL_20:
  v23 = &v19;
  std::vector<TSTWidthHeightCache_Private::WHCRow>::__destroy_vector::operator()[abi:nn200100](&v23);
  pthread_rwlock_unlock(&self->mLock);
  return 1;
}

- (BOOL)moveColsFrom:(id)a3 toCol:(unsigned __int8)a4
{
  v4 = a4;
  var0 = a3.var1.var0;
  pthread_rwlock_wrlock(&self->mLock);
  v8 = a3.var0.var1 + var0;
  if (v8 <= v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = v8;
  }

  begin = self->mFittingColumnWidth.__begin_;
  p_mFittingColumnWidth = &self->mFittingColumnWidth;
  if (v9 > (self->mFittingColumnWidth.__end_ - begin) >> 5)
  {
    std::vector<TSTWidthHeightCache_Private::WHCCol>::resize(&self->mFittingColumnWidth, v9);
    begin = p_mFittingColumnWidth->__begin_;
  }

  v12 = begin + 32 * a3.var0.var1;
  v19 = var0;
  v20 = 0;
  v13 = begin + 32 * a3.var0.var1 + 32 * var0;
  v21 = 0;
  v22 = 0;
  std::vector<TSTWidthHeightCache_Private::WHCCol>::__assign_with_size[abi:nn200100]<std::__wrap_iter<TSTWidthHeightCache_Private::WHCCol*>,std::__wrap_iter<TSTWidthHeightCache_Private::WHCCol*>>(&v20, v12, v13, a3.var1.var0);
  v14 = begin + 32 * v4;
  if (v12 >= v14)
  {
    std::__copy_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<TSTWidthHeightCache_Private::WHCCol *,TSTWidthHeightCache_Private::WHCCol *,TSTWidthHeightCache_Private::WHCCol *>(&v23, v14, v12, v13);
  }

  else
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<TSTWidthHeightCache_Private::WHCCol *,TSTWidthHeightCache_Private::WHCCol *,TSTWidthHeightCache_Private::WHCCol *>(&v23, v13, v14, v12);
    v14 = p_mFittingColumnWidth->__begin_ + 32 * (v4 - a3.var1.var0);
  }

  std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<TSTWidthHeightCache_Private::WHCCol *,TSTWidthHeightCache_Private::WHCCol *,TSTWidthHeightCache_Private::WHCCol *>(&v23, v20, v21, v14);
  for (i = self->mFittingRowHeight.__begin_; i < self->mFittingRowHeight.__end_; i = (i + 168))
  {
    TSTWidthHeightCache_NibArray::NibArray<8u>::move(i, a3.var0.var1, a3.var0.var1 + v19, v4, 0x100u);
  }

  if (v9 > self->mModelColumnWidth.__end_ - self->mModelColumnWidth.__begin_)
  {
    v24 = 0;
    std::vector<double>::resize(&self->mModelColumnWidth.__begin_, v9, &v24);
  }

  if (a3.var0.var1 < v4)
  {
    v16 = (*&a3 >> 13) & 0x7F8;
    v17 = 8 * v4 - v16;
    if (8 * v4 <= v16)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v17 = ((8 * (v19 + *&a3.var0.var1) + 2040) & 0x7F8) - 8 * v4 + 8;
  if (v17 >= 1)
  {
    v16 = 8 * v4;
LABEL_18:
    bzero(self->mModelColumnWidth.__begin_ + v16, v17);
  }

LABEL_19:
  v24 = &v20;
  std::vector<TSTWidthHeightCache_Private::WHCCol>::__destroy_vector::operator()[abi:nn200100](&v24);
  pthread_rwlock_unlock(&self->mLock);
  return 1;
}

- (double)getFitHeightForRow:(unsigned __int16)a3
{
  v3 = a3;
  pthread_rwlock_rdlock(&self->mLock);
  begin = self->mFittingRowHeight.__begin_;
  v6 = 0.0;
  if (0xCF3CF3CF3CF3CF3DLL * ((self->mFittingRowHeight.__end_ - begin) >> 3) > v3)
  {
    v7 = begin + 168 * v3;
    v8 = *(v7 + 16);
    if (v8 == *(v7 + 17))
    {
      if (v7[160])
      {
        v6 = -1.0;
      }

      else
      {
        v6 = 0.0;
      }
    }

    else
    {
      v6 = *v8;
    }
  }

  pthread_rwlock_unlock(&self->mLock);
  return v6;
}

- (double)getFitWidthForCol:(unsigned __int8)a3
{
  v3 = a3;
  pthread_rwlock_rdlock(&self->mLock);
  begin = self->mFittingColumnWidth.__begin_;
  v6 = -1.0;
  if (v3 < ((self->mFittingColumnWidth.__end_ - begin) >> 5))
  {
    v7 = begin + 32 * v3;
    if (*v7 == *(v7 + 1))
    {
      if (v7[24])
      {
        v6 = -1.0;
      }

      else
      {
        v6 = 0.0;
      }
    }

    else
    {
      v6 = **v7;
    }
  }

  pthread_rwlock_unlock(&self->mLock);
  return v6;
}

- (double)getModelHeightForRow:(unsigned __int16)a3
{
  v3 = a3;
  pthread_rwlock_rdlock(&self->mLock);
  begin = self->mModelRowHeight.__begin_;
  v6 = 0.0;
  if (v3 < (self->mModelRowHeight.__end_ - begin))
  {
    v6 = begin[v3];
  }

  pthread_rwlock_unlock(&self->mLock);
  return v6;
}

- (double)getModelWidthForColumn:(unsigned __int8)a3
{
  v3 = a3;
  pthread_rwlock_rdlock(&self->mLock);
  begin = self->mModelColumnWidth.__begin_;
  v6 = 0.0;
  if (v3 < (self->mModelColumnWidth.__end_ - begin))
  {
    v6 = begin[v3];
  }

  pthread_rwlock_unlock(&self->mLock);
  return v6;
}

- (id)getListOfInvalidColsInRow:(unsigned __int16)a3
{
  v3 = a3;
  pthread_rwlock_rdlock(&self->mLock);
  begin = self->mFittingRowHeight.__begin_;
  if (0xCF3CF3CF3CF3CF3DLL * ((self->mFittingRowHeight.__end_ - begin) >> 3) <= v3)
  {
    goto LABEL_11;
  }

  v6 = v3;
  v7 = *(begin + 168 * v3 + 160);
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
  if (!v7)
  {
    goto LABEL_12;
  }

  v9 = self->mFittingRowHeight.__begin_;
  if (0xCF3CF3CF3CF3CF3DLL * ((self->mFittingRowHeight.__end_ - v9) >> 3) <= v6)
  {
LABEL_11:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = 0;
  while (1)
  {
    v11 = v9 + 168 * v6;
    v12 = 4 * v10;
    while (v11[v10 >> 1] >> (v12 & 4) != 14)
    {
      v10 = (v10 + 1);
      v12 += 4;
      if (v10 == 256)
      {
        goto LABEL_12;
      }
    }

    if (v10 > 0xFE)
    {
      break;
    }

    [v8 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v10)}];
    v10 = (v10 + 1);
    v9 = self->mFittingRowHeight.__begin_;
    if (0xCF3CF3CF3CF3CF3DLL * ((self->mFittingRowHeight.__end_ - v9) >> 3) <= v6)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  pthread_rwlock_unlock(&self->mLock);
  return v8;
}

- (unint64_t)resetAllInvalidColsInRow:(unsigned __int16)a3
{
  v3 = a3;
  pthread_rwlock_wrlock(&self->mLock);
  begin = self->mFittingRowHeight.__begin_;
  if (0xCF3CF3CF3CF3CF3DLL * ((self->mFittingRowHeight.__end_ - begin) >> 3) <= v3)
  {
    return 0;
  }

  else
  {
    return TSTWidthHeightCache_NibArray::NibArray<8u>::setValueToValue(begin + 168 * v3, 14, 15, *(begin + 168 * v3 + 160), 0x100u);
  }
}

- (void)resetRowHeightsStartingWith:(unsigned __int16)a3 andEndingWith:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  pthread_rwlock_wrlock(&self->mLock);
  begin = self->mFittingRowHeight.__begin_;
  v8 = 0xCF3CF3CF3CF3CF3DLL * ((self->mFittingRowHeight.__end_ - begin) >> 3);
  if (v8 <= v4)
  {
    std::vector<TSTWidthHeightCache_Private::WHCRow>::resize(&self->mFittingRowHeight.__begin_, v4 + 1);
    begin = self->mFittingRowHeight.__begin_;
  }

  if (v4 + 1 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4 + 1;
  }

  v10 = begin + 168 * v9;
  for (i = begin + 168 * v5; i < v10; i += 168)
  {
    *&v12 = -1;
    *(&v12 + 1) = -1;
    *(i + 6) = v12;
    *(i + 7) = v12;
    *(i + 4) = v12;
    *(i + 5) = v12;
    *(i + 2) = v12;
    *(i + 3) = v12;
    *i = v12;
    *(i + 1) = v12;
    v13 = i + 152;
    v14 = 0;
    std::__fill_n_BOOL[abi:nn200100]<false,std::__bitset<1ul,14ul>>(&v13, 0xEuLL);
    *(i + 17) = *(i + 16);
    i[160] = 0;
  }

  pthread_rwlock_unlock(&self->mLock);
}

- (void)resetColWidthsStartingWith:(unsigned __int8)a3 andEndingWith:(unsigned __int8)a4
{
  v4 = a4;
  v5 = a3;
  pthread_rwlock_wrlock(&self->mLock);
  begin = self->mFittingColumnWidth.__begin_;
  v8 = (self->mFittingColumnWidth.__end_ - begin) >> 5;
  if (v8 < v4)
  {
    std::vector<TSTWidthHeightCache_Private::WHCCol>::resize(&self->mFittingColumnWidth, v4 + 1);
    begin = self->mFittingColumnWidth.__begin_;
  }

  if (v4 + 1 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4 + 1;
  }

  v10 = begin + 32 * v9;
  for (i = begin + 32 * v5; i < v10; i += 32)
  {
    *(i + 1) = *i;
    i[24] = 0;
  }

  pthread_rwlock_unlock(&self->mLock);
}

- (void)resetAllRow
{
  pthread_rwlock_wrlock(&self->mLock);
  begin = self->mFittingRowHeight.__begin_;
  end = self->mFittingRowHeight.__end_;
  while (begin < end)
  {
    *&v5 = -1;
    *(&v5 + 1) = -1;
    *(begin + 6) = v5;
    *(begin + 7) = v5;
    *(begin + 4) = v5;
    *(begin + 5) = v5;
    *(begin + 2) = v5;
    *(begin + 3) = v5;
    *begin = v5;
    *(begin + 1) = v5;
    v6 = begin + 152;
    v7 = 0;
    std::__fill_n_BOOL[abi:nn200100]<false,std::__bitset<1ul,14ul>>(&v6, 0xEuLL);
    *(begin + 17) = *(begin + 16);
    *(begin + 160) = 0;
    end = self->mFittingRowHeight.__end_;
    begin = (begin + 168);
  }

  pthread_rwlock_unlock(&self->mLock);
}

- (void)resetAllCol
{
  pthread_rwlock_wrlock(&self->mLock);
  begin = self->mFittingColumnWidth.__begin_;
  end = self->mFittingColumnWidth.__end_;
  while (begin < end)
  {
    *(begin + 1) = *begin;
    *(begin + 24) = 0;
    begin = (begin + 32);
  }

  pthread_rwlock_unlock(&self->mLock);
}

- (void)resetWidthsHeightsForRange:(id)a3
{
  var0 = a3.var0;
  v5 = a3.var1.var0;
  var1 = a3.var1.var1;
  pthread_rwlock_wrlock(&self->mLock);
  v7 = var1 + var0.var0;
  if (0xCF3CF3CF3CF3CF3DLL * ((self->mFittingRowHeight.__end_ - self->mFittingRowHeight.__begin_) >> 3) < v7)
  {
    std::vector<TSTWidthHeightCache_Private::WHCRow>::resize(&self->mFittingRowHeight.__begin_, var1 + var0.var0);
  }

  if (var0.var1 + v5 > ((self->mFittingColumnWidth.__end_ - self->mFittingColumnWidth.__begin_) >> 5))
  {
    std::vector<TSTWidthHeightCache_Private::WHCCol>::resize(&self->mFittingColumnWidth, var0.var1 + v5);
  }

  v8 = self->mFittingRowHeight.__begin_ + 168 * var0.var0;
  v9 = &v8[168 * var1];
  while (v8 < v9)
  {
    TSTWidthHeightCache_Private::WHCRow::resetColDataInRange(v8, var0.var1, (var0.var1 + v5));
    v8 += 168;
  }

  v10 = (self->mFittingColumnWidth.__begin_ + 32 * var0.var1);
  v11 = &v10[4 * v5];
  while (v10 < v11)
  {
    TSTWidthHeightCache_Private::WHCCol::removeRowDataInRange(v10, var0.var0, v7);
    v10 += 4;
  }

  pthread_rwlock_unlock(&self->mLock);
}

- (void)resetRowHeightForCell:(id)a3
{
  v5 = *&a3.var0 >> 16;
  pthread_rwlock_wrlock(&self->mLock);
  TSTWidthHeightCache_Private::WHCRow::resetColDataInRange(self->mFittingRowHeight.__begin_ + 168 * a3.var0, a3.var1, (v5 + 1));

  pthread_rwlock_unlock(&self->mLock);
}

- (void)resetFitHeightForCellID:(id)a3
{
  pthread_rwlock_wrlock(&self->mLock);
  begin = self->mFittingRowHeight.__begin_;
  if (a3.var0 < 0xCF3CF3CF3CF3CF3DLL * ((self->mFittingRowHeight.__end_ - begin) >> 3))
  {
    TSTWidthHeightCache_Private::WHCRow::resetColDataInRange(begin + 168 * a3.var0, a3.var1, (a3.var1 + 1));
  }

  pthread_rwlock_unlock(&self->mLock);
}

- (void)setNumsRows:(unsigned __int16)a3 andNumCols:(unsigned __int8)a4
{
  v4 = a4;
  v5 = a3;
  pthread_rwlock_wrlock(&self->mLock);
  v7 = v4 - 1;
  if (self->mMaxRow > (v5 - 1))
  {
    std::vector<TSTWidthHeightCache_Private::WHCRow>::resize(&self->mFittingRowHeight.__begin_, v5);
  }

  if (self->mMaxCol > v7)
  {
    std::vector<TSTWidthHeightCache_Private::WHCCol>::resize(&self->mFittingColumnWidth, v4);
  }

  if (self->mMaxRow > (v5 - 1))
  {
    for (i = self->mFittingColumnWidth.__begin_; i < self->mFittingColumnWidth.__end_; i += 4)
    {
      TSTWidthHeightCache_Private::WHCCol::resetAfter(i, v5);
    }
  }

  if (self->mMaxCol > v7)
  {
    for (j = self->mFittingRowHeight.__begin_; j < self->mFittingRowHeight.__end_; j = (j + 168))
    {
      TSTWidthHeightCache_Private::WHCRow::resetAfter(j, v7, self->mMaxCol);
    }
  }

  self->mMaxRow = v7;
  self->mMaxCol = v7;

  pthread_rwlock_unlock(&self->mLock);
}

- (void)logInternalState
{
  NSLog(@"RowH: ", a2);
  begin = self->mFittingRowHeight.__begin_;
  if (begin >= self->mFittingRowHeight.__end_)
  {
    goto LABEL_12;
  }

  v4 = 0;
  do
  {
    if ((~v4 & 0xF) == 0)
    {
      NSLog(@"\n      ");
    }

    v5 = *(begin + 16);
    if (v5 == *(begin + 17))
    {
      if (*(begin + 160))
      {
        v6 = -1.0;
      }

      else
      {
        v6 = 0.0;
      }
    }

    else
    {
      v6 = *v5;
    }

    NSLog(@"%6.2f ", *&v6);
    begin = (begin + 168);
    ++v4;
  }

  while (begin < self->mFittingRowHeight.__end_);
  if ((~v4 & 0xF) != 0)
  {
LABEL_12:
    NSLog(@"\n");
  }

  NSLog(@"ColW: ");
  v7 = self->mFittingColumnWidth.__begin_;
  if (v7 >= self->mFittingColumnWidth.__end_)
  {
    goto LABEL_24;
  }

  v8 = 0;
  do
  {
    if ((~v8 & 0xF) == 0)
    {
      NSLog(@"\n      ");
    }

    if (*v7 == *(v7 + 1))
    {
      if (*(v7 + 24))
      {
        v9 = -1.0;
      }

      else
      {
        v9 = 0.0;
      }
    }

    else
    {
      v9 = **v7;
    }

    NSLog(@"%6.2f ", *&v9);
    v7 = (v7 + 32);
    ++v8;
  }

  while (v7 < self->mFittingColumnWidth.__end_);
  if ((~v8 & 0xF) != 0)
  {
LABEL_24:
    NSLog(@"\n");
  }
}

- (id)validateChangeDescriptors:(id)a3 tableModel:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = __Block_byref_object_copy__28;
  v27 = __Block_byref_object_dispose__28;
  v28 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 changeDescriptor];
        v11 = [v9 cellID];
        v12 = [v9 cellRegion];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __60__TSTWidthHeightCache_validateChangeDescriptors_tableModel___block_invoke;
        v16[3] = &unk_279D4A788;
        v17 = v10;
        v18 = v11;
        v16[5] = a4;
        v16[6] = &v23;
        v16[4] = self;
        [v12 enumerateCellRangesUsingBlock:v16];
      }

      v6 = [a3 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v6);
  }

  v13 = v24[5];
  _Block_object_dispose(&v23, 8);
  return v13;
}

uint64_t __60__TSTWidthHeightCache_validateChangeDescriptors_tableModel___block_invoke(uint64_t result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 >> 16;
  v5 = HIWORD(a2);
  switch(*(result + 56))
  {
    case 1:
      [*(result + 32) deleteColsStartingWith:BYTE2(a2) andEndingWith:(BYTE4(a2) + BYTE2(a2))];
      goto LABEL_3;
    case 2:
      v9 = *(result + 32);

      return [v9 insertCols:BYTE4(a2) atColumn:BYTE2(a2)];
    case 3:
      v14 = *(result + 32);
      v15 = *(v3 + 62);

      return [v14 moveColsFrom:a2 toCol:v15];
    case 4:
      v10 = HIDWORD(a2) + WORD1(a2) + 255;
      if (BYTE2(a2) <= (BYTE4(a2) + BYTE2(a2) - 1))
      {
        do
        {
          result = TSTTableIsColumnHidden(*(v3 + 40), v4);
          if ((result & 1) == 0)
          {
            result = [*(v3 + 32) setModelWidth:v4 forColumn:0.0];
          }

          LOBYTE(v4) = v4 + 1;
        }

        while (v4 <= v10);
      }

      return result;
    case 5:
    case 0x13:
    case 0x14:
    case 0x1A:
      [*(result + 32) resetWidthsHeightsForRange:a2];
      goto LABEL_3;
    case 0xD:
    case 0xE:
    case 0x19:
    case 0x21:
      goto LABEL_9;
    case 0x15:
      v8 = *(result + 32);

      return [v8 deleteRowsStartingWith:a2 andEndingWith:(HIWORD(a2) + a2)];
    case 0x16:
      [*(result + 32) insertRows:HIWORD(a2) atRow:a2];
LABEL_3:
      v6 = *(*(*(v3 + 48) + 8) + 40);
      if (!v6)
      {
        *(*(*(v3 + 48) + 8) + 40) = [MEMORY[0x277CCAB58] indexSet];
        v6 = *(*(*(v3 + 48) + 8) + 40);
      }

      result = [v6 addIndexesInRange:{v2, v5}];
      break;
    case 0x17:
      v11 = *(result + 32);
      v12 = *(v3 + 60);

      result = [v11 moveRowsFrom:a2 toRow:v12];
      break;
    case 0x18:
      v13 = a2 + HIWORD(a2) - 1;
      if (v13 >= a2)
      {
        do
        {
          result = TSTTableIsRowHidden(*(v3 + 40), v2);
          if ((result & 1) == 0)
          {
            result = [*(v3 + 32) setModelHeight:v2 forRow:0.0];
          }

          LOWORD(v2) = v2 + 1;
        }

        while (v2 <= v13);
      }

      break;
    case 0x1D:
    case 0x24:
      [*(result + 32) resetModelCache];
LABEL_9:
      v7 = *(v3 + 32);

      result = [v7 resetWidthsHeightsForRange:v2];
      break;
    default:
      return result;
  }

  return result;
}

- (void)_increaseColCapacity:(unsigned int)a3
{
  begin = self->mFittingColumnWidth.__begin_;
  p_mFittingColumnWidth = &self->mFittingColumnWidth;
  if (a3 >= ((p_mFittingColumnWidth->__cap_ - begin) >> 5))
  {
    if ((a3 & 0xFFFFFF1F) != 0)
    {
      v5 = (a3 + 32) & 0xE0;
    }

    else
    {
      v5 = a3;
    }

    std::vector<TSTWidthHeightCache_Private::WHCCol>::reserve(p_mFittingColumnWidth, v5);
  }
}

- (void)_increaseRowCapacity:(unsigned int)a3
{
  begin = self->mFittingRowHeight.__begin_;
  p_mFittingRowHeight = &self->mFittingRowHeight;
  if (0xCF3CF3CF3CF3CF3DLL * ((p_mFittingRowHeight->__cap_ - begin) >> 3) <= a3)
  {
    std::vector<TSTWidthHeightCache_Private::WHCRow>::reserve(p_mFittingRowHeight, 0);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = [v3 stringWithFormat:@"<%@ %p\n", NSStringFromClass(v4), self];
  [v5 appendFormat:@"  %u rows={\n", self->mMaxRow + 1];
  v6 = 0;
  do
  {
    [(TSTWidthHeightCache *)self getModelHeightForRow:v6];
    v8 = v7;
    [(TSTWidthHeightCache *)self getFitHeightForRow:v6];
    [v5 appendFormat:@"    {[%u] model=%f, fitting=%f }\n", v6++, v8, v9];
  }

  while (self->mMaxRow >= v6);
  [v5 appendString:@"  }\n"];
  [v5 appendFormat:@"  %u columns={\n", self->mMaxCol + 1];
  v10 = 0;
  do
  {
    [(TSTWidthHeightCache *)self getModelWidthForColumn:v10];
    v12 = v11;
    [(TSTWidthHeightCache *)self getFitWidthForCol:v10];
    [v5 appendFormat:@"    {[%u] model=%f, fitting=%f}\n", v10++, v12, v13];
  }

  while (self->mMaxCol >= v10);
  [v5 appendString:@"  }>"];
  return v5;
}

- (id).cxx_construct
{
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end