@interface _RERecentFeatureTransformer
- (BOOL)_validateWithFeatures:(id)features;
- (BOOL)isEqual:(id)equal;
- (_RERecentFeatureTransformer)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)_createTransformFromValues:(unint64_t *)values count:(unint64_t)count;
- (unint64_t)hash;
- (void)_updateConfigurationForCount:(unint64_t)count;
- (void)configureWithInvocation:(id)invocation;
@end

@implementation _RERecentFeatureTransformer

- (_RERecentFeatureTransformer)init
{
  v6.receiver = self;
  v6.super_class = _RERecentFeatureTransformer;
  v2 = [(REFeatureTransformer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(REFeatureValueCounter);
    counter = v2->_counter;
    v2->_counter = v3;

    [(_RERecentFeatureTransformer *)v2 _updateConfigurationForCount:20];
  }

  return v2;
}

- (void)configureWithInvocation:(id)invocation
{
  invocationCopy = invocation;
  if ([invocationCopy numberOfArguments] == 1)
  {
    v10 = [invocationCopy getArgumentAtIndex:0];
    v11 = v10;
    if (v10 && REFeatureValueTypeForTaggedPointer(v10) == 1)
    {
      [(_RERecentFeatureTransformer *)self _updateConfigurationForCount:REIntegerValueForTaggedPointer(v11)];
    }

    else
    {
      v12 = *MEMORY[0x277CBE660];
      v13 = REDescriptionForTaggedPointer(v11);
      RERaiseInternalException(v12, @"Invalid interval %@", v14, v15, v16, v17, v18, v19, v13);
    }
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Incorrect number of arguments. Expecting one or three arguments", v4, v5, v6, v7, v8, v9, v20);
  }
}

- (void)_updateConfigurationForCount:(unint64_t)count
{
  if (count >= 2 || (RERaiseInternalException(*MEMORY[0x277CBE660], @"%s Count is too low. Must be 2 or greater.", count, v3, v4, v5, v6, v7, "[_RERecentFeatureTransformer _updateConfigurationForCount:]"), count))
  {
    v10 = 64 - __clz(count);
  }

  else
  {
    v10 = 0;
  }

  self->_bitCount = v10;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Recent%lu", count];
  [(REFeatureTransformer *)self setName:v11];

  counter = self->_counter;

  [(REFeatureValueCounter *)counter setCount:count];
}

- (unint64_t)_createTransformFromValues:(unint64_t *)values count:(unint64_t)count
{
  v5 = REFeatureValueForTaggedPointer(*values);
  v6 = RECreateIntegerFeatureValueTaggedPointer([(REFeatureValueCounter *)self->_counter trackedValueForValue:v5]);

  return v6;
}

- (BOOL)_validateWithFeatures:(id)features
{
  firstObject = [features firstObject];
  v4 = firstObject != 0;

  return v4;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[REFeatureValueCounter count](self->_counter, "count")}];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      counter = self->_counter;
      v6 = equalCopy;
      v7 = [(REFeatureValueCounter *)counter count];
      v8 = v6->_counter;

      v9 = v7 == [(REFeatureValueCounter *)v8 count];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(_RERecentFeatureTransformer);
  [(_RERecentFeatureTransformer *)v4 _updateConfigurationForCount:[(REFeatureValueCounter *)self->_counter count]];
  return v4;
}

@end