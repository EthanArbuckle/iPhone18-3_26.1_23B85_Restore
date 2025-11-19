@interface TSDInfoGeometry
+ (id)geometryFromFullTransform:(CGAffineTransform *)a3;
+ (id)geometryFromFullTransform:(CGAffineTransform *)a3 widthValid:(BOOL)a4 heightValid:(BOOL)a5;
+ (id)geometryFromTransform:(CGAffineTransform *)a3 withSize:(CGSize)a4;
- (BOOL)allValuesValidNumbers;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualExceptForPosition:(id)a3;
- (CGAffineTransform)fullTransform;
- (CGAffineTransform)transform;
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
- (TSDInfoGeometry)geometryWithValidNumbers;
- (TSDInfoGeometry)initWithArchive:(const void *)a3;
- (TSDInfoGeometry)initWithFullTransform:(CGAffineTransform *)a3 widthValid:(BOOL)a4 heightValid:(BOOL)a5;
- (TSDInfoGeometry)initWithLayoutGeometry:(id)a3;
- (TSDInfoGeometry)initWithPosition:(CGPoint)a3 size:(CGSize)a4 widthValid:(BOOL)a5 heightValid:(BOOL)a6 horizontalFlip:(BOOL)a7 verticalFlip:(BOOL)a8 angle:(double)a9;
- (TSDInfoGeometry)initWithTransform:(CGAffineTransform *)a3 size:(CGSize)a4;
- (TSDInfoGeometry)initWithTransformedBoundsOrigin:(CGPoint)a3 size:(CGSize)a4 widthValid:(BOOL)a5 heightValid:(BOOL)a6 horizontalFlip:(BOOL)a7 verticalFlip:(BOOL)a8 angle:(double)a9;
- (id)description;
- (id)geometryByAppendingTransform:(CGAffineTransform *)a3;
- (id)geometryRelativeToGeometry:(id)a3;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)normalizedGeometry;
- (id)parentGeometryWithRelativeGeometry:(id)a3 parentSize:(CGSize)a4;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
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
  v24.receiver = self;
  v24.super_class = TSDInfoGeometry;
  v17 = [(TSDInfoGeometry *)&v24 init];
  v18 = v17;
  if (v17)
  {
    v17->_position.x = x;
    v17->_position.y = y;
    v17->_size.width = width;
    v17->_size.height = height;
    if (v11)
    {
      v19 = 2;
    }

    else
    {
      v19 = 0;
    }

    if (v10)
    {
      v20 = 4;
    }

    else
    {
      v20 = 0;
    }

    if (v9)
    {
      v21 = 8;
    }

    else
    {
      v21 = 0;
    }

    *&v17->_flags = v19 | a5 | v20 | v21 | *&v17->_flags & 0xF0;
    TSUNormalizeAngleInDegrees();
    v18->_angle = v22;
  }

  return v18;
}

- (TSDInfoGeometry)initWithFullTransform:(CGAffineTransform *)a3 widthValid:(BOOL)a4 heightValid:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v24.receiver = self;
  v24.super_class = TSDInfoGeometry;
  v8 = [(TSDInfoGeometry *)&v24 init];
  if (v8)
  {
    v9 = v6;
    v10 = v5;
    v11 = *&a3->c;
    *&v23.a = *&a3->a;
    *&v23.c = v11;
    *&v23.tx = *&a3->tx;
    v12 = 0.0;
    v13 = 0;
    *&v11 = 0;
    CGRectApplyAffineTransform(*(&v9 - 2), &v23);
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

    v8->_size.width = v14;
    v8->_size.height = v12;
    TSUCenterOfRect();
    TSUAddPoints();
    v8->_position.x = v15;
    v8->_position.y = v16;
    TSUSubtractPoints();
    TSUAngleFromDelta();
    v8->_angle = v17 * -57.2957795;
    v18 = v5 | v6;
    v19 = v5 | v6 | *&v8->_flags & 0xFC;
    *&v8->_flags = v18 | *&v8->_flags & 0xFC;
    TSUCrossPoints();
    *&v8->_flags = v19 & 0xF3 | (4 * (v20 > 0.0));
    TSUNormalizeAngleInDegrees();
    v8->_angle = v21;
  }

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSDMutableInfoGeometry alloc];
  flags = self->_flags;
  angle = self->_angle;
  x = self->_position.x;
  y = self->_position.y;
  width = self->_size.width;
  height = self->_size.height;

  return objc_msgSend_initWithPosition_size_widthValid_heightValid_horizontalFlip_verticalFlip_angle_(v4, v5, *&flags & 1, (*&flags >> 1) & 1, (*&flags >> 2) & 1, (*&flags >> 3) & 1, x, y, width, height, angle);
}

