@interface TSDInfoGeometry
+ (id)geometryFromFullTransform:(CGAffineTransform *)a3;
+ (id)geometryFromFullTransform:(CGAffineTransform *)a3 widthValid:(BOOL)a4 heightValid:(BOOL)a5;
+ (id)geometryFromTransform:(CGAffineTransform *)a3 withSize:(CGSize)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualExceptForPosition:(id)a3;
- (CGAffineTransform)fullTransform;
- (CGAffineTransform)transform;
- (CGAffineTransform)transformBasedOnPoint:(SEL)a3 centeredAtPoint:(CGPoint)a4;
- (CGAffineTransform)transformBasedOnPoint:(SEL)a3 centeredAtPoint:(CGPoint)a4 withFlips:(CGPoint)a5;
- (CGAffineTransform)transformBasedOnRect:(SEL)a3;
- (CGAffineTransform)transformWithoutFlips;
- (CGPoint)center;
- (CGPoint)position;
- (CGRect)boundsBeforeRotation;
- (CGRect)transformedBounds;
- (CGSize)size;
- (TSDInfoGeometry)geometryWithNewBounds:(CGRect)a3;
- (TSDInfoGeometry)geometryWithParentGeometry:(id)a3;
- (TSDInfoGeometry)initWithFullTransform:(CGAffineTransform *)a3 widthValid:(BOOL)a4 heightValid:(BOOL)a5;
- (TSDInfoGeometry)initWithPosition:(CGPoint)a3 size:(CGSize)a4 widthValid:(BOOL)a5 heightValid:(BOOL)a6 horizontalFlip:(BOOL)a7 verticalFlip:(BOOL)a8 angle:(double)a9;
- (TSDInfoGeometry)initWithTransform:(CGAffineTransform *)a3 size:(CGSize)a4;
- (TSDInfoGeometry)initWithTransformedBoundsOrigin:(CGPoint)a3 size:(CGSize)a4 horizontalFlip:(BOOL)a5 verticalFlip:(BOOL)a6 angle:(double)a7;
- (id)description;
- (id)geometryByAppendingGeometry:(id)a3;
- (id)geometryByAppendingTransform:(CGAffineTransform *)a3;
- (id)geometryRelativeToGeometry:(id)a3;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)normalizedGeometry;
- (int64_t)mixingTypeWithObject:(id)a3;
- (unint64_t)hash;
@end

@implementation TSDInfoGeometry

- (TSDInfoGeometry)initWithPosition:(CGPoint)a3 size:(CGSize)a4 widthValid:(BOOL)a5 heightValid:(BOOL)a6 horizontalFlip:(BOOL)a7 verticalFlip:(BOOL)a8 angle:(double)a9
{
  v9 = a8;
  v10 = a7;
  v11 = a6;
  height = a4.height;
  width = a4.width;
  y = a3.y;
  x = a3.x;
  v25.receiver = self;
  v25.super_class = TSDInfoGeometry;
  v18 = [(TSDInfoGeometry *)&v25 init];
  v19 = v18;
  if (v18)
  {
    v18->mPosition.x = x;
    v18->mPosition.y = y;
    v18->mSize.width = width;
    v18->mSize.height = height;
    if (v11)
    {
      v20 = 2;
    }

    else
    {
      v20 = 0;
    }

    if (v10)
    {
      v21 = 4;
    }

    else
    {
      v21 = 0;
    }

    if (v9)
    {
      v22 = 8;
    }

    else
    {
      v22 = 0;
    }

    *&v18->mFlags = v20 | a5 | v21 | v22 | *&v18->mFlags & 0xF0;
    TSDNormalizeAngleInDegrees(a9);
    v19->mAngle = v23;
  }

  return v19;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSDMutableInfoGeometry alloc];
  mFlags = self->mFlags;
  mAngle = self->mAngle;
  x = self->mPosition.x;
  y = self->mPosition.y;
  width = self->mSize.width;
  height = self->mSize.height;

  return [(TSDInfoGeometry *)v4 initWithPosition:*&mFlags & 1 size:(*&mFlags >> 1) & 1 widthValid:(*&mFlags >> 2) & 1 heightValid:(*&mFlags >> 3) & 1 horizontalFlip:x verticalFlip:y angle:width, height, mAngle];
}

