@interface TSTTableHeaderInfo
- (id)description;
- (void)dealloc;
@end

@implementation TSTTableHeaderInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTTableHeaderInfo;
  [(TSTTableHeaderInfo *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@:%p size %f count %hu hiding 0x%02hx cstyle %p tstyle %p", NSStringFromClass(v4), self, *&self->mSize, self->mNumberOfCells, self->mHidingState, self->mCellStyle, self->mTextStyle];
}

@end