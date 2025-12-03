@interface PUIStyleGradient
- (BOOL)isEqual:(id)equal ignoringVariation:(BOOL)variation;
- (BOOL)isEqualToStyle:(id)style ignoringVariation:(BOOL)variation;
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (NSArray)colors;
- (NSString)nonVariatedIdentifier;
- (PUIStyleGradient)initWithCoder:(id)coder;
- (PUIStyleGradient)initWithColors:(id)colors gradientType:(unint64_t)type locations:(id)locations startPoint:(CGPoint)point endPoint:(CGPoint)endPoint;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUIStyleGradient

- (PUIStyleGradient)initWithColors:(id)colors gradientType:(unint64_t)type locations:(id)locations startPoint:(CGPoint)point endPoint:(CGPoint)endPoint
{
  y = endPoint.y;
  x = endPoint.x;
  v9 = point.y;
  v10 = point.x;
  colorsCopy = colors;
  locationsCopy = locations;
  v22.receiver = self;
  v22.super_class = PUIStyleGradient;
  v16 = [(PUIStyleGradient *)&v22 init];
  if (v16)
  {
    v17 = [colorsCopy copy];
    colors = v16->_colors;
    v16->_colors = v17;

    v16->_gradientType = type;
    v19 = [locationsCopy copy];
    locations = v16->_locations;
    v16->_locations = v19;

    v16->_startPoint.x = v10;
    v16->_startPoint.y = v9;
    v16->_endPoint.x = x;
    v16->_endPoint.y = y;
  }

  return v16;
}

- (BOOL)isEqual:(id)equal ignoringVariation:(BOOL)variation
{
  variationCopy = variation;
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && [(PUIStyleGradient *)self isEqualToStyle:equalCopy ignoringVariation:variationCopy];
  }

  return v7;
}

- (BOOL)isEqualToStyle:(id)style ignoringVariation:(BOOL)variation
{
  variationCopy = variation;
  styleCopy = style;
  v7 = styleCopy;
  if (styleCopy == self)
  {
    v15 = 1;
  }

  else if (styleCopy && _PUIStyleCompareUsingIdentifiers(self, styleCopy, variationCopy))
  {
    v8 = v7;
    colors = [(PUIStyleGradient *)self colors];
    colors2 = [(PUIStyleGradient *)v8 colors];
    v11 = [colors isEqualToArray:colors2];

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
  colors = [(PUIStyleGradient *)self colors];
  v9 = [colors bs_map:&__block_literal_global_198];
  v10 = [v9 componentsJoinedByString:@"_"];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray hash](self->_locations, "hash")}];
  stringValue = [v11 stringValue];

  v13 = NSStringFromCGPoint(self->_startPoint);
  v14 = NSStringFromCGPoint(self->_endPoint);
  v18[0] = v3;
  v18[1] = v7;
  v18[2] = v10;
  v18[3] = stringValue;
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

- (PUIStyleGradient)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"colors"];
  v6 = [coderCopy decodeIntegerForKey:@"gradientType"];
  v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"locations"];
  [coderCopy decodeCGPointForKey:@"startPoint"];
  v9 = v8;
  v11 = v10;
  [coderCopy decodeCGPointForKey:@"endPoint"];
  v13 = v12;
  v15 = v14;

  v16 = [(PUIStyleGradient *)self initWithColors:v5 gradientType:v6 locations:v7 startPoint:v9 endPoint:v11, v13, v15];
  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  colors = self->_colors;
  coderCopy = coder;
  [coderCopy encodeObject:colors forKey:@"colors"];
  [coderCopy encodeInteger:self->_gradientType forKey:@"gradientType"];
  [coderCopy encodeObject:self->_locations forKey:@"locations"];
  [coderCopy encodeCGPoint:@"startPoint" forKey:{self->_startPoint.x, self->_startPoint.y}];
  [coderCopy encodeCGPoint:@"endPoint" forKey:{self->_endPoint.x, self->_endPoint.y}];
}

- (id)copyWithZone:(_NSZone *)zone
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