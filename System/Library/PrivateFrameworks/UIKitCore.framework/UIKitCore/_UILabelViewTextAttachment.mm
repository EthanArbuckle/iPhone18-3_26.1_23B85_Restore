@interface _UILabelViewTextAttachment
- (UIView)view;
- (_UILabelViewTextAttachment)initWithViewProvider:(id)a3;
- (void)_drawInAlignedRect:(CGRect)a3 attributes:(id)a4 location:(id)a5 textContainer:(id)a6 applicationFrameworkContext:(int64_t)a7;
@end

@implementation _UILabelViewTextAttachment

- (_UILabelViewTextAttachment)initWithViewProvider:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UILabelViewTextAttachment;
  v5 = [(_UILabelViewTextAttachment *)&v9 initWithData:0 ofType:0];
  if (v5)
  {
    v6 = [v4 copy];
    viewProvider = v5->_viewProvider;
    v5->_viewProvider = v6;
  }

  return v5;
}

- (UIView)view
{
  view = self->_view;
  if (!view)
  {
    v4 = [(_UILabelViewTextAttachment *)self viewProvider];
    v5 = v4[2]();
    v6 = self->_view;
    self->_view = v5;

    view = self->_view;
  }

  return view;
}

- (void)_drawInAlignedRect:(CGRect)a3 attributes:(id)a4 location:(id)a5 textContainer:(id)a6 applicationFrameworkContext:(int64_t)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = [(_UILabelViewTextAttachment *)self layoutInRect:a4];

  if (v12)
  {
    v13 = [(_UILabelViewTextAttachment *)self layoutInRect];
    v13[2](floor(x + 0.5), floor(y - height + 0.5), width, height);
  }
}

@end