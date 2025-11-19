@interface _UIDynamicTransformer
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGRect)bounds;
- (_UIDynamicTransformer)initWithActionBlock:(id)a3;
@end

@implementation _UIDynamicTransformer

- (_UIDynamicTransformer)initWithActionBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIDynamicTransformer.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"actionBlock"}];
  }

  v12.receiver = self;
  v12.super_class = _UIDynamicTransformer;
  v6 = [(_UIDynamicTransformer *)&v12 init];
  if (v6)
  {
    v7 = _Block_copy(v5);
    action = v6->_action;
    v6->_action = v7;

    v9 = v6;
  }

  return v6;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)bounds
{
  v2 = 100.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 100.0;
  result.size.height = v5;
  result.size.width = v2;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v4;
  *&retstr->tx = *(v3 + 32);
  return self;
}

@end