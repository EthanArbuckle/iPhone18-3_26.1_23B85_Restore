@interface VMUEnumerateMarkedObjects
@end

@implementation VMUEnumerateMarkedObjects

uint64_t ___VMUEnumerateMarkedObjects_block_invoke(uint64_t result)
{
  v1 = s_currentMarkingContext;
  if (s_currentMarkingContext)
  {
    v2 = result;
    do
    {
      *(*(*(v2 + 40) + 8) + 24) += *(v1 + 28);
      if (*(v2 + 32))
      {
        v3 = *(v1 + 20);
        if (v3)
        {
          v4 = 0;
          v5 = *(v1 + 12) + v1;
          do
          {
            if (*(v5 + 8 * v4))
            {
              result = [*(v2 + 32) addObject:?];
              v3 = *(v1 + 20);
            }

            ++v4;
          }

          while (v4 < v3);
        }
      }

      v1 = *(v1 + 32);
    }

    while (v1);
  }

  return result;
}

@end