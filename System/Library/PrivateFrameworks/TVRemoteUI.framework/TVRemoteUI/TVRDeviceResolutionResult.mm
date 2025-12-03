@interface TVRDeviceResolutionResult
+ (id)confirmationRequiredWithDeviceToConfirm:(id)confirm;
+ (id)disambiguationWithDevicesToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedDevice:(id)device;
@end

@implementation TVRDeviceResolutionResult

+ (id)successWithResolvedDevice:(id)device
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___TVRDeviceResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, device);

  return v3;
}

+ (id)disambiguationWithDevicesToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___TVRDeviceResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, disambiguate);

  return v3;
}

+ (id)confirmationRequiredWithDeviceToConfirm:(id)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___TVRDeviceResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithObjectToConfirm_, confirm);

  return v3;
}

@end