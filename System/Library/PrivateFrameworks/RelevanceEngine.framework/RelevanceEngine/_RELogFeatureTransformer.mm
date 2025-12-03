@interface _RELogFeatureTransformer
- (BOOL)_validateWithFeatures:(id)features;
- (BOOL)isEqual:(id)equal;
- (_RELogFeatureTransformer)initWithBase:(id)base;
- (unint64_t)_createTransformFromValues:(unint64_t *)values count:(unint64_t)count;
- (unint64_t)hash;
@end

@implementation _RELogFeatureTransformer

- (_RELogFeatureTransformer)initWithBase:(id)base
{
  baseCopy = base;
  v12.receiver = self;
  v12.super_class = _RELogFeatureTransformer;
  v5 = [(REFeatureTransformer *)&v12 init];
  if (v5)
  {
    if ([baseCopy type] == 1)
    {
      int64Value = [baseCopy int64Value];
    }

    else
    {
      [baseCopy doubleValue];
    }

    v5->_base = int64Value;
    v5->_type = 3;
    v7 = int64Value;
    if (fabsf(v7 + -2.7183) >= 0.00000011921)
    {
      if (fabsf(v7 + -2.0) >= 0.00000011921)
      {
        if (fabsf(v7 + -10.0) >= 0.00000011921)
        {
          v9 = log(int64Value);
          v5->_base = v9;
          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", *&v9];
        }

        else
        {
          v5->_type = 2;
          v8 = @"10";
        }
      }

      else
      {
        v5->_type = 1;
        v8 = @"2";
      }
    }

    else
    {
      v5->_type = 0;
      v8 = @"e";
    }

    v10 = [@"Log" stringByAppendingString:v8];
    [(REFeatureTransformer *)v5 setName:v10];
  }

  return v5;
}

- (unint64_t)_createTransformFromValues:(unint64_t *)values count:(unint64_t)count
{
  v5 = *values;
  if (REFeatureValueTypeForTaggedPointer(*values) == 1)
  {
    v7 = REIntegerValueForTaggedPointer(v5);
  }

  else
  {
    v7 = REDoubleValueForTaggedPointer(v5, v6);
  }

  type = self->_type;
  if (type > 1)
  {
    if (type == 2)
    {
      log10(v7);
    }

    else if (type == 3 && fabs(self->_base) >= 0.0000001)
    {
      log(v7);
    }
  }

  else if (type)
  {
    if (type == 1)
    {
      log2(v7);
    }
  }

  else
  {
    log(v7);
  }

  return RECreateDoubleFeatureValueTaggedPointer();
}

- (BOOL)_validateWithFeatures:(id)features
{
  firstObject = [features firstObject];
  v4 = [firstObject featureType] == 2;

  return v4;
}

- (unint64_t)hash
{
  if (self->_type != 3)
  {
    return self->_type;
  }

  v2 = [MEMORY[0x277CCABB0] numberWithDouble:self->_base];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  type = self->_type;
  v6 = equalCopy->_type;
  if (type == 3 && v6 == 3)
  {
    base = self->_base;
    v10 = equalCopy->_base;
    v8 = vabds_f32(base, v10) < 0.00000011921;
    goto LABEL_11;
  }

  if (type == v6)
  {
LABEL_8:
    v8 = 1;
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

LABEL_11:

  return v8;
}

@end