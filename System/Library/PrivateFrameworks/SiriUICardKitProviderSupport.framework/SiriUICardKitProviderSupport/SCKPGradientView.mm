@interface SCKPGradientView
- (CGPoint)gradientOrigin;
- (SCKPGradientView)initWithGradientType:(id)type;
- (id)_fadeInAnimation;
- (id)_fadeOutAnimation;
- (void)_updateGradientOpacity;
- (void)layoutSubviews;
- (void)setGradientEndOpacity:(double)opacity;
- (void)setGradientStartOpacity:(double)opacity;
- (void)setGradientType:(id)type;
- (void)setVisible:(BOOL)visible animated:(BOOL)animated;
@end

@implementation SCKPGradientView

- (SCKPGradientView)initWithGradientType:(id)type
{
  typeCopy = type;
  v11.receiver = self;
  v11.super_class = SCKPGradientView;
  v5 = [(SCKPGradientView *)&v11 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    v5->_gradientHeight = 240.0;
    v5->_gradientOrigin.x = 0.0;
    v5->_gradientOrigin.y = 0.0;
    [(SCKPGradientView *)v5 setGradientType:typeCopy];
    *&v6->_gradientStartOpacity = qword_269516E50[*MEMORY[0x277CDA6A0] == typeCopy];
    v6->_gradientEndOpacity = 0.09021;
    [(SCKPGradientView *)v6 _updateGradientOpacity];
    [(SCKPGradientView *)v6 setOpaque:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SCKPGradientView *)v6 setBackgroundColor:clearColor];

    [(SCKPGradientView *)v6 setUserInteractionEnabled:0];
    layer = [(SCKPGradientView *)v6 layer];
    [layer setOpacity:0.0];

    layer2 = [(SCKPGradientView *)v6 layer];
    [layer2 setAllowsHitTesting:0];
  }

  return v6;
}

- (void)setGradientType:(id)type
{
  typeCopy = type;
  if (self->_gradientType != typeCopy)
  {
    v7 = typeCopy;
    objc_storeStrong(&self->_gradientType, type);
    layer = [(SCKPGradientView *)self layer];
    [layer setType:self->_gradientType];

    typeCopy = v7;
  }
}

- (void)setGradientStartOpacity:(double)opacity
{
  if (vabdd_f64(opacity, self->_gradientStartOpacity) >= 2.22044605e-16)
  {
    self->_gradientStartOpacity = opacity;
    [(SCKPGradientView *)self _updateGradientOpacity];
  }
}

- (void)setGradientEndOpacity:(double)opacity
{
  if (vabdd_f64(opacity, self->_gradientEndOpacity) >= 2.22044605e-16)
  {
    self->_gradientEndOpacity = opacity;
    [(SCKPGradientView *)self _updateGradientOpacity];
  }
}

- (void)layoutSubviews
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = SCKPGradientView;
  [(SCKPGradientView *)&v20 layoutSubviews];
  layer = [(SCKPGradientView *)self layer];
  [(SCKPGradientView *)self bounds];
  [layer setFrame:?];

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
    layer2 = [(SCKPGradientView *)self layer];
    [layer2 setStartPoint:{v12, v13}];

    layer3 = [(SCKPGradientView *)self layer];
    [layer3 setEndPoint:{v15, v16}];

    layer4 = [(SCKPGradientView *)self layer];
    [layer4 setLocations:&unk_287A0F668];
  }

  else
  {
    layer5 = [(SCKPGradientView *)self layer];
    [layer5 setStartPoint:{0.5, 1.0}];

    layer6 = [(SCKPGradientView *)self layer];
    [layer6 setEndPoint:{0.5, 0.0}];

    layer4 = [(SCKPGradientView *)self layer];
    v21[0] = &unk_287A0F648;
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_gradientHeight / v6];
    v21[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    [layer4 setLocations:v11];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_isVisible != visible)
  {
    animatedCopy = animated;
    visibleCopy = visible;
    self->_isVisible = visible;
    layer = [(SCKPGradientView *)self layer];
    v8 = layer;
    v9 = 0.0;
    if (visibleCopy)
    {
      *&v9 = 1.0;
    }

    [layer setOpacity:v9];

    if (animatedCopy)
    {
      layer2 = [(SCKPGradientView *)self layer];
      if (visibleCopy)
      {
        [(SCKPGradientView *)self _fadeInAnimation];
      }

      else
      {
        [(SCKPGradientView *)self _fadeOutAnimation];
      }
      v10 = ;
      [layer2 addAnimation:v10 forKey:0];
    }
  }
}

- (void)_updateGradientOpacity
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:self->_gradientStartOpacity];
  v4 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:self->_gradientEndOpacity];
  layer = [(SCKPGradientView *)self layer];
  v8[0] = [v3 CGColor];
  v8[1] = [v4 CGColor];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  [layer setColors:v6];

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