@interface TSKGradientShapeLayer
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (NSArray)colors;
- (NSArray)locations;
- (NSString)type;
- (void)dealloc;
- (void)p_createGradientTreeIfNeeded;
- (void)p_flatten;
- (void)setColors:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setEndPoint:(CGPoint)a3;
- (void)setFillColor:(CGColor *)a3;
- (void)setFillRule:(id)a3;
- (void)setLineCap:(id)a3;
- (void)setLineDashPattern:(id)a3;
- (void)setLineDashPhase:(double)a3;
- (void)setLineJoin:(id)a3;
- (void)setLineWidth:(double)a3;
- (void)setLocations:(id)a3;
- (void)setMiterLimit:(double)a3;
- (void)setPath:(CGPath *)a3;
- (void)setStartPoint:(CGPoint)a3;
- (void)setStrokeColor:(CGColor *)a3;
- (void)setStrokeEnd:(double)a3;
- (void)setStrokeStart:(double)a3;
- (void)setType:(id)a3;
@end

@implementation TSKGradientShapeLayer

- (void)dealloc
{
  [(CAGradientLayer *)[(TSKGradientShapeLayer *)self gradient] removeFromSuperlayer];
  [(CAGradientLayer *)[(TSKGradientShapeLayer *)self gradient] setDelegate:0];
  [(TSKGradientShapeLayer *)self setGradient:0];
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] removeFromSuperlayer];
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setDelegate:0];
  [(TSKGradientShapeLayer *)self setShapeMask:0];
  v3.receiver = self;
  v3.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v3 dealloc];
}

- (void)setDelegate:(id)a3
{
  [(CAGradientLayer *)[(TSKGradientShapeLayer *)self gradient] setDelegate:a3];
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setDelegate:a3];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setDelegate:a3];
}

- (void)setPath:(CGPath *)a3
{
  if ([(TSKGradientShapeLayer *)self isGradientTree])
  {
    PathBoundingBox = CGPathGetPathBoundingBox(a3);
    x = PathBoundingBox.origin.x;
    y = PathBoundingBox.origin.y;
    width = PathBoundingBox.size.width;
    height = PathBoundingBox.size.height;
    [(TSKGradientShapeLayer *)self lineWidth];
    v10 = v9 * -0.5;
    [(TSKGradientShapeLayer *)self lineWidth];
    v12 = v11 * -0.5;
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v22 = CGRectInset(v21, v10, v12);
    v13 = v22.origin.x;
    v14 = v22.origin.y;
    v15 = v22.size.width;
    v16 = v22.size.height;
    memset(&v19, 0, sizeof(v19));
    CGAffineTransformMakeTranslation(&v19, -v22.origin.x, -v22.origin.y);
    v17 = MEMORY[0x26D6A8870](a3, &v19);
    [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setPath:v17];
    CGPathRelease(v17);
    [(CAGradientLayer *)[(TSKGradientShapeLayer *)self gradient] setFrame:v13, v14, v15, v16];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = TSKGradientShapeLayer;
    [(TSKGradientShapeLayer *)&v18 setPath:a3];
  }
}

- (void)setFillColor:(CGColor *)a3
{
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setFillColor:a3];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setFillColor:a3];
}

- (void)setFillRule:(id)a3
{
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setFillRule:a3];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setFillRule:a3];
}

- (void)setStrokeColor:(CGColor *)a3
{
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setStrokeColor:a3];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setStrokeColor:a3];
}

- (void)setStrokeStart:(double)a3
{
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setStrokeStart:a3];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setStrokeStart:a3];
}

- (void)setStrokeEnd:(double)a3
{
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setStrokeEnd:a3];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setStrokeEnd:a3];
}

- (void)setLineWidth:(double)a3
{
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setLineWidth:a3];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setLineWidth:a3];
}

- (void)setMiterLimit:(double)a3
{
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setMiterLimit:a3];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setMiterLimit:a3];
}

