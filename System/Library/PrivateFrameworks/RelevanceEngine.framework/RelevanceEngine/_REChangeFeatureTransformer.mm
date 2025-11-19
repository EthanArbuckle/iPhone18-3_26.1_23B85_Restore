@interface _REChangeFeatureTransformer
- (BOOL)_validateWithFeatures:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_REChangeFeatureTransformer)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)_createTransformFromValues:(unint64_t *)a3 count:(unint64_t)a4;
- (unint64_t)hash;
- (void)_updateConfigurationForInterval:(double)a3;
- (void)configureWithInvocation:(id)a3;
- (void)dealloc;
- (void)setValue:(unint64_t)a3;
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

- (void)setValue:(unint64_t)a3
{
  RERetainFeatureValueTaggedPointer(a3);
  REReleaseFeatureValueTaggedPointer(self->_value);
  self->_value = a3;
}

- (void)_updateConfigurationForInterval:(double)a3
{
  self->_interval = a3;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Changed%f", *&a3];
  [(REFeatureTransformer *)self setName:v4];
}

- (void)configureWithInvocation:(id)a3
{
  v22 = a3;
  if ([v22 numberOfArguments] != 1)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Incorrect number of arguments. Expecting one or three arguments", v4, v5, v6, v7, v8, v9, v21);
    goto LABEL_9;
  }

  v10 = [v22 getArgumentAtIndex:0];
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

- (unint64_t)_createTransformFromValues:(unint64_t *)a3 count:(unint64_t)a4
{
  v5 = *a3;
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
    [(_REChangeFeatureTransformer *)self setValue:*a3, a4];
    v16 = [MEMORY[0x277CBEAA8] distantPast];
    v15 = 0;
    lastChangeDate = self->_lastChangeDate;
    self->_lastChangeDate = v16;
  }

  return RECreateBooleanFeatureValueTaggedPointer(v15);
}

- (BOOL)_validateWithFeatures:(id)a3
{
  v3 = [a3 firstObject];
  v4 = v3 != 0;

  return v4;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:self->_interval];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_interval == v4->_interval;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(_REChangeFeatureTransformer);
  [(_REChangeFeatureTransformer *)v4 _updateConfigurationForInterval:self->_interval];
  return v4;
}

@end