@interface PKExtendedPhysicsBody
+ (id)bodyWithBodies:(id)bodies;
+ (id)bodyWithCircleOfRadius:(double)radius;
+ (id)bodyWithEdgeChainFromPath:(CGPath *)path;
+ (id)bodyWithEdgeFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint;
+ (id)bodyWithEdgeLoopFromPath:(CGPath *)path;
+ (id)bodyWithEllipseInRect:(CGRect)rect;
+ (id)bodyWithPolygonFromPath:(CGPath *)path;
+ (id)bodyWithRectangleOfSize:(CGSize)size;
+ (id)bodyWithRectangleOfSize:(CGSize)size center:(CGPoint)center;
- (BOOL)dissociate;
- (PKExtendedPhysicsBody)init;
- (PKExtendedPhysicsBody)initWithRectangleOfSize:(CGSize)size;
- (double)normalizedDensity;
- (id)description;
- (void)setNormalizedDensity:(double)density;
@end

@implementation PKExtendedPhysicsBody

+ (id)bodyWithEllipseInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = CGRectGetWidth(rect) * -0.5;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v8 = CGRectGetHeight(v14) * -0.5;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v9 = CGRectGetWidth(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v17.size.height = CGRectGetHeight(v16);
  v17.origin.x = v7;
  v17.origin.y = v8;
  v17.size.width = v9;
  v10 = CGPathCreateWithEllipseInRect(v17, 0);
  v11 = [[PKExtendedPhysicsBody alloc] initWithPolygonFromPath:v10];
  CGPathRelease(v10);

  return v11;
}

+ (id)bodyWithCircleOfRadius:(double)radius
{
  v3 = [[PKExtendedPhysicsBody alloc] initWithCircleOfRadius:radius];

  return v3;
}

+ (id)bodyWithRectangleOfSize:(CGSize)size
{
  v3 = [[PKExtendedPhysicsBody alloc] initWithRectangleOfSize:size.width, size.height];

  return v3;
}

+ (id)bodyWithRectangleOfSize:(CGSize)size center:(CGPoint)center
{
  v4 = [[PKExtendedPhysicsBody alloc] initWithRectangleOfSize:size.width center:size.height, center.x, center.y];

  return v4;
}

+ (id)bodyWithEdgeFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint
{
  v4 = [[PKExtendedPhysicsBody alloc] initWithEdgeFromPoint:point.x toPoint:point.y, toPoint.x, toPoint.y];

  return v4;
}

+ (id)bodyWithPolygonFromPath:(CGPath *)path
{
  v3 = [[PKExtendedPhysicsBody alloc] initWithPolygonFromPath:path];

  return v3;
}

+ (id)bodyWithEdgeChainFromPath:(CGPath *)path
{
  v3 = [[PKExtendedPhysicsBody alloc] initWithEdgeChainFromPath:path];

  return v3;
}

+ (id)bodyWithEdgeLoopFromPath:(CGPath *)path
{
  v3 = [[PKExtendedPhysicsBody alloc] initWithEdgeLoopFromPath:path];

  return v3;
}

+ (id)bodyWithBodies:(id)bodies
{
  bodiesCopy = bodies;
  v4 = [[PKExtendedPhysicsBody alloc] initWithBodies:bodiesCopy];

  return v4;
}

- (PKExtendedPhysicsBody)init
{
  v5.receiver = self;
  v5.super_class = PKExtendedPhysicsBody;
  v2 = [(PKExtendedPhysicsBody *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PKExtendedPhysicsBody *)v2 setNormalizedDensity:1.0];
    [(PKExtendedPhysicsBody *)v3 set_allowSleep:1];
  }

  return v3;
}

- (void)setNormalizedDensity:(double)density
{
  areaFactor = self->_areaFactor;
  if (areaFactor != 0.0)
  {
    density = areaFactor * density;
  }

  [(PKExtendedPhysicsBody *)self setDensity:density];
}

- (double)normalizedDensity
{
  areaFactor = self->_areaFactor;
  [(PKExtendedPhysicsBody *)self density];
  if (areaFactor != 0.0)
  {
    return result / self->_areaFactor;
  }

  return result;
}

- (PKExtendedPhysicsBody)initWithRectangleOfSize:(CGSize)size
{
  width = size.width;
  height = size.height;
  PKGet_INV_PTM_RATIO();
  *&v5 = 0.02 / v4;
  v6.f64[0] = width;
  v6.f64[1] = height;
  v7 = vcgtq_f64(v6, vdupq_lane_s64(COERCE__INT64(*&v5 + 1.0), 0));
  v8 = vsubq_f64(v6, vdupq_lane_s64(v5, 0));
  __asm { FMOV            V3.2D, #0.5 }

  v14 = vmulq_f64(v6, _Q3);
  v15 = vbslq_s8(v7, v8, vbslq_s8(vcgtq_f64(v14, v8), v14, v8));
  self->_areaFactor = width * height / vmuld_lane_f64(v15.f64[0], v15, 1);
  v19.receiver = self;
  v19.super_class = PKExtendedPhysicsBody;
  return [(PKExtendedPhysicsBody *)&v19 initWithRectangleOfSize:?];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  [(PKExtendedPhysicsBody *)self position];
  v5 = v4;
  [(PKExtendedPhysicsBody *)self position];
  [string appendFormat:@" PO:(%f, %f)", v5, v6];
  [(PKExtendedPhysicsBody *)self rotation];
  [string appendFormat:@" AN:(%f)", v7];
  [(PKExtendedPhysicsBody *)self velocity];
  v9 = v8;
  [(PKExtendedPhysicsBody *)self velocity];
  [string appendFormat:@" VE:(%f, %f)", v9, v10];
  [(PKExtendedPhysicsBody *)self angularVelocity];
  [string appendFormat:@" AV:(%f)", v11];
  [string appendFormat:@" dy:(%d)", -[PKExtendedPhysicsBody isDynamic](self, "isDynamic")];
  [string appendFormat:@" cc:(%d)", -[PKExtendedPhysicsBody usesPreciseCollisionDetection](self, "usesPreciseCollisionDetection")];
  [string appendFormat:@" ar:(%d)", -[PKExtendedPhysicsBody allowsRotation](self, "allowsRotation")];
  [string appendFormat:@" rs:(%d)", -[PKExtendedPhysicsBody isResting](self, "isResting")];
  [(PKExtendedPhysicsBody *)self friction];
  [string appendFormat:@" fr:(%f)", v12];
  [(PKExtendedPhysicsBody *)self restitution];
  [string appendFormat:@" re:(%f)", v13];
  [(PKExtendedPhysicsBody *)self density];
  [string appendFormat:@" de:(%f)", v14];
  [string appendFormat:@" gr:(%d)", -[PKExtendedPhysicsBody affectedByGravity](self, "affectedByGravity")];
  v15 = MEMORY[0x1E696AEC0];
  v19.receiver = self;
  v19.super_class = PKExtendedPhysicsBody;
  v16 = [(PKExtendedPhysicsBody *)&v19 description];
  v17 = [v15 stringWithFormat:@"%@ %p %@", v16, self, string];

  return v17;
}

- (BOOL)dissociate
{
  v2 = self->_associations - 1;
  self->_associations = v2;
  return v2 == 0;
}

@end