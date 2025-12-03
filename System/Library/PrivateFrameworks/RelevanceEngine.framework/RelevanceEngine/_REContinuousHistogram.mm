@interface _REContinuousHistogram
- (BOOL)isEqual:(id)equal;
- (_REContinuousHistogram)initWithFeature:(id)feature binningSize:(unint64_t)size;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)countForValue:(unint64_t)value;
- (unint64_t)countOfValuesBetweenMinValue:(unint64_t)value maxValue:(unint64_t)maxValue;
- (unint64_t)hash;
- (unint64_t)mean;
- (unint64_t)standardDeviation;
- (void)_enumerateValuesBetweenMinValue:(unint64_t)value maxValue:(unint64_t)maxValue block:(id)block;
- (void)addValue:(unint64_t)value;
- (void)dealloc;
- (void)enumerateValuesUsingBlock:(id)block;
- (void)removeValue:(unint64_t)value;
@end

@implementation _REContinuousHistogram

- (_REContinuousHistogram)initWithFeature:(id)feature binningSize:(unint64_t)size
{
  v10.receiver = self;
  v10.super_class = _REContinuousHistogram;
  v5 = [(REHistogram *)&v10 initWithFeature:feature binningSize:?];
  v6 = v5;
  if (v5)
  {
    v5->_binningValue = size;
    RERetainFeatureValueTaggedPointer(size);
    v7 = objc_alloc_init(RESortedDictionary);
    values = v6->_values;
    v6->_values = v7;
  }

  return v6;
}

- (void)dealloc
{
  REReleaseFeatureValueTaggedPointer(self->_binningValue);
  v3.receiver = self;
  v3.super_class = _REContinuousHistogram;
  [(_REContinuousHistogram *)&v3 dealloc];
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = _REContinuousHistogram;
  v3 = [(REHistogram *)&v5 hash];
  return [(RESortedDictionary *)self->_values hash]^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v11.receiver = self, v11.super_class = _REContinuousHistogram, [(REHistogram *)&v11 isEqual:equalCopy]))
    {
      values = self->_values;
      v6 = equalCopy->_values;
      v7 = values;
      v8 = v7;
      if (v7 == v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(RESortedDictionary *)v7 isEqual:v6];
      }
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
  v13.receiver = self;
  v13.super_class = _REContinuousHistogram;
  v4 = [(REHistogram *)&v13 copyWithZone:zone];
  binningValue = self->_binningValue;
  v4[2] = binningValue;
  RERetainFeatureValueTaggedPointer(binningValue);
  v6 = objc_alloc_init(RESortedDictionary);
  v7 = v4[3];
  v4[3] = v6;

  values = self->_values;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39___REContinuousHistogram_copyWithZone___block_invoke;
  v11[3] = &unk_2785FABA8;
  v9 = v4;
  v12 = v9;
  [(RESortedDictionary *)values enumerateObjectsUsingBlock:v11];

  return v9;
}

- (unint64_t)mean
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30___REContinuousHistogram_mean__block_invoke;
  v6[3] = &unk_2785FABD0;
  v6[4] = &v11;
  v6[5] = &v7;
  [(_REContinuousHistogram *)self enumerateValuesUsingBlock:v6];
  v2 = v8[3];
  if (v2)
  {
    v3 = v12[3] / v2;
  }

  v4 = RECreateDoubleFeatureValueTaggedPointer();
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (unint64_t)standardDeviation
{
  if ([(_REContinuousHistogram *)self count])
  {
    mean = [(_REContinuousHistogram *)self mean];
    v5 = REDoubleValueForTaggedPointer(mean, v4);
    REReleaseFeatureValueTaggedPointer(mean);
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43___REContinuousHistogram_standardDeviation__block_invoke;
    v8[3] = &unk_2785FABF8;
    *&v8[6] = v5;
    v8[4] = &v13;
    v8[5] = &v9;
    [(_REContinuousHistogram *)self enumerateValuesUsingBlock:v8];
    v14[3] = v14[3] / v10[3];
    v6 = RECreateDoubleFeatureValueTaggedPointer();
    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v13, 8);
    return v6;
  }

  else
  {

    return RECreateDoubleFeatureValueTaggedPointer();
  }
}

