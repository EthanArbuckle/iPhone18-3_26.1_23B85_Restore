@interface _UIContextMenuLayoutArbiterOutput
- ($670CA482A27156A98D0A7E5F20B9370A)menu;
- ($670CA482A27156A98D0A7E5F20B9370A)preview;
- ($9638EFF0CCCAFE90921E224CC361F7AC)anchor;
- (CGRect)contentBounds;
- (void)setAnchor:(id *)a3;
- (void)setMenu:(id *)a3;
- (void)setPreview:(id *)a3;
@end

@implementation _UIContextMenuLayoutArbiterOutput

- ($670CA482A27156A98D0A7E5F20B9370A)menu
{
  v3 = *&self[1].var4;
  retstr->var0.origin = *&self[1].var3.tx;
  retstr->var0.size = v3;
  var2 = self[2].var2;
  *&retstr->var2.y = *&self[2].var1.y;
  *&retstr->var3.b = var2;
  v5 = *&self[2].var3.c;
  *&retstr->var3.d = *&self[2].var3.a;
  *&retstr->var3.ty = v5;
  v6 = *&self[2].var0.size.height;
  *&retstr->var1.x = *&self[2].var0.origin.y;
  *&retstr->var1.z = v6;
  return self;
}

- ($9638EFF0CCCAFE90921E224CC361F7AC)anchor
{
  v3 = *&self[2].var0;
  *&retstr->var0 = *&self[1].var3;
  *&retstr->var2 = v3;
  retstr->var4 = *&self[2].var2;
  return self;
}

- (CGRect)contentBounds
{
  x = self->_contentBounds.origin.x;
  y = self->_contentBounds.origin.y;
  width = self->_contentBounds.size.width;
  height = self->_contentBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($670CA482A27156A98D0A7E5F20B9370A)preview
{
  var2 = self[1].var2;
  *&retstr->var2.y = *&self[1].var1.y;
  *&retstr->var3.b = var2;
  v4 = *&self[1].var3.c;
  *&retstr->var3.d = *&self[1].var3.a;
  *&retstr->var3.ty = v4;
  v5 = *&self->var4;
  retstr->var0.origin = *&self->var3.tx;
  retstr->var0.size = v5;
  v6 = *&self[1].var0.size.height;
  *&retstr->var1.x = *&self[1].var0.origin.y;
  *&retstr->var1.z = v6;
  return self;
}

- (void)setPreview:(id *)a3
{
  origin = a3->var0.origin;
  size = a3->var0.size;
  v5 = *&a3->var1.x;
  *&self->_preview.center.z = *&a3->var1.z;
  *&self->_preview.center.x = v5;
  self->_preview.bounds.size = size;
  self->_preview.bounds.origin = origin;
  v6 = *&a3->var2.y;
  v7 = *&a3->var3.b;
  v8 = *&a3->var3.d;
  *&self->_preview.transform.ty = *&a3->var3.ty;
  *&self->_preview.transform.d = v8;
  *&self->_preview.transform.b = v7;
  *&self->_preview.anchorPoint.y = v6;
}

- (void)setMenu:(id *)a3
{
  origin = a3->var0.origin;
  size = a3->var0.size;
  v5 = *&a3->var1.z;
  *&self->_menu.center.x = *&a3->var1.x;
  *&self->_menu.center.z = v5;
  self->_menu.bounds.size = size;
  self->_menu.bounds.origin = origin;
  v6 = *&a3->var2.y;
  v7 = *&a3->var3.b;
  v8 = *&a3->var3.ty;
  *&self->_menu.transform.d = *&a3->var3.d;
  *&self->_menu.transform.ty = v8;
  *&self->_menu.anchorPoint.y = v6;
  *&self->_menu.transform.b = v7;
}

- (void)setAnchor:(id *)a3
{
  v3 = *&a3->var0;
  v4 = *&a3->var2;
  self->_anchor.gravity = a3->var4;
  *&self->_anchor.attachment = v3;
  *&self->_anchor.attachmentOffset = v4;
}

@end