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
  v2 = [(CSDTTYProviderObserver *)self utilityProvider];
  v3 = [v2 currentPreferredTransportMethod];

  if (v3 == 2)
  {
    return 2;
  }

  else
  {
    return v3 == 1;
  }
}

@end