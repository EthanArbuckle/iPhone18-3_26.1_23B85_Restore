@interface PNCopyFormattedNumberForDigitsWithCountryByRemovingAtIndexSymbolLoc
@end

@implementation PNCopyFormattedNumberForDigitsWithCountryByRemovingAtIndexSymbolLoc

void *__get_PNCopyFormattedNumberForDigitsWithCountryByRemovingAtIndexSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CorePhoneNumbersLibrary();
  result = dlsym(v2, "_PNCopyFormattedNumberForDigitsWithCountryByRemovingAtIndex");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_PNCopyFormattedNumberForDigitsWithCountryByRemovingAtIndexSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end