@interface NSArray(PhotosUIFoundation)
+ (id)px_numbersFrom:()PhotosUIFoundation to:increment:;
- (id)px_objectAfterObject:()PhotosUIFoundation;
- (id)px_subarrayAfterIndex:()PhotosUIFoundation;
- (void)px_enumerateObjectsFromIndex:()PhotosUIFoundation usingBlock:;
@end

@implementation NSArray(PhotosUIFoundation)

- (id)px_objectAfterObject:()PhotosUIFoundation
{
  v2 = [a1 indexOfObject:?];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL || (v3 = v2 + 1, v2 + 1 >= [a1 count]))
  {
    v4 = 0;
  }

  else
  {
    v4 = [a1 objectAtIndexedSubscript:v3];
  }

  return v4;
}

- (void)px_enumerateObjectsFromIndex:()PhotosUIFoundation usingBlock:
{
  v6 = a4;
  v11 = 0;
  v7 = [a1 count];
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

      v10 = [a1 objectAtIndex:a3];
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
  if (a3 + 1 >= [a1 count])
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v5 = [a1 subarrayWithRange:{v4, objc_msgSend(a1, "count") - v4}];
  }

  return v5;
}

+ (id)px_numbersFrom:()PhotosUIFoundation to:increment:
{
  for (i = objc_alloc_init(MEMORY[0x1E695DF70]); a1 <= a2; a1 = round((a1 + a3) / a3) * a3)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:a1];
    [i addObject:v7];
  }

  return i;
}

@end