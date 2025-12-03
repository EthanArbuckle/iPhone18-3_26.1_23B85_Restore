@interface PLFaceDimension
- (PLFaceDimension)initWithSourceWidth:(int64_t)width sourceHeight:(int64_t)height centerX:(double)x centerY:(double)y size:(double)size bodyCenterX:(double)centerX bodyCenterY:(double)centerY bodyWidth:(double)self0 bodyHeight:(double)self1;
- (id)description;
@end

@implementation PLFaceDimension

- (id)description
{
  if (self->_centerX == 0.0)
  {
    bodyCenterX = self->_bodyCenterX;
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v5 = v9;
    if (bodyCenterX == 0.0)
    {
      [v7 stringWithFormat:@"<%@: %p> zero", v9, self, v12, v13, v14, v15, v16, v17];
    }

    else
    {
      [v7 stringWithFormat:@"<%@: %p> body center: (%f, %f), body size: (%f, %f), width: %ld, height: %ld", v9, self, *&self->_bodyCenterX, *&self->_bodyCenterY, *&self->_bodyWidth, *&self->_bodyHeight, self->_sourceWidth, self->_sourceHeight];
    }
  }

  else
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [v3 stringWithFormat:@"<%@: %p> center: (%f, %f), size: %f, width: %ld, height: %ld", v5, self, *&self->_centerX, *&self->_centerY, *&self->_size, self->_sourceWidth, self->_sourceHeight, v17];
  }
  v10 = ;

  return v10;
}

- (PLFaceDimension)initWithSourceWidth:(int64_t)width sourceHeight:(int64_t)height centerX:(double)x centerY:(double)y size:(double)size bodyCenterX:(double)centerX bodyCenterY:(double)centerY bodyWidth:(double)self0 bodyHeight:(double)self1
{
  v21.receiver = self;
  v21.super_class = PLFaceDimension;
  result = [(PLFaceDimension *)&v21 init];
  if (result)
  {
    result->_sourceWidth = width;
    result->_sourceHeight = height;
    result->_centerX = x;
    result->_centerY = y;
    result->_size = size;
    result->_bodyCenterX = centerX;
    result->_bodyCenterY = centerY;
    result->_bodyWidth = bodyWidth;
    result->_bodyHeight = bodyHeight;
  }

  return result;
}

@end