- (TSDInfoGeometry)initWithTransformedBoundsOrigin:(CGPoint)a3 size:(CGSize)a4 horizontalFlip:(BOOL)a5 verticalFlip:(BOOL)a6 angle:(double)a7
{
  y = a3.y;
  x = a3.x;
  v9 = [(TSDInfoGeometry *)self initWithPosition:1 size:1 widthValid:a5 heightValid:a6 horizontalFlip:*MEMORY[0x277CBF348] verticalFlip:*(MEMORY[0x277CBF348] + 8) angle:a4.width, a4.height, a7];
  v10 = v9;
  if (v9)
  {
    [(TSDInfoGeometry *)v9 transformedBoundsOrigin];
    v12 = TSDSubtractPoints(v10->mPosition.x, v10->mPosition.y, v11);
    v10->mPosition.x = TSDAddPoints(x, y, v12);
    v10->mPosition.y = v13;
  }

  return v10;
}

- (CGRect)boundsBeforeRotation
{
  [(TSDInfoGeometry *)self position];
  v4 = v3;
  v6 = v5;
  v7 = [(TSDInfoGeometry *)self size];
  v8.n128_u64[0] = v11.n128_u64[0];
  v10.n128_u64[0] = v9;
  v11.n128_u64[0] = v4;

  v12 = TSDRectWithOriginAndSize(v7, v11, v6, v8, v10);
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGPoint)center
{
  [(TSDInfoGeometry *)self boundsBeforeRotation];

  v6 = TSDCenterOfRect(v2, v3, v4, v5);
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGAffineTransform)transform
{
  result = [(TSDInfoGeometry *)self boundsBeforeRotation];
  if (self)
  {

    return [(TSDInfoGeometry *)self transformBasedOnRect:?];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (CGAffineTransform)transformBasedOnRect:(SEL)a3
{
  if (self)
  {
    y = a4.origin.y;
    x = a4.origin.x;
    v6 = self;
    v8 = TSDCenterOfRect(a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);

    return [(CGAffineTransform *)v6 transformBasedOnPoint:x centeredAtPoint:y, v8, v7];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return self;
}

- (CGAffineTransform)transformBasedOnPoint:(SEL)a3 centeredAtPoint:(CGPoint)a4
{
  if (self)
  {
    return [(CGAffineTransform *)self transformBasedOnPoint:1 centeredAtPoint:a4.x withFlips:a4.y, a5.x, a5.y];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return self;
}

- (CGAffineTransform)transformBasedOnPoint:(SEL)a3 centeredAtPoint:(CGPoint)a4 withFlips:(CGPoint)a5
{
  v6 = a6;
  y = a5.y;
  x = a5.x;
  v9 = a4.x;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  CGAffineTransformMakeTranslation(retstr, a4.x, a4.y);
  result = [(TSDInfoGeometry *)self angle];
  v14 = v13;
  if (v13 != 0.0 || v6 && ([(TSDInfoGeometry *)self horizontalFlip]|| (result = [(TSDInfoGeometry *)self verticalFlip], result)))
  {
    v15 = TSDSubtractPoints(x, y, v9);
    v17 = v16;
    v18 = *&retstr->c;
    *&v28.a = *&retstr->a;
    *&v28.c = v18;
    *&v28.tx = *&retstr->tx;
    CGAffineTransformTranslate(&v29, &v28, v15, v17);
    v19 = *&v29.c;
    *&retstr->a = *&v29.a;
    *&retstr->c = v19;
    *&retstr->tx = *&v29.tx;
    if (v14 != 0.0)
    {
      v20 = *&retstr->c;
      *&v28.a = *&retstr->a;
      *&v28.c = v20;
      *&v28.tx = *&retstr->tx;
      CGAffineTransformRotate(&v29, &v28, (v14 * -3.14159265 + v14 * -3.14159265) / 360.0);
      v21 = *&v29.c;
      *&retstr->a = *&v29.a;
      *&retstr->c = v21;
      *&retstr->tx = *&v29.tx;
    }

    if (v6)
    {
      if ([(TSDInfoGeometry *)self horizontalFlip])
      {
        v22 = *&retstr->c;
        *&v28.a = *&retstr->a;
        *&v28.c = v22;
        *&v28.tx = *&retstr->tx;
        CGAffineTransformScale(&v29, &v28, -1.0, 1.0);
        v23 = *&v29.c;
        *&retstr->a = *&v29.a;
        *&retstr->c = v23;
        *&retstr->tx = *&v29.tx;
      }

      if ([(TSDInfoGeometry *)self verticalFlip])
      {
        v24 = *&retstr->c;
        *&v28.a = *&retstr->a;
        *&v28.c = v24;
        *&v28.tx = *&retstr->tx;
        CGAffineTransformScale(&v29, &v28, 1.0, -1.0);
        v25 = *&v29.c;
        *&retstr->a = *&v29.a;
        *&retstr->c = v25;
        *&retstr->tx = *&v29.tx;
      }
    }

    v26 = *&retstr->c;
    *&v28.a = *&retstr->a;
    *&v28.c = v26;
    *&v28.tx = *&retstr->tx;
    result = CGAffineTransformTranslate(&v29, &v28, -v15, -v17);
    v27 = *&v29.c;
    *&retstr->a = *&v29.a;
    *&retstr->c = v27;
    *&retstr->tx = *&v29.tx;
  }

  return result;
}

- (CGAffineTransform)transformWithoutFlips
{
  result = [(TSDInfoGeometry *)self boundsBeforeRotation];
  if (self)
  {
    v10 = v6;
    v11 = v7;
    v13 = TSDCenterOfRect(v6, v7, v8, v9);

    return [(TSDInfoGeometry *)self transformBasedOnPoint:0 centeredAtPoint:v10 withFlips:v11, v13, v12];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (CGRect)transformedBounds
{
  [(TSDInfoGeometry *)self transform];
  v3.origin.x = TSDRectWithSize();
  return CGRectApplyAffineTransform(v3, &v2);
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    LOBYTE(v5) = 0;
    return v5;
  }

  if (a3 == self)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = TSDNearlyEqualPoints(self->mPosition.x, self->mPosition.y, *(a3 + 1), *(a3 + 2));
  if (v5)
  {
    v5 = TSDNearlyEqualSizes(self->mSize.width, self->mSize.height, *(a3 + 3), *(a3 + 4));
    if (v5)
    {
      if (((*(a3 + 40) ^ *&self->mFlags) & 0xF) == 0)
      {
        LOBYTE(v5) = vabdd_f64(self->mAngle, *(a3 + 6)) < 0.00999999978;
        return v5;
      }

LABEL_7:
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = self->mPosition.y + (41 * (self->mPosition.x + 41.0 + 1.0)) + (self->mPosition.x + 41.0 + 1.0);
  v3 = self->mSize.width + (41 * v2) + v2;
  v4 = self->mSize.height + (41 * v3) + v3;
  v5 = 131;
  if ((*&self->mFlags & 1) == 0)
  {
    v5 = 137;
  }

  v6 = v5 + v4 + 41 * v4;
  v7 = 139;
  if ((*&self->mFlags & 2) == 0)
  {
    v7 = 149;
  }

  v8 = v6 + v7 + 41 * v6;
  v9 = 151;
  if ((*&self->mFlags & 4) == 0)
  {
    v9 = 157;
  }

  v10 = v8 + v9 + 41 * v8;
  v11 = 163;
  if ((*&self->mFlags & 8) == 0)
  {
    v11 = 167;
  }

  return (self->mAngle + (41 * (v10 + v11 + 41 * v10)) + (v10 + v11 + 41 * v10));
}

- (BOOL)isEqualExceptForPosition:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  result = (objc_opt_isKindOfClass() & 1) != 0 && (self->mSize.width == *(a3 + 3) ? (v5 = self->mSize.height == *(a3 + 4)) : (v5 = 0), v5 && ((*(a3 + 40) ^ *&self->mFlags) & 0xF) == 0) && self->mAngle == *(a3 + 6);
  return result;
}

- (int64_t)mixingTypeWithObject:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__TSDInfoGeometry_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = a3;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, a3, v4);
}

uint64_t __40__TSDInfoGeometry_mixingTypeWithObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (!v2)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInfoGeometry mixingTypeWithObject:]_block_invoke"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInfoGeometry.m"), 345, @"nil object after cast"}];
  }

  v5 = [*(a1 + 40) horizontalFlip];
  if (v5 != [v2 horizontalFlip])
  {
    return 2;
  }

  v6 = [*(a1 + 40) verticalFlip];
  if (v6 != [v2 verticalFlip])
  {
    return 2;
  }

  if ([*(a1 + 40) isEqual:v2])
  {
    return 5;
  }

  return 4;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__TSDInfoGeometry_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = a4;
  v5[5] = self;
  *&v5[6] = a3;
  return TSDMixingMixedObjectWithFraction(self, a4, v5);
}

