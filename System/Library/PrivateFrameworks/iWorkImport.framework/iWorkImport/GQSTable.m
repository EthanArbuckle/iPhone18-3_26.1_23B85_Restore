@interface GQSTable
- (GQSTable)initWithStreaming:(BOOL)a3 table:(id)a4;
- (int64_t)column;
- (void)dealloc;
- (void)setCurrentOverlapCell:(id)a3;
- (void)setLastCellRead:(id)a3;
- (void)skipCells:(int64_t)a3;
@end

@implementation GQSTable

- (GQSTable)initWithStreaming:(BOOL)a3 table:(id)a4
{
  v7.receiver = self;
  v7.super_class = GQSTable;
  result = [(GQSTable *)&v7 init];
  if (result)
  {
    result->mIsStreaming = a3;
    result->mTable = a4;
    result->mAlwaysPutReadCellsInArray = !a3;
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

- (void)setCurrentOverlapCell:(id)a3
{
  v5 = a3;

  self->mCurrentOverlapCell = a3;
}

- (void)setLastCellRead:(id)a3
{
  mLastCellRead = self->mLastCellRead;
  if (mLastCellRead != a3)
  {

    self->mLastCellRead = a3;
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

- (void)skipCells:(int64_t)a3
{
  if (self->mIsCounting)
  {
    self->mCellCount += a3;
  }
}

@end