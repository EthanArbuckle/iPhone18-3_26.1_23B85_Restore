@interface PCSFPEnumeratePublicIdentities
@end

@implementation PCSFPEnumeratePublicIdentities

uint64_t ___PCSFPEnumeratePublicIdentities_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  return (*(*(a1 + 32) + 16))();
}

@end