- (void)addValue:(unint64_t)value
{
  v6 = [[_REHistogramRange alloc] initWithValue:value binningSize:self->_binningValue];
  v5 = [(RESortedDictionary *)self->_values objectForKey:?];
  if (!v5)
  {
    v5 = objc_alloc_init(RETaggedFeatureValueCountedSet);
    [(RESortedDictionary *)self->_values setObject:v5 forKey:v6];
  }

  [(RETaggedFeatureValueCountedSet *)v5 addFeatureValue:value];
}

- (void)removeValue:(unint64_t)value
{
  v6 = [[_REHistogramRange alloc] initWithValue:value binningSize:self->_binningValue];
  v5 = [(RESortedDictionary *)self->_values objectForKey:?];
  [v5 removeFeatureValue:value];
  if (![v5 count])
  {
    [(RESortedDictionary *)self->_values removeObjectForKey:v6];
  }
}

- (unint64_t)countForValue:(unint64_t)value
{
  v5 = [[_REHistogramRange alloc] initWithValue:value binningSize:self->_binningValue];
  v6 = [(RESortedDictionary *)self->_values objectForKey:v5];
  v7 = [v6 countForFeatureValue:value];

  return v7;
}

- (unint64_t)countOfValuesBetweenMinValue:(unint64_t)value maxValue:(unint64_t)maxValue
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64___REContinuousHistogram_countOfValuesBetweenMinValue_maxValue___block_invoke;
  v6[3] = &unk_2785FAC20;
  v6[4] = &v7;
  [(_REContinuousHistogram *)self _enumerateValuesBetweenMinValue:value maxValue:maxValue block:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_enumerateValuesBetweenMinValue:(unint64_t)value maxValue:(unint64_t)maxValue block:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    if (RECompareFeatureValues(value, maxValue) == 1)
    {
      [(_REContinuousHistogram *)self _enumerateValuesBetweenMinValue:maxValue maxValue:value block:blockCopy];
    }

    else
    {
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __73___REContinuousHistogram__enumerateValuesBetweenMinValue_maxValue_block___block_invoke;
      v22 = &unk_2785FAC70;
      selfCopy = self;
      valueCopy = value;
      maxValueCopy = maxValue;
      v24 = blockCopy;
      v9 = MEMORY[0x22AABC5E0](&v19);
      RERetainFeatureValueTaggedPointer(value);
      v10 = [_REHistogramRange alloc];
      selfCopy = [(_REHistogramRange *)v10 initWithValue:maxValue binningSize:self->_binningValue, v19, v20, v21, v22, selfCopy];
      while (1)
      {
        v12 = [[_REHistogramRange alloc] initWithValue:value binningSize:self->_binningValue];
        (v9)[2](v9, v12);
        if (RECompareFeatureValues([(_REHistogramRange *)selfCopy min], value) != 1 && RECompareFeatureValues(value, [(_REHistogramRange *)selfCopy max]) != 1)
        {
          break;
        }

        REReleaseFeatureValueTaggedPointer(value);
        v13 = [(_REHistogramRange *)v12 mid];
        if (REFeatureValueTypeForTaggedPointer(self->_binningValue) == 1)
        {
          v15 = REIntegerValueForTaggedPointer(v13);
          v16 = REIntegerValueForTaggedPointer(self->_binningValue);
          v17 = RECreateIntegerFeatureValueTaggedPointer(v16 + v15);
        }

        else
        {
          REDoubleValueForTaggedPointer(v13, v14);
          REDoubleValueForTaggedPointer(self->_binningValue, v18);
          v17 = RECreateDoubleFeatureValueTaggedPointer();
        }

        value = v17;
      }

      REReleaseFeatureValueTaggedPointer(value);
    }
  }
}

- (void)enumerateValuesUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    values = self->_values;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52___REContinuousHistogram_enumerateValuesUsingBlock___block_invoke;
    v7[3] = &unk_2785FACC0;
    v8 = blockCopy;
    [(RESortedDictionary *)values enumerateObjectsUsingBlock:v7];
  }
}

@end