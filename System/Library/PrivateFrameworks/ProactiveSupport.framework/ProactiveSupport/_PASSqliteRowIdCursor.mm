@interface _PASSqliteRowIdCursor
- (unint64_t)outputRowId;
@end

@implementation _PASSqliteRowIdCursor

- (unint64_t)outputRowId
{
  [(_PASSqliteCollectionsCursor *)self stayOnOrStepToOutputRow];
  if ([(_PASSqliteRowIdCursor *)self currentIndexEof])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = objc_autoreleasePoolPush();
  currentIndexedRowId = [(_PASSqliteRowIdCursor *)self currentIndexedRowId];
  objc_autoreleasePoolPop(v4);
  return currentIndexedRowId;
}

@end