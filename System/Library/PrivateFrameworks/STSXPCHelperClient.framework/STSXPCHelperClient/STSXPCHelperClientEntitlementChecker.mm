@interface STSXPCHelperClientEntitlementChecker
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation STSXPCHelperClientEntitlementChecker

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  result = objc_msgSend_init(v7, v8, v9);
  if (result)
  {
    if (self)
    {
      xpcHelperClientTransceiveProxyListenerAccess = self->_xpcHelperClientTransceiveProxyListenerAccess;
    }

    else
    {
      xpcHelperClientTransceiveProxyListenerAccess = 0;
    }

    *(result + 8) = xpcHelperClientTransceiveProxyListenerAccess;
  }

  return result;
}

@end