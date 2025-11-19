@interface _REHistogramRange
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_REHistogramRange)initWithMin:(unint64_t)a3 max:(unint64_t)a4;
- (_REHistogramRange)initWithValue:(unint64_t)a3 binningSize:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)compare:(id)a3;
- (void)dealloc;
@end

@implementation _REHistogramRange

- (_REHistogramRange)initWithValue:(unint64_t)a3 binningSize:(unint64_t)a4
{
  v7 = REFeatureValueTypeForTaggedPointer(a3);
  if (v7 != REFeatureValueTypeForTaggedPointer(a4))
  {
    v20 = *MEMORY[0x277CBE660];
    v21 = REDescriptionForTaggedPointer(a3);
    v35 = REDescriptionForTaggedPointer(a4);
    RERaiseInternalException(v20, @"value %@ and binning value %@ must have matching types", v22, v23, v24, v25, v26, v27, v21);

LABEL_17:
    v32 = 0;
    goto LABEL_18;
  }

  v8 = REFeatureValueTypeForTaggedPointer(a3);
  v16 = 0;
  if (v8 <= 1)
  {
    if (!v8)
    {
      v18 = *MEMORY[0x277CBE660];
      v19 = @"Bool values aren't supported";
      goto LABEL_16;
    }

    v17 = 0;
    if (v8 != 1)
    {
      goto LABEL_13;
    }

    v28 = REIntegerValueForTaggedPointer(a4);
    v29 = REIntegerValueForTaggedPointer(a3) / v28 * v28;
    v17 = RECreateIntegerFeatureValueTaggedPointer(v29);
    v30 = RECreateIntegerFeatureValueTaggedPointer(v29 + v28);
LABEL_12:
    v16 = v30;
    goto LABEL_13;
  }

  if (v8 == 2)
  {
    REDoubleValueForTaggedPointer(a4, v9);
    REDoubleValueForTaggedPointer(a3, v31);
    v17 = RECreateDoubleFeatureValueTaggedPointer();
    v30 = RECreateDoubleFeatureValueTaggedPointer();
    goto LABEL_12;
  }

  if (v8 == 3)
  {
    v18 = *MEMORY[0x277CBE660];
    v19 = @"String values aren't supported";
    goto LABEL_16;
  }

  v17 = 0;
  if (v8 == 4)
  {
    v18 = *MEMORY[0x277CBE660];
    v19 = @"Set values aren't supported";
LABEL_16:
    RERaiseInternalException(v18, v19, v10, v11, v12, v13, v14, v15, v34);
    goto LABEL_17;
  }

LABEL_13:
  self = [(_REHistogramRange *)self initWithMin:v17 max:v16];
  REReleaseFeatureValueTaggedPointer(v17);
  REReleaseFeatureValueTaggedPointer(v16);
  v32 = self;
LABEL_18:

  return v32;
}

- (_REHistogramRange)initWithMin:(unint64_t)a3 max:(unint64_t)a4
{
  v14.receiver = self;
  v14.super_class = _REHistogramRange;
  v6 = [(_REHistogramRange *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_min = a3;
    v6->_max = a4;
    RERetainFeatureValueTaggedPointer(a3);
    RERetainFeatureValueTaggedPointer(v7->_max);
    if (REFeatureValueTypeForTaggedPointer(v7->_min) == 2)
    {
      REDoubleValueForTaggedPointer(a3, v8);
      REDoubleValueForTaggedPointer(a4, v9);
      v10 = RECreateDoubleFeatureValueTaggedPointer();
    }

    else
    {
      v11 = REIntegerValueForTaggedPointer(a3);
      v12 = REIntegerValueForTaggedPointer(a4);
      v10 = RECreateIntegerFeatureValueTaggedPointer((v12 + v11) >> 1);
    }

    v7->_mid = v10;
  }

  return v7;
}

- (void)dealloc
{
  REReleaseFeatureValueTaggedPointer(self->_min);
  REReleaseFeatureValueTaggedPointer(self->_max);
  REReleaseFeatureValueTaggedPointer(self->_mid);
  v3.receiver = self;
  v3.super_class = _REHistogramRange;
  [(_REHistogramRange *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      min = self->_min;
      v7 = v5->_min;
      if (min != v7)
      {
        v11 = REFeatureValueTypeForTaggedPointer(self->_min);
        if (v11 != REFeatureValueTypeForTaggedPointer(v7))
        {
          goto LABEL_13;
        }

        v12 = REFeatureValueForTaggedPointer(min);
        v13 = REFeatureValueForTaggedPointer(v7);
        v14 = [v12 isEqual:v13];

        if (!v14)
        {
          goto LABEL_13;
        }
      }

      max = self->_max;
      v9 = v5->_max;
      if (max == v9)
      {
        v10 = 1;
      }

      else
      {
        v15 = REFeatureValueTypeForTaggedPointer(max);
        if (v15 != REFeatureValueTypeForTaggedPointer(v9))
        {
LABEL_13:
          v10 = 0;
          goto LABEL_14;
        }

        v16 = REFeatureValueForTaggedPointer(max);
        v17 = REFeatureValueForTaggedPointer(v9);
        v10 = [v16 isEqual:v17];
      }

LABEL_14:

      goto LABEL_15;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = REDescriptionForTaggedPointer(self->_min);
  v6 = REDescriptionForTaggedPointer(self->_max);
  v7 = [v3 stringWithFormat:@"<%p: %@> min=%@, max=%@", self, v4, v5, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  min = self->_min;
  max = self->_max;

  return [v4 initWithMin:min max:max];
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = RECompareFeatureValues(self->_min, v5[1]);
    if (!v6)
    {
      v6 = RECompareFeatureValues(self->_max, v5[2]);
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end