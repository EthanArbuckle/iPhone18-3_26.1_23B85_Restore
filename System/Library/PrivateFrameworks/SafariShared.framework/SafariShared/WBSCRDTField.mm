@interface WBSCRDTField
- (BOOL)isEqual:(id)equal;
- (NSCopying)value;
- (WBSCRDTField)initWithValue:(id)value valueSource:(id)source valueProvider:(id)provider valueUpdater:(id)updater generation:(id)generation deviceIdentifier:(id)identifier metadata:(id)metadata;
- (id)copyWithValueSource:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)mergeWithField:(id)field;
- (void)incrementGenerationIfNeeded;
- (void)setValue:(id)value;
- (void)setValue:(id)value incrementGenerationIfNeeded:(BOOL)needed;
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
    deviceIdentifier = deviceIdentifier;
    if (!deviceIdentifier)
    {
      deviceIdentifier = [(WBSCRDTGeneration *)self->_generation deviceIdentifier];
    }

    v12 = [(WBSCRDTGeneration *)generation incrementedGenerationWithDeviceIdentifier:deviceIdentifier, v14, v15, v16, v17, v6, v7];
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

- (WBSCRDTField)initWithValue:(id)value valueSource:(id)source valueProvider:(id)provider valueUpdater:(id)updater generation:(id)generation deviceIdentifier:(id)identifier metadata:(id)metadata
{
  valueCopy = value;
  sourceCopy = source;
  providerCopy = provider;
  updaterCopy = updater;
  generationCopy = generation;
  identifierCopy = identifier;
  metadataCopy = metadata;
  v40.receiver = self;
  v40.super_class = WBSCRDTField;
  v22 = [(WBSCRDTField *)&v40 init];
  v23 = v22;
  if (v22)
  {
    objc_storeWeak(&v22->_valueSource, sourceCopy);
    v24 = [valueCopy copyWithZone:0];
    value = v23->_value;
    v23->_value = v24;

    v26 = MEMORY[0x1BFB13CE0](providerCopy);
    valueProvider = v23->_valueProvider;
    v23->_valueProvider = v26;

    v28 = MEMORY[0x1BFB13CE0](updaterCopy);
    valueUpdater = v23->_valueUpdater;
    v23->_valueUpdater = v28;

    v30 = [generationCopy copy];
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

    v34 = [identifierCopy copy];
    deviceIdentifier = v23->_deviceIdentifier;
    v23->_deviceIdentifier = v34;

    if (metadataCopy)
    {
      v36 = [metadataCopy mutableCopy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      value = [(WBSCRDTField *)self value];
      value2 = [(WBSCRDTField *)v5 value];
      if (WBSIsEqual())
      {
        generation = [(WBSCRDTField *)self generation];
        generation2 = [(WBSCRDTField *)v5 generation];
        if (WBSIsEqual())
        {
          deviceIdentifier = [(WBSCRDTField *)self deviceIdentifier];
          deviceIdentifier2 = [(WBSCRDTField *)v5 deviceIdentifier];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  result = [v4 initWithValue:self->_value valueSource:v4 valueProvider:self->_valueProvider valueUpdater:self->_valueUpdater generation:self->_generation deviceIdentifier:self->_deviceIdentifier metadata:self->_metadata];
  *(result + 48) = self->_shouldIncrementGeneration;
  return result;
}

- (id)copyWithValueSource:(id)source
{
  sourceCopy = source;
  v5 = [objc_alloc(objc_opt_class()) initWithValue:self->_value valueSource:sourceCopy valueProvider:self->_valueProvider valueUpdater:self->_valueUpdater generation:self->_generation deviceIdentifier:self->_deviceIdentifier metadata:self->_metadata];

  v5[48] = self->_shouldIncrementGeneration;
  return v5;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  WeakRetained = objc_loadWeakRetained(&self->_valueSource);
  if (WeakRetained)
  {
    value = [(WBSCRDTField *)self value];
    v6 = WBSIsEqual();

    if ((v6 & 1) == 0)
    {
      (*(self->_valueUpdater + 2))();
    }
  }
}

- (void)setValue:(id)value incrementGenerationIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  [(WBSCRDTField *)self setValue:value];
  if (neededCopy)
  {

    [(WBSCRDTField *)self incrementGenerationIfNeeded];
  }
}

- (int64_t)mergeWithField:(id)field
{
  fieldCopy = field;
  generation = [(WBSCRDTField *)self generation];
  generation2 = [(WBSCRDTField *)fieldCopy generation];
  v7 = [generation compare:generation2];

  if (v7 == -1)
  {
    selfCopy = fieldCopy;
  }

  else
  {
    selfCopy = self;
  }

  value = [(WBSCRDTField *)selfCopy value];
  generation3 = [(WBSCRDTField *)selfCopy generation];
  [(WBSCRDTField *)self setValue:value];
  [(WBSCRDTField *)self setGeneration:generation3];
  [(WBSCRDTField *)fieldCopy setValue:value];
  [(WBSCRDTField *)fieldCopy setGeneration:generation3];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  value = [(WBSCRDTField *)self value];
  generation = [(WBSCRDTField *)self generation];
  v7 = [v3 stringWithFormat:@"<%@: %p value: %@; generation: %@; metadata: %@>", v4, self, value, generation, self->_metadata];;

  return v7;
}

@end