@interface UPQuiltViewPhone
- (CGPath)bottomLeftQuiltPathRef;
- (CGPath)topQuiltPathRef;
- (UPQuiltViewPhone)initWithFrame:(CGRect)a3;
- (uint64_t)bottomRightQuiltPathRef;
- (uint64_t)intersectionPiecePathRef;
- (void)cleanupQuiltPaths;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBottomLeftQuiltColor:(id)a3;
- (void)setBottomRightQuiltColor:(id)a3;
- (void)setColors;
- (void)setConfiguration:(id)a3;
- (void)setIntersectionPieceColor:(id)a3;
- (void)setTopQuiltColor:(id)a3;
- (void)updateQuiltsWithUnlockProgress:(double)a3 wakeProgress:(double)a4;
@end

@implementation UPQuiltViewPhone

- (UPQuiltViewPhone)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = UPQuiltViewPhone;
  v3 = [(UPQuiltViewPhone *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CD9F90] layer];
    topQuiltPieceLayer = v3->_topQuiltPieceLayer;
    v3->_topQuiltPieceLayer = v4;

    v6 = [MEMORY[0x277CD9F90] layer];
    bottomLeftQuiltPieceLayer = v3->_bottomLeftQuiltPieceLayer;
    v3->_bottomLeftQuiltPieceLayer = v6;

    v8 = [MEMORY[0x277CD9F90] layer];
    intersectionPieceLayer = v3->_intersectionPieceLayer;
    v3->_intersectionPieceLayer = v8;

    v10 = [MEMORY[0x277CD9F90] layer];
    bottomRightQuiltPieceLayer = v3->_bottomRightQuiltPieceLayer;
    v3->_bottomRightQuiltPieceLayer = v10;

    v12 = [(UPQuiltViewPhone *)v3 layer];
    [v12 addSublayer:v3->_topQuiltPieceLayer];

    v13 = [(UPQuiltViewPhone *)v3 layer];
    [v13 addSublayer:v3->_bottomLeftQuiltPieceLayer];

    v14 = [(UPQuiltViewPhone *)v3 layer];
    [v14 addSublayer:v3->_intersectionPieceLayer];

    v15 = [(UPQuiltViewPhone *)v3 layer];
    [v15 addSublayer:v3->_bottomRightQuiltPieceLayer];

    [(UPQuiltViewPhone *)v3 setNeedsLayout];
  }

  return v3;
}

- (void)setTopQuiltColor:(id)a3
{
  v5 = a3;
  [(CAShapeLayer *)self->_topQuiltPieceLayer setHidden:v5 == 0];
  if (self->_topQuiltColor != v5)
  {
    objc_storeStrong(&self->_topQuiltColor, a3);
    [(CAShapeLayer *)self->_topQuiltPieceLayer setFillColor:[(UIColor *)v5 CGColor]];
  }
}

- (void)setBottomLeftQuiltColor:(id)a3
{
  v5 = a3;
  [(CAShapeLayer *)self->_bottomLeftQuiltPieceLayer setHidden:v5 == 0];
  if (self->_bottomLeftQuiltColor != v5)
  {
    objc_storeStrong(&self->_bottomLeftQuiltColor, a3);
    [(CAShapeLayer *)self->_bottomLeftQuiltPieceLayer setFillColor:[(UIColor *)v5 CGColor]];
  }
}

- (void)setIntersectionPieceColor:(id)a3
{
  v5 = a3;
  [(CAShapeLayer *)self->_intersectionPieceLayer setHidden:v5 == 0];
  if (self->_intersectionPieceColor != v5)
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    objc_storeStrong(&self->_intersectionPieceColor, a3);
    [(CAShapeLayer *)self->_intersectionPieceLayer setFillColor:[(UIColor *)v5 CGColor]];
    [MEMORY[0x277CD9FF0] commit];
  }
}

- (void)setBottomRightQuiltColor:(id)a3
{
  v5 = a3;
  [(CAShapeLayer *)self->_bottomRightQuiltPieceLayer setHidden:v5 == 0];
  if (self->_bottomRightQuiltColor != v5)
  {
    objc_storeStrong(&self->_bottomRightQuiltColor, a3);
    [(CAShapeLayer *)self->_bottomRightQuiltPieceLayer setFillColor:[(UIColor *)v5 CGColor]];
  }
}

- (void)layoutSubviews
{
  v3 = [(UPQuiltView *)self quiltViewDelegate];
  [v3 regenerateConfiguration];

  [(UPQuiltViewPhone *)self bounds];
  [(CAShapeLayer *)self->_topQuiltPieceLayer setFrame:?];
  [(UPQuiltViewPhone *)self bounds];
  [(CAShapeLayer *)self->_bottomLeftQuiltPieceLayer setFrame:?];
  [(UPQuiltViewPhone *)self bounds];
  [(CAShapeLayer *)self->_intersectionPieceLayer setFrame:?];
  [(UPQuiltViewPhone *)self bounds];
  bottomRightQuiltPieceLayer = self->_bottomRightQuiltPieceLayer;

  [(CAShapeLayer *)bottomRightQuiltPieceLayer setFrame:?];
}

- (CGPath)topQuiltPathRef
{
  v2 = [(CAShapeLayer *)self->_topQuiltPieceLayer presentationLayer];
  v3 = [v2 path];

  return v3;
}

- (CGPath)bottomLeftQuiltPathRef
{
  v2 = [(CAShapeLayer *)self->_bottomLeftQuiltPieceLayer presentationLayer];
  v3 = [v2 path];

  return v3;
}