- (TSDInfoGeometry)initWithTransformedBoundsOrigin:(CGPoint)a3 size:(CGSize)a4 widthValid:(BOOL)a5 heightValid:(BOOL)a6 horizontalFlip:(BOOL)a7 verticalFlip:(BOOL)a8 angle:(double)a9
{
  valid = objc_msgSend_initWithPosition_size_widthValid_heightValid_horizontalFlip_verticalFlip_angle_(self, a2, a5, a6, a7, a8, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), a4.width, a4.height, a9);
  v12 = valid;
  if (valid)
  {
    objc_msgSend_transformedBoundsOrigin(valid, v10, v11);
    TSUSubtractPoints();
    TSUAddPoints();
    v12->_position.x = v13;
    v12->_position.y = v14;
  }

  return v12;
}

- (TSDInfoGeometry)initWithTransform:(CGAffineTransform *)a3 size:(CGSize)a4
{
  v6 = *&a3->c;
  *&v11.a = *&a3->a;
  *&v11.c = v6;
  *&v11.tx = *&a3->tx;
  CGAffineTransformScale(&v12, &v11, a4.width, a4.height);
  v7 = *&v12.c;
  *&a3->a = *&v12.a;
  *&a3->c = v7;
  *&a3->tx = *&v12.tx;
  v8 = *&a3->c;
  *&v12.a = *&a3->a;
  *&v12.c = v8;
  *&v12.tx = *&a3->tx;
  return objc_msgSend_initWithFullTransform_widthValid_heightValid_(self, v9, &v12, 1, 1);
}

- (TSDInfoGeometry)initWithLayoutGeometry:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    objc_msgSend_transform(v4, v5, v6);
    v8 = TSUIsTransformFlipped();
    objc_msgSend_transform(v7, v9, v10, 0, 0, 0);
  }

  else
  {
    v8 = TSUIsTransformFlipped();
  }

  TSUTransformAngleInDegrees();
  objc_msgSend_size(v7, v11, v12);
  objc_msgSend_frame(v7, v13, v14);
  TSUCenterOfRect();
  TSUAddPoints();
  valid = objc_msgSend_initWithPosition_size_widthValid_heightValid_horizontalFlip_verticalFlip_angle_(self, v15, 1, 1, v8, 0);

  return valid;
}

- (CGRect)boundsBeforeRotation
{
  objc_msgSend_position(self, a2, v2);
  objc_msgSend_size(self, v4, v5);

  TSURectWithOriginAndSize();
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGPoint)center
{
  objc_msgSend_boundsBeforeRotation(self, a2, v2);

  TSUCenterOfRect();
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGAffineTransform)transform
{
  objc_msgSend_boundsBeforeRotation(self, a3, v3);

  return objc_msgSend_transformBasedOnRect_(self, v5, v6);
}

- (CGAffineTransform)transformBasedOnRect:(SEL)a3
{
  y = a4.origin.y;
  x = a4.origin.x;
  TSUCenterOfRect();

  return objc_msgSend_transformBasedOnPoint_centeredAtPoint_(self, v7, v8, x, y, v9, v10);
}

