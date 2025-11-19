@interface _PASSqliteNSIndexSetCursor
- (id)currentIndexedValue;
- (void)setCollection:(id)a3;
@end

@implementation _PASSqliteNSIndexSetCursor

- (id)currentIndexedValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(_PASSqliteRowIdIndexSetCursor *)self currentIndexedRowId];

  return [v2 numberWithUnsignedInteger:v3];
}

- (void)setCollection:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6.receiver = self;
  v6.super_class = _PASSqliteNSIndexSetCursor;
  [(_PASSqliteCollectionsCursor *)&v6 setCollection:v4];
  [(_PASSqliteRowIdIndexSetCursor *)self setIndexSet:v4];
  objc_autoreleasePoolPop(v5);
}

@end