- (void)setLineCap:(id)a3
{
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setLineCap:a3];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setLineCap:a3];
}

- (void)setLineJoin:(id)a3
{
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setLineJoin:a3];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setLineJoin:a3];
}

- (void)setLineDashPhase:(double)a3
{
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setLineDashPhase:a3];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setLineDashPhase:a3];
}

- (void)setLineDashPattern:(id)a3
{
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setLineDashPattern:a3];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setLineDashPattern:a3];
}

- (void)setColors:(id)a3
{
  if (a3)
  {
    [(TSKGradientShapeLayer *)self p_createGradientTreeIfNeeded];
    v5 = [(TSKGradientShapeLayer *)self gradient];

    [(CAGradientLayer *)v5 setColors:a3];
  }

  else
  {

    [(TSKGradientShapeLayer *)self p_flatten];
  }
}

- (void)setLocations:(id)a3
{
  [(TSKGradientShapeLayer *)self p_createGradientTreeIfNeeded];
  v5 = [(TSKGradientShapeLayer *)self gradient];

  [(CAGradientLayer *)v5 setLocations:a3];
}

- (void)setStartPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(TSKGradientShapeLayer *)self p_createGradientTreeIfNeeded];
  v6 = [(TSKGradientShapeLayer *)self gradient];

  [(CAGradientLayer *)v6 setStartPoint:x, y];
}

- (void)setEndPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(TSKGradientShapeLayer *)self p_createGradientTreeIfNeeded];
  v6 = [(TSKGradientShapeLayer *)self gradient];

  [(CAGradientLayer *)v6 setEndPoint:x, y];
}

- (void)setType:(id)a3
{
  [(TSKGradientShapeLayer *)self p_createGradientTreeIfNeeded];
  v5 = [(TSKGradientShapeLayer *)self gradient];

  [(CAGradientLayer *)v5 setType:a3];
}

