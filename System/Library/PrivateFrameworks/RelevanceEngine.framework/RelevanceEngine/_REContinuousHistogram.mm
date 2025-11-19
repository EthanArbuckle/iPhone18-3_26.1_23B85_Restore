@interface _REContinuousHistogram
- (BOOL)isEqual:(id)a3;
- (_REContinuousHistogram)initWithFeature:(id)a3 binningSize:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)countForValue:(unint64_t)a3;
- (unint64_t)countOfValuesBetweenMinValue:(unint64_t)a3 maxValue:(unint64_t)a4;
- (unint64_t)hash;
- (unint64_t)mean;
- (unint64_t)standardDeviation;
- (void)_enumerateValuesBetweenMinValue:(unint64_t)a3 maxValue:(unint64_t)a4 block:(id)a5;
- (void)addValue:(unint64_t)a3;
- (void)dealloc;
- (void)enumerateValuesUsingBlock:(id)a3;
- (void)removeValue:(unint64_t)a3;
@end

@implementation _REContinuousHistogram

- (_REContinuousHistogram)initWithFeature:(id)a3 binningSize:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = _REContinuousHistogram;
  v5 = [(REHistogram *)&v10 initWithFeature:a3 binningSize:?];
  v6 = v5;
  if (v5)
  {
    v5->_binningValue = a4;
    RERetainFeatureValueTaggedPointer(a4);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v11.receiver = self, v11.super_class = _REContinuousHistogram, [(REHistogram *)&v11 isEqual:v4]))
    {
      values = self->_values;
      v6 = v4->_values;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = _REContinuousHistogram;
  v4 = [(REHistogram *)&v13 copyWithZone:a3];
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
    v3 = [(_REContinuousHistogram *)self mean];
    v5 = REDoubleValueForTaggedPointer(v3, v4);
    REReleaseFeatureValueTaggedPointer(v3);
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

- (void)addValue:(unint64_t)a3
{
  v6 = [[_REHistogramRange alloc] initWithValue:a3 binningSize:self->_binningValue];
  v5 = [(RESortedDictionary *)self->_values objectForKey:?];
  if (!v5)
  {
    v5 = objc_alloc_init(RETaggedFeatureValueCountedSet);
    [(RESortedDictionary *)self->_values setObject:v5 forKey:v6];
  }

  [(RETaggedFeatureValueCountedSet *)v5 addFeatureValue:a3];
}

- (void)removeValue:(unint64_t)a3
{
  v6 = [[_REHistogramRange alloc] initWithValue:a3 binningSize:self->_binningValue];
  v5 = [(RESortedDictionary *)self->_values objectForKey:?];
  [v5 removeFeatureValue:a3];
  if (![v5 count])
  {
    [(RESortedDictionary *)self->_values removeObjectForKey:v6];
  }
}

- (unint64_t)countForValue:(unint64_t)a3
{
  v5 = [[_REHistogramRange alloc] initWithValue:a3 binningSize:self->_binningValue];
  v6 = [(RESortedDictionary *)self->_values objectForKey:v5];
  v7 = [v6 countForFeatureValue:a3];

  return v7;
}

- (unint64_t)countOfValuesBetweenMinValue:(unint64_t)a3 maxValue:(unint64_t)a4
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
  [(_REContinuousHistogram *)self _enumerateValuesBetweenMinValue:a3 maxValue:a4 block:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_enumerateValuesBetweenMinValue:(unint64_t)a3 maxValue:(unint64_t)a4 block:(id)a5
{
  v8 = a5;
  if (v8)
  {
    if (RECompareFeatureValues(a3, a4) == 1)
    {
      [(_REContinuousHistogram *)self _enumerateValuesBetweenMinValue:a4 maxValue:a3 block:v8];
    }

    else
    {
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __73___REContinuousHistogram__enumerateValuesBetweenMinValue_maxValue_block___block_invoke;
      v22 = &unk_2785FAC70;
      v23 = self;
      v25 = a3;
      v26 = a4;
      v24 = v8;
      v9 = MEMORY[0x22AABC5E0](&v19);
      RERetainFeatureValueTaggedPointer(a3);
      v10 = [_REHistogramRange alloc];
      v11 = [(_REHistogramRange *)v10 initWithValue:a4 binningSize:self->_binningValue, v19, v20, v21, v22, v23];
      while (1)
      {
        v12 = [[_REHistogramRange alloc] initWithValue:a3 binningSize:self->_binningValue];
        (v9)[2](v9, v12);
        if (RECompareFeatureValues([(_REHistogramRange *)v11 min], a3) != 1 && RECompareFeatureValues(a3, [(_REHistogramRange *)v11 max]) != 1)
        {
          break;
        }

        REReleaseFeatureValueTaggedPointer(a3);
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

        a3 = v17;
      }

      REReleaseFeatureValueTaggedPointer(a3);
    }
  }
}

- (void)enumerateValuesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    values = self->_values;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52___REContinuousHistogram_enumerateValuesUsingBlock___block_invoke;
    v7[3] = &unk_2785FACC0;
    v8 = v4;
    [(RESortedDictionary *)values enumerateObjectsUsingBlock:v7];
  }
}

@end