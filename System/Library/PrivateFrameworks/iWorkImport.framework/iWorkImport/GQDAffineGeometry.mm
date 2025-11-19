@interface GQDAffineGeometry
+ (CGRect)boundsOfTransformedRect:(CGRect)a3 transform:(id)a4;
+ (void)transformRect:(CGRect)a3 transform:(id)a4 upperLeft:(CGPoint *)a5 lowerLeft:(CGPoint *)a6 lowerRight:(CGPoint *)a7 upperRight:(CGPoint *)a8;
- (CGAffineTransform)transform;
- (CGAffineTransform)transformHasVFlip:(SEL)a3 vFlip:(BOOL)a4 hasHFlip:(BOOL)a5 hFlip:(BOOL)a6;
- (CGPoint)nonrotatedPosition;
- (CGPoint)position;
- (CGRect)naturalBounds;
- (CGSize)naturalSize;
- (CGSize)size;
- (CGSize)sizeOfBoundingBox;
- (int)readAttributesFromReader:(_xmlTextReader *)a3;
@end

@implementation GQDAffineGeometry

- (int)readAttributesFromReader:(_xmlTextReader *)a3
{
  sub_4290C(a3, qword_A35E8, "angle");
  *&v5 = v5;
  self->mAngle = *&v5;
  sub_4290C(a3, qword_A35E8, "shearXAngle");
  *&v6 = v6;
  self->mShearXAngle = *&v6;
  sub_4290C(a3, qword_A35E8, "shearYAngle");
  *&v7 = v7;
  self->mShearYAngle = *&v7;
  self->mSizesLocked = sub_42340(a3, qword_A35E8, "sizesLocked", 0);
  self->mAspectRatioLocked = sub_42340(a3, qword_A35E8, "aspectRatioLocked", 0);
  self->mHorizontalFlip = sub_42340(a3, qword_A35E8, "horizontalFlip", 0);
  self->mVerticalFlip = sub_42340(a3, qword_A35E8, "verticalFlip", 0);
  return 1;
}

- (CGSize)naturalSize
{
  width = self->mNaturalSize.width;
  height = self->mNaturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)size
{
  width = self->mSize.width;
  height = self->mSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)position
{
  x = self->mPosition.x;
  y = self->mPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)sizeOfBoundingBox
{
  [(GQDAffineGeometry *)self angle];
  v4 = fmod(v3, 180.0);
  if (v4 < 0.0)
  {
    v4 = v4 + 180.0;
  }

  if (v4 > 90.0)
  {
    v4 = 180.0 - v4;
  }

  v5 = __sincos_stret(v4 * 3.14159265 / 180.0);
  cosval = v5.__cosval;
  sinval = v5.__sinval;
  [(GQDAffineGeometry *)self size];
  v10 = v8 * sinval + v9 * cosval;
  v11 = v8 * cosval + v9 * sinval;
  v12 = v10;
  result.height = v11;
  result.width = v12;
  return result;
}

- (CGPoint)nonrotatedPosition
{
  [(GQDAffineGeometry *)self size];
  v4 = v3;
  v6 = v5;
  [(GQDAffineGeometry *)self sizeOfBoundingBox];
  v8 = v7;
  v10 = v9;
  [(GQDAffineGeometry *)self position];
  v12 = v11 + (v8 - v4) * 0.5;
  v14 = v13 + (v10 - v6) * 0.5;
  result.y = v14;
  result.x = v12;
  return result;
}

