@interface _REBlockFeatureTransformer
- (BOOL)isEqual:(id)equal;
- (_REBlockFeatureTransformer)initWithFeatureCount:(unint64_t)count outputFeatureType:(unint64_t)type transformation:(id)transformation;
- (unint64_t)_createTransformFromValues:(unint64_t *)values count:(unint64_t)count;
@end

@implementation _REBlockFeatureTransformer

- (_REBlockFeatureTransformer)initWithFeatureCount:(unint64_t)count outputFeatureType:(unint64_t)type transformation:(id)transformation
{
  transformationCopy = transformation;
  v14.receiver = self;
  v14.super_class = _REBlockFeatureTransformer;
  v9 = [(REFeatureTransformer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_featureCount = count;
    v9->_outputFeatureType = type;
    v11 = MEMORY[0x22AABC5E0](transformationCopy);
    block = v10->_block;
    v10->_block = v11;
  }

  return v10;
}

- (unint64_t)_createTransformFromValues:(unint64_t *)values count:(unint64_t)count
{
  if (!self->_block)
  {
    return 0;
  }

  countCopy = count;
  for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
  {
    v8 = *values++;
    v9 = REFeatureValueForTaggedPointer(v8);
    [i addObject:v9];
  }

  v10 = (*(self->_block + 2))();
  v11 = RECreateFeatureValueTaggedPointer(v10);

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = MEMORY[0x22AABC5E0](self->_block);
      v7 = MEMORY[0x22AABC5E0](v5->_block);
      v8 = (v6 == v7 || [v6 isEqual:v7]) && self->_featureCount == v5->_featureCount && self->_outputFeatureType == v5->_outputFeatureType;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end