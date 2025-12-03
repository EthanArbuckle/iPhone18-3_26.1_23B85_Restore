@interface _RECategoricalHistogram
- (BOOL)isEqual:(id)equal;
- (_RECategoricalHistogram)initWithFeature:(id)feature binningSize:(unint64_t)size;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)countOfValuesBetweenMinValue:(unint64_t)value maxValue:(unint64_t)maxValue;
- (unint64_t)hash;
- (void)enumerateValuesUsingBlock:(id)block;
@end

@implementation _RECategoricalHistogram

- (_RECategoricalHistogram)initWithFeature:(id)feature binningSize:(unint64_t)size
{
  v8.receiver = self;
  v8.super_class = _RECategoricalHistogram;
  v4 = [(REHistogram *)&v8 initWithFeature:feature binningSize:size];
  if (v4)
  {
    v5 = objc_alloc_init(RETaggedFeatureValueCountedSet);
    values = v4->_values;
    v4->_values = v5;
  }

  return v4;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = _RECategoricalHistogram;
  v3 = [(REHistogram *)&v5 hash];
  return [(RETaggedFeatureValueCountedSet *)self->_values hash]^ v3;
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
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v11.receiver = self, v11.super_class = _RECategoricalHistogram, [(REHistogram *)&v11 isEqual:equalCopy]))
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
        v9 = [(RETaggedFeatureValueCountedSet *)v7 isEqual:v6];
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
  v8.receiver = self;
  v8.super_class = _RECategoricalHistogram;
  v4 = [(REHistogram *)&v8 copyWithZone:zone];
  v5 = [(RETaggedFeatureValueCountedSet *)self->_values copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

- (unint64_t)countOfValuesBetweenMinValue:(unint64_t)value maxValue:(unint64_t)maxValue
{
  if (value == maxValue)
  {
    goto LABEL_2;
  }

  v9 = REFeatureValueTypeForTaggedPointer(value);
  if (v9 != REFeatureValueTypeForTaggedPointer(maxValue))
  {
    goto LABEL_7;
  }

  v10 = REFeatureValueForTaggedPointer(value);
  v11 = REFeatureValueForTaggedPointer(maxValue);
  v12 = [v10 isEqual:v11];

  if (v12)
  {
LABEL_2:
    values = self->_values;

    return [(RETaggedFeatureValueCountedSet *)values countForFeatureValue:value];
  }

  else
  {
LABEL_7:
    v13 = [(RETaggedFeatureValueCountedSet *)self->_values countForFeatureValue:value];
    return [(RETaggedFeatureValueCountedSet *)self->_values countForFeatureValue:maxValue]+ v13;
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
    v7[2] = __53___RECategoricalHistogram_enumerateValuesUsingBlock___block_invoke;
    v7[3] = &unk_2785FC248;
    v7[4] = self;
    v8 = blockCopy;
    [(RETaggedFeatureValueCountedSet *)values enumerateFeatureValuesUsingBlock:v7];
  }
}

@end