@interface _PXDisplayAssetScaledFetchResult
- (NSString)description;
- (_PXDisplayAssetScaledFetchResult)initWithFetchResult:(id)result multiplier:(int64_t)multiplier;
- (id)objectsAtIndexes:(id)indexes;
- (unint64_t)indexOfObject:(id)object;
@end

@implementation _PXDisplayAssetScaledFetchResult

- (unint64_t)indexOfObject:(id)object
{
  v4 = [(PXDisplayAssetFetchResult *)self->_fetchResult indexOfObject:object];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return self->_multipler * v4;
  }

  return result;
}

- (id)objectsAtIndexes:(id)indexes
{
  v4 = MEMORY[0x1E695DF70];
  indexesCopy = indexes;
  v6 = [[v4 alloc] initWithCapacity:{objc_msgSend(indexesCopy, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __53___PXDisplayAssetScaledFetchResult_objectsAtIndexes___block_invoke;
  v13 = &unk_1E7BB85E0;
  v14 = v6;
  selfCopy = self;
  v7 = v6;
  [indexesCopy enumerateIndexesUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p: multiple%ld fetchResult = %@>", v5, self, self->_multipler, self->_fetchResult];

  return v6;
}

- (_PXDisplayAssetScaledFetchResult)initWithFetchResult:(id)result multiplier:(int64_t)multiplier
{
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = _PXDisplayAssetScaledFetchResult;
  v9 = [(_PXDisplayAssetScaledFetchResult *)&v12 init];
  if (v9)
  {
    if (multiplier <= 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v9 file:@"PXDisplayAssetFetchResult.m" lineNumber:276 description:{@"Invalid parameter not satisfying: %@", @"multiplier >= 1"}];
    }

    objc_storeStrong(&v9->_fetchResult, result);
    v9->_multipler = multiplier;
  }

  return v9;
}

@end