@interface PKExtendedPhysicsBody
+ (id)bodyWithBodies:(id)a3;
+ (id)bodyWithCircleOfRadius:(double)a3;
+ (id)bodyWithEdgeChainFromPath:(CGPath *)a3;
+ (id)bodyWithEdgeFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4;
+ (id)bodyWithEdgeLoopFromPath:(CGPath *)a3;
+ (id)bodyWithEllipseInRect:(CGRect)a3;
+ (id)bodyWithPolygonFromPath:(CGPath *)a3;
+ (id)bodyWithRectangleOfSize:(CGSize)a3;
+ (id)bodyWithRectangleOfSize:(CGSize)a3 center:(CGPoint)a4;
- (BOOL)dissociate;
- (PKExtendedPhysicsBody)init;
- (PKExtendedPhysicsBody)initWithRectangleOfSize:(CGSize)a3;
- (double)normalizedDensity;
- (id)description;
- (void)setNormalizedDensity:(double)a3;
@end

@implementation PKExtendedPhysicsBody

+ (id)bodyWithEllipseInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = CGRectGetWidth(a3) * -0.5;
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

+ (id)bodyWithCircleOfRadius:(double)a3
{
  v3 = [[PKExtendedPhysicsBody alloc] initWithCircleOfRadius:a3];

  return v3;
}

+ (id)bodyWithRectangleOfSize:(CGSize)a3
{
  v3 = [[PKExtendedPhysicsBody alloc] initWithRectangleOfSize:a3.width, a3.height];

  return v3;
}

+ (id)bodyWithRectangleOfSize:(CGSize)a3 center:(CGPoint)a4
{
  v4 = [[PKExtendedPhysicsBody alloc] initWithRectangleOfSize:a3.width center:a3.height, a4.x, a4.y];

  return v4;
}

+ (id)bodyWithEdgeFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4
{
  v4 = [[PKExtendedPhysicsBody alloc] initWithEdgeFromPoint:a3.x toPoint:a3.y, a4.x, a4.y];

  return v4;
}

+ (id)bodyWithPolygonFromPath:(CGPath *)a3
{
  v3 = [[PKExtendedPhysicsBody alloc] initWithPolygonFromPath:a3];

  return v3;
}

+ (id)bodyWithEdgeChainFromPath:(CGPath *)a3
{
  v3 = [[PKExtendedPhysicsBody alloc] initWithEdgeChainFromPath:a3];

  return v3;
}

+ (id)bodyWithEdgeLoopFromPath:(CGPath *)a3
{
  v3 = [[PKExtendedPhysicsBody alloc] initWithEdgeLoopFromPath:a3];

  return v3;
}

+ (id)bodyWithBodies:(id)a3
{
  v3 = a3;
  v4 = [[PKExtendedPhysicsBody alloc] initWithBodies:v3];

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

- (void)setNormalizedDensity:(double)a3
{
  areaFactor = self->_areaFactor;
  if (areaFactor != 0.0)
  {
    a3 = areaFactor * a3;
  }

  [(PKExtendedPhysicsBody *)self setDensity:a3];
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

- (PKExtendedPhysicsBody)initWithRectangleOfSize:(CGSize)a3
{
  width = a3.width;
  height = a3.height;
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
  v3 = [MEMORY[0x1E696AD60] string];
  [(PKExtendedPhysicsBody *)self position];
  v5 = v4;
  [(PKExtendedPhysicsBody *)self position];
  [v3 appendFormat:@" PO:(%f, %f)", v5, v6];
  [(PKExtendedPhysicsBody *)self rotation];
  [v3 appendFormat:@" AN:(%f)", v7];
  [(PKExtendedPhysicsBody *)self velocity];
  v9 = v8;
  [(PKExtendedPhysicsBody *)self velocity];
  [v3 appendFormat:@" VE:(%f, %f)", v9, v10];
  [(PKExtendedPhysicsBody *)self angularVelocity];
  [v3 appendFormat:@" AV:(%f)", v11];
  [v3 appendFormat:@" dy:(%d)", -[PKExtendedPhysicsBody isDynamic](self, "isDynamic")];
  [v3 appendFormat:@" cc:(%d)", -[PKExtendedPhysicsBody usesPreciseCollisionDetection](self, "usesPreciseCollisionDetection")];
  [v3 appendFormat:@" ar:(%d)", -[PKExtendedPhysicsBody allowsRotation](self, "allowsRotation")];
  [v3 appendFormat:@" rs:(%d)", -[PKExtendedPhysicsBody isResting](self, "isResting")];
  [(PKExtendedPhysicsBody *)self friction];
  [v3 appendFormat:@" fr:(%f)", v12];
  [(PKExtendedPhysicsBody *)self restitution];
  [v3 appendFormat:@" re:(%f)", v13];
  [(PKExtendedPhysicsBody *)self density];
  [v3 appendFormat:@" de:(%f)", v14];
  [v3 appendFormat:@" gr:(%d)", -[PKExtendedPhysicsBody affectedByGravity](self, "affectedByGravity")];
  v15 = MEMORY[0x1E696AEC0];
  v19.receiver = self;
  v19.super_class = PKExtendedPhysicsBody;
  v16 = [(PKExtendedPhysicsBody *)&v19 description];
  v17 = [v15 stringWithFormat:@"%@ %p %@", v16, self, v3];

  return v17;
}

- (BOOL)dissociate
{
  v2 = self->_associations - 1;
  self->_associations = v2;
  return v2 == 0;
}

@end