@interface NSMutableArray(PhotosUIFoundation)
- (id)px_popFirst;
- (id)px_popFirstPassingTest:()PhotosUIFoundation;
- (id)px_popLast;
- (id)px_popRange:()PhotosUIFoundation;
- (void)px_addObject:()PhotosUIFoundation removingFirstObjectIfNeededToKeepMaximumCount:;
- (void)px_addObjectIfNotNil:()PhotosUIFoundation;
- (void)px_insertObjects:()PhotosUIFoundation atIndex:;
@end

@implementation NSMutableArray(PhotosUIFoundation)

- (id)px_popFirst
{
  if ([self count])
  {
    v2 = [self objectAtIndex:0];
    [self removeObjectAtIndex:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)px_popLast
{
  if ([self count])
  {
    v2 = [self count] - 1;
    v3 = [self objectAtIndex:v2];
    [self removeObjectAtIndex:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)px_addObject:()PhotosUIFoundation removingFirstObjectIfNeededToKeepMaximumCount:
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    while ([self count] >= a4)
    {
      [self removeObjectAtIndex:0];
    }

    [self addObject:v7];
    v6 = v7;
  }
}

- (void)px_addObjectIfNotNil:()PhotosUIFoundation
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

- (void)px_insertObjects:()PhotosUIFoundation atIndex:
{
  v6 = MEMORY[0x1E696AC90];
  v7 = a3;
  v8 = [[v6 alloc] initWithIndexesInRange:{a4, objc_msgSend(v7, "count")}];
  [self insertObjects:v7 atIndexes:v8];
}

- (id)px_popFirstPassingTest:()PhotosUIFoundation
{
  v2 = [self indexOfObjectPassingTest:?];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v4 = v2;
    v3 = [self objectAtIndex:v2];
    [self removeObjectAtIndex:v4];
  }

  return v3;
}

- (id)px_popRange:()PhotosUIFoundation
{
  v7 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:?];
  v8 = [self objectsAtIndexes:v7];

  [self removeObjectsInRange:{a3, a4}];

  return v8;
}

@end