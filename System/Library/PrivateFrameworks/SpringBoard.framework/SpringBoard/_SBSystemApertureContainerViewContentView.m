@interface _SBSystemApertureContainerViewContentView
- (UIView)contentView;
- (void)setBounds:(CGRect)a3;
- (void)setContentView:(id)a3;
@end

@implementation _SBSystemApertureContainerViewContentView

- (UIView)contentView
{
  v2 = [(_SBSystemApertureContainerViewContentView *)self subviews];
  v3 = [v2 sbsa_onlyObjectOrNilAssert];

  return v3;
}

- (void)setContentView:(id)a3
{
  v4 = a3;
  v5 = [(_SBSystemApertureContainerViewContentView *)self contentView];
  if ((BSEqualObjects() & 1) == 0)
  {
    [v5 removeFromSuperview];
    [(_SBSystemApertureContainerViewContentView *)self addSubview:v4];
    [(_SBSystemApertureContainerViewContentView *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = MEMORY[0x277D75D18];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60___SBSystemApertureContainerViewContentView_setContentView___block_invoke;
    v15[3] = &unk_2783AC828;
    v16 = v4;
    v17 = v7;
    v18 = v9;
    v19 = v11;
    v20 = v13;
    [v14 performWithoutAnimation:v15];
  }
}

- (void)setBounds:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = _SBSystemApertureContainerViewContentView;
  [(_SBSystemApertureContainerViewContentView *)&v18 setBounds:?];
  v4 = [(_SBSystemApertureContainerViewContentView *)self contentView];
  v5 = v4;
  memset(&v17, 0, sizeof(v17));
  if (v4)
  {
    [v4 transform];
  }

  BSRectWithSize();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v17;
  CGAffineTransformInvert(&v16, &v15);
  v19.origin.x = v7;
  v19.origin.y = v9;
  v19.size.width = v11;
  v19.size.height = v13;
  CGRectApplyAffineTransform(v19, &v16);
  v14 = [(_SBSystemApertureContainerViewContentView *)self traitCollection];
  [v14 displayScale];
  UIRectRoundToScale();
  [v5 setBounds:?];

  UIRectGetCenter();
  [v5 setCenter:?];
}

@end