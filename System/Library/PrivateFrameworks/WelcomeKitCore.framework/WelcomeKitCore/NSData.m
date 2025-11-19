@interface NSData
@end

@implementation NSData

void __62__NSData_WLMessage__wl_subdataWithRangeExcludingTrailingCrnl___block_invoke()
{
  strcpy(v2, "\r\n");
  v0 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v2 length:2];
  v1 = wl_subdataWithRangeExcludingTrailingCrnl__crlfData;
  wl_subdataWithRangeExcludingTrailingCrnl__crlfData = v0;
}

uint64_t __34__NSData_Hex__wl_hexEncodedString__block_invoke(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = 2 * a3;
    do
    {
      v5 = *a2++;
      *(*(result + 32) + v4) = wl_hexEncodedString_intToHexMap[v5 >> 4];
      *(*(result + 32) + v4 + 1) = wl_hexEncodedString_intToHexMap[v5 & 0xF];
      v4 += 2;
      --a4;
    }

    while (a4);
  }

  return result;
}

@end