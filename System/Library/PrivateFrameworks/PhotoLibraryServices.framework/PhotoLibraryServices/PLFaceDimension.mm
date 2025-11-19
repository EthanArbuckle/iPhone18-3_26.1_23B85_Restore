@interface PLFaceDimension
- (PLFaceDimension)initWithSourceWidth:(int64_t)a3 sourceHeight:(int64_t)a4 centerX:(double)a5 centerY:(double)a6 size:(double)a7 bodyCenterX:(double)a8 bodyCenterY:(double)a9 bodyWidth:(double)a10 bodyHeight:(double)a11;
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

- (PLFaceDimension)initWithSourceWidth:(int64_t)a3 sourceHeight:(int64_t)a4 centerX:(double)a5 centerY:(double)a6 size:(double)a7 bodyCenterX:(double)a8 bodyCenterY:(double)a9 bodyWidth:(double)a10 bodyHeight:(double)a11
{
  v21.receiver = self;
  v21.super_class = PLFaceDimension;
  result = [(PLFaceDimension *)&v21 init];
  if (result)
  {
    result->_sourceWidth = a3;
    result->_sourceHeight = a4;
    result->_centerX = a5;
    result->_centerY = a6;
    result->_size = a7;
    result->_bodyCenterX = a8;
    result->_bodyCenterY = a9;
    result->_bodyWidth = a10;
    result->_bodyHeight = a11;
  }

  return result;
}

@end