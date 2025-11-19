@interface NSData(Comparison)
- (BOOL)isAlLFF;
- (BOOL)isAll00;
- (uint64_t)compare:()Comparison;
@end

@implementation NSData(Comparison)

- (uint64_t)compare:()Comparison
{
  v4 = a3;
  v5 = [a1 bytes];
  v6 = [v4 bytes];
  v7 = [a1 length];
  if (v7 >= [v4 length])
  {
    v8 = v4;
  }

  else
  {
    v8 = a1;
  }

  v9 = memcmp(v5, v6, [v8 length]);
  if (v9)
  {
    if (v9 > 0)
    {
      v10 = 1;
    }

    else
    {
      v10 = -1;
    }
  }

  else
  {
    v11 = [a1 length];
    if (v11 == [v4 length])
    {
      v10 = 0;
    }

    else
    {
      v12 = [a1 length];
      if (v12 < [v4 length])
      {
        v10 = -1;
      }

      else
      {
        v10 = 1;
      }
    }
  }

  return v10;
}

- (BOOL)isAlLFF
{
  v2 = [a1 bytes];
  v3 = [a1 length];
  if (!v3)
  {
    return 1;
  }

  if (*v2 != 255)
  {
    return 0;
  }

  v5 = 1;
  do
  {
    v6 = v5;
    if (v3 == v5)
    {
      break;
    }

    v7 = v2[v5++];
    v8 = v2[v6] == 255;
  }

  while (v7 == 255);
  return v6 >= v3;
}

- (BOOL)isAll00
{
  v2 = [a1 bytes];
  v3 = [a1 length];
  if (!v3)
  {
    return 1;
  }

  if (*v2)
  {
    return 0;
  }

  v5 = 1;
  do
  {
    v6 = v5;
    if (v3 == v5)
    {
      break;
    }

    v7 = v2[v5++];
  }

  while (!v2[v6]);
  return v6 >= v3;
}

@end