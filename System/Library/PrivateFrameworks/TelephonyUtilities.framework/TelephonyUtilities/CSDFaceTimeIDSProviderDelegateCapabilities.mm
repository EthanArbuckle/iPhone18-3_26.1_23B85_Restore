@interface CSDFaceTimeIDSProviderDelegateCapabilities
- (BOOL)isMomentsAvailable;
@end

@implementation CSDFaceTimeIDSProviderDelegateCapabilities

- (BOOL)isMomentsAvailable
{
  v2 = self;
  v3 = sub_1003E0E14();

  return v3 & 1;
}

@end