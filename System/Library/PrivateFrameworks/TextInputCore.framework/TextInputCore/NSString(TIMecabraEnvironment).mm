@interface NSString(TIMecabraEnvironment)
- (__CFString)longestCommonSubstring:()TIMecabraEnvironment backwards:;
- (uint64_t)TI_hasTruePrefix:()TIMecabraEnvironment;
- (uint64_t)TI_hasTrueSuffix:()TIMecabraEnvironment;
- (void)characters;
@end

@implementation NSString(TIMecabraEnvironment)

- (uint64_t)TI_hasTrueSuffix:()TIMecabraEnvironment
{
  v4 = a3;
  v5 = [self length];
  if (v5 <= [v4 length])
  {
    v6 = 0;
  }

  else
  {
    v6 = [self hasSuffix:v4];
  }

  return v6;
}

- (uint64_t)TI_hasTruePrefix:()TIMecabraEnvironment
{
  v4 = a3;
  v5 = [self length];
  if (v5 <= [v4 length])
  {
    v6 = 0;
  }

  else
  {
    v6 = [self hasPrefix:v4];
  }

  return v6;
}

- (__CFString)longestCommonSubstring:()TIMecabraEnvironment backwards:
{
  v4 = a3;
  v5 = [self length];
  v6 = [v4 length];
  v7 = &stru_283FDFAF8;
  if (v5)
  {
    v8 = v6;
    if (v6)
    {
      characters = [self characters];
      characters2 = [v4 characters];
      v11 = characters2;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v16 = characters[v14];
        v17 = *(characters2 + 2 * v13);
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = v14;
        }

        else
        {
          v18 = v15;
        }

        if (v16 == v17)
        {
          ++v13;
        }

        else
        {
          v13 = 0;
        }

        if (v16 == v17)
        {
          ++v12;
        }

        else
        {
          v12 = 0;
        }

        if (v16 == v17)
        {
          v15 = v18;
        }

        else
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        ++v14;
      }

      while (v14 < v5 && v13 < v8);
      v19 = v15 == 0x7FFFFFFFFFFFFFFFLL || v12 == 0;
      if (v19 || v15 + v12 > [self length])
      {
        v7 = &stru_283FDFAF8;
      }

      else
      {
        v7 = [self substringWithRange:{v15, v12}];
      }

      free(characters);
      free(v11);
    }
  }

  return v7;
}

- (void)characters
{
  v2 = [self length];
  v3 = malloc_type_malloc(2 * v2, 0x1000040BDFB0063uLL);
  [self getCharacters:v3 range:{0, v2}];
  return v3;
}

@end