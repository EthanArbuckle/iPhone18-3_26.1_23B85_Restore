@interface NSFileWrapper
@end

@implementation NSFileWrapper

uint64_t __52__NSFileWrapper_SBFFileSizeCalculation__sb_fileSize__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 sb_fileSize];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

@end