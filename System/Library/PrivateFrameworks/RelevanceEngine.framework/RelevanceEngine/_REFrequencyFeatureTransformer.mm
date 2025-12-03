@interface _REFrequencyFeatureTransformer
- (BOOL)_validateWithFeatures:(id)features;
- (BOOL)isEqual:(id)equal;
- (_REFrequencyFeatureTransformer)init;
- (unint64_t)_createTransformFromValues:(unint64_t *)values count:(unint64_t)count;
- (unint64_t)hash;
- (void)_updateConfigurationForCount:(unint64_t)count;
- (void)configureWithInvocation:(id)invocation;
@end

@implementation _REFrequencyFeatureTransformer

- (_REFrequencyFeatureTransformer)init
{
  v6.receiver = self;
  v6.super_class = _REFrequencyFeatureTransformer;
  v2 = [(REFeatureTransformer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(REFeatureValueCounter);
    counter = v2->_counter;
    v2->_counter = v3;

    [(_REFrequencyFeatureTransformer *)v2 _updateConfigurationForCount:20];
  }

  return v2;
}

- (void)configureWithInvocation:(id)invocation
{
  invocationCopy = invocation;
  if (([invocationCopy numberOfArguments] - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    self->_validCount = -1;
    if ([invocationCopy numberOfArguments] == 2)
    {
      self->_validCount = REIntegerValueForTaggedPointer([invocationCopy getArgumentAtIndex:1]);
    }

    v10 = [invocationCopy getArgumentAtIndex:0];
    v11 = v10;
    if (v10 && REFeatureValueTypeForTaggedPointer(v10) == 1)
    {
      [(_REFrequencyFeatureTransformer *)self _updateConfigurationForCount:REIntegerValueForTaggedPointer(v11)];
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
  if (count <= 1)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"%s Count is too low. Must be 2 or greater.", count, v3, v4, v5, v6, v7, "[_REFrequencyFeatureTransformer _updateConfigurationForCount:]");
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Frequency%lu", count];
  [(REFeatureTransformer *)self setName:v10];

  counter = self->_counter;

  [(REFeatureValueCounter *)counter setCount:count];
}

- (unint64_t)_createTransformFromValues:(unint64_t *)values count:(unint64_t)count
{
  v6 = [(REFeatureValueCounter *)self->_counter totalCount:values];
  validCount = self->_validCount;
  if ((validCount & 0x8000000000000000) != 0 || v6 > validCount)
  {
    v9 = REFeatureValueForTaggedPointer(*values);
    [(REFeatureValueCounter *)self->_counter countForValue:v9];
    v10 = RECreateDoubleFeatureValueTaggedPointer();

    return v10;
  }

  else
  {

    return RECreateIntegerFeatureValueTaggedPointer(-1);
  }
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

@end