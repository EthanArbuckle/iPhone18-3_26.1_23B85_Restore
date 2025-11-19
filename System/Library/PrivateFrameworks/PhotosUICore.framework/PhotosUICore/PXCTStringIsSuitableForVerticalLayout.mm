@interface PXCTStringIsSuitableForVerticalLayout
@end

@implementation PXCTStringIsSuitableForVerticalLayout

void ___PXCTStringIsSuitableForVerticalLayout_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = [_PXCTStringIsSuitableForVerticalLayout_forbiddenCharactersRegex firstMatchInString:*(a1 + 32) options:0 range:{a3, a4}];

  if (v9)
  {
    *a7 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void ___PXCTStringIsSuitableForVerticalLayout_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"[  \\p{Hang}]+" options:2 error:0];
  v1 = _PXCTStringIsSuitableForVerticalLayout_forbiddenCharactersRegex;
  _PXCTStringIsSuitableForVerticalLayout_forbiddenCharactersRegex = v0;
}

@end