@interface TSCECellDirtier
- (BOOL)_dirtyCellsWithNoLockForSeconds:(double)a3 fromStartTime:(id)a4;
- (BOOL)dirtyCellsForSeconds:(double)a3 fromStartTime:(id)a4;
- (BOOL)dirtyNewCellRef:(const TSCEInternalCellReference *)a3 forSeconds:(double)a4 fromStartTime:(id)a5;
- (TSCECellDirtier)initWithDependencyTracker:(id)a3;
- (TSCEInternalCellReference)startCellRef;
- (id).cxx_construct;
- (void)startDirtyingCellRef;
- (void)stopDirtyingCellRef;
@end

@implementation TSCECellDirtier

- (TSCECellDirtier)initWithDependencyTracker:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSCECellDirtier;
  v6 = [(TSCECellDirtier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dependTracker, a3);
    v7->_startCellRef.coordinate = 0x7FFF7FFFFFFFLL;
    *&v7->_startCellRef.tableID = 0xFFFF;
    v7->_dirtyingLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v7;
}

- (void)startDirtyingCellRef
{
  self->_dirtyingInProgress = 1;
  v10 = 0x7FFF7FFFFFFFLL;
  v11 = 0xFFFF;
  v12 = &v10;
  if (!sub_2211F0730(&self->_dependentsToDirtyByFromRef.__table_.__bucket_list_.__ptr_, &v10)[4])
  {
    v3 = objc_opt_new();
    v10 = 0x7FFF7FFFFFFFLL;
    v11 = 0xFFFF;
    v12 = &v10;
    v4 = sub_2211F0730(&self->_dependentsToDirtyByFromRef.__table_.__bucket_list_.__ptr_, &v10);
    v5 = v4[4];
    v4[4] = v3;
  }

  v10 = 0x7FFF7FFFFFFFLL;
  v11 = 0xFFFF;
  v12 = &v10;
  v6 = sub_2211F0730(&self->_dependentsToDirtyByFromRef.__table_.__bucket_list_.__ptr_, &v10);
  objc_msgSend_addCellRef_(v6[4], v7, &self->_startCellRef, v8, v9);
}

- (void)stopDirtyingCellRef
{
  self->_dirtyingInProgress = 0;
  self->_startCellRef.coordinate = 0x7FFF7FFFFFFFLL;
  *&self->_startCellRef.tableID = 0xFFFF;
  sub_221087B24(&self->_dependentsToDirtyByFromRef);
}

- (BOOL)_dirtyCellsWithNoLockForSeconds:(double)a3 fromStartTime:(id)a4
{
  v7 = a4;
  objc_storeStrong(&self->_startTime, a4);
  self->_timeout = a3;
  objc_msgSend_incrementalMarkCellRefDirty_(self->_dependTracker, v8, self, v9, v10);
  LOBYTE(self) = objc_msgSend_isDoneDirtying(self, v11, v12, v13, v14);

  return self;
}

- (BOOL)dirtyCellsForSeconds:(double)a3 fromStartTime:(id)a4
{
  v6 = a4;
  os_unfair_lock_lock(&self->_dirtyingLock);
  started = objc_msgSend__dirtyCellsWithNoLockForSeconds_fromStartTime_(self, v7, v6, v8, v9, a3);

  os_unfair_lock_unlock(&self->_dirtyingLock);
  return started;
}

- (BOOL)dirtyNewCellRef:(const TSCEInternalCellReference *)a3 forSeconds:(double)a4 fromStartTime:(id)a5
{
  v8 = a5;
  os_unfair_lock_lock(&self->_dirtyingLock);
  if (self->_dirtyingInProgress)
  {
    started = 0;
  }

  else
  {
    coordinate = a3->coordinate;
    *&self->_startCellRef.tableID = *&a3->tableID;
    self->_startCellRef.coordinate = coordinate;
    self->_dirtyingInProgress = 0;
    sub_221087B24(&self->_dependentsToDirtyByFromRef);
    started = objc_msgSend__dirtyCellsWithNoLockForSeconds_fromStartTime_(self, v11, v8, v12, v13, a4);
  }

  os_unfair_lock_unlock(&self->_dirtyingLock);

  return started;
}

- (TSCEInternalCellReference)startCellRef
{
  v2 = *&self->_startCellRef.tableID;
  coordinate = self->_startCellRef.coordinate;
  result.coordinate = coordinate;
  result.tableID = v2;
  result.reserved = HIWORD(v2);
  return result;
}

- (id).cxx_construct
{
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 22) = 1065353216;
  return self;
}

@end