TSDInfoGeometry *__52__TSDInfoGeometry_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  v3 = [TSDInfoGeometry alloc];
  [*(a1 + 40) position];
  v5 = v4;
  v7 = v6;
  [v2 position];
  v10 = TSDMixPoints(v5, v7, v8, v9, *(a1 + 48));
  v12 = v11;
  [*(a1 + 40) size];
  v14 = v13;
  v16 = v15;
  [v2 size];
  v19 = TSDMixSizes(v14, v16, v17, v18, *(a1 + 48));
  v21 = v20;
  v22 = [*(a1 + 40) widthValid];
  v23 = [*(a1 + 40) heightValid];
  v24 = [*(a1 + 40) horizontalFlip];
  v25 = [*(a1 + 40) verticalFlip];
  [*(a1 + 40) angle];
  v27 = v26;
  [v2 angle];
  TSDMixAnglesInDegrees(v27, v28, *(a1 + 48));
  v30 = [(TSDInfoGeometry *)v3 initWithPosition:v22 size:v23 widthValid:v24 heightValid:v25 horizontalFlip:v10 verticalFlip:v12 angle:v19, v21, v29];

  return v30;
}

- (CGAffineTransform)fullTransform
{
  v7.n128_u64[1] = 0;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v4.n128_u64[0] = 0;
  v3.n128_u64[0] = 0;
  if (*&self->mFlags)
  {
    v3.n128_u64[0] = *&self->mSize.width;
  }

  if ((*&self->mFlags & 2) != 0)
  {
    v4.n128_u64[0] = *&self->mSize.height;
  }

  v7.n128_u64[0] = *&self->mPosition.x;
  [(TSDInfoGeometry *)self transformBasedOnRect:TSDRectWithOriginAndSize(self, v7, self->mPosition.y, v3, v4)];
  v8 = 1.0;
  v9 = 1.0;
  if ([(TSDInfoGeometry *)self widthValid])
  {
    [(TSDInfoGeometry *)self size];
    v9 = v10;
  }

  if ([(TSDInfoGeometry *)self heightValid])
  {
    [(TSDInfoGeometry *)self size];
    v8 = v11;
  }

  v12 = *&retstr->c;
  *&v15.a = *&retstr->a;
  *&v15.c = v12;
  *&v15.tx = *&retstr->tx;
  result = CGAffineTransformScale(&v16, &v15, v9, v8);
  v14 = *&v16.c;
  *&retstr->a = *&v16.a;
  *&retstr->c = v14;
  *&retstr->tx = *&v16.tx;
  return result;
}

