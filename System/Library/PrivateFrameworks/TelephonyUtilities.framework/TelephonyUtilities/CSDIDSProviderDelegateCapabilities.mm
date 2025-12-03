@interface CSDIDSProviderDelegateCapabilities
- (BOOL)isCellularDataAllowed;
- (BOOL)isCellularDataAvailable;
- (BOOL)isWiFiAllowed;
- (BOOL)isWiFiAvailable;
@end

@implementation CSDIDSProviderDelegateCapabilities

- (BOOL)isWiFiAvailable
{
  selfCopy = self;
  v3 = sub_1003C72B0();

  return v3 & 1;
}

- (BOOL)isWiFiAllowed
{
  selfCopy = self;
  v3 = sub_1003C72C4();

  return v3 & 1;
}

- (BOOL)isCellularDataAvailable
{
  selfCopy = self;
  v3 = sub_1003C7358();

  return v3 & 1;
}

- (BOOL)isCellularDataAllowed
{
  selfCopy = self;
  v3 = sub_1003C785C();

  return v3 & 1;
}

@end