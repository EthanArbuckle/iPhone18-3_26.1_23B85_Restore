@interface REElementAction
- (REElementAction)initWithCoder:(id)a3;
- (REElementActionDelegate)delegate;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation REElementAction

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

- (REElementAction)initWithCoder:(id)a3
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