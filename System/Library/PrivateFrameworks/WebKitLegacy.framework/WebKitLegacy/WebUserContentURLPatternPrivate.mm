@interface WebUserContentURLPatternPrivate
- (id).cxx_construct;
@end

@implementation WebUserContentURLPatternPrivate

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 16) = 1;
  return self;
}

@end