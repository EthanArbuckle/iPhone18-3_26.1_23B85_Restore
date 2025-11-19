@interface _PXConcatenatingDisplayAssetFetchResult
- (BOOL)containsObject:(id)a3;
- (NSString)description;
- (PXDisplayAsset)firstObject;
- (PXDisplayAsset)lastObject;
- (_PXConcatenatingDisplayAssetFetchResult)initWithFetchResults:(id)a3;
- (id)_subFetchResultForIndex:(int64_t)a3 localIndex:(int64_t *)a4;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectsAtIndexes:(id)a3;
- (id)thumbnailAssetAtIndex:(unint64_t)a3;
- (unint64_t)cachedCountOfAssetsWithMediaType:(int64_t)a3;
- (unint64_t)countOfAssetsWithMediaType:(int64_t)a3;
- (unint64_t)indexOfObject:(id)a3;
- (void)dealloc;
@end

@implementation _PXConcatenatingDisplayAssetFetchResult

- (id)thumbnailAssetAtIndex:(unint64_t)a3
{
  v6 = 0;
  v3 = [(_PXConcatenatingDisplayAssetFetchResult *)self _subFetchResultForIndex:a3 localIndex:&v6];
  v4 = [v3 objectAtIndex:v6];

  return v4;
}

- (unint64_t)cachedCountOfAssetsWithMediaType:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_fetchResults;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 += [*(*(&v11 + 1) + 8 * i) cachedCountOfAssetsWithMediaType:{a3, v11}];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)countOfAssetsWithMediaType:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_fetchResults;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 += [*(*(&v11 + 1) + 8 * i) countOfAssetsWithMediaType:{a3, v11}];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)containsObject:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_fetchResults;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) containsObject:{v4, v10}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (unint64_t)indexOfObject:(id)a3
{
  v4 = a3;
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(NSArray *)self->_fetchResults count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [(NSArray *)self->_fetchResults objectAtIndexedSubscript:v6];
      v8 = [v7 indexOfObject:v4];
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (++v6 >= [(NSArray *)self->_fetchResults count])
      {
        v5 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_7;
      }
    }

    v5 = self->_startIndexes[v6] + v8;
  }

LABEL_7:

  return v5;
}

- (PXDisplayAsset)lastObject
{
  v2 = [(NSArray *)self->_fetchResults lastObject];
  v3 = [v2 lastObject];

  return v3;
}

- (PXDisplayAsset)firstObject
{
  v2 = [(NSArray *)self->_fetchResults firstObject];
  v3 = [v2 firstObject];

  return v3;
}

- (id)objectsAtIndexes:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [[v4 alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __60___PXConcatenatingDisplayAssetFetchResult_objectsAtIndexes___block_invoke;
  v13 = &unk_1E7BB85E0;
  v14 = v6;
  v15 = self;
  v7 = v6;
  [v5 enumerateIndexesUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

- (id)objectAtIndex:(unint64_t)a3
{
  v6 = 0;
  v3 = [(_PXConcatenatingDisplayAssetFetchResult *)self _subFetchResultForIndex:a3 localIndex:&v6];
  v4 = [v3 objectAtIndex:v6];

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p: fetchResults = %@>", v5, self, self->_fetchResults];

  return v6;
}

- (id)_subFetchResultForIndex:(int64_t)a3 localIndex:(int64_t *)a4
{
  startIndexes = self->_startIndexes;
  subFetchResultsCount = self->_subFetchResultsCount;
  if (subFetchResultsCount < 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = subFetchResultsCount - 1;
    do
    {
      v10 = v8 + (v9 - v8) / 2;
      if (startIndexes[v10] < a3)
      {
        v8 = v10 + 1;
      }

      else
      {
        v9 = v8 + (v9 - v8) / 2;
      }
    }

    while (v8 < v9);
  }

  v11 = startIndexes[v8 - (startIndexes[v8] > a3)];
  result = [(NSArray *)self->_fetchResults objectAtIndexedSubscript:?];
  if (a4)
  {
    *a4 = a3 - v11;
  }

  return result;
}

- (void)dealloc
{
  free(self->_startIndexes);
  v3.receiver = self;
  v3.super_class = _PXConcatenatingDisplayAssetFetchResult;
  [(_PXConcatenatingDisplayAssetFetchResult *)&v3 dealloc];
}

- (_PXConcatenatingDisplayAssetFetchResult)initWithFetchResults:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _PXConcatenatingDisplayAssetFetchResult;
  v5 = [(_PXConcatenatingDisplayAssetFetchResult *)&v13 init];
  if (v5)
  {
    v6 = PXFilter(v4, &__block_literal_global_5043);
    objc_storeStrong(&v5->_fetchResults, v6);
    v7 = malloc_type_malloc(8 * [(NSArray *)v5->_fetchResults count], 0x100004000313F17uLL);
    v5->_startIndexes = v7;
    v8 = 0;
    if ([(NSArray *)v5->_fetchResults count])
    {
      v9 = 0;
      do
      {
        v10 = [(NSArray *)v5->_fetchResults objectAtIndexedSubscript:v9];
        v11 = [v10 count];
        v7[v9] = v8;
        v8 += v11;

        ++v9;
      }

      while (v9 < [(NSArray *)v5->_fetchResults count]);
    }

    v5->_count = v8;
    v5->_subFetchResultsCount = [(NSArray *)v5->_fetchResults count];
  }

  return v5;
}

@end