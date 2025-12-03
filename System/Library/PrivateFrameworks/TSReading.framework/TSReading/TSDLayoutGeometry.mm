@interface TSDLayoutGeometry
+ (id)geometryFromFullTransform:(CGAffineTransform *)transform;
- (BOOL)differsInMoreThanTranslationFrom:(id)from;
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)fullTransform;
- (CGAffineTransform)inverseTransform;
- (CGAffineTransform)transform;
- (CGAffineTransform)transformByConcatenatingTransformTo:(SEL)to;
- (CGPoint)center;
- (CGRect)frame;
- (CGSize)size;
- (TSDLayoutGeometry)init;
- (TSDLayoutGeometry)initWithFrame:(CGRect)frame;
- (TSDLayoutGeometry)initWithInfoGeometry:(id)geometry;
- (TSDLayoutGeometry)initWithSize:(CGSize)size transform:(CGAffineTransform *)transform;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)geometryByOutsettingBy:(CGSize)by;
- (id)geometryByTransformingBy:(CGAffineTransform *)by;
- (id)infoGeometry;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation TSDLayoutGeometry

- (TSDLayoutGeometry)initWithSize:(CGSize)size transform:(CGAffineTransform *)transform
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = TSDLayoutGeometry;
  result = [(TSDLayoutGeometry *)&v10 init];
  if (result)
  {
    result->mSize.width = width;
    result->mSize.height = height;
    v8 = *&transform->a;
    v9 = *&transform->c;
    *&result->mTransform.tx = *&transform->tx;
    *&result->mTransform.c = v9;
    *&result->mTransform.a = v8;
  }

  return result;
}

- (TSDLayoutGeometry)init
{
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [(TSDLayoutGeometry *)self initWithSize:v4 transform:100.0, 100.0];
}

- (TSDLayoutGeometry)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  CGAffineTransformMakeTranslation(&v7, frame.origin.x, frame.origin.y);
  return [(TSDLayoutGeometry *)self initWithSize:&v7 transform:width, height];
}

- (TSDLayoutGeometry)initWithInfoGeometry:(id)geometry
{
  if (geometry)
  {
    if (![geometry heightValid] || (objc_msgSend(geometry, "widthValid") & 1) == 0)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDLayoutGeometry initWithInfoGeometry:]"];
      [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDLayoutGeometry.m"), 49, @"can't create layout geometry from info geometry if width and height are not valid"}];
    }

    [geometry size];
    v8 = v7;
    v10 = v9;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    [geometry transform];
    v14[0] = v15;
    v14[1] = v16;
    v14[2] = v17;
    return [(TSDLayoutGeometry *)self initWithSize:v14 transform:v8, v10];
  }

  else
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDLayoutGeometry initWithInfoGeometry:]"];
    [currentHandler2 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDLayoutGeometry.m"), 45, @"invalid nil value for '%s'", "infoGeometry"}];
    return 0;
  }
}

+ (id)geometryFromFullTransform:(CGAffineTransform *)transform
{
  v5 = *&transform->a;
  v4 = *&transform->c;
  v6 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v5, v5).f64[1]) + v5.f64[0] * v5.f64[0]);
  v7 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v4, v4).f64[1]) + v4.f64[0] * v4.f64[0]);
  if (v6 > 0.01)
  {
    *&transform->a = vdivq_f64(v5, vdupq_lane_s64(*&v6, 0));
  }

  v12 = v6;
  if (v7 > 0.01)
  {
    *&transform->c = vdivq_f64(v4, vdupq_lane_s64(*&v7, 0));
  }

  v11 = v7;
  v8 = [TSDLayoutGeometry alloc];
  v9 = *&transform->c;
  v13[0] = *&transform->a;
  v13[1] = v9;
  v13[2] = *&transform->tx;
  return [(TSDLayoutGeometry *)v8 initWithSize:v13 transform:v12, v11];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  width = self->mSize.width;
  height = self->mSize.height;
  v7 = *&self->mTransform.c;
  v9[0] = *&self->mTransform.a;
  v9[1] = v7;
  v9[2] = *&self->mTransform.tx;
  return [v4 initWithSize:v9 transform:{width, height}];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSDMutableLayoutGeometry alloc];
  width = self->mSize.width;
  height = self->mSize.height;
  v7 = *&self->mTransform.c;
  v9[0] = *&self->mTransform.a;
  v9[1] = v7;
  v9[2] = *&self->mTransform.tx;
  return [(TSDLayoutGeometry *)v4 initWithSize:v9 transform:width, height];
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (self->mSize.width != *(equal + 1) || self->mSize.height != *(equal + 2))
  {
    return 0;
  }

  v7 = *&self->mTransform.c;
  *&t1.a = *&self->mTransform.a;
  *&t1.c = v7;
  *&t1.tx = *&self->mTransform.tx;
  v8 = *(equal + 40);
  *&v9.a = *(equal + 24);
  *&v9.c = v8;
  *&v9.tx = *(equal + 56);
  return CGAffineTransformEqualToTransform(&t1, &v9);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(TSDLayoutGeometry *)self frame];
  v6 = NSStringFromCGRect(v11);
  v7 = NSStringFromCGSize(self->mSize);
  v8 = *&self->mTransform.c;
  *&transform.a = *&self->mTransform.a;
  *&transform.c = v8;
  *&transform.tx = *&self->mTransform.tx;
  return [v3 stringWithFormat:@"<%@ %p frame=%@ size=%@ xform=%@>", v5, self, v6, v7, NSStringFromCGAffineTransform(&transform)];
}

