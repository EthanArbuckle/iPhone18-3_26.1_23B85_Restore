@interface STMutableTelephonyCarrierBundleInfo
- (id)copyWithZone:(_NSZone *)zone;
- (void)setCarrierName:(id)name;
- (void)setCustomerServicePhoneNumber:(id)number;
- (void)setDisabledApplicationIDs:(id)ds;
- (void)setHomeCountryCode:(id)code;
- (void)setLTEConnectionShows4G:(BOOL)g;
- (void)setReinitiatingActivationDisabled:(BOOL)disabled;
- (void)setSuppressSOSOnlyWithLimitedService:(BOOL)service;
@end

@implementation STMutableTelephonyCarrierBundleInfo

- (void)setLTEConnectionShows4G:(BOOL)g
{
  if (self->super._LTEConnectionShows4G != g)
  {
    self->super._LTEConnectionShows4G = g;
  }
}

- (void)setSuppressSOSOnlyWithLimitedService:(BOOL)service
{
  if (self->super._suppressSOSOnlyWithLimitedService != service)
  {
    self->super._suppressSOSOnlyWithLimitedService = service;
  }
}

- (void)setReinitiatingActivationDisabled:(BOOL)disabled
{
  if (self->super._reinitiatingActivationDisabled != disabled)
  {
    self->super._reinitiatingActivationDisabled = disabled;
  }
}

- (void)setCustomerServicePhoneNumber:(id)number
{
  numberCopy = number;
  if (([numberCopy isEqualToString:self->super._customerServicePhoneNumber] & 1) == 0)
  {
    v4 = [numberCopy copy];
    customerServicePhoneNumber = self->super._customerServicePhoneNumber;
    self->super._customerServicePhoneNumber = v4;
  }
}

- (void)setDisabledApplicationIDs:(id)ds
{
  dsCopy = ds;
  if (([dsCopy isEqualToArray:self->super._disabledApplicationIDs] & 1) == 0)
  {
    v4 = [dsCopy copy];
    disabledApplicationIDs = self->super._disabledApplicationIDs;
    self->super._disabledApplicationIDs = v4;
  }
}

- (void)setCarrierName:(id)name
{
  nameCopy = name;
  if (([nameCopy isEqualToString:self->super._carrierName] & 1) == 0)
  {
    v4 = [nameCopy copy];
    carrierName = self->super._carrierName;
    self->super._carrierName = v4;
  }
}

- (void)setHomeCountryCode:(id)code
{
  codeCopy = code;
  if (([codeCopy isEqualToString:self->super._homeCountryCode] & 1) == 0)
  {
    v4 = [codeCopy copy];
    homeCountryCode = self->super._homeCountryCode;
    self->super._homeCountryCode = v4;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STTelephonyCarrierBundleInfo allocWithZone:zone];

  return [(STTelephonyCarrierBundleInfo *)v4 initWithCarrierBundleInfo:?];
}

@end