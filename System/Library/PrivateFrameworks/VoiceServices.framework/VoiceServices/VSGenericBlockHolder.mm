@interface VSGenericBlockHolder
- (VSGenericBlockHolder)initWithBlock:(id)block;
- (void)invokeUpdateWithObject:(id)object;
@end

@implementation VSGenericBlockHolder

- (void)invokeUpdateWithObject:(id)object
{
  block = self->_block;
  if (block)
  {
    block[2](block, object);
  }
}

- (VSGenericBlockHolder)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = VSGenericBlockHolder;
  v5 = [(VSGenericBlockHolder *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x2743CEF70](blockCopy);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

@end