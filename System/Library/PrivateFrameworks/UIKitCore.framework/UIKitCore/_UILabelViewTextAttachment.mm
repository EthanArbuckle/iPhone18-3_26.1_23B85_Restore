@interface _UILabelViewTextAttachment
- (UIView)view;
- (_UILabelViewTextAttachment)initWithViewProvider:(id)provider;
- (void)_drawInAlignedRect:(CGRect)rect attributes:(id)attributes location:(id)location textContainer:(id)container applicationFrameworkContext:(int64_t)context;
@end

@implementation _UILabelViewTextAttachment

- (_UILabelViewTextAttachment)initWithViewProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = _UILabelViewTextAttachment;
  v5 = [(_UILabelViewTextAttachment *)&v9 initWithData:0 ofType:0];
  if (v5)
  {
    v6 = [providerCopy copy];
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
    viewProvider = [(_UILabelViewTextAttachment *)self viewProvider];
    v5 = viewProvider[2]();
    v6 = self->_view;
    self->_view = v5;

    view = self->_view;
  }

  return view;
}

- (void)_drawInAlignedRect:(CGRect)rect attributes:(id)attributes location:(id)location textContainer:(id)container applicationFrameworkContext:(int64_t)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12 = [(_UILabelViewTextAttachment *)self layoutInRect:attributes];

  if (v12)
  {
    layoutInRect = [(_UILabelViewTextAttachment *)self layoutInRect];
    layoutInRect[2](floor(x + 0.5), floor(y - height + 0.5), width, height);
  }
}

@end