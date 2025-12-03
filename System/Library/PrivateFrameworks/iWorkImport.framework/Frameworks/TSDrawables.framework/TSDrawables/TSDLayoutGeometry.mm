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
- (TSDInfoGeometry)infoGeometry;
- (TSDLayoutGeometry)init;
- (TSDLayoutGeometry)initWithFrame:(CGRect)frame;
- (TSDLayoutGeometry)initWithInfoGeometry:(id)geometry;
- (TSDLayoutGeometry)initWithSize:(CGSize)size transform:(CGAffineTransform *)transform;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)geometryByOutsettingBy:(CGSize)by;
- (id)geometryByTransformingBy:(CGAffineTransform *)by;
- (id)geometryByTranslatingBy:(CGPoint)by;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)i_setTransform:(CGAffineTransform *)transform;
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
    result->_size.width = width;
    result->_size.height = height;
    v8 = *&transform->a;
    v9 = *&transform->c;
    *&result->_transform.tx = *&transform->tx;
    *&result->_transform.c = v9;
    *&result->_transform.a = v8;
  }

  return result;
}

- (TSDLayoutGeometry)init
{
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return objc_msgSend_initWithSize_transform_(self, a2, v4, 100.0, 100.0);
}

- (TSDLayoutGeometry)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  CGAffineTransformMakeTranslation(&v8, frame.origin.x, frame.origin.y);
  return objc_msgSend_initWithSize_transform_(self, v6, &v8, width, height);
}

- (TSDLayoutGeometry)initWithInfoGeometry:(id)geometry
{
  geometryCopy = geometry;
  v7 = geometryCopy;
  if (geometryCopy)
  {
    if (!objc_msgSend_heightValid(geometryCopy, v5, v6) || (objc_msgSend_widthValid(v7, v8, v9) & 1) == 0)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDLayoutGeometry initWithInfoGeometry:]");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDLayoutGeometry.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 58, 0, "can't create layout geometry from info geometry if width and height are not valid");

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v16, v17);
    }

    objc_msgSend_size(v7, v8, v10);
    v19 = v18;
    v21 = v20;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    objc_msgSend_transform(v7, v22, v23);
    v34[0] = v35;
    v34[1] = v36;
    v34[2] = v37;
    self = objc_msgSend_initWithSize_transform_(self, v24, v34, v19, v21);
    selfCopy = self;
  }

  else
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDLayoutGeometry initWithInfoGeometry:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDLayoutGeometry.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 53, 0, "invalid nil value for '%{public}s'", "infoGeometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
    selfCopy = 0;
  }

  return selfCopy;
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

  v14 = v6;
  if (v7 > 0.01)
  {
    *&transform->c = vdivq_f64(v4, vdupq_lane_s64(*&v7, 0));
  }

  v13 = v7;
  v8 = [TSDLayoutGeometry alloc];
  v9 = *&transform->c;
  v15[0] = *&transform->a;
  v15[1] = v9;
  v15[2] = *&transform->tx;
  v11 = objc_msgSend_initWithSize_transform_(v8, v10, v15, v14, v13);

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  width = self->_size.width;
  height = self->_size.height;
  v7 = *&self->_transform.c;
  v10[0] = *&self->_transform.a;
  v10[1] = v7;
  v10[2] = *&self->_transform.tx;
  return objc_msgSend_initWithSize_transform_(v4, v8, v10, width, height);
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSDMutableLayoutGeometry alloc];
  width = self->_size.width;
  height = self->_size.height;
  v7 = *&self->_transform.c;
  v10[0] = *&self->_transform.a;
  v10[1] = v7;
  v10[2] = *&self->_transform.tx;
  return objc_msgSend_initWithSize_transform_(v4, v8, v10, width, height);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_9;
  }

  if (equalCopy == self)
  {
    v12 = 1;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = v6;
    width = self->_size.width;
    v9 = v6[1];
    if ((width == v9 || vabdd_f64(width, v9) < 0.000000001) && ((height = self->_size.height, v11 = v6[2], height == v11) || vabdd_f64(height, v11) < 0.000000001))
    {
      v12 = TSUNearlyEqualTransforms();
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

LABEL_13:

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend_frame(self, v6, v7);
  v8 = NSStringFromCGRect(v21);
  objc_msgSend_size(self, v9, v10);
  v11 = NSStringFromCGSize(v20);
  objc_msgSend_transform(self, v12, v13);
  v14 = NSStringFromCGAffineTransform(&transform);
  v16 = objc_msgSend_stringWithFormat_(v3, v15, @"<%@ %p frame=%@ size=%@ xform=%@>", v5, self, v8, v11, v14);

  return v16;
}

- (void)i_setTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->c;
  *&self->_transform.tx = *&transform->tx;
  *&self->_transform.c = v4;
  *&self->_transform.a = v3;
}

