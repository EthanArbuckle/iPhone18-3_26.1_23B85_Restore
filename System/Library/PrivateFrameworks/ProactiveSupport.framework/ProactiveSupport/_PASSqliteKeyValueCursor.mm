@interface _PASSqliteKeyValueCursor
- (BOOL)currentIndexEof;
- (id)outputKey;
@end

@implementation _PASSqliteKeyValueCursor

- (id)outputKey
{
  v4 = objc_autoreleasePoolPush();
  currentIndexedKey = [(_PASSqliteKeyValueCursor *)self currentIndexedKey];
  objc_autoreleasePoolPop(v4);
  if (!currentIndexedKey)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASSqliteCollections.m" lineNumber:1152 description:{@"Invalid parameter not satisfying: %@", @"outputKey != nil"}];
  }

  return currentIndexedKey;
}

- (BOOL)currentIndexEof
{
  currentIndexedKey = [(_PASSqliteKeyValueCursor *)self currentIndexedKey];
  v3 = currentIndexedKey == 0;

  return v3;
}

@end