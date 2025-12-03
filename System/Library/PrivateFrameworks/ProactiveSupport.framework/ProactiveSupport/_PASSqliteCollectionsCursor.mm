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
  if (self)
  {
    while ((self[9] & 1) == 0 && (self[8] & 1) == 0)
    {
      self[8] = 0;
      v2 = objc_autoreleasePoolPush();
      if ([self currentIndexEof])
      {
        self[9] = 1;

        objc_autoreleasePoolPop(v2);
        return;
      }

      currentIndexedRowSatisfiesConstraints = [self currentIndexedRowSatisfiesConstraints];
      objc_autoreleasePoolPop(v2);
      if (currentIndexedRowSatisfiesConstraints)
      {
        return;
      }

      v4 = objc_autoreleasePoolPush();
      [self stepIndexedRow];
      objc_autoreleasePoolPop(v4);
    }
  }
}

- (_BYTE)outputValue
{
  selfCopy = self;
  if (self)
  {
    [(_PASSqliteCollectionsCursor *)self stayOnOrStepToOutputRow];
    if (selfCopy[9] == 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_outputValue object:selfCopy file:@"_PASSqliteCollections.m" lineNumber:389 description:{@"Invalid parameter not satisfying: %@", @"!_eof"}];
    }

    v2 = objc_autoreleasePoolPush();
    selfCopy = [selfCopy currentIndexedValue];
    objc_autoreleasePoolPop(v2);
  }

  return selfCopy;
}

@end