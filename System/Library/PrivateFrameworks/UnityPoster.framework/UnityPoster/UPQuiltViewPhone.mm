@interface UPQuiltViewPhone
- (CGPath)bottomLeftQuiltPathRef;
- (CGPath)topQuiltPathRef;
- (UPQuiltViewPhone)initWithFrame:(CGRect)frame;
- (uint64_t)bottomRightQuiltPathRef;
- (uint64_t)intersectionPiecePathRef;
- (void)cleanupQuiltPaths;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBottomLeftQuiltColor:(id)color;
- (void)setBottomRightQuiltColor:(id)color;
- (void)setColors;
- (void)setConfiguration:(id)configuration;
- (void)setIntersectionPieceColor:(id)color;
- (void)setTopQuiltColor:(id)color;
- (void)updateQuiltsWithUnlockProgress:(double)progress wakeProgress:(double)wakeProgress;
@end

@implementation UPQuiltViewPhone

- (UPQuiltViewPhone)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = UPQuiltViewPhone;
  v3 = [(UPQuiltViewPhone *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    layer = [MEMORY[0x277CD9F90] layer];
    topQuiltPieceLayer = v3->_topQuiltPieceLayer;
    v3->_topQuiltPieceLayer = layer;

    layer2 = [MEMORY[0x277CD9F90] layer];
    bottomLeftQuiltPieceLayer = v3->_bottomLeftQuiltPieceLayer;
    v3->_bottomLeftQuiltPieceLayer = layer2;

    layer3 = [MEMORY[0x277CD9F90] layer];
    intersectionPieceLayer = v3->_intersectionPieceLayer;
    v3->_intersectionPieceLayer = layer3;

    layer4 = [MEMORY[0x277CD9F90] layer];
    bottomRightQuiltPieceLayer = v3->_bottomRightQuiltPieceLayer;
    v3->_bottomRightQuiltPieceLayer = layer4;

    layer5 = [(UPQuiltViewPhone *)v3 layer];
    [layer5 addSublayer:v3->_topQuiltPieceLayer];

    layer6 = [(UPQuiltViewPhone *)v3 layer];
    [layer6 addSublayer:v3->_bottomLeftQuiltPieceLayer];

    layer7 = [(UPQuiltViewPhone *)v3 layer];
    [layer7 addSublayer:v3->_intersectionPieceLayer];

    layer8 = [(UPQuiltViewPhone *)v3 layer];
    [layer8 addSublayer:v3->_bottomRightQuiltPieceLayer];

    [(UPQuiltViewPhone *)v3 setNeedsLayout];
  }

  return v3;
}

- (void)setTopQuiltColor:(id)color
{
  colorCopy = color;
  [(CAShapeLayer *)self->_topQuiltPieceLayer setHidden:colorCopy == 0];
  if (self->_topQuiltColor != colorCopy)
  {
    objc_storeStrong(&self->_topQuiltColor, color);
    [(CAShapeLayer *)self->_topQuiltPieceLayer setFillColor:[(UIColor *)colorCopy CGColor]];
  }
}

- (void)setBottomLeftQuiltColor:(id)color
{
  colorCopy = color;
  [(CAShapeLayer *)self->_bottomLeftQuiltPieceLayer setHidden:colorCopy == 0];
  if (self->_bottomLeftQuiltColor != colorCopy)
  {
    objc_storeStrong(&self->_bottomLeftQuiltColor, color);
    [(CAShapeLayer *)self->_bottomLeftQuiltPieceLayer setFillColor:[(UIColor *)colorCopy CGColor]];
  }
}

- (void)setIntersectionPieceColor:(id)color
{
  colorCopy = color;
  [(CAShapeLayer *)self->_intersectionPieceLayer setHidden:colorCopy == 0];
  if (self->_intersectionPieceColor != colorCopy)
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    objc_storeStrong(&self->_intersectionPieceColor, color);
    [(CAShapeLayer *)self->_intersectionPieceLayer setFillColor:[(UIColor *)colorCopy CGColor]];
    [MEMORY[0x277CD9FF0] commit];
  }
}

- (void)setBottomRightQuiltColor:(id)color
{
  colorCopy = color;
  [(CAShapeLayer *)self->_bottomRightQuiltPieceLayer setHidden:colorCopy == 0];
  if (self->_bottomRightQuiltColor != colorCopy)
  {
    objc_storeStrong(&self->_bottomRightQuiltColor, color);
    [(CAShapeLayer *)self->_bottomRightQuiltPieceLayer setFillColor:[(UIColor *)colorCopy CGColor]];
  }
}

- (void)layoutSubviews
{
  quiltViewDelegate = [(UPQuiltView *)self quiltViewDelegate];
  [quiltViewDelegate regenerateConfiguration];

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
  presentationLayer = [(CAShapeLayer *)self->_topQuiltPieceLayer presentationLayer];
  path = [presentationLayer path];

  return path;
}

