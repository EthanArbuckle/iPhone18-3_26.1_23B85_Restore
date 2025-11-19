@interface _SSSFlashSuperColorView
- (_SSSFlashSuperColorView)initWithFrame:(CGRect)a3;
- (void)_updateBackgroundColor;
- (void)setStyle:(unint64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation _SSSFlashSuperColorView

- (_SSSFlashSuperColorView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = _SSSFlashSuperColorView;
  v3 = [(_SSSFlashSuperColorView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_SSSFlashSuperColorView *)v3 _updateBackgroundColor];
  return v3;
}

- (void)setStyle:(unint64_t)a3
{
  if ([(_SSSFlashSuperColorView *)self style]!= a3)
  {
    self->_style = a3;

    [(_SSSFlashSuperColorView *)self _updateBackgroundColor];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = _SSSFlashSuperColorView;
  v4 = a3;
  [(_SSSFlashSuperColorView *)&v8 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];

  v6 = [(_SSSFlashSuperColorView *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {
    [(_SSSFlashSuperColorView *)self _updateBackgroundColor];
  }
}

- (void)_updateBackgroundColor
{
  v3 = [(_SSSFlashSuperColorView *)self style];
  if (v3 != 2)
  {
    if (v3)
    {
      v17 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CE8]];
      v10 = MEMORY[0x1E69DC888];
      v11 = -2.0;
      v12 = -2.0;
      v13 = -2.0;
      v14 = 0.75;
    }

    else
    {
      v4 = [(_SSSFlashSuperColorView *)self traitCollection];
      v5 = [v4 userInterfaceStyle];

      if (v5 == 2)
      {
        v6 = MEMORY[0x1E69DC888];
        goto LABEL_6;
      }

      v17 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
      v10 = MEMORY[0x1E69DC888];
      v11 = 2.0;
      v12 = 2.0;
      v13 = 2.0;
      v14 = 1.0;
    }

    v15 = [v10 colorWithRed:v11 green:v12 blue:v13 alpha:v14];
    goto LABEL_12;
  }

  v7 = [(_SSSFlashSuperColorView *)self traitCollection];
  v8 = [v7 userInterfaceStyle];

  v6 = MEMORY[0x1E69DC888];
  if (v8 != 2)
  {
    v9 = [MEMORY[0x1E69DC888] colorWithRed:1.1 green:1.1 blue:1.1 alpha:1.0];
    goto LABEL_11;
  }

LABEL_6:
  v9 = [v6 colorWithWhite:0.85 alpha:1.0];
LABEL_11:
  v15 = v9;
  v17 = 0;
LABEL_12:
  v16 = [(_SSSFlashSuperColorView *)self layer];
  [v16 setCompositingFilter:v17];

  [(_SSSFlashSuperColorView *)self setBackgroundColor:v15];
}

@end