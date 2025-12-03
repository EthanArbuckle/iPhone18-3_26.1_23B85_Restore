@interface NSPointerArray
- (BOOL)tsu_hasNonNullPointers;
- (id)tsu_description;
- (unint64_t)tsu_indexOfPointer:(void *)pointer;
- (void)tsu_addPointersFromPointerArray:(id)array;
- (void)tsu_enumerateNonNullObjectUsingBlock:(id)block;
- (void)tsu_enumerateNonNullPointersUsingBlock:(id)block;
- (void)tsu_insertRange:(_NSRange)range;
- (void)tsu_removeRange:(_NSRange)range;
@end

@implementation NSPointerArray

- (BOOL)tsu_hasNonNullPointers
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  selfCopy = self;
  v3 = [(NSPointerArray *)selfCopy countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(selfCopy);
        }

        if (*(*(&v7 + 1) + 8 * i))
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSPointerArray *)selfCopy countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)tsu_enumerateNonNullPointersUsingBlock:(id)block
{
  blockCopy = block;
  v9 = 0;
  v5 = [(NSPointerArray *)self count];
  if (v5)
  {
    v6 = v5;
    v7 = 1;
    do
    {
      v8 = [(NSPointerArray *)self pointerAtIndex:v7 - 1];
      if (v8)
      {
        blockCopy[2](blockCopy, v8, v7 - 1, &v9);
      }

      if (v7 >= v6)
      {
        break;
      }

      ++v7;
    }

    while ((v9 & 1) == 0);
  }
}

- (void)tsu_enumerateNonNullObjectUsingBlock:(id)block
{
  blockCopy = block;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v6 = [(NSPointerArray *)selfCopy countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v13;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(selfCopy);
      }

      v11 = *(*(&v12 + 1) + 8 * v10);
      if (v11)
      {
        blockCopy[2](blockCopy, v11, v8, &v16);
        if (v16)
        {
          break;
        }
      }

      ++v8;
      if (v7 == ++v10)
      {
        v7 = [(NSPointerArray *)selfCopy countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)tsu_insertRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.location >= [(NSPointerArray *)self count])
  {

    [(NSPointerArray *)self setCount:location + length];
  }

  else
  {
    v6 = [(NSPointerArray *)self count];
    [(NSPointerArray *)self setCount:[(NSPointerArray *)self count]+ length];
    for (i = v6 - 1; i >= location; --i)
    {
      [(NSPointerArray *)self replacePointerAtIndex:length + i withPointer:[(NSPointerArray *)self pointerAtIndex:i]];
    }

    if ((location + length) >= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = location + length;
    }

    if (location < v8)
    {
      do
      {
        [(NSPointerArray *)self replacePointerAtIndex:location++ withPointer:0];
      }

      while (v8 != location);
    }
  }
}

- (void)tsu_removeRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.location < [(NSPointerArray *)self count])
  {
    v6 = &location[length];
    if (&location[length] < [(NSPointerArray *)self count])
    {
      v7 = [(NSPointerArray *)self count];
      if (v6 < v7)
      {
        v8 = v7;
        do
        {
          [(NSPointerArray *)self replacePointerAtIndex:location++ withPointer:[(NSPointerArray *)self pointerAtIndex:v6++]];
        }

        while (v6 < v8);
      }

      location = [(NSPointerArray *)self count]- length;
    }

    [(NSPointerArray *)self setCount:location];
  }
}

- (unint64_t)tsu_indexOfPointer:(void *)pointer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000702C8;
  v5[3] = &unk_1001CBDB8;
  v5[4] = &v6;
  v5[5] = pointer;
  [(NSPointerArray *)self tsu_enumerateNonNullPointersUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)tsu_addPointersFromPointerArray:(id)array
{
  arrayCopy = array;
  v5 = [(NSPointerArray *)self count];
  -[NSPointerArray setCount:](self, "setCount:", [arrayCopy count] + -[NSPointerArray count](self, "count"));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000703AC;
  v6[3] = &unk_1001CBDE0;
  v6[4] = self;
  v6[5] = v5;
  [arrayCopy tsu_enumerateNonNullPointersUsingBlock:v6];
}

- (id)tsu_description
{
  v3 = [NSString stringWithFormat:@"NSPointerArray %p Count:%lu", self, [(NSPointerArray *)self count]];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v5 = [(NSPointerArray *)selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      v9 = v3;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v10 = [NSString stringWithFormat:@"\n    %@", *(*(&v12 + 1) + 8 * v8)];
        v3 = [v9 stringByAppendingString:v10];

        v8 = v8 + 1;
        v9 = v3;
      }

      while (v6 != v8);
      v6 = [(NSPointerArray *)selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

@end