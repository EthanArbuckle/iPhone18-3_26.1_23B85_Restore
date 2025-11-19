@interface PRXScrollShadowView
- (PRXScrollShadowView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setEdge:(unint64_t)a3;
@end

@implementation PRXScrollShadowView

- (PRXScrollShadowView)initWithFrame:(CGRect)a3
{
  v22[3] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = PRXScrollShadowView;
  v3 = [(PRXScrollShadowView *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.14];
    v22[0] = [v4 CGColor];
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.03];
    v22[1] = [v5 CGColor];
    v6 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.0];
    v22[2] = [v6 CGColor];
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
    v8 = [(PRXScrollShadowView *)v3 gradientLayer];
    [v8 setColors:v7];

    v9 = objc_alloc_init(MEMORY[0x277CD9EB0]);
    maskLayer = v3->_maskLayer;
    v3->_maskLayer = v9;

    [(PRXScrollShadowView *)v3 bounds];
    [(CAGradientLayer *)v3->_maskLayer setFrame:?];
    v11 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.0];
    v21[0] = [v11 CGColor];
    v12 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
    v21[1] = [v12 CGColor];
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
    v21[2] = [v13 CGColor];
    v14 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.0];
    v21[3] = [v14 CGColor];
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
    [(CAGradientLayer *)v3->_maskLayer setColors:v15];

    [(CAGradientLayer *)v3->_maskLayer setLocations:&unk_287381890];
    v16 = v3->_maskLayer;
    v17 = [(PRXScrollShadowView *)v3 gradientLayer];
    [v17 setMask:v16];

    [(PRXScrollShadowView *)v3 setEdge:1];
    v18 = v3;
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PRXScrollShadowView;
  [(PRXScrollShadowView *)&v3 layoutSubviews];
  [(PRXScrollShadowView *)self bounds];
  [(CAGradientLayer *)self->_maskLayer setFrame:?];
}

- (void)setEdge:(unint64_t)a3
{
  if (self->_edge == a3)
  {
    return;
  }

  self->_edge = a3;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v6 = 0.5;
      v5 = 1.0;
      v7 = 0.0;
      goto LABEL_14;
    }

    if (a3 != 15)
    {
      if (a3 != 8)
      {
        return;
      }

      v6 = 1.0;
      v5 = 0.5;
      v4 = 0.0;
      goto LABEL_11;
    }

LABEL_12:
    v6 = 0.5;
    v7 = 1.0;
    v5 = 0.0;
LABEL_14:
    v4 = 0.5;
    v8 = 0.0;
    v9 = 0.5;
    v10 = 1.0;
    v11 = 0.5;
    goto LABEL_15;
  }

  if (a3 < 2)
  {
    goto LABEL_12;
  }

  if (a3 != 2)
  {
    return;
  }

  v4 = 1.0;
  v5 = 0.5;
  v6 = 0.0;
LABEL_11:
  v7 = 0.5;
  v8 = 0.5;
  v9 = 0.0;
  v10 = 0.5;
  v11 = 1.0;
LABEL_15:
  v12 = [(PRXScrollShadowView *)self gradientLayer];
  [v12 setStartPoint:{v6, v5}];

  v13 = [(PRXScrollShadowView *)self gradientLayer];
  [v13 setEndPoint:{v4, v7}];

  [(CAGradientLayer *)self->_maskLayer setStartPoint:v8, v9];
  maskLayer = self->_maskLayer;

  [(CAGradientLayer *)maskLayer setEndPoint:v10, v11];
}

@end