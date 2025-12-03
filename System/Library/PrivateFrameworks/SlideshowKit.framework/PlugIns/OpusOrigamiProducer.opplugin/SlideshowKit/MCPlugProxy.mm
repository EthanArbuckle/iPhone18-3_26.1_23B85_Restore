@interface MCPlugProxy
- (BOOL)isKindOfClass:(Class)class;
- (void)dealloc;
@end

@implementation MCPlugProxy

- (void)dealloc
{
  self->_plug = 0;
  v3.receiver = self;
  v3.super_class = MCPlugProxy;
  [(MCObject *)&v3 dealloc];
}

- (BOOL)isKindOfClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    isKindOfClass = 1;
  }

  else
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end