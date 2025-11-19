@interface CXSenderIdentity
- (TUSenderIdentity)tuSenderIdentity;
@end

@implementation CXSenderIdentity

- (TUSenderIdentity)tuSenderIdentity
{
  v15 = [TUSenderIdentity alloc];
  v14 = [(CXSenderIdentity *)self UUID];
  v18 = [(CXSenderIdentity *)self account];
  v3 = [v18 UUID];
  v17 = [(CXSenderIdentity *)self account];
  v4 = [v17 isoCountryCode];
  v16 = [(CXSenderIdentity *)self account];
  v5 = [v16 accountDescription];
  v6 = [(CXSenderIdentity *)self account];
  v7 = [v6 shortLabel];
  v8 = [(CXSenderIdentity *)self account];
  v9 = [v8 serviceName];
  v10 = [(CXSenderIdentity *)self handle];
  v11 = [v10 tuHandle];
  v12 = [v15 initWithUUID:v14 accountUUID:v3 ISOCountryCode:v4 localizedName:v5 localizedShortName:v7 localizedServiceName:v9 handle:v11];

  return v12;
}

@end