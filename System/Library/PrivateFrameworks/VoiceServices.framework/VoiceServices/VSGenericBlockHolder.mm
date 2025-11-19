@interface VSGenericBlockHolder
- (VSGenericBlockHolder)initWithBlock:(id)a3;
- (void)invokeUpdateWithObject:(id)a3;
@end

@implementation VSGenericBlockHolder

- (void)invokeUpdateWithObject:(id)a3
{
  block = self->_block;
  if (block)
  {
    block[2](block, a3);
  }
}

- (VSGenericBlockHolder)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VSGenericBlockHolder;
  v5 = [(VSGenericBlockHolder *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x2743CEF70](v4);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

@end