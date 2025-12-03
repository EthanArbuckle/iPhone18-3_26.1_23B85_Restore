@interface _REChangeFeatureTransformer
- (BOOL)_validateWithFeatures:(id)features;
- (BOOL)isEqual:(id)equal;
- (_REChangeFeatureTransformer)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)_createTransformFromValues:(unint64_t *)values count:(unint64_t)count;
- (unint64_t)hash;
- (void)_updateConfigurationForInterval:(double)interval;
- (void)configureWithInvocation:(id)invocation;
- (void)dealloc;
- (void)setValue:(unint64_t)value;
@end

@implementation _REChangeFeatureTransformer

- (_REChangeFeatureTransformer)init
{
  v5.receiver = self;
  v5.super_class = _REChangeFeatureTransformer;
  v2 = [(REFeatureTransformer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_REChangeFeatureTransformer *)v2 _updateConfigurationForInterval:10.0];
  }

  return v3;
}

- (void)dealloc
{
  [(_REChangeFeatureTransformer *)self setValue:0];
  v3.receiver = self;
  v3.super_class = _REChangeFeatureTransformer;
  [(_REChangeFeatureTransformer *)&v3 dealloc];
}

- (void)setValue:(unint64_t)value
{
  RERetainFeatureValueTaggedPointer(value);
  REReleaseFeatureValueTaggedPointer(self->_value);
  self->_value = value;
}

- (void)_updateConfigurationForInterval:(double)interval
{
  self->_interval = interval;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Changed%f", *&interval];
  [(REFeatureTransformer *)self setName:v4];
}

- (void)configureWithInvocation:(id)invocation
{
  invocationCopy = invocation;
  if ([invocationCopy numberOfArguments] != 1)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Incorrect number of arguments. Expecting one or three arguments", v4, v5, v6, v7, v8, v9, v21);
    goto LABEL_9;
  }

  v10 = [invocationCopy getArgumentAtIndex:0];
  if (REFeatureValueTypeForTaggedPointer(v10) == 1)
  {
    v11 = REIntegerValueForTaggedPointer(v10);
LABEL_7:
    [(_REChangeFeatureTransformer *)self _updateConfigurationForInterval:v11];
    goto LABEL_9;
  }

  if (REFeatureValueTypeForTaggedPointer(v10) == 2)
  {
    v11 = REDoubleValueForTaggedPointer(v10, v12);
    goto LABEL_7;
  }

  v13 = *MEMORY[0x277CBE660];
  v14 = REDescriptionForTaggedPointer(v10);
  RERaiseInternalException(v13, @"Invalid interval %@", v15, v16, v17, v18, v19, v20, v14);

LABEL_9:
}

- (unint64_t)_createTransformFromValues:(unint64_t *)values count:(unint64_t)count
{
  v5 = *values;
  if (self->_value)
  {
    lastChangeDate = [MEMORY[0x277CBEAA8] date];
    value = self->_value;
    if (v5 != value)
    {
      v8 = REFeatureValueTypeForTaggedPointer(v5);
      if (v8 != REFeatureValueTypeForTaggedPointer(value) || (REFeatureValueForTaggedPointer(v5), v9 = objc_claimAutoreleasedReturnValue(), REFeatureValueForTaggedPointer(value), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, (v11 & 1) == 0))
      {
        [(_REChangeFeatureTransformer *)self setValue:v5];
        objc_storeStrong(&self->_lastChangeDate, lastChangeDate);
        v12 = objc_opt_new();
        v13 = [lastChangeDate dateByAddingTimeInterval:self->_interval];
        [v12 invalidateAtDate:v13];

        [(REFeatureTransformer *)self invalidateWithContext:v12];
      }
    }

    v14 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:self->_lastChangeDate duration:self->_interval];
    v15 = [v14 containsDate:lastChangeDate];
  }

  else
  {
    [(_REChangeFeatureTransformer *)self setValue:*values, count];
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    v15 = 0;
    lastChangeDate = self->_lastChangeDate;
    self->_lastChangeDate = distantPast;
  }

  return RECreateBooleanFeatureValueTaggedPointer(v15);
}

- (BOOL)_validateWithFeatures:(id)features
{
  firstObject = [features firstObject];
  v4 = firstObject != 0;

  return v4;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:self->_interval];
  v3 = [v2 hash];

  return v3;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_interval == equalCopy->_interval;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(_REChangeFeatureTransformer);
  [(_REChangeFeatureTransformer *)v4 _updateConfigurationForInterval:self->_interval];
  return v4;
}

@end