- (CGPoint)center
{
  v2 = vaddq_f64(*&self->mTransform.tx, vmlaq_n_f64(vmulq_n_f64(*&self->mTransform.c, self->mSize.height * 0.5), *&self->mTransform.a, self->mSize.width * 0.5));
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (CGRect)frame
{
  v5.origin.x = TSDRectWithSize();
  v3 = *&self->mTransform.c;
  *&v4.a = *&self->mTransform.a;
  *&v4.c = v3;
  *&v4.tx = *&self->mTransform.tx;
  return CGRectApplyAffineTransform(v5, &v4);
}

- (CGAffineTransform)inverseTransform
{
  v3 = *&self->mTransform.c;
  *&v5.a = *&self->mTransform.a;
  *&v5.c = v3;
  *&v5.tx = *&self->mTransform.tx;
  return CGAffineTransformInvert(retstr, &v5);
}

- (CGAffineTransform)fullTransform
{
  width = self->mSize.width;
  height = self->mSize.height;
  v5 = *&self->mTransform.c;
  *&v7.a = *&self->mTransform.a;
  *&v7.c = v5;
  *&v7.tx = *&self->mTransform.tx;
  return CGAffineTransformScale(retstr, &v7, width, height);
}

- (id)infoGeometry
{
  v3 = [TSDInfoGeometry alloc];
  if (self)
  {
    [(TSDLayoutGeometry *)self transform];
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
  }

  [(TSDLayoutGeometry *)self size:v5];
  return [(TSDInfoGeometry *)v3 initWithTransform:&v5 size:?];
}

- (id)geometryByTransformingBy:(CGAffineTransform *)by
{
  memset(&v17, 0, sizeof(v17));
  if (self)
  {
    [(TSDLayoutGeometry *)self transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v5 = *&by->c;
  *&v15.a = *&by->a;
  *&v15.c = v5;
  *&v15.tx = *&by->tx;
  CGAffineTransformConcat(&v17, &t1, &v15);
  t1 = v17;
  v6 = TSDTransformXYScale(&t1.a);
  v8 = v7;
  v15 = v17;
  memset(&t1, 0, sizeof(t1));
  CGAffineTransformScale(&t1, &v15, 1.0 / v6, 1.0 / v7);
  [(TSDLayoutGeometry *)self size];
  v10 = v6 * v9;
  [(TSDLayoutGeometry *)self size];
  v12 = v8 * v11;
  v13 = [TSDLayoutGeometry alloc];
  v15 = t1;
  return [(TSDLayoutGeometry *)v13 initWithSize:&v15 transform:v10, v12];
}

- (id)geometryByOutsettingBy:(CGSize)by
{
  height = by.height;
  width = by.width;
  v5 = [(TSDLayoutGeometry *)self mutableCopy];
  [v5 outsetBy:{width, height}];

  return v5;
}

- (CGAffineTransform)transformByConcatenatingTransformTo:(SEL)to
{
  v4 = *&a4->c;
  *&t1.a = *&a4->a;
  *&t1.c = v4;
  *&t1.tx = *&a4->tx;
  v5 = *&self->mTransform.c;
  *&v7.a = *&self->mTransform.a;
  *&v7.c = v5;
  *&v7.tx = *&self->mTransform.tx;
  return CGAffineTransformConcat(retstr, &t1, &v7);
}

- (BOOL)differsInMoreThanTranslationFrom:(id)from
{
  if (!from)
  {
    return 1;
  }

  [(TSDLayoutGeometry *)self frame];
  v6 = v5;
  v8 = v7;
  [from frame];
  if (v6 != v10 || v8 != v9)
  {
    return 1;
  }

  if (self)
  {
    [(TSDLayoutGeometry *)self transform];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  [from transform];
  return !TSDTransformsDifferOnlyByTranslation(v14, &v13);
}

- (CGSize)size
{
  width = self->mSize.width;
  height = self->mSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = *&self->ty;
  *&retstr->a = *&self->d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].b;
  return self;
}

@end