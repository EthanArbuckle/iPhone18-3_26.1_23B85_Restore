@interface ImplicitlyAssumedIdentityEntitlement
- (ImplicitlyAssumedIdentityEntitlement)initWithType:(unint64_t)type impliedBundleID:(id)d isWebBrowser:(BOOL)browser;
@end

@implementation ImplicitlyAssumedIdentityEntitlement

- (ImplicitlyAssumedIdentityEntitlement)initWithType:(unint64_t)type impliedBundleID:(id)d isWebBrowser:(BOOL)browser
{
  dCopy = d;
  v14.receiver = self;
  v14.super_class = ImplicitlyAssumedIdentityEntitlement;
  v9 = [(ImplicitlyAssumedIdentityEntitlement *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = type;
    v11 = [dCopy copy];
    impliedBundleID = v10->_impliedBundleID;
    v10->_impliedBundleID = v11;

    v10->_isWebBrowser = browser;
  }

  return v10;
}

@end