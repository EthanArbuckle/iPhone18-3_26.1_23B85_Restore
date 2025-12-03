@interface WBSJSONMutator
- (WBSJSONMutator)initWithSource:(id)source protectedFields:(id)fields;
- (id)_mutatedArrayField:(id)field shouldProtectRootObject:(BOOL)object;
- (id)_mutatedCollectionField:(id)field;
- (id)_mutatedDictionaryField:(id)field shouldProtectRootObject:(BOOL)object;
- (id)_randomDateGenerator;
- (id)_randomFieldTypeChanger;
- (id)_randomIntegerGenerator;
- (id)_randomNumberGenerator;
- (id)_randomStringGenerator;
- (id)_randomValueForField:(id)field;
- (id)mutatedJSONProtectingRootObject:(BOOL)object;
- (int64_t)_actionToPerformOnFieldOfType:(int64_t)type;
@end

@implementation WBSJSONMutator

- (WBSJSONMutator)initWithSource:(id)source protectedFields:(id)fields
{
  sourceCopy = source;
  fieldsCopy = fields;
  v13.receiver = self;
  v13.super_class = WBSJSONMutator;
  v9 = [(WBSJSONMutator *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originalJSONSource, source);
    *&v10->_fieldDeletionProbability = xmmword_1BB94FDF0;
    *&v10->_fieldTypeChangeProbability = xmmword_1BB94FE00;
    objc_storeStrong(&v10->_protectedFields, fields);
    v11 = v10;
  }

  return v10;
}

- (id)mutatedJSONProtectingRootObject:(BOOL)object
{
  objectCopy = object;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  originalJSONSource = self->_originalJSONSource;
  if (isKindOfClass)
  {
    [(WBSJSONMutator *)self _mutatedDictionaryField:originalJSONSource shouldProtectRootObject:objectCopy];
  }

  else
  {
    [(WBSJSONMutator *)self _mutatedArrayField:originalJSONSource shouldProtectRootObject:objectCopy];
  }
  v7 = ;

  return v7;
}

