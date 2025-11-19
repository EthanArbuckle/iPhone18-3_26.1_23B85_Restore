@interface PNCopyPrefixForCountrySymbolLoc
@end

@implementation PNCopyPrefixForCountrySymbolLoc

void *__get_PNCopyPrefixForCountrySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CorePhoneNumbersLibrary();
  result = dlsym(v2, "_PNCopyPrefixForCountry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_PNCopyPrefixForCountrySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end