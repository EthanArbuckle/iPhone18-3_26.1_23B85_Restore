@interface CXSenderIdentity
- (TUSenderIdentity)tuSenderIdentity;
@end

@implementation CXSenderIdentity

- (TUSenderIdentity)tuSenderIdentity
{
  v15 = [TUSenderIdentity alloc];
  uUID = [(CXSenderIdentity *)self UUID];
  account = [(CXSenderIdentity *)self account];
  uUID2 = [account UUID];
  account2 = [(CXSenderIdentity *)self account];
  isoCountryCode = [account2 isoCountryCode];
  account3 = [(CXSenderIdentity *)self account];
  accountDescription = [account3 accountDescription];
  account4 = [(CXSenderIdentity *)self account];
  shortLabel = [account4 shortLabel];
  account5 = [(CXSenderIdentity *)self account];
  serviceName = [account5 serviceName];
  handle = [(CXSenderIdentity *)self handle];
  tuHandle = [handle tuHandle];
  v12 = [v15 initWithUUID:uUID accountUUID:uUID2 ISOCountryCode:isoCountryCode localizedName:accountDescription localizedShortName:shortLabel localizedServiceName:serviceName handle:tuHandle];

  return v12;
}

@end