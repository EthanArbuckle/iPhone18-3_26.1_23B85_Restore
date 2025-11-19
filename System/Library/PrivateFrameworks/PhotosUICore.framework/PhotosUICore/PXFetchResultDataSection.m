@interface PXFetchResultDataSection
- (PXFetchResultDataSection)initWithFetchResult:(id)a3;
- (PXFetchResultDataSection)initWithOutlineObject:(id)a3;
- (id)objectAtIndex:(int64_t)a3;
- (id)objectsAtIndexes:(id)a3;
- (int64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
@end

@implementation PXFetchResultDataSection

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(PXFetchResultDataSection *)self fetchResult];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

- (id)objectsAtIndexes:(id)a3
{
  v4 = a3;
  v5 = [(PXFetchResultDataSection *)self fetchResult];
  v6 = [v5 objectsAtIndexes:v4];

  return v6;
}

- (id)objectAtIndex:(int64_t)a3
{
  v4 = [(PXFetchResultDataSection *)self fetchResult];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

- (int64_t)count
{
  v2 = [(PXFetchResultDataSection *)self fetchResult];
  v3 = [v2 count];

  return v3;
}

- (PXFetchResultDataSection)initWithOutlineObject:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXFetchResultDataSection.m" lineNumber:23 description:{@"%s is not available as initializer", "-[PXFetchResultDataSection initWithOutlineObject:]"}];

  abort();
}

- (PXFetchResultDataSection)initWithFetchResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXFetchResultDataSection;
  v6 = [(PXDataSection *)&v9 initWithOutlineObject:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fetchResult, a3);
  }

  return v7;
}

@end