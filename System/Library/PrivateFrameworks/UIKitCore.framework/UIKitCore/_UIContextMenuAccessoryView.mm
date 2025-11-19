@interface _UIContextMenuAccessoryView
- ($9638EFF0CCCAFE90921E224CC361F7AC)anchor;
- (CGPoint)offset;
- (_UIContextMenuAccessoryView)initWithFrame:(CGRect)a3 configuration:(id *)a4;
- (void)setAnchor:(id *)a3;
- (void)setVisible:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation _UIContextMenuAccessoryView

- (_UIContextMenuAccessoryView)initWithFrame:(CGRect)a3 configuration:(id *)a4
{
  v11.receiver = self;
  v11.super_class = _UIContextMenuAccessoryView;
  v5 = [(UIView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [(_UIContextMenuAccessoryView *)v5 setLocation:a4->var0];
    v7 = *&a4->var1.var2;
    v9[0] = *&a4->var1.var0;
    v9[1] = v7;
    var4 = a4->var1.var4;
    [(_UIContextMenuAccessoryView *)v6 setAnchor:v9];
    [(_UIContextMenuAccessoryView *)v6 setOffset:a4->var2.x, a4->var2.y];
    [(_UIContextMenuAccessoryView *)v6 setTrackingAxis:a4->var3];
  }

  return v6;
}

- (void)setVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51___UIContextMenuAccessoryView_setVisible_animated___block_invoke;
  v7[3] = &unk_1E70F35E0;
  v7[4] = self;
  v8 = a3;
  v5 = _Block_copy(v7);
  v6 = v5;
  if (v4)
  {
    [UIView animateWithDuration:0 delay:v5 usingSpringWithDamping:0 initialSpringVelocity:0.4 options:0.0 animations:0.7 completion:0.0];
  }

  else
  {
    (*(v5 + 2))(v5);
  }
}

- ($9638EFF0CCCAFE90921E224CC361F7AC)anchor
{
  v3 = *&self[11].var2;
  *&retstr->var0 = *&self[11].var0;
  *&retstr->var2 = v3;
  retstr->var4 = self[11].var4;
  return self;
}

- (void)setAnchor:(id *)a3
{
  var4 = a3->var4;
  v4 = *&a3->var2;
  *&self->_anchor.attachment = *&a3->var0;
  *&self->_anchor.attachmentOffset = v4;
  self->_anchor.gravity = var4;
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end