@interface PSPointerShape
+ (id)circleWithBounds:(CGRect)bounds;
+ (id)customShapeWithPath:(CGPath *)path usesEvenOddFillRule:(BOOL)rule;
+ (id)elasticRoundedRectPinnedAtPoint:(CGPoint)point;
+ (id)roundedRectWithBounds:(CGRect)bounds cornerRadius:(double)radius cornerCurve:(id)curve;
+ (id)systemShape;
- (BOOL)isEqual:(id)equal;
- (CGPath)_createMutablePathByDecodingData:(id)data;
- (CGPoint)pinnedPoint;
- (CGRect)bounds;
- (CGSize)size;
- (PSPointerShape)initWithCoder:(id)coder;
- (id)_initWithShapeType:(int64_t)type bounds:(CGRect)bounds;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSPointerShape

+ (id)systemShape
{
  v2 = [self alloc];
  v3 = [v2 _initWithShapeType:1 bounds:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  return v3;
}

+ (id)circleWithBounds:(CGRect)bounds
{
  v3 = [[self alloc] _initWithShapeType:2 bounds:{bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height}];

  return v3;
}

+ (id)roundedRectWithBounds:(CGRect)bounds cornerRadius:(double)radius cornerCurve:(id)curve
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  curveCopy = curve;
  v12 = [[self alloc] _initWithShapeType:3 bounds:{x, y, width, height}];
  *(v12 + 32) = radius;
  v13 = *(v12 + 40);
  *(v12 + 40) = curveCopy;

  return v12;
}

+ (id)elasticRoundedRectPinnedAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v5 = [self alloc];
  v6 = [v5 _initWithShapeType:5 bounds:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v6[6] = x;
  v6[7] = y;

  return v6;
}

+ (id)customShapeWithPath:(CGPath *)path usesEvenOddFillRule:(BOOL)rule
{
  if (CGPathGetNumberOfPoints() <= 0x100)
  {
    BoundingBox = CGPathGetBoundingBox(path);
    if (BoundingBox.size.width <= 10000.0 && BoundingBox.size.height <= 10000.0)
    {
      if (CGPathIsRoundedRect())
      {
        if (BSFloatEqualToFloat())
        {
          v7 = [self roundedRectWithBounds:0.0 cornerRadius:{0.0, 0.0, 0.0, 0.0, 0}];
          goto LABEL_15;
        }
      }

      else if (CGPathIsEllipse())
      {
        v7 = [self circleWithBounds:{0.0, 0.0, 0.0, 0.0, 0}];
LABEL_15:
        systemShape = v7;
        if (v7)
        {
          goto LABEL_10;
        }
      }

      v13 = CGPathGetBoundingBox(path);
      systemShape = [[self alloc] _initWithShapeType:4 bounds:{v13.origin.x, v13.origin.y, v13.size.width, v13.size.height}];
      if (systemShape)
      {
        *(systemShape + 8) = MEMORY[0x223D6A430](path);
        *(systemShape + 16) = rule;
      }

      goto LABEL_10;
    }
  }

  systemShape = [self systemShape];
  v9 = PSLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [PSPointerShape customShapeWithPath:v9 usesEvenOddFillRule:?];
  }

LABEL_10:

  return systemShape;
}

- (id)_initWithShapeType:(int64_t)type bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10.receiver = self;
  v10.super_class = PSPointerShape;
  result = [(PSPointerShape *)&v10 init];
  if (result)
  {
    *(result + 3) = type;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
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

    if (equalCopy->_shapeType != self->_shapeType)
    {
      goto LABEL_8;
    }

    x = equalCopy->_bounds.origin.x;
    y = equalCopy->_bounds.origin.y;
    width = equalCopy->_bounds.size.width;
    height = equalCopy->_bounds.size.height;
    v9 = self->_bounds.origin.x;
    v10 = self->_bounds.origin.y;
    v11 = self->_bounds.size.width;
    v12 = self->_bounds.size.height;
    if (!BSRectEqualToRect())
    {
      goto LABEL_8;
    }

    cornerRadius = equalCopy->_cornerRadius;
    v14 = self->_cornerRadius;
    if (BSFloatEqualToFloat() && CGPathEqualToPath(equalCopy->_path, self->_path))
    {
      v15 = equalCopy->_usesEvenOddFillRule == self->_usesEvenOddFillRule;
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
  activeMultilinePrefix = [v3 activeMultilinePrefix];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __29__PSPointerShape_description__block_invoke;
  v11 = &unk_27839D7E0;
  v12 = v3;
  selfCopy = self;
  v5 = v3;
  [v5 appendBodySectionWithName:@"PSPointerShape" multilinePrefix:activeMultilinePrefix block:&v8];

  build = [v5 build];

  return build;
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

- (PSPointerShape)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = PSPointerShape;
  v5 = [(PSPointerShape *)&v23 init];
  if (v5)
  {
    v5->_shapeType = [coderCopy decodeIntegerForKey:@"shapeType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pinnedPoint"];
    [v6 bs_CGPointValue];
    v5->_pinnedPoint.x = v7;
    v5->_pinnedPoint.y = v8;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bounds"];
    [v9 bs_CGRectValue];
    v5->_bounds.origin.x = v10;
    v5->_bounds.origin.y = v11;
    v5->_bounds.size.width = v12;
    v5->_bounds.size.height = v13;

    [coderCopy decodeDoubleForKey:@"cornerRadius"];
    v5->_cornerRadius = v14;
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cornerCurve"];
    cornerCurve = v5->_cornerCurve;
    v5->_cornerCurve = v15;

    v5->_usesEvenOddFillRule = [coderCopy decodeBoolForKey:@"fillRule"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_shapeType forKey:@"shapeType"];
  v4 = [MEMORY[0x277CCAE60] bs_valueWithCGPoint:{self->_pinnedPoint.x, self->_pinnedPoint.y}];
  [coderCopy encodeObject:v4 forKey:@"pinnedPoint"];

  v5 = [MEMORY[0x277CCAE60] bs_valueWithCGRect:{self->_bounds.origin.x, self->_bounds.origin.y, self->_bounds.size.width, self->_bounds.size.height}];
  [coderCopy encodeObject:v5 forKey:@"bounds"];

  [coderCopy encodeDouble:@"cornerRadius" forKey:self->_cornerRadius];
  [coderCopy encodeObject:self->_cornerCurve forKey:@"cornerCurve"];
  if (self->_path)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
    CGPathApply(self->_path, v6, __encodePathElementIntoData);
    [coderCopy encodeObject:v6 forKey:@"path"];
    [coderCopy encodeBool:self->_usesEvenOddFillRule forKey:@"fillRule"];
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

- (CGPath)_createMutablePathByDecodingData:(id)data
{
  v22 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = [dataCopy length];
  if (v4)
  {
    v5 = v4;
    Mutable = CGPathCreateMutable();
    bytes = [dataCopy bytes];
    v8 = 0;
    v18 = *MEMORY[0x277CBF348];
    do
    {
      v10 = *(bytes + v8);
      v9 = *(bytes + v8 + 4);
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
          *v14++ = vcvtq_f64_f32(*(bytes + v12));
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