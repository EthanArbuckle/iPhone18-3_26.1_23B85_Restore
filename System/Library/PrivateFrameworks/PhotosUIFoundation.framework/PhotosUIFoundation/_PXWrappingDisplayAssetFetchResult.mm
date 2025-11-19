@interface _PXWrappingDisplayAssetFetchResult
- (NSString)description;
- (PXDisplayAsset)firstObject;
- (PXDisplayAsset)lastObject;
- (_PXWrappingDisplayAssetFetchResult)initWithFetchResult:(id)a3 range:(_NSRange)a4;
- (id)objectsAtIndexes:(id)a3;
- (unint64_t)indexOfObject:(id)a3;
@end

@implementation _PXWrappingDisplayAssetFetchResult

- (unint64_t)indexOfObject:(id)a3
{
  v4 = [(PXDisplayAssetFetchResult *)self->_displayFetchResult indexOfObject:a3];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    location = self->_range.location;
    if (v4 >= location && v4 < self->_range.length + location)
    {
      return v4 - location;
    }
  }

  return result;
}

- (PXDisplayAsset)lastObject
{
  length = self->_range.length;
  if (length)
  {
    v4 = [(PXDisplayAssetFetchResult *)self->_displayFetchResult objectAtIndex:length + self->_range.location - 1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PXDisplayAsset)firstObject
{
  if (self->_range.length)
  {
    v3 = [(PXDisplayAssetFetchResult *)self->_displayFetchResult objectAtIndex:self->_range.location];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)objectsAtIndexes:(id)a3
{
  v4 = [a3 mutableCopy];
  [v4 shiftIndexesStartingAtIndex:0 by:self->_range.location];
  v5 = [(PXDisplayAssetFetchResult *)self->_displayFetchResult objectsAtIndexes:v4];

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromRange(self->_range);
  v7 = [(PXDisplayAssetFetchResult *)self->_displayFetchResult description];
  v8 = [v3 stringWithFormat:@"<%@: %p: range = %@ fetchResult = %@>", v5, self, v6, v7];;

  return v8;
}

- (_PXWrappingDisplayAssetFetchResult)initWithFetchResult:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v14.receiver = self;
  v14.super_class = _PXWrappingDisplayAssetFetchResult;
  v10 = [(_PXWrappingDisplayAssetFetchResult *)&v14 init];
  if (v10)
  {
    if (location >= [v9 count])
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:v10 file:@"PXDisplayAssetFetchResult.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"range.location < fetchResult.count"}];
    }

    if (location + length > [v9 count])
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:v10 file:@"PXDisplayAssetFetchResult.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"NSMaxRange(range) <= fetchResult.count"}];
    }

    objc_storeStrong(&v10->_displayFetchResult, a3);
    v10->_range.location = location;
    v10->_range.length = length;
  }

  return v10;
}

@end