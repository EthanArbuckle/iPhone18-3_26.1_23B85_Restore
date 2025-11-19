@interface NSURLRequest
@end

@implementation NSURLRequest

uint64_t __42__NSURLRequest_print__psso_DisplayRequest__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(*(*(a1 + 32) + 8) + 40) stringByAppendingFormat:@"%@: %@\n", a2, a3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8](v4, v6);
}

@end