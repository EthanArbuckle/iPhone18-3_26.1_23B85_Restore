@interface RBMetalRenderState
- ($3CC19D079FD0B010EE84973AA846B91B)bounds;
- (CGAffineTransform)CTM;
- (CGSize)size;
- (void)dealloc;
- (void)setBounds:(id *)bounds;
- (void)setCTM:(CGAffineTransform *)m;
@end

@implementation RBMetalRenderState

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = RBMetalRenderState;
  [(RBMetalRenderState *)&v3 dealloc];
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- ($3CC19D079FD0B010EE84973AA846B91B)bounds
{
  v3 = *&self[2].var3;
  *&retstr->var0 = *&self[2].var1;
  *&retstr->var2 = v3;
  return self;
}

- (void)setBounds:(id *)bounds
{
  v3 = *&bounds->var0;
  *&self->_bounds.width = *&bounds->var2;
  *&self->_bounds.x = v3;
}

- (CGAffineTransform)CTM
{
  v3 = *&self[2].d;
  *&retstr->a = *&self[2].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].ty;
  return self;
}

- (void)setCTM:(CGAffineTransform *)m
{
  v3 = *&m->a;
  v4 = *&m->c;
  *&self->_CTM.tx = *&m->tx;
  *&self->_CTM.c = v4;
  *&self->_CTM.a = v3;
}

@end