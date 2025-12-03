@interface TSDShapeRenderable
+ (id)renderable;
+ (id)renderableFromShapeLayer:(id)layer;
- (CAShapeLayer)shapeLayer;
- (CGColor)fillColor;
- (CGColor)strokeColor;
- (CGPath)path;
- (NSArray)lineDashPattern;
- (NSString)lineCap;
- (NSString)lineJoin;
- (TSDShapeRenderable)initWithShapeLayer:(id)layer;
- (double)lineDashPhase;
- (double)lineWidth;
- (double)miterLimit;
- (double)strokeEnd;
- (void)setCGLineCap:(int)cap;
- (void)setCGLineJoin:(int)join;
- (void)setFillColor:(CGColor *)color;
- (void)setLineCap:(id)cap;
- (void)setLineDashPattern:(id)pattern;
- (void)setLineDashPhase:(double)phase;
- (void)setLineJoin:(id)join;
- (void)setLineWidth:(double)width;
- (void)setMiterLimit:(double)limit;
- (void)setPath:(CGPath *)path;
- (void)setStrokeColor:(CGColor *)color;
- (void)setStrokeEnd:(double)end;
@end

@implementation TSDShapeRenderable

- (TSDShapeRenderable)initWithShapeLayer:(id)layer
{
  v4.receiver = self;
  v4.super_class = TSDShapeRenderable;
  return [(TSDRenderable *)&v4 initWithCALayer:layer];
}

+ (id)renderableFromShapeLayer:(id)layer
{
  layerCopy = layer;
  v5 = [[self alloc] initWithShapeLayer:layerCopy];

  return v5;
}

+ (id)renderable
{
  v2 = [self alloc];
  layer = [MEMORY[0x277CD9F90] layer];
  v4 = [v2 initWithShapeLayer:layer];

  return v4;
}

- (CAShapeLayer)shapeLayer
{
  v4.receiver = self;
  v4.super_class = TSDShapeRenderable;
  layer = [(TSDRenderable *)&v4 layer];

  return layer;
}

- (CGPath)path
{
  shapeLayer = [(TSDShapeRenderable *)self shapeLayer];
  path = [shapeLayer path];

  return path;
}

- (void)setPath:(CGPath *)path
{
  shapeLayer = [(TSDShapeRenderable *)self shapeLayer];
  [shapeLayer setPath:path];
}

- (CGColor)strokeColor
{
  shapeLayer = [(TSDShapeRenderable *)self shapeLayer];
  strokeColor = [shapeLayer strokeColor];

  return strokeColor;
}

- (void)setStrokeColor:(CGColor *)color
{
  shapeLayer = [(TSDShapeRenderable *)self shapeLayer];
  [shapeLayer setStrokeColor:color];
}

- (CGColor)fillColor
{
  shapeLayer = [(TSDShapeRenderable *)self shapeLayer];
  fillColor = [shapeLayer fillColor];

  return fillColor;
}

- (void)setFillColor:(CGColor *)color
{
  shapeLayer = [(TSDShapeRenderable *)self shapeLayer];
  [shapeLayer setFillColor:color];
}

- (double)lineWidth
{
  shapeLayer = [(TSDShapeRenderable *)self shapeLayer];
  [shapeLayer lineWidth];
  v4 = v3;

  return v4;
}

- (void)setLineWidth:(double)width
{
  shapeLayer = [(TSDShapeRenderable *)self shapeLayer];
  [shapeLayer setLineWidth:width];
}

- (NSArray)lineDashPattern
{
  shapeLayer = [(TSDShapeRenderable *)self shapeLayer];
  lineDashPattern = [shapeLayer lineDashPattern];

  return lineDashPattern;
}

- (void)setLineDashPattern:(id)pattern
{
  patternCopy = pattern;
  shapeLayer = [(TSDShapeRenderable *)self shapeLayer];
  [shapeLayer setLineDashPattern:patternCopy];
}

- (NSString)lineCap
{
  shapeLayer = [(TSDShapeRenderable *)self shapeLayer];
  lineCap = [shapeLayer lineCap];

  return lineCap;
}

- (void)setLineCap:(id)cap
{
  capCopy = cap;
  shapeLayer = [(TSDShapeRenderable *)self shapeLayer];
  [shapeLayer setLineCap:capCopy];
}

- (double)lineDashPhase
{
  shapeLayer = [(TSDShapeRenderable *)self shapeLayer];
  [shapeLayer lineDashPhase];
  v4 = v3;

  return v4;
}

- (void)setLineDashPhase:(double)phase
{
  shapeLayer = [(TSDShapeRenderable *)self shapeLayer];
  [shapeLayer setLineDashPhase:phase];
}

- (NSString)lineJoin
{
  shapeLayer = [(TSDShapeRenderable *)self shapeLayer];
  lineJoin = [shapeLayer lineJoin];

  return lineJoin;
}

- (void)setLineJoin:(id)join
{
  joinCopy = join;
  shapeLayer = [(TSDShapeRenderable *)self shapeLayer];
  [shapeLayer setLineJoin:joinCopy];
}

- (double)miterLimit
{
  shapeLayer = [(TSDShapeRenderable *)self shapeLayer];
  [shapeLayer miterLimit];
  v4 = v3;

  return v4;
}

- (void)setMiterLimit:(double)limit
{
  shapeLayer = [(TSDShapeRenderable *)self shapeLayer];
  [shapeLayer setMiterLimit:limit];
}

- (double)strokeEnd
{
  shapeLayer = [(TSDShapeRenderable *)self shapeLayer];
  [shapeLayer strokeEnd];
  v4 = v3;

  return v4;
}

- (void)setStrokeEnd:(double)end
{
  shapeLayer = [(TSDShapeRenderable *)self shapeLayer];
  [shapeLayer setStrokeEnd:end];
}

- (void)setCGLineCap:(int)cap
{
  v3 = @"butt";
  if (cap == 1)
  {
    v3 = @"round";
  }

  if (cap == 2)
  {
    v4 = @"square";
  }

  else
  {
    v4 = v3;
  }

  [(TSDShapeRenderable *)self setLineCap:v4];
}

- (void)setCGLineJoin:(int)join
{
  v3 = @"miter";
  if (join == 1)
  {
    v3 = @"round";
  }

  if (join == 2)
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