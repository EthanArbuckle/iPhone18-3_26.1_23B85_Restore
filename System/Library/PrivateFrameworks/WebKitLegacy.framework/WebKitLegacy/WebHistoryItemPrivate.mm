@interface WebHistoryItemPrivate
- (id).cxx_construct;
@end

@implementation WebHistoryItemPrivate

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 3) = 0;
  return self;
}

@end