@interface PUIStyleGradient
- (BOOL)isEqual:(id)a3 ignoringVariation:(BOOL)a4;
- (BOOL)isEqualToStyle:(id)a3 ignoringVariation:(BOOL)a4;
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (NSArray)colors;
- (NSString)nonVariatedIdentifier;
- (PUIStyleGradient)initWithCoder:(id)a3;
- (PUIStyleGradient)initWithColors:(id)a3 gradientType:(unint64_t)a4 locations:(id)a5 startPoint:(CGPoint)a6 endPoint:(CGPoint)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PUIStyleGradient

- (PUIStyleGradient)initWithColors:(id)a3 gradientType:(unint64_t)a4 locations:(id)a5 startPoint:(CGPoint)a6 endPoint:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  v9 = a6.y;
  v10 = a6.x;
  v14 = a3;
  v15 = a5;
  v22.receiver = self;
  v22.super_class = PUIStyleGradient;
  v16 = [(PUIStyleGradient *)&v22 init];
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

- (BOOL)isEqual:(id)a3 ignoringVariation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && [(PUIStyleGradient *)self isEqualToStyle:v6 ignoringVariation:v4];
  }

  return v7;
}

- (BOOL)isEqualToStyle:(id)a3 ignoringVariation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6 == self)
  {
    v15 = 1;
  }

  else if (v6 && _PUIStyleCompareUsingIdentifiers(self, v6, v4))
  {
    v8 = v7;
    v9 = [(PUIStyleGradient *)self colors];
    v10 = [(PUIStyleGradient *)v8 colors];
    v11 = [v9 isEqualToArray:v10];

    if (v11 && self->_gradientType == v8->_gradientType && (-[PUIStyleGradient locations](self, "locations"), v12 = objc_claimAutoreleasedReturnValue(), -[PUIStyleGradient locations](v8, "locations"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v12 isEqualToArray:v13], v13, v12, v14) && BSPointEqualToPoint())
    {
      v15 = BSPointEqualToPoint();
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
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
  v3 = NSStringFromPUIStyleType([(PUIStyleGradient *)self type]);
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
  v8 = [(PUIStyleGradient *)self colors];
  v9 = [v8 bs_map:&__block_literal_global_198];
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

uint64_t __41__PUIStyleGradient_nonVariatedIdentifier__block_invoke(uint64_t a1, void *a2)
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

- (PUIStyleGradient)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"colors"];
  v6 = [v4 decodeIntegerForKey:@"gradientType"];
  v7 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"locations"];
  [v4 decodeCGPointForKey:@"startPoint"];
  v9 = v8;
  v11 = v10;
  [v4 decodeCGPointForKey:@"endPoint"];
  v13 = v12;
  v15 = v14;

  v16 = [(PUIStyleGradient *)self initWithColors:v5 gradientType:v6 locations:v7 startPoint:v9 endPoint:v11, v13, v15];
  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  colors = self->_colors;
  v5 = a3;
  [v5 encodeObject:colors forKey:@"colors"];
  [v5 encodeInteger:self->_gradientType forKey:@"gradientType"];
  [v5 encodeObject:self->_locations forKey:@"locations"];
  [v5 encodeCGPoint:@"startPoint" forKey:{self->_startPoint.x, self->_startPoint.y}];
  [v5 encodeCGPoint:@"endPoint" forKey:{self->_endPoint.x, self->_endPoint.y}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  locations = self->_locations;
  gradientType = self->_gradientType;
  colors = self->_colors;
  x = self->_startPoint.x;
  y = self->_startPoint.y;
  v10 = self->_endPoint.x;
  v11 = self->_endPoint.y;

  return [v4 initWithColors:colors gradientType:gradientType locations:locations startPoint:x endPoint:{y, v10, v11}];
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

@end