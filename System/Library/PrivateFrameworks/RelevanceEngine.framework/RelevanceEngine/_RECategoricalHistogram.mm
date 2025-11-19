@interface _RECategoricalHistogram
- (BOOL)isEqual:(id)a3;
- (_RECategoricalHistogram)initWithFeature:(id)a3 binningSize:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)countOfValuesBetweenMinValue:(unint64_t)a3 maxValue:(unint64_t)a4;
- (unint64_t)hash;
- (void)enumerateValuesUsingBlock:(id)a3;
@end

@implementation _RECategoricalHistogram

- (_RECategoricalHistogram)initWithFeature:(id)a3 binningSize:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = _RECategoricalHistogram;
  v4 = [(REHistogram *)&v8 initWithFeature:a3 binningSize:a4];
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
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v11.receiver = self, v11.super_class = _RECategoricalHistogram, [(REHistogram *)&v11 isEqual:v4]))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = _RECategoricalHistogram;
  v4 = [(REHistogram *)&v8 copyWithZone:a3];
  v5 = [(RETaggedFeatureValueCountedSet *)self->_values copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

- (unint64_t)countOfValuesBetweenMinValue:(unint64_t)a3 maxValue:(unint64_t)a4
{
  if (a3 == a4)
  {
    goto LABEL_2;
  }

  v9 = REFeatureValueTypeForTaggedPointer(a3);
  if (v9 != REFeatureValueTypeForTaggedPointer(a4))
  {
    goto LABEL_7;
  }

  v10 = REFeatureValueForTaggedPointer(a3);
  v11 = REFeatureValueForTaggedPointer(a4);
  v12 = [v10 isEqual:v11];

  if (v12)
  {
LABEL_2:
    values = self->_values;

    return [(RETaggedFeatureValueCountedSet *)values countForFeatureValue:a3];
  }

  else
  {
LABEL_7:
    v13 = [(RETaggedFeatureValueCountedSet *)self->_values countForFeatureValue:a3];
    return [(RETaggedFeatureValueCountedSet *)self->_values countForFeatureValue:a4]+ v13;
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
    v7[2] = __53___RECategoricalHistogram_enumerateValuesUsingBlock___block_invoke;
    v7[3] = &unk_2785FC248;
    v7[4] = self;
    v8 = v4;
    [(RETaggedFeatureValueCountedSet *)values enumerateFeatureValuesUsingBlock:v7];
  }
}

@end