- (CGRect)naturalBounds
{
  width = self->mNaturalSize.width;
  height = self->mNaturalSize.height;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (void)transformRect:(CGRect)a3 transform:(id)a4 upperLeft:(CGPoint *)a5 lowerLeft:(CGPoint *)a6 lowerRight:(CGPoint *)a7 upperRight:(CGPoint *)a8
{
  x = a3.origin.x;
  y = a3.origin.y;
  v15 = a3.origin.x + a3.size.width;
  v16 = a3.origin.y + a3.size.height;
  a5->x = x;
  a5->y = y;
  v17 = v16;
  a6->x = x;
  a6->y = v17;
  v18 = v15;
  a7->x = v18;
  a7->y = v17;
  a8->x = v18;
  a8->y = y;
  [a4 transformPoint:{a5->x, a5->y}];
  a5->x = v19;
  a5->y = v20;
  [a4 transformPoint:{a6->x, a6->y}];
  a6->x = v21;
  a6->y = v22;
  [a4 transformPoint:{a7->x, a7->y}];
  a7->x = v23;
  a7->y = v24;
  [a4 transformPoint:{a8->x, a8->y}];
  a8->x = v25;
  a8->y = v26;
}

+ (CGRect)boundsOfTransformedRect:(CGRect)a3 transform:(id)a4
{
  [a1 transformRect:a4 transform:&v23 upperLeft:&v21 lowerLeft:&v19 lowerRight:&v17 upperRight:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  v4 = v19;
  v5 = v20;
  if (v19 >= v17)
  {
    v6 = v17;
  }

  else
  {
    v6 = v19;
  }

  if (v19 < v17)
  {
    v4 = v17;
  }

  if (v21 < v6)
  {
    v6 = v21;
  }

  if (v23 < v6)
  {
    v6 = v23;
  }

  if (v21 >= v4)
  {
    v4 = v21;
  }

  v7 = v6;
  if (v23 >= v4)
  {
    v4 = v23;
  }

  v8 = v4;
  if (v20 >= v18)
  {
    v9 = v18;
  }

  else
  {
    v9 = v20;
  }

  if (v20 < v18)
  {
    v5 = v18;
  }

  if (v22 < v9)
  {
    v9 = v22;
  }

  if (v24 < v9)
  {
    v9 = v24;
  }

  v10 = v9;
  if (v22 >= v5)
  {
    v11 = v22;
  }

  else
  {
    v11 = v5;
  }

  if (v24 >= v11)
  {
    v11 = v24;
  }

  v12 = v11;
  v13 = v7;
  v14 = v10;
  v15 = (v8 - v7);
  v16 = (v12 - v10);
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGAffineTransform)transform
{
  if (self)
  {
    return [(CGAffineTransform *)self transformHasVFlip:0 vFlip:0 hasHFlip:0 hFlip:0];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return self;
}

- (CGAffineTransform)transformHasVFlip:(SEL)a3 vFlip:(BOOL)a4 hasHFlip:(BOOL)a5 hFlip:(BOOL)a6
{
  v7 = a5;
  v8 = a4;
  mHorizontalFlip = self->mHorizontalFlip;
  v12 = a6 && a7;
  mVerticalFlip = self->mVerticalFlip;
  v14 = objc_alloc_init(NSAffineTransform);
  [v14 rotateByDegrees:-self->mAngle];
  v15 = objc_alloc_init(NSAffineTransform);
  v16 = v15;
  v38 = 0u;
  memset(v37, 0, sizeof(v37));
  if (v15)
  {
    [v15 transformStruct];
  }

  v17 = v8 && v7;
  __x = vdivq_f64(vmulq_f64(vcvtq_f64_f32(*&self->mShearXAngle), vdupq_n_s64(0x400921FB54442D18uLL)), vdupq_n_s64(0x4066800000000000uLL));
  v33 = tan(__x.f64[1]);
  v18.f64[0] = tan(__x.f64[0]);
  v18.f64[1] = v33;
  *(v37 + 8) = vnegq_f64(v18);
  v34 = v37[0];
  v35 = v37[1];
  v36 = v38;
  [v16 setTransformStruct:&v34];
  [v14 prependTransform:v16];

  if (mHorizontalFlip != v12)
  {
    [v14 scaleXBy:-1.0 yBy:1.0];
  }

  if (mVerticalFlip != v17)
  {
    [v14 scaleXBy:1.0 yBy:-1.0];
  }

  if (!self->mSizesLocked)
  {
    width = self->mNaturalSize.width;
    v20 = 1.0;
    v21 = 1.0;
    if (width != 0.0)
    {
      v22 = self->mSize.width / width;
      v21 = v22;
    }

    height = self->mNaturalSize.height;
    if (height != 0.0)
    {
      v24 = self->mSize.height / height;
      v20 = v24;
    }

    [v14 scaleXBy:v21 yBy:{v20, *&__x.f64[0]}];
  }

  [(GQDAffineGeometry *)self naturalBounds];
  [GQDAffineGeometry boundsOfTransformedRect:v14 transform:?];
  v26 = v25;
  v28 = v27;
  v29 = objc_alloc_init(NSAffineTransform);
  [v29 translateXBy:self->mPosition.x - v26 yBy:self->mPosition.y - v28];
  [v14 appendTransform:v29];

  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  if (v14)
  {
    [v14 transformStruct];
  }

  v31 = v35;
  *&retstr->a = v34;
  *&retstr->c = v31;
  *&retstr->tx = v36;
  return result;
}

@end