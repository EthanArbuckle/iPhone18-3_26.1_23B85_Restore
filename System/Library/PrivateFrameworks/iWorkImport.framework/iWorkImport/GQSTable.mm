@interface GQSTable
- (GQSTable)initWithStreaming:(BOOL)streaming table:(id)table;
- (int64_t)column;
- (void)dealloc;
- (void)setCurrentOverlapCell:(id)cell;
- (void)setLastCellRead:(id)read;
- (void)skipCells:(int64_t)cells;
@end

@implementation GQSTable

- (GQSTable)initWithStreaming:(BOOL)streaming table:(id)table
{
  v7.receiver = self;
  v7.super_class = GQSTable;
  result = [(GQSTable *)&v7 init];
  if (result)
  {
    result->mIsStreaming = streaming;
    result->mTable = table;
    result->mAlwaysPutReadCellsInArray = !streaming;
    result->mCellCount = 1;
    result->mIsCounting = 1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQSTable;
  [(GQSTable *)&v3 dealloc];
}

- (void)setCurrentOverlapCell:(id)cell
{
  cellCopy = cell;

  self->mCurrentOverlapCell = cell;
}

- (void)setLastCellRead:(id)read
{
  mLastCellRead = self->mLastCellRead;
  if (mLastCellRead != read)
  {

    self->mLastCellRead = read;
  }
}

- (int64_t)column
{
  if (self->mCellCount <= 0)
  {
    return --LOBYTE(self->mCellCount);
  }

  else
  {
    return self->mCellCount;
  }
}

- (void)skipCells:(int64_t)cells
{
  if (self->mIsCounting)
  {
    self->mCellCount += cells;
  }
}

@end