@interface PSPointerShape
+ (id)circleWithBounds:(CGRect)a3;
+ (id)customShapeWithPath:(CGPath *)a3 usesEvenOddFillRule:(BOOL)a4;
+ (id)elasticRoundedRectPinnedAtPoint:(CGPoint)a3;
+ (id)roundedRectWithBounds:(CGRect)a3 cornerRadius:(double)a4 cornerCurve:(id)a5;
+ (id)systemShape;
- (BOOL)isEqual:(id)a3;
- (CGPath)_createMutablePathByDecodingData:(id)a3;
- (CGPoint)pinnedPoint;
- (CGRect)bounds;
- (CGSize)size;
- (PSPointerShape)initWithCoder:(id)a3;
- (id)_initWithShapeType:(int64_t)a3 bounds:(CGRect)a4;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PSPointerShape

+ (id)systemShape
{
  v2 = [a1 alloc];
  v3 = [v2 _initWithShapeType:1 bounds:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  return v3;
}

+ (id)circleWithBounds:(CGRect)a3
{
  v3 = [[a1 alloc] _initWithShapeType:2 bounds:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];

  return v3;
}

+ (id)roundedRectWithBounds:(CGRect)a3 cornerRadius:(double)a4 cornerCurve:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  v12 = [[a1 alloc] _initWithShapeType:3 bounds:{x, y, width, height}];
  *(v12 + 32) = a4;
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  return v12;
}

+ (id)elasticRoundedRectPinnedAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [a1 alloc];
  v6 = [v5 _initWithShapeType:5 bounds:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v6[6] = x;
  v6[7] = y;

  return v6;
}

+ (id)customShapeWithPath:(CGPath *)a3 usesEvenOddFillRule:(BOOL)a4
{
  if (CGPathGetNumberOfPoints() <= 0x100)
  {
    BoundingBox = CGPathGetBoundingBox(a3);
    if (BoundingBox.size.width <= 10000.0 && BoundingBox.size.height <= 10000.0)
    {
      if (CGPathIsRoundedRect())
      {
        if (BSFloatEqualToFloat())
        {
          v7 = [a1 roundedRectWithBounds:0.0 cornerRadius:{0.0, 0.0, 0.0, 0.0, 0}];
          goto LABEL_15;
        }
      }

      else if (CGPathIsEllipse())
      {
        v7 = [a1 circleWithBounds:{0.0, 0.0, 0.0, 0.0, 0}];
LABEL_15:
        v8 = v7;
        if (v7)
        {
          goto LABEL_10;
        }
      }

      v13 = CGPathGetBoundingBox(a3);
      v8 = [[a1 alloc] _initWithShapeType:4 bounds:{v13.origin.x, v13.origin.y, v13.size.width, v13.size.height}];
      if (v8)
      {
        *(v8 + 8) = MEMORY[0x223D6A430](a3);
        *(v8 + 16) = a4;
      }

      goto LABEL_10;
    }
  }

  v8 = [a1 systemShape];
  v9 = PSLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [PSPointerShape customShapeWithPath:v9 usesEvenOddFillRule:?];
  }

LABEL_10:

  return v8;
}

- (id)_initWithShapeType:(int64_t)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10.receiver = self;
  v10.super_class = PSPointerShape;
  result = [(PSPointerShape *)&v10 init];
  if (result)
  {
    *(result + 3) = a3;
    *(result + 8) = x;
    *(result + 9) = y;
    *(result + 10) = width;
    *(result + 11) = height;
  }

  return result;
}