- (CGAffineTransform)transformBasedOnPoint:(SEL)a3 centeredAtPoint:(CGPoint)a4 withFlips:(CGPoint)a5
{
  v6 = a6;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  CGAffineTransformMakeTranslation(retstr, a4.x, a4.y);
  result = objc_msgSend_angle(self, v9, v10);
  v15 = v14;
  if (v14 != 0.0 || v6 && ((objc_msgSend_horizontalFlip(self, v12, v13) & 1) != 0 || (result = objc_msgSend_verticalFlip(self, v34, v35), result)))
  {
    TSUSubtractPoints();
    v17 = v16;
    v19 = v18;
    v20 = *&retstr->c;
    *&v36.a = *&retstr->a;
    *&v36.c = v20;
    *&v36.tx = *&retstr->tx;
    CGAffineTransformTranslate(&v37, &v36, v16, v19);
    v23 = *&v37.c;
    *&retstr->a = *&v37.a;
    *&retstr->c = v23;
    *&retstr->tx = *&v37.tx;
    if (v15 != 0.0)
    {
      v24 = *&retstr->c;
      *&v36.a = *&retstr->a;
      *&v36.c = v24;
      *&v36.tx = *&retstr->tx;
      CGAffineTransformRotate(&v37, &v36, (v15 * -3.14159265 + v15 * -3.14159265) / 360.0);
      v25 = *&v37.c;
      *&retstr->a = *&v37.a;
      *&retstr->c = v25;
      *&retstr->tx = *&v37.tx;
    }

    if (v6)
    {
      if (objc_msgSend_horizontalFlip(self, v21, v22))
      {
        v28 = *&retstr->c;
        *&v36.a = *&retstr->a;
        *&v36.c = v28;
        *&v36.tx = *&retstr->tx;
        CGAffineTransformScale(&v37, &v36, -1.0, 1.0);
        v29 = *&v37.c;
        *&retstr->a = *&v37.a;
        *&retstr->c = v29;
        *&retstr->tx = *&v37.tx;
      }

      if (objc_msgSend_verticalFlip(self, v26, v27))
      {
        v30 = *&retstr->c;
        *&v36.a = *&retstr->a;
        *&v36.c = v30;
        *&v36.tx = *&retstr->tx;
        CGAffineTransformScale(&v37, &v36, 1.0, -1.0);
        v31 = *&v37.c;
        *&retstr->a = *&v37.a;
        *&retstr->c = v31;
        *&retstr->tx = *&v37.tx;
      }
    }

    v32 = *&retstr->c;
    *&v36.a = *&retstr->a;
    *&v36.c = v32;
    *&v36.tx = *&retstr->tx;
    result = CGAffineTransformTranslate(&v37, &v36, -v17, -v19);
    v33 = *&v37.c;
    *&retstr->a = *&v37.a;
    *&retstr->c = v33;
    *&retstr->tx = *&v37.tx;
  }

  return result;
}

- (CGAffineTransform)transformWithoutFlips
{
  objc_msgSend_boundsBeforeRotation(self, a3, v3);
  TSUCenterOfRect();

  return MEMORY[0x2821F9670](self, sel_transformBasedOnPoint_centeredAtPoint_withFlips_, 0);
}

- (CGRect)transformedBounds
{
  TSURectWithSize();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  objc_msgSend_transform(self, v11, v12);
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  return CGRectApplyAffineTransform(v14, &v13);
}

- (BOOL)allValuesValidNumbers
{
  objc_msgSend_size(self, a2, v2);
  IsFinite = TSUSizeIsFinite();
  objc_msgSend_position(self, v5, v6);
  objc_msgSend_angle(self, v7, v8);
  if (!IsFinite)
  {
    return 0;
  }

  v10 = v9 & 0x7FFFFFFFFFFFFFFFLL;
  result = TSUPointIsFinite();
  if (v10 >= 0x7FF0000000000000)
  {
    return 0;
  }

  return result;
}

