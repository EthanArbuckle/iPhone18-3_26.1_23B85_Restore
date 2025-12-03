@interface _REWidthFeatureTransformer
- (BOOL)_validateWithFeatures:(id)features;
- (BOOL)isEqual:(id)equal;
- (_REWidthFeatureTransformer)initWithWidth:(unint64_t)width shift:(unint64_t)shift;
- (unint64_t)_createTransformFromValues:(unint64_t *)values count:(unint64_t)count;
@end

@implementation _REWidthFeatureTransformer

- (_REWidthFeatureTransformer)initWithWidth:(unint64_t)width shift:(unint64_t)shift
{
  v13.receiver = self;
  v13.super_class = _REWidthFeatureTransformer;
  v6 = [(REFeatureTransformer *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_width = width;
    v6->_shift = shift;
    width = v6->_width;
    v9 = -1;
    if (width <= 0x3F)
    {
      v9 = ~(-1 << width);
    }

    v6->_mask = v9;
    if (shift)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Mask%luShift%lu", width, shift];
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

- (unint64_t)_createTransformFromValues:(unint64_t *)values count:(unint64_t)count
{
  v4 = self->_mask & (REIntegerValueForTaggedPointer(*values) >> self->_shift);

  return RECreateIntegerFeatureValueTaggedPointer(v4);
}

- (BOOL)_validateWithFeatures:(id)features
{
  firstObject = [features firstObject];
  featureType = [firstObject featureType];

  return (featureType - 1) < 2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_width == equalCopy->_width && self->_shift == equalCopy->_shift;
  }

  return v5;
}

@end