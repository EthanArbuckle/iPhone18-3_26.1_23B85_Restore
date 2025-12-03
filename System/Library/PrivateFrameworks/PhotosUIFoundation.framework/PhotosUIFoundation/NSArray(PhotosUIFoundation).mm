@interface NSArray(PhotosUIFoundation)
+ (id)px_numbersFrom:()PhotosUIFoundation to:increment:;
- (id)px_objectAfterObject:()PhotosUIFoundation;
- (id)px_subarrayAfterIndex:()PhotosUIFoundation;
- (void)px_enumerateObjectsFromIndex:()PhotosUIFoundation usingBlock:;
@end

@implementation NSArray(PhotosUIFoundation)

- (id)px_objectAfterObject:()PhotosUIFoundation
{
  v2 = [self indexOfObject:?];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL || (v3 = v2 + 1, v2 + 1 >= [self count]))
  {
    v4 = 0;
  }

  else
  {
    v4 = [self objectAtIndexedSubscript:v3];
  }

  return v4;
}

- (void)px_enumerateObjectsFromIndex:()PhotosUIFoundation usingBlock:
{
  v6 = a4;
  v11 = 0;
  v7 = [self count];
  if (v7)
  {
    v8 = v7;
    v9 = 1;
    do
    {
      if (a3 >= v8)
      {
        a3 = 0;
      }

      v10 = [self objectAtIndex:a3];
      v6[2](v6, v10, a3, &v11);

      if (v9 >= v8)
      {
        break;
      }

      ++a3;
      ++v9;
    }

    while ((v11 & 1) == 0);
  }
}

- (id)px_subarrayAfterIndex:()PhotosUIFoundation
{
  v4 = a3 + 1;
  if (a3 + 1 >= [self count])
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v5 = [self subarrayWithRange:{v4, objc_msgSend(self, "count") - v4}];
  }

  return v5;
}

+ (id)px_numbersFrom:()PhotosUIFoundation to:increment:
{
  for (i = objc_alloc_init(MEMORY[0x1E695DF70]); self <= a2; self = round((self + a3) / a3) * a3)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self];
    [i addObject:v7];
  }

  return i;
}

@end