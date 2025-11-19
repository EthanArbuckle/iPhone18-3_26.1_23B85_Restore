@interface STSXPCHelperEntitlementChecker
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation STSXPCHelperEntitlementChecker

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (result)
  {
    if (self)
    {
      xpcClientAccess = self->_xpcClientAccess;
    }

    else
    {
      xpcClientAccess = 0;
    }

    *(result + 8) = xpcClientAccess;
  }

  return result;
}

@end