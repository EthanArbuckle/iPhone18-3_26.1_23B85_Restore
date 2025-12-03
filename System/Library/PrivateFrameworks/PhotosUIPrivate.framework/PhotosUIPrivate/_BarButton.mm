@interface _BarButton
- (_BarButton)initWithTitle:(id)title titleColor:(id)color backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;
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
  layer = [(_BarButton *)self layer];
  [layer setCornerRadius:v4];
}

- (_BarButton)initWithTitle:(id)title titleColor:(id)color backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action
{
  titleCopy = title;
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  targetCopy = target;
  v23.receiver = self;
  v23.super_class = _BarButton;
  v16 = [(_BarButton *)&v23 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v16)
  {
    v17 = [MEMORY[0x1E69DC738] buttonWithType:0];
    [v17 setTitle:titleCopy forState:0];
    [v17 addTarget:targetCopy action:action forControlEvents:64];
    [v17 setTitleColor:colorCopy forState:0];
    v18 = PXFontWithTextStyleAndWeight();
    titleLabel = [v17 titleLabel];
    [titleLabel setFont:v18];

    [v17 sizeToFit];
    [v17 setAutoresizingMask:18];
    [v17 frame];
    PXRectWithOriginAndSize();
    [(_BarButton *)v16 setFrame:?];
    [(_BarButton *)v16 setBackgroundColor:backgroundColorCopy];
    v20 = *MEMORY[0x1E69796E8];
    layer = [(_BarButton *)v16 layer];
    [layer setCornerCurve:v20];

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