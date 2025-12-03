@interface SSProtocolConditionalContext
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation SSProtocolConditionalContext

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSProtocolConditionalContext;
  [(SSProtocolConditionalContext *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v5[1] = [self->_itemLookupBlock copyWithZone:zone];
  v5[2] = [(NSString *)self->_platformName copyWithZone:zone];
  v5[3] = [(NSString *)self->_systemVersion copyWithZone:zone];
  return v5;
}

@end