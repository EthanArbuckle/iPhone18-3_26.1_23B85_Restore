@interface _BarButton
- (_BarButton)initWithTitle:(id)a3 titleColor:(id)a4 backgroundColor:(id)a5 target:(id)a6 action:(SEL)a7;
- (void)layoutSubviews;
@end

@implementation _BarButton

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = _BarButton;
  [(_BarButton *)&v6 layoutSubviews];
  [(_BarButton *)self frame];
  v4 = v3 * 0.5;
  v5 = [(_BarButton *)self layer];
  [v5 setCornerRadius:v4];
}

- (_BarButton)initWithTitle:(id)a3 titleColor:(id)a4 backgroundColor:(id)a5 target:(id)a6 action:(SEL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v23.receiver = self;
  v23.super_class = _BarButton;
  v16 = [(_BarButton *)&v23 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v16)
  {
    v17 = [MEMORY[0x1E69DC738] buttonWithType:0];
    [v17 setTitle:v12 forState:0];
    [v17 addTarget:v15 action:a7 forControlEvents:64];
    [v17 setTitleColor:v13 forState:0];
    v18 = PXFontWithTextStyleAndWeight();
    v19 = [v17 titleLabel];
    [v19 setFont:v18];

    [v17 sizeToFit];
    [v17 setAutoresizingMask:18];
    [v17 frame];
    PXRectWithOriginAndSize();
    [(_BarButton *)v16 setFrame:?];
    [(_BarButton *)v16 setBackgroundColor:v14];
    v20 = *MEMORY[0x1E69796E8];
    v21 = [(_BarButton *)v16 layer];
    [v21 setCornerCurve:v20];

    [(_BarButton *)v16 addSubview:v17];
    [(_BarButton *)v16 bounds];
    PXRectGetCenter();
    [v17 frame];
    PXRectWithCenterAndSize();
    [v17 setFrame:?];
  }

  return v16;
}

@end