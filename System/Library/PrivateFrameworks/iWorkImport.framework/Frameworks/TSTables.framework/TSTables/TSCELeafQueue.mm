@interface TSCELeafQueue
- (BOOL)addLeaf:(const TSCEInternalCellReference *)leaf withOptions:(unint64_t)options;
- (BOOL)hasMultiEvalLeaves;
- (BOOL)isEmpty;
- (BOOL)isSingleEvalQueueEmpty;
- (TSCECellCoordSet)cellCoordsForMultiEvalOwnerID:(SEL)d;
- (TSCEInternalCellReference)popLeaf;
- (TSCELeafQueue)init;
- (id).cxx_construct;
- (vector<unsigned)multiEvalOwnerIDs;
- (void)addAllLeavesToSet:(void *)set;
- (void)addMultiEvalOwnerID:(unsigned __int16)d;
- (void)clearMultiEvalOwnerID:(unsigned __int16)d;
- (void)removeMultiEvalOwnerID:(unsigned __int16)d;
@end

@implementation TSCELeafQueue

- (TSCELeafQueue)init
{
  v3.receiver = self;
  v3.super_class = TSCELeafQueue;
  result = [(TSCELeafQueue *)&v3 init];
  if (result)
  {
    result->_leafQueueMutex._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return result;
}

- (void)addAllLeavesToSet:(void *)set
{
  os_unfair_lock_lock(&self->_leafQueueMutex);
  sub_2212DFD90(set, &self->_leafQueueSet);
  sub_2212DFD90(set, &self->_multiEvalSet);

  os_unfair_lock_unlock(&self->_leafQueueMutex);
}

- (void)addMultiEvalOwnerID:(unsigned __int16)d
{
  os_unfair_lock_lock(&self->_leafQueueMutex);
  TSUIndexSet::addIndex(&self->_multiEvalOwnerIds);

  os_unfair_lock_unlock(&self->_leafQueueMutex);
}

- (void)removeMultiEvalOwnerID:(unsigned __int16)d
{
  os_unfair_lock_lock(&self->_leafQueueMutex);
  TSUIndexSet::removeIndex(&self->_multiEvalOwnerIds);

  os_unfair_lock_unlock(&self->_leafQueueMutex);
}

- (BOOL)addLeaf:(const TSCEInternalCellReference *)leaf withOptions:(unint64_t)options
{
  optionsCopy = options;
  os_unfair_lock_lock(&self->_leafQueueMutex);
  v7 = TSUIndexSet::containsIndex(&self->_multiEvalOwnerIds);
  v8 = v7;
  if (self->_leafQueue.__size_)
  {
    v9 = 0;
    if (v7)
    {
LABEL_3:
      p_multiEvalSet = &self->_multiEvalSet;
      goto LABEL_4;
    }
  }

  else
  {
    v9 = sub_2212E0280(&self->_multiEvalSet);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  p_multiEvalSet = &self->_leafQueueSet;
  if (sub_2212E0198(&self->_leafQueueSet._coordsForOwnerId.__table_.__bucket_list_.__ptr_, leaf))
  {
    goto LABEL_7;
  }

  p_leafQueue = &self->_leafQueue;
  if (optionsCopy)
  {
    sub_2214D9E88(p_leafQueue, leaf);
  }

  else
  {
    sub_2214D9F38(p_leafQueue, leaf);
  }

LABEL_4:
  sub_2212DFCE8(p_multiEvalSet, leaf);
LABEL_7:
  os_unfair_lock_unlock(&self->_leafQueueMutex);
  return v9;
}

- (BOOL)isEmpty
{
  os_unfair_lock_lock(&self->_leafQueueMutex);
  if (self->_leafQueue.__size_)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_2212E0280(&self->_multiEvalSet);
  }

  os_unfair_lock_unlock(&self->_leafQueueMutex);
  return v3;
}

- (BOOL)isSingleEvalQueueEmpty
{
  os_unfair_lock_lock(&self->_leafQueueMutex);
  v3 = self->_leafQueue.__size_ == 0;
  os_unfair_lock_unlock(&self->_leafQueueMutex);
  return v3;
}

- (TSCEInternalCellReference)popLeaf
{
  coordinate = 0x7FFF7FFFFFFFLL;
  v10 = 0xFFFF;
  os_unfair_lock_lock(&self->_leafQueueMutex);
  size = self->_leafQueue.__size_;
  if (size)
  {
    start = self->_leafQueue.__start_;
    v5 = &self->_leafQueue.__map_.__begin_[start / 0x155][start % 0x155];
    v6 = *&v5->tableID;
    coordinate = v5->coordinate;
    v10 = v6;
    self->_leafQueue.__start_ = start + 1;
    self->_leafQueue.__size_ = size - 1;
    sub_2214DA79C(&self->_leafQueue, 1);
    sub_2212DFDD0(&self->_leafQueueSet._coordsForOwnerId.__table_.__bucket_list_.__ptr_, &coordinate);
  }

  os_unfair_lock_unlock(&self->_leafQueueMutex);
  v7 = coordinate;
  v8 = v10;
  result.coordinate = v7;
  result.tableID = v8;
  result.reserved = HIWORD(v8);
  return result;
}

- (BOOL)hasMultiEvalLeaves
{
  os_unfair_lock_lock(&self->_leafQueueMutex);
  v3 = sub_2212E0280(&self->_multiEvalSet);
  os_unfair_lock_unlock(&self->_leafQueueMutex);
  return !v3;
}

- (vector<unsigned)multiEvalOwnerIDs
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  os_unfair_lock_lock(&self->_leafQueueMutex);
  sub_2212E02BC(&self->_multiEvalSet, &v7);
  v5 = v8;
  *&retstr->var0 = v7;
  retstr->var2 = v5;
  os_unfair_lock_unlock(&self->_leafQueueMutex);
  return result;
}

- (void)clearMultiEvalOwnerID:(unsigned __int16)d
{
  os_unfair_lock_lock(&self->_leafQueueMutex);
  dCopy = d;
  sub_2212E10A8(&self->_multiEvalSet._coordsForOwnerId.__table_.__bucket_list_.__ptr_, &dCopy);
  os_unfair_lock_unlock(&self->_leafQueueMutex);
}

- (TSCECellCoordSet)cellCoordsForMultiEvalOwnerID:(SEL)d
{
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  os_unfair_lock_lock(&self->_leafQueueMutex);
  v7 = sub_2212E00A8(&self->_multiEvalSet._coordsForOwnerId.__table_.__bucket_list_.__ptr_, a4);
  TSCECellCoordSet::operator=(retstr, v7);

  os_unfair_lock_unlock(&self->_leafQueueMutex);
  return result;
}

- (id).cxx_construct
{
  self->_leafQueueSet._coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&self->_leafQueueSet._coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  *&self->_leafQueue.__map_.__end_ = 0u;
  *&self->_leafQueue.__start_ = 0u;
  *&self->_leafQueue.__map_.__first_ = 0u;
  self->_leafQueueSet._coordsForOwnerId.__table_.__max_load_factor_ = 1.0;
  self->_multiEvalSet._coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&self->_multiEvalSet._coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  self->_multiEvalSet._coordsForOwnerId.__table_.__max_load_factor_ = 1.0;
  TSUIndexSet::TSUIndexSet(&self->_multiEvalOwnerIds);
  return self;
}

@end