- (CGPath)bottomLeftQuiltPathRef
{
  presentationLayer = [(CAShapeLayer *)self->_bottomLeftQuiltPieceLayer presentationLayer];
  path = [presentationLayer path];

  return path;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->_configuration != configurationCopy)
  {
    v10 = configurationCopy;
    objc_storeStrong(&self->_configuration, configuration);
    topQuiltAwakeLockedPath = [(UPQuiltConfigurationPhone *)v10 topQuiltAwakeLockedPath];
    -[CAShapeLayer setPath:](self->_topQuiltPieceLayer, "setPath:", [topQuiltAwakeLockedPath CGPath]);

    bottomLeftQuiltAwakeLockedPath = [(UPQuiltConfigurationPhone *)v10 bottomLeftQuiltAwakeLockedPath];
    -[CAShapeLayer setPath:](self->_bottomLeftQuiltPieceLayer, "setPath:", [bottomLeftQuiltAwakeLockedPath CGPath]);

    intersectionPieceAwakeLockedPath = [(UPQuiltConfigurationPhone *)v10 intersectionPieceAwakeLockedPath];
    -[CAShapeLayer setPath:](self->_intersectionPieceLayer, "setPath:", [intersectionPieceAwakeLockedPath CGPath]);

    bottomRightQuiltAwakeLockedPath = [(UPQuiltConfigurationPhone *)v10 bottomRightQuiltAwakeLockedPath];
    -[CAShapeLayer setPath:](self->_bottomRightQuiltPieceLayer, "setPath:", [bottomRightQuiltAwakeLockedPath CGPath]);

    configurationCopy = v10;
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

- (void)updateQuiltsWithUnlockProgress:(double)progress wakeProgress:(double)wakeProgress
{
  v5 = wakeProgress * 5.0 + (1.0 - wakeProgress) * 0.0;
  if (v5 <= 5.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 5.0;
  }

  v7 = progress * 45.0 + (1.0 - progress) * 0.0;
  if (v7 <= 45.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 45.0;
  }

  bottomLeftQuiltAsleepPath = [(UPQuiltConfigurationPhone *)self->_configuration bottomLeftQuiltAsleepPath];
  bottomLeftQuiltAwakeLockedPath = [(UPQuiltConfigurationPhone *)self->_configuration bottomLeftQuiltAwakeLockedPath];
  v11 = v6 / 5.0;
  v12 = UPInterpolateBetweenBezierPaths(bottomLeftQuiltAsleepPath, bottomLeftQuiltAwakeLockedPath, v11);

  bottomLeftQuiltUnlockedPath = [(UPQuiltConfigurationPhone *)self->_configuration bottomLeftQuiltUnlockedPath];
  v28 = UPInterpolateBetweenBezierPaths(v12, bottomLeftQuiltUnlockedPath, v8 / 45.0);

  topQuiltAsleepPath = [(UPQuiltConfigurationPhone *)self->_configuration topQuiltAsleepPath];
  topQuiltAwakeLockedPath = [(UPQuiltConfigurationPhone *)self->_configuration topQuiltAwakeLockedPath];
  v16 = UPInterpolateBetweenBezierPaths(topQuiltAsleepPath, topQuiltAwakeLockedPath, v11);

  topQuiltUnlockedPath = [(UPQuiltConfigurationPhone *)self->_configuration topQuiltUnlockedPath];
  v18 = UPInterpolateBetweenBezierPaths(v16, topQuiltUnlockedPath, v8 / 45.0);

  bottomRightQuiltAwakeLockedPath = [(UPQuiltConfigurationPhone *)self->_configuration bottomRightQuiltAwakeLockedPath];
  bottomRightQuiltUnlockedPath = [(UPQuiltConfigurationPhone *)self->_configuration bottomRightQuiltUnlockedPath];
  v21 = UPInterpolateBetweenBezierPaths(bottomRightQuiltAwakeLockedPath, bottomRightQuiltUnlockedPath, v8 / 45.0);

  cGPath = [v18 CGPath];
  v23 = v28;
  CopyByIntersectingPath = CGPathCreateCopyByIntersectingPath(cGPath, [v28 CGPath], 0);
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
    presentationLayer = [*(result + 560) presentationLayer];
    path = [presentationLayer path];

    return path;
  }

  return result;
}

- (uint64_t)bottomRightQuiltPathRef
{
  if (result)
  {
    presentationLayer = [*(result + 576) presentationLayer];
    path = [presentationLayer path];

    return path;
  }

  return result;
}

- (void)cleanupQuiltPaths
{
  if (self)
  {
    v2 = *(self + 536);
    if (v2)
    {
      CGPathRelease(v2);
      *(self + 536) = 0;
    }

    v3 = *(self + 552);
    if (v3)
    {
      CGPathRelease(v3);
      *(self + 552) = 0;
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