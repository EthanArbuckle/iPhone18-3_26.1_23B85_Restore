@interface PXSmartAlbumCondition
+ (id)_conditionWithSingleQuery:(id)a3 editingContext:(id)a4;
+ (id)conditionWithConditionType:(int64_t)a3 editingContext:(id)a4;
+ (id)conditionsForQuery:(id)a3 editingContext:(id)a4 error:(id *)a5;
+ (id)defaultSingleQueryForEditingContext:(id)a3;
- (NSArray)comparatorValues;
- (PXLabeledValue)comparatorValue;
- (PXSmartAlbumCondition)init;
- (PXSmartAlbumConditionDelegate)delegate;
- (id)_initWithConditionType:(int64_t)a3 singleQuery:(id)a4 editingContext:(id)a5;
- (int)_comparatorType;
- (int64_t)comparatorParameterType;
- (void)setComparatorValue:(id)a3;
@end

@implementation PXSmartAlbumCondition

- (PXSmartAlbumConditionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int)_comparatorType
{
  v2 = [(PXSmartAlbumCondition *)self singleQuery];
  v3 = [v2 migratedComparator];

  return v3;
}

- (int64_t)comparatorParameterType
{
  v2 = [(PXSmartAlbumCondition *)self _comparatorType];
  if ((v2 - 50) < 2)
  {
    return 2;
  }

  if (v2 == 30)
  {
    return 1;
  }

  if (!v2)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXSmartAlbumComparatorParameterType _PXSmartAlbumComparatorParameterTypeForComparator(PLQueryComparatorType)"];
    [v4 handleFailureInFunction:v5 file:@"PXSmartAlbumCondition.m" lineNumber:235 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 0;
}

- (void)setComparatorValue:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumCondition.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"comparatorValue"}];
  }

  v6 = [(PXSmartAlbumCondition *)self comparatorValues];
  v7 = [v6 containsObject:v5];

  if ((v7 & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumCondition.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"[self.comparatorValues containsObject:comparatorValue]"}];
  }

  v8 = [v5 value];
  v9 = [v8 integerValue];
  v10 = [(PXSmartAlbumCondition *)self singleQuery];
  [v10 setComparator:v9];
  v11 = PLUIGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = PLStringFromPLQueryComparatorType();
    *buf = 138412290;
    v17 = v12;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: comparator set to: %@", buf, 0xCu);
  }

  v13 = [(PXSmartAlbumCondition *)self delegate];
  [v13 conditionDidChange:self];
}

- (PXLabeledValue)comparatorValue
{
  v3 = [(PXSmartAlbumCondition *)self _comparatorType];
  v4 = PXSmartAlbumLocalizedStringForComparator(v3, [(PXSmartAlbumCondition *)self comparatorMode]);
  v5 = [PXLabeledValue alloc];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v7 = [(PXLabeledValue *)v5 initWithValue:v6 localizedLabel:v4];

  return v7;
}

- (NSArray)comparatorValues
{
  comparatorValues = self->_comparatorValues;
  if (!comparatorValues)
  {
    v5 = [(PXSmartAlbumCondition *)self singleQuery];
    v6 = [v5 key];
    v7 = [(PXSmartAlbumCondition *)self comparatorMode];
    v8 = [MEMORY[0x1E69BF2C0] validComparatorsForQueryKey:v6];
    v9 = PXSmartAlbumLocalizedStringsForComparatorValues(v8, v7);
    v10 = PXLabeledValuesWithValuesAndLocalizedLabels(v8, v9);

    v11 = self->_comparatorValues;
    self->_comparatorValues = v10;

    if (![(NSArray *)self->_comparatorValues count])
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumCondition.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"_comparatorValues.count"}];
    }

    comparatorValues = self->_comparatorValues;
  }

  return comparatorValues;
}

