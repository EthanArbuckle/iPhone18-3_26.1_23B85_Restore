@interface WBSJSONMutator
- (WBSJSONMutator)initWithSource:(id)a3 protectedFields:(id)a4;
- (id)_mutatedArrayField:(id)a3 shouldProtectRootObject:(BOOL)a4;
- (id)_mutatedCollectionField:(id)a3;
- (id)_mutatedDictionaryField:(id)a3 shouldProtectRootObject:(BOOL)a4;
- (id)_randomDateGenerator;
- (id)_randomFieldTypeChanger;
- (id)_randomIntegerGenerator;
- (id)_randomNumberGenerator;
- (id)_randomStringGenerator;
- (id)_randomValueForField:(id)a3;
- (id)mutatedJSONProtectingRootObject:(BOOL)a3;
- (int64_t)_actionToPerformOnFieldOfType:(int64_t)a3;
@end

@implementation WBSJSONMutator

- (WBSJSONMutator)initWithSource:(id)a3 protectedFields:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WBSJSONMutator;
  v9 = [(WBSJSONMutator *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originalJSONSource, a3);
    *&v10->_fieldDeletionProbability = xmmword_1BB94FDF0;
    *&v10->_fieldTypeChangeProbability = xmmword_1BB94FE00;
    objc_storeStrong(&v10->_protectedFields, a4);
    v11 = v10;
  }

  return v10;
}

- (id)mutatedJSONProtectingRootObject:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  originalJSONSource = self->_originalJSONSource;
  if (isKindOfClass)
  {
    [(WBSJSONMutator *)self _mutatedDictionaryField:originalJSONSource shouldProtectRootObject:v3];
  }

  else
  {
    [(WBSJSONMutator *)self _mutatedArrayField:originalJSONSource shouldProtectRootObject:v3];
  }
  v7 = ;

  return v7;
}

- (id)_mutatedArrayField:(id)a3 shouldProtectRootObject:(BOOL)a4
{
  v6 = a3;
  if (a4 || [(WBSJSONMutator *)self _actionToPerformOnFieldOfType:0])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__WBSJSONMutator__mutatedArrayField_shouldProtectRootObject___block_invoke;
    v9[3] = &unk_1E7FC8558;
    v9[4] = self;
    v7 = [v6 safari_mapAndFilterObjectsUsingBlock:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_mutatedDictionaryField:(id)a3 shouldProtectRootObject:(BOOL)a4
{
  v6 = a3;
  if (a4 || [(WBSJSONMutator *)self _actionToPerformOnFieldOfType:0])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__WBSJSONMutator__mutatedDictionaryField_shouldProtectRootObject___block_invoke;
    v9[3] = &unk_1E7FC8580;
    v9[4] = self;
    v7 = [v6 safari_mapAndFilterKeysAndObjectsUsingBlock:v9];
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

- (id)_mutatedCollectionField:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WBSJSONMutator *)self _mutatedArrayField:v4 shouldProtectRootObject:0];
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WBSJSONMutator *)self _mutatedDictionaryField:v4 shouldProtectRootObject:0];
    goto LABEL_5;
  }

  v8 = [(WBSJSONMutator *)self _actionToPerformOnFieldOfType:1];
  if (v8)
  {
    if (v8 == 2)
    {
      v5 = [(WBSJSONMutator *)self _randomFieldTypeChanger];
    }

    else if (v8 == 1)
    {
      v5 = [(WBSJSONMutator *)self _randomValueForField:v4];
    }

    else
    {
      v5 = v4;
    }

    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (int64_t)_actionToPerformOnFieldOfType:(int64_t)a3
{
  collectionFieldSkewFactorToDecreaseProbabilityOfInvalidResults = 1.0;
  if (!a3)
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

- (id)_randomValueForField:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 doubleValue];
    if (v5 == 1.0 || v5 == 0.0)
    {
      v7 = objc_alloc(MEMORY[0x1E696AD98]);
      v8 = [v4 intValue];
      if (v8 - 1 < 0)
      {
        v9 = (1 - v8);
      }

      else
      {
        v9 = (v8 - 1);
      }

      v6 = [v7 initWithInt:v9];
    }

    else
    {
      if (*[v4 objCType] == 105)
      {
        [(WBSJSONMutator *)self _randomIntegerGenerator];
      }

      else
      {
        [(WBSJSONMutator *)self _randomNumberGenerator];
      }
      v6 = ;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(WBSJSONMutator *)self _randomStringGenerator];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = 0;
        goto LABEL_18;
      }

      v6 = [(WBSJSONMutator *)self _randomDateGenerator];
    }
  }

  v10 = v6;
LABEL_18:

  return v10;
}

- (id)_randomFieldTypeChanger
{
  v3 = arc4random_uniform(3u);
  if (v3 == 2)
  {
    v4 = [(WBSJSONMutator *)self _randomStringGenerator];
  }

  else if (v3 == 1)
  {
    v4 = [(WBSJSONMutator *)self _randomNumberGenerator];
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
    v4 = ;
  }

  return v4;
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