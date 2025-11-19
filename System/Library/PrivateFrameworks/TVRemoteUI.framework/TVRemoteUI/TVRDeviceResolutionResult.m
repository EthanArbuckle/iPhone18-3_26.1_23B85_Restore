@interface TVRDeviceResolutionResult
+ (id)confirmationRequiredWithDeviceToConfirm:(id)a3;
+ (id)disambiguationWithDevicesToDisambiguate:(id)a3;
+ (id)successWithResolvedDevice:(id)a3;
@end

@implementation TVRDeviceResolutionResult

+ (id)successWithResolvedDevice:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___TVRDeviceResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, a3);

  return v3;
}

+ (id)disambiguationWithDevicesToDisambiguate:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___TVRDeviceResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, a3);

  return v3;
}

+ (id)confirmationRequiredWithDeviceToConfirm:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___TVRDeviceResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithObjectToConfirm_, a3);

  return v3;
}

@end