@interface PXDisplayAssetFetchResultEnumerator
- (PXDisplayAssetFetchResultEnumerator)init;
- (PXDisplayAssetFetchResultEnumerator)initWithDisplayAssetFetchResult:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)nextObject;
@end

@implementation PXDisplayAssetFetchResultEnumerator

- (id)nextObject
{
  currentIndex = self->_currentIndex;
  if (currentIndex >= [(PXDisplayAssetFetchResultEnumerator *)self count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(PXDisplayAssetFetchResult *)self->_fetchResult objectAtIndex:self->_currentIndex];
    ++self->_currentIndex;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PXDisplayAssetFetchResultEnumerator alloc];
  fetchResult = self->_fetchResult;

  return [(PXDisplayAssetFetchResultEnumerator *)v4 initWithDisplayAssetFetchResult:fetchResult];
}

- (PXDisplayAssetFetchResultEnumerator)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetFetchResultEnumerator.m" lineNumber:28 description:{@"%s is not available as initializer", "-[PXDisplayAssetFetchResultEnumerator init]"}];

  abort();
}

- (PXDisplayAssetFetchResultEnumerator)initWithDisplayAssetFetchResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXDisplayAssetFetchResultEnumerator;
  v6 = [(PXDisplayAssetFetchResultEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fetchResult, a3);
  }

  return v7;
}

@end