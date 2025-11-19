@interface TSWPTextParentLayout
- (CGSize)maximumFrameSizeForChild:(id)a3;
- (CGSize)maximumFrameSizeForChildren;
- (TSWPTextParentLayout)initWithInfo:(id)a3;
@end

@implementation TSWPTextParentLayout

- (TSWPTextParentLayout)initWithInfo:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TSWPTextParentLayout;
  v5 = [(TSWPTextParentLayout *)&v10 initWithInfo:v4];
  v8 = v5;
  if (v5)
  {
    objc_msgSend_setMaximumFrameSizeForChildren_(v5, v6, v7, 1.79769313e308, 1.79769313e308);
  }

  return v8;
}

- (CGSize)maximumFrameSizeForChild:(id)a3
{
  MEMORY[0x2821F9670](self, sel_maximumFrameSizeForChildren, a3);
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)maximumFrameSizeForChildren
{
  width = self->_maximumFrameSizeForChildren.width;
  height = self->_maximumFrameSizeForChildren.height;
  result.height = height;
  result.width = width;
  return result;
}

@end