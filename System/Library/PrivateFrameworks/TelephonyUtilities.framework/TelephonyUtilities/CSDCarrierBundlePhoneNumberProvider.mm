@interface CSDCarrierBundlePhoneNumberProvider
- (CSDCarrierBundlePhoneNumberProvider)initWithUUID:(id)d carrierPhoneNumbers:(id)numbers;
@end

@implementation CSDCarrierBundlePhoneNumberProvider

- (CSDCarrierBundlePhoneNumberProvider)initWithUUID:(id)d carrierPhoneNumbers:(id)numbers
{
  dCopy = d;
  numbersCopy = numbers;
  v14.receiver = self;
  v14.super_class = CSDCarrierBundlePhoneNumberProvider;
  v9 = [(CSDCarrierBundlePhoneNumberProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uuid, d);
    v11 = [numbersCopy copy];
    carrierPhoneNumbers = v10->_carrierPhoneNumbers;
    v10->_carrierPhoneNumbers = v11;
  }

  return v10;
}

@end