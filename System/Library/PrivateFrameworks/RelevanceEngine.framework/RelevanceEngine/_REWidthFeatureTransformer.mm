@interface _REWidthFeatureTransformer
- (BOOL)_validateWithFeatures:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_REWidthFeatureTransformer)initWithWidth:(unint64_t)a3 shift:(unint64_t)a4;
- (unint64_t)_createTransformFromValues:(unint64_t *)a3 count:(unint64_t)a4;
@end

@implementation _REWidthFeatureTransformer

- (_REWidthFeatureTransformer)initWithWidth:(unint64_t)a3 shift:(unint64_t)a4
{
  v13.receiver = self;
  v13.super_class = _REWidthFeatureTransformer;
  v6 = [(REFeatureTransformer *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_width = a3;
    v6->_shift = a4;
    width = v6->_width;
    v9 = -1;
    if (width <= 0x3F)
    {
      v9 = ~(-1 << width);
    }

    v6->_mask = v9;
    if (a4)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Mask%luShift%lu", width, a4];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Mask%lu", width, v12];
    }
    v10 = ;
    [(REFeatureTransformer *)v7 setName:v10];
  }

  return v7;
}

- (unint64_t)_createTransformFromValues:(unint64_t *)a3 count:(unint64_t)a4
{
  v4 = self->_mask & (REIntegerValueForTaggedPointer(*a3) >> self->_shift);

  return RECreateIntegerFeatureValueTaggedPointer(v4);
}

- (BOOL)_validateWithFeatures:(id)a3
{
  v3 = [a3 firstObject];
  v4 = [v3 featureType];

  return (v4 - 1) < 2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_width == v4->_width && self->_shift == v4->_shift;
  }

  return v5;
}

@end