@interface SAMSTypeStats
- (uint64_t)addTask:(uint64_t)a3 thread:(uint64_t)a4 size:(uint64_t)a5 errors:;
@end

@implementation SAMSTypeStats

- (uint64_t)addTask:(uint64_t)a3 thread:(uint64_t)a4 size:(uint64_t)a5 errors:
{
  if (result)
  {
    if (a5)
    {
      if ((a5 & 2) != 0)
      {
        ++*(result + 40);
        v5 = 48;
      }

      else if ((a5 & 8) != 0)
      {
        ++*(result + 72);
        v5 = 80;
      }

      else
      {
        if ((a5 & 4) == 0)
        {
          return result;
        }

        ++*(result + 56);
        v5 = 64;
      }
    }

    else
    {
      v6.i64[0] = vdupq_n_s64(1uLL).u64[0];
      v6.i64[1] = a4;
      *(result + 8) = vaddq_s64(*(result + 8), v6);
      *(result + 24) += *(a2 + 56);
      a4 = (*(a3 + 8) + *(a3 + 4));
      v5 = 32;
    }

    *(result + v5) += a4;
  }

  return result;
}

@end