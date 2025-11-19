@interface UIKeyboardDicationBackground
- (UIKeyboardDicationBackground)initWithFrame:(CGRect)a3;
- (id)shadows;
- (void)layoutSubviews;
@end

@implementation UIKeyboardDicationBackground

- (id)shadows
{
  v2 = shadows_shadows;
  if (!shadows_shadows)
  {
    v3 = 4;
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
    v5 = shadows_shadows;
    shadows_shadows = v4;

    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v10 = shadows_shadows;
      v11 = [[UIImageView alloc] initWithFrame:v6, v7, v8, v9];
      [v10 addObject:v11];

      --v3;
    }

    while (v3);
    v2 = shadows_shadows;
  }

  return v2;
}

- (void)layoutSubviews
{
  [(UIView *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UIKeyboardDicationBackground *)self gradient];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(UIKeyboardDicationBackground *)self gradient];
  [v12 setNeedsDisplay];
}

- (UIKeyboardDicationBackground)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = UIKeyboardDicationBackground;
  v3 = [(UIView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(UIView *)v3 setBackgroundColor:v4];

    v5 = [UIKeyboardDicationBackgroundGradientView alloc];
    [(UIView *)v3 frame];
    v6 = [(UIKeyboardDicationBackgroundGradientView *)v5 initWithFrame:?];
    [(UIKeyboardDicationBackground *)v3 setGradient:v6];

    v7 = [(UIKeyboardDicationBackground *)v3 gradient];
    [(UIView *)v3 addSubview:v7];

    [(UIView *)v3 setNeedsLayout];
    v8 = v3;
  }

  return v3;
}

@end