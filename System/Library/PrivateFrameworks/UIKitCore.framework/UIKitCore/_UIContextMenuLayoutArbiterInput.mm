@interface _UIContextMenuLayoutArbiterInput
- ($9638EFF0CCCAFE90921E224CC361F7AC)preferredAnchor;
- (BOOL)_hasVisibleMenu;
- (CGPoint)preferredMenuAttachmentPoint;
- (CGSize)preferredMenuSize;
- (CGSize)preferredPreviewSize;
- (UIEdgeInsets)preferredEdgeInsets;
- (_UIContextMenuLayoutArbiterInput)init;
- (void)setPreferredAnchor:(id *)anchor;
@end

@implementation _UIContextMenuLayoutArbiterInput

- (_UIContextMenuLayoutArbiterInput)init
{
  v5.receiver = self;
  v5.super_class = _UIContextMenuLayoutArbiterInput;
  v2 = [(_UIContextMenuLayoutArbiterInput *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_UIContextMenuLayoutArbiterInput *)v2 setPreferredMenuAttachmentPoint:1.79769313e308, 1.79769313e308];
    [(_UIContextMenuLayoutArbiterInput *)v3 setMaximumMenuHeight:1.79769313e308];
  }

  return v3;
}

- ($9638EFF0CCCAFE90921E224CC361F7AC)preferredAnchor
{
  v3 = *&self[4].var1;
  *&retstr->var0 = *&self[3].var4;
  *&retstr->var2 = v3;
  retstr->var4 = *&self[4].var3;
  return self;
}

- (CGSize)preferredMenuSize
{
  width = self->_preferredMenuSize.width;
  height = self->_preferredMenuSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)preferredEdgeInsets
{
  top = self->_preferredEdgeInsets.top;
  left = self->_preferredEdgeInsets.left;
  bottom = self->_preferredEdgeInsets.bottom;
  right = self->_preferredEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)_hasVisibleMenu
{
  [(_UIContextMenuLayoutArbiterInput *)self preferredMenuSize];
  if (v3 <= 0.00000011920929)
  {
    return 0;
  }

  [(_UIContextMenuLayoutArbiterInput *)self preferredMenuSize];
  return v4 > 0.00000011920929;
}

- (CGSize)preferredPreviewSize
{
  width = self->_preferredPreviewSize.width;
  height = self->_preferredPreviewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)preferredMenuAttachmentPoint
{
  x = self->_preferredMenuAttachmentPoint.x;
  y = self->_preferredMenuAttachmentPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setPreferredAnchor:(id *)anchor
{
  v3 = *&anchor->var0;
  v4 = *&anchor->var2;
  self->_preferredAnchor.gravity = anchor->var4;
  *&self->_preferredAnchor.attachmentOffset = v4;
  *&self->_preferredAnchor.attachment = v3;
}

@end