@interface _UIWeakHelper
- (_UIWeakHelper)initWithDeallocationBlock:(id)block;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _UIWeakHelper

- (void)dealloc
{
  if (self->_deallocationBlock)
  {
    v3 = pthread_main_np();
    deallocationBlock = self->_deallocationBlock;
    if (v3 == 1)
    {
      (deallocationBlock)[2](self->_deallocationBlock);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], deallocationBlock);
    }
  }

  v5.receiver = self;
  v5.super_class = _UIWeakHelper;
  [(_UIWeakHelper *)&v5 dealloc];
}

- (_UIWeakHelper)initWithDeallocationBlock:(id)block
{
  blockCopy = block;
  v8.receiver = self;
  v8.super_class = _UIWeakHelper;
  v5 = [(_UIWeakHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIWeakHelper *)v5 setDeallocationBlock:blockCopy];
  }

  return v6;
}

- (void)invalidate
{
  deallocationBlock = self->_deallocationBlock;
  self->_deallocationBlock = 0;
}

@end