@interface _PASSqliteKeyValueCursor
- (BOOL)currentIndexEof;
- (id)outputKey;
@end

@implementation _PASSqliteKeyValueCursor

- (id)outputKey
{
  v4 = objc_autoreleasePoolPush();
  v5 = [(_PASSqliteKeyValueCursor *)self currentIndexedKey];
  objc_autoreleasePoolPop(v4);
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_PASSqliteCollections.m" lineNumber:1152 description:{@"Invalid parameter not satisfying: %@", @"outputKey != nil"}];
  }

  return v5;
}

- (BOOL)currentIndexEof
{
  v2 = [(_PASSqliteKeyValueCursor *)self currentIndexedKey];
  v3 = v2 == 0;

  return v3;
}

@end