@interface PNCreateStringByStrippingFormattingAndNotVisiblyAllowableSymbolLoc
@end

@implementation PNCreateStringByStrippingFormattingAndNotVisiblyAllowableSymbolLoc

void *__get_PNCreateStringByStrippingFormattingAndNotVisiblyAllowableSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CorePhoneNumbersLibrary();
  result = dlsym(v2, "_PNCreateStringByStrippingFormattingAndNotVisiblyAllowable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_PNCreateStringByStrippingFormattingAndNotVisiblyAllowableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end