- (id)_initWithConditionType:(int64_t)a3 singleQuery:(id)a4 editingContext:(id)a5
{
  v8 = a4;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = PXSmartAlbumCondition;
  v10 = [(PXSmartAlbumCondition *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_conditionType = a3;
    objc_storeStrong(&v10->_editingContext, a5);
    if (v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = [objc_opt_class() defaultSingleQueryForEditingContext:v9];
    }

    singleQuery = v11->_singleQuery;
    v11->_singleQuery = v12;
  }

  return v11;
}

- (PXSmartAlbumCondition)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumCondition.m" lineNumber:40 description:{@"%s is not available as initializer", "-[PXSmartAlbumCondition init]"}];

  abort();
}

+ (id)defaultSingleQueryForEditingContext:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:a1 file:@"PXSmartAlbumCondition.m" lineNumber:144 description:{@"Method %s is a responsibility of subclass %@", "+[PXSmartAlbumCondition defaultSingleQueryForEditingContext:]", v8}];

  abort();
}

+ (id)conditionsForQuery:(id)a3 editingContext:(id)a4 error:(id *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"PXSmartAlbumCondition.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"query"}];

    if (a5)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:a1 file:@"PXSmartAlbumCondition.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"error"}];

LABEL_3:
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__161574;
  v37 = __Block_byref_object_dispose__161575;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__161574;
  v31 = __Block_byref_object_dispose__161575;
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = [v9 singleQueries];
  if ([v11 count])
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __65__PXSmartAlbumCondition_conditionsForQuery_editingContext_error___block_invoke;
    v23[3] = &unk_1E773ED08;
    v24 = v10;
    v25 = &v27;
    v26 = &v33;
    [v11 enumerateObjectsUsingBlock:v23];
    v12 = v24;
  }

  else
  {
    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v9 logDescription];
      *buf = 138412290;
      v40 = v14;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "PXSmartAlbums: Failed to create conditions for query with no single queries: %@", buf, 0xCu);
    }

    v15 = MEMORY[0x1E696ABC0];
    v12 = [v9 logDescription];
    v16 = [v15 px_errorWithDomain:@"PXSmartAlbumErrorDomain" code:-1001 debugDescription:{@"Failed to create conditions for query with no single queries: %@", v12}];
    v17 = v34[5];
    v34[5] = v16;
  }

  if (v34[5])
  {
    v18 = v28[5];
    v28[5] = 0;

    *a5 = v34[5];
  }

  v19 = v28[5];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v19;
}

void __65__PXSmartAlbumCondition_conditionsForQuery_editingContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [PXSmartAlbumCondition _conditionWithSingleQuery:"_conditionWithSingleQuery:editingContext:" editingContext:?];
  if (v6)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = [v12 logDescription];
    v9 = [v7 px_errorWithDomain:@"PXSmartAlbumErrorDomain" code:-1001 debugDescription:{@"Failed to create condition for single query: %@", v8}];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

+ (id)_conditionWithSingleQuery:(id)a3 editingContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"PXSmartAlbumCondition.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"singleQuery"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:a2 object:a1 file:@"PXSmartAlbumCondition.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"editingContext"}];

LABEL_3:
  v10 = PXSmartAlbumConditionTypeForSingleQuery(v7);
  v11 = v10;
  if (v10)
  {
    v11 = [objc_alloc(_PXSmartAlbumConditionClassForConditionType(v10)) _initWithConditionType:v10 singleQuery:v7 editingContext:v9];
  }

  return v11;
}

+ (id)conditionWithConditionType:(int64_t)a3 editingContext:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (a3)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PXSmartAlbumCondition.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"conditionType != PXSmartAlbumConditionTypeInvalid"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  [v12 handleFailureInMethod:a2 object:a1 file:@"PXSmartAlbumCondition.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"editingContext"}];

LABEL_3:
  v9 = [objc_alloc(_PXSmartAlbumConditionClassForConditionType(a3)) _initWithConditionType:a3 singleQuery:0 editingContext:v8];

  return v9;
}

@end