+ (id)geometryFromFullTransform:(CGAffineTransform *)a3 widthValid:(BOOL)a4 heightValid:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [TSDInfoGeometry alloc];
  v9 = *&a3->c;
  v11[0] = *&a3->a;
  v11[1] = v9;
  v11[2] = *&a3->tx;
  return [(TSDInfoGeometry *)v8 initWithFullTransform:v11 widthValid:v6 heightValid:v5];
}

- (TSDInfoGeometry)initWithFullTransform:(CGAffineTransform *)a3 widthValid:(BOOL)a4 heightValid:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v31.receiver = self;
  v31.super_class = TSDInfoGeometry;
  v8 = [(TSDInfoGeometry *)&v31 init];
  if (v8)
  {
    v9 = v6;
    v10 = v5;
    v11 = *&a3->c;
    *&v30.a = *&a3->a;
    *&v30.c = v11;
    *&v30.tx = *&a3->tx;
    v12 = 0.0;
    v13 = 0;
    *&v11 = 0;
    v32 = CGRectApplyAffineTransform(*(&v9 - 2), &v30);
    v14 = 0.0;
    if (v6)
    {
      v14 = sqrt(a3->b * a3->b + a3->a * a3->a);
    }

    if (v5)
    {
      v12 = sqrt(a3->d * a3->d + a3->c * a3->c);
      LOBYTE(v5) = 2;
    }

    v8->mSize.width = v14;
    v8->mSize.height = v12;
    v15 = TSDCenterOfRect(v32.origin.x, v32.origin.y, v32.size.width, v32.size.height);
    v17 = TSDAddPoints(v15, v16, v14 * -0.5);
    v18 = MEMORY[0x277CBF348];
    v8->mPosition.x = v17;
    v8->mPosition.y = v19;
    v20 = TSDSubtractPoints(a3->tx + v18[1] * a3->c + a3->a * *v18, a3->ty + v18[1] * a3->d + a3->b * *v18, a3->tx + a3->c * 0.0 + a3->a * -1000.0);
    v22 = TSDAngleFromDelta(v20, v21) * -57.2957795;
    v8->mAngle = v22;
    v23 = v5 | v6;
    v24 = v5 | v6 | *&v8->mFlags & 0xFC;
    *&v8->mFlags = v23 | *&v8->mFlags & 0xFC;
    v25 = TSDCrossPoints(a3->a, a3->c, a3->b, a3->d);
    v26 = v25 <= 0.0;
    *&v8->mFlags = v24 & 0xF3 | (4 * (v25 > 0.0));
    v27 = v22 + -180.0;
    if (v26)
    {
      v27 = v22;
    }

    TSDNormalizeAngleInDegrees(v27);
    v8->mAngle = v28;
  }

  return v8;
}