- (id)_mutatedArrayField:(id)field shouldProtectRootObject:(BOOL)object
{
  fieldCopy = field;
  if (object || [(WBSJSONMutator *)self _actionToPerformOnFieldOfType:0])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__WBSJSONMutator__mutatedArrayField_shouldProtectRootObject___block_invoke;
    v9[3] = &unk_1E7FC8558;
    v9[4] = self;
    v7 = [fieldCopy safari_mapAndFilterObjectsUsingBlock:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_mutatedDictionaryField:(id)field shouldProtectRootObject:(BOOL)object
{
  fieldCopy = field;
  if (object || [(WBSJSONMutator *)self _actionToPerformOnFieldOfType:0])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__WBSJSONMutator__mutatedDictionaryField_shouldProtectRootObject___block_invoke;
    v9[3] = &unk_1E7FC8580;
    v9[4] = self;
    v7 = [fieldCopy safari_mapAndFilterKeysAndObjectsUsingBlock:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __66__WBSJSONMutator__mutatedDictionaryField_shouldProtectRootObject___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(*(a1 + 32) + 16) containsObject:a2])
  {
    v6 = v5;
  }

  else
  {
    v6 = [*(a1 + 32) _mutatedCollectionField:v5];
  }

  v7 = v6;

  return v7;
}

- (id)_mutatedCollectionField:(id)field
{
  fieldCopy = field;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _randomFieldTypeChanger = [(WBSJSONMutator *)self _mutatedArrayField:fieldCopy shouldProtectRootObject:0];
LABEL_5:
    v6 = _randomFieldTypeChanger;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _randomFieldTypeChanger = [(WBSJSONMutator *)self _mutatedDictionaryField:fieldCopy shouldProtectRootObject:0];
    goto LABEL_5;
  }

  v8 = [(WBSJSONMutator *)self _actionToPerformOnFieldOfType:1];
  if (v8)
  {
    if (v8 == 2)
    {
      _randomFieldTypeChanger = [(WBSJSONMutator *)self _randomFieldTypeChanger];
    }

    else if (v8 == 1)
    {
      _randomFieldTypeChanger = [(WBSJSONMutator *)self _randomValueForField:fieldCopy];
    }

    else
    {
      _randomFieldTypeChanger = fieldCopy;
    }

    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (int64_t)_actionToPerformOnFieldOfType:(int64_t)type
{
  collectionFieldSkewFactorToDecreaseProbabilityOfInvalidResults = 1.0;
  if (!type)
  {
    collectionFieldSkewFactorToDecreaseProbabilityOfInvalidResults = self->_collectionFieldSkewFactorToDecreaseProbabilityOfInvalidResults;
  }

  if (collectionFieldSkewFactorToDecreaseProbabilityOfInvalidResults * (self->_fieldDeletionProbability * 1000.0) >= (arc4random_uniform(0x3E8u) + 1))
  {
    return 0;
  }

  if (collectionFieldSkewFactorToDecreaseProbabilityOfInvalidResults * (self->_fieldValueChangeProbability * 1000.0) >= (arc4random_uniform(0x3E8u) + 1))
  {
    return 1;
  }

  if (collectionFieldSkewFactorToDecreaseProbabilityOfInvalidResults * (self->_fieldTypeChangeProbability * 1000.0) >= (arc4random_uniform(0x3E8u) + 1))
  {
    return 2;
  }

  return 3;
}

- (id)_randomValueForField:(id)field
{
  fieldCopy = field;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [fieldCopy doubleValue];
    if (v5 == 1.0 || v5 == 0.0)
    {
      v7 = objc_alloc(MEMORY[0x1E696AD98]);
      intValue = [fieldCopy intValue];
      if (intValue - 1 < 0)
      {
        v9 = (1 - intValue);
      }

      else
      {
        v9 = (intValue - 1);
      }

      _randomStringGenerator = [v7 initWithInt:v9];
    }

    else
    {
      if (*[fieldCopy objCType] == 105)
      {
        [(WBSJSONMutator *)self _randomIntegerGenerator];
      }

      else
      {
        [(WBSJSONMutator *)self _randomNumberGenerator];
      }
      _randomStringGenerator = ;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _randomStringGenerator = [(WBSJSONMutator *)self _randomStringGenerator];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = 0;
        goto LABEL_18;
      }

      _randomStringGenerator = [(WBSJSONMutator *)self _randomDateGenerator];
    }
  }

  v10 = _randomStringGenerator;
LABEL_18:

  return v10;
}

- (id)_randomFieldTypeChanger
{
  v3 = arc4random_uniform(3u);
  if (v3 == 2)
  {
    _randomStringGenerator = [(WBSJSONMutator *)self _randomStringGenerator];
  }

  else if (v3 == 1)
  {
    _randomStringGenerator = [(WBSJSONMutator *)self _randomNumberGenerator];
  }

  else
  {
    if (v3)
    {
      [(WBSJSONMutator *)self _randomDateGenerator];
    }

    else
    {
      [(WBSJSONMutator *)self _randomIntegerGenerator];
    }
    _randomStringGenerator = ;
  }

  return _randomStringGenerator;
}

- (id)_randomIntegerGenerator
{
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:rand()];

  return v2;
}

- (id)_randomNumberGenerator
{
  v2 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v3 = random();
  v4 = [v2 initWithFloat:v3];

  return v4;
}

- (id)_randomStringGenerator
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v3 = arc4random_uniform(0x64u);
  if (v3)
  {
    v4 = v3;
    do
    {
      [v2 appendFormat:@"%c", (arc4random_uniform(0x5Du) + 33)];
      --v4;
    }

    while (v4);
  }

  return v2;
}

- (id)_randomDateGenerator
{
  v2 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:rand()];

  return v2;
}

@end