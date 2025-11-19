@interface GQDShape
- (BOOL)isBlank;
- (BOOL)isRectangularAndAxisAlignedToAngle:(float)a3;
- (CGPath)createBezierPath;
- (GQDShape)initWithGraphic:(id)a3 path:(id)a4 geometry:(id)a5;
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

- (BOOL)isRectangularAndAxisAlignedToAngle:(float)a3
{
  if (!self->mPath)
  {
    return 0;
  }

  mGeometry = self->super.super.mGeometry;
  if (mGeometry)
  {
    [(GQDAffineGeometry *)mGeometry angle];
    if (v6 != llround(v6) || fabsf((llroundf(v6 - a3) % 90)) >= 0.1)
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
  v4 = [(GQDPath *)self->mPath createBezierPath];
  memset(&v10, 0, sizeof(v10));
  [(GQDAffineGeometry *)self->super.super.mGeometry position];
  v6 = v5;
  [(GQDAffineGeometry *)self->super.super.mGeometry position];
  CGAffineTransformMakeTranslation(&v10, v6, v7);
  v9[0] = Mutable;
  v9[1] = &v10;
  CGPathApply(v4, v9, sub_DC04);
  CFRelease(v4);
  return Mutable;
}

- (GQDShape)initWithGraphic:(id)a3 path:(id)a4 geometry:(id)a5
{
  v8 = [(GQDShape *)self init];
  if (v8)
  {
    v8->super.mGraphicStyle = *(a3 + 9);
    v8->super.super.mWrapPath = *(a3 + 4);
    v8->super.super.mWrapGeometry = *(a3 + 5);
    v9 = *(a3 + 2);
    v8->super.super.mUrl = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    v8->super.super.mUid = xmlStrdup(*(a3 + 3));
    v8->super.super.mInnerWrapPoints = 0;
    v8->super.super.mHasPagesOrder = *(a3 + 56);
    v8->super.super.mPagesOrder = *(a3 + 8);
    v8->mPath = a4;
    v8->super.super.mGeometry = a5;
  }

  return v8;
}

@end