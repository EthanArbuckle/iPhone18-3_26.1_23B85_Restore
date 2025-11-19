@interface SSProtocolConditionalContext
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation SSProtocolConditionalContext

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSProtocolConditionalContext;
  [(SSProtocolConditionalContext *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v5[1] = [self->_itemLookupBlock copyWithZone:a3];
  v5[2] = [(NSString *)self->_platformName copyWithZone:a3];
  v5[3] = [(NSString *)self->_systemVersion copyWithZone:a3];
  return v5;
}

@end