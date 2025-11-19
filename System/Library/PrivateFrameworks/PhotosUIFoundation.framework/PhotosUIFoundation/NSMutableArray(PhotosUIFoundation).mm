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
  if ([a1 count])
  {
    v2 = [a1 objectAtIndex:0];
    [a1 removeObjectAtIndex:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)px_popLast
{
  if ([a1 count])
  {
    v2 = [a1 count] - 1;
    v3 = [a1 objectAtIndex:v2];
    [a1 removeObjectAtIndex:v2];
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
    while ([a1 count] >= a4)
    {
      [a1 removeObjectAtIndex:0];
    }

    [a1 addObject:v7];
    v6 = v7;
  }
}

- (void)px_addObjectIfNotNil:()PhotosUIFoundation
{
  if (a3)
  {
    return [a1 addObject:?];
  }

  return a1;
}

- (void)px_insertObjects:()PhotosUIFoundation atIndex:
{
  v6 = MEMORY[0x1E696AC90];
  v7 = a3;
  v8 = [[v6 alloc] initWithIndexesInRange:{a4, objc_msgSend(v7, "count")}];
  [a1 insertObjects:v7 atIndexes:v8];
}

- (id)px_popFirstPassingTest:()PhotosUIFoundation
{
  v2 = [a1 indexOfObjectPassingTest:?];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v4 = v2;
    v3 = [a1 objectAtIndex:v2];
    [a1 removeObjectAtIndex:v4];
  }

  return v3;
}

- (id)px_popRange:()PhotosUIFoundation
{
  v7 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:?];
  v8 = [a1 objectsAtIndexes:v7];

  [a1 removeObjectsInRange:{a3, a4}];

  return v8;
}

@end