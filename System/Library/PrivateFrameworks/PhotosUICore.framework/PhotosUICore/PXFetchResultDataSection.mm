@interface PXFetchResultDataSection
- (PXFetchResultDataSection)initWithFetchResult:(id)result;
- (PXFetchResultDataSection)initWithOutlineObject:(id)object;
- (id)objectAtIndex:(int64_t)index;
- (id)objectsAtIndexes:(id)indexes;
- (int64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation PXFetchResultDataSection

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  fetchResult = [(PXFetchResultDataSection *)self fetchResult];
  v9 = [fetchResult countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

- (id)objectsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  fetchResult = [(PXFetchResultDataSection *)self fetchResult];
  v6 = [fetchResult objectsAtIndexes:indexesCopy];

  return v6;
}

- (id)objectAtIndex:(int64_t)index
{
  fetchResult = [(PXFetchResultDataSection *)self fetchResult];
  v5 = [fetchResult objectAtIndex:index];

  return v5;
}

- (int64_t)count
{
  fetchResult = [(PXFetchResultDataSection *)self fetchResult];
  v3 = [fetchResult count];

  return v3;
}

- (PXFetchResultDataSection)initWithOutlineObject:(id)object
{
  objectCopy = object;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFetchResultDataSection.m" lineNumber:23 description:{@"%s is not available as initializer", "-[PXFetchResultDataSection initWithOutlineObject:]"}];

  abort();
}

- (PXFetchResultDataSection)initWithFetchResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = PXFetchResultDataSection;
  v6 = [(PXDataSection *)&v9 initWithOutlineObject:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fetchResult, result);
  }

  return v7;
}

@end