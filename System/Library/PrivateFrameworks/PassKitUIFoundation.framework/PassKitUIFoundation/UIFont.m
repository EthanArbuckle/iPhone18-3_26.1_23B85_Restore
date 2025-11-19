@interface UIFont
@end

@implementation UIFont

uint64_t __60__UIFont_PKPeerPaymentAdditions__pk_loadPeerPaymentCashFont__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = [objc_opt_class() pk_loadFontWithFileName:@"SFCash-Plain" extension:@"otf"];
  pk_loadPeerPaymentCashFont_result = result;
  return result;
}

uint64_t __56__UIFont_PKPeerPaymentAdditions__pk_loadFDICSignageFont__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = [objc_opt_class() pk_loadFontWithFileName:@"SourceSans3-Italic" extension:@"ttf"];
  pk_loadFDICSignageFont_result = result;
  return result;
}

uint64_t __69__UIFont_PKPeerPaymentAdditions__pk_loadTextCondensedRegularCashFont__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = [objc_opt_class() pk_loadFontWithFileName:@"SF-Cash-Text-Condensed-Regular" extension:@"otf"];
  pk_loadTextCondensedRegularCashFont_result = result;
  return result;
}

uint64_t __70__UIFont_PKPeerPaymentAdditions__pk_loadTextCondensedSemiboldCashFont__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = [objc_opt_class() pk_loadFontWithFileName:@"SF-Cash-Text-Condensed-Semibold" extension:@"otf"];
  pk_loadTextCondensedSemiboldCashFont_result = result;
  return result;
}

uint64_t __68__UIFont_PKPeerPaymentAdditions__pk_loadTextCondensedMediumCashFont__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = [objc_opt_class() pk_loadFontWithFileName:@"SF-Cash-Text-Condensed-Medium" extension:@"otf"];
  pk_loadTextCondensedMediumCashFont_result = result;
  return result;
}

@end