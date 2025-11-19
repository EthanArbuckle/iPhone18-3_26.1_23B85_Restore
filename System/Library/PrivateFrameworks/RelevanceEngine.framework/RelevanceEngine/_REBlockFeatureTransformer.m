@interface _REBlockFeatureTransformer
- (BOOL)isEqual:(id)a3;
- (_REBlockFeatureTransformer)initWithFeatureCount:(unint64_t)a3 outputFeatureType:(unint64_t)a4 transformation:(id)a5;
- (unint64_t)_createTransformFromValues:(unint64_t *)a3 count:(unint64_t)a4;
@end

@implementation _REBlockFeatureTransformer

- (_REBlockFeatureTransformer)initWithFeatureCount:(unint64_t)a3 outputFeatureType:(unint64_t)a4 transformation:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = _REBlockFeatureTransformer;
  v9 = [(REFeatureTransformer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_featureCount = a3;
    v9->_outputFeatureType = a4;
    v11 = MEMORY[0x22AABC5E0](v8);
    block = v10->_block;
    v10->_block = v11;
  }

  return v10;
}

- (unint64_t)_createTransformFromValues:(unint64_t *)a3 count:(unint64_t)a4
{
  if (!self->_block)
  {
    return 0;
  }

  v4 = a4;
  for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:a4];
  {
    v8 = *a3++;
    v9 = REFeatureValueForTaggedPointer(v8);
    [i addObject:v9];
  }

  v10 = (*(self->_block + 2))();
  v11 = RECreateFeatureValueTaggedPointer(v10);

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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