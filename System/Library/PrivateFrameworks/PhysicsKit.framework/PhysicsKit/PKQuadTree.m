@interface PKQuadTree
- (id).cxx_construct;
@end

@implementation PKQuadTree

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end