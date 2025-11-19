@interface _REBinaryFeatureTransformer
- (BOOL)_validateWithFeatures:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_REBinaryFeatureTransformer)init;
- (unint64_t)_createTransformFromValues:(unint64_t *)a3 count:(unint64_t)a4;
- (void)configureWithInvocation:(id)a3;
- (void)dealloc;
- (void)setThreshold:(unint64_t)a3;
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

- (void)setThreshold:(unint64_t)a3
{
  RERetainFeatureValueTaggedPointer(a3);
  REReleaseFeatureValueTaggedPointer(self->_threshold);
  self->_threshold = a3;
}

- (void)configureWithInvocation:(id)a3
{
  v11 = a3;
  if ([v11 numberOfArguments] == 1)
  {
    -[_REBinaryFeatureTransformer setThreshold:](self, "setThreshold:", [v11 getArgumentAtIndex:0]);
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Expecting one argument in the invocation", v4, v5, v6, v7, v8, v9, v10);
  }
}

- (unint64_t)_createTransformFromValues:(unint64_t *)a3 count:(unint64_t)a4
{
  v4 = RECompareFeatureValues(*a3, self->_threshold) == 1;

  return RECreateBooleanFeatureValueTaggedPointer(v4);
}

- (BOOL)_validateWithFeatures:(id)a3
{
  v3 = [a3 firstObject];
  v4 = [v3 featureType] == 2;

  return v4;
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