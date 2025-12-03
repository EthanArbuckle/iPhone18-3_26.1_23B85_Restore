@interface _SSSFlashSuperColorView
- (_SSSFlashSuperColorView)initWithFrame:(CGRect)frame;
- (void)_updateBackgroundColor;
- (void)setStyle:(unint64_t)style;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation _SSSFlashSuperColorView

- (_SSSFlashSuperColorView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = _SSSFlashSuperColorView;
  v3 = [(_SSSFlashSuperColorView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(_SSSFlashSuperColorView *)v3 _updateBackgroundColor];
  return v3;
}

- (void)setStyle:(unint64_t)style
{
  if ([(_SSSFlashSuperColorView *)self style]!= style)
  {
    self->_style = style;

    [(_SSSFlashSuperColorView *)self _updateBackgroundColor];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = _SSSFlashSuperColorView;
  changeCopy = change;
  [(_SSSFlashSuperColorView *)&v8 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(_SSSFlashSuperColorView *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(_SSSFlashSuperColorView *)self _updateBackgroundColor];
  }
}

- (void)_updateBackgroundColor
{
  style = [(_SSSFlashSuperColorView *)self style];
  if (style != 2)
  {
    if (style)
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
      traitCollection = [(_SSSFlashSuperColorView *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      if (userInterfaceStyle == 2)
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

  traitCollection2 = [(_SSSFlashSuperColorView *)self traitCollection];
  userInterfaceStyle2 = [traitCollection2 userInterfaceStyle];

  v6 = MEMORY[0x1E69DC888];
  if (userInterfaceStyle2 != 2)
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
  layer = [(_SSSFlashSuperColorView *)self layer];
  [layer setCompositingFilter:v17];

  [(_SSSFlashSuperColorView *)self setBackgroundColor:v15];
}

@end