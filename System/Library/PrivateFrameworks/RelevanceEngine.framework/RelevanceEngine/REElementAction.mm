@interface REElementAction
- (REElementAction)initWithCoder:(id)coder;
- (REElementActionDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation REElementAction

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

- (REElementAction)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = REElementAction;
  return [(REElementAction *)&v4 init];
}

- (REElementActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end