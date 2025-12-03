@interface _PXConcatenatingAudioAssetFetchResult
- (BOOL)containsObject:(id)object;
- (NSString)description;
- (PXAudioAsset)firstObject;
- (PXAudioAsset)lastObject;
- (_PXConcatenatingAudioAssetFetchResult)initWithFetchResults:(id)results;
- (id)_subFetchResultForIndex:(int64_t)index localIndex:(int64_t *)localIndex;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectsAtIndexes:(id)indexes;
- (void)dealloc;
- (void)enumerateObjectsUsingBlock:(id)block;
@end

@implementation _PXConcatenatingAudioAssetFetchResult

- (void)enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  fetchResults = self->_fetchResults;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68___PXConcatenatingAudioAssetFetchResult_enumerateObjectsUsingBlock___block_invoke;
  v7[3] = &unk_1E7740FB8;
  v6 = blockCopy;
  v8 = v6;
  v9 = v10;
  [(NSArray *)fetchResults enumerateObjectsUsingBlock:v7];

  _Block_object_dispose(v10, 8);
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

- (PXAudioAsset)lastObject
{
  lastObject = [(NSArray *)self->_fetchResults lastObject];
  v2LastObject = [lastObject lastObject];

  return v2LastObject;
}

- (PXAudioAsset)firstObject
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
  v12 = __58___PXConcatenatingAudioAssetFetchResult_objectsAtIndexes___block_invoke;
  v13 = &unk_1E774A7B8;
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
  v3 = [(_PXConcatenatingAudioAssetFetchResult *)self _subFetchResultForIndex:index localIndex:&v6];
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
  v3.super_class = _PXConcatenatingAudioAssetFetchResult;
  [(_PXConcatenatingAudioAssetFetchResult *)&v3 dealloc];
}

- (_PXConcatenatingAudioAssetFetchResult)initWithFetchResults:(id)results
{
  resultsCopy = results;
  v6.receiver = self;
  v6.super_class = _PXConcatenatingAudioAssetFetchResult;
  if ([(_PXConcatenatingAudioAssetFetchResult *)&v6 init])
  {
    PXFilter();
  }

  return 0;
}

@end