@interface NSData(Comparison)
- (BOOL)isAlLFF;
- (BOOL)isAll00;
- (uint64_t)compare:()Comparison;
@end

@implementation NSData(Comparison)

- (uint64_t)compare:()Comparison
{
  v4 = a3;
  bytes = [self bytes];
  bytes2 = [v4 bytes];
  v7 = [self length];
  if (v7 >= [v4 length])
  {
    selfCopy = v4;
  }

  else
  {
    selfCopy = self;
  }

  v9 = memcmp(bytes, bytes2, [selfCopy length]);
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
    v11 = [self length];
    if (v11 == [v4 length])
    {
      v10 = 0;
    }

    else
    {
      v12 = [self length];
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
  bytes = [self bytes];
  v3 = [self length];
  if (!v3)
  {
    return 1;
  }

  if (*bytes != 255)
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

    v7 = bytes[v5++];
    v8 = bytes[v6] == 255;
  }

  while (v7 == 255);
  return v6 >= v3;
}

- (BOOL)isAll00
{
  bytes = [self bytes];
  v3 = [self length];
  if (!v3)
  {
    return 1;
  }

  if (*bytes)
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

    v7 = bytes[v5++];
  }

  while (!bytes[v6]);
  return v6 >= v3;
}

@end