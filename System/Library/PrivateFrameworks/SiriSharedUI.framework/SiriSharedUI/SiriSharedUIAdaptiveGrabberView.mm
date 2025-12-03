@interface SiriSharedUIAdaptiveGrabberView
- (CGPath)_pathForStyle:(int64_t)style;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SiriSharedUIAdaptiveGrabberView)initWithFrame:(CGRect)frame;
- (SiriSharedUIAdaptiveGrabberView)initWithStyle:(int64_t)style;
- (id)shapeLayer;
- (void)_commonInit;
- (void)_setupWithStyle:(int64_t)style animated:(BOOL)animated;
- (void)setStyle:(int64_t)style animated:(BOOL)animated;
@end

@implementation SiriSharedUIAdaptiveGrabberView

- (SiriSharedUIAdaptiveGrabberView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SiriSharedUIAdaptiveGrabberView;
  v3 = [(SiriSharedUIAdaptiveGrabberView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SiriSharedUIAdaptiveGrabberView *)v3 _commonInit];
    [(SiriSharedUIAdaptiveGrabberView *)v4 _setupWithStyle:0 animated:0];
  }

  return v4;
}

- (SiriSharedUIAdaptiveGrabberView)initWithStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = SiriSharedUIAdaptiveGrabberView;
  v4 = [(SiriSharedUIAdaptiveGrabberView *)&v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v5 = v4;
  if (v4)
  {
    [(SiriSharedUIAdaptiveGrabberView *)v4 _commonInit];
    [(SiriSharedUIAdaptiveGrabberView *)v5 sizeToFit];
    [(SiriSharedUIAdaptiveGrabberView *)v5 _setupWithStyle:style animated:0];
  }

  return v5;
}

- (void)_commonInit
{
  shapeLayer = [(SiriSharedUIAdaptiveGrabberView *)self shapeLayer];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [shapeLayer setFillColor:{objc_msgSend(clearColor, "CGColor")}];

  shapeLayer2 = [(SiriSharedUIAdaptiveGrabberView *)self shapeLayer];
  tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
  [shapeLayer2 setStrokeColor:{objc_msgSend(tertiaryLabelColor, "CGColor")}];

  shapeLayer3 = [(SiriSharedUIAdaptiveGrabberView *)self shapeLayer];
  v8 = *MEMORY[0x277CDA780];
  [shapeLayer3 setLineCap:*MEMORY[0x277CDA780]];

  shapeLayer4 = [(SiriSharedUIAdaptiveGrabberView *)self shapeLayer];
  [shapeLayer4 setLineWidth:5.0];

  shapeLayer5 = [(SiriSharedUIAdaptiveGrabberView *)self shapeLayer];
  [shapeLayer5 setLineJoin:v8];
}

- (id)shapeLayer
{
  layer = [(SiriSharedUIAdaptiveGrabberView *)self layer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = layer;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  [(SiriSharedUIAdaptiveGrabberView *)self sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 36.0;
  v4 = 18.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setStyle:(int64_t)style animated:(BOOL)animated
{
  if (self->_style != style)
  {
    self->_style = style;
    [SiriSharedUIAdaptiveGrabberView _setupWithStyle:"_setupWithStyle:animated:" animated:?];
  }
}

- (void)_setupWithStyle:(int64_t)style animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = [(SiriSharedUIAdaptiveGrabberView *)self _pathForStyle:style];
  if (v6)
  {
    v7 = v6;
    shapeLayer = [(SiriSharedUIAdaptiveGrabberView *)self shapeLayer];
    v9 = shapeLayer;
    if (animatedCopy)
    {
      path = [shapeLayer path];

      v9 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"path"];
      [v9 setDuration:0.2];
      [v9 setToValue:v7];
      [v9 setFromValue:path];
      v11 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
      [v9 setTimingFunction:v11];

      shapeLayer2 = [(SiriSharedUIAdaptiveGrabberView *)self shapeLayer];
      [shapeLayer2 addAnimation:v9 forKey:@"path"];

      shapeLayer3 = [(SiriSharedUIAdaptiveGrabberView *)self shapeLayer];
      [shapeLayer3 setPath:v7];
    }

    else
    {
      [shapeLayer setPath:v7];
    }

    CGPathRelease(v7);
  }
}

- (CGPath)_pathForStyle:(int64_t)style
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 0.0, 13.0);
  if (style == 1)
  {
    v5 = 8.0;
  }

  else
  {
    v5 = 13.0;
  }

  CGPathAddLineToPoint(Mutable, 0, 18.0, v5);
  CGPathAddLineToPoint(Mutable, 0, 36.0, 13.0);
  v6 = MEMORY[0x223D5B3C0](Mutable);
  CGPathRelease(Mutable);
  return v6;
}

@end