- (CGPoint)center
{
  v2 = vaddq_f64(*&self->_transform.tx, vmlaq_n_f64(vmulq_n_f64(*&self->_transform.c, self->_size.height * 0.5), *&self->_transform.a, self->_size.width * 0.5));
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (CGRect)frame
{
  TSURectWithSize();
  v3 = *&self->_transform.c;
  *&v4.a = *&self->_transform.a;
  *&v4.c = v3;
  *&v4.tx = *&self->_transform.tx;
  return CGRectApplyAffineTransform(v5, &v4);
}

- (CGAffineTransform)inverseTransform
{
  v3 = *&self->_transform.c;
  *&v5.a = *&self->_transform.a;
  *&v5.c = v3;
  *&v5.tx = *&self->_transform.tx;
  return CGAffineTransformInvert(retstr, &v5);
}

- (CGAffineTransform)fullTransform
{
  v3 = fmax(self->_size.width, 0.00000001);
  v4 = fmax(self->_size.height, 0.00000001);
  v5 = *&self->_transform.c;
  *&v7.a = *&self->_transform.a;
  *&v7.c = v5;
  *&v7.tx = *&self->_transform.tx;
  return CGAffineTransformScale(retstr, &v7, v3, v4);
}

- (TSDInfoGeometry)infoGeometry
{
  v3 = [TSDInfoGeometry alloc];
  objc_msgSend_transform(self, v4, v5);
  objc_msgSend_size(self, v6, v7);
  v9 = objc_msgSend_initWithTransform_size_(v3, v8, &v11);

  return v9;
}

- (id)geometryByTransformingBy:(CGAffineTransform *)by
{
  memset(&v24, 0, sizeof(v24));
  objc_msgSend_transform(self, a2, by);
  v5 = *&by->c;
  *&v22.a = *&by->a;
  *&v22.c = v5;
  *&v22.tx = *&by->tx;
  CGAffineTransformConcat(&v24, &t1, &v22);
  t1 = v24;
  TSUTransformXYScale();
  v7 = v6;
  v9 = v8;
  v22 = v24;
  memset(&t1, 0, sizeof(t1));
  CGAffineTransformScale(&t1, &v22, 1.0 / v6, 1.0 / v8);
  objc_msgSend_size(self, v10, v11);
  v13 = v7 * v12;
  objc_msgSend_size(self, v14, v15);
  v17 = v9 * v16;
  v18 = [TSDLayoutGeometry alloc];
  v22 = t1;
  v20 = objc_msgSend_initWithSize_transform_(v18, v19, &v22, v13, v17);

  return v20;
}

- (id)geometryByTranslatingBy:(CGPoint)by
{
  CGAffineTransformMakeTranslation(&v7, by.x, by.y);
  v5 = objc_msgSend_geometryByTransformingBy_(self, v4, &v7);

  return v5;
}

- (id)geometryByOutsettingBy:(CGSize)by
{
  height = by.height;
  width = by.width;
  v6 = objc_msgSend_mutableCopy(self, a2, v3);
  objc_msgSend_outsetBy_(v6, v7, v8, width, height);

  return v6;
}

- (CGAffineTransform)transformByConcatenatingTransformTo:(SEL)to
{
  v4 = *&a4->c;
  *&t1.a = *&a4->a;
  *&t1.c = v4;
  *&t1.tx = *&a4->tx;
  v5 = *&self->_transform.c;
  *&v7.a = *&self->_transform.a;
  *&v7.c = v5;
  *&v7.tx = *&self->_transform.tx;
  return CGAffineTransformConcat(retstr, &t1, &v7);
}

- (BOOL)differsInMoreThanTranslationFrom:(id)from
{
  fromCopy = from;
  if (fromCopy && (objc_msgSend_frame(self, v4, v5), objc_msgSend_frame(fromCopy, v7, v8), TSUNearlyEqualSizes()))
  {
    objc_msgSend_transform(self, v9, v10);
    objc_msgSend_transform(fromCopy, v11, v12);
    v13 = TSUTransformsDifferOnlyByTranslation() ^ 1;
  }

  else
  {
    LOBYTE(v13) = 1;
  }

  return v13;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
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