- (void)dealloc
{
  CGPathRelease(self->_path);
  v3.receiver = self;
  v3.super_class = PSPointerShape;
  [(PSPointerShape *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    if (v4->_shapeType != self->_shapeType)
    {
      goto LABEL_8;
    }

    x = v4->_bounds.origin.x;
    y = v4->_bounds.origin.y;
    width = v4->_bounds.size.width;
    height = v4->_bounds.size.height;
    v9 = self->_bounds.origin.x;
    v10 = self->_bounds.origin.y;
    v11 = self->_bounds.size.width;
    v12 = self->_bounds.size.height;
    if (!BSRectEqualToRect())
    {
      goto LABEL_8;
    }

    cornerRadius = v4->_cornerRadius;
    v14 = self->_cornerRadius;
    if (BSFloatEqualToFloat() && CGPathEqualToPath(v4->_path, self->_path))
    {
      v15 = v4->_usesEvenOddFillRule == self->_usesEvenOddFillRule;
    }

    else
    {
LABEL_8:
      v15 = 0;
    }
  }

  return v15;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 activeMultilinePrefix];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __29__PSPointerShape_description__block_invoke;
  v11 = &unk_27839D7E0;
  v12 = v3;
  v13 = self;
  v5 = v3;
  [v5 appendBodySectionWithName:@"PSPointerShape" multilinePrefix:v4 block:&v8];

  v6 = [v5 build];

  return v6;
}

id __29__PSPointerShape_description__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 24) - 1;
  if (v3 > 4)
  {
    v4 = @"PSPointerShapeTypeUnknown";
  }

  else
  {
    v4 = *(&off_27839D800 + v3);
  }

  v5 = [v2 appendObject:v4 withName:@"_shapeType"];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v6 + 48);
  v9 = *(v6 + 56);
  v10 = BSStringFromCGPoint();
  v11 = [v7 appendObject:v10 withName:@"_pinnedPoint"];

  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  v14 = v12[8];
  v15 = v12[9];
  v16 = v12[10];
  v17 = v12[11];
  v18 = BSStringFromCGRect();
  v19 = [v13 appendObject:v18 withName:@"_bounds"];

  v20 = [*(a1 + 32) appendFloat:@"_cornerRadius" withName:*(*(a1 + 40) + 32)];
  v21 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"_cornerCurve"];
  v22 = *(a1 + 40);
  v23 = *(v22 + 8);
  if (v23)
  {
    v24 = *(v22 + 8);
    if (CGPathGetNumberOfPoints() <= 0x100)
    {
      BoundingBox = CGPathGetBoundingBox(v23);
      if (BoundingBox.size.width <= 10000.0 && BoundingBox.size.height <= 10000.0)
      {
        v25 = objc_alloc_init(MEMORY[0x277CBEB28]);
        CGPathApply(*(*(a1 + 40) + 8), v25, __encodePathElementIntoData);
        v26 = [*(a1 + 32) appendObject:v25 withName:@"_path"];
      }
    }
  }

  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 16) withName:@"_usesEvenOddFillRule"];
}

- (PSPointerShape)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PSPointerShape;
  v5 = [(PSPointerShape *)&v23 init];
  if (v5)
  {
    v5->_shapeType = [v4 decodeIntegerForKey:@"shapeType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pinnedPoint"];
    [v6 bs_CGPointValue];
    v5->_pinnedPoint.x = v7;
    v5->_pinnedPoint.y = v8;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bounds"];
    [v9 bs_CGRectValue];
    v5->_bounds.origin.x = v10;
    v5->_bounds.origin.y = v11;
    v5->_bounds.size.width = v12;
    v5->_bounds.size.height = v13;

    [v4 decodeDoubleForKey:@"cornerRadius"];
    v5->_cornerRadius = v14;
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cornerCurve"];
    cornerCurve = v5->_cornerCurve;
    v5->_cornerCurve = v15;

    v5->_usesEvenOddFillRule = [v4 decodeBoolForKey:@"fillRule"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    if ([v17 length])
    {
      v18 = [(PSPointerShape *)v5 _createMutablePathByDecodingData:v17];
      if (CGPathGetNumberOfPoints() > 0x100 || (BoundingBox = CGPathGetBoundingBox(v18), BoundingBox.size.width > 10000.0) || BoundingBox.size.height > 10000.0)
      {
        v19 = PSLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [PSPointerShape initWithCoder:v19];
        }

        v20 = *(MEMORY[0x277CBF3A0] + 16);
        v5->_bounds.origin = *MEMORY[0x277CBF3A0];
        v5->_bounds.size = v20;
        v5->_shapeType = 1;
        v5->_cornerRadius = 0.0;
        v21 = v5->_cornerCurve;
        v5->_cornerCurve = 0;

        v5->_usesEvenOddFillRule = 0;
      }

      else
      {
        v5->_path = MEMORY[0x223D6A430](v18);
      }

      CGPathRelease(v18);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeInteger:self->_shapeType forKey:@"shapeType"];
  v4 = [MEMORY[0x277CCAE60] bs_valueWithCGPoint:{self->_pinnedPoint.x, self->_pinnedPoint.y}];
  [v7 encodeObject:v4 forKey:@"pinnedPoint"];

  v5 = [MEMORY[0x277CCAE60] bs_valueWithCGRect:{self->_bounds.origin.x, self->_bounds.origin.y, self->_bounds.size.width, self->_bounds.size.height}];
  [v7 encodeObject:v5 forKey:@"bounds"];

  [v7 encodeDouble:@"cornerRadius" forKey:self->_cornerRadius];
  [v7 encodeObject:self->_cornerCurve forKey:@"cornerCurve"];
  if (self->_path)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
    CGPathApply(self->_path, v6, __encodePathElementIntoData);
    [v7 encodeObject:v6 forKey:@"path"];
    [v7 encodeBool:self->_usesEvenOddFillRule forKey:@"fillRule"];
  }
}

