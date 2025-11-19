@interface WebNavigationDataPrivate
- (id).cxx_construct;
@end

@implementation WebNavigationDataPrivate

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 8) = 0u;
  *(self + 24) = 0u;
  return self;
}

@end