- (NSArray)colors
{
  v5[1] = *MEMORY[0x277D85DE8];
  if ([(TSKGradientShapeLayer *)self isGradientTree])
  {
    v3 = [(TSKGradientShapeLayer *)self gradient];

    return [(CAGradientLayer *)v3 colors];
  }

  else
  {
    v5[0] = [(TSKGradientShapeLayer *)self fillColor];
    return [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }
}

- (NSArray)locations
{
  if (![(TSKGradientShapeLayer *)self isGradientTree])
  {
    return 0;
  }

  v3 = [(TSKGradientShapeLayer *)self gradient];

  return [(CAGradientLayer *)v3 locations];
}

- (CGPoint)startPoint
{
  if ([(TSKGradientShapeLayer *)self isGradientTree])
  {
    [(CAGradientLayer *)[(TSKGradientShapeLayer *)self gradient] startPoint];
  }

  else
  {
    v4 = 0.0;
    v3 = 0.5;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)endPoint
{
  if ([(TSKGradientShapeLayer *)self isGradientTree])
  {
    [(CAGradientLayer *)[(TSKGradientShapeLayer *)self gradient] endPoint];
  }

  else
  {
    v4 = 1.0;
    v3 = 0.5;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (NSString)type
{
  if (![(TSKGradientShapeLayer *)self isGradientTree])
  {
    return *MEMORY[0x277CDA690];
  }

  v3 = [(TSKGradientShapeLayer *)self gradient];

  return [(CAGradientLayer *)v3 type];
}

- (void)p_createGradientTreeIfNeeded
{
  if (![(TSKGradientShapeLayer *)self gradient])
  {
    PathBoundingBox = CGPathGetPathBoundingBox([(TSKGradientShapeLayer *)self path]);
    x = PathBoundingBox.origin.x;
    y = PathBoundingBox.origin.y;
    width = PathBoundingBox.size.width;
    height = PathBoundingBox.size.height;
    [(TSKGradientShapeLayer *)self lineWidth];
    v8 = v7 * -0.5;
    [(TSKGradientShapeLayer *)self lineWidth];
    v10 = v9 * -0.5;
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v22 = CGRectInset(v21, v8, v10);
    v11 = v22.origin.x;
    v12 = v22.origin.y;
    v13 = v22.size.width;
    v14 = v22.size.height;
    v15 = [MEMORY[0x277CD9EB0] layer];
    [v15 setFrame:{v11, v12, v13, v14}];
    [v15 setDelegate:{-[TSKGradientShapeLayer delegate](self, "delegate")}];
    memset(&v19, 0, sizeof(v19));
    CGAffineTransformMakeTranslation(&v19, -v11, -v12);
    v16 = MEMORY[0x26D6A8870]([(TSKGradientShapeLayer *)self path], &v19);
    v17 = [objc_alloc(MEMORY[0x277CD9F90]) initWithLayer:self];
    [v17 setFillColor:{-[TSKGradientShapeLayer fillColor](self, "fillColor")}];
    [v17 setFillRule:{-[TSKGradientShapeLayer fillRule](self, "fillRule")}];
    [v17 setStrokeColor:{-[TSKGradientShapeLayer strokeColor](self, "strokeColor")}];
    [(TSKGradientShapeLayer *)self strokeStart];
    [v17 setStrokeStart:?];
    [(TSKGradientShapeLayer *)self strokeEnd];
    [v17 setStrokeEnd:?];
    [(TSKGradientShapeLayer *)self lineWidth];
    [v17 setLineWidth:?];
    [(TSKGradientShapeLayer *)self miterLimit];
    [v17 setMiterLimit:?];
    [v17 setLineCap:{-[TSKGradientShapeLayer lineCap](self, "lineCap")}];
    [v17 setLineJoin:{-[TSKGradientShapeLayer lineJoin](self, "lineJoin")}];
    [(TSKGradientShapeLayer *)self lineDashPhase];
    [v17 setLineDashPhase:?];
    [v17 setLineDashPattern:{-[TSKGradientShapeLayer lineDashPattern](self, "lineDashPattern")}];
    [v17 setPath:v16];
    [v17 setDelegate:{-[TSKGradientShapeLayer delegate](self, "delegate")}];
    CGPathRelease(v16);
    [(TSKGradientShapeLayer *)self setGradient:v15];
    [(TSKGradientShapeLayer *)self setShapeMask:v17];
    [(CAGradientLayer *)[(TSKGradientShapeLayer *)self gradient] setMask:[(TSKGradientShapeLayer *)self shapeMask]];
    [(TSKGradientShapeLayer *)self addSublayer:[(TSKGradientShapeLayer *)self gradient]];
    v18.receiver = self;
    v18.super_class = TSKGradientShapeLayer;
    [(TSKGradientShapeLayer *)&v18 setPath:0];
  }
}

- (void)p_flatten
{
  if ([(TSKGradientShapeLayer *)self gradient])
  {
    memset(&v8, 0, sizeof(v8));
    [(CAGradientLayer *)[(TSKGradientShapeLayer *)self gradient] frame];
    v4 = v3;
    [(CAGradientLayer *)[(TSKGradientShapeLayer *)self gradient] frame];
    CGAffineTransformMakeTranslation(&v8, v4, v5);
    v6 = MEMORY[0x26D6A8870]([(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] path], &v8);
    v7.receiver = self;
    v7.super_class = TSKGradientShapeLayer;
    [(TSKGradientShapeLayer *)&v7 setPath:v6];
    CGPathRelease(v6);
    [(CAGradientLayer *)[(TSKGradientShapeLayer *)self gradient] removeFromSuperlayer];
    [(CAGradientLayer *)[(TSKGradientShapeLayer *)self gradient] setDelegate:0];
    [(TSKGradientShapeLayer *)self setGradient:0];
    [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] removeFromSuperlayer];
    [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setDelegate:0];
    [(TSKGradientShapeLayer *)self setShapeMask:0];
  }
}

@end