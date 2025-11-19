@interface _PXAudioAssetSubrangeFetchResult
- (NSString)description;
- (_PXAudioAssetSubrangeFetchResult)init;
- (_PXAudioAssetSubrangeFetchResult)initWithFetchResult:(id)a3 subrange:(_NSRange)a4;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectsAtIndexes:(id)a3;
- (void)enumerateObjectsUsingBlock:(id)a3;
@end

@implementation _PXAudioAssetSubrangeFetchResult

- (void)enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v8 = 0;
  if ([(_PXAudioAssetSubrangeFetchResult *)self count])
  {
    v5 = 0;
    do
    {
      v6 = [(_PXAudioAssetSubrangeFetchResult *)self objectAtIndex:v5];
      v4[2](v4, v6, v5, &v8);
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

- (id)objectsAtIndexes:(id)a3
{
  v5 = a3;
  v6 = [v5 mutableCopy];
  [v6 shiftIndexesStartingAtIndex:0 by:self->_subrange.location];
  v7 = [v6 lastIndex];
  location = self->_subrange.location;
  v10 = v7 >= location;
  v9 = v7 - location;
  v10 = !v10 || v9 >= self->_subrange.length;
  if (v10)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXAudioAssetFetchResult.m" lineNumber:162 description:{@"Indexes %@ out of bounds in %@", v5, self}];
  }

  v11 = [(PXAudioAssetFetchResult *)self->_fetchResult objectsAtIndexes:v6];

  return v11;
}

- (id)objectAtIndex:(unint64_t)a3
{
  location = self->_subrange.location;
  v5 = location + a3;
  if (location > location + a3 || self->_subrange.length <= a3)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXAudioAssetFetchResult.m" lineNumber:151 description:{@"Index %lu out of bounds in %@", a3, self}];
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAudioAssetFetchResult.m" lineNumber:136 description:{@"%s is not available as initializer", "-[_PXAudioAssetSubrangeFetchResult init]"}];

  abort();
}

- (_PXAudioAssetSubrangeFetchResult)initWithFetchResult:(id)a3 subrange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v13.receiver = self;
  v13.super_class = _PXAudioAssetSubrangeFetchResult;
  v10 = [(_PXAudioAssetSubrangeFetchResult *)&v13 init];
  if (v10)
  {
    if ([v9 count] < location + length)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:v10 file:@"PXAudioAssetFetchResult.m" lineNumber:128 description:@"subrange must be within the count of the given fetch result."];
    }

    objc_storeStrong(&v10->_fetchResult, a3);
    v10->_subrange.location = location;
    v10->_subrange.length = length;
  }

  return v10;
}

@end