@interface _PASLazyArrayBase
- (BOOL)isEqualToArray:(id)array;
- (id)arrayByAddingObject:(id)object;
- (id)arrayByAddingObjectsFromArray:(id)array;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectsAtIndexes:(id)indexes;
- (id)sortedArrayFromRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator;
- (id)subarrayWithRange:(_NSRange)range;
- (void)enumerateObjectsUsingBlock:(id)block;
@end

@implementation _PASLazyArrayBase

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(_PASLazyArrayBase *)self count];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [(_PASLazyArrayBase *)self objectAtIndex:i];
      [v5 addObject:v8];

      objc_autoreleasePoolPop(v7);
    }
  }

  return v5;
}

- (id)arrayByAddingObjectsFromArray:(id)array
{
  arrayCopy = array;
  if ([arrayCopy count])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [(_PASLazyArrayBase *)self mutableCopy];
    [v6 addObjectsFromArray:arrayCopy];
    selfCopy = [v6 copy];

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)arrayByAddingObject:(id)object
{
  v12[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  if (objectCopy)
  {
    v5 = [(_PASLazyArrayBase *)self count];
    v6 = objc_autoreleasePoolPush();
    if (v5)
    {
      v7 = [(_PASLazyArrayBase *)self mutableCopy];
      [v7 addObject:objectCopy];
      v8 = [v7 copy];
    }

    else
    {
      v12[0] = objectCopy;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _PASLazyArrayBase;
    v8 = [(_PASLazyArrayBase *)&v11 arrayByAddingObject:0];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)isEqualToArray:(id)array
{
  arrayCopy = array;
  v5 = arrayCopy;
  if (arrayCopy == self)
  {
    v7 = 1;
  }

  else if (arrayCopy && (v6 = [(_PASLazyArrayBase *)arrayCopy count], v6 == [(_PASLazyArrayBase *)self count]))
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 1;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36___PASLazyArrayBase_isEqualToArray___block_invoke;
    v9[3] = &unk_1E77F1A28;
    v10 = v5;
    v11 = &v12;
    [(_PASLazyArrayBase *)self enumerateObjectsUsingBlock:v9];
    v7 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (id)subarrayWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = [(_PASLazyArrayBase *)self count];
  if (location + length > v6)
  {
    v15.receiver = self;
    v15.super_class = _PASLazyArrayBase;
    selfCopy = [(_PASLazyArrayBase *)&v15 subarrayWithRange:location, length];
LABEL_3:
    v8 = selfCopy;
    goto LABEL_13;
  }

  if (length == 1)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [(_PASLazyArrayBase *)self objectAtIndex:location];
    v16[0] = v10;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

    objc_autoreleasePoolPop(v9);
  }

  else if (length)
  {
    if (length == v6)
    {
      selfCopy = self;
      goto LABEL_3;
    }

    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:length];
    if (location < location + length)
    {
      do
      {
        v12 = [(_PASLazyArrayBase *)self objectAtIndex:location];
        [v11 addObject:v12];

        ++location;
        --length;
      }

      while (length);
    }

    v8 = [v11 copy];
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v8 = MEMORY[0x1E695E0F0];
  }

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)sortedArrayFromRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator
{
  length = range.length;
  location = range.location;
  comparatorCopy = comparator;
  v10 = objc_autoreleasePoolPush();
  v11 = [(_PASLazyArrayBase *)self subarrayWithRange:location, length];
  v12 = [v11 mutableCopy];

  [v12 sortWithOptions:options usingComparator:comparatorCopy];
  v13 = [v12 copy];

  objc_autoreleasePoolPop(v10);

  return v13;
}

- (id)objectsAtIndexes:(id)indexes
{
  v23[1] = *MEMORY[0x1E69E9840];
  indexesCopy = indexes;
  v5 = [indexesCopy count];
  v6 = [(_PASLazyArrayBase *)self count];
  if (!indexesCopy)
  {
    goto LABEL_6;
  }

  if (!v5)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v10 = MEMORY[0x1E695E0F0];
    goto LABEL_9;
  }

  v7 = v6;
  if ([indexesCopy lastIndex] >= v6)
  {
LABEL_6:
    v22.receiver = self;
    v22.super_class = _PASLazyArrayBase;
    selfCopy = [(_PASLazyArrayBase *)&v22 objectsAtIndexes:indexesCopy];
LABEL_7:
    v10 = selfCopy;
    goto LABEL_9;
  }

  if (v5 == 1)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = -[_PASLazyArrayBase objectAtIndex:](self, "objectAtIndex:", [indexesCopy firstIndex]);
    v23[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];

    objc_autoreleasePoolPop(v8);
    goto LABEL_9;
  }

  if (v5 == v7)
  {
    selfCopy = self;
    goto LABEL_7;
  }

  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __38___PASLazyArrayBase_objectsAtIndexes___block_invoke;
  v19 = &unk_1E77F1A00;
  v20 = v14;
  selfCopy2 = self;
  v15 = v14;
  [indexesCopy enumerateIndexesUsingBlock:&v16];
  v10 = [v15 copy];

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASLazyArrayBase.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v15 = 0;
  v6 = [(_PASLazyArrayBase *)self count];
  if (v6)
  {
    v7 = 0;
    v8 = v6 - 1;
    do
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [(_PASLazyArrayBase *)self objectAtIndex:v7];
      if (!v10)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"_PASLazyArrayBase.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"obj"}];
      }

      blockCopy[2](blockCopy, v10, v7, &v15);
      v11 = v15;

      objc_autoreleasePoolPop(v9);
      if (v11)
      {
        break;
      }
    }

    while (v8 != v7++);
  }
}

@end