- (CGSize)size
{
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPath)_createMutablePathByDecodingData:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 length];
  if (v4)
  {
    v5 = v4;
    Mutable = CGPathCreateMutable();
    v7 = [v3 bytes];
    v8 = 0;
    v18 = *MEMORY[0x277CBF348];
    do
    {
      v10 = *(v7 + v8);
      v9 = *(v7 + v8 + 4);
      v19 = v18;
      v20 = v18;
      v21 = v18;
      if (v10 > 3)
      {
        v11 = 0;
      }

      else
      {
        v11 = dword_21ED47830[v10];
      }

      v12 = v8 + 8;
      if (v9 != v11 || v9 == 0)
      {
        v8 += 8;
      }

      else
      {
        v14 = &v19;
        v15 = v9;
        do
        {
          v8 = v12 + 8;
          *v14++ = vcvtq_f64_f32(*(v7 + v12));
          v12 += 8;
          --v15;
        }

        while (v15);
      }

      if (v10 <= 1)
      {
        if (v10)
        {
          if (v10 == 1)
          {
            if (v9 != v11)
            {
              [PSPointerShape _createMutablePathByDecodingData:];
            }

            CGPathAddLineToPoint(Mutable, 0, *&v19, *(&v19 + 1));
          }
        }

        else
        {
          if (v9 != v11)
          {
            [PSPointerShape _createMutablePathByDecodingData:];
          }

          CGPathMoveToPoint(Mutable, 0, *&v19, *(&v19 + 1));
        }
      }

      else
      {
        switch(v10)
        {
          case 2:
            if (v9 != v11)
            {
              [PSPointerShape _createMutablePathByDecodingData:];
            }

            CGPathAddQuadCurveToPoint(Mutable, 0, *&v19, *(&v19 + 1), *&v20, *(&v20 + 1));
            break;
          case 3:
            if (v9 != v11)
            {
              [PSPointerShape _createMutablePathByDecodingData:];
            }

            CGPathAddCurveToPoint(Mutable, 0, *&v19, *(&v19 + 1), *&v20, *(&v20 + 1), *&v21, *(&v21 + 1));
            break;
          case 4:
            if (v9 != v11)
            {
              [PSPointerShape _createMutablePathByDecodingData:];
            }

            CGPathCloseSubpath(Mutable);
            break;
        }
      }
    }

    while (v8 < v5);
  }

  else
  {
    Mutable = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return Mutable;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)pinnedPoint
{
  x = self->_pinnedPoint.x;
  y = self->_pinnedPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_createMutablePathByDecodingData:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_createMutablePathByDecodingData:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_createMutablePathByDecodingData:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_createMutablePathByDecodingData:.cold.4()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_createMutablePathByDecodingData:.cold.5()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end