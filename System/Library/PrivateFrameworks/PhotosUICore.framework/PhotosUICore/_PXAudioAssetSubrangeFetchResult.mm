@interface _PXAudioAssetSubrangeFetchResult
- (NSString)description;
- (_PXAudioAssetSubrangeFetchResult)init;
- (_PXAudioAssetSubrangeFetchResult)initWithFetchResult:(id)result subrange:(_NSRange)subrange;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectsAtIndexes:(id)indexes;
- (void)enumerateObjectsUsingBlock:(id)block;
@end

@implementation _PXAudioAssetSubrangeFetchResult

- (void)enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v8 = 0;
  if ([(_PXAudioAssetSubrangeFetchResult *)self count])
  {
    v5 = 0;
    do
    {
      v6 = [(_PXAudioAssetSubrangeFetchResult *)self objectAtIndex:v5];
      blockCopy[2](blockCopy, v6, v5, &v8);
      v7 = v8;

      if (v7 == 1)
      {
        break;
      }

      ++v5;
    }

    while (v5 < [(_PXAudioAssetSubrangeFetchResult *)self count]);
  }
}

- (id)objectsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  v6 = [indexesCopy mutableCopy];
  [v6 shiftIndexesStartingAtIndex:0 by:self->_subrange.location];
  lastIndex = [v6 lastIndex];
  location = self->_subrange.location;
  v10 = lastIndex >= location;
  v9 = lastIndex - location;
  v10 = !v10 || v9 >= self->_subrange.length;
  if (v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAudioAssetFetchResult.m" lineNumber:162 description:{@"Indexes %@ out of bounds in %@", indexesCopy, self}];
  }

  v11 = [(PXAudioAssetFetchResult *)self->_fetchResult objectsAtIndexes:v6];

  return v11;
}

- (id)objectAtIndex:(unint64_t)index
{
  location = self->_subrange.location;
  v5 = location + index;
  if (location > location + index || self->_subrange.length <= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAudioAssetFetchResult.m" lineNumber:151 description:{@"Index %lu out of bounds in %@", index, self}];
  }

  fetchResult = self->_fetchResult;

  return [(PXAudioAssetFetchResult *)fetchResult objectAtIndexedSubscript:v5];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  fetchResult = self->_fetchResult;
  v6 = NSStringFromRange(self->_subrange);
  v7 = [v3 initWithFormat:@"<%@; %p; fetch result: %@; subrange: %@>", v4, self, fetchResult, v6];

  return v7;
}

- (_PXAudioAssetSubrangeFetchResult)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAudioAssetFetchResult.m" lineNumber:136 description:{@"%s is not available as initializer", "-[_PXAudioAssetSubrangeFetchResult init]"}];

  abort();
}

- (_PXAudioAssetSubrangeFetchResult)initWithFetchResult:(id)result subrange:(_NSRange)subrange
{
  length = subrange.length;
  location = subrange.location;
  resultCopy = result;
  v13.receiver = self;
  v13.super_class = _PXAudioAssetSubrangeFetchResult;
  v10 = [(_PXAudioAssetSubrangeFetchResult *)&v13 init];
  if (v10)
  {
    if ([resultCopy count] < location + length)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v10 file:@"PXAudioAssetFetchResult.m" lineNumber:128 description:@"subrange must be within the count of the given fetch result."];
    }

    objc_storeStrong(&v10->_fetchResult, result);
    v10->_subrange.location = location;
    v10->_subrange.length = length;
  }

  return v10;
}

@end