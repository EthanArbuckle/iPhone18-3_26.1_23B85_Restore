@interface TSDShapeRenderable
+ (id)renderable;
+ (id)renderableFromShapeLayer:(id)a3;
- (CAShapeLayer)shapeLayer;
- (CGColor)fillColor;
- (CGColor)strokeColor;
- (CGPath)path;
- (NSArray)lineDashPattern;
- (NSString)lineCap;
- (NSString)lineJoin;
- (TSDShapeRenderable)initWithShapeLayer:(id)a3;
- (double)lineDashPhase;
- (double)lineWidth;
- (double)miterLimit;
- (double)strokeEnd;
- (void)setCGLineCap:(int)a3;
- (void)setCGLineJoin:(int)a3;
- (void)setFillColor:(CGColor *)a3;
- (void)setLineCap:(id)a3;
- (void)setLineDashPattern:(id)a3;
- (void)setLineDashPhase:(double)a3;
- (void)setLineJoin:(id)a3;
- (void)setLineWidth:(double)a3;
- (void)setMiterLimit:(double)a3;
- (void)setPath:(CGPath *)a3;
- (void)setStrokeColor:(CGColor *)a3;
- (void)setStrokeEnd:(double)a3;
@end

@implementation TSDShapeRenderable

- (TSDShapeRenderable)initWithShapeLayer:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSDShapeRenderable;
  return [(TSDRenderable *)&v4 initWithCALayer:a3];
}

+ (id)renderableFromShapeLayer:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithShapeLayer:v4];

  return v5;
}

+ (id)renderable
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x277CD9F90] layer];
  v4 = [v2 initWithShapeLayer:v3];

  return v4;
}

- (CAShapeLayer)shapeLayer
{
  v4.receiver = self;
  v4.super_class = TSDShapeRenderable;
  v2 = [(TSDRenderable *)&v4 layer];

  return v2;
}

- (CGPath)path
{
  v2 = [(TSDShapeRenderable *)self shapeLayer];
  v3 = [v2 path];

  return v3;
}

- (void)setPath:(CGPath *)a3
{
  v4 = [(TSDShapeRenderable *)self shapeLayer];
  [v4 setPath:a3];
}

- (CGColor)strokeColor
{
  v2 = [(TSDShapeRenderable *)self shapeLayer];
  v3 = [v2 strokeColor];

  return v3;
}

- (void)setStrokeColor:(CGColor *)a3
{
  v4 = [(TSDShapeRenderable *)self shapeLayer];
  [v4 setStrokeColor:a3];
}

- (CGColor)fillColor
{
  v2 = [(TSDShapeRenderable *)self shapeLayer];
  v3 = [v2 fillColor];

  return v3;
}

- (void)setFillColor:(CGColor *)a3
{
  v4 = [(TSDShapeRenderable *)self shapeLayer];
  [v4 setFillColor:a3];
}

- (double)lineWidth
{
  v2 = [(TSDShapeRenderable *)self shapeLayer];
  [v2 lineWidth];
  v4 = v3;

  return v4;
}

- (void)setLineWidth:(double)a3
{
  v4 = [(TSDShapeRenderable *)self shapeLayer];
  [v4 setLineWidth:a3];
}

- (NSArray)lineDashPattern
{
  v2 = [(TSDShapeRenderable *)self shapeLayer];
  v3 = [v2 lineDashPattern];

  return v3;
}

- (void)setLineDashPattern:(id)a3
{
  v4 = a3;
  v5 = [(TSDShapeRenderable *)self shapeLayer];
  [v5 setLineDashPattern:v4];
}

- (NSString)lineCap
{
  v2 = [(TSDShapeRenderable *)self shapeLayer];
  v3 = [v2 lineCap];

  return v3;
}

- (void)setLineCap:(id)a3
{
  v4 = a3;
  v5 = [(TSDShapeRenderable *)self shapeLayer];
  [v5 setLineCap:v4];
}

- (double)lineDashPhase
{
  v2 = [(TSDShapeRenderable *)self shapeLayer];
  [v2 lineDashPhase];
  v4 = v3;

  return v4;
}

- (void)setLineDashPhase:(double)a3
{
  v4 = [(TSDShapeRenderable *)self shapeLayer];
  [v4 setLineDashPhase:a3];
}

- (NSString)lineJoin
{
  v2 = [(TSDShapeRenderable *)self shapeLayer];
  v3 = [v2 lineJoin];

  return v3;
}

- (void)setLineJoin:(id)a3
{
  v4 = a3;
  v5 = [(TSDShapeRenderable *)self shapeLayer];
  [v5 setLineJoin:v4];
}

- (double)miterLimit
{
  v2 = [(TSDShapeRenderable *)self shapeLayer];
  [v2 miterLimit];
  v4 = v3;

  return v4;
}

- (void)setMiterLimit:(double)a3
{
  v4 = [(TSDShapeRenderable *)self shapeLayer];
  [v4 setMiterLimit:a3];
}

- (double)strokeEnd
{
  v2 = [(TSDShapeRenderable *)self shapeLayer];
  [v2 strokeEnd];
  v4 = v3;

  return v4;
}

- (void)setStrokeEnd:(double)a3
{
  v4 = [(TSDShapeRenderable *)self shapeLayer];
  [v4 setStrokeEnd:a3];
}

- (void)setCGLineCap:(int)a3
{
  v3 = @"butt";
  if (a3 == 1)
  {
    v3 = @"round";
  }

  if (a3 == 2)
  {
    v4 = @"square";
  }

  else
  {
    v4 = v3;
  }

  [(TSDShapeRenderable *)self setLineCap:v4];
}

- (void)setCGLineJoin:(int)a3
{
  v3 = @"miter";
  if (a3 == 1)
  {
    v3 = @"round";
  }

  if (a3 == 2)
  {
    v4 = @"bevel";
  }

  else
  {
    v4 = v3;
  }

  [(TSDShapeRenderable *)self setLineJoin:v4];
}

@end