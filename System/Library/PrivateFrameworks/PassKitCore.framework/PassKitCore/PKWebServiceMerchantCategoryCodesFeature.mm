@interface PKWebServiceMerchantCategoryCodesFeature
- (PKWebServiceMerchantCategoryCodesFeature)initWithDictionary:(id)dictionary region:(id)region;
@end

@implementation PKWebServiceMerchantCategoryCodesFeature

- (PKWebServiceMerchantCategoryCodesFeature)initWithDictionary:(id)dictionary region:(id)region
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PKWebServiceMerchantCategoryCodesFeature;
  v7 = [(PKWebServiceRegionFeature *)&v13 initWithFeatureType:16 dictionary:dictionaryCopy region:region];
  if (v7)
  {
    v8 = [dictionaryCopy PKArrayForKey:@"appleCardUnsupportedMerchantCategoryCodes"];
    appleCardUnsupportedMerchantCategoryCodes = v7->_appleCardUnsupportedMerchantCategoryCodes;
    v7->_appleCardUnsupportedMerchantCategoryCodes = v8;

    v10 = [dictionaryCopy PKArrayForKey:@"appleCashUnsupportedMerchantCategoryCodes"];
    appleCashUnsupportedMerchantCategoryCodes = v7->_appleCashUnsupportedMerchantCategoryCodes;
    v7->_appleCashUnsupportedMerchantCategoryCodes = v10;
  }

  return v7;
}

@end