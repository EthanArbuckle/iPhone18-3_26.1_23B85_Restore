@interface _PXDisplayAssetIndexSubfetchResult
- (BOOL)containsObject:(id)a3;
- (NSString)description;
- (PXDisplayAsset)firstObject;
- (PXDisplayAsset)lastObject;
- (_PXDisplayAssetIndexSubfetchResult)initWithFetchResult:(id)a3 indexSet:(id)a4;
- (id)objectsAtIndexes:(id)a3;
- (unint64_t)cachedCountOfAssetsWithMediaType:(int64_t)a3;
- (unint64_t)countOfAssetsWithMediaType:(int64_t)a3;
- (unint64_t)indexOfObject:(id)a3;
- (void)dealloc;
@end

@implementation _PXDisplayAssetIndexSubfetchResult

- (unint64_t)cachedCountOfAssetsWithMediaType:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetFetchResult.m" lineNumber:574 description:@"not implemented yet"];

  abort();
}

- (unint64_t)countOfAssetsWithMediaType:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetFetchResult.m" lineNumber:570 description:@"not implemented yet"];

  abort();
}

- (BOOL)containsObject:(id)a3
{
  v4 = [(PXDisplayAssetFetchResult *)self->_originalFetchResult indexOfObject:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v4;
  indexSet = self->_indexSet;

  return [(NSIndexSet *)indexSet containsIndex:v6];
}

- (unint64_t)indexOfObject:(id)a3
{
  v4 = a3;
  v5 = [(PXDisplayAssetFetchResult *)self->_originalFetchResult indexOfObject:v4];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v10[3] = 0;
    indexSet = self->_indexSet;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52___PXDisplayAssetIndexSubfetchResult_indexOfObject___block_invoke;
    v9[3] = &unk_1E7BB5E08;
    v9[5] = v10;
    v9[6] = v5;
    v9[4] = &v11;
    [(NSIndexSet *)indexSet enumerateIndexesUsingBlock:v9];
    _Block_object_dispose(v10, 8);
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (PXDisplayAsset)lastObject
{
  if ([(_PXDisplayAssetIndexSubfetchResult *)self count]< 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(_PXDisplayAssetIndexSubfetchResult *)self objectAtIndex:[(_PXDisplayAssetIndexSubfetchResult *)self count]- 1];
  }

  return v3;
}

- (PXDisplayAsset)firstObject
{
  if ([(_PXDisplayAssetIndexSubfetchResult *)self count]< 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(_PXDisplayAssetIndexSubfetchResult *)self objectAtIndex:0];
  }

  return v3;
}

- (id)objectsAtIndexes:(id)a3
{
  v4 = MEMORY[0x1E696AD50];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __55___PXDisplayAssetIndexSubfetchResult_objectsAtIndexes___block_invoke;
  v13 = &unk_1E7BB85E0;
  v14 = v6;
  v15 = self;
  v7 = v6;
  [v5 enumerateIndexesUsingBlock:&v10];

  v8 = [(PXDisplayAssetFetchResult *)self->_originalFetchResult objectsAtIndexes:v7, v10, v11, v12, v13];

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_PXDisplayAssetIndexSubfetchResult *)self count];
  v7 = [(PXDisplayAssetFetchResult *)self->_originalFetchResult description];
  v8 = [v3 stringWithFormat:@"<%@: %p: count = %li originalFetchResult = %@>", v5, self, v6, v7];;

  return v8;
}

- (void)dealloc
{
  free(self->_indexMap);
  v3.receiver = self;
  v3.super_class = _PXDisplayAssetIndexSubfetchResult;
  [(_PXDisplayAssetIndexSubfetchResult *)&v3 dealloc];
}

- (_PXDisplayAssetIndexSubfetchResult)initWithFetchResult:(id)a3 indexSet:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (![v9 count])
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetFetchResult.m" lineNumber:499 description:{@"Invalid parameter not satisfying: %@", @"indexSet.count > 0"}];
  }

  v10 = [v9 lastIndex];
  if (v10 >= [v8 count])
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetFetchResult.m" lineNumber:500 description:{@"Invalid parameter not satisfying: %@", @"indexSet.lastIndex < fetchResult.count"}];
  }

  v19.receiver = self;
  v19.super_class = _PXDisplayAssetIndexSubfetchResult;
  v11 = [(_PXDisplayAssetIndexSubfetchResult *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_originalFetchResult, a3);
    v12->_count = [v9 count];
    objc_storeStrong(&v12->_indexSet, a4);
    v13 = malloc_type_malloc(8 * v12->_count, 0x100004000313F17uLL);
    v12->_indexMap = v13;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v18[3] = v13;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __67___PXDisplayAssetIndexSubfetchResult_initWithFetchResult_indexSet___block_invoke;
    v17[3] = &unk_1E7BB5DE0;
    v17[4] = v18;
    [v9 enumerateIndexesUsingBlock:v17];
    _Block_object_dispose(v18, 8);
  }

  return v12;
}

@end