- (void)setConfiguration:(id)a3
{
  v5 = a3;
  if (self->_configuration != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_configuration, a3);
    v6 = [(UPQuiltConfigurationPhone *)v10 topQuiltAwakeLockedPath];
    -[CAShapeLayer setPath:](self->_topQuiltPieceLayer, "setPath:", [v6 CGPath]);

    v7 = [(UPQuiltConfigurationPhone *)v10 bottomLeftQuiltAwakeLockedPath];
    -[CAShapeLayer setPath:](self->_bottomLeftQuiltPieceLayer, "setPath:", [v7 CGPath]);

    v8 = [(UPQuiltConfigurationPhone *)v10 intersectionPieceAwakeLockedPath];
    -[CAShapeLayer setPath:](self->_intersectionPieceLayer, "setPath:", [v8 CGPath]);

    v9 = [(UPQuiltConfigurationPhone *)v10 bottomRightQuiltAwakeLockedPath];
    -[CAShapeLayer setPath:](self->_bottomRightQuiltPieceLayer, "setPath:", [v9 CGPath]);

    v5 = v10;
  }
}

- (void)setColors
{
  v3 = [MEMORY[0x277D75348] colorWithRed:0.953 green:0.0 blue:0.254 alpha:0.066];
  -[CAShapeLayer setFillColor:](self->_topQuiltPieceLayer, "setFillColor:", [v3 CGColor]);

  v4 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.559 blue:0.23 alpha:1.0];
  -[CAShapeLayer setFillColor:](self->_bottomLeftQuiltPieceLayer, "setFillColor:", [v4 CGColor]);

  v6 = [MEMORY[0x277D75348] colorWithRed:0.98 green:0.8 blue:0.0 alpha:1.0];
  v5 = v6;
  -[CAShapeLayer setFillColor:](self->_intersectionPieceLayer, "setFillColor:", [v6 CGColor]);
}

- (void)updateQuiltsWithUnlockProgress:(double)a3 wakeProgress:(double)a4
{
  v5 = a4 * 5.0 + (1.0 - a4) * 0.0;
  if (v5 <= 5.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 5.0;
  }

  v7 = a3 * 45.0 + (1.0 - a3) * 0.0;
  if (v7 <= 45.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 45.0;
  }

  v9 = [(UPQuiltConfigurationPhone *)self->_configuration bottomLeftQuiltAsleepPath];
  v10 = [(UPQuiltConfigurationPhone *)self->_configuration bottomLeftQuiltAwakeLockedPath];
  v11 = v6 / 5.0;
  v12 = UPInterpolateBetweenBezierPaths(v9, v10, v11);

  v13 = [(UPQuiltConfigurationPhone *)self->_configuration bottomLeftQuiltUnlockedPath];
  v28 = UPInterpolateBetweenBezierPaths(v12, v13, v8 / 45.0);

  v14 = [(UPQuiltConfigurationPhone *)self->_configuration topQuiltAsleepPath];
  v15 = [(UPQuiltConfigurationPhone *)self->_configuration topQuiltAwakeLockedPath];
  v16 = UPInterpolateBetweenBezierPaths(v14, v15, v11);

  v17 = [(UPQuiltConfigurationPhone *)self->_configuration topQuiltUnlockedPath];
  v18 = UPInterpolateBetweenBezierPaths(v16, v17, v8 / 45.0);

  v19 = [(UPQuiltConfigurationPhone *)self->_configuration bottomRightQuiltAwakeLockedPath];
  v20 = [(UPQuiltConfigurationPhone *)self->_configuration bottomRightQuiltUnlockedPath];
  v21 = UPInterpolateBetweenBezierPaths(v19, v20, v8 / 45.0);

  v22 = [v18 CGPath];
  v23 = v28;
  CopyByIntersectingPath = CGPathCreateCopyByIntersectingPath(v22, [v28 CGPath], 0);
  CopyBySubtractingPath = CGPathCreateCopyBySubtractingPath([v18 CGPath], CopyByIntersectingPath, 0);
  v26 = v28;
  v27 = CGPathCreateCopyBySubtractingPath([v28 CGPath], CopyByIntersectingPath, 0);
  [(CAShapeLayer *)self->_topQuiltPieceLayer setPath:CopyBySubtractingPath];
  [(CAShapeLayer *)self->_bottomLeftQuiltPieceLayer setPath:v27];
  [(CAShapeLayer *)self->_intersectionPieceLayer setPath:CopyByIntersectingPath];
  -[CAShapeLayer setPath:](self->_bottomRightQuiltPieceLayer, "setPath:", [v21 CGPath]);
  if (CopyByIntersectingPath)
  {
    CGPathRelease(CopyByIntersectingPath);
  }

  if (CopyBySubtractingPath)
  {
    CGPathRelease(CopyBySubtractingPath);
  }

  if (v27)
  {
    CGPathRelease(v27);
  }
}

- (uint64_t)intersectionPiecePathRef
{
  if (result)
  {
    v1 = [*(result + 560) presentationLayer];
    v2 = [v1 path];

    return v2;
  }

  return result;
}

- (uint64_t)bottomRightQuiltPathRef
{
  if (result)
  {
    v1 = [*(result + 576) presentationLayer];
    v2 = [v1 path];

    return v2;
  }

  return result;
}

- (void)cleanupQuiltPaths
{
  if (a1)
  {
    v2 = *(a1 + 536);
    if (v2)
    {
      CGPathRelease(v2);
      *(a1 + 536) = 0;
    }

    v3 = *(a1 + 552);
    if (v3)
    {
      CGPathRelease(v3);
      *(a1 + 552) = 0;
    }
  }
}

- (void)dealloc
{
  [(UPQuiltViewPhone *)self cleanupQuiltPaths];
  v3.receiver = self;
  v3.super_class = UPQuiltViewPhone;
  [(UPQuiltViewPhone *)&v3 dealloc];
}

@end