- (TSDInfoGeometry)geometryWithValidNumbers
{
  v2 = self;
  if (objc_msgSend_allValuesValidNumbers(v2, v3, v4))
  {
    v7 = v2;
  }

  else
  {
    v7 = objc_msgSend_mutableCopy(v2, v5, v6);
    objc_msgSend_size(v2, v8, v9);
    if ((TSUSizeIsFinite() & 1) == 0)
    {
      objc_msgSend_setSize_(v7, v10, v11, 1.0, 1.0);
      if ((objc_msgSend_widthValid(v2, v12, v13) & 1) == 0)
      {
        objc_msgSend_size(v7, v14, v15);
        objc_msgSend_setSize_(v7, v16, v17, 0.0);
      }

      if ((objc_msgSend_heightValid(v2, v14, v15) & 1) == 0)
      {
        objc_msgSend_size(v7, v10, v11);
        objc_msgSend_setSize_(v7, v18, v19);
      }
    }

    objc_msgSend_position(v2, v10, v11);
    if ((TSUPointIsFinite() & 1) == 0)
    {
      objc_msgSend_setPosition_(v7, v20, v21, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
    }

    objc_msgSend_angle(v2, v20, v21);
    if ((v24 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      objc_msgSend_setAngle_(v7, v22, v23, 0.0);
    }
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  if (v4 == self)
  {
    isEqualExceptForPosition = 1;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && TSUNearlyEqualPoints())
  {
    isEqualExceptForPosition = objc_msgSend_isEqualExceptForPosition_(self, v6, v5);
  }

  else
  {
LABEL_6:
    isEqualExceptForPosition = 0;
  }

LABEL_8:

  return isEqualExceptForPosition;
}

- (BOOL)isEqualExceptForPosition:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (v4 == self)
    {
      v7 = 1;
    }

    else
    {
      v6 = v4;
      if (TSUNearlyEqualSizes() && ((*&v6->_flags ^ *&self->_flags) & 0xF) == 0)
      {
        angle = self->_angle;
        v10 = v6->_angle;
        v7 = vabdd_f64(angle, v10) < 0.00999999978 || angle == v10;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = TSUDynamicCast();

  if (!v6)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDInfoGeometry mixingTypeWithObject:context:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDInfoGeometry.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 406, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_horizontalFlip(self, v7, v8);
  if (v16 == objc_msgSend_horizontalFlip(v6, v17, v18) && (v21 = objc_msgSend_verticalFlip(self, v19, v20), v21 == objc_msgSend_verticalFlip(v6, v22, v23)))
  {
    if (objc_msgSend_isEqual_(self, v24, v6))
    {
      v25 = 5;
    }

    else
    {
      v25 = 4;
    }
  }

  else
  {
    v25 = 1;
  }

  return v25;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v6 = TSUDynamicCast();

  v7 = [TSDInfoGeometry alloc];
  objc_msgSend_position(self, v8, v9);
  objc_msgSend_position(v6, v10, v11);
  TSUMixPoints();
  v13 = v12;
  v15 = v14;
  objc_msgSend_size(self, v16, v17);
  objc_msgSend_size(v6, v18, v19);
  TSUMixSizes();
  v21 = v20;
  v23 = v22;
  objc_msgSend_widthValid(self, v24, v25);
  objc_msgSend_widthValid(v6, v26, v27);
  v28 = TSUMixBOOLs();
  objc_msgSend_heightValid(self, v29, v30);
  objc_msgSend_heightValid(v6, v31, v32);
  v33 = TSUMixBOOLs();
  objc_msgSend_horizontalFlip(self, v34, v35);
  objc_msgSend_horizontalFlip(v6, v36, v37);
  v38 = TSUMixBOOLs();
  objc_msgSend_verticalFlip(self, v39, v40);
  objc_msgSend_verticalFlip(v6, v41, v42);
  v43 = TSUMixBOOLs();
  objc_msgSend_angle(self, v44, v45);
  objc_msgSend_angle(v6, v46, v47);
  TSUMixAnglesInDegrees();
  valid = objc_msgSend_initWithPosition_size_widthValid_heightValid_horizontalFlip_verticalFlip_angle_(v7, v48, v28, v33, v38, v43, v13, v15, v21, v23, v49);

  return valid;
}

- (CGAffineTransform)fullTransform
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  TSURectWithOriginAndSize();
  objc_msgSend_transformBasedOnRect_(self, v5, v6);
  v11 = 1.0;
  v12 = 1.0;
  if (objc_msgSend_widthValid(self, v7, v8))
  {
    objc_msgSend_size(self, v9, v10);
    v12 = v13;
  }

  if (objc_msgSend_heightValid(self, v9, v10))
  {
    objc_msgSend_size(self, v14, v15);
    v11 = v16;
  }

  v17 = *&retstr->c;
  *&v20.a = *&retstr->a;
  *&v20.c = v17;
  *&v20.tx = *&retstr->tx;
  result = CGAffineTransformScale(&v21, &v20, v12, v11);
  v19 = *&v21.c;
  *&retstr->a = *&v21.a;
  *&retstr->c = v19;
  *&retstr->tx = *&v21.tx;
  return result;
}

+ (id)geometryFromFullTransform:(CGAffineTransform *)a3 widthValid:(BOOL)a4 heightValid:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [TSDInfoGeometry alloc];
  v9 = *&a3->c;
  v13[0] = *&a3->a;
  v13[1] = v9;
  v13[2] = *&a3->tx;
  valid = objc_msgSend_initWithFullTransform_widthValid_heightValid_(v8, v10, v13, v6, v5);

  return valid;
}

+ (id)geometryFromFullTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->c;
  v6[0] = *&a3->a;
  v6[1] = v3;
  v6[2] = *&a3->tx;
  v4 = objc_msgSend_geometryFromFullTransform_widthValid_heightValid_(TSDInfoGeometry, a2, v6, 1, 1);

  return v4;
}

+ (id)geometryFromTransform:(CGAffineTransform *)a3 withSize:(CGSize)a4
{
  v4 = *&a3->c;
  *&v8.a = *&a3->a;
  *&v8.c = v4;
  *&v8.tx = *&a3->tx;
  CGAffineTransformScale(&v9, &v8, a4.width, a4.height);
  v6 = objc_msgSend_geometryFromFullTransform_(TSDInfoGeometry, v5, &v9);

  return v6;
}

- (id)geometryByAppendingTransform:(CGAffineTransform *)a3
{
  objc_msgSend_fullTransform(self, a2, a3);
  v5 = *&a3->c;
  *&v15.a = *&a3->a;
  *&v15.c = v5;
  *&v15.tx = *&a3->tx;
  CGAffineTransformConcat(&v17, &t1, &v15);
  v8 = objc_msgSend_widthValid(self, v6, v7);
  v11 = objc_msgSend_heightValid(self, v9, v10);
  v13 = objc_msgSend_geometryFromFullTransform_widthValid_heightValid_(TSDInfoGeometry, v12, &v17, v8, v11);

  return v13;
}

- (TSDInfoGeometry)geometryWithParentGeometry:(id)a3
{
  v4 = a3;
  objc_msgSend_fullTransform(self, v5, v6);
  if (v4)
  {
    objc_msgSend_transform(v4, v7, v8);
  }

  else
  {
    memset(&v18, 0, sizeof(v18));
  }

  CGAffineTransformConcat(&v20, &t1, &v18);
  v11 = objc_msgSend_widthValid(self, v9, v10);
  v14 = objc_msgSend_heightValid(self, v12, v13);
  v16 = objc_msgSend_geometryFromFullTransform_widthValid_heightValid_(TSDInfoGeometry, v15, &v20, v11, v14);

  return v16;
}

- (id)geometryRelativeToGeometry:(id)a3
{
  v4 = a3;
  objc_msgSend_fullTransform(self, v5, v6);
  if (v4)
  {
    objc_msgSend_transform(v4, v7, v8);
  }

  else
  {
    memset(&v20, 0, sizeof(v20));
  }

  CGAffineTransformInvert(&v18, &v20);
  CGAffineTransformConcat(&v20, &t1, &v18);
  v11 = objc_msgSend_widthValid(self, v9, v10);
  v14 = objc_msgSend_heightValid(self, v12, v13);
  v16 = objc_msgSend_geometryFromFullTransform_widthValid_heightValid_(TSDInfoGeometry, v15, &v20, v11, v14);

  return v16;
}

- (id)parentGeometryWithRelativeGeometry:(id)a3 parentSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  objc_msgSend_size(self, v8, v9);
  objc_msgSend_size(v7, v10, v11);
  if ((TSUNearlyEqualSizes() & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSDInfoGeometry parentGeometryWithRelativeGeometry:parentSize:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDInfoGeometry.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 467, 0, "Input geometries' sizes don't match");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  memset(&v31, 0, sizeof(v31));
  if (v7)
  {
    objc_msgSend_transform(v7, v12, v13);
  }

  else
  {
    memset(&v30, 0, sizeof(v30));
  }

  CGAffineTransformInvert(&v31, &v30);
  memset(&v30, 0, sizeof(v30));
  objc_msgSend_transform(self, v21, v22);
  t1 = v31;
  memset(&v29, 0, sizeof(v29));
  v27 = v30;
  CGAffineTransformConcat(&v29, &t1, &v27);
  v23 = [TSDInfoGeometry alloc];
  t1 = v29;
  v25 = objc_msgSend_initWithTransform_size_(v23, v24, &t1, width, height);

  return v25;
}

- (TSDInfoGeometry)geometryWithNewBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v7 = objc_msgSend_mutableCopy(self, a2, v3);
  objc_msgSend_setSize_(v7, v8, v9, width, height);
  TSUCenterOfRect();
  objc_msgSend_size(self, v10, v11);
  objc_msgSend_size(self, v12, v13);
  TSUSubtractPoints();
  objc_msgSend_transform(self, v14, v15);
  TSUDeltaApplyAffineTransform();
  objc_msgSend_center(self, v16, v17);
  TSUAddPoints();
  objc_msgSend_setCenter_(v7, v18, v19);

  return v7;
}

