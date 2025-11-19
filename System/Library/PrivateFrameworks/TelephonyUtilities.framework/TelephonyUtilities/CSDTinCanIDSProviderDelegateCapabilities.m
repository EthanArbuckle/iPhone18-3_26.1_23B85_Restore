@interface CSDTinCanIDSProviderDelegateCapabilities
- (BOOL)isCellularDataAllowed;
@end

@implementation CSDTinCanIDSProviderDelegateCapabilities

- (BOOL)isCellularDataAllowed
{
  v2 = self;
  v3 = sub_1003C71A8();

  return v3 & 1;
}

@end