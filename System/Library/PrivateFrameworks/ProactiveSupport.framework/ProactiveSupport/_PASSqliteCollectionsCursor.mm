@interface _PASSqliteCollectionsCursor
- (_BYTE)outputValue;
- (_PASSqliteCollectionsCursor)init;
- (void)stayOnOrStepToOutputRow;
@end

@implementation _PASSqliteCollectionsCursor

- (_PASSqliteCollectionsCursor)init
{
  v3.receiver = self;
  v3.super_class = _PASSqliteCollectionsCursor;
  result = [(_PASSqliteCollectionsCursor *)&v3 init];
  if (result)
  {
    *&result->_foundOutputRow = 0;
  }

  return result;
}

- (void)stayOnOrStepToOutputRow
{
  if (a1)
  {
    while ((a1[9] & 1) == 0 && (a1[8] & 1) == 0)
    {
      a1[8] = 0;
      v2 = objc_autoreleasePoolPush();
      if ([a1 currentIndexEof])
      {
        a1[9] = 1;

        objc_autoreleasePoolPop(v2);
        return;
      }

      v3 = [a1 currentIndexedRowSatisfiesConstraints];
      objc_autoreleasePoolPop(v2);
      if (v3)
      {
        return;
      }

      v4 = objc_autoreleasePoolPush();
      [a1 stepIndexedRow];
      objc_autoreleasePoolPop(v4);
    }
  }
}

- (_BYTE)outputValue
{
  v1 = a1;
  if (a1)
  {
    [(_PASSqliteCollectionsCursor *)a1 stayOnOrStepToOutputRow];
    if (v1[9] == 1)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:sel_outputValue object:v1 file:@"_PASSqliteCollections.m" lineNumber:389 description:{@"Invalid parameter not satisfying: %@", @"!_eof"}];
    }

    v2 = objc_autoreleasePoolPush();
    v1 = [v1 currentIndexedValue];
    objc_autoreleasePoolPop(v2);
  }

  return v1;
}

@end