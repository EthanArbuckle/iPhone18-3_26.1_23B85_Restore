@interface GQDShape
- (BOOL)isBlank;
- (BOOL)isRectangularAndAxisAlignedToAngle:(float)angle;
- (CGPath)createBezierPath;
- (GQDShape)initWithGraphic:(id)graphic path:(id)path geometry:(id)geometry;
- (void)dealloc;
@end

@implementation GQDShape

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDShape;
  [(GQDGraphic *)&v3 dealloc];
}

- (BOOL)isBlank
{
  mLayoutFrame = self->mLayoutFrame;
  if (mLayoutFrame)
  {
    return [(GQDWPLayoutFrame *)mLayoutFrame isBlank];
  }

  else
  {
    return 1;
  }
}

- (BOOL)isRectangularAndAxisAlignedToAngle:(float)angle
{
  if (!self->mPath)
  {
    return 0;
  }

  mGeometry = self->super.super.mGeometry;
  if (mGeometry)
  {
    [(GQDAffineGeometry *)mGeometry angle];
    if (v6 != llround(v6) || fabsf((llroundf(v6 - angle) % 90)) >= 0.1)
    {
      return 0;
    }

    mPath = self->mPath;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v8 = self->mPath;

  return [(GQDPath *)v8 isRectangular];
}

- (CGPath)createBezierPath
{
  Mutable = CGPathCreateMutable();
  createBezierPath = [(GQDPath *)self->mPath createBezierPath];
  memset(&v10, 0, sizeof(v10));
  [(GQDAffineGeometry *)self->super.super.mGeometry position];
  v6 = v5;
  [(GQDAffineGeometry *)self->super.super.mGeometry position];
  CGAffineTransformMakeTranslation(&v10, v6, v7);
  v9[0] = Mutable;
  v9[1] = &v10;
  CGPathApply(createBezierPath, v9, sub_DC04);
  CFRelease(createBezierPath);
  return Mutable;
}

- (GQDShape)initWithGraphic:(id)graphic path:(id)path geometry:(id)geometry
{
  v8 = [(GQDShape *)self init];
  if (v8)
  {
    v8->super.mGraphicStyle = *(graphic + 9);
    v8->super.super.mWrapPath = *(graphic + 4);
    v8->super.super.mWrapGeometry = *(graphic + 5);
    v9 = *(graphic + 2);
    v8->super.super.mUrl = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    v8->super.super.mUid = xmlStrdup(*(graphic + 3));
    v8->super.super.mInnerWrapPoints = 0;
    v8->super.super.mHasPagesOrder = *(graphic + 56);
    v8->super.super.mPagesOrder = *(graphic + 8);
    v8->mPath = path;
    v8->super.super.mGeometry = geometry;
  }

  return v8;
}

@end