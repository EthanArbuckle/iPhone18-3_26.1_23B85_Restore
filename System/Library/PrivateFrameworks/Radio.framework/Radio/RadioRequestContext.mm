@interface RadioRequestContext
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RadioRequestContext

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setUsesLocalNetworking:self->_usesLocalNetworking];
  [v4 setSAPSession:self->_SAPSession];
  return v4;
}

@end