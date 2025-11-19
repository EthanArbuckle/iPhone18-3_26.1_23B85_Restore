@interface ACFDispatchHelper
- (ACFDispatchHelper)initWithBlock:(id)a3;
- (void)dealloc;
- (void)dispatch;
@end

@implementation ACFDispatchHelper

- (ACFDispatchHelper)initWithBlock:(id)a3
{
  v6.receiver = self;
  v6.super_class = ACFDispatchHelper;
  v4 = [(ACFDispatchHelper *)&v6 init];
  if (v4)
  {
    v4->_block = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  self->_block = 0;
  v3.receiver = self;
  v3.super_class = ACFDispatchHelper;
  [(ACFDispatchHelper *)&v3 dealloc];
}

- (void)dispatch
{
  (*(self->_block + 2))();

  self->_block = 0;
}

@end