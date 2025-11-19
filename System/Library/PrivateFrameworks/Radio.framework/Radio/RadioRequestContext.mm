@interface RadioRequestContext
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RadioRequestContext

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setUsesLocalNetworking:self->_usesLocalNetworking];
  [v4 setSAPSession:self->_SAPSession];
  return v4;
}

@end