@interface PFServerPosterPathToPRPosterDescriptor
@end

@implementation PFServerPosterPathToPRPosterDescriptor

id ____PFServerPosterPathToPRPosterDescriptor_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PRPosterDescriptor alloc] _initWithPath:v2];

  return v3;
}

@end