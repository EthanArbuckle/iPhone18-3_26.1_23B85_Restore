@interface TSTIndexingChunk
- (id).cxx_construct;
@end

@implementation TSTIndexingChunk

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  return self;
}

@end