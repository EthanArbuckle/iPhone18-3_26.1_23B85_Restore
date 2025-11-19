@interface NCGradientView
- (NCGradientView)initWithHorizontalStartColor:(id)a3 horizontalEndColor:(id)a4;
- (NCGradientView)initWithVerticalStartColor:(id)a3 verticalEndColor:(id)a4;
- (void)layoutSubviews;
@end

@implementation NCGradientView

- (NCGradientView)initWithHorizontalStartColor:(id)a3 horizontalEndColor:(id)a4
{
  v21[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = NCGradientView;
  v8 = [(NCGradientView *)&v19 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v8)
  {
    v9 = [MEMORY[0x277CD9EB0] layer];
    gradient = v8->_gradient;
    v8->_gradient = v9;

    v11 = [MEMORY[0x277D75128] sharedApplication];
    v12 = [v11 userInterfaceLayoutDirection];

    v13 = v8->_gradient;
    if (v12 == 1)
    {
      v21[0] = [v7 CGColor];
      v14 = v21;
      v15 = v6;
    }

    else
    {
      v20 = [v6 CGColor];
      v14 = &v20;
      v15 = v7;
    }

    v14[1] = [v15 CGColor];
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    [(CAGradientLayer *)v13 setColors:v16];

    v17 = [(NCGradientView *)v8 layer];
    [v17 insertSublayer:v8->_gradient atIndex:0];

    v8->_isVertical = 0;
  }

  return v8;
}

- (NCGradientView)initWithVerticalStartColor:(id)a3 verticalEndColor:(id)a4
{
  v16[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = NCGradientView;
  v8 = [(NCGradientView *)&v15 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v8)
  {
    v9 = [MEMORY[0x277CD9EB0] layer];
    gradient = v8->_gradient;
    v8->_gradient = v9;

    v11 = v8->_gradient;
    v16[0] = [v6 CGColor];
    v16[1] = [v7 CGColor];
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    [(CAGradientLayer *)v11 setColors:v12];

    v13 = [(NCGradientView *)v8 layer];
    [v13 insertSublayer:v8->_gradient atIndex:0];

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