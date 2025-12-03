@interface TSDInfoGeometry
+ (id)geometryFromFullTransform:(CGAffineTransform *)transform;
+ (id)geometryFromFullTransform:(CGAffineTransform *)transform widthValid:(BOOL)valid heightValid:(BOOL)heightValid;
+ (id)geometryFromTransform:(CGAffineTransform *)transform withSize:(CGSize)size;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualExceptForPosition:(id)position;
- (CGAffineTransform)fullTransform;
- (CGAffineTransform)transform;
- (CGAffineTransform)transformBasedOnPoint:(SEL)point centeredAtPoint:(CGPoint)atPoint;
- (CGAffineTransform)transformBasedOnPoint:(SEL)point centeredAtPoint:(CGPoint)atPoint withFlips:(CGPoint)flips;
- (CGAffineTransform)transformBasedOnRect:(SEL)rect;
- (CGAffineTransform)transformWithoutFlips;
- (CGPoint)center;
- (CGPoint)position;
- (CGRect)boundsBeforeRotation;
- (CGRect)transformedBounds;
- (CGSize)size;
- (TSDInfoGeometry)geometryWithNewBounds:(CGRect)bounds;
- (TSDInfoGeometry)geometryWithParentGeometry:(id)geometry;
- (TSDInfoGeometry)initWithFullTransform:(CGAffineTransform *)transform widthValid:(BOOL)valid heightValid:(BOOL)heightValid;
- (TSDInfoGeometry)initWithPosition:(CGPoint)position size:(CGSize)size widthValid:(BOOL)valid heightValid:(BOOL)heightValid horizontalFlip:(BOOL)flip verticalFlip:(BOOL)verticalFlip angle:(double)angle;
- (TSDInfoGeometry)initWithTransform:(CGAffineTransform *)transform size:(CGSize)size;
- (TSDInfoGeometry)initWithTransformedBoundsOrigin:(CGPoint)origin size:(CGSize)size horizontalFlip:(BOOL)flip verticalFlip:(BOOL)verticalFlip angle:(double)angle;
- (id)description;
- (id)geometryByAppendingGeometry:(id)geometry;
- (id)geometryByAppendingTransform:(CGAffineTransform *)transform;
- (id)geometryRelativeToGeometry:(id)geometry;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)normalizedGeometry;
- (int64_t)mixingTypeWithObject:(id)object;
- (unint64_t)hash;
@end

@implementation TSDInfoGeometry

- (TSDInfoGeometry)initWithPosition:(CGPoint)position size:(CGSize)size widthValid:(BOOL)valid heightValid:(BOOL)heightValid horizontalFlip:(BOOL)flip verticalFlip:(BOOL)verticalFlip angle:(double)angle
{
  verticalFlipCopy = verticalFlip;
  flipCopy = flip;
  heightValidCopy = heightValid;
  height = size.height;
  width = size.width;
  y = position.y;
  x = position.x;
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
    if (heightValidCopy)
    {
      v20 = 2;
    }

    else
    {
      v20 = 0;
    }

    if (flipCopy)
    {
      v21 = 4;
    }

    else
    {
      v21 = 0;
    }

    if (verticalFlipCopy)
    {
      v22 = 8;
    }

    else
    {
      v22 = 0;
    }

    *&v18->mFlags = v20 | valid | v21 | v22 | *&v18->mFlags & 0xF0;
    TSDNormalizeAngleInDegrees(angle);
    v19->mAngle = v23;
  }

  return v19;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
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

