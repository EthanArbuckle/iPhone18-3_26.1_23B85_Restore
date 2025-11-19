@interface NSCoder
@end

@implementation NSCoder

uint64_t __64__NSCoder__UIHyperCoding___ui_decodeVectorForKey_returnedCount___block_invoke(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v3 = *(result + 40);
    do
    {
      v4 = *v3++;
      *a2++ = bswap64(v4);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t __74__NSCoder__UIHyperCoding___ui_decodeNSUIntegerVectorForKey_returnedCount___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 32))
  {
    v2 = 0;
    v3 = *(result + 40);
    do
    {
      *(a2 + 8 * v2) = *(v3 + 8 * v2);
      ++v2;
    }

    while (v2 < *(result + 32));
  }

  return result;
}

@end