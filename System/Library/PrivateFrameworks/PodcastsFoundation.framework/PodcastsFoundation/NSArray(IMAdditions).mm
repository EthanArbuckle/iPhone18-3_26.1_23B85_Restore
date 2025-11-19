@interface NSArray(IMAdditions)
- (uint64_t)pf_indexOfObjectWithValue:()IMAdditions forKeyPath:;
@end

@implementation NSArray(IMAdditions)

- (uint64_t)pf_indexOfObjectWithValue:()IMAdditions forKeyPath:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 count];
  v9 = v8;
  if (v8 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = v8;
    do
    {
      v12 = v10 + (v11 - v10) / 2;
      v13 = [a1 objectAtIndex:v12];
      v14 = [v13 valueForKeyPath:v7];

      if ([v14 compare:v6] == -1)
      {
        v10 = v12 + 1;
      }

      else
      {
        v11 = v12;
      }
    }

    while (v10 < v11);
  }

  v15 = 0x7FFFFFFFFFFFFFFFLL;
  if (v10 < v9)
  {
    v16 = [a1 objectAtIndex:v10];
    v17 = [v16 valueForKeyPath:v7];
    v18 = [v17 compare:v6];

    if (!v18)
    {
      v15 = v10;
    }
  }

  return v15;
}

@end