- (TSDInfoGeometry)initWithTransform:(CGAffineTransform *)a3 size:(CGSize)a4
{
  v6 = a4.width > 0.001;
  if (a4.width <= 0.001)
  {
    a4.width = 1.0;
  }

  v7 = a4.height > 0.001;
  if (a4.height <= 0.001)
  {
    a4.height = 1.0;
  }

  v8 = *&a3->c;
  *&v12.a = *&a3->a;
  *&v12.c = v8;
  *&v12.tx = *&a3->tx;
  CGAffineTransformScale(&v13, &v12, a4.width, a4.height);
  v9 = *&v13.c;
  *&a3->a = *&v13.a;
  *&a3->c = v9;
  *&a3->tx = *&v13.tx;
  v10 = *&a3->c;
  *&v13.a = *&a3->a;
  *&v13.c = v10;
  *&v13.tx = *&a3->tx;
  return [(TSDInfoGeometry *)self initWithFullTransform:&v13 widthValid:v6 heightValid:v7];
}

+ (id)geometryFromFullTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->c;
  v5[0] = *&a3->a;
  v5[1] = v3;
  v5[2] = *&a3->tx;
  return [TSDInfoGeometry geometryFromFullTransform:v5 widthValid:1 heightValid:1];
}

+ (id)geometryFromTransform:(CGAffineTransform *)a3 withSize:(CGSize)a4
{
  v4 = *&a3->c;
  *&v6.a = *&a3->a;
  *&v6.c = v4;
  *&v6.tx = *&a3->tx;
  CGAffineTransformScale(&v7, &v6, a4.width, a4.height);
  return [TSDInfoGeometry geometryFromFullTransform:&v7];
}

