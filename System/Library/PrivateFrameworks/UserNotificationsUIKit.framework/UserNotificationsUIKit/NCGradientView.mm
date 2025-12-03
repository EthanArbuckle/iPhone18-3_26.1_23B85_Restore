@interface NCGradientView
- (NCGradientView)initWithHorizontalStartColor:(id)color horizontalEndColor:(id)endColor;
- (NCGradientView)initWithVerticalStartColor:(id)color verticalEndColor:(id)endColor;
- (void)layoutSubviews;
@end

@implementation NCGradientView

- (NCGradientView)initWithHorizontalStartColor:(id)color horizontalEndColor:(id)endColor
{
  v21[2] = *MEMORY[0x277D85DE8];
  colorCopy = color;
  endColorCopy = endColor;
  v19.receiver = self;
  v19.super_class = NCGradientView;
  v8 = [(NCGradientView *)&v19 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v8)
  {
    layer = [MEMORY[0x277CD9EB0] layer];
    gradient = v8->_gradient;
    v8->_gradient = layer;

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

    v13 = v8->_gradient;
    if (userInterfaceLayoutDirection == 1)
    {
      v21[0] = [endColorCopy CGColor];
      v14 = v21;
      v15 = colorCopy;
    }

    else
    {
      cGColor = [colorCopy CGColor];
      v14 = &cGColor;
      v15 = endColorCopy;
    }

    v14[1] = [v15 CGColor];
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    [(CAGradientLayer *)v13 setColors:v16];

    layer2 = [(NCGradientView *)v8 layer];
    [layer2 insertSublayer:v8->_gradient atIndex:0];

    v8->_isVertical = 0;
  }

  return v8;
}

- (NCGradientView)initWithVerticalStartColor:(id)color verticalEndColor:(id)endColor
{
  v16[2] = *MEMORY[0x277D85DE8];
  colorCopy = color;
  endColorCopy = endColor;
  v15.receiver = self;
  v15.super_class = NCGradientView;
  v8 = [(NCGradientView *)&v15 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v8)
  {
    layer = [MEMORY[0x277CD9EB0] layer];
    gradient = v8->_gradient;
    v8->_gradient = layer;

    v11 = v8->_gradient;
    v16[0] = [colorCopy CGColor];
    v16[1] = [endColorCopy CGColor];
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    [(CAGradientLayer *)v11 setColors:v12];

    layer2 = [(NCGradientView *)v8 layer];
    [layer2 insertSublayer:v8->_gradient atIndex:0];

    v8->_isVertical = 1;
  }

  return v8;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = NCGradientView;
  [(NCGradientView *)&v7 layoutSubviews];
  gradient = self->_gradient;
  [(NCGradientView *)self bounds];
  [(CAGradientLayer *)gradient setFrame:?];
  if (self->_isVertical)
  {
    v4 = 0.5;
  }

  else
  {
    v4 = 0.0;
  }

  if (self->_isVertical)
  {
    v5 = 0.5;
  }

  else
  {
    v5 = 1.0;
  }

  if (self->_isVertical)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.5;
  }

  [(CAGradientLayer *)self->_gradient setStartPoint:v4];
  [(CAGradientLayer *)self->_gradient setEndPoint:v5, v6];
}

@end