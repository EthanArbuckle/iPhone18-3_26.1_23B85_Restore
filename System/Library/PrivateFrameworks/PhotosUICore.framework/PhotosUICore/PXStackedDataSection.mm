@interface PXStackedDataSection
+ (id)dataSectionForAssetsInCollections:(id)a3;
- (PXStackedDataSection)initWithChildDataSections:(id)a3 outlineObject:(id)a4;
- (id)_nextEnumerator;
- (id)objectAtIndex:(int64_t)a3;
- (int64_t)indexOfChildDataSourceForObjectAtIndex:(int64_t)a3 localIndex:(int64_t *)a4;
- (int64_t)itemStartIndexForChildDataSourceAtIndex:(int64_t)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)_resetEnumerationState:(id *)a3;
@end

@implementation PXStackedDataSection

+ (id)dataSectionForAssetsInCollections:(id)a3
{
  v16 = a1;
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v19)
  {
    v18 = *v25;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v7 = [v6 px_fetchContainedAssetCollections];
        v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v21;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v21 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:*(*(&v20 + 1) + 8 * j) options:0];
              v13 = [[PXFetchResultDataSection alloc] initWithFetchResult:v12];
              [v4 addObject:v13];
            }

            v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v9);
        }
      }

      v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v19);
  }

  v14 = [[v16 alloc] initWithChildDataSections:v4 outlineObject:0];

  return v14;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (!self->_currentEnumerator)
  {
    v9 = [(PXStackedDataSection *)self _nextEnumerator];
    currentEnumerator = self->_currentEnumerator;
    self->_currentEnumerator = v9;

    if (!self->_currentEnumerator)
    {
      return 0;
    }

    [(PXStackedDataSection *)self _resetEnumerationState:a3];
  }

  a3->var2 = self->_currentEnumeratorMutationsPtr;
  result = [(NSFastEnumeration *)self->_currentEnumerator countByEnumeratingWithState:a3 objects:a4 count:a5];
  for (self->_currentEnumeratorMutationsPtr = a3->var2; ; self->_currentEnumeratorMutationsPtr = a3->var2)
  {
    a3->var2 = &self->_enumerationMutations;
    if (result)
    {
      break;
    }

    v12 = [(PXStackedDataSection *)self _nextEnumerator];
    v13 = self->_currentEnumerator;
    self->_currentEnumerator = v12;

    if (!self->_currentEnumerator)
    {
      return 0;
    }

    [(PXStackedDataSection *)self _resetEnumerationState:a3];
    a3->var2 = self->_currentEnumeratorMutationsPtr;
    result = [(NSFastEnumeration *)self->_currentEnumerator countByEnumeratingWithState:a3 objects:a4 count:a5];
  }

  return result;
}

- (id)_nextEnumerator
{
  childDataSectionsEnumerator = self->_childDataSectionsEnumerator;
  if (!childDataSectionsEnumerator)
  {
    v4 = [(PXStackedDataSection *)self childDataSections];
    v5 = [v4 objectEnumerator];
    v6 = self->_childDataSectionsEnumerator;
    self->_childDataSectionsEnumerator = v5;

    childDataSectionsEnumerator = self->_childDataSectionsEnumerator;
  }

  v7 = [(NSEnumerator *)childDataSectionsEnumerator nextObject];
  if (!v7)
  {
    v8 = self->_childDataSectionsEnumerator;
    self->_childDataSectionsEnumerator = 0;
  }

  return v7;
}

- (void)_resetEnumerationState:(id *)a3
{
  a3->var0 = 0;
  *a3->var3 = 0u;
  *&a3->var3[2] = 0u;
  a3->var3[4] = 0;
  self->_currentEnumeratorMutationsPtr = 0;
}

- (id)objectAtIndex:(int64_t)a3
{
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = [(PXStackedDataSection *)self indexOfChildDataSourceForObjectAtIndex:a3 localIndex:&v9];
  v5 = [(PXStackedDataSection *)self childDataSections];
  v6 = [v5 objectAtIndexedSubscript:v4];

  v7 = [v6 objectAtIndex:v9];

  return v7;
}

- (int64_t)itemStartIndexForChildDataSourceAtIndex:(int64_t)a3
{
  v3 = [(NSArray *)self->_childDataSectionsStartIndexes objectAtIndexedSubscript:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (int64_t)indexOfChildDataSourceForObjectAtIndex:(int64_t)a3 localIndex:(int64_t *)a4
{
  v8 = [(NSIndexSet *)self->_nonEmptyChildDataSectionsStartIndexSet indexLessThanOrEqualToIndex:?];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"PXStackedDataSection.m" lineNumber:62 description:{@"no child data source found for index %ld", a3}];

  if (a4)
  {
LABEL_3:
    *a4 = a3 - v8;
  }

LABEL_4:
  v9 = [(NSIndexSet *)self->_nonEmptyChildDataSectionsStartIndexSet countOfIndexesInRange:0, a3 + 1];
  nonEmptyChildDataSectionsIndexMap = self->_nonEmptyChildDataSectionsIndexMap;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9 - 1];
  v12 = [(NSDictionary *)nonEmptyChildDataSectionsIndexMap objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = [v12 integerValue];
  }

  else
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v13;
}

- (PXStackedDataSection)initWithChildDataSections:(id)a3 outlineObject:(id)a4
{
  v24 = self;
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v25 = a4;
  v29 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v27 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *v32;
    v13 = v28;
    obj = v6;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = [*(*(&v31 + 1) + 8 * i) count];
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
        [v13 addObject:v16];

        if (v15 >= 1)
        {
          [v29 addIndex:v11];
          v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
          [v27 setObject:v17 forKey:v18];

          v13 = v28;
          v11 += v15;
          ++v9;
        }

        ++v10;
      }

      v6 = obj;
      v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v8);
  }

  else
  {
    v11 = 0;
    v13 = v28;
  }

  v30.receiver = v24;
  v30.super_class = PXStackedDataSection;
  v19 = [(PXDataSection *)&v30 initWithOutlineObject:v25];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_nonEmptyChildDataSectionsStartIndexSet, v29);
    objc_storeStrong(&v20->_nonEmptyChildDataSectionsIndexMap, v27);
    objc_storeStrong(&v20->_childDataSectionsStartIndexes, v13);
    v21 = [v6 copy];
    childDataSections = v20->_childDataSections;
    v20->_childDataSections = v21;

    v20->_count = v11;
  }

  return v20;
}

@end