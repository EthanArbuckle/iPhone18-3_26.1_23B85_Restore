@interface _PXConcatenatingDisplayAssetFetchResult
- (BOOL)containsObject:(id)object;
- (NSString)description;
- (PXDisplayAsset)firstObject;
- (PXDisplayAsset)lastObject;
- (_PXConcatenatingDisplayAssetFetchResult)initWithFetchResults:(id)results;
- (id)_subFetchResultForIndex:(int64_t)index localIndex:(int64_t *)localIndex;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectsAtIndexes:(id)indexes;
- (id)thumbnailAssetAtIndex:(unint64_t)index;
- (unint64_t)cachedCountOfAssetsWithMediaType:(int64_t)type;
- (unint64_t)countOfAssetsWithMediaType:(int64_t)type;
- (unint64_t)indexOfObject:(id)object;
- (void)dealloc;
@end

@implementation _PXConcatenatingDisplayAssetFetchResult

- (id)thumbnailAssetAtIndex:(unint64_t)index
{
  v6 = 0;
  v3 = [(_PXConcatenatingDisplayAssetFetchResult *)self _subFetchResultForIndex:index localIndex:&v6];
  v4 = [v3 objectAtIndex:v6];

  return v4;
}

- (unint64_t)cachedCountOfAssetsWithMediaType:(int64_t)type
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

        v7 += [*(*(&v11 + 1) + 8 * i) cachedCountOfAssetsWithMediaType:{type, v11}];
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

- (unint64_t)countOfAssetsWithMediaType:(int64_t)type
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

        v7 += [*(*(&v11 + 1) + 8 * i) countOfAssetsWithMediaType:{type, v11}];
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

- (BOOL)containsObject:(id)object
{
  v15 = *MEMORY[0x1E69E9840];
  objectCopy = object;
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

        if ([*(*(&v10 + 1) + 8 * i) containsObject:{objectCopy, v10}])
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

- (unint64_t)indexOfObject:(id)object
{
  objectCopy = object;
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(NSArray *)self->_fetchResults count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [(NSArray *)self->_fetchResults objectAtIndexedSubscript:v6];
      v8 = [v7 indexOfObject:objectCopy];
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
  lastObject = [(NSArray *)self->_fetchResults lastObject];
  v2LastObject = [lastObject lastObject];

  return v2LastObject;
}

- (PXDisplayAsset)firstObject
{
  firstObject = [(NSArray *)self->_fetchResults firstObject];
  v2FirstObject = [firstObject firstObject];

  return v2FirstObject;
}

- (id)objectsAtIndexes:(id)indexes
{
  v4 = MEMORY[0x1E695DF70];
  indexesCopy = indexes;
  v6 = [[v4 alloc] initWithCapacity:{objc_msgSend(indexesCopy, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __60___PXConcatenatingDisplayAssetFetchResult_objectsAtIndexes___block_invoke;
  v13 = &unk_1E7BB85E0;
  v14 = v6;
  selfCopy = self;
  v7 = v6;
  [indexesCopy enumerateIndexesUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

- (id)objectAtIndex:(unint64_t)index
{
  v6 = 0;
  v3 = [(_PXConcatenatingDisplayAssetFetchResult *)self _subFetchResultForIndex:index localIndex:&v6];
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

- (id)_subFetchResultForIndex:(int64_t)index localIndex:(int64_t *)localIndex
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
      if (startIndexes[v10] < index)
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

  v11 = startIndexes[v8 - (startIndexes[v8] > index)];
  result = [(NSArray *)self->_fetchResults objectAtIndexedSubscript:?];
  if (localIndex)
  {
    *localIndex = index - v11;
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

- (_PXConcatenatingDisplayAssetFetchResult)initWithFetchResults:(id)results
{
  resultsCopy = results;
  v13.receiver = self;
  v13.super_class = _PXConcatenatingDisplayAssetFetchResult;
  v5 = [(_PXConcatenatingDisplayAssetFetchResult *)&v13 init];
  if (v5)
  {
    v6 = PXFilter(resultsCopy, &__block_literal_global_5043);
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