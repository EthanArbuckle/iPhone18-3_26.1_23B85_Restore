@interface PRPosterContentGradientStyle
+ (void)performClassReplacementForKeyedUnarchiver:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (NSArray)colors;
- (NSString)nonVariatedIdentifier;
- (PRPosterContentGradientStyle)initWithCoder:(id)a3;
- (PRPosterContentGradientStyle)initWithColors:(id)a3 gradientType:(unint64_t)a4 locations:(id)a5 startPoint:(CGPoint)a6 endPoint:(CGPoint)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)applyStyleWithRenderer:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterContentGradientStyle

- (PRPosterContentGradientStyle)initWithColors:(id)a3 gradientType:(unint64_t)a4 locations:(id)a5 startPoint:(CGPoint)a6 endPoint:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  v9 = a6.y;
  v10 = a6.x;
  v14 = a3;
  v15 = a5;
  v22.receiver = self;
  v22.super_class = PRPosterContentGradientStyle;
  v16 = [(PRPosterContentGradientStyle *)&v22 init];
  if (v16)
  {
    v17 = [v14 copy];
    colors = v16->_colors;
    v16->_colors = v17;

    v16->_gradientType = a4;
    v19 = [v15 copy];
    locations = v16->_locations;
    v16->_locations = v19;

    v16->_startPoint.x = v10;
    v16->_startPoint.y = v9;
    v16->_endPoint.x = x;
    v16->_endPoint.y = y;
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PRPosterContentGradientStyle *)self colors];
      v7 = [(PRPosterContentGradientStyle *)v5 colors];
      v8 = [v6 isEqualToArray:v7];

      if (v8 && self->_gradientType == v5->_gradientType && (-[PRPosterContentGradientStyle locations](self, "locations"), v9 = objc_claimAutoreleasedReturnValue(), -[PRPosterContentGradientStyle locations](v5, "locations"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqualToArray:v10], v10, v9, v11) && BSPointEqualToPoint())
      {
        v12 = BSPointEqualToPoint();
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E698E6B8]);
  v4 = [v3 appendObject:self->_colors];
  v5 = [v3 appendUnsignedInteger:self->_gradientType];
  v6 = [v3 appendObject:self->_locations];
  v7 = [v3 appendCGPoint:{self->_startPoint.x, self->_startPoint.y}];
  v8 = [v3 appendCGPoint:{self->_endPoint.x, self->_endPoint.y}];
  v9 = [v3 hash];

  return v9;
}

- (NSString)nonVariatedIdentifier
{
  v18[6] = *MEMORY[0x1E69E9840];
  v3 = _PRPosterContentStyleStringForType([(PRPosterContentGradientStyle *)self type]);
  gradientType = self->_gradientType;
  v5 = @"A";
  if (gradientType == 1)
  {
    v5 = @"R";
  }

  if (gradientType == 2)
  {
    v6 = @"C";
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  v8 = [(PRPosterContentGradientStyle *)self colors];
  v9 = [v8 bs_map:&__block_literal_global_212];
  v10 = [v9 componentsJoinedByString:@"_"];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray hash](self->_locations, "hash")}];
  v12 = [v11 stringValue];

  v13 = NSStringFromCGPoint(self->_startPoint);
  v14 = NSStringFromCGPoint(self->_endPoint);
  v18[0] = v3;
  v18[1] = v7;
  v18[2] = v10;
  v18[3] = v12;
  v18[4] = v13;
  v18[5] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:6];

  v16 = [v15 componentsJoinedByString:@"-"];

  return v16;
}

uint64_t __53__PRPosterContentGradientStyle_nonVariatedIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 hash];

  return [v2 numberWithUnsignedInteger:v3];
}

- (NSArray)colors
{
  v2 = [(NSArray *)self->_colors copy];

  return v2;
}

- (void)applyStyleWithRenderer:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 renderGradientStyle:self];
  }
}

- (PRPosterContentGradientStyle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:*MEMORY[0x1E69C5490]];
  v6 = [v4 decodeIntegerForKey:*MEMORY[0x1E69C54A0]];
  v7 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:*MEMORY[0x1E69C54A8]];
  v8 = *MEMORY[0x1E69C54B0];
  [v4 decodeCGPointForKey:*MEMORY[0x1E69C54B0]];
  v10 = v9;
  v12 = v11;
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v8];
  v16 = CGPointFromString(v13);
  y = v16.y;
  x = v16.x;
  v17 = *MEMORY[0x1E695EFF8];
  v18 = *(MEMORY[0x1E695EFF8] + 8);
  if (v10 == v16.x && v12 == v16.y)
  {
    y = v12;
    x = v10;
  }

  v19 = v10 == v17 && v12 == v18;
  if (v19)
  {
    v12 = y;
  }

  if (v19)
  {
    v10 = x;
  }

  v20 = *MEMORY[0x1E69C5498];
  [v4 decodeCGPointForKey:{*MEMORY[0x1E69C5498], x, y}];
  v22 = v21;
  v24 = v23;
  v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v20];
  v28 = CGPointFromString(v25);
  v27 = v28.y;
  v26 = v28.x;
  if (v22 == v28.x && v24 == v28.y)
  {
    v26 = v22;
    v27 = v24;
  }

  v29 = v22 == v17 && v24 == v18;
  if (v29)
  {
    v30 = v26;
  }

  else
  {
    v30 = v22;
  }

  if (v29)
  {
    v31 = v27;
  }

  else
  {
    v31 = v24;
  }

  v32 = [(PRPosterContentGradientStyle *)self initWithColors:v5 gradientType:v6 locations:v7 startPoint:v10 endPoint:v12, v30, v31];

  return v32;
}

- (void)encodeWithCoder:(id)a3
{
  colors = self->_colors;
  v5 = *MEMORY[0x1E69C5490];
  v6 = a3;
  [v6 encodeObject:colors forKey:v5];
  [v6 encodeInteger:self->_gradientType forKey:*MEMORY[0x1E69C54A0]];
  [v6 encodeObject:self->_locations forKey:*MEMORY[0x1E69C54A8]];
  v7 = NSStringFromCGPoint(self->_startPoint);
  [v6 encodeObject:v7 forKey:*MEMORY[0x1E69C54B0]];

  v8 = NSStringFromCGPoint(self->_endPoint);
  [v6 encodeObject:v8 forKey:*MEMORY[0x1E69C5498]];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRPosterContentGradientStyle alloc];
  locations = self->_locations;
  gradientType = self->_gradientType;
  colors = self->_colors;
  x = self->_startPoint.x;
  y = self->_startPoint.y;
  v10 = self->_endPoint.x;
  v11 = self->_endPoint.y;

  return [(PRPosterContentGradientStyle *)v4 initWithColors:colors gradientType:gradientType locations:locations startPoint:x endPoint:y, v10, v11];
}

- (CGPoint)startPoint
{
  x = self->_startPoint.x;
  y = self->_startPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)endPoint
{
  x = self->_endPoint.x;
  y = self->_endPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

+ (void)performClassReplacementForKeyedUnarchiver:(id)a3
{
  sub_1A8BDDB04();
  v4 = a3;
  sub_1A8BDDAF4();
}

@end