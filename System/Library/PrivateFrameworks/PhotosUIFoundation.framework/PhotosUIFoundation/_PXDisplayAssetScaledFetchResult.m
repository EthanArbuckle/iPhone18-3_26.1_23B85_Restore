@interface _PXDisplayAssetScaledFetchResult
- (NSString)description;
- (_PXDisplayAssetScaledFetchResult)initWithFetchResult:(id)a3 multiplier:(int64_t)a4;
- (id)objectsAtIndexes:(id)a3;
- (unint64_t)indexOfObject:(id)a3;
@end

@implementation _PXDisplayAssetScaledFetchResult

- (unint64_t)indexOfObject:(id)a3
{
  v4 = [(PXDisplayAssetFetchResult *)self->_fetchResult indexOfObject:a3];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return self->_multipler * v4;
  }

  return result;
}

- (id)objectsAtIndexes:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [[v4 alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __53___PXDisplayAssetScaledFetchResult_objectsAtIndexes___block_invoke;
  v13 = &unk_1E7BB85E0;
  v14 = v6;
  v15 = self;
  v7 = v6;
  [v5 enumerateIndexesUsingBlock:&v10];

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

- (_PXDisplayAssetScaledFetchResult)initWithFetchResult:(id)a3 multiplier:(int64_t)a4
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = _PXDisplayAssetScaledFetchResult;
  v9 = [(_PXDisplayAssetScaledFetchResult *)&v12 init];
  if (v9)
  {
    if (a4 <= 0)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:v9 file:@"PXDisplayAssetFetchResult.m" lineNumber:276 description:{@"Invalid parameter not satisfying: %@", @"multiplier >= 1"}];
    }

    objc_storeStrong(&v9->_fetchResult, a3);
    v9->_multipler = a4;
  }

  return v9;
}

@end