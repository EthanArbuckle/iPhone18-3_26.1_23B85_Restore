@interface PKWebServiceMerchantCategoryCodesFeature
- (PKWebServiceMerchantCategoryCodesFeature)initWithDictionary:(id)a3 region:(id)a4;
@end

@implementation PKWebServiceMerchantCategoryCodesFeature

- (PKWebServiceMerchantCategoryCodesFeature)initWithDictionary:(id)a3 region:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = PKWebServiceMerchantCategoryCodesFeature;
  v7 = [(PKWebServiceRegionFeature *)&v13 initWithFeatureType:16 dictionary:v6 region:a4];
  if (v7)
  {
    v8 = [v6 PKArrayForKey:@"appleCardUnsupportedMerchantCategoryCodes"];
    appleCardUnsupportedMerchantCategoryCodes = v7->_appleCardUnsupportedMerchantCategoryCodes;
    v7->_appleCardUnsupportedMerchantCategoryCodes = v8;

    v10 = [v6 PKArrayForKey:@"appleCashUnsupportedMerchantCategoryCodes"];
    appleCashUnsupportedMerchantCategoryCodes = v7->_appleCashUnsupportedMerchantCategoryCodes;
    v7->_appleCashUnsupportedMerchantCategoryCodes = v10;
  }

  return v7;
}

@end