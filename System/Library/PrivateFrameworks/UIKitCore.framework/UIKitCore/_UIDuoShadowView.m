@interface _UIDuoShadowView
- (_UIDuoShadowView)initWithFrame:(CGRect)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setPrimaryShadow:(uint64_t)a1;
- (void)setSecondaryShadow:(uint64_t)a1;
@end

@implementation _UIDuoShadowView

- (_UIDuoShadowView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _UIDuoShadowView;
  v3 = [(UIView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(UIView *)v3 layer];
    [v5 setShadowPathIsBounds:1];

    v6 = [(UIView *)v4 layer];
    [v6 setPunchoutShadow:1];
  }

  return v4;
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _UIDuoShadowView;
  [(UIView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(UIView *)self bounds];
  [(UIView *)self->_secondaryShadowView setFrame:?];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = _UIDuoShadowView;
  [(UIView *)&v8 setBounds:?];
  [(UIView *)self->_secondaryShadowView setFrame:x, y, width, height];
}

- (void)setPrimaryShadow:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    v7 = v4;
    objc_storeStrong((a1 + 416), a2);
    if (v7)
    {
      v5 = v7;
    }

    else
    {
      v5 = objc_opt_new();
    }

    v6 = v5;
    [v5 applyToView:a1];

    v4 = v7;
  }
}

- (void)setSecondaryShadow:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 424), a2);
    if (v4)
    {
      if (*(a1 + 408))
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __39___UIDuoShadowView_setSecondaryShadow___block_invoke;
        v7[3] = &unk_1E70F3590;
        v7[4] = a1;
        [UIView performWithoutAnimation:v7];
      }

      v5 = v4;
    }

    else
    {
      v5 = objc_opt_new();
    }

    v6 = v5;
    [v5 applyToView:*(a1 + 408)];
  }
}

@end