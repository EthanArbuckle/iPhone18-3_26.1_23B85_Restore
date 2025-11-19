@interface _UIViewBackingAux
- (void)dealloc;
@end

@implementation _UIViewBackingAux

- (void)dealloc
{
  if (self)
  {
    multiLayerAssertion = self->_multiLayerAssertion;
  }

  else
  {
    multiLayerAssertion = 0;
  }

  v4 = multiLayerAssertion;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28___UIViewBackingAux_dealloc__block_invoke;
  block[3] = &unk_1E70F3590;
  v8 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v6.receiver = self;
  v6.super_class = _UIViewBackingAux;
  [(_UIViewBackingAux *)&v6 dealloc];
}

@end