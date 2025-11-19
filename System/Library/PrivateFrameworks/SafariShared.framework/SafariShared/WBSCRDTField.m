@interface WBSCRDTField
- (BOOL)isEqual:(id)a3;
- (NSCopying)value;
- (WBSCRDTField)initWithValue:(id)a3 valueSource:(id)a4 valueProvider:(id)a5 valueUpdater:(id)a6 generation:(id)a7 deviceIdentifier:(id)a8 metadata:(id)a9;
- (id)copyWithValueSource:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)mergeWithField:(id)a3;
- (void)incrementGenerationIfNeeded;
- (void)setValue:(id)a3;
- (void)setValue:(id)a3 incrementGenerationIfNeeded:(BOOL)a4;
@end

@implementation WBSCRDTField

- (NSCopying)value
{
  WeakRetained = objc_loadWeakRetained(&self->_valueSource);
  if (WeakRetained)
  {
    v4 = (*(self->_valueProvider + 2))();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)incrementGenerationIfNeeded
{
  if (self->_shouldIncrementGeneration)
  {
    v14 = v5;
    v15 = v4;
    v16 = v3;
    v17 = v2;
    generation = self->_generation;
    deviceIdentifier = self->_deviceIdentifier;
    v11 = deviceIdentifier;
    if (!deviceIdentifier)
    {
      v11 = [(WBSCRDTGeneration *)self->_generation deviceIdentifier];
    }

    v12 = [(WBSCRDTGeneration *)generation incrementedGenerationWithDeviceIdentifier:v11, v14, v15, v16, v17, v6, v7];
    v13 = self->_generation;
    self->_generation = v12;

    if (!deviceIdentifier)
    {
    }

    self->_shouldIncrementGeneration = 0;
  }
}

void __58__WBSCRDTField_initWithValue_generation_deviceIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 copyWithZone:0];
  v6 = v4[1];
  v4[1] = v5;
}

- (WBSCRDTField)initWithValue:(id)a3 valueSource:(id)a4 valueProvider:(id)a5 valueUpdater:(id)a6 generation:(id)a7 deviceIdentifier:(id)a8 metadata:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v40.receiver = self;
  v40.super_class = WBSCRDTField;
  v22 = [(WBSCRDTField *)&v40 init];
  v23 = v22;
  if (v22)
  {
    objc_storeWeak(&v22->_valueSource, v16);
    v24 = [v15 copyWithZone:0];
    value = v23->_value;
    v23->_value = v24;

    v26 = MEMORY[0x1BFB13CE0](v17);
    valueProvider = v23->_valueProvider;
    v23->_valueProvider = v26;

    v28 = MEMORY[0x1BFB13CE0](v18);
    valueUpdater = v23->_valueUpdater;
    v23->_valueUpdater = v28;

    v30 = [v19 copy];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = objc_alloc_init(WBSCRDTGeneration);
    }

    generation = v23->_generation;
    v23->_generation = v32;

    v34 = [v20 copy];
    deviceIdentifier = v23->_deviceIdentifier;
    v23->_deviceIdentifier = v34;

    if (v21)
    {
      v36 = [v21 mutableCopy];
    }

    else
    {
      v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    metadata = v23->_metadata;
    v23->_metadata = v36;

    v23->_shouldIncrementGeneration = 1;
    v38 = v23;
  }

  return v23;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WBSCRDTField *)self value];
      v7 = [(WBSCRDTField *)v5 value];
      if (WBSIsEqual())
      {
        v8 = [(WBSCRDTField *)self generation];
        v9 = [(WBSCRDTField *)v5 generation];
        if (WBSIsEqual())
        {
          v10 = [(WBSCRDTField *)self deviceIdentifier];
          v11 = [(WBSCRDTField *)v5 deviceIdentifier];
          v12 = WBSIsEqual();
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  result = [v4 initWithValue:self->_value valueSource:v4 valueProvider:self->_valueProvider valueUpdater:self->_valueUpdater generation:self->_generation deviceIdentifier:self->_deviceIdentifier metadata:self->_metadata];
  *(result + 48) = self->_shouldIncrementGeneration;
  return result;
}

- (id)copyWithValueSource:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithValue:self->_value valueSource:v4 valueProvider:self->_valueProvider valueUpdater:self->_valueUpdater generation:self->_generation deviceIdentifier:self->_deviceIdentifier metadata:self->_metadata];

  v5[48] = self->_shouldIncrementGeneration;
  return v5;
}

- (void)setValue:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_valueSource);
  if (WeakRetained)
  {
    v5 = [(WBSCRDTField *)self value];
    v6 = WBSIsEqual();

    if ((v6 & 1) == 0)
    {
      (*(self->_valueUpdater + 2))();
    }
  }
}

- (void)setValue:(id)a3 incrementGenerationIfNeeded:(BOOL)a4
{
  v4 = a4;
  [(WBSCRDTField *)self setValue:a3];
  if (v4)
  {

    [(WBSCRDTField *)self incrementGenerationIfNeeded];
  }
}

- (int64_t)mergeWithField:(id)a3
{
  v4 = a3;
  v5 = [(WBSCRDTField *)self generation];
  v6 = [(WBSCRDTField *)v4 generation];
  v7 = [v5 compare:v6];

  if (v7 == -1)
  {
    v8 = v4;
  }

  else
  {
    v8 = self;
  }

  v9 = [(WBSCRDTField *)v8 value];
  v10 = [(WBSCRDTField *)v8 generation];
  [(WBSCRDTField *)self setValue:v9];
  [(WBSCRDTField *)self setGeneration:v10];
  [(WBSCRDTField *)v4 setValue:v9];
  [(WBSCRDTField *)v4 setGeneration:v10];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(WBSCRDTField *)self value];
  v6 = [(WBSCRDTField *)self generation];
  v7 = [v3 stringWithFormat:@"<%@: %p value: %@; generation: %@; metadata: %@>", v4, self, v5, v6, self->_metadata];;

  return v7;
}

@end