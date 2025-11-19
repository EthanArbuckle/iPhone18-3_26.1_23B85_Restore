@interface NSData(Comparison)
- (BOOL)ses_isAllZero;
- (uint64_t)ses_isEqualToHexCString:()Comparison;
@end

@implementation NSData(Comparison)

- (BOOL)ses_isAllZero
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

- (uint64_t)ses_isEqualToHexCString:()Comparison
{
  if (!a3)
  {
    return 0;
  }

  v5 = [a1 length];
  v6 = strlen(a3);
  result = 0;
  if ((v6 & 1) == 0 && v6 == 2 * v5)
  {
    v14 = 0;
    v8 = [a1 bytes];
    if (v6)
    {
      v9 = v8;
      v10 = 0;
      v11 = MEMORY[0x1E69E9830];
      while (1)
      {
        *__str = *&a3[v10];
        if (__str[0] < 0)
        {
          break;
        }

        result = 0;
        if ((*(v11 + 4 * (__str[0] & 0x7F) + 60) & 0x10000) == 0 || *__str < 0)
        {
          return result;
        }

        if ((*(v11 + 4 * __str[1] + 60) & 0x10000) == 0)
        {
          break;
        }

        v12 = *(v9 + (v10 >> 1));
        if (v12 != strtoul(__str, 0, 16))
        {
          break;
        }

        v10 += 2;
        if (v10 >= v6)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

@end