@interface NSArray(UICollectionAdditions_Performance)
- (id)_makeObjectsPerformSelector:()UICollectionAdditions_Performance object:range:;
@end

@implementation NSArray(UICollectionAdditions_Performance)

- (id)_makeObjectsPerformSelector:()UICollectionAdditions_Performance object:range:
{
  v15[128] = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v6 = a5;
    v7 = a5 + a6;
    if (a5 < a5 + a6)
    {
      v10 = result;
      do
      {
        if (v7 - v6 >= 0x80)
        {
          v11 = 128;
        }

        else
        {
          v11 = v7 - v6;
        }

        result = [v10 getObjects:v15 range:{v6, v11}];
        if (v7 != v6)
        {
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          v13 = v15;
          do
          {
            v14 = *v13;
            if (dyld_program_sdk_at_least())
            {
              result = [v14 a3];
            }

            else
            {
              result = [v14 performSelector:a3 withObject:a4];
            }

            ++v13;
            --v12;
          }

          while (v12);
        }

        v6 += v11;
      }

      while (v6 < v7);
    }
  }

  return result;
}

@end