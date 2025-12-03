@interface RBDrawableItem
- ($3CC19D079FD0B010EE84973AA846B91B)sourceRect;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)clearColor;
- (RBDrawableItem)init;
- (void)setDestinationOffset:(id *)offset;
- (void)setDisplayList:(id)list;
- (void)setSourceRect:(id *)rect;
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

- (void)setDisplayList:(id)list
{
  p = self->_list._p;
  if (p != list)
  {

    self->_list._p = list;
  }
}

- ($3CC19D079FD0B010EE84973AA846B91B)sourceRect
{
  v3 = *&self[2].var2;
  *&retstr->var0 = *&self[2].var0;
  *&retstr->var2 = v3;
  return self;
}

- (void)setSourceRect:(id *)rect
{
  v3 = *&rect->var2;
  *&self->_sourceRect.x = *&rect->var0;
  *&self->_sourceRect.width = v3;
}

- (void)setDestinationOffset:(id *)offset
{
  v3 = *&offset->var0;
  self->_destinationOffset.z = offset->var2;
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