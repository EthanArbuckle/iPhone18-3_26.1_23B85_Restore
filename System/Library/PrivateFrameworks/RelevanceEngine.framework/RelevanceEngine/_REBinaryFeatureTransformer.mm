@interface _REBinaryFeatureTransformer
- (BOOL)_validateWithFeatures:(id)features;
- (BOOL)isEqual:(id)equal;
- (_REBinaryFeatureTransformer)init;
- (unint64_t)_createTransformFromValues:(unint64_t *)values count:(unint64_t)count;
- (void)configureWithInvocation:(id)invocation;
- (void)dealloc;
- (void)setThreshold:(unint64_t)threshold;
@end

@implementation _REBinaryFeatureTransformer

- (_REBinaryFeatureTransformer)init
{
  v4.receiver = self;
  v4.super_class = _REBinaryFeatureTransformer;
  v2 = [(REFeatureTransformer *)&v4 init];
  if (v2)
  {
    [(_REBinaryFeatureTransformer *)v2 setThreshold:RECreateIntegerFeatureValueTaggedPointer(0)];
    [(REFeatureTransformer *)v2 setName:@"Binary"];
  }

  return v2;
}

- (void)dealloc
{
  [(_REBinaryFeatureTransformer *)self setThreshold:0];
  v3.receiver = self;
  v3.super_class = _REBinaryFeatureTransformer;
  [(_REBinaryFeatureTransformer *)&v3 dealloc];
}

- (void)setThreshold:(unint64_t)threshold
{
  RERetainFeatureValueTaggedPointer(threshold);
  REReleaseFeatureValueTaggedPointer(self->_threshold);
  self->_threshold = threshold;
}

- (void)configureWithInvocation:(id)invocation
{
  invocationCopy = invocation;
  if ([invocationCopy numberOfArguments] == 1)
  {
    -[_REBinaryFeatureTransformer setThreshold:](self, "setThreshold:", [invocationCopy getArgumentAtIndex:0]);
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Expecting one argument in the invocation", v4, v5, v6, v7, v8, v9, v10);
  }
}

- (unint64_t)_createTransformFromValues:(unint64_t *)values count:(unint64_t)count
{
  v4 = RECompareFeatureValues(*values, self->_threshold) == 1;

  return RECreateBooleanFeatureValueTaggedPointer(v4);
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
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      threshold = self->_threshold;
      v7 = v5->_threshold;
      if (threshold == v7)
      {
        v8 = 1;
      }

      else
      {
        v9 = REFeatureValueTypeForTaggedPointer(threshold);
        if (v9 == REFeatureValueTypeForTaggedPointer(v7))
        {
          v10 = REFeatureValueForTaggedPointer(threshold);
          v11 = REFeatureValueForTaggedPointer(v7);
          v8 = [v10 isEqual:v11];
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end