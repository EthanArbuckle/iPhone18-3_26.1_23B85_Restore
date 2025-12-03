@interface CSDTTYProviderObserver
- (RTTTelephonyUtilities)utilityProvider;
- (unint64_t)transportMethod;
@end

@implementation CSDTTYProviderObserver

- (RTTTelephonyUtilities)utilityProvider
{
  v2 = CUTWeakLinkClass();

  return [v2 sharedUtilityProvider];
}

- (unint64_t)transportMethod
{
  utilityProvider = [(CSDTTYProviderObserver *)self utilityProvider];
  currentPreferredTransportMethod = [utilityProvider currentPreferredTransportMethod];

  if (currentPreferredTransportMethod == 2)
  {
    return 2;
  }

  else
  {
    return currentPreferredTransportMethod == 1;
  }
}

@end