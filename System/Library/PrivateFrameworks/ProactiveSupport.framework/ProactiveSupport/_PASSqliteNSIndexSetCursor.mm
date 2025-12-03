@interface _PASSqliteNSIndexSetCursor
- (id)currentIndexedValue;
- (void)setCollection:(id)collection;
@end

@implementation _PASSqliteNSIndexSetCursor

- (id)currentIndexedValue
{
  v2 = MEMORY[0x1E696AD98];
  currentIndexedRowId = [(_PASSqliteRowIdIndexSetCursor *)self currentIndexedRowId];

  return [v2 numberWithUnsignedInteger:currentIndexedRowId];
}

- (void)setCollection:(id)collection
{
  collectionCopy = collection;
  v5 = objc_autoreleasePoolPush();
  v6.receiver = self;
  v6.super_class = _PASSqliteNSIndexSetCursor;
  [(_PASSqliteCollectionsCursor *)&v6 setCollection:collectionCopy];
  [(_PASSqliteRowIdIndexSetCursor *)self setIndexSet:collectionCopy];
  objc_autoreleasePoolPop(v5);
}

@end