@interface PXGGradient
- (BOOL)isEqual:(id)equal;
- (PXGGradient)init;
- (PXGGradient)initWithStartingColor:(id)color endingColor:(id)endingColor direction:(int64_t)direction;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXGGradient

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p startingColor = %@; endingColor = %@; direction = %ld>", v5, self, self->_startingColor, self->_endingColor, self->_direction];;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      startingColor = [(PXGGradient *)self startingColor];
      startingColor2 = [(PXGGradient *)v5 startingColor];
      if ([startingColor isEqual:startingColor2])
      {
        endingColor = [(PXGGradient *)self endingColor];
        endingColor2 = [(PXGGradient *)v5 endingColor];
        if ([endingColor isEqual:endingColor2])
        {
          direction = [(PXGGradient *)self direction];
          v11 = direction == [(PXGGradient *)v5 direction];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  startingColor = [(PXGGradient *)self startingColor];
  v4 = [startingColor hash];
  endingColor = [(PXGGradient *)self endingColor];
  v6 = v4 ^ (2 * [endingColor hash]);

  return v6;
}

- (PXGGradient)initWithStartingColor:(id)color endingColor:(id)endingColor direction:(int64_t)direction
{
  colorCopy = color;
  endingColorCopy = endingColor;
  v14.receiver = self;
  v14.super_class = PXGGradient;
  v11 = [(PXGGradient *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_startingColor, color);
    objc_storeStrong(&v12->_endingColor, endingColor);
    v12->_direction = direction;
  }

  return v12;
}

- (PXGGradient)init
{
  clearColor = [MEMORY[0x277D75348] clearColor];
  clearColor2 = [MEMORY[0x277D75348] clearColor];
  v5 = [(PXGGradient *)self initWithStartingColor:clearColor endingColor:clearColor2 direction:0];

  return v5;
}

@end