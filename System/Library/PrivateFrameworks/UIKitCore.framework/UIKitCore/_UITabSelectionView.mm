@interface _UITabSelectionView
- (CGRect)bounds;
- (CGRect)frame;
- (_UITabSelectionView)initWithCoder:(id)a3;
- (id)currentColorMatrixValue;
- (void)setBackdropLayer:(id)a3;
- (void)updateBackdropGeometry;
@end

@implementation _UITabSelectionView

- (void)setBackdropLayer:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____UITabSelectionView_backdropLayer);
  *(&self->super.super.super.isa + OBJC_IVAR____UITabSelectionView_backdropLayer) = a3;
  v3 = a3;
}

- (_UITabSelectionView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____UITabSelectionView_backdropLayer) = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UITabSelectionView;
  [(UIView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = _UITabSelectionView;
  [(UIView *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)updateBackdropGeometry
{
  v2 = self;
  sub_188FE31B4();
}

- (id)currentColorMatrixValue
{
  v2 = self;
  v3 = [(UIView *)v2 traitCollection];
  v4 = [(UITraitCollection *)v3 userInterfaceStyle];

  if (v4 == 2)
  {
    v5 = 1.082;
  }

  else
  {
    v5 = 1.185;
  }

  if (v4 == 2)
  {
    v6 = -0.011;
  }

  else
  {
    v6 = -0.005;
  }

  if (v4 == 2)
  {
    v7 = 0.135;
  }

  else
  {
    v7 = -0.2;
  }

  v8 = objc_opt_self();
  v9 = vcltz_s32(vshl_n_s32(vdup_n_s32(v4 == 2), 0x1FuLL));
  v13[3] = 0;
  *&v13[4] = v7;
  v14 = vbsl_s8(v9, 0x3F80624EBD0B4396, 0x3F933333BC75C28FLL);
  v15 = v6;
  v16 = 0;
  v17 = v7;
  v18 = v14.i32[0];
  v10 = vbsl_s8(v9, 0x3F8D70A4BDE76C8BLL, 0x3F98F5C3BD4CCCCDLL);
  *v13 = v5;
  v13[1] = v10.i32[0];
  *&v13[2] = v6;
  v19 = v10;
  v20 = 0;
  v21 = v7;
  v22 = xmmword_18A65AB30;
  v23 = 0;
  result = [v8 valueWithCAColorMatrix_];
  if (result)
  {
    v12 = result;

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end