@interface TSKGradientShapeLayer
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (NSArray)colors;
- (NSArray)locations;
- (NSString)type;
- (void)dealloc;
- (void)p_createGradientTreeIfNeeded;
- (void)p_flatten;
- (void)setColors:(id)colors;
- (void)setDelegate:(id)delegate;
- (void)setEndPoint:(CGPoint)point;
- (void)setFillColor:(CGColor *)color;
- (void)setFillRule:(id)rule;
- (void)setLineCap:(id)cap;
- (void)setLineDashPattern:(id)pattern;
- (void)setLineDashPhase:(double)phase;
- (void)setLineJoin:(id)join;
- (void)setLineWidth:(double)width;
- (void)setLocations:(id)locations;
- (void)setMiterLimit:(double)limit;
- (void)setPath:(CGPath *)path;
- (void)setStartPoint:(CGPoint)point;
- (void)setStrokeColor:(CGColor *)color;
- (void)setStrokeEnd:(double)end;
- (void)setStrokeStart:(double)start;
- (void)setType:(id)type;
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

- (void)setDelegate:(id)delegate
{
  [(CAGradientLayer *)[(TSKGradientShapeLayer *)self gradient] setDelegate:delegate];
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setDelegate:delegate];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setDelegate:delegate];
}

- (void)setPath:(CGPath *)path
{
  if ([(TSKGradientShapeLayer *)self isGradientTree])
  {
    PathBoundingBox = CGPathGetPathBoundingBox(path);
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
    v17 = MEMORY[0x26D6A8870](path, &v19);
    [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setPath:v17];
    CGPathRelease(v17);
    [(CAGradientLayer *)[(TSKGradientShapeLayer *)self gradient] setFrame:v13, v14, v15, v16];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = TSKGradientShapeLayer;
    [(TSKGradientShapeLayer *)&v18 setPath:path];
  }
}

- (void)setFillColor:(CGColor *)color
{
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setFillColor:color];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setFillColor:color];
}

- (void)setFillRule:(id)rule
{
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setFillRule:rule];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setFillRule:rule];
}

- (void)setStrokeColor:(CGColor *)color
{
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setStrokeColor:color];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setStrokeColor:color];
}

- (void)setStrokeStart:(double)start
{
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setStrokeStart:start];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setStrokeStart:start];
}

- (void)setStrokeEnd:(double)end
{
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setStrokeEnd:end];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setStrokeEnd:end];
}

- (void)setLineWidth:(double)width
{
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setLineWidth:width];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setLineWidth:width];
}

- (void)setMiterLimit:(double)limit
{
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setMiterLimit:limit];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setMiterLimit:limit];
}

- (void)setLineCap:(id)cap
{
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setLineCap:cap];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setLineCap:cap];
}

- (void)setLineJoin:(id)join
{
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setLineJoin:join];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setLineJoin:join];
}

- (void)setLineDashPhase:(double)phase
{
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setLineDashPhase:phase];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setLineDashPhase:phase];
}

- (void)setLineDashPattern:(id)pattern
{
  [(CAShapeLayer *)[(TSKGradientShapeLayer *)self shapeMask] setLineDashPattern:pattern];
  v5.receiver = self;
  v5.super_class = TSKGradientShapeLayer;
  [(TSKGradientShapeLayer *)&v5 setLineDashPattern:pattern];
}

- (void)setColors:(id)colors
{
  if (colors)
  {
    [(TSKGradientShapeLayer *)self p_createGradientTreeIfNeeded];
    gradient = [(TSKGradientShapeLayer *)self gradient];

    [(CAGradientLayer *)gradient setColors:colors];
  }

  else
  {

    [(TSKGradientShapeLayer *)self p_flatten];
  }
}

- (void)setLocations:(id)locations
{
  [(TSKGradientShapeLayer *)self p_createGradientTreeIfNeeded];
  gradient = [(TSKGradientShapeLayer *)self gradient];

  [(CAGradientLayer *)gradient setLocations:locations];
}

- (void)setStartPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(TSKGradientShapeLayer *)self p_createGradientTreeIfNeeded];
  gradient = [(TSKGradientShapeLayer *)self gradient];

  [(CAGradientLayer *)gradient setStartPoint:x, y];
}

- (void)setEndPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(TSKGradientShapeLayer *)self p_createGradientTreeIfNeeded];
  gradient = [(TSKGradientShapeLayer *)self gradient];

  [(CAGradientLayer *)gradient setEndPoint:x, y];
}

- (void)setType:(id)type
{
  [(TSKGradientShapeLayer *)self p_createGradientTreeIfNeeded];
  gradient = [(TSKGradientShapeLayer *)self gradient];

  [(CAGradientLayer *)gradient setType:type];
}

- (NSArray)colors
{
  v5[1] = *MEMORY[0x277D85DE8];
  if ([(TSKGradientShapeLayer *)self isGradientTree])
  {
    gradient = [(TSKGradientShapeLayer *)self gradient];

    return [(CAGradientLayer *)gradient colors];
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

  gradient = [(TSKGradientShapeLayer *)self gradient];

  return [(CAGradientLayer *)gradient locations];
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

  gradient = [(TSKGradientShapeLayer *)self gradient];

  return [(CAGradientLayer *)gradient type];
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
    layer = [MEMORY[0x277CD9EB0] layer];
    [layer setFrame:{v11, v12, v13, v14}];
    [layer setDelegate:{-[TSKGradientShapeLayer delegate](self, "delegate")}];
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
    [(TSKGradientShapeLayer *)self setGradient:layer];
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