- (id)normalizedGeometry
{
  angle = self->_angle;
  flags = self->_flags;
  v5 = (*&flags >> 2) & 1;
  if ((*&flags & 8) != 0)
  {
    v5 = (*&flags & 4) == 0;
    TSUNormalizeAngleInDegrees();
    angle = v6;
  }

  v7 = [TSDInfoGeometry alloc];
  valid = objc_msgSend_initWithPosition_size_widthValid_heightValid_horizontalFlip_verticalFlip_angle_(v7, v8, *&self->_flags & 1, (*&self->_flags >> 1) & 1, v5, 0, self->_position.x, self->_position.y, self->_size.width, self->_size.height, angle);

  return valid;
}

- (id)description
{
  if (*&self->_flags)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%g", *&self->_size.width);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"auto(%g)", *&self->_size.width);
  }
  v4 = ;
  if ((*&self->_flags & 2) != 0)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v3, @"%g", *&self->_size.height);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v3, @"auto(%g)", *&self->_size.height);
  }
  v5 = ;
  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"{%@, %@}", v4, v5);
  if (self->_angle == 0.0)
  {
    v9 = &stru_28857D120;
  }

  else
  {
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @" angle=%g", *&self->_angle);
  }

  v10 = @" flip=h+v";
  if ((*&self->_flags & 8) == 0)
  {
    v10 = @" flip=h";
  }

  v11 = @" flip=v";
  if ((*&self->_flags & 8) == 0)
  {
    v11 = &stru_28857D120;
  }

  if ((*&self->_flags & 4) != 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = NSStringFromCGPoint(self->_position);
  v18 = objc_msgSend_stringWithFormat_(v13, v17, @"<%@ %p pos=%@ size=%@%@%@>", v15, self, v16, v8, v9, v12);

  return v18;
}

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (TSDInfoGeometry)initWithArchive:(const void *)a3
{
  if (*(a3 + 3))
  {
    v5 = *(a3 + 3);
  }

  else
  {
    v5 = MEMORY[0x277D809F0];
  }

  TSPCGPointFromMessage(v5);
  v7 = v6;
  v9 = v8;
  v10 = MEMORY[0x277D809D8];
  if (*(a3 + 4))
  {
    v10 = *(a3 + 4);
  }

  v11 = *(v10 + 24);
  v12 = *(v10 + 28);
  if ((TSUPointHasNaNComponents() & 1) != 0 || (v13 = v11, v14 = v12, TSUSizeHasNaNComponents() == 1))
  {
    v7 = *MEMORY[0x277CBF348];
    v9 = *(MEMORY[0x277CBF348] + 8);
    v14 = 100.0;
    v13 = 100.0;
  }

  v15 = *(a3 + 10);
  TSUNormalizeAngleInDegrees();

  return objc_msgSend_initWithPosition_size_widthValid_heightValid_horizontalFlip_verticalFlip_angle_(self, v16, v15 & 1, (v15 >> 1) & 1, (v15 >> 2) & 1, (v15 >> 3) & 1, v7, v9, v13, v14, v17);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v42 = a4;
  objc_msgSend_position(self, v6, v7);
  v9 = v8;
  v11 = v10;
  *(a3 + 4) |= 1u;
  v12 = *(a3 + 3);
  if (!v12)
  {
    v13 = *(a3 + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = MEMORY[0x277C9BB00](v13);
    *(a3 + 3) = v12;
  }

  v44.x = v9;
  v44.y = v11;
  TSPCGPointCopyToMessage(v44, v12);
  *(a3 + 4) |= 2u;
  v16 = *(a3 + 4);
  if (!v16)
  {
    v17 = *(a3 + 1);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = MEMORY[0x277C9BAD0](v17);
    *(a3 + 4) = v16;
  }

  objc_msgSend_size(self, v14, v15);
  *&v18 = v18;
  *(v16 + 16) |= 1u;
  *(v16 + 24) = LODWORD(v18);
  objc_msgSend_size(self, v19, v20);
  v22 = v21;
  *(v16 + 16) |= 2u;
  *(v16 + 28) = v22;
  v25 = objc_msgSend_widthValid(self, v23, v24);
  v28 = objc_msgSend_heightValid(self, v26, v27);
  v31 = objc_msgSend_horizontalFlip(self, v29, v30);
  v34 = objc_msgSend_verticalFlip(self, v32, v33);
  if (v28)
  {
    v37 = 2;
  }

  else
  {
    v37 = 0;
  }

  v38 = v37 | v25;
  if (v31)
  {
    v39 = 4;
  }

  else
  {
    v39 = 0;
  }

  if (v34)
  {
    v40 = 8;
  }

  else
  {
    v40 = 0;
  }

  *(a3 + 4) |= 4u;
  *(a3 + 10) = v38 | v39 | v40;
  objc_msgSend_angle(self, v35, v36);
  *&v41 = v41;
  *(a3 + 4) |= 8u;
  *(a3 + 11) = LODWORD(v41);
}

@end