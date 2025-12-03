@interface GQHTableState
- (GQHTableState)init;
- (int64_t)nextSplitTableIndex;
- (void)dealloc;
- (void)setSplitTable:(BOOL)table;
- (void)setTable:(id)table;
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

- (void)setTable:(id)table
{
  tableCopy = table;
  tableCopy2 = table;

  self->mTable = tableCopy;
  LODWORD(tableCopy) = [-[GQDTTable model](tableCopy "model")];
  mCellCountInColumns = self->mCellCountInColumns;
  v7 = 0;
  sub_33CFC(mCellCountInColumns, tableCopy, &v7);
  self->mPrevRowIndex = -1;
  self->mPrevColumnIndex = tableCopy;
}

- (void)setSplitTable:(BOOL)table
{
  self->mSplitTable = table;
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