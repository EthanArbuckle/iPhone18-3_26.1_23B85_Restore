@interface RBDrawableItem
- ($3CC19D079FD0B010EE84973AA846B91B)sourceRect;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)clearColor;
- (RBDrawableItem)init;
- (void)setDestinationOffset:(id *)a3;
- (void)setDisplayList:(id)a3;
- (void)setSourceRect:(id *)a3;
@end

@implementation RBDrawableItem

- (RBDrawableItem)init
{
  v3.receiver = self;
  v3.super_class = RBDrawableItem;
  result = [(RBDrawableItem *)&v3 init];
  if (result)
  {
    result->_targetHeadroom = NAN;
  }

  return result;
}

- (void)setDisplayList:(id)a3
{
  p = self->_list._p;
  if (p != a3)
  {

    self->_list._p = a3;
  }
}

- ($3CC19D079FD0B010EE84973AA846B91B)sourceRect
{
  v3 = *&self[2].var2;
  *&retstr->var0 = *&self[2].var0;
  *&retstr->var2 = v3;
  return self;
}

- (void)setSourceRect:(id *)a3
{
  v3 = *&a3->var2;
  *&self->_sourceRect.x = *&a3->var0;
  *&self->_sourceRect.width = v3;
}

- (void)setDestinationOffset:(id *)a3
{
  v3 = *&a3->var0;
  self->_destinationOffset.z = a3->var2;
  *&self->_destinationOffset.x = v3;
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)clearColor
{
  red = self->_clearColor.red;
  green = self->_clearColor.green;
  blue = self->_clearColor.blue;
  alpha = self->_clearColor.alpha;
  result.var3 = alpha;
  result.var2 = blue;
  result.var1 = green;
  result.var0 = red;
  return result;
}

@end