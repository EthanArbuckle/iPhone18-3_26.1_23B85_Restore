@interface SCKPGradientView
- (CGPoint)gradientOrigin;
- (SCKPGradientView)initWithGradientType:(id)a3;
- (id)_fadeInAnimation;
- (id)_fadeOutAnimation;
- (void)_updateGradientOpacity;
- (void)layoutSubviews;
- (void)setGradientEndOpacity:(double)a3;
- (void)setGradientStartOpacity:(double)a3;
- (void)setGradientType:(id)a3;
- (void)setVisible:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation SCKPGradientView

- (SCKPGradientView)initWithGradientType:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SCKPGradientView;
  v5 = [(SCKPGradientView *)&v11 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    v5->_gradientHeight = 240.0;
    v5->_gradientOrigin.x = 0.0;
    v5->_gradientOrigin.y = 0.0;
    [(SCKPGradientView *)v5 setGradientType:v4];
    *&v6->_gradientStartOpacity = qword_269516E50[*MEMORY[0x277CDA6A0] == v4];
    v6->_gradientEndOpacity = 0.09021;
    [(SCKPGradientView *)v6 _updateGradientOpacity];
    [(SCKPGradientView *)v6 setOpaque:0];
    v7 = [MEMORY[0x277D75348] clearColor];
    [(SCKPGradientView *)v6 setBackgroundColor:v7];

    [(SCKPGradientView *)v6 setUserInteractionEnabled:0];
    v8 = [(SCKPGradientView *)v6 layer];
    [v8 setOpacity:0.0];

    v9 = [(SCKPGradientView *)v6 layer];
    [v9 setAllowsHitTesting:0];
  }

  return v6;
}

- (void)setGradientType:(id)a3
{
  v5 = a3;
  if (self->_gradientType != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_gradientType, a3);
    v6 = [(SCKPGradientView *)self layer];
    [v6 setType:self->_gradientType];

    v5 = v7;
  }
}

- (void)setGradientStartOpacity:(double)a3
{
  if (vabdd_f64(a3, self->_gradientStartOpacity) >= 2.22044605e-16)
  {
    self->_gradientStartOpacity = a3;
    [(SCKPGradientView *)self _updateGradientOpacity];
  }
}

- (void)setGradientEndOpacity:(double)a3
{
  if (vabdd_f64(a3, self->_gradientEndOpacity) >= 2.22044605e-16)
  {
    self->_gradientEndOpacity = a3;
    [(SCKPGradientView *)self _updateGradientOpacity];
  }
}

- (void)layoutSubviews
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = SCKPGradientView;
  [(SCKPGradientView *)&v20 layoutSubviews];
  v3 = [(SCKPGradientView *)self layer];
  [(SCKPGradientView *)self bounds];
  [v3 setFrame:?];

  [(SCKPGradientView *)self frame];
  Width = CGRectGetWidth(v22);
  [(SCKPGradientView *)self frame];
  Height = CGRectGetHeight(v23);
  v6 = Height;
  if (self->_gradientType == *MEMORY[0x277CDA6A0])
  {
    v12 = self->_gradientOrigin.x / Width;
    v13 = self->_gradientOrigin.y / Height;
    v14 = self->_gradientHeight * 0.5;
    v15 = v12 - v14 / Width;
    v16 = v13 - v14 / v6;
    v17 = [(SCKPGradientView *)self layer];
    [v17 setStartPoint:{v12, v13}];

    v18 = [(SCKPGradientView *)self layer];
    [v18 setEndPoint:{v15, v16}];

    v9 = [(SCKPGradientView *)self layer];
    [v9 setLocations:&unk_287A0F668];
  }

  else
  {
    v7 = [(SCKPGradientView *)self layer];
    [v7 setStartPoint:{0.5, 1.0}];

    v8 = [(SCKPGradientView *)self layer];
    [v8 setEndPoint:{0.5, 0.0}];

    v9 = [(SCKPGradientView *)self layer];
    v21[0] = &unk_287A0F648;
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_gradientHeight / v6];
    v21[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    [v9 setLocations:v11];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_isVisible != a3)
  {
    v4 = a4;
    v5 = a3;
    self->_isVisible = a3;
    v7 = [(SCKPGradientView *)self layer];
    v8 = v7;
    v9 = 0.0;
    if (v5)
    {
      *&v9 = 1.0;
    }

    [v7 setOpacity:v9];

    if (v4)
    {
      v11 = [(SCKPGradientView *)self layer];
      if (v5)
      {
        [(SCKPGradientView *)self _fadeInAnimation];
      }

      else
      {
        [(SCKPGradientView *)self _fadeOutAnimation];
      }
      v10 = ;
      [v11 addAnimation:v10 forKey:0];
    }
  }
}

- (void)_updateGradientOpacity
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:self->_gradientStartOpacity];
  v4 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:self->_gradientEndOpacity];
  v5 = [(SCKPGradientView *)self layer];
  v8[0] = [v3 CGColor];
  v8[1] = [v4 CGColor];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  [v5 setColors:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_fadeInAnimation
{
  v2 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"opacity"];
  [v2 setDamping:100.0];
  [v2 setMass:2.0];
  [v2 setStiffness:350.0];
  [v2 setFillMode:*MEMORY[0x277CDA228]];
  v3 = objc_alloc(MEMORY[0x277CD9EF8]);
  LODWORD(v4) = 1059559876;
  LODWORD(v5) = 1.0;
  LODWORD(v6) = 1.0;
  v7 = [v3 initWithControlPoints:v4 :0.0 :v5 :v6];
  [v2 setTimingFunction:v7];

  [v2 setRemovedOnCompletion:1];
  [v2 setDuration:2.0];
  [v2 setFromValue:&unk_287A0F680];
  [v2 setToValue:&unk_287A0F658];

  return v2;
}

- (id)_fadeOutAnimation
{
  v2 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"opacity"];
  [v2 setDamping:500.0];
  [v2 setMass:3.0];
  [v2 setStiffness:1000.0];
  [v2 setFillMode:*MEMORY[0x277CDA228]];
  [v2 setRemovedOnCompletion:1];
  [v2 setDuration:0.5];
  [v2 setFromValue:&unk_287A0F690];
  [v2 setToValue:&unk_287A0F680];

  return v2;
}

- (CGPoint)gradientOrigin
{
  x = self->_gradientOrigin.x;
  y = self->_gradientOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end