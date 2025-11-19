@interface GQHTableState
- (GQHTableState)init;
- (int64_t)nextSplitTableIndex;
- (void)dealloc;
- (void)setSplitTable:(BOOL)a3;
- (void)setTable:(id)a3;
@end

@implementation GQHTableState

- (GQHTableState)init
{
  v3.receiver = self;
  v3.super_class = GQHTableState;
  if ([(GQHTableState *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  mCellCountInColumns = self->mCellCountInColumns;
  if (mCellCountInColumns)
  {
    v4 = *mCellCountInColumns;
    if (*mCellCountInColumns)
    {
      mCellCountInColumns[1] = v4;
      operator delete(v4);
    }

    operator delete();
  }

  v5.receiver = self;
  v5.super_class = GQHTableState;
  [(GQHTableState *)&v5 dealloc];
}

- (void)setTable:(id)a3
{
  v3 = a3;
  v5 = a3;

  self->mTable = v3;
  LODWORD(v3) = [-[GQDTTable model](v3 "model")];
  mCellCountInColumns = self->mCellCountInColumns;
  v7 = 0;
  sub_33CFC(mCellCountInColumns, v3, &v7);
  self->mPrevRowIndex = -1;
  self->mPrevColumnIndex = v3;
}

- (void)setSplitTable:(BOOL)a3
{
  self->mSplitTable = a3;
  self->mCurrentTablePosition = 0.0;
  self->mLastAttachmentPosition = 0.0;
}

- (int64_t)nextSplitTableIndex
{
  v2 = self->mSplitTableIndex + 1;
  self->mSplitTableIndex = v2;
  return v2;
}

@end