@interface FPMemoryCategory
- (FPMemoryCategory)init;
@end

@implementation FPMemoryCategory

- (FPMemoryCategory)init
{
  if (self)
  {
    v2.receiver = self;
    v2.super_class = FPMemoryCategory;
    self = [(FPMemoryCategory *)&v2 init];
    if (self)
    {
      self->_isSummary = 0;
      *&self->_totalDirtySize = 0u;
      *&self->_totalCleanSize = 0u;
      self->_totalWiredSize = 0;
    }
  }

  return self;
}

@end