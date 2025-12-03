@interface _UIDuoShadowView
- (_UIDuoShadowView)initWithFrame:(CGRect)frame;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setPrimaryShadow:(uint64_t)shadow;
- (void)setSecondaryShadow:(uint64_t)shadow;
@end

@implementation _UIDuoShadowView

- (_UIDuoShadowView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _UIDuoShadowView;
  v3 = [(UIView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(UIView *)v3 layer];
    [layer setShadowPathIsBounds:1];

    layer2 = [(UIView *)v4 layer];
    [layer2 setPunchoutShadow:1];
  }

  return v4;
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _UIDuoShadowView;
  [(UIView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(UIView *)self bounds];
  [(UIView *)self->_secondaryShadowView setFrame:?];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8.receiver = self;
  v8.super_class = _UIDuoShadowView;
  [(UIView *)&v8 setBounds:?];
  [(UIView *)self->_secondaryShadowView setFrame:x, y, width, height];
}

- (void)setPrimaryShadow:(uint64_t)shadow
{
  v4 = a2;
  if (shadow)
  {
    v7 = v4;
    objc_storeStrong((shadow + 416), a2);
    if (v7)
    {
      v5 = v7;
    }

    else
    {
      v5 = objc_opt_new();
    }

    v6 = v5;
    [v5 applyToView:shadow];

    v4 = v7;
  }
}

- (void)setSecondaryShadow:(uint64_t)shadow
{
  v4 = a2;
  if (shadow)
  {
    objc_storeStrong((shadow + 424), a2);
    if (v4)
    {
      if (*(shadow + 408))
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __39___UIDuoShadowView_setSecondaryShadow___block_invoke;
        v7[3] = &unk_1E70F3590;
        v7[4] = shadow;
        [UIView performWithoutAnimation:v7];
      }

      v5 = v4;
    }

    else
    {
      v5 = objc_opt_new();
    }

    v6 = v5;
    [v5 applyToView:*(shadow + 408)];
  }
}

@end