@interface _UICollectionLayoutSectionDescriptor
- (double)scrollingUnitVector;
- (uint64_t)isEqualToSectionDescriptor:(int)a3 comparingContentOffset:;
@end

@implementation _UICollectionLayoutSectionDescriptor

- (uint64_t)isEqualToSectionDescriptor:(int)a3 comparingContentOffset:
{
  if (result)
  {
    if (a2 == result)
    {
      return 1;
    }

    else
    {
      if (a3)
      {
        if (a2)
        {
          v4 = *(a2 + 96);
          v3 = *(a2 + 104);
        }

        else
        {
          v3 = 0.0;
          v4 = 0.0;
        }

        if (*(result + 96) != v4 || *(result + 104) != v3)
        {
          return 0;
        }
      }

      if (*(result + 16) != *(a2 + 16))
      {
        return 0;
      }

      if (*(result + 24) != *(a2 + 24))
      {
        return 0;
      }

      if (*(result + 32) != *(a2 + 32))
      {
        return 0;
      }

      if (*(result + 40) != *(a2 + 40))
      {
        return 0;
      }

      if (*(result + 8) != *(a2 + 8))
      {
        return 0;
      }

      if (*(result + 9) != *(a2 + 9))
      {
        return 0;
      }

      if (*(result + 48) != *(a2 + 48))
      {
        return 0;
      }

      v6 = vmovn_s64(vceqzq_f64(vsubq_f64(*(result + 80), *(a2 + 80))));
      if ((vand_s8(v6, vdup_lane_s32(v6, 1)).u32[0] & 1) == 0 || *(result + 56) != *(a2 + 56) || *(result + 64) != *(a2 + 64) || *(result + 72) != *(a2 + 72))
      {
        return 0;
      }

      v16 = result;
      result = CGRectEqualToRect(*(result + 112), *(a2 + 112));
      if (result)
      {
        result = CGRectEqualToRect(*(v16 + 144), *(a2 + 144));
        if (result)
        {
          if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v16 + 176), *(a2 + 176)), vceqq_f64(*(v16 + 192), *(a2 + 192))))) & 1) == 0)
          {
            return 0;
          }

          result = CGRectEqualToRect(*(v16 + 208), *(a2 + 208));
          if (result)
          {
            v7 = *(a2 + 240);
            v8 = *(a2 + 248);
            v9 = *(a2 + 256);
            v10 = *(a2 + 264);
            v11 = *(v16 + 240);
            v12 = *(v16 + 248);
            v13 = *(v16 + 256);
            v14 = *(v16 + 264);

            return CGRectEqualToRect(*&v11, *&v7);
          }
        }
      }
    }
  }

  return result;
}

- (double)scrollingUnitVector
{
  if (a1)
  {
    return *(a1 + 80);
  }

  else
  {
    return 0.0;
  }
}

@end