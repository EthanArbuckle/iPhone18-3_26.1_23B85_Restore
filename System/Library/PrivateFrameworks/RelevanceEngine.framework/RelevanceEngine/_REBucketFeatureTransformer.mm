@interface _REBucketFeatureTransformer
- (BOOL)_validateWithFeatures:(id)features;
- (BOOL)isEqual:(id)equal;
- (_REBucketFeatureTransformer)init;
- (unint64_t)_createTransformFromValues:(unint64_t *)values count:(unint64_t)count;
- (void)_updateConfigurationForCount:(unint64_t)count;
- (void)configureWithInvocation:(id)invocation;
- (void)dealloc;
- (void)setMax:(unint64_t)max;
- (void)setMin:(unint64_t)min;
@end

@implementation _REBucketFeatureTransformer

- (_REBucketFeatureTransformer)init
{
  v5.receiver = self;
  v5.super_class = _REBucketFeatureTransformer;
  v2 = [(REFeatureTransformer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_REBucketFeatureTransformer *)v2 _updateConfigurationForCount:10];
    [(_REBucketFeatureTransformer *)v3 setMin:RECreateDoubleFeatureValueTaggedPointer()];
    [(_REBucketFeatureTransformer *)v3 setMax:RECreateDoubleFeatureValueTaggedPointer()];
  }

  return v3;
}

- (void)dealloc
{
  [(_REBucketFeatureTransformer *)self setMin:0];
  [(_REBucketFeatureTransformer *)self setMax:0];
  v3.receiver = self;
  v3.super_class = _REBucketFeatureTransformer;
  [(_REBucketFeatureTransformer *)&v3 dealloc];
}

- (void)setMin:(unint64_t)min
{
  RERetainFeatureValueTaggedPointer(min);
  REReleaseFeatureValueTaggedPointer(self->_min);
  self->_min = min;
}

- (void)setMax:(unint64_t)max
{
  RERetainFeatureValueTaggedPointer(max);
  REReleaseFeatureValueTaggedPointer(self->_max);
  self->_max = max;
}

- (void)_updateConfigurationForCount:(unint64_t)count
{
  self->_count = count;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bucket%lu", count];
  [(REFeatureTransformer *)self setName:v4];

  v5 = 64 - __clz(self->_count - 1);
  if (self->_count == 1)
  {
    v5 = 0;
  }

  self->_bitCount = v5;
}

- (void)configureWithInvocation:(id)invocation
{
  invocationCopy = invocation;
  numberOfArguments = [invocationCopy numberOfArguments];
  if ((numberOfArguments & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    v28 = *MEMORY[0x277CBE660];
    v29 = @"Incorrect number of arguments. Expecting one or three arguments";
LABEL_12:
    RERaiseInternalException(v28, v29, v5, v6, v7, v8, v9, v10, v30);
    goto LABEL_13;
  }

  v11 = numberOfArguments;
  v12 = REIntegerValueForTaggedPointer([invocationCopy getArgumentAtIndex:0]);
  if (!v12)
  {
    v28 = *MEMORY[0x277CBE660];
    v29 = @"Invalid number of buckets";
    goto LABEL_12;
  }

  [(_REBucketFeatureTransformer *)self _updateConfigurationForCount:v12];
  if (v11 != 1)
  {
    v13 = [invocationCopy getArgumentAtIndex:1];
    v14 = [invocationCopy getArgumentAtIndex:2];
    if (REFeatureValueTypeForTaggedPointer(v13) != 1 && REFeatureValueTypeForTaggedPointer(v13) != 2)
    {
      RERaiseInternalException(*MEMORY[0x277CBE660], @"Bucket transformer only supports Int64 or Double values types", v15, v16, v17, v18, v19, v20, v30);
    }

    v21 = REFeatureValueTypeForTaggedPointer(v13);
    if (v21 != REFeatureValueTypeForTaggedPointer(v14))
    {
      RERaiseInternalException(*MEMORY[0x277CBE660], @"Bucket transformer min and max value types must match", v22, v23, v24, v25, v26, v27, v30);
    }

    [(_REBucketFeatureTransformer *)self setMin:v13];
    [(_REBucketFeatureTransformer *)self setMax:v14];
  }

LABEL_13:
}

- (unint64_t)_createTransformFromValues:(unint64_t *)values count:(unint64_t)count
{
  if (self->_count)
  {
    v5 = *values;
    v6 = REFeatureValueTypeForTaggedPointer(self->_min);
    v7 = REFeatureValueTypeForTaggedPointer(v5);
    if (v6 == 1)
    {
      if (v7 == 1)
      {
        v9 = REIntegerValueForTaggedPointer(v5);
      }

      else
      {
        v9 = REDoubleValueForTaggedPointer(v5, v8);
      }

      v13 = REIntegerValueForTaggedPointer(self->_min);
      v14 = REIntegerValueForTaggedPointer(self->_max);
      count = self->_count;
      v16 = ((v9 - v13) / ((v14 - v13) / count));
    }

    else
    {
      if (v7 == 1)
      {
        v12 = REIntegerValueForTaggedPointer(v5);
      }

      else
      {
        v12 = REDoubleValueForTaggedPointer(v5, v8);
      }

      v17 = REDoubleValueForTaggedPointer(self->_min, v11);
      v19 = REDoubleValueForTaggedPointer(self->_max, v18);
      count = self->_count;
      v16 = ((v12 - v17) / ((v19 - v17) / count));
    }

    if (v16 >= count)
    {
      v20 = count - 1;
    }

    else
    {
      v20 = v16;
    }

    if (v16 >= 0)
    {
      v10 = v20;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return RECreateIntegerFeatureValueTaggedPointer(v10);
}

- (BOOL)_validateWithFeatures:(id)features
{
  firstObject = [features firstObject];
  v4 = [firstObject featureType] == 2;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      min = self->_min;
      v7 = v5->_min;
      if (min != v7)
      {
        v11 = REFeatureValueTypeForTaggedPointer(self->_min);
        if (v11 != REFeatureValueTypeForTaggedPointer(v7))
        {
          goto LABEL_14;
        }

        v12 = REFeatureValueForTaggedPointer(min);
        v13 = REFeatureValueForTaggedPointer(v7);
        v14 = [v12 isEqual:v13];

        if (!v14)
        {
          goto LABEL_14;
        }
      }

      max = self->_max;
      v9 = v5->_max;
      if (max != v9)
      {
        v15 = REFeatureValueTypeForTaggedPointer(self->_max);
        if (v15 != REFeatureValueTypeForTaggedPointer(v9))
        {
          goto LABEL_14;
        }

        v16 = REFeatureValueForTaggedPointer(max);
        v17 = REFeatureValueForTaggedPointer(v9);
        v18 = [v16 isEqual:v17];

        if (!v18)
        {
          goto LABEL_14;
        }
      }

      if (self->_count == v5->_count)
      {
        v10 = self->_bitCount == v5->_bitCount;
      }

      else
      {
LABEL_14:
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end