@interface TSWPTextParentLayout
- (CGSize)maximumFrameSizeForChild:(id)child;
- (CGSize)maximumFrameSizeForChildren;
- (TSWPTextParentLayout)initWithInfo:(id)info;
@end

@implementation TSWPTextParentLayout

- (TSWPTextParentLayout)initWithInfo:(id)info
{
  infoCopy = info;
  v10.receiver = self;
  v10.super_class = TSWPTextParentLayout;
  v5 = [(TSWPTextParentLayout *)&v10 initWithInfo:infoCopy];
  v8 = v5;
  if (v5)
  {
    objc_msgSend_setMaximumFrameSizeForChildren_(v5, v6, v7, 1.79769313e308, 1.79769313e308);
  }

  return v8;
}

- (CGSize)maximumFrameSizeForChild:(id)child
{
  MEMORY[0x2821F9670](self, sel_maximumFrameSizeForChildren, child);
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