@interface FPRangeList
- (void)dealloc;
@end

@implementation FPRangeList

- (void)dealloc
{
  rangeListHead = self->_rangeListHead;
  if (rangeListHead)
  {
    do
    {
      var7 = rangeListHead->var7;
      free(rangeListHead);
      rangeListHead = var7;
    }

    while (var7);
  }

  self->_rangeListHead = 0;
  v5.receiver = self;
  v5.super_class = FPRangeList;
  [(FPRangeList *)&v5 dealloc];
}

@end