@interface PNCopyFormattedNumberSuggestionForDigitsWithCountrySymbolLoc
@end

@implementation PNCopyFormattedNumberSuggestionForDigitsWithCountrySymbolLoc

void *__get_PNCopyFormattedNumberSuggestionForDigitsWithCountrySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CorePhoneNumbersLibrary();
  result = dlsym(v2, "_PNCopyFormattedNumberSuggestionForDigitsWithCountry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_PNCopyFormattedNumberSuggestionForDigitsWithCountrySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end