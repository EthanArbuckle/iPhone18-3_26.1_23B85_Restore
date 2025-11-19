@interface CSDCarrierBundlePhoneNumberProvider
- (CSDCarrierBundlePhoneNumberProvider)initWithUUID:(id)a3 carrierPhoneNumbers:(id)a4;
@end

@implementation CSDCarrierBundlePhoneNumberProvider

- (CSDCarrierBundlePhoneNumberProvider)initWithUUID:(id)a3 carrierPhoneNumbers:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CSDCarrierBundlePhoneNumberProvider;
  v9 = [(CSDCarrierBundlePhoneNumberProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uuid, a3);
    v11 = [v8 copy];
    carrierPhoneNumbers = v10->_carrierPhoneNumbers;
    v10->_carrierPhoneNumbers = v11;
  }

  return v10;
}

@end