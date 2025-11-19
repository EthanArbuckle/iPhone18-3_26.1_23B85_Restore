@interface ImplicitlyAssumedIdentityEntitlement
- (ImplicitlyAssumedIdentityEntitlement)initWithType:(unint64_t)a3 impliedBundleID:(id)a4 isWebBrowser:(BOOL)a5;
@end

@implementation ImplicitlyAssumedIdentityEntitlement

- (ImplicitlyAssumedIdentityEntitlement)initWithType:(unint64_t)a3 impliedBundleID:(id)a4 isWebBrowser:(BOOL)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ImplicitlyAssumedIdentityEntitlement;
  v9 = [(ImplicitlyAssumedIdentityEntitlement *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = a3;
    v11 = [v8 copy];
    impliedBundleID = v10->_impliedBundleID;
    v10->_impliedBundleID = v11;

    v10->_isWebBrowser = a5;
  }

  return v10;
}

@end