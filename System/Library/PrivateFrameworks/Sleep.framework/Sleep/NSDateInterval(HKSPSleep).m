@interface NSDateInterval(HKSPSleep)
- (id)hkspDescription;
- (uint64_t)hksp_containsDate:()HKSPSleep searchOptions:;
- (uint64_t)hksp_overlapsInterval:()HKSPSleep searchOptions:;
@end

@implementation NSDateInterval(HKSPSleep)

- (uint64_t)hksp_containsDate:()HKSPSleep searchOptions:
{
  v6 = a3;
  v7 = [a1 startDate];
  v8 = [v7 isEqualToDate:v6];

  if (v8)
  {
    v9 = a4 & 1;
  }

  else
  {
    v10 = [a1 endDate];
    v11 = [v10 isEqualToDate:v6];

    if (v11)
    {
      v9 = (a4 >> 1) & 1;
    }

    else
    {
      v9 = [a1 containsDate:v6];
    }
  }

  return v9;
}

- (uint64_t)hksp_overlapsInterval:()HKSPSleep searchOptions:
{
  v6 = a3;
  v7 = [a1 endDate];
  v8 = [v6 startDate];
  v9 = [v7 isEqualToDate:v8];

  if (v9)
  {
    v10 = (a4 >> 1) & 1;
  }

  else
  {
    v11 = [a1 startDate];
    v12 = [v6 endDate];
    v13 = [v11 isEqualToDate:v12];

    if (v13)
    {
      v10 = a4 & 1;
    }

    else
    {
      v10 = [a1 intersectsDateInterval:v6];
    }
  }

  return v10;
}

- (id)hkspDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = [a1 startDate];
  v5 = [v4 hkspDescription];
  v6 = [a1 endDate];
  v7 = [v6 hkspDescription];
  v8 = [v2 stringWithFormat:@"<%@:%p [%@ - %@] >", v3, a1, v5, v7];

  return v8;
}

@end