- (TSDInfoGeometry)initWithTransformedBoundsOrigin:(CGPoint)origin size:(CGSize)size horizontalFlip:(BOOL)flip verticalFlip:(BOOL)verticalFlip angle:(double)angle
{
  y = origin.y;
  x = origin.x;
  angle = [(TSDInfoGeometry *)self initWithPosition:1 size:1 widthValid:flip heightValid:verticalFlip horizontalFlip:*MEMORY[0x277CBF348] verticalFlip:*(MEMORY[0x277CBF348] + 8) angle:size.width, size.height, angle];
  v10 = angle;
  if (angle)
  {
    [(TSDInfoGeometry *)angle transformedBoundsOrigin];
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

- (CGAffineTransform)transformBasedOnRect:(SEL)rect
{
  if (self)
  {
    y = a4.origin.y;
    x = a4.origin.x;
    selfCopy = self;
    v8 = TSDCenterOfRect(a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);

    return [(CGAffineTransform *)selfCopy transformBasedOnPoint:x centeredAtPoint:y, v8, v7];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return self;
}

- (CGAffineTransform)transformBasedOnPoint:(SEL)point centeredAtPoint:(CGPoint)atPoint
{
  if (self)
  {
    return [(CGAffineTransform *)self transformBasedOnPoint:1 centeredAtPoint:atPoint.x withFlips:atPoint.y, a5.x, a5.y];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return self;
}

- (CGAffineTransform)transformBasedOnPoint:(SEL)point centeredAtPoint:(CGPoint)atPoint withFlips:(CGPoint)flips
{
  v6 = a6;
  y = flips.y;
  x = flips.x;
  v9 = atPoint.x;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  CGAffineTransformMakeTranslation(retstr, atPoint.x, atPoint.y);
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

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    LOBYTE(v5) = 0;
    return v5;
  }

  if (equal == self)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = TSDNearlyEqualPoints(self->mPosition.x, self->mPosition.y, *(equal + 1), *(equal + 2));
  if (v5)
  {
    v5 = TSDNearlyEqualSizes(self->mSize.width, self->mSize.height, *(equal + 3), *(equal + 4));
    if (v5)
    {
      if (((*(equal + 40) ^ *&self->mFlags) & 0xF) == 0)
      {
        LOBYTE(v5) = vabdd_f64(self->mAngle, *(equal + 6)) < 0.00999999978;
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

- (BOOL)isEqualExceptForPosition:(id)position
{
  if (!position)
  {
    return 0;
  }

  if (position == self)
  {
    return 1;
  }

  objc_opt_class();
  result = (objc_opt_isKindOfClass() & 1) != 0 && (self->mSize.width == *(position + 3) ? (v5 = self->mSize.height == *(position + 4)) : (v5 = 0), v5 && ((*(position + 40) ^ *&self->mFlags) & 0xF) == 0) && self->mAngle == *(position + 6);
  return result;
}

- (int64_t)mixingTypeWithObject:(id)object
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__TSDInfoGeometry_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = object;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, object, v4);
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

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__TSDInfoGeometry_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = object;
  v5[5] = self;
  *&v5[6] = fraction;
  return TSDMixingMixedObjectWithFraction(self, object, v5);
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

+ (id)geometryFromFullTransform:(CGAffineTransform *)transform widthValid:(BOOL)valid heightValid:(BOOL)heightValid
{
  heightValidCopy = heightValid;
  validCopy = valid;
  v8 = [TSDInfoGeometry alloc];
  v9 = *&transform->c;
  v11[0] = *&transform->a;
  v11[1] = v9;
  v11[2] = *&transform->tx;
  return [(TSDInfoGeometry *)v8 initWithFullTransform:v11 widthValid:validCopy heightValid:heightValidCopy];
}

- (TSDInfoGeometry)initWithFullTransform:(CGAffineTransform *)transform widthValid:(BOOL)valid heightValid:(BOOL)heightValid
{
  heightValidCopy = heightValid;
  validCopy = valid;
  v31.receiver = self;
  v31.super_class = TSDInfoGeometry;
  v8 = [(TSDInfoGeometry *)&v31 init];
  if (v8)
  {
    v9 = validCopy;
    v10 = heightValidCopy;
    v11 = *&transform->c;
    *&v30.a = *&transform->a;
    *&v30.c = v11;
    *&v30.tx = *&transform->tx;
    v12 = 0.0;
    v13 = 0;
    *&v11 = 0;
    v32 = CGRectApplyAffineTransform(*(&v9 - 2), &v30);
    v14 = 0.0;
    if (validCopy)
    {
      v14 = sqrt(transform->b * transform->b + transform->a * transform->a);
    }

    if (heightValidCopy)
    {
      v12 = sqrt(transform->d * transform->d + transform->c * transform->c);
      LOBYTE(heightValidCopy) = 2;
    }

    v8->mSize.width = v14;
    v8->mSize.height = v12;
    v15 = TSDCenterOfRect(v32.origin.x, v32.origin.y, v32.size.width, v32.size.height);
    v17 = TSDAddPoints(v15, v16, v14 * -0.5);
    v18 = MEMORY[0x277CBF348];
    v8->mPosition.x = v17;
    v8->mPosition.y = v19;
    v20 = TSDSubtractPoints(transform->tx + v18[1] * transform->c + transform->a * *v18, transform->ty + v18[1] * transform->d + transform->b * *v18, transform->tx + transform->c * 0.0 + transform->a * -1000.0);
    v22 = TSDAngleFromDelta(v20, v21) * -57.2957795;
    v8->mAngle = v22;
    v23 = heightValidCopy | validCopy;
    v24 = heightValidCopy | validCopy | *&v8->mFlags & 0xFC;
    *&v8->mFlags = v23 | *&v8->mFlags & 0xFC;
    v25 = TSDCrossPoints(transform->a, transform->c, transform->b, transform->d);
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

- (TSDInfoGeometry)initWithTransform:(CGAffineTransform *)transform size:(CGSize)size
{
  v6 = size.width > 0.001;
  if (size.width <= 0.001)
  {
    size.width = 1.0;
  }

  v7 = size.height > 0.001;
  if (size.height <= 0.001)
  {
    size.height = 1.0;
  }

  v8 = *&transform->c;
  *&v12.a = *&transform->a;
  *&v12.c = v8;
  *&v12.tx = *&transform->tx;
  CGAffineTransformScale(&v13, &v12, size.width, size.height);
  v9 = *&v13.c;
  *&transform->a = *&v13.a;
  *&transform->c = v9;
  *&transform->tx = *&v13.tx;
  v10 = *&transform->c;
  *&v13.a = *&transform->a;
  *&v13.c = v10;
  *&v13.tx = *&transform->tx;
  return [(TSDInfoGeometry *)self initWithFullTransform:&v13 widthValid:v6 heightValid:v7];
}

+ (id)geometryFromFullTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->c;
  v5[0] = *&transform->a;
  v5[1] = v3;
  v5[2] = *&transform->tx;
  return [TSDInfoGeometry geometryFromFullTransform:v5 widthValid:1 heightValid:1];
}

+ (id)geometryFromTransform:(CGAffineTransform *)transform withSize:(CGSize)size
{
  v4 = *&transform->c;
  *&v6.a = *&transform->a;
  *&v6.c = v4;
  *&v6.tx = *&transform->tx;
  CGAffineTransformScale(&v7, &v6, size.width, size.height);
  return [TSDInfoGeometry geometryFromFullTransform:&v7];
}

- (id)geometryByAppendingTransform:(CGAffineTransform *)transform
{
  if (self)
  {
    [(TSDInfoGeometry *)self fullTransform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v5 = *&transform->c;
  *&v7.a = *&transform->a;
  *&v7.c = v5;
  *&v7.tx = *&transform->tx;
  CGAffineTransformConcat(&v9, &t1, &v7);
  return [TSDInfoGeometry geometryFromFullTransform:&v9 widthValid:[(TSDInfoGeometry *)self widthValid] heightValid:[(TSDInfoGeometry *)self heightValid]];
}

- (TSDInfoGeometry)geometryWithParentGeometry:(id)geometry
{
  if (!self)
  {
    memset(&t1, 0, sizeof(t1));
    if (geometry)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(&v6, 0, sizeof(v6));
    goto LABEL_6;
  }

  [(TSDInfoGeometry *)self fullTransform];
  if (!geometry)
  {
    goto LABEL_5;
  }

LABEL_3:
  [geometry transform];
LABEL_6:
  CGAffineTransformConcat(&v8, &t1, &v6);
  return [TSDInfoGeometry geometryFromFullTransform:&v8 widthValid:[(TSDInfoGeometry *)self widthValid] heightValid:[(TSDInfoGeometry *)self heightValid]];
}

- (id)geometryByAppendingGeometry:(id)geometry
{
  if (!geometry)
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

  [geometry fullTransform];
  if (!self)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(TSDInfoGeometry *)self transform];
LABEL_6:
  CGAffineTransformConcat(&v8, &t1, &v6);
  return +[TSDInfoGeometry geometryFromFullTransform:widthValid:heightValid:](TSDInfoGeometry, "geometryFromFullTransform:widthValid:heightValid:", &v8, [geometry widthValid], objc_msgSend(geometry, "heightValid"));
}

- (id)geometryRelativeToGeometry:(id)geometry
{
  if (!self)
  {
    memset(&t1, 0, sizeof(t1));
    if (geometry)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(&v8, 0, sizeof(v8));
    goto LABEL_6;
  }

  [(TSDInfoGeometry *)self fullTransform];
  if (!geometry)
  {
    goto LABEL_5;
  }

LABEL_3:
  [geometry transform];
LABEL_6:
  CGAffineTransformInvert(&v6, &v8);
  CGAffineTransformConcat(&v8, &t1, &v6);
  return [TSDInfoGeometry geometryFromFullTransform:&v8 widthValid:[(TSDInfoGeometry *)self widthValid] heightValid:[(TSDInfoGeometry *)self heightValid]];
}

- (TSDInfoGeometry)geometryWithNewBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

  mAngle = [[TSDInfoGeometry alloc] initWithPosition:*&self->mFlags & 1 size:(*&self->mFlags >> 1) & 1 widthValid:v5 heightValid:0 horizontalFlip:self->mPosition.x verticalFlip:self->mPosition.y angle:self->mSize.width, self->mSize.height, mAngle];

  return mAngle;
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