- (id)geometryByAppendingTransform:(CGAffineTransform *)a3
{
  if (self)
  {
    [(TSDInfoGeometry *)self fullTransform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v5 = *&a3->c;
  *&v7.a = *&a3->a;
  *&v7.c = v5;
  *&v7.tx = *&a3->tx;
  CGAffineTransformConcat(&v9, &t1, &v7);
  return [TSDInfoGeometry geometryFromFullTransform:&v9 widthValid:[(TSDInfoGeometry *)self widthValid] heightValid:[(TSDInfoGeometry *)self heightValid]];
}

- (TSDInfoGeometry)geometryWithParentGeometry:(id)a3
{
  if (!self)
  {
    memset(&t1, 0, sizeof(t1));
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(&v6, 0, sizeof(v6));
    goto LABEL_6;
  }

  [(TSDInfoGeometry *)self fullTransform];
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  [a3 transform];
LABEL_6:
  CGAffineTransformConcat(&v8, &t1, &v6);
  return [TSDInfoGeometry geometryFromFullTransform:&v8 widthValid:[(TSDInfoGeometry *)self widthValid] heightValid:[(TSDInfoGeometry *)self heightValid]];
}

- (id)geometryByAppendingGeometry:(id)a3
{
  if (!a3)
  {
    memset(&t1, 0, sizeof(t1));
    if (self)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(&v6, 0, sizeof(v6));
    goto LABEL_6;
  }

  [a3 fullTransform];
  if (!self)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(TSDInfoGeometry *)self transform];
LABEL_6:
  CGAffineTransformConcat(&v8, &t1, &v6);
  return +[TSDInfoGeometry geometryFromFullTransform:widthValid:heightValid:](TSDInfoGeometry, "geometryFromFullTransform:widthValid:heightValid:", &v8, [a3 widthValid], objc_msgSend(a3, "heightValid"));
}

- (id)geometryRelativeToGeometry:(id)a3
{
  if (!self)
  {
    memset(&t1, 0, sizeof(t1));
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(&v8, 0, sizeof(v8));
    goto LABEL_6;
  }

  [(TSDInfoGeometry *)self fullTransform];
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  [a3 transform];
LABEL_6:
  CGAffineTransformInvert(&v6, &v8);
  CGAffineTransformConcat(&v8, &t1, &v6);
  return [TSDInfoGeometry geometryFromFullTransform:&v8 widthValid:[(TSDInfoGeometry *)self widthValid] heightValid:[(TSDInfoGeometry *)self heightValid]];
}

- (TSDInfoGeometry)geometryWithNewBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(TSDInfoGeometry *)self mutableCopy];
  [v8 setSize:{width, height}];
  [(TSDInfoGeometry *)self size];
  v10 = v9;
  [(TSDInfoGeometry *)self size];
  if (self)
  {
    [(TSDInfoGeometry *)self transform];
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  v11 = TSDCenterOfRect(x, y, width, height);
  v13 = TSDSubtractPoints(v11, v12, v10 * 0.5);
  v15 = TSDDeltaApplyAffineTransform(v20, v13, v14);
  v17 = v16;
  [(TSDInfoGeometry *)self center];
  [v8 setCenter:{TSDAddPoints(v15, v17, v18)}];
  return v8;
}

- (id)normalizedGeometry
{
  mAngle = self->mAngle;
  mFlags = self->mFlags;
  v5 = (*&mFlags >> 2) & 1;
  if ((*&mFlags & 8) != 0)
  {
    v5 = (*&mFlags & 4) == 0;
    TSDNormalizeAngleInDegrees(mAngle + 180.0);
    mAngle = v6;
  }

  v7 = [[TSDInfoGeometry alloc] initWithPosition:*&self->mFlags & 1 size:(*&self->mFlags >> 1) & 1 widthValid:v5 heightValid:0 horizontalFlip:self->mPosition.x verticalFlip:self->mPosition.y angle:self->mSize.width, self->mSize.height, mAngle];

  return v7;
}

- (id)description
{
  if (*&self->mFlags)
  {
    v3 = @"%g";
  }

  else
  {
    v3 = @"auto(%g)";
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:v3, *&self->mSize.width];
  if ((*&self->mFlags & 2) != 0)
  {
    v5 = @"%g";
  }

  else
  {
    v5 = @"auto(%g)";
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:v5, *&self->mSize.height];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%@, %@}", v4, v6];
  if (self->mAngle == 0.0)
  {
    v8 = &stru_287D36338;
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@" angle=%g", *&self->mAngle];
  }

  v9 = @" flip=h+v";
  if ((*&self->mFlags & 8) == 0)
  {
    v9 = @" flip=h";
  }

  v10 = @" flip=v";
  if ((*&self->mFlags & 8) == 0)
  {
    v10 = &stru_287D36338;
  }

  if ((*&self->mFlags & 4) != 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  return [v12 stringWithFormat:@"<%@ %p pos=%@ size=%@%@%@>", v14, self, NSStringFromCGPoint(self->mPosition), v7, v8, v11];
}

- (CGPoint)position
{
  x = self->mPosition.x;
  y = self->mPosition.y;
  